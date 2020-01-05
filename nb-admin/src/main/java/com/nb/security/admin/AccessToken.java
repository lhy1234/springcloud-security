package com.nb.security.admin;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.Date;

/**
 * access_token
 * Created by: 李浩洋 on 2020-01-02
 **/
@Data
public class AccessToken {

    private String access_token;

    private String refresh_token;

    private String token_type;

    private Long expires_in; //过期时间 秒

    private String scope;

    private LocalDateTime expireTime; //过期时间

    //设置token的失效日期
    public AccessToken init(){
        //expires_in -3 秒，在token失效之前就失效
        expireTime = LocalDateTime.now().plusSeconds(expires_in -3);
        return this;
    }
    //令牌是否过期
    public boolean isExpired(){
        return expireTime.isBefore(LocalDateTime.now());
    }


}
