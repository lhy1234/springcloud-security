package com.nb.security.admin;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * 从session获取token，统一加到请求头中去
 */
@Component
public class SessionTokenFilter extends ZuulFilter {

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

    @Override
    public Object run() throws ZuulException {
        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();
        AccessToken accessToken = (AccessToken)request.getSession().getAttribute("token");
        if(accessToken != null){
            requestContext.addZuulRequestHeader("Authorization","Bearer "+accessToken.getAccess_token());
        }
        return null;
    }
}
