package com.nb.security.order;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
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
    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info,@AuthenticationPrincipal String username){
        log.info("获取到username = {}",username);
        //查询价格
        PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
        log.info("price is "+price.getPrice());
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
