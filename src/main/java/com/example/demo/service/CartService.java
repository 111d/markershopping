package com.example.demo.service;

import com.example.demo.entity.Cart;
import com.example.demo.mapper.CartMapper;
import com.example.demo.service.Impl.CartServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartService implements CartServiceImpl {

    @Autowired
    private CartMapper cartMapper;

    @Override
    public List<Cart> findAll() {
        return cartMapper.findAll();
    }

    @Override
    public List<Cart> findByUserId(Integer userId) {
        return cartMapper.findByUserId(userId);
    }
}
