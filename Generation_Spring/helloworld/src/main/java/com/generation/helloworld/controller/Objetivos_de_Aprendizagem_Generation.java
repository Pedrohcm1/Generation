package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/aprendizagem")
public class Objetivos_de_Aprendizagem_Generation {
	
	@GetMapping
	public String aprendizagem() {
		return "MySQL "
				+ "SpringBoot";
	}

}
