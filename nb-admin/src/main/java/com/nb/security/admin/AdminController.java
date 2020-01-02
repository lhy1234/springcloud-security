package com.nb.security.admin;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

/**
 * Created by: 李浩洋 on 2020-01-02
 **/
@Slf4j
@RestController
@RequestMapping("/")
public class AdminController {

    private RestTemplate restTemplate  = new RestTemplate();


    @PostMapping("/login")
    public void login(@RequestBody Credential credential){

        //认证服务器验token地址 /oauth/check_token 是  spring .security.oauth2的验token端点
        String oauthServiceUrl = "http://localhost:9090/token/oauth/token";

        HttpHeaders headers = new HttpHeaders();//org.springframework.http.HttpHeaders
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//不是json请求
        //网关的appId，appSecret，需要在数据库oauth_client_details注册
        headers.setBasicAuth("admin","123456");

        MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
        params.add("username",credential.getUsername());
        params.add("password",credential.getPassword());
        params.add("grant_type","password");
        params.add("scope","read,write");

        HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params,headers);
        ResponseEntity<AccessToken> response = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, AccessToken.class);

        log.info("token info : {}",response.getBody().toString());
    }

}
