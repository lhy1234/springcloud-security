package com.nb.security.order;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

@Slf4j
@RestController
@RequestMapping("/orders")
public class OrderController {

    /**
     * 在Zuul网关里，授权成功后，往请求头里加入username属性，可以传入任何属性，
     * 甚至是一个json，这里可以转换为对象
     * @param info
     * @param
     * @return
     */
    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info,@RequestHeader String username){
        log.info("获取到username = {}",username);
        //查询价格
//        PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
//        log.info("price is "+price.getPrice());
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
