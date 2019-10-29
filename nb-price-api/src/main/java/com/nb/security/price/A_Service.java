package com.nb.security.price;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by: 李浩洋 on 2019-10-29
 **/
@Service
public class A_Service {


    @Autowired
    private B_Service b_service;
}
