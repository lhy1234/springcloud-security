package com.nb.security.admin;

import lombok.Data;

import java.util.Date;

/**
 * access_token
 * Created by: 李浩洋 on 2020-01-02
 **/
@Data
public class AccessToken {

    private String access_token;

    private String token_type;

    private Date expires_in;

    private String scope;
}
