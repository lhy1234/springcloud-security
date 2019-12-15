package com.nb.security.order;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@Slf4j
@RestController
@RequestMapping("/orders")
public class OrderController {

    private RestTemplate restTemplate = new RestTemplate();



    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info){
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
