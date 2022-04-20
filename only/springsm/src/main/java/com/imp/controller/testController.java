package com.imp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @Author: Improvised
 * @Description:
 * @Date Created in 2022-03-30 1:23
 * @Modified By:
 */
@Controller
public class testController {

    @RequestMapping("/test")
    public String success(){

        System.out.println("进来");
        return "success";
    }
}
