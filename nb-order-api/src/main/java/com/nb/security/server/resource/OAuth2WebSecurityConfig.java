package com.nb.security.server.resource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.oauth2.provider.authentication.OAuth2AuthenticationManager;
import org.springframework.security.oauth2.provider.token.RemoteTokenServices;
import org.springframework.security.oauth2.provider.token.ResourceServerTokenServices;

/**
 * 这个类配置怎么验证token令牌
 * 资源服务器需要方发远程请求到认证服务器验证token
 */
@Configuration
@EnableWebSecurity
public class OAuth2WebSecurityConfig extends WebSecurityConfigurerAdapter{


    /**
     * 声名一个bean，去认证服务器校验token
     * @return
     */
    @Bean
    public ResourceServerTokenServices tokenServices(){
        //远程TokenServices
        RemoteTokenServices tokenServices = new RemoteTokenServices();
        tokenServices.setClientId("orderService");//资源服务器的client id
        tokenServices.setClientSecret("123456");//资源服务器的client secret
        //校验token的认证服务器地址,问认证服务器令牌对应的用户信息是什么
        tokenServices.setCheckTokenEndpointUrl("http://localhost:9090/oauth/check_token");
        return tokenServices;
    }


    /**
     * 当order-api 拦截到需要验token 的时候，就会调用这里，去认证服务器校验token
     * @return
     * @throws Exception
     */
    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        OAuth2AuthenticationManager auth2AuthenticationManager = new OAuth2AuthenticationManager();
        auth2AuthenticationManager.setTokenServices(tokenServices());
        return auth2AuthenticationManager;
    }
}
