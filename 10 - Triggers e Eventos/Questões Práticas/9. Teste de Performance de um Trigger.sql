-- 9. Teste de Performance de um Trigger 
-- Execute um teste de performance em um trigger que é acionado frequentemente. Proponha melhorias para otimizar sua execução.

CREATE TRIGGER trg_atualiza_total
AFTER INSERT ON pedido_produto
FOR EACH ROW
UPDATE pedidos
SET valor_total = valor_total + (
    SELECT preco 
    FROM produtos 
    WHERE id_produto = NEW.id_produto
) * NEW.quantidade
WHERE id_pedido = NEW.id_pedido;