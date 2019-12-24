package com.nb.security.resource.server;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationManager;
import org.springframework.security.oauth2.provider.token.*;

/**
 * 怎么验发往本服务的请求头的令牌
 * 1，自定义tokenServices ,说明去哪里去验token
 * 2，重写authenticationManagerBean()方法，将AuthenticationManager暴露为一个Bean
 *    要认证跟用户相关的信息，一般用 AuthenticationManager
 *
 * 这样配置了后,所有发往nb-order-api的请求，
 * 需要验token的时候就会发请求去http://localhost:9090/oauth/check_token验token，获取到token对应的用户信息
 */
@Configuration
@EnableWebSecurity
public class OAuth2WebSecurityConfig extends WebSecurityConfigurerAdapter{



    @Autowired
    private UserDetailsService userDetailsService;

    /**
     * 通过这个Bean，去远程调用认证服务器，验token
     * @return
     */
    @Bean
    public ResourceServerTokenServices tokenServices(){
        RemoteTokenServices tokenServices = new RemoteTokenServices();
        tokenServices.setClientId("orderService");//在认证服务器配置的，订单服务的clientId
        tokenServices.setClientSecret("123456");//在认证服务器配置的，订单服务的ClientSecret
        tokenServices.setCheckTokenEndpointUrl("http://localhost:9090/oauth/check_token");
        //配置一个转换器，将token信息转换为用户对象
        // TODO：获取用户信息本应该是认证服务器的事吧！总感觉在这里做不合适
        tokenServices.setAccessTokenConverter(getAccessTokenConverter());
        return tokenServices;
    }

    //转换器，将token转换为用户信息
    private AccessTokenConverter getAccessTokenConverter() {
        DefaultAccessTokenConverter accessTokenConverter = new DefaultAccessTokenConverter();
        //这个类的目的是设UserDetailsService,来将token转换为用户信息，不设默认为空
        DefaultUserAuthenticationConverter userTokenConverter = new DefaultUserAuthenticationConverter();
        userTokenConverter.setUserDetailsService(userDetailsService);
        accessTokenConverter.setUserTokenConverter(userTokenConverter);
        return accessTokenConverter;
    }

    /**
     * 要认证跟用户相关的信息，一般用 AuthenticationManager
     * 覆盖这个方法，可以将AuthenticationManager暴露为一个Bean
     *
     * @return
     * @throws Exception
     */
    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        OAuth2AuthenticationManager authenticationManager = new OAuth2AuthenticationManager();
        authenticationManager.setTokenServices(tokenServices());//设置为自定义的TokenServices，去校验令牌
        return authenticationManager;
    }

}
