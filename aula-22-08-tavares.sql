CREATE DATABASE assistencia_estudantil;

-- Ele vai aparecer criado na janela de banco de dados do sistema.

-- Ao tentar enviar o comando de criação novamente vai notificar que o banco de dados já existe no sistema e por isso não pode ser criado novamente.

DROP DATABASE assistencia_estudantil;

-- Após o comando executado, o banco deverá sumir da lista de bancos disponíveis no sistema, demonstrando que ele já não existe mais.

-- Caso tente executar o comando novamente em um banco que foi excluído já, a mensagem informando que o comando não pode ser executado pois o banco não existe, aparecerá na tela.

DROP DATABASE IF EXISTS assistencia_estudantil;

-- Com a utilização do comando IF EXISTS, o sistema deixa de informar um Erro e passa a notificar um Warning de que o banco não existe, por isso não deve ser excluído, isso porque ele aplica a condição de apenas executar caso exista.
DROP DATABASE IF EXISTS assistencia_estudantil;
CREATE DATABASE assistencia_estudantil;
USE assistencia_estudantil;

CREATE TABLE assistente(
id_assistente INT PRIMARY KEY,
nome VARCHAR(250) NOT NULL,
siape INT NOT NULL UNIQUE,
email VARCHAR(200) NOT NULL UNIQUE,
senha VARCHAR(50) NOT NULL
);

-- Ao realizar a criação do banco e a criação de bancos em sequência de seus dados, temos uma entidade e seus atributos registrados no banco.
