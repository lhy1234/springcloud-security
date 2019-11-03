package com.nb.security.filter;

import com.nb.security.entity.AuditLog;
import com.nb.security.service.IAuditLogService;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import jdk.nashorn.internal.parser.Token;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * 审计过滤器
 * 1流控--2认证--3审计--4授权
 */
@Slf4j
@Component
public class AuditLogFilter extends ZuulFilter {

    @Autowired
    private IAuditLogService auditLogService;

    @Override
    public String filterType() {
        return "pre";
    }

    @Override
    public int filterOrder() {
        return 2; //在OAuthFilter后
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() throws ZuulException {

        log.info(" audit log insert ....");

        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();

        AuditLog log = new AuditLog();
        log.setCreateTime(new Date());
        log.setPath(request.getRequestURI());
        log.setMethod(request.getMethod());
        TokenInfo info = (TokenInfo) request.getAttribute("tokenInfo");
        if(info != null){
            log.setUsername(info.getUser_name());
        }
        auditLogService.save(log);
        request.setAttribute("auditLogId",log.getId());
        return null;
    }
}
