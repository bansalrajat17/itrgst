package com.itrgst;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.ServletComponentScan;

@ServletComponentScan
@SpringBootApplication
public class ItrGstApplication {
	public static void main(String[] args) {
		SpringApplication.run(ItrGstApplication.class, args);
	}
}


