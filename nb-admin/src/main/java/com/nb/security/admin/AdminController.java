package com.nb.security.admin;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpSession;

/**
 * Created by: 李浩洋 on 2020-01-02
 **/
@Slf4j
@Controller
@RequestMapping("/")
public class AdminController {

    private RestTemplate restTemplate  = new RestTemplate();

    @GetMapping("/index")
    public String hello(Model model){
        model.addAttribute("hello","hello world!");
        return "index";
    }


    @GetMapping("/loginPage")
    public String loginPage(){
        return "login";
    }


    @ResponseBody
    @PostMapping("/login")
    public void login(@RequestParam String username,@RequestParam String password/*@RequestBody Credential credential*/, HttpSession session){

        //认证服务器验token地址 /oauth/check_token 是  spring .security.oauth2的验token端点
        String oauthServiceUrl = "http://gateway.nb.com:9070/token/oauth/token";

        HttpHeaders headers = new HttpHeaders();//org.springframework.http.HttpHeaders
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//不是json请求
        //网关的appId，appSecret，需要在数据库oauth_client_details注册
        headers.setBasicAuth("admin","123456");

        MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
        params.add("username",username);
        params.add("password",password);
        params.add("grant_type","password");
        params.add("scope","read write");

        HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params,headers);
        ResponseEntity<AccessToken> response = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, AccessToken.class);

        session.setAttribute("token",response.getBody());
        log.info("token info : {}",response.getBody().toString());
    }

    @GetMapping("/me")
    @ResponseBody
    public AccessToken me(HttpSession session){
        AccessToken accessToken = (AccessToken) session.getAttribute("token");
        return accessToken;
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "index";
    }

}
