package com.nb.security;

import com.alibaba.druid.support.json.JSONUtils;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.nb.security.entity.AuditLog;
import com.nb.security.service.IAuditLogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.oauth2.provider.error.OAuth2AccessDeniedHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 自定义403异常处理器，可以自定义响应信息
 */
@Component
public class GatewayAccessDeniedHandler extends OAuth2AccessDeniedHandler {

    @Autowired
    private IAuditLogService auditLogService;

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, AccessDeniedException authException) throws IOException, ServletException {

        //更新日志信息
        Long logId = (Long)request.getAttribute("logId");
        if(logId != null){
            AuditLog log = new AuditLog();
            log.setUpdateTime(new Date());
            log.setStatus(response.getStatus());
            auditLogService.update(log,new UpdateWrapper<AuditLog>().eq("id",logId));
        }
        //super.handle(request, response, authException); //默认处理
        Map<String,Object> resultMap = new HashMap<>();
        resultMap.put("status",403);
        resultMap.put("msg","sorry! 403");
        response.getWriter().write(JSONUtils.toJSONString(resultMap));

        //通知审计日志过滤器，403已经被处理过的标识，那里加个判断，否则就会更新两次
        request.setAttribute("logUpdated","yes");
    }
}
