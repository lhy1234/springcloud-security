package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@SpringBootApplication
@Controller
public class NbServerOAuthApplication {

	/**
	 * TODO:这个配置放在别处就报循环依赖错误
	 * @return
	 */
	@Bean
	public BCryptPasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}



//	@GetMapping("/toSsoLogin")
//	public String toSsoLogin(){
//		return "login-sso";
//	}


	public static void main(String[] args) {
		SpringApplication.run(NbServerOAuthApplication.class, args);
		System.err.println("============= OAuth Api 启动完成 ============");
	}

}
