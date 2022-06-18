CREATE DATABASE escola
----------------------
USE escola;

CREATE TABLE professores(
-- nome da coluna tipo da coluna atributos
matricula INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
salario FLOAT(8,2) NOT NULL
);

-- Criar uma tabela de alunos
-- matricula (chave primária, auto incremento)
-- nome
-- idade
-- nota
-- curso

CREATE TABLE alunos(
matricula INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
idade INT(2) NOT NULL,
nota FLOAT(3,1) NOT NULL,
curso VARCHAR(20) NOT NULL
);

ALTER TABLE professores  ADD COLUMN pis VARCHAR(15) NOT NULL;
ALTER TABLE professores ADD COLUMN formacao_academica VARCHAR(20);
ALTER TABLE professores ADD COLUMN (curso VARCHAR(10), qtd_alunos INT);

ALTER TABLE professores DROP COLUMN curso;
-- Só pode dropar um po um.

ALTER TABLE professores MODIFY COLUMN nome VARCHAR(50) NOT NULL;

ALTER TABLE professores RENAME COLUMN nomes TO nome;
ALTER TABLE professores RENAME COLUMN matriculas TO matricula;

ALTER TABLE alunos RENAME COLUMN nome TO nomes; 
