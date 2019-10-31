package com.nb.security.order;

import com.nb.security.server.resource.User;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@Slf4j
@RestController
@RequestMapping("/orders")
public class OrderController {

    private RestTemplate restTemplate = new RestTemplate();


    /**
     * @AuthenticationPrincipal String username 可以拿到用户名
     * 如果校验token配置了setAccessTokenConverter ，这里可以直接写自己的UserDetail实现类，可以拿到User对象
     * @param info
     * @param //username
     * @return
     */
    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info, @AuthenticationPrincipal(expression = "#this.id") Long userId/*@AuthenticationPrincipal String username,*//*@AuthenticationPrincipal User user*/){
        //log.info("user is : "+username);
        //log.info("User.getUsername: "+user.getUsername());
        log.info("expression = #this.id ---> "+userId);
        //查询价格
        PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
        log.info("price is "+price.getPrice());
        return info;
    }


    @GetMapping
    public OrderInfo getInfo(@PathVariable Long id){
        log.info("getInfo: id is "+id);
        return new OrderInfo(id);
    }

}
