package com.example.demo.mapper;

import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
@Repository
public interface UserMapper {

    //查询所有用户信息
    List<User> findAll();
    //根据用户名查询记录
    User findByUserName(@RequestParam("username") String username);
    //登录用户
    User loginUser(@RequestParam("username") String username,@RequestParam("password") String password);
    //注册用户
    void registerUser(@Param("list") List<User> list);
    //修改用户密码
    void updateUserPassword(User user);
}
