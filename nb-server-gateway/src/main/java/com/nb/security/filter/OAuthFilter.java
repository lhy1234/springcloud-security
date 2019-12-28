package com.nb.security.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.constants.ZuulConstants;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.context.annotation.FilterType;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * OAuth认证过滤器
 * Created by: 李浩洋 on 2019-12-28
 **/
@Slf4j
@Component
public class OAuthFilter extends ZuulFilter {

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

    //
    @Override
    public Object run() throws ZuulException {
        log.info("oauth start ");
        //获取请求和响应
        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();

        if(StringUtils.startsWith(request.getRequestURI(),"/token")){
            // /token开头的请求，是获取token的，直接放行
            return null;
        }
        //获取请求头的token
        String authHeader = request.getHeader("Authorization");

        if(StringUtils.isBlank(authHeader)){
            //如果请求头没有带token，不管认证信息有没有，对不对，都往下走，（要做审计日志）
            return null;
        }
        if(!StringUtils.startsWithIgnoreCase(authHeader,"bearer ")){
            //不是OAuth的token(如 HTTP basic)，也往下走
            return null;
        }
        //走到这里，说明携带OAuth认证的请求，验token
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

        return null;
    }
}
