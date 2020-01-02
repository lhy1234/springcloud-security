package com.nb.security;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
@SpringBootApplication
public class NbAdminApplication {

	@GetMapping("/index")
	public String hello(Model model){
		model.addAttribute("hello","hello world!");
		return "index";
	}


	@GetMapping("/loginPage")
	public String loginPage(){
		return "login";
	}

	public static void main(String[] args) {
		SpringApplication.run(NbAdminApplication.class, args);
		System.err.println("======== nb-admin启动成功 =========");
	}

}
