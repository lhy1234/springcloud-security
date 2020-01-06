package com.nb.security.admin;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * 从session获取token，统一加到请求头中去
 */
@Component
public class SessionTokenFilter extends ZuulFilter {

    private RestTemplate restTemplate = new RestTemplate();

    @Override
    public Object run() throws ZuulException {
        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();
        AccessToken accessToken = (AccessToken)request.getSession().getAttribute("token");
        if(accessToken != null){
            //token值，如果没过期就用Access_token
            String tokenValue = accessToken.getAccess_token();
            //如果token已过期，拿refresh_token换取新的access_token
            if(accessToken.isExpired()){
                String oauthServiceUrl = "http://gateway.nb.com:9070/token/oauth/token";
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//不是json请求
                //网关的appId，appSecret，需要在数据库oauth_client_details注册
                headers.setBasicAuth("admin","123456");

                MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
                params.add("refresh_token",accessToken.getRefresh_token());//授权码
                params.add("grant_type","refresh_token");//授权类型-刷新令牌


                HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params,headers);

                //刷新令牌的时候，可能refresh_token也过期了，这里进行处理，让用户重新走授权流程
                try{
                    ResponseEntity<AccessToken> newToken = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, AccessToken.class);
                    request.getSession().setAttribute("token",newToken.getBody().init());//调一下init方法，设置过期时间
                    //token值，如果过期了，就设置成新获取的token
                    tokenValue = newToken.getBody().getAccess_token();
                }catch (Exception e){
                    requestContext.setSendZuulResponse(false);//zuul过滤器不往下走了
                    requestContext.setResponseStatusCode(500);//响应状态码
                    requestContext.setResponseBody("{\"message\":\"refresh fail\"}");
                    requestContext.getResponse().setContentType("application/json");
                }

            }
            requestContext.addZuulRequestHeader("Authorization","Bearer "+tokenValue);
        }
        return null;
    }

    @Override
    public String filterType() {
        return "pre";
    }

    @Override
    public int filterOrder() {
        return 1;
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }
}
