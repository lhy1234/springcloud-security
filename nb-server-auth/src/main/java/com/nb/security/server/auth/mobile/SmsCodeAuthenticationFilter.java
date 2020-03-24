package com.nb.security.server.auth.mobile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AbstractAuthenticationProcessingFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.util.Assert;

/**
 * 模仿UsernamePasswordAuthenticationFilter 写的短信验证码过滤器
 * ClassName: SmsCodeAuthenticationFilter
 * @Description: TODO
 * @author lihaoyang
 * @date 2018年3月8日
 */
public class SmsCodeAuthenticationFilter extends
        AbstractAuthenticationProcessingFilter{

    public static final String IMOOC_FORM_MOBILE_KEY = "mobile";

    private String mobilePatameter = IMOOC_FORM_MOBILE_KEY;
    private boolean postOnly = true;

    // ~ Constructors
    // ===================================================================================================

    public SmsCodeAuthenticationFilter() {
        //过滤的请求url，登录表单的url
        super(new AntPathRequestMatcher(SmsConstants.DEFAULT_LOGIN_PROCESSING_URL_MOBILE, "POST"));
    }

    // ~ Methods
    // ========================================================================================================

    public Authentication attemptAuthentication(HttpServletRequest request,
                                                HttpServletResponse response) throws AuthenticationException {
        if (postOnly && !request.getMethod().equals("POST")) {
            throw new AuthenticationServiceException(
                    "Authentication method not supported: " + request.getMethod());
        }

        String mobile = obtainMobile(request);

        if (mobile == null) {
            mobile = "";
        }


        mobile = mobile.trim();

        SmsCodeAuthenticationToken authRequest = new SmsCodeAuthenticationToken(mobile);

        // Allow subclasses to set the "details" property
        setDetails(request, authRequest);
        //在这里把SmsCodeAuthenticationToken交给AuthenticationManager
        return this.getAuthenticationManager().authenticate(authRequest);
    }

    /**
     * 获取手机号
     * @Description: TODO
     * @param @param request
     * @param @return
     * @return String
     * @throws
     * @author lihaoyang
     * @date 2018年3月7日
     */
    private String obtainMobile(HttpServletRequest request) {
        return request.getParameter(mobilePatameter);
    }

    protected void setDetails(HttpServletRequest request,
                              SmsCodeAuthenticationToken authRequest) {
        authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
    }

    public void setPostOnly(boolean postOnly) {
        this.postOnly = postOnly;
    }



}