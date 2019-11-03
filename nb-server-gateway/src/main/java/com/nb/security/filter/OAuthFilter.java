package com.nb.security.filter;


import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.http.*;
import org.springframework.stereotype.Component;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;

/**
 * OAuth2认证过滤器
 *
 * 在OAuthFilter里，手动调用认证服务器校验token
 *
 */
@Slf4j
@Component
public class OAuthFilter extends ZuulFilter  {

    private RestTemplate restTemplate = new RestTemplate();

    /**
     * 判断过滤器是否起作用
     * 返回true ，run方法才会被执行
     * @return
     */
    @Override
    public boolean shouldFilter() {
        return true;
    }

    /**
     * 过滤器类型
     * pre：业务逻辑执行之前执行run()  大部分都是pre
     * post ：业务逻辑执行之后执行run()
     * error:业务逻辑抛出异常后执行run()
     * route : 控制路由，一般不用
     *
     * @return
     */
    @Override
    public String filterType() {
        return "pre";
    }


    /**
     * 要执行的业务逻辑
     * @return
     * @throws ZuulException
     */
    @Override
    public Object run() throws ZuulException {

        log.info("++++ oauth start ++++");
        //com.netflix.zuul.context.RequestContext获取请求、响应对象工具
        RequestContext requestContext= RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();

        //以 /token开头的请求，说明是发往认证服务器的认证请求,没有token，不校验请求头的token
        if(StringUtils.startsWith(request.getRequestURI(),"/token")){
            return null;
        }
        //不是以 /token 开头的请求 ，说明是业务请求，从请求头拿 token
        String authHeader = request.getHeader("Authorization");

        //如果请求头没有携带token 也往下执行。认证信息没有或者不对，都往下走
        if(StringUtils.isBlank(authHeader)){
            return null;
        }
        //如果带了请求头，看是不是以 bearer 开头的 OAuth2 认证(Authorization 有多种类型，如basic、OAuth1，OAuth2等，bearer+空格 说明是oauth2认证)
        //TODO: postman请求带过来的bearer 是Bearer ？？？
        if(!StringUtils.startsWithIgnoreCase(authHeader,"Bearer ")){
            //不是bearer 类型的token，往下执行
            return null;
        }

        //走到这里，说明是携带oauth2类型token业务请求，请求认证服务器，校验token
        try {
            TokenInfo info = getTokenInfo(authHeader);
            //tokenInfo放到request
            request.setAttribute("tokenInfo",info);
        }catch (Exception e){
            //有异常继续往下走
            log.error("get token info fail",e);
        }
        return null;
    }

    /**
     * 拿着请求携带的token去认证服务器校验token
     * @param authHeader
     * @return
     */
    private TokenInfo getTokenInfo(String authHeader) {
        //截取token，去掉bearer+空格
        //TODO: postman请求带过来的bearer 1是Bearer ？？？
        String token = StringUtils.substringAfter(authHeader,"Bearer ");
        //认证服务器校验token url
        String oauthServiceUrl = "http://localhost:9090/oauth/check_token";

        HttpHeaders headers = new HttpHeaders();//spring的
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//表单请求
        //网关在认证服务器注册的信息  username,password
        headers.setBasicAuth("gateway","123456");

        MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
        params.add("token",token);


        HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params, headers);

        ResponseEntity<TokenInfo> response = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, TokenInfo.class);

        log.info("token info :{} ",response.getBody().toString());

        return response.getBody();
    }

    /**
     * 执行顺序
     * @return
     */
    @Override
    public int filterOrder() {
        return 1;
    }

}
