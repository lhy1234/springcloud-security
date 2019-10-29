package com.nb.security.server.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;

/**
 * Created by: 李浩洋 on 2019-10-29
 * 认证服务器
 **/
@Configuration
@EnableAuthorizationServer
public class OAuth2AuthServerConfig extends AuthorizationServerConfigurerAdapter {

    @Autowired
    private PasswordEncoder passwordEncoder;


    /**
     * Authentication authenticate(Authentication authentication)
     * 用于登录认证
     */
    @Autowired
    private AuthenticationManager authenticationManager;


    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        endpoints.authenticationManager(authenticationManager);
    }

    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {

        clients.inMemory()
                .withClient("orderApp")
                .secret(passwordEncoder.encode("123456"))
                .scopes("read","write")
                .accessTokenValiditySeconds(3600)
                .resourceIds("order-server")//生成的token可以访问的资源服务器的id
                .authorizedGrantTypes("password")
                .and()
                .withClient("orderService")
                .secret(passwordEncoder.encode("123456"))
                .scopes("read")
                .accessTokenValiditySeconds(3600)
                .authorizedGrantTypes("password")
                .resourceIds("order-server")//生成的token可以访问的资源服务器的id

               ;
    }


    /**
     * 过来验token的请求一定是要带上client信息的才行
     * @param security
     * @throws Exception
     */
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        security.checkTokenAccess("isAuthenticated()");
    }
}
