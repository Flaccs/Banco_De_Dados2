CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar(255) not null,
quantidade decimal (6,2) not null,
primary key(id)
);

CREATE TABLE tb_produtos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
cliente varchar(255) not null,
telefone varchar(255) not null,
primary key (id)
);

ALTER TABLE tb_produtos ADD categoria_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_categorias_produtos
FOREIGN KEY (categoria_id) REFERENCES tb_produtos (id);

INSERT INTO tb_categorias (tipo, quantidade) VALUES ("Carne Vermelha", 2.0);
INSERT INTO tb_categorias (tipo, quantidade) VALUES ("Carne Branca", 2.5);
INSERT INTO tb_categorias (tipo, quantidade) VALUES ("Ovos", 5.0);
INSERT INTO tb_categorias (tipo, quantidade) VALUES ("Temperos", 4.0);
INSERT INTO tb_categorias (tipo, quantidade) VALUES ("Linguiça", 3.0);

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Contra-Filé",  40.00, "Luan", "11 91254-5545", 1);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Peito de Franfo",  25.00, "Flávia", "11 91035-0301", 2);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Dúzia Ovos",  15.00, "Geovana", "11 91254-5545", 3);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Orégano",  10.00, "Aurora", "11 95289-7496", 4);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Linguíca Seca",  16.00, "Luisa", "11 92539-5896", 5);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Óleo",  09.00, "Marisa", "11 98597-5877", 6);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Alho",  05.00, "Luis", "11 95266-8899", 7);
INSERT INTO tb_produtos (nome, preco, cliente, telefone, categoria_id) VALUES ("Picanha",  60.00, "Patrícia", "11 94569-5877", 8);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;	

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%c%';

SELECT nome, preco, cliente, telefone FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id = tb_produtos.categorias_id;

SELECT nome, preco, cliente, telefone FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id = tb_produtos.categorias_id WHERE tipo = 'Temperos';
