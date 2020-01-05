package com.nb.security.server.auth;

import org.apache.commons.lang3.StringUtils;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 自定义退出成功处理器
 * 重定向到 redirect_uri
 *
 */
@Component
public class OAuth2LogoutSuccessHandler implements LogoutSuccessHandler {

    @Override
    public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        //从request获取到redirect_uri，进行重定向
        String redirectUri = request.getParameter("redirect_uri");
        if(StringUtils.isNotEmpty(redirectUri)){
            response.sendRedirect(redirectUri);
        }

    }
}
