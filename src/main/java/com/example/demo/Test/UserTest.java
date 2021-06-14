package com.example.demo.Test;


import com.example.demo.entity.User;
import com.example.demo.mapper.UserMapper;
import com.example.demo.service.UserService;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public class UserTest {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserService userService;

    @Test
    public void test1() throws IOException {
//        userMapper.loginUser('1','1');
//        System.out.println(userMapper.loginUser("1","1"));
     //   userMapper.loginUser("1","1");
//        System.out.println(userMapper.findByUserName("1"));
        String resoure =  "config/mybatis-config.xml";
        InputStream inputStream = Resources.getResourceAsStream(resoure);
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession sqlSession = sqlSessionFactory.openSession();
        User user = new User();
        user.setUserName("xxx");
        user.setPassword("123");
        user.setName("xx");
        user.setType("身份证");
        user.setIdNumber("1234567899");
        user.setEmail("1234@qq.com");
        user.setTelephone("15263489");
        List<User> userList =new ArrayList<>();
        userList.add(user);
//        userService.registerUser(user);
       userMapper.registerUser(userList);
        sqlSession.commit();
    }

//    private SqlSession getSqlSession() {
//    }
}
