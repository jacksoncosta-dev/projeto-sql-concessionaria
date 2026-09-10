CREATE DATABASE IF NOT EXISTS concessionaria_db;
USE concessionaria_db;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    percentual_comissao DECIMAL(5,2) DEFAULT 5.00
);

CREATE TABLE carros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    preco DECIMAL(12,2) NOT NULL,
    status VARCHAR(20) DEFAULT 'Disponível'
);

CREATE TABLE vendas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    carro_id INT NOT NULL,
    cliente_id INT NOT NULL,
    vendedor_id INT NOT NULL,
    data_venda TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    valor_negociado DECIMAL(12,2) NOT NULL,
    FOREIGN KEY (carro_id) REFERENCES carros(id),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);
