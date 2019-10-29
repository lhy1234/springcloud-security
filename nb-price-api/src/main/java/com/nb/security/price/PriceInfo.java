package com.nb.security.price;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class PriceInfo {

    private Long productId;

    private BigDecimal price;
}
