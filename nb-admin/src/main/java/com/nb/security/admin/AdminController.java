package com.nb.security.admin;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

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

    /**
     * 重定向到认证服务器的登录页
     * @param response
     * @throws IOException
     */
    @GetMapping("/toAuthLogin")
    public void toAuthLogin(HttpServletResponse response) throws IOException{

        String redirectUrl = "http://auth.nb.com:9090/oauth/authorize?"
                            +"client_id=admin&"
                            +"redirect_uri=http://admin.nb.com:8080/oauth/callback&"
                            +"response_type=code&"
                            +"state=/index"; //state参数传过去啥传回来啥，一般记录跳转之前的路径
        response.sendRedirect(redirectUrl);
    }

    /**
     * 授权回调
     * @param code 授权码
     * @param state 自定义参数
     * @param session
     */
    @GetMapping("/oauth/callback")
    public String callback(@RequestParam String code,String state ,HttpSession session){

        log.info("code is {}, state is {}",code,state);

        //认证服务器验token地址 /oauth/check_token 是  spring .security.oauth2的验token端点
        String oauthServiceUrl = "http://gateway.nb.com:9070/token/oauth/token";

        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED);//不是json请求
        //网关的appId，appSecret，需要在数据库oauth_client_details注册
        headers.setBasicAuth("admin","123456");

        MultiValueMap<String,String> params = new LinkedMultiValueMap<>();
        params.add("code",code);//授权码
        params.add("grant_type","authorization_code");//授权类型-授权码模式
        //认证服务器会对比数据库客户端信息的的redirect_uri和这里的是不是一致，不一致就报错
        params.add("redirect_uri","http://admin.nb.com:8080/oauth/callback");

        HttpEntity<MultiValueMap<String,String>> entity = new HttpEntity<>(params,headers);
        ResponseEntity<AccessToken> response = restTemplate.exchange(oauthServiceUrl, HttpMethod.POST, entity, AccessToken.class);

        session.setAttribute("token",response.getBody());

        return "redirect:/index";
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
