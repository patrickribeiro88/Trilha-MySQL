-- 11.Projeto Prático e Avaliações

-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS sistema_vendas;
USE sistema_vendas;

-- Tabela de Clientes: Armazena dados cadastrais 
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT, -- Chave Primária 
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL, -- UNIQUE para evitar duplicidade
    telefone VARCHAR(20)
);

-- Tabela de Produtos: Gerenciamento de catálogo e estoque
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT, -- Chave Primária 
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL DEFAULT 0
);

-- Tabela de Pedidos: Registro de transações por cliente 
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT, -- Chave Primária 
    id_cliente INT, -- Chave Estrangeira 
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_cliente_pedido FOREIGN KEY (id_cliente) 
        REFERENCES clientes(id_cliente) ON DELETE CASCADE -- Integridade Referencial 
);

-- Tabela de Junção: Relacionamento N:N entre Pedidos e Produtos
CREATE TABLE pedido_produto (
    id_pedido INT,
    id_produto INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_pedido, id_produto), -- Chave Primária Composta
    CONSTRAINT fk_pedido FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

DELIMITER //

CREATE PROCEDURE registrar_pedido(
    IN p_id_cliente INT, 
    IN p_id_produto INT, 
    IN p_quantidade INT
)
BEGIN
    DECLARE v_estoque_atual INT;
    
    -- Início da Transação para garantir consistência 
    START TRANSACTION;

    -- Busca estoque atual para validação
    SELECT estoque INTO v_estoque_atual FROM produtos WHERE id_produto = p_id_produto;

    -- Bônus: Controle para evitar estoque negativo 
    IF v_estoque_atual >= p_quantidade THEN
        -- Insere na tabela de pedidos
        INSERT INTO pedidos (id_cliente) VALUES (p_id_cliente);
        SET @novo_pedido = LAST_INSERT_ID();

        -- Insere na tabela de junção
        INSERT INTO pedido_produto (id_pedido, id_produto, quantidade) 
        VALUES (@novo_pedido, p_id_produto, p_quantidade);

        -- Atualiza o estoque automaticamente 
        UPDATE produtos SET estoque = estoque - p_quantidade WHERE id_produto = p_id_produto;

        COMMIT; -- Confirma as alterações 
    ELSE
        -- Cancela a operação se não houver estoque suficiente
        ROLLBACK; 
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Erro: Estoque insuficiente.';
    END IF;
END //

DELIMITER ;

-- JOIN: Listar pedidos com nomes de clientes e produtos 
SELECT p.id_pedido, c.nome AS cliente, pr.nome AS produto, pp.quantidade
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN pedido_produto pp ON p.id_pedido = pp.id_pedido
JOIN produtos pr ON pp.id_produto = pr.id_produto;

-- Subconsulta: Identificar o produto mais vendido 
SELECT nome 
FROM produtos 
WHERE id_produto = (
    SELECT id_produto 
    FROM pedido_produto 
    GROUP BY id_produto 
    ORDER BY SUM(quantidade) DESC 
    LIMIT 1
);

-- Otimização: Criação de índices estratégicos 
CREATE INDEX idx_cliente_pedidos ON pedidos(id_cliente); 
CREATE INDEX idx_produto_pedido ON pedido_produto(id_produto); 

-- Análise de Performance com EXPLAIN [cite: 119, 125]
EXPLAIN SELECT * FROM pedidos WHERE id_cliente = 1; 