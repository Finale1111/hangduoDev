package com.hangduo.dev1;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.hangduo.dev1.dao")
public class Dev1Application {

    public static void main(String[] args) {
        SpringApplication.run(Dev1Application.class, args);
    }

}

