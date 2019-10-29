package com.nb.security.interceptor;

import com.nb.security.entity.AuditLog;
import com.nb.security.entity.User;
import com.nb.security.service.IAuditLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * 审计日志拦截器
 * 拦截流程
 * 流控 -- 认证 --审计 -- 授权 -- 业务
 * 审计要在进入接口之前，insert 数据库（实际可能发送到专门的日志服务器），执行完后 update，过滤器不便于判断拦截之前、之后，故用拦截器
 */
@Component
public class AuditLogInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private IAuditLogService auditLogService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        AuditLog log = new AuditLog();
        log.setMethod(request.getMethod());
        log.setPath(request.getRequestURI());
        log.setCreateTime(new Date());

        User user = (User) request.getAttribute("user");
        if (user != null) {
            user.setUsername(user.getUsername());
        }
        auditLogService.save(log);

        //将审计日志的id传给request，以便于请求处理完成后更新审计日志
        request.setAttribute("auditLogId", log.getId());

        return super.preHandle(request, response, handler);
    }


    /**
     * 请求处理成功失败，都更新审计日志
     *
     * @param request
     * @param response
     * @param handler
     * @param ex
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, @Nullable Exception ex) throws Exception {
        //审计日志id
        Long auditLogId = (Long) request.getAttribute("auditLogId");
        AuditLog log = auditLogService.getById(auditLogId);
        log.setStatus(response.getStatus());
        log.setUpdateTime(new Date());
        auditLogService.updateById(log);

        super.afterCompletion(request, response, handler, ex);
    }
}
