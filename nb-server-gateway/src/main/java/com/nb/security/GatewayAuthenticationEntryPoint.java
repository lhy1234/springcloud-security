package com.nb.security;

import com.alibaba.druid.support.json.JSONUtils;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.nb.security.entity.AuditLog;
import com.nb.security.service.IAuditLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.oauth2.client.http.AccessTokenRequiredException;
import org.springframework.security.oauth2.provider.error.OAuth2AuthenticationEntryPoint;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 自定义401处理
 */
@Component
public class GatewayAuthenticationEntryPoint extends OAuth2AuthenticationEntryPoint {

    @Autowired
    private IAuditLogService auditLogService;
    @Override
    public void commence(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {


        //这里分情况：1，令牌是错的，就不会经过审计日志的过滤器(日志过滤器在认证之后)
        //          2,没传令牌，都会经过logFilter，又分两种情况：1-通过权限认证（返回的401是微服务返回的），2-未通过权限认证
        if(authException instanceof AccessTokenRequiredException){
            //说明没传令牌，但是已记录401日志，这里更新日志
            Long logId = (Long)request.getAttribute("logId");
            if(logId != null){
                AuditLog log = new AuditLog();
                log.setUpdateTime(new Date());
                log.setStatus(response.getStatus());
                auditLogService.update(log,new UpdateWrapper<AuditLog>().eq("id",logId));
                System.err.println("自定义处理401，更新日志 logId=" + logId);
            }
        }else {
            //到这里说明令牌错误，没有经过身份认证过滤器，没记录日志，就insert日志
            AuditLog log = new AuditLog();
            log.setUsername("");
            log.setMethod(request.getMethod());
            log.setPath(request.getRequestURI());
            log.setCreateTime(new Date());
            auditLogService.save(log);
            System.err.println("自定义处理401，新增日志");
        }
        super.commence(request,response,authException);
        //通知审计日志过滤器，401已经被处理过的标识，那里加个判断，否则就会更新两次
        request.setAttribute("logUpdated","yes");
    }
}
