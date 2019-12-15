package com.nb.security.server.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

/**
 * Created by: 李浩洋 on 2019-10-29
 **/
@Component//TODO:这里不写 ("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService {

    /**
     *
     */
    @Autowired
    private PasswordEncoder passwordEncoder;

    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        return User.withUsername(username)
                .password(passwordEncoder.encode("123456"))
                .authorities("ROLE_ADMIN") //权限
                .build();//构建一个User对象
    }
}
