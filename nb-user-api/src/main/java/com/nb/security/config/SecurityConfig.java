package com.nb.security.config;

import com.nb.security.interceptor.AclInterceptor;
import com.nb.security.interceptor.AuditLogInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class SecurityConfig implements WebMvcConfigurer {

    //审计日志
    @Autowired
    private AuditLogInterceptor auditLogInterceptor;
    //授权
    @Autowired
    private AclInterceptor aclInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(auditLogInterceptor);//.addPathPatterns();//先add的先执行,默认所有请求都拦截
        registry.addInterceptor(aclInterceptor);
    }
}
