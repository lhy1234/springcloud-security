package com.nb.security.order;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class PriceInfo {

    private Long id;

    private BigDecimal price;
}
