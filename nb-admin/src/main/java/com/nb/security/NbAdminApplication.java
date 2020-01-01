package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class NbAdminApplication {

	@GetMapping("/hello")
	public String hello(){
		return "hello";
	}

	public static void main(String[] args) {
		SpringApplication.run(NbAdminApplication.class, args);
		System.err.println("======== nb-admin启动成功 =========");
	}

}
