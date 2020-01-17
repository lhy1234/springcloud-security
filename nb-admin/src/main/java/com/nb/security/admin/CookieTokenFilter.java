package com.nb.security.admin;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 从cookie获取token，统一加到请求头中去
 */
@Component
public class CookieTokenFilter extends ZuulFilter {

    private RestTemplate restTemplate = new RestTemplate();

    @Override
    public Object run() throws ZuulException {
        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();
        HttpServletResponse response = requestContext.getResponse();

        String accessToken = getCookie("nb_access_token");
        if(StringUtils.isNotBlank(accessToken)){
            //令牌放到请求头
            requestContext.addZuulRequestHeader("Authorization","Bearer "+accessToken);
        }else {
            //从cookie把不到token说明token已过期，刷新令牌
            String refreshToken = getCookie("nb_refresh_token");
            if(StringUtils.isNotBlank(refreshToken)){
                String oauthServiceUrl = "http://gateway.nb.com:9070/token/oauth/token";
                HttpHeaders headers = new HttpHeaders();
                headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//不是json请求
                //网关的appId，appSecret，需要在数据库oauth_client_details注册
                headers.setBasicAuth("admin","123456");

                MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
                params.add("refresh_token",refreshToken);//授权码
                params.add("grant_type","refresh_token");//授权类型-刷新令牌


                HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params,headers);

                //刷新令牌的时候，可能refresh_token也过期了，这里进行处理，让用户重新走授权流程
                try{
                    ResponseEntity<AccessToken> newToken = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, AccessToken.class);
                    //令牌放到请求头
                    requestContext.addZuulRequestHeader("Authorization","Bearer "+accessToken);
                    //基于 Cookie的SSO，拿到token后写入浏览器Cookie
                    Cookie accessTokenCookie = new Cookie("nb_access_token",newToken.getBody().getAccess_token());
                    accessTokenCookie.setMaxAge(newToken.getBody().getExpires_in().intValue()-3);//有效期
                    accessTokenCookie.setDomain("nb.com");//所有以nb.com结尾的二级域名都可以访问到cookie
                    accessTokenCookie.setPath("/");
                    response.addCookie(accessTokenCookie);

                    Cookie refreshTokenCookie = new Cookie("nb_refresh_token",newToken.getBody().getRefresh_token());
                    refreshTokenCookie.setMaxAge(2592000);//这里随便写一个很大的值（没用），如果是过期的token服务器将处理的。
                    refreshTokenCookie.setDomain("nb.com");//所有以nb.com结尾的二级域名都可以访问到cookie
                    refreshTokenCookie.setPath("/");
                    response.addCookie(refreshTokenCookie);
                }catch (Exception e){
                    //有异常，重新登录
                    requestContext.setSendZuulResponse(false);//zuul过滤器不往下走了
                    requestContext.setResponseStatusCode(500);//响应状态码
                    requestContext.setResponseBody("{\"message\":\"refresh fail\"}");
                    requestContext.getResponse().setContentType("application/json");
                }
            }else {
                //没用refresh——token，重新登录
                requestContext.setSendZuulResponse(false);//zuul过滤器不往下走了
                requestContext.setResponseStatusCode(500);//响应状态码
                requestContext.setResponseBody("{\"message\":\"refresh fail\"}");
                requestContext.getResponse().setContentType("application/json");
            }
        }

        return null;
    }

    private String getCookie(String name) {
        String result = null;
        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();
        Cookie[] cookies = request.getCookies();
        for(Cookie cookie : cookies){
            if(StringUtils.equals(cookie.getName(),name)){
                result = cookie.getValue();
                break;
            }
        }
        return result;
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
