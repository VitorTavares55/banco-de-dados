CREATE DATABASE servicos_agricolas;
-- Cria a base de dados, chamada servicos_agricolas. A partir da execução, a base de dados pode ser encontrada na "árvore de arquivos".

-- Quando o comando 'CREATE DATABASE servicos_agricolas' é executado novamente, é exibido um erro informando que este banco de dados já existe. Isso acontece porque não é possível que hajam duas ou mais bases de dados com o mesmo nome.

DROP DATABASE servicos_agricolas;

-- Quando o comando 'DROP DATABASE servicos_agricolas' foi executado, o banco de dados criado anteriormente foi removido da árvore de arquivos.

-- Ao tentar executar o comando 'DROP DATABASE servicos_agricolas' novamente, é exibida uma mensagem de erro, visto que o banco de dados foi excluído anteriormente e, portanto, não pode ser excluído.

DROP DATABASE IF EXISTS servicos_agricolas;

-- Quando o comando 'DROP DATABASE IF EXISTS servicos_agricolas' foi executado, foi exibido um alerta, indicando que não foi possível excluir o banco de dados, pois ele não existe (havia sido excluído anteriormente). A diferença entre DROP DATABASE e DROP DATABASE IF EXISTS é que o acréscimo de IF EXISTS fará que seja verificado SE EXISTE o banco de dados antes de tentar excluí-lo. Se existir, o banco será excluído; se não, será exibido um alerta indicando que não foi possível realizar a exclusão, diferentemente do DROP DATABASE que força a exclusão do banco e, quando não é possível, gera um erro.

CREATE DATABASE servicos_agricolas;

USE servicos_agricolas;

CREATE TABLE cliente(
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    data_nasc DATE NOT NULL,
    cpf NUMERIC(11) NOT NULL UNIQUE,
    telefone NUMERIC(11) NOT NULL,
    email VARCHAR(50) NOT NULL
);

-- Script que cria a tabela 'Cliente' com seus respectivos atributos (colunas).
