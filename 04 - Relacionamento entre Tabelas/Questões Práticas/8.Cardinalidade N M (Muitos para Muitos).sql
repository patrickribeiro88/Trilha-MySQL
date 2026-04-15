CREATE TABLE pedido_produto (
    id_pedido INT,
    id_produto INT,
    quantidade INT,
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

INSERT INTO pedido_produto (id_pedido, id_produto, quantidade) VALUES 
(11, 1, 1), 
(11, 2, 5);