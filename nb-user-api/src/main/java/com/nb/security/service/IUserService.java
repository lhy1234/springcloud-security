package com.nb.security.service;

import com.nb.security.entity.User;
import com.baomidou.mybatisplus.extension.service.IService;
import com.nb.security.entity.UserInfo;

/**
 * <p>
 * 服务类
 * </p>
 *
 * @author 李浩洋
 * @since 2019-10-26
 */
public interface IUserService extends IService<User> {


    /**
     * 创建用户
     * @param userInfo
     * @return
     */
    UserInfo create(UserInfo userInfo);

}
