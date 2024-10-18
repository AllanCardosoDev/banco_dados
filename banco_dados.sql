-- Recuperação de Clientes
SELECT * FROM Cliente;

-- Recuperação de Produtos
SELECT * FROM Produto;

-- Filtros usando a cláusula WHERE
-- Recuperar pedidos de um cliente específico
SELECT * FROM Pedido WHERE id_cliente = 123;

-- Recuperar produtos com preço acima de um valor específico
SELECT * FROM Produto WHERE preco > 50.00;

-- Expressões para gerar atributos derivados
-- Recuperar o valor total de um pedido
SELECT ip.id_pedido, SUM(ip.quantidade * p.preco) AS valor_total
FROM ItemPedido ip
JOIN Produto p ON ip.id_produto = p.id_produto
WHERE ip.id_pedido = 456
GROUP BY ip.id_pedido;

-- Ordenação dos dados com ORDER BY
-- Recuperar os produtos ordenados por preço (decrescente)
SELECT * FROM Produto ORDER BY preco DESC;

-- Condições de filtro para grupos – HAVING Statement
-- Recuperar fornecedores que têm produtos com estoque abaixo de 10 unidades
SELECT f.nome AS nome_fornecedor, COUNT(*) AS produtos_com_pouco_estoque
FROM Fornecedor f
JOIN Estoque e ON f.id_fornecedor = e.id_fornecedor
WHERE e.quantidade < 10
GROUP BY f.nome
HAVING produtos_com_pouco_estoque > 0;

-- Junções entre tabelas para uma perspectiva mais complexa dos dados
-- Recuperar os produtos e seus fornecedores
SELECT p.nome AS nome_produto, f.nome AS nome_fornecedor
FROM Produto p
JOIN Estoque e ON p.id_produto = e.id_produto
JOIN Fornecedor f ON e.id_fornecedor = f.id_fornecedor;

-- Recuperar os clientes que fizeram mais de 3 pedidos
SELECT c.nome, COUNT(p.id_pedido) AS quantidade_pedidos
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome
HAVING quantidade_pedidos > 3;

-- Quantos pedidos foram feitos por cada cliente?
SELECT c.nome, COUNT(p.id_pedido) AS quantidade_pedidos
FROM Cliente c
JOIN Pedido p ON c.id_cliente = p.id_cliente
GROUP BY c.nome;

-- Relação de produtos, fornecedores e estoques:
SELECT p.nome AS nome_produto, f.nome AS nome_fornecedor, e.quantidade AS quantidade_estoque
FROM Produto p
JOIN Estoque e ON p.id_produto = e.id_produto
JOIN Fornecedor f ON e.id_fornecedor = f.id_fornecedor;

-- Relação de nomes dos fornecedores e nomes dos produtos:
SELECT f.nome AS nome_fornecedor, p.nome AS nome_produto
FROM Fornecedor f
JOIN Estoque e ON f.id_fornecedor = e.id_fornecedor
JOIN Produto p ON e.id_produto = p.id_produto;
