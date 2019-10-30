package com.nb.security.server.resource;

import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;

/**
 * 资源服务器
 */
@Configuration
@EnableResourceServer
public class OAuth2ResourceServerConfig extends ResourceServerConfigurerAdapter {


    /**
     * 配置资源服务器的id
     * @param resources
     * @throws Exception
     */
    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        resources.resourceId("order-server");//资源服务器的id，这里要和认证服务器resourceIds一致才行！
    }


    /**
     * 配置权限
     * @param http
     * @throws Exception
     */
    @Override
    public void configure(HttpSecurity http) throws Exception {
        //版本一
//        http
//                .authorizeRequests()
//                .antMatchers("/hello").permitAll() //除了hello其他都要认证
//                .anyRequest().authenticated();//所有请求都得

        //版本2 细化
        http
                .authorizeRequests()
                .antMatchers(HttpMethod.POST).access("#oauth2.hasScope('write')")
                .antMatchers(HttpMethod.GET).access("#hasScope('read')"); //权限表达式，请求生成token的时候，指定scope，那么这个token只能访问这里相应的权限






    }
}
