package com.nb.security.order;

import com.alibaba.csp.sentinel.Entry;
import com.alibaba.csp.sentinel.SphU;
import com.alibaba.csp.sentinel.slots.block.BlockException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.oauth2.client.OAuth2RestTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@Slf4j
@RestController
@RequestMapping("/orders")
public class OrderController {

    //OAuth2RestTemplate：
    //会从请求的上下文里拿到令牌，放到请求头里，发出去。
    @Autowired
    private OAuth2RestTemplate restTemplate;

    /**
     * 创建订单
     * @param info
     * @param
     * @return
     */
    //注解生效需在启动类配置@EnableGlobalMethodSecurity(prePostEnabled = true)
    //@PreAuthorize("#oauth2.hasScope('write')")
    @PreAuthorize("hasRole('ROLE_ADMIN')")
    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info,@AuthenticationPrincipal String username){

        try(Entry entry = SphU.entry("createOrder")){ //资源名称-createOrder
            // 被保护的逻辑
            log.info("获取到username = {}",username);
        }catch (BlockException ex){
            // 处理被流控的逻辑
            log.info("blocked!");
        }
        //查询价格
        //PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
        //log.info("price is "+price.getPrice());
        return info;
    }


    @GetMapping("/{id}")
    public OrderInfo getInfo(@PathVariable Long id ,@RequestHeader String username){
        log.info("getInfo: id is "+id +" , and username is "+username);
        OrderInfo info = new OrderInfo();
        info.setId(id);
        info.setProductId(id*10);
        return info;
    }

}
