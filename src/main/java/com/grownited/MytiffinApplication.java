package com.grownited;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@SpringBootApplication
public class MytiffinApplication {

	public static void main(String[] args) {
		SpringApplication.run(MytiffinApplication.class, args);
	}
	
	@Bean
	PasswordEncoder encoded() {
		return new BCryptPasswordEncoder(10);
	}
	

}
