CREATE DATABASE auditora;

USE auditora;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(25)
);


CREATE TABLE livro(
	id_livro INT PRIMARY KEY AUTO_INCREMENT,
    nome_livro VARCHAR(30),
    fk_autor INT,
    FOREIGN KEY (fk_autor) REFERENCES autor(id)
);


ALTER TABLE livro AUTO_INCREMENT = 50;


INSERT INTO autor (nome) VALUES ('Paola Joséfina'),
('Reinaldo'), ('Felipe Agnaldo'), ('Antonia'), ('João');

INSERT INTO livro (nome_livro, fk_autor) VALUES ('Algoritmos', 5),
('BD', 1), ('Python', 3), ('C#', NULL), ('Java', 2);

SELECT * FROM livro;

SELECT * FROM autor;

-- uma cláusula que permite a junção entre duas ou mais tabelas
SELECT nome_livro, nome FROM livro
INNER JOIN autor
ON livro.fk_autor = autor.id;

-- Trás todos os dados da esquerda
SELECT nome_livro, nome FROM livro
LEFT JOIN autor
ON livro.fk_autor = autor.id;

-- Trás todos os dados da direita
SELECT nome_livro, nome FROM livro
RIGHT JOIN autor
ON livro.fk_autor = autor.id;

-- Sem suporte
SELECT nome_livro, nome FROM livro
FULL JOIN autor
ON livro.fk_autor = autor.id;



-- Gambiarra do full join
SELECT nome_livro, nome FROM livro
LEFT JOIN autor
ON livro.fk_autor = autor.id

UNION

SELECT nome_livro, nome FROM livro
RIGHT JOIN autor
ON livro.fk_autor = autor.id;
