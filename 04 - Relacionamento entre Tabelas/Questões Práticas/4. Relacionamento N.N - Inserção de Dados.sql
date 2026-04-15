INSERT INTO produtos (id_produto, nome_produto, preco) VALUES
(1, 'Mouse', 89.90),
(2, 'Teclado', 250.00),
(3, 'Monitor', 850.00);

INSERT INTO pedidos (id_pedido, id_cliente, data_pedido) VALUES
(101, 1, '2026-04-13');

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade) VALUES
(101, 1, 1),
(101, 2, 2); 
