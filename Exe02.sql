CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar(255) not null,
tamanho varchar(255) not null,
primary key(id)
);

CREATE TABLE tb_pizzas (
id bigint auto_increment,
sabor varchar(255) not null,
preco decimal (6,2) not null,
cliente varchar(255) not null,
telefone varchar(255) not null,
primary key (id)
);

ALTER TABLE tb_pizzas ADD categoria_id bigint;

ALTER TABLE tb_pizzas ADD CONSTRAINT fk_categoras_pizzas
FOREIGN KEY (categoria_id) REFERENCES tb_pizzas (id);

INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce", "Broto");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Doce", "Grande");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada", "Broto");
INSERT INTO tb_categorias (tipo, tamanho) VALUES ("Salgada","Grande");

SELECT * FROM tb_categorias;

INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Marguerita",  60.00, "Luan", "11 91254-5545", 1);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Brócolis",  70.00, "Flávia", "11 91035-0301", 2);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Moda da Casa",  100.00, "Geovana", "11 91254-5545", 3);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Quatro queijos",  90.00, "Aurora", "11 95289-7496", 4);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Marguerita",  60.00, "Luisa", "11 92539-5896", 5);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Bócolis",  70.00, "Marisa", "11 98597-5877", 6);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Baiana",  70.00, "Luis", "11 95266-8899", 7);
INSERT INTO tb_pizzas (sabor, preco, cliente, telefone, categoria_id) VALUES ("Marguerita",  60.00, "Patrícia", "11 94569-5877", 8);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabor LIKE '%m%';


SELECT sabor, preco, cliente, telefone FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id = tb_pizzas.categorias_id;

SELECT sabor, preco, cliente, telefone FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id = tb_pizzas.categorias_id WHERE tipo = 'salgada';
