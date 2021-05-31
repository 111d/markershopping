package com.example.demo.service;

import com.example.demo.entity.User;
import com.example.demo.mapper.UserMapper;
import com.example.demo.service.Impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserService implements UserServiceImpl {
    @Autowired
    private UserMapper userMapper;

    @Override
    public List<User> findAll() {
        return null;
    }

    @Override
    public User findByUserName(String userName) {
        return userMapper.findByUserName(userName);
    }

    public User loginUser(String username,String password){
        return  userMapper.loginUser(username,password);
    }

    @Override
    public void registerUser(User user) {//注册
        List<User> userList = new ArrayList<>();
        userList.add(user);
        userMapper.registerUser(userList);
    }

    @Override
    public void updateUserPassword(User user) {

    }

}
