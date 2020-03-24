package com.nb.security.server.auth.mobile;

import java.util.Collection;

import org.springframework.security.authentication.AbstractAuthenticationToken;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.SpringSecurityCoreVersion;

/**
 * 模仿UsernamePasswordAuthenticationToken写的短信登录token
 * ClassName: SmsCodeAuthenticationToken
 * @Description: TODO
 * @author lihaoyang
 * @date 2018年3月7日
 */
public class SmsCodeAuthenticationToken extends AbstractAuthenticationToken {

    private static final long serialVersionUID = SpringSecurityCoreVersion.SERIAL_VERSION_UID;


    //没登陆，放手机号，登录成功，放用户信息
    private final Object principal;



    /**
     * 没登录放手机号
     * <p>Description: </p>
     * @param mobile
     */
    public SmsCodeAuthenticationToken(String mobile) {
        super(null);
        this.principal = mobile;//没登录放手机号
        setAuthenticated(false);//没登录
    }


    public SmsCodeAuthenticationToken(Object principal, /*Object credentials,*/
                                      Collection<? extends GrantedAuthority> authorities) {
        super(authorities);
        this.principal = principal;
        super.setAuthenticated(true); // must use super, as we override
    }

    // ~ Methods
    // ========================================================================================================


    public Object getPrincipal() {
        return this.principal;
    }

    public void setAuthenticated(boolean isAuthenticated) throws IllegalArgumentException {
        if (isAuthenticated) {
            throw new IllegalArgumentException(
                    "Cannot set this token to trusted - use constructor which takes a GrantedAuthority list instead");
        }

        super.setAuthenticated(false);
    }

    @Override
    public void eraseCredentials() {
        super.eraseCredentials();
    }

    @Override
    public Object getCredentials() {
        return null;
    }
}