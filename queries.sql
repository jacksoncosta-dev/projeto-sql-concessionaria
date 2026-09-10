USE concessionaria_db;

SELECT 
    v.id AS id_venda,
    c.nome AS cliente,
    CONCAT(car.marca, ' ', car.modelo) AS carro,
    vd.nome AS vendedor,
    v.valor_negociado,
    v.data_venda
FROM vendas v
JOIN clientes c ON v.cliente_id = c.id
JOIN carros car ON v.carro_id = car.id
JOIN vendedores vd ON v.vendedor_id = vd.id;

SELECT 
    vd.nome AS vendedor,
    COUNT(v.id) AS total_carros_vendidos,
    SUM(v.valor_negociado) AS faturamento_total
FROM vendedores vd
LEFT JOIN vendas v ON vd.id = v.vendedor_id
GROUP BY vd.id, vd.nome;

SELECT marca, modelo, ano, preco
FROM carros
WHERE status = 'Disponível';
