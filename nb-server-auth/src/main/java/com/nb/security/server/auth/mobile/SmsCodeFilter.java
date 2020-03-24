//package com.nb.security.server.auth.mobile;
//
//
//import java.io.IOException;
//import java.util.HashSet;
//import java.util.Set;
//
//import javax.servlet.FilterChain;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.apache.commons.lang3.StringUtils;
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.beans.factory.InitializingBean;
//import org.springframework.boot.autoconfigure.security.SecurityProperties;
//import org.springframework.security.web.authentication.AuthenticationFailureHandler;
//import org.springframework.util.AntPathMatcher;
//import org.springframework.web.bind.ServletRequestBindingException;
//import org.springframework.web.bind.ServletRequestUtils;
//import org.springframework.web.context.request.ServletWebRequest;
//import org.springframework.web.filter.OncePerRequestFilter;
//
///**
// * Created by: 李浩洋 on 2020-03-24
// **/
//public class SmsCodeFilter extends OncePerRequestFilter implements InitializingBean{
//
//    private Logger logger = LoggerFactory.getLogger(getClass());
//
//    //认证失败处理器
//    private AuthenticationFailureHandler authenticationFailureHandler;
//
//
//
//
//    //需要拦截的url集合
//    private static Set<String> urls = new HashSet<>();
//
//    static{
//        urls.add("");
//    }
//
//    //读取配置
//    private SecurityProperties securityProperties;
//    //spring工具类
//    private AntPathMatcher antPathMatcher = new AntPathMatcher();
//
//    /**
//     * 重写InitializingBean的方法，设置需要拦截的urls
//     */
//    @Override
//    public void afterPropertiesSet() throws ServletException {
//        super.afterPropertiesSet();
//        //读取配置的拦截的urls
//        String[] configUrls = StringUtils.splitByWholeSeparatorPreserveAllTokens(securityProperties.getCode().getSms().getUrl(), ",");
//        //如果配置了需要验证码拦截的url，不判断，如果没有配置会空指针
//        if(configUrls != null && configUrls.length > 0){
//            for (String configUrl : configUrls) {
//                logger.info("ValidateCodeFilter.afterPropertiesSet()--->配置了验证码拦截接口:"+configUrl);
//                urls.add(configUrl);
//            }
//        }else{
//            logger.info("----->没有配置拦验证码拦截接口<-------");
//        }
//        //短信验证码登录一定拦截
//        urls.add(SmsConstants.DEFAULT_LOGIN_PROCESSING_URL_MOBILE);
//    }
//
//    @Override
//    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
//            throws ServletException, IOException {
//        //如果是 登录请求 则执行
//        if(StringUtils.equals(SmsConstants.DEFAULT_LOGIN_PROCESSING_URL_MOBILE, request.getRequestURI())
//                &&StringUtils.equalsIgnoreCase(request.getMethod(), "post")){
//            try {
//                validate(new ServletWebRequest(request));
//            } catch (Exception e) {
//                //调用错误处理器，最终调用自己的
//                authenticationFailureHandler.onAuthenticationFailure(request, response, e);
//                return ;//结束方法，不再调用过滤器链
//            }
//        }
//
//
//
//        //不是登录请求，调用其它过滤器链
//        filterChain.doFilter(request, response);
//    }
//
//    /**
//     * 校验验证码
//     * @Description: 校验验证码
//     * @param @param request
//     * @param @throws ServletRequestBindingException
//     * @return void
//     * @throws
//     * @author lihaoyang
//     * @date 2018年3月2日
//     */
//    private void validate(ServletWebRequest request) throws ServletRequestBindingException {
//        //拿出session中的ImageCode对象
//        ValidateCode smsCodeInSession = (ValidateCode) sessionStrategy.getAttribute(request, ValidateCodeController.SESSION_KEY_SMS);
//        //拿出请求中的验证码
//        String imageCodeInRequest = ServletRequestUtils.getStringParameter(request.getRequest(), "smsCode");
//        //校验
//        if(StringUtils.isBlank(imageCodeInRequest)){
//            throw new ValidateCodeException("验证码不能为空");
//        }
//        if(smsCodeInSession == null){
//            throw new ValidateCodeException("验证码不存在，请刷新验证码");
//        }
//        if(smsCodeInSession.isExpired()){
//            //从session移除过期的验证码
//            sessionStrategy.removeAttribute(request, ValidateCodeController.SESSION_KEY_SMS);
//            throw new ValidateCodeException("验证码已过期，请刷新验证码");
//        }
//        if(!StringUtils.equalsIgnoreCase(smsCodeInSession.getCode(), imageCodeInRequest)){
//            throw new ValidateCodeException("验证码错误");
//        }
//        //验证通过，移除session中验证码
//
//    }
//
//    public AuthenticationFailureHandler getAuthenticationFailureHandler() {
//        return authenticationFailureHandler;
//    }
//
//    public void setAuthenticationFailureHandler(AuthenticationFailureHandler authenticationFailureHandler) {
//        this.authenticationFailureHandler = authenticationFailureHandler;
//    }
//
//    public SecurityProperties getSecurityProperties() {
//        return securityProperties;
//    }
//
//    public void setSecurityProperties(SecurityProperties securityProperties) {
//        this.securityProperties = securityProperties;
//    }
//}
