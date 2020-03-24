package com.nb.security;

import com.nb.security.utils.SmsCodeRepository;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by: 李浩洋 on 2020-03-24
 **/
@RequestMapping("/sms")
@RestController
public class SmsCodeController {

    @Autowired
    private SmsCodeRepository smsCodeRepository;

    @GetMapping("/codeSend")
    public String smsCodeSend(@RequestParam String mobile){
        //生成验证码，长度从配置读取
        String code = RandomStringUtils.randomNumeric(4);
        smsCodeRepository.save(mobile,code);
        return "发功成功！";
    }
}
