package com.example.demo.service.Impl;

import com.example.demo.entity.Product;
import com.example.demo.entity.User;

import java.util.List;

public interface ProductServiceImpl {

    //查询所有用户信息
    List<Product> findAll();
    //根据用户名查询记录
    Product findByUserName();

}
