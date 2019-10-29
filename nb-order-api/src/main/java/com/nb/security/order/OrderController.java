package com.nb.security.order;

import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@Slf4j
@RestController
@RequestMapping("/orders")
public class OrderController {

    private RestTemplate restTemplate = new RestTemplate();


    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info, @AuthenticationPrincipal String username){
        log.info("user is : "+username);
        //查询价格
        PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
        log.info("price is "+price.getPrice());
        return info;
    }

}
