package com.nb.security.entity;

import lombok.Data;

import javax.validation.constraints.NotBlank;

//封装请求和响应
@Data
public class UserInfo {

    private Long id;
    @NotBlank(message = "用户名不能为空")
    private String username;
    private String name;
    @NotBlank(message = "密码不能为空")
    private String password;
}
