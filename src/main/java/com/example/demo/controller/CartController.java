package com.example.demo.controller;

import com.example.demo.entity.Cart;
import com.example.demo.entity.User;
import com.example.demo.service.CartService;
import com.example.demo.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("/user/cart")
public class CartController {

    @Autowired
    private CartService cartService;


    @Autowired
    private UserService userService;


    //用户查询购物车商品
    public List selectCart(HttpServletRequest request) throws Exception{
        request.setCharacterEncoding("UTF-8");
        String username = request.getParameter("username");
        User username1 = userService.findByUserName(username);
        List<Cart> cartList = cartService.findByUserId(username1.getId());
        if (cartList != null){
            return cartList;
        }else {
            return null;
        }
    }
}
