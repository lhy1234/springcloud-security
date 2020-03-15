package com.nb.security.config;

import com.nb.security.GatewayWebSecurityExpressionHandler;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfiguration;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

/**
 * 作为一个资源服务器存在
 */
@Configuration
@EnableResourceServer
public class GatewaySecurityConfig extends ResourceServerConfigurerAdapter {

    @Autowired
    private GatewayWebSecurityExpressionHandler gatewayWebSecurityExpressionHandler;

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        //资源服务器id
        //resources.resourceId("gateway");
        //注入自己的 表达式处理器
        resources.expressionHandler(gatewayWebSecurityExpressionHandler);
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/token/**").permitAll() //放过/token开头的请求，是在申请令牌
            .anyRequest()
                //指定权限访问规则，permissionService需要自己实现，返回布尔值，true-能访问；false-无权限
                // 传进去2个参数，1-当前请求 ，2-当前用户
            .access("#permissionService.hasPermission(request,authentication)");

    }
}
