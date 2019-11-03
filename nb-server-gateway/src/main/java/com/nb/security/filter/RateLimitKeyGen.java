package com.nb.security.filter;

import com.marcosbarbero.cloud.autoconfigure.zuul.ratelimit.config.RateLimitUtils;
import com.marcosbarbero.cloud.autoconfigure.zuul.ratelimit.config.properties.RateLimitProperties;
import com.marcosbarbero.cloud.autoconfigure.zuul.ratelimit.support.DefaultRateLimitKeyGenerator;
import org.springframework.cloud.netflix.zuul.filters.Route;
import org.springframework.stereotype.Component;

import javax.servlet.http.HttpServletRequest;

/**
 * 自定义RateLimit限流key生成规则
 */
@Component
public class RateLimitKeyGen extends DefaultRateLimitKeyGenerator {


    public RateLimitKeyGen(RateLimitProperties properties,RateLimitUtils rateLimitUtils){
        super(properties,rateLimitUtils);
    }
    @Override
    public String key(HttpServletRequest request, Route route, RateLimitProperties.Policy policy) {
        //这里自定义key生成规则
        return super.key(request, route, policy);
    }
}
