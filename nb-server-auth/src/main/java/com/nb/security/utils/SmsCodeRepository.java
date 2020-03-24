package com.nb.security.utils;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.Date;
import java.util.concurrent.TimeUnit;

/**
 * Created by: 李浩洋 on 2020-03-24
 **/
@Component
public class SmsCodeRepository {

    private static Logger logger = LoggerFactory.getLogger(SmsCodeRepository.class);

    //@Value("${sys.redis.prefix}")
    //private  String sysRedisPrefix = "";
//
//    /********600秒失效**********/
//    @Value("${sms.code.expireIn}")
//    private String codeExpireIn;

    private static int codeExpireIn = 300;


    @Autowired
    private RedisTemplate<String, Object> redisTemplate;


    /**
     * 保存验证码
     * @param code
     */
    public void save(String mobile,String code) {
        String key = buildKey(mobile);
        redisTemplate.opsForValue().set(key, code, codeExpireIn, TimeUnit.SECONDS);
        logger.info("【验证码redis存储实现】redis存进去了一个新的key：{}，值:{}",key, code);
    }

    /**
     * 获取验证码
     * @return
     */
    public String get(String mobile) {
        Object value = redisTemplate.opsForValue().get(buildKey(mobile));
        if(value == null){
            return null;
        }
        return (String) value;
    }

    /**
     * 移除验证码
     */
    public void remove(String mobile) {
        String key = buildKey(mobile);
        logger.info("【验证码redis存储实现】redis删除了一个key：{}",key);
        redisTemplate.delete(key);
    }



    /**
     * 构建验证码在redis中的key
     */
    private String buildKey(String mobile){
        //手机号为空
        if(StringUtils.isBlank(mobile)){
            throw new RuntimeException("手机号为空");
        }
        return "sms:code:" +  mobile;
    }


}
