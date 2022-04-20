package com.imp;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
//使用的Mybatis,扫描com.imp.mapper
@MapperScan("com.imp.dao")
public class SpringsmApplication {

    public static void main(String[] args) {
        SpringApplication.run(SpringsmApplication.class, args);
    }

}
