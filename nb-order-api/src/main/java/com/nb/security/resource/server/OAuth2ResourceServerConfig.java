package com.nb.security.resource.server;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

/**
 * 资源服务器
 * 配置了@EnableResourceServer ，所有发往nb-order-api的请求，都会去请求头里找token，找不到不让你过aa
 */
@Configuration
@EnableResourceServer//告诉nb-order-api,你就是资源服务器
public class OAuth2ResourceServerConfig extends ResourceServerConfigurerAdapter {

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        //配置资源服务器的id，“现在我就是资源服务器order-server！！！”
        resources.resourceId("order-server");
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        /**
         * 进入nb-order-api的所有请求，哪些要拦截，哪些要放过，在这里配置
         */
        http.authorizeRequests()
                //.antMatchers("/hello")
               // .permitAll() //放过/haha不拦截
                .antMatchers(HttpMethod.POST).access("#oauth2.hasScope('write')")//POST请求的token要有写权限
                .antMatchers(HttpMethod.GET).access("#oauth.hasScope('read')");//GET请求要有read权限
    }
}
