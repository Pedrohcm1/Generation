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

-- criando tabela personagens
CREATE TABLE tb_personagens(
	id bigint auto_increment primary key,
    nome varchar(255) not null,
    quantidade bigint not null,
    direcao	varchar(255),
    poder bigint
);

-- adicionando a coluna personagem a tabela classes
alter table tb_classes add personagem_id bigint;

-- adicionando a tabela personagens a personagens id com a chave estrangeira
 
alter table tb_classes add constraint fk_personagens_classes
foreign key (personagem_id) references tb_personagens(id);

-- inserindo dados na tabela tb_classes
INSERT INTO tb_classes(tipo, posicao)values
("machado", "ataque"),
("espada", "defesa"),
("cavalo", "ataque"),
("arqueiro", "defesa"),
("lança", "defesa");		

-- inserindo dados na tabela tb_personagens
INSERT INTO tb_personagens(nome, quantidade, direcao, poder)values
("anão", 3000, "norte", 30000),
("humanos", 1000, "sul", 10000),
("elfos", 5000, "leste", 50000),
("barbaros", 6000, "oeste", 60000),
("magos", 1000, "norte", 10000),
("trol", 9000, "sul", 90000),
("goblin", 8000, "leste", 80000),
("cavalaria", 2000, "oeste", 20000);

-- select dos personagens com poder maior que 2000
select*from tb_personagens where poder > 2000;

-- select dos personagens com poder maior que 1000 e menor que 2000
select*from tb_personagens where poder > 1000 and poder < 2000;

-- select dos personagens com c no nome
select*from tb_personagens where nome like '%c%';

-- select utilizando inner join
select nome, quantidade, direcao, poder from tb_personagens
inner join tb_classes on tb_classes.id = tb_classes.personagem_id;	



