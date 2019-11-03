package com.nb.security.filter;

import com.marcosbarbero.cloud.autoconfigure.zuul.ratelimit.config.repository.DefaultRateLimiterErrorHandler;
import org.springframework.stereotype.Component;

/**
 * 自定义限流错误处理器
 */
@Component
public class MyRateLimitErrorHandler extends DefaultRateLimiterErrorHandler{


    @Override
    public void handleError(String msg, Exception e) {
        super.handleError(msg, e);
    }
}
