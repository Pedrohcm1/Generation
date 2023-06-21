-- creação do banco de dados
CREATE DATABASE db_generation_game_online;

-- utilizando banco de dados
USE db_generation_game_online;

-- criando tabela classes
CREATE TABLE tb_classes(
	id bigint auto_increment primary key,
    tipo varchar(255) not null,
    posicao varchar(255) not null
);

-- inserindo dados na tabela tb_classes
INSERT INTO tb_classes(tipo, posicao)values
("machado", "ataque"),
("espada", "defesa"),
("cavalo", "ataque"),
("arqueiro", "defesa"),
("lança", "defesa");

