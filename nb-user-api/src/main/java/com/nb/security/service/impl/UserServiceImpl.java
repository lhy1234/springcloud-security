package com.nb.security.service.impl;

import com.nb.security.entity.User;
import com.nb.security.mapper.UserMapper;
import com.nb.security.service.IUserService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
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

}
