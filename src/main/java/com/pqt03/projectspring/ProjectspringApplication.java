package com.pqt03.projectspring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

//@SpringBootApplication
@SpringBootApplication(exclude =
		org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class ProjectspringApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProjectspringApplication.class, args);
	}

}
