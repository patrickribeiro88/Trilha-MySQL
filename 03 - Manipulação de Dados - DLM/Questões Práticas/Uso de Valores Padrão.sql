-- Uso de Valores Padrão 
-- * Adicione uma coluna cidade à tabela funcionarios com o valor padrão "Não Informado". 
-- * Insira um registro omitindo o valor da coluna cidade e verifique o resultado.

ALTER TABLE funcionarios ADD COLUMN cidade VARCHAR(50) DEFAULT 'Não Informado';

INSERT INTO funcionarios (id_funcionario, nome, email, cargo)
VALUES (9, 'Lucas Mendes', 'lucasM@email.com', 'Atendente');

SELECT * FROM funcionarios WHERE id_funcionario = 9;