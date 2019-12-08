package com.nb.security.service.impl;

import com.nb.security.entity.User;
import com.nb.security.entity.UserInfo;
import com.nb.security.mapper.UserMapper;
import com.nb.security.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 服务实现类
 * </p>
 *
 * @author 李浩洋
 * @since 2019-10-26
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public UserInfo create(UserInfo userInfo) {
        User user = new User();
        //属性复制
        BeanUtils.copyProperties(userInfo,user);
        userMapper.insert(user);
        userInfo.setId(user.getId());
        return userInfo;
    }
}
