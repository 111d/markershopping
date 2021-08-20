package com.example.demo.service.Impl;

import com.example.demo.entity.Cart;

import java.util.List;

public interface CartServiceImpl {

    List<Cart> findAll();

    List<Cart> findByUserId(Integer userId);
}
