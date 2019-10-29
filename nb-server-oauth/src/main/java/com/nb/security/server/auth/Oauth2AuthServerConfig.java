package com.nb.security.server.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;

/**
 * Created by: 李浩洋 on 2019-10-29
 * 认证服务器
 **/
@Configuration
@EnableAuthorizationServer
public class Oauth2AuthServerConfig extends AuthorizationServerConfigurerAdapter {

    @Autowired
    private PasswordEncoder passwordEncoder;


    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {

        clients.inMemory()
                .withClient("orderApp")
                .secret(passwordEncoder.encode("123456"))
                .scopes("read","write")
                .accessTokenValiditySeconds(3600)
                .authorizedGrantTypes("password")
                .resourceIds("order-server")//可以访问的资源服务器的id
                .and()
                .withClient("order-service")
                .secret(passwordEncoder.encode("123456"))
                .scopes("read")
                .accessTokenValiditySeconds(3600)
                .authorizedGrantTypes("password")
                .resourceIds("order-server")//可以访问的资源服务器的id
                .and()
                .withClient("order-service");
    }
}
