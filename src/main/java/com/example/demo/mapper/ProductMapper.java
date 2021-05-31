package com.example.demo.mapper;

import com.example.demo.entity.Product;
import com.example.demo.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
@Repository
public interface ProductMapper {

    //查询所有产品信息
    List<Product> findAll();
    //根据产品关键字查询记录
    Product findByProduct();

}
