package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import com.example.demo.uitls.IDCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;

@RestController
@RequestMapping("/user")
public class LoginController {

    @Autowired
    private UserService userService;

    /**
     * 注册
     * @return 反馈信息
     */
    @PostMapping("/register")
    public int registerUser(HttpServletRequest request) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String idNumber = request.getParameter("idNumber");
        String email = request.getParameter("email");
        String telephone = request.getParameter("telephone");
        User username1 = userService.findByUserName(username);
        User user1 = new User();
        IDCard idCard = new IDCard();
        int a;//返回给前端的值
        if (username1 == null) {//判断前端传过来的用户名是否存在与数据库一致
            if(idCard.Verify(idNumber)) {//身份证号码校验
                user1.setUserName(username);
                user1.setPassword(password);
                user1.setName(name);
                user1.setType(type);
                user1.setIdNumber(idNumber);
                user1.setEmail(email);
                user1.setTelephone(telephone);
                userService.registerUser(user1);
                a = 1;//注册成功
            } else {
                a = -1;//注册失败
            }
        } else{
            a = -2;//用户名存在
        }
        return a;
    }


    /**
     * 登录
     * @return 反馈信息
     */
    @PostMapping("/login")
    public int loginUser(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user1 = userService.loginUser(username,password);
        if (user1 == null){
//            //创建session对象
//            HttpSession session = request.getSession();
//            //把用户数据保存在session域对象
//            session.setAttribute("userName",username);
            return -1;//用户名或密码错误返回 -1
        }
        request.getSession().setAttribute("user",user1); //把用户数据保存在session域对象
        return 1;//用户名密码正确返回 1
    }


    /**
     * 修改密码
     * @return 反馈信息
     */
    @PostMapping("/update")
    public int updateUser(){
        return 1;
    }


    /**
     * 退出登录
     * @return 反馈信息
     */
    @PostMapping("/loginout")
    public int Loginout(HttpServletRequest request){
        request.getSession().setAttribute("user",null);
        return 1;
    }
}
