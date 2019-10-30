package com.nb.security.server.resource;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

/**
 * 在OAuth2WebSecurityConfig 的tokenServices.setAccessTokenConverter(getAccessTokenConverter()); 需要用到
 * UserDetailsService，将token转换为用户信息，否则在controller里头只能拿到username，有了UserDetailsService，可以在校验token的时候将username转换为user对象
 */
@Component("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = new User();
        user.setId(1L);
        user.setUsername(username);
        return user;
    }
}
