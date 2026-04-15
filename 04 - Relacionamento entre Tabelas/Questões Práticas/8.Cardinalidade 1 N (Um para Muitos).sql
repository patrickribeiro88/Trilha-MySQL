CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    valor_total DECIMAL(10,2),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO pedidos (id_pedido, id_cliente, valor_total) VALUES 
(11, 2, 150.00),
(12, 2, 89.90);
