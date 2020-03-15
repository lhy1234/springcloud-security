package com.nb.security.filter;

import com.nb.security.entity.AuditLog;
import com.nb.security.service.IAuditLogService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.actuate.endpoint.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;

/**
 * 审计日志过滤器：
 * 流控 - 认证 - 审计 - 授权
 *  这里不要声名为spring的Component
 *  如果声名了，springboot会自动把这个过滤器加在web过滤器链里，再自己配置其位置就会加两次。
 */
public class GatewayAuditLogFilter extends OncePerRequestFilter {

    //@Autowired
    private IAuditLogService auditLogService;

    public GatewayAuditLogFilter(IAuditLogService auditLogService){
        this.auditLogService = auditLogService;
    }


    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        //认证过滤器会把jwt令牌转换为Authentication放在SecurityContext安全上下文里，Principal就是申请令牌的用户名
        //如果不传token，默认没认证的用户名是 anonymousUser
        String username = (String)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        //1,记录日志
        AuditLog log = new AuditLog();
        log.setUsername(username);
        log.setMethod(request.getMethod());
        log.setPath(request.getRequestURI());
        log.setCreateTime(new Date());
        auditLogService.save(log);
        request.setAttribute("logId",log.getId());
        System.err.println("1 记录日志 ：" + log.toString());
        //2,调用其他过滤器链
        filterChain.doFilter(request,response);
        //3,更新日志,判断一下如果自定义403处理器处理过了，这里就不再处理了，否则会更新两次
        if(StringUtils.isBlank((String)request.getAttribute("logUpdated"))){
            log.setUpdateTime(new Date());
            log.setStatus(response.getStatus());
            auditLogService.updateById(log);
            System.err.println("3 更新日志 ：" + log.toString());
        }

    }
}
