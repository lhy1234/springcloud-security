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
 * 继承 OncePerRequestFilter 保证过滤器里的逻辑在一个请求里只会被过滤一次
 * 在SpringBoot里，任何实现了Filter接口的类，SpringBoot会自动把它加到web应用的过滤器链里，只要声名为Component就行了
 */
@Order(1)//执行顺序
@Component
public class RateLimitFilter extends OncePerRequestFilter {//


    //每秒1个请求的限流器
    private RateLimiter rateLimiter = RateLimiter.create(1);

    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {

        System.err.println("++++流控++++ "+1);

        if (rateLimiter.tryAcquire()) {
            //如果没达到限流阈值，放行
            filterChain.doFilter(request, response);
        } else {
            response.setStatus(HttpStatus.TOO_MANY_REQUESTS.value());//429请过过多
            response.getWriter().write("too many request!");
            response.getWriter().flush();
            return ;
        }
    }
}
