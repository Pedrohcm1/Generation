package com.generation.helloworld.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/lista-bsm")
public class Lista_BSM_Generation {
	
	@GetMapping
	public String listabsm() {
		return 	"Comunicação "
				+ "Mentalidade de Crescimento "
				+ "Orientação ao Detalhe "
				+ "Orientação ao Futuro "
				+ "Persistencia "
				+ "Proatividade "
				+ "Responsabilidade Pessoal "
				+ "Trabalho em Equipe";
	}

}
