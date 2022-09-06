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

