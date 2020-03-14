package com.nb.security.price;


import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;

/**
 * 价格服务
 */
@Slf4j
@RestController
@RequestMapping("/prices")
public class PriceController {


    @GetMapping("/{productId}")
    public PriceInfo getPrice(@PathVariable Long productId,@AuthenticationPrincipal String username){
        log.info("product id is "+productId);

        log.info("username is "+username);
        PriceInfo info = new PriceInfo();
        info.setProductId(productId);
        info.setPrice(new BigDecimal(100));
        return info;
    }
}
