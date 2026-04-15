-- ● Criação de Funções Definidas pelo Usuário (UDFs): 
-- * Crie uma função que calcule o valor total de um pedido aplicando um desconto percentual e use-a em uma consulta.

DELIMITER //
CREATE FUNCTION CalcularDesconto(valor DECIMAL(10,2), porcentagem DECIMAL(5,2)) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN valor - (valor * (porcentagem / 100));
END //
DELIMITER ;


SELECT id_pedido, valor_total, CalcularDesconto(valor_total, 10) AS valor_com_10_off 
FROM pedidos;