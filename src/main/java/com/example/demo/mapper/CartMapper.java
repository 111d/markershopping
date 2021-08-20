package com.example.demo.mapper;

import com.example.demo.entity.Cart;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface CartMapper {


    List<Cart> findAll();

    //根据用户id获取对应的购物车商品
    List<Cart> findByUserId(@Param("userId") Integer userId);

}
