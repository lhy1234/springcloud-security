package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@EnableZuulProxy
@SpringBootApplication
public class NbAdminApplication {



	public static void main(String[] args) {
		SpringApplication.run(NbAdminApplication.class, args);
		System.err.println("======== nb-admin启动成功 =========");
	}

}
