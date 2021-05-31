package com.example.demo.service.Impl;

import com.example.demo.entity.User;

import java.util.List;

public interface UserServiceImpl {

    //查询所有用户信息
    List<User> findAll();
    //根据用户名查询记录
    User findByUserName(String userName);
    //登录用户
    User loginUser(String username,String password);
    //注册用户
    void registerUser(User user);
    //修改用户密码
    void updateUserPassword(User user);
}
