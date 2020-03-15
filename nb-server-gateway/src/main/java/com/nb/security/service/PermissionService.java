package com.nb.security.service;

import org.springframework.security.core.Authentication;

import javax.servlet.http.HttpServletRequest;

/**
 * 自定义权限访问规则
 */
public interface PermissionService {
    /**
     * 是否有权访问
     * @param request 当前请求
     * @param authentication 当前用户
     * @return true:有权限 false:无权限
     */
    boolean hasPermission(HttpServletRequest request, Authentication authentication);
}
