package com.nb.security.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
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


    @Override
    public UserInfo login(UserInfo info) {
        User user = userMapper.selectOne(new QueryWrapper<User>().eq("username",info.getUsername()).eq("password",info.getPassword()));
        if(user != null){
            BeanUtils.copyProperties(user,info);
            return info;
        }
        return null;
    }
}
