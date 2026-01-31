
CREATE DATABASE IF NOT EXISTS oficina;
USE oficina;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) UNIQUE NOT NULL,
    modelo VARCHAR(50),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE mecanico (
    id_mecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50)
);

CREATE TABLE servico (
    id_servico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100),
    valor DECIMAL(10,2)
);

CREATE TABLE ordem_servico (
    id_os INT AUTO_INCREMENT PRIMARY KEY,
    data_abertura DATE,
    id_veiculo INT,
    id_mecanico INT,
    FOREIGN KEY (id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (id_mecanico) REFERENCES mecanico(id_mecanico)
);

CREATE TABLE item_servico (
    id_item_servico INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT,
    id_servico INT,
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os),
    FOREIGN KEY (id_servico) REFERENCES servico(id_servico)
);

CREATE TABLE peca (
    id_peca INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2)
);

CREATE TABLE item_peca (
    id_item_peca INT AUTO_INCREMENT PRIMARY KEY,
    id_os INT,
    id_peca INT,
    quantidade INT,
    FOREIGN KEY (id_os) REFERENCES ordem_servico(id_os),
    FOREIGN KEY (id_peca) REFERENCES peca(id_peca)
);

-- Dados de teste
INSERT INTO cliente (nome, telefone, email)
VALUES ('João Lima', '1199999-0000', 'joao@email.com');

INSERT INTO veiculo (placa, modelo, id_cliente)
VALUES ('ABC1234', 'Fiat Uno', 1);

INSERT INTO mecanico (nome, especialidade)
VALUES ('Carlos Mecânico', 'Motor');

INSERT INTO servico (descricao, valor)
VALUES ('Troca de óleo', 150.00);

INSERT INTO ordem_servico (data_abertura, id_veiculo, id_mecanico)
VALUES ('2024-03-10', 1, 1);

INSERT INTO item_servico (id_os, id_servico)
VALUES (1, 1);

INSERT INTO peca (nome, preco)
VALUES ('Filtro de óleo', 40.00);

INSERT INTO item_peca (id_os, id_peca, quantidade)
VALUES (1, 1, 1);

-- Consulta de validação
SELECT c.nome AS cliente,
       v.modelo,
       s.descricao AS servico,
       p.nome AS peca
FROM cliente c
JOIN veiculo v ON c.id_cliente = v.id_cliente
JOIN ordem_servico os ON v.id_veiculo = os.id_veiculo
JOIN item_servico isv ON os.id_os = isv.id_os
JOIN servico s ON isv.id_servico = s.id_servico
JOIN item_peca ip ON os.id_os = ip.id_os
JOIN peca p ON ip.id_peca = p.id_peca;
