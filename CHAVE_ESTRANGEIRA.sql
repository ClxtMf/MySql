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



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


USE escola;

CREATE TABLE cursos(
  idCurso INT PRIMARY KEY AUTO_INCREMENT,
  NomeCurso VARCHAR(20) NOT NULL
);

CREATE TABLE alunos(
  matricula INT PRIMARY KEY AUTO_INCREMENT,
  NomeAluno VARCHAR(45),
  idade INT(2),
  fk_curso INT,
  nota FLOAT(4,2),
  FOREIGN KEY (fk_curso) REFERENCES cursos (idCurso)
);

INSERT INTO cursos (NomeCurso) VALUES ('Dev Full Stack'),
('Data Science'),('Fotografia'),('Desing');

INSERT INTO alunos (NomeAluno, idade, fk_curso, nota) VALUES ('Paola Maria', 17, 1, 6.46),
('João Cleber', 18, 2, 5.65),('Elizabete Joana', 19, 3, 8.77),('Maria Quebrada', 39, 4, 9.90),
('Pipoqueiro', 45, 2, 3.54),('Manoela', 67, 1, 8.78),('Fernanda', 34, 3, 3.90),('Miguel', 56, 4, 6.89),
('Joana', 28, 4, 4.90),('Francisco', 25, 1, 7.89);

SELECT * FROM cursos;

SELECT * FROM alunos;

SELECT matricula, NomeAluno,
idade, nota, NomeCurso 
FROM alunos 
INNER JOIN cursos 
ON alunos.fk_curso = cursos.idcurso;
