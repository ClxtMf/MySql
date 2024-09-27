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
