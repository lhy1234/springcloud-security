package com.nb.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.nb.security.entity.User;
import com.nb.security.entity.UserInfo;
import com.nb.security.mapper.UserMapper;
import com.nb.security.service.IUserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {


    @Autowired
    private IUserService userService;

    @Autowired
    private UserMapper userMapper;

    @PostMapping
    public UserInfo create(@RequestBody @Validated UserInfo info) {
        return userService.create(info);
    }


    @PutMapping("/{id}")
    public User update(@RequestBody User user) {
        return user;
    }


    @DeleteMapping("/{id}")
    public void delete(@PathVariable Long id) {


    }

    @GetMapping("/{id}")
    public User get(@PathVariable Long id, HttpServletRequest request) {
        User user = (User) request.getAttribute("user");
        if (user == null || user.getId() != id) {
            throw new RuntimeException("身份认证异常！");
        }
        System.err.println("Controller  getUser,id="+id);
        return userService.getById(id);
    }

    @GetMapping
    public List<User> list(String username) {
        List<User> list = userService.list(new QueryWrapper<User>().eq("username", username));
        return list;
    }

    @GetMapping("/findByUsername")
    public List<User> findByUsername(String username) {
        List<User> list = userMapper.findByUsername(username);
        return list;
    }


}
