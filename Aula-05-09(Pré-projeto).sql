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

CREATE TABLE tecnico(
id_tecnico INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cpf CHAR(11) NOT NULL UNIQUE,
siape CHAR(7) NOT NULL UNIQUE,
area VARCHAR(255) NOT NULL
);

INSERT INTO tecnico (nome, cpf, siape, area) VALUES ('Angélica', '12345678913', '1234510', 'Informática'), ('Flávio', '12345678915', '1234685', 'Informática'), ('Bruno', '12345678919', '1234257', 'Química');

SELECT * FROM tecnico;

CREATE TABLE emprestimo(
id_emprestimo INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
data_emprestimo DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
id_assistente INT NOT NULL,
id_professor INT,
id_aluno INT,
id_tecnico INT,
CONSTRAINT id_assistente_fk FOREIGN KEY (id_assistente) REFERENCES assistente(id_assistente),
CONSTRAINT id_professor_fk FOREIGN KEY (id_professor) REFERENCES professor(id_professor),
CONSTRAINT id_aluno_fk FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
CONSTRAINT id_tecnico_fk FOREIGN KEY (id_tecnico) REFERENCES tecnico(id_tecnico),
CONSTRAINT oa CHECK(id_professor IS NOT NULL OR id_aluno IS NOT NULL OR id_tecnico IS NOT NULL)
);

INSERT INTO emprestimo (id_assistente, id_professor) VALUES (1, 1);
INSERT INTO emprestimo (id_assistente, id_aluno) VALUES (2, 2);
INSERT INTO emprestimo (id_assistente, id_tecnico) VALUES (3, 3);

SELECT * FROM emprestimo;

CREATE TABLE penalidade(
id_penalidade INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
tempo INT NOT NULL,
valor DOUBLE NOT NULL,
id_emprestimo INT NOT NULL,
CONSTRAINT id_emprestimo_fk FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo)
);

INSERT INTO penalidade (tipo, tempo, valor, id_emprestimo) VALUES ('Retenção', 7, 0.0, 1), ('Retenção', 14, 0.0, 2), ('Resarcimento', 7, 150.0, 3);

SELECT * FROM penalidade;
