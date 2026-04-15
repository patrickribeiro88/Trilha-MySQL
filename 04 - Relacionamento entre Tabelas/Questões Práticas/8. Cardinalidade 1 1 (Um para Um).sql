-- 8. Cardinalidades: 
-- * Explique e configure exemplos práticos para os tipos de cardinalidades 1:1, 1:N e N:M, criando tabelas e inserindo registros.

CREATE TABLE logins (
    id_login INT PRIMARY KEY,
    id_funcionario INT UNIQUE, -- O UNIQUE garante que é 1:1
    usuario VARCHAR(50) NOT NULL,
    senha VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id_funcionario)
);

INSERT INTO logins (id_login, id_funcionario, usuario, senha) 
VALUES (1, 1, 'alice.silva', 'senha123');