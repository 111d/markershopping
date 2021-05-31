package com.example.demo.controller;

import com.example.demo.entity.User;
import com.example.demo.service.UserService;
import com.example.demo.uitls.IDCard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/user")
public class LoginController {

    @Autowired
    private UserService userService;

    /**
     * 注册
     * @param request
     * @return 反馈信息
     */
    @PostMapping("/register")
    public int registerUser(HttpServletRequest request){
//        ModelAndView modelAndView = new ModelAndView();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String name = request.getParameter("name");
        String type = request.getParameter("type");
        String idNumber = request.getParameter("idNumber");
        String email = request.getParameter("email");
        Integer telephone = Integer.valueOf(request.getParameter("telephone"));
        User username1 = userService.findByUserName(username);
        User user1 = new User();
        IDCard idCard = new IDCard();
        int a = 0 ;//返回给前端的值
        if (username == username1.getUserName()) {//判断前端传过来的用户名是否存在与数据库一致
            if(idCard.Verify(idNumber) == true) {//身份证号码校验
                user1.setUserName(username);
                user1.setPassword(password);
                user1.setName(name);
                user1.setType(type);
                user1.setIdNumber(idNumber);
                user1.setEmail(email);
                user1.setTelephone(telephone);
                if (user1 != null) {
                    userService.registerUser(user1);
                    a = 1;//注册成功
                }
            } else {
                a = -1;//注册失败
            }
        } else if(username1 != null){
            a = -2;//用户名存在
        }
        return a;
    }


    /**
     * 登录
     * @param request
     * @return 反馈信息
     */
    @PostMapping("/login")
    public int loginUser(HttpServletRequest request){
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user1 = userService.loginUser(username,password);
        if (user1 == null){
            return -1;//用户名或密码错误返回 -1
        }
        request.getSession().setAttribute("user",user1);
        return 1;//用户名密码正确返回 1
    }


    /**
     * 修改密码
     * @param user
     * @return 反馈信息
     */


    /**
     * 退出登录
     * @param request
     * @return 反馈信息
     */
    @PostMapping("/loginout")
    public int Loginout(HttpServletRequest request){
        request.getSession().setAttribute("user",null);
        return 1;
    }
}