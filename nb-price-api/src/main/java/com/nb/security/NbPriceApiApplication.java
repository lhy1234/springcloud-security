package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

@SpringBootApplication
@EnableResourceServer//作为资源服务器
public class NbPriceApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(NbPriceApiApplication.class, args);
		System.err.println("============= Price Api 启动完成 ============");
	}

}
