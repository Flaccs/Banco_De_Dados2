CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
id bigint auto_increment,
jogo varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);

CREATE TABLE tb_personagens (
id bigint auto_increment,
nome varchar(255) not null,
poder varchar (255) not null,
ataque varchar(255) not null,
defesa varchar(255) not null,
primary key (id)
);

ALTER TABLE tb_personagens ADD categoria_id bigint;

ALTER TABLE tb_classes ADD CONSTRAINT fk_classes_personagens
FOREIGN KEY (categoria_id) REFERENCES tb_personagens (id);

INSERT INTO tb_classes (jogo, descricao) VALUES ("Mario", "Aventura");
INSERT INTO tb_classes (jogo, descricao) VALUES ("Fifa", "Futebol");
INSERT INTO tb_classes (jogo, descricao) VALUES ("PES", "Futebol");
INSERT INTO tb_classes (jogo, descricao) VALUES ("God of War", "Aventura");
INSERT INTO tb_classes (jogo, descricao) VALUES ("Street Fighter", "Luta");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Mario",  "Martelo Poderoso", "9000", "8000", 1);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Luigi",  "Voar", "7000", "6000", 2);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Yoshi Amarelo",  "Terremotos", "5000", "4000", 3);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Yoshi Azul","Voar", "5000", "4000", 4);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Yoshi Vermelho", "Cuspir fogo", "5000", "4000", 5);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Peach",  "Transfromação", "7000", "6000", 6);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Bowser",  "Força", "8000", "7000", 7);
INSERT INTO tb_personagens (nome, poder, ataque, defesa, categoria_id) VALUES ("Lumalee",  "Iluminar", "2000", "1000", 8);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE ataque > 2000;

SELECT * FROM tb_personagens WHERE ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';


-- arrumar esses dois últimos

SELECT nome, poder, ataque, defesa FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id = tb_personagens.categoria_id;

SELECT nome, poder, ataque, defesa FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id = tb_personagens.categoria_id WHERE poder = 'voar';
