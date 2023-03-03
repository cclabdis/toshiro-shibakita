-- Tabela de lojas
CREATE TABLE lojas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
);

-- Inserindo 10 lojas aleatórias
INSERT INTO lojas (nome) VALUES
('Loja A'),
('Loja B'),
('Loja C'),
('Loja D'),
('Loja E'),
('Loja F'),
('Loja G'),
('Loja H'),
('Loja I'),
('Loja J');

-- Tabela de clientes
CREATE TABLE clientes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(50) NOT NULL,
  idade INT NOT NULL,
  telefone VARCHAR(20) NOT NULL
);

-- Tabela de preferências dos clientes
CREATE TABLE preferencias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT NOT NULL,
  loja_id INT NOT NULL,
  servico VARCHAR(50) NOT NULL,
  FOREIGN KEY (cliente_id) REFERENCES clientes(id),
  FOREIGN KEY (loja_id) REFERENCES lojas(id)
);
