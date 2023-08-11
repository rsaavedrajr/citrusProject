package com.SpringBoot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;


/** This class is our actual SpringApplication file
* 
* @class
*/
@SpringBootApplication
@EntityScan(basePackages = "com.Entity")
@EnableJpaRepositories(basePackages = "com.Repository")
@ComponentScan({"com.Service", "com.Controller", "com.SpringBoot"})
public class DemoApplication {

	/**  The main method of our application
	* 
	* @param args A List of arguments
	*/
	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
		
	}

}