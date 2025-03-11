package com.grownited;

import java.util.Map;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;


@SpringBootApplication
public class MytiffinApplication {

	public static void main(String[] args) {
		SpringApplication.run(MytiffinApplication.class, args);
	}
	
	@Bean
	PasswordEncoder encoded() {
		return new BCryptPasswordEncoder(10);
	}
	

	
	@Bean
	Cloudinary cloudinary() {
		Map config = ObjectUtils.asMap("cloud_name", "dr6bm3ss5", "api_key", "827696593733173",
				"api_secret", "AVS9zHptn0EHLC23YedQt2Zp6ec");
		return new Cloudinary(config);
	}
	
}
