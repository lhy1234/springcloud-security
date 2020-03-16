package com.nb.security.service.impl;

import com.nb.security.service.PermissionService;
import org.apache.commons.lang.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.RandomUtils;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.oauth2.client.http.AccessTokenRequiredException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Override
    public boolean hasPermission(HttpServletRequest request, Authentication authentication) {
        //查数据库、查redis、调远程服务、或者内存里面的权限信息
        System.err.println("2.权限过滤器："+request.getRequestURI());
        System.err.println(ReflectionToStringBuilder.toString(authentication));
        //如果是已认证的Authentication就是OAuth2Authentication
        //如果是没认证的Authentication就是AnonymousAuthenticationToken
        if(authentication instanceof AnonymousAuthenticationToken){
            //到这里说明没传令牌
            throw new AccessTokenRequiredException(null);
        }

        //这里模拟
        return true;//RandomUtils.nextInt() % 2 ==0;
    }
}
