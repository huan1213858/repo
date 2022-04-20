package com.imp.config;

import com.imp.interceptor.SessionInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.web.embedded.tomcat.TomcatServletWebServerFactory;
import org.springframework.boot.web.servlet.server.ConfigurableServletWebServerFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


import java.io.File;

/**
 * @Author: Improvised
 * @Description:
 * @Date Created in 2022-04-09 21:00
 * @Modified By:
 */
@Configuration
public class TomcatConfig implements WebMvcConfigurer {

    @Bean
    public ConfigurableServletWebServerFactory configurableServletWebServerFactory() {
        TomcatServletWebServerFactory factory = new TomcatServletWebServerFactory();
        factory.setDocumentRoot(new File("D:\\lagou\\IDEA\\sglsmk\\src\\main\\webapp"));
        return factory;
    }

    @Autowired
    private SessionInterceptor sessionInterceptor;
    @Override
    public void addInterceptors(InterceptorRegistry registry) {



        String[] path = {"/**"};
        String[] excludePath = {"/login"};
        //在拦截器的注册对象中拦截器注册进来,然后加入拦截器需要拦截的路径，也可以加入不拦截的路径
        registry.addInterceptor(sessionInterceptor).addPathPatterns(path).excludePathPatterns(excludePath);
    }
}
