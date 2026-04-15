-- Inserção de Dados 
-- * Crie uma tabela chamada funcionarios com as colunas: 
-- id_funcionario (INT, chave primária), nome (VARCHAR), email (VARCHAR) e cargo (VARCHAR). 
-- * Insira três registros nesta tabela usando o comando INSERT INTO. 

CREATE TABLE funcionarios (
	id_funcionario INT PRIMARY KEY,
    nome VARCHAR (100),
    email VARCHAR (100),
    cargo VARCHAR (50)
);
INSERT INTO funcionarios (id_funcionario, nome, email, cargo)
VALUES (1,'Alice Silva','alice@email.com','Desenvolvidora');

INSERT INTO funcionarios (id_funcionario, nome, email, cargo)
VALUES (2,'Bruno Costa','bruno@email.com','Analista');

INSERT INTO funcionarios (id_funcionario, nome, email, cargo)
VALUES (3,'Carla Souza','carla@email.com','Gerente');
