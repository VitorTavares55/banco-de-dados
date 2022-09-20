CREATE TABLE solicitacao_locacao (
	id_solicitacao_locacao INT NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL REFERENCES cliente(id_cliente),
    id_funcionario INT NOT NULL REFERENCES funcionario (id_funcionario)
);

CREATE TABLE locacao (
  	id_solicitacao_locacao INT NOT NULL,
    id_instrumento INT NOT NULL,
    data_locacao DATE NOT NULL,
    horario_devolucao TIME NOT NULL,
    prazo_devolucao DATE NOT NULL,
    valor_final DECIMAL NOT NULL,
    estado VARCHAR(25) NOT NULL,
    CONSTRAINT pk_locacao PRIMARY KEY (id_solicitacao_locacao, id_instrumento),
    CONSTRAINT fk_solicitacao_locacao FOREIGN KEY (id_solicitacao_locacao) REFERENCES solicitacao_locacao (id_solicitacao_locacao),
    CONSTRAINT fk_instrumento FOREIGN KEY (id_instrumento) REFERENCES instrumento(id_instrumento)
);

INSERT INTO procedimento(nome, descricao, tempo_realizacao, instrumentos_necessarios, valor_base) VALUES ('Aração', 'Aração para preparação do solo', '4', 'Arado e trator', '50.0');
INSERT INTO procedimento(nome, descricao, tempo_realizacao, instrumentos_necessarios, valor_base) VALUES ('Gradagem', 'Gradagem para preparação do solo', '3','Grade e trator', '48');
INSERT INTO procedimento(nome, descricao, tempo_realizacao, instrumentos_necessarios, valor_base) VALUES ('Abertura de sulcos', 'Abertura de sulcos em terras já preparadas', '2', 'Riscador e trator', '38');

SELECT * FROM procedimento;

INSERT INTO solicitacao_locacao (id_cliente, id_funcionario) VALUES (1, 1);
INSERT INTO solicitacao_locacao (id_cliente, id_funcionario) VALUES (2, 3);
INSERT INTO solicitacao_locacao (id_cliente, id_funcionario) VALUES (3, 2);

SELECT * FROM solicitacao_locacao;

INSERT INTO locacao(id_solicitacao_locacao, id_instrumento, data_locacao, horario_locacao, prazo_devolucao, valor_final, estado) VALUES ('1', '1', '2022-09-05', '12:00:00', '2022-09-15', '250.0', 'Ativo');
INSERT INTO locacao(id_solicitacao_locacao, id_instrumento, data_locacao, horario_locacao, prazo_devolucao, valor_final, estado) VALUES ('2', '2', '2022-05-09', '08:50:32', '2022-06-01', '300.0', 'Quitado');
INSERT INTO locacao(id_solicitacao_locacao, id_instrumento, data_locacao, horario_locacao, prazo_devolucao, valor_final, estado) VALUES ('3', '3', '2022-08-12', '12:00:00', '2022-08-20', '250.0', 'Quitado');

SELECT * FROM locacao;
