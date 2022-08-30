DROP DATABASE IF EXISTS assistencia_estudantil;
CREATE DATABASE assistencia_estudantil;
USE assistencia_estudantil;

CREATE TABLE assistente(
id_assistente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
siape CHAR(7) NOT NULL,
email VARCHAR(255) NOT NULL UNIQUE,
senha VARCHAR(255) NOT NULL,
ativo CHAR(1) NOT NULL DEFAULT '1'
);

INSERT INTO assistente  (nome, siape, email, senha) VALUES ('Edmar', '1234567', 'edmar@gmail.com', '123'), ('Rodrigo', '1234568', 'rodrigo@gmail.com', '123'), ('Elaine', '1234569', 'elaine@gmail.com', '123');

SELECT * FROM assistente;

CREATE TABLE professor (
id_professor INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
siape CHAR(7) NOT NULL UNIQUE,
materia VARCHAR(255) NOT NULL
);

INSERT INTO professor (nome, cpf, siape, materia) VALUES ('Angela', '12345678910', '1234567', 'Matemática'), ('Dani', '12345678911', '1234568', 'Algoritmos'), ('Camila', '12345678912', '1234569', 'Biologia');

SELECT * FROM professor;

CREATE TABLE aluno(
id_aluno INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
ra CHAR(11) NOT NULL UNIQUE,
turma VARCHAR(255) NOT NULL
);

INSERT INTO aluno (nome, cpf, ra, turma) VALUES ('Tavares', '12345678910', '12345678910', 'Turma1'), ('Rafa', '12345678911', '12345678911', 'Turma2'), ('Carla', '12345678912', '12345678912', 'Turma3');

SELECT * FROM aluno;