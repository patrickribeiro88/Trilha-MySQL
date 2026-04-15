-- 2. Integridade Referencial: 
-- * Configure a tabela pedidos para que a exclusão de um cliente também exclua automaticamente os pedidos associados (ON DELETE CASCADE). 

CREATE TABLE pedidos (
	id_pedido INT PRIMARY KEY,
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente) ON DELETE CASCADE
);

-- Explique como isso ajuda a manter a integridade dos dados.
	-- Evita a violação de integridade referencial, onde o sistema tentaria apontar para um ID que não existe mais.