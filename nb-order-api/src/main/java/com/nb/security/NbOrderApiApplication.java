package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;

@ComponentScan("com.nb.security")
@SpringBootApplication
public class NbOrderApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(NbOrderApiApplication.class, args);
	}

}
