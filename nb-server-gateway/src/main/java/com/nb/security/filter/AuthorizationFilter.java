package com.nb.security.filter;

import com.nb.security.entity.AuditLog;
import com.nb.security.service.IAuditLogService;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import com.netflix.zuul.exception.ZuulException;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

/**
 * 授权过滤器
 */
@Slf4j
@Component
public class AuthorizationFilter extends ZuulFilter {

    @Autowired
    private IAuditLogService auditLogService;

    @Override
    public String filterType() {
        return "pre";
    }

    @Override
    public int filterOrder() {
        return 3; //在审计过滤器后
    }

    @Override
    public boolean shouldFilter() {
        return true;
    }

    @Override
    public Object run() throws ZuulException {
        log.info("authorization start");

        RequestContext requestContext = RequestContext.getCurrentContext();
        HttpServletRequest request = requestContext.getRequest();


        //判断是否需要认证
        if(isNeedAuth(request)){
            //需要认证,从request取出AuthFilter放入的tokenInfo
            TokenInfo tokenInfo = (TokenInfo)request.getAttribute("tokenInfo");
            if(tokenInfo != null && tokenInfo.isActive()){//不为空且为激活状态
                //认证成功，看是否有权限
                if(!hasPermission(tokenInfo,request)){
                    //没有权限
                    log.info("audit log update fail 403 ");
                    //更新审计日志 ，403
                    Long auditLogId = (Long)request.getAttribute("auditLogId");
                    AuditLog log = auditLogService.getById(auditLogId);
                    log.setUpdateTime(new Date());
                    log.setStatus(403);
                    auditLogService.updateById(log);

                    handleError(403,requestContext);
                }
                //走到这里说明权限也通过了，将用户信息放到请求头，供其他微服务获取
                requestContext.addZuulRequestHeader("username",tokenInfo.getUser_name());


            }else{
                //不是以 /token开头的，才拦截，否则登录请求也就被拦截了。这里放过
                if(!StringUtils.startsWith(request.getRequestURI(),"/token")){
                    log.info("audit log update fail 401 ");
                    Long auditLogId = (Long)request.getAttribute("auditLogId");
                    AuditLog log = auditLogService.getById(auditLogId);
                    log.setUpdateTime(new Date());
                    log.setStatus(401);
                    auditLogService.updateById(log);

                    //认证失败，没有tokenInfo，报错,修改审计日志状态
                    handleError(401,requestContext);
                }
            }
        }
        return null;
    }

    /**
     * 认证成功，看是否有权限
     * TODO：从数据库查询权限，这里直接返回
     * @param tokenInfo
     * @param request
     * @return
     */
    private boolean hasPermission(TokenInfo tokenInfo, HttpServletRequest request) {
        return true;//RandomUtils.nextInt() % 2 == 0;
    }


    /**
     * 处理认证失败或者没有权限
     * @param status http状态码
     * @param requestContext
     */
    private void handleError(int status, RequestContext requestContext) {
        requestContext.getResponse().setContentType("application/json");//响应json
        requestContext.setResponseStatusCode(status);//响应状态码
        requestContext.setResponseBody("{\"message\":\"auth fail\"}");
        requestContext.setSendZuulResponse(false);//当前过滤器到此返回，不会再往下走了、
    }

    /**
     * 判断当前请求是否需要认证
     * TODO:查数据库判断权限
     * @param request
     * @return
     */
    private boolean isNeedAuth(HttpServletRequest request) {
        return true;
    }
}
