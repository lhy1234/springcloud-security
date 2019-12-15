package com.nb.security.interceptor;

import com.nb.security.entity.User;
import org.apache.commons.lang3.ArrayUtils;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 基于ACL访问控制的权限拦截器
 * 在审计之后执行
 */
@Component
public class AclInterceptor extends HandlerInterceptorAdapter {

    //放行的url
    private String[] permitUrls = new String[]{"/users/login"};

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        System.err.println("+++授权+++" +4);
        boolean result = true;

        if(!ArrayUtils.contains(permitUrls,request.getRequestURI())){//请求不在放行的URL列表，就拦截
            //从request拿用户信息
            User user = (User)request.getAttribute("user");
            if(user == null){
                //未认证
                response.setContentType("text/plain");
                response.setStatus(HttpStatus.UNAUTHORIZED.value());
                response.getWriter().write("未认证");
                result = false;
            }else {
                //判断用户是否有权限访问
                if(!user.hasPermission(request.getMethod())){
                    //没权限
                    response.setContentType("text/plain");
                    response.setStatus(HttpStatus.FORBIDDEN.value());
                    response.getWriter().write("未授权");
                    result = false;
                }
            }
        }

        return result;
    }
}
