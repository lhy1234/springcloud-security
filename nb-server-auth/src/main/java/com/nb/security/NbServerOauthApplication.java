package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;


@SpringBootApplication
public class NbServerOauthApplication {

	/**
	 * TODO:这个配置放在别处就报循环依赖错误
	 * @return
	 */
	@Bean
	public BCryptPasswordEncoder passwordEncoder(){
		return new BCryptPasswordEncoder();
	}



	public static void main(String[] args) {
		SpringApplication.run(NbServerOauthApplication.class, args);
	}

}
