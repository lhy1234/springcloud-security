package com.nb.security.filter;

import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.exception.ZuulException;
import org.springframework.stereotype.Component;

@Component
public class OAuthFilter extends ZuulFilter  {

    /**
     * 判断过滤器是否起作用
     * @return
     */
    @Override
    public boolean shouldFilter() {
        return true;
    }

    /**
     * 过滤器类型
     * pre：业务逻辑执行之前执行run()  大部分都是pre
     * post ：业务逻辑执行之后执行run()
     * error:业务逻辑抛出异常后执行run()
     * route : 控制路由，一般不用
     *
     * @return
     */
    @Override
    public String filterType() {
        return "pre";
    }


    /**
     * 要执行的业务逻辑
     * @return
     * @throws ZuulException
     */
    @Override
    public Object run() throws ZuulException {
        return null;
    }

    /**
     * 执行顺序
     * @return
     */
    @Override
    public int filterOrder() {
        return 1;
    }

}
