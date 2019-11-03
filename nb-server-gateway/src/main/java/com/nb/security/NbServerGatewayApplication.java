package com.nb.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@EnableZuulProxy
@SpringBootApplication
@RestController
public class NbServerGatewayApplication {





	public static void main(String[] args) {
		SpringApplication.run(NbServerGatewayApplication.class, args);
	}

}


