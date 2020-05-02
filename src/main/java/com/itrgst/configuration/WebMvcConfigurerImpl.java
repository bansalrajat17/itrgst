package com.itrgst.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
@EnableWebMvc
public class WebMvcConfigurerImpl implements WebMvcConfigurer{

    @Override
    public void addCorsMappings(CorsRegistry corsRegistry) {
        //CORS(CROSS O)
        corsRegistry.addMapping("/**");
        WebMvcConfigurer.super.addCorsMappings(corsRegistry);
    }

}