USE concessionaria_db;

INSERT INTO clientes (nome, telefone, email) VALUES
('Roberto Carlos', '(11) 98888-1111', 'roberto@email.com'),
('Fernanda Lima', '(11) 97777-2222', 'fernanda@email.com'),
('Marcos Souza', '(11) 96666-3333', 'marcos@email.com');

INSERT INTO vendedores (nome, percentual_comissao) VALUES
('João Silva', 5.00),
('Carla Souza', 6.50);

INSERT INTO carros (marca, modelo, ano, preco, status) VALUES
('Toyota', 'Corolla XEi', 2023, 125000.00, 'Vendido'),
('Honda', 'Civic Touring', 2022, 140000.00, 'Disponível'),
('Jeep', 'Compass Limited', 2024, 175000.00, 'Disponível'),
('Volkswagen', 'Polo Highline', 2023, 95000.00, 'Vendido');

INSERT INTO vendas (carro_id, cliente_id, vendedor_id, valor_negociado) VALUES
(1, 1, 1, 120000.00),
(4, 2, 2, 92000.00);
