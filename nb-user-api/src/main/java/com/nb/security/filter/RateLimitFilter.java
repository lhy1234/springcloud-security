package com.nb.security.filter;

import com.google.common.util.concurrent.RateLimiter;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Component;
import org.springframework.web.filter.OncePerRequestFilter;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 限流过滤器，在认证之前，order = 1
 */
@Order(1)//执行顺序
@Component
public class RateLimitFilter extends OncePerRequestFilter {//保证请求只过滤一次


    //每秒1个请求
    private RateLimiter rateLimiter = RateLimiter.create(1);

    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        System.err.println("++++流控++++");

        if (rateLimiter.tryAcquire()) {
            //如果没达到限流阈值，放行
            filterChain.doFilter(request, response);
        } else {
            response.setStatus(HttpStatus.TOO_MANY_REQUESTS.value());//429
            response.getWriter().write("too many request!");
            response.getWriter().flush();
        }
    }
}
