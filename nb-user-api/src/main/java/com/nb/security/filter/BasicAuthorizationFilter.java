package com.nb.security.filter;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.nb.security.entity.User;
import com.nb.security.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import org.springframework.util.Base64Utils;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 处理httpbasic认证过滤器
 * httpbasic:请求头，即Authorization:Basic 加密字符串
 * 加密字符串为Base64编码的用户名:密码字符串
 * Authorization  Basic bGh5OmxoeWFwcA==
 * 在SpringBoot里，任何实现了Filter接口的类，SpringBoot会自动把它加到web应用的过滤器链里，只要声名为Component就行了
 */
@Order(2)
@Component
public class BasicAuthorizationFilter extends OncePerRequestFilter {//确保在一次请求只通过一次filter,并不是所有的container都像我们期望的只过滤一次，servlet版本不同，表现也不同

    @Autowired
    private IUserService userService;

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        System.err.println("++++认证++++ "+2);
        String authHeader = request.getHeader("Authorization");
        if (StringUtils.isNotBlank(authHeader)) {
            String token64 = StringUtils.substringAfter(authHeader, "Basic ");
            String token = new String(Base64Utils.decodeFromString(token64));//base64解码
            String[] items = StringUtils.splitByWholeSeparatorPreserveAllTokens(token, ":");//分隔用户名和密码
            String username = items[0];
            String password = items[1];
            User user = userService.getOne(new QueryWrapper<User>().eq("username", username));
            if (user != null && StringUtils.equals(user.getPassword(), password)) {
                //将用户信息放到request
                request.setAttribute("user", user);
            }
        }

        //继续执行其他过滤器
        filterChain.doFilter(request, response);
    }
}
