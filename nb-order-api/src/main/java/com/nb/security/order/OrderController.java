package com.nb.security.order;

import com.nb.security.resource.server.User;
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
     * 版本二，token 转换成了 User对象
     * @param info
     * @param user
     * @return
     */
    @PostMapping
    public OrderInfo create(@RequestBody OrderInfo info, @AuthenticationPrincipal User user){
        log.info("获取到username = {}",user.getUsername());
        //查询价格
//        PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
//        log.info("price is "+price.getPrice());
        return info;
    }

//    /**  版本一：只能从token 里获取生成token的用户名
//     * @AuthenticationPrincipal 注解可以获取生成token的用户名
//     * @param info
//     * @param username
//     * @return
//     */
//    @PostMapping
//    public OrderInfo create(@RequestBody OrderInfo info, @AuthenticationPrincipal String username){
//        log.info("获取到username = {}",username);
//        //查询价格
////        PriceInfo price = restTemplate.getForObject("http://localhost:9080/prices/"+info.getProductId(),PriceInfo.class);
////        log.info("price is "+price.getPrice());
//        return info;
//    }


    @GetMapping
    public OrderInfo getInfo(@PathVariable Long id){
        log.info("getInfo: id is "+id);
        return new OrderInfo(id);
    }

}
