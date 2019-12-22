package com.nb.security.server.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

import javax.sql.DataSource;

/**
 * Created by: 李浩洋 on 2019-10-29
 *
 * 认证服务器
 **/
@Configuration  //这是一个配置类
@EnableAuthorizationServer //当前应用是一个认证服务器
public class OAuth2AuthServerConfig extends AuthorizationServerConfigurerAdapter {//AuthorizationServerConfigurerAdapter：认证服务器适配器

    //Spring 对密码加密的封装，自己配置下
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private AuthenticationManager authenticationManager;
    /**
     * 1，配置客户端应用的信息，让认证服务器知道有哪些客户端应用来申请令牌。
     *
     * ClientDetailsServiceConfigurer：客户端的详情服务的配置
     * @param clients
     * @throws Exception
     */
    @Override
    public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
        clients.inMemory()//配置在内存里，后面修改为数据库里
                //~============== 注册【客户端应用】,使客户端应用能够访问认证服务器 ===========
                .withClient("orderApp")
                .secret(passwordEncoder.encode("123456")) //spring
                .scopes("read","write") //orderApp有哪些权限
                .accessTokenValiditySeconds(3600) //token的有效期
                .resourceIds("order-server") //资源服务器的id。发给orderApp的token，能访问哪些资源服务器，可以多个
                .authorizedGrantTypes("password")//授权方式，再给orderApp做授权的时候可以用哪种授权方式授权
                //~=============客户端应用配置结束 =====================
                .and()
                //~============== 注册【资源服务器-订单服务】(因为订单服务需要来认证服务器验令牌),使订单服务也能够访问认证服务器 ===========
                .withClient("orderService")
                .secret(passwordEncoder.encode("123456")) //spring
                .scopes("read") //orderServer有哪些权限
                .accessTokenValiditySeconds(3600) //token的有效期
                .resourceIds("order-server") //资源服务器的id。
                .authorizedGrantTypes("password");//授权方式，
    }

    /**
     *,2，配置用户信息
     * @param endpoints
     * @throws Exception
     */
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        //传给他一个authenticationManager用来校验传过来的用户信息是不是合法的,注进来一个，自己实现
        endpoints.authenticationManager(authenticationManager);
    }


    /**
     * 3，配置资源服务器过来验token 的规则
     * @param security
     * @throws Exception
     */
    @Override
    public void configure(AuthorizationServerSecurityConfigurer security) throws Exception {
        /**
         * 过来验令牌有效性的请求，不是谁都能验的，必须要是经过身份认证的。
         * 所谓身份认证就是，必须携带clientId，clientSecret，否则随便一请求过来验token是不验的
         */
        security.checkTokenAccess("isAuthenticated()");
    }
}
