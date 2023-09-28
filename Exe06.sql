CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id bigint auto_increment,
tipo varchar(255) not null,
descricao varchar(255) not null,
primary key(id)
);

CREATE TABLE tb_cursos (
id bigint auto_increment,
nome varchar(255) not null,
preco decimal (6,2) not null,
cliente varchar(255) not null,
telefone varchar(255) not null,
primary key (id)
);

ALTER TABLE tb_cursos ADD categoria_id bigint;

ALTER TABLE tb_cursos ADD CONSTRAINT fk_categorias_cursos
FOREIGN KEY (categoria_id) REFERENCES tb_cursos (id);

INSERT INTO tb_categorias (tipo, descricao) VALUES ("Idiomas", "Todos os idiomas");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Saúde", "Todos os cursos");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Engenharia","Todos os cursos");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Artes", "Todos os cursos");
INSERT INTO tb_categorias (tipo, descricao) VALUES ("Estética", "Todos os cursos");

SELECT * FROM tb_categorias;

INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Inglês",  350.00, "Luan", "11 91254-5545", 1);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Enfermagem",  500.00, "Flávia", "11 91035-0301", 2);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Engenharia Civil",  900.00, "Geovana", "11 91254-5545", 3);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Dança",  150.00, "Aurora", "11 95289-7496", 4);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Canto",  200.00, "Luisa", "11 92539-5896", 5);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Massagem",  450.00, "Marisa", "11 98597-5877", 6);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Farmácia",  650.00, "Luis", "11 95266-8899", 7);
INSERT INTO tb_cursos (nome, preco, cliente, telefone, categoria_id) VALUES ("Piano",  350.00, "Patrícia", "11 94569-5877", 8);

SELECT * FROM tb_cursos;


SELECT * FROM tb_cursos WHERE preco > 500.00;	

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%j%';

SELECT nome, preco, cliente, telefone FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id = tb_cursos.categorias_id;

SELECT nome, preco, cliente, telefone FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id = tb_cursos.categorias_id WHERE tipo = 'Idiomas';
