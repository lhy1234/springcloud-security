package com.nb.security.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.constants.ZuulConstants;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.FilterType;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * OAuth认证过滤器
 * Created by: 李浩洋 on 2019-12-28
 **/
@Slf4j
@Component
public class OAuthFilter extends ZuulFilter {

    private RestTemplate restTemplate = new RestTemplate();

    /**
     * 过滤器类型：
     *  "pre"：在业务逻辑执行之前执行run()的逻辑
     *  "post"：在业务逻辑执行之后执行run()的逻辑
     *  "error"：在业务逻辑抛出异常执行run()的逻辑
     *  "route"：控制路由，一般不用这个，zuul已实现
     * @return
     */
    @Override
    public String filterType() {
        return "pre";
    }

    //执行顺序
    @Override
    public int filterOrder() {
        return 1;
    }

    //是否过滤
    @Override
    public boolean shouldFilter() {
        return true;
    }

    /**
     * 具体的业务逻辑
     * 这里是认证逻辑，
     */
    @Override
    public Object run() throws ZuulException {
        log.info("oauth start ");
        //获取请求和响应
        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();

        if(StringUtils.startsWith(request.getRequestURI(),"/token")){
            // /token开头的请求，是发往认证服务器的请求，获取token的，直接放行
            return null;
        }
        //获取请求头的token
        String authHeader = request.getHeader("Authorization");

        if(StringUtils.isBlank(authHeader)){
            //如果请求头没有带token，不管认证信息有没有，对不对，都往下走，（要做审计日志）
            return null;
        }
        if(!StringUtils.startsWithIgnoreCase(authHeader,"bearer ")){
            //这个过滤器只处理OAuth认证的请求，不是OAuth的token(如 HTTP basic)，也往下走
            return null;
        }
        //走到这里，说明携带的OAuth认证的请求，验token
        try {
            TokenInfo info = getTokenInfo(authHeader);
            request.setAttribute("tokenInfo",info);
        }catch (Exception e){
            log.info("获取tokenInfo 失败！",e);
        }
        return null;
    }

    /**
     * 去认证服务器校验token
     * @param authHeader
     * @return
     */
    private TokenInfo getTokenInfo(String authHeader) {

        //截取请求头里的bearer token，TODO：注意，Bearer是大写？还是小写？postman是大写
        String token = StringUtils.substringAfter(authHeader,"Bearer ");
        //认证服务器验token地址 /oauth/check_token 是  spring .security.oauth2的验token端点
        String oauthServiceUrl = "http://localhost:9090/oauth/check_token";

        HttpHeaders headers = new HttpHeaders();//org.springframework.http.HttpHeaders
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//不是json请求
        //网关的appId，appSecret，需要在数据库oauth_client_details注册
        headers.setBasicAuth("gateway","123456");

        MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
        params.add("token",token);

        HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params,headers);
        ResponseEntity<TokenInfo> response = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, TokenInfo.class);

        log.info("token info : {}",response.getBody().toString());

        return response.getBody();//返回tokenInfo
    }
}
