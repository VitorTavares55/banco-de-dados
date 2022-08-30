CREATE TABLE cliente(
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nasc DATE NOT NULL,
    cpf NUMERIC(11) NOT NULL UNIQUE,
    telefone NUMERIC(11) NOT NULL,
    email VARCHAR(50) NOT NULL
);

INSERT INTO cliente (nome, data_nasc, cpf, telefone, email) VALUES ('Vitor', '2000-01-01', '11111111111', '44999999999', 'vitor@gmail.com');
INSERT INTO cliente (nome, data_nasc, cpf, telefone, email) VALUES ('Rafael', '2000-02-02', '22222222222', '44888888888', 'rafel@gmail.com');
INSERT INTO cliente (nome, data_nasc, cpf, telefone, email) VALUES ('Léo', '2000-03-03', '33333333333', '44777777777', 'leo@gmail.com');

SELECT * FROM cliente;

CREATE TABLE funcionario(
    id_funcionario INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cpf NUMERIC(11) NOT NULL UNIQUE,
    telefone NUMERIC(11) NOT NULL,
    email VARCHAR(50) NOT NULL,
    cargo VARCHAR(50) NOT NULL    
);

INSERT INTO funcionario (nome, cpf, telefone, email, cargo) VALUES ('José', '44444444444', '44555555555', 'jose@gmail.com', 'Atendente');
INSERT INTO funcionario (nome, cpf, telefone, email, cargo) VALUES ('Mario', '55555555555', '44333333333', 'mario@gmail.com', 'Tratorista');
INSERT INTO funcionario (nome, cpf, telefone, email, cargo) VALUES ('Carlos', '77777777777', '44222222222', 'carlos@gmail.com', 'Operador de pá carregadeira');

SELECT * FROM funcionario;

CREATE TABLE instrumento(
    id_instrumento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    cor VARCHAR(15) NOT NULL,
    fabricante VARCHAR(60) NOT NULL,
    tipo_aplicacao VARCHAR(255) NOT NULL,
    estado BOOLEAN NOT NULL,
    valor_base DECIMAL NOT NULL
);
INSERT INTO instrumento(nome, cor, fabricante, tipo_aplicacao, estado, valor_base) VALUES ('Arado', 'Azul', 'ABC', 'Preparação do solo', TRUE, '100.0'), ('Riscador', 'Vermelho', 'DEF', 'Tratamento do solo', TRUE, '87.00'), ('Grade', 'Vermelho', 'ABC', 'Nivelamento do solo', TRUE, '89.00');

SELECT * FROM instrumento;

CREATE TABLE procedimento(
    id_procedimento INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    tempo_realizacao TIME NOT NULL,
    instrumentos_necessarios VARCHAR(255) NOT NULL,
    valor_base DECIMAL NOT NULL
);