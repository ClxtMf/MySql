CREATE DATABASE empresa;

USE empresa;

CREATE TABLE funcionarios(
matricula INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
setor VARCHAR(15),
salario FLOAT(7,2)
);

INSERT INTO funcionarios (nome, setor, salario)
VALUES ('Fernanda', 'Desenvolvimento', 3600);

-- SETORES POSSIVEIS:
-- Desenvolvimento
-- teste 
-- qualidade 
-- Produção 
-- Estagiario 



SELECT * FROM funcionarios;


UPDATE funcionarios SET 
nome = 'Fernanda Moraes', 
setor = 'Qualidade', salario = 3500 + 200
WHERE matricula = 1;

-- 4 funcionarios (2 setor teste, 2 setor produção) 

INSERT INTO funcionarios (nome, setor, salario) 
VALUES ('Guilherme', 'Qualidade', 1700),
('Paula Lima', 'Produção', 5500),
('Humberto', 'Teste', 1550),
('Alex', 'Estagiario', 870);

SELECT * FROM funcionarios;

 DELETE FROM funcionarios 
 WHERE matricula = 1;

DELETE FROM funcionarios 
WHERE setor = 'Produção';

SELECT * FROM funcionarios;

-- Apagar todos os funcionários com 
-- salário abaixo de 2800

DELETE FROM funcionarios 
WHERE salario < 2800;

-- inserir funcionario do setor 'estagio'

INSERT INTO funcionarios (nome, setor, salario)
VALUES ('Fernanda', 'Estagiario', 1100);

DELETE FROM funcionarios WHERE matricula = 6;

ALTER TABLE funcionarios auto_increment = 1;

SELECT * FROM funcionarios
WHERE setor = 'Estagiario';

SELECT nome, setor FROM funcionarios;




SELECT * FROM funcionarios WHERE salario > 3000;


SELECT * FROM funcionarios WHERE salario < 3000;

SELECT * FROM funcionarios WHERE setor = 'Qualidade';

-- ORDER BY ordena uma coluna ascedenten ou decrescente
SELECT * FROM funcionarios ORDER BY nome ASC;

SELECT * FROM funcionarios ORDER BY nome DESC;


-- todos os funcionarios que tenham E em
-- qualquer parte do texto
SELECT * FROM funcionarios 
WHERE nome like '%e%';



-- Funcionarios que começam com a letra A
SELECT * FROM funcionarios 
WHERE nome LIKE 'a%';

SELECT * FROM funcionarios;

-- todos os funcionarios que terminam com A
SELECT * FROM funcionarios 
WHERE nome like '%a';
