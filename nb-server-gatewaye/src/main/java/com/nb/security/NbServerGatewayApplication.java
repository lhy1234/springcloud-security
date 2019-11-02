package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;


@EnableZuulProxy
@SpringBootApplication
public class NbServerGatewayApplication {

	public static void main(String[] args) {
		SpringApplication.run(NbServerGatewayApplication.class, args);
	}

}
