package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;

@SpringBootApplication
@EnableResourceServer//作为资源服务器存在
public class NbOrderApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(NbOrderApiApplication.class, args);
		System.err.println("============= Order Api 启动完成 ============");
	}

}
