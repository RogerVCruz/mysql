CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	cpf VARCHAR(255) NOT NULL,
    datacontracao DATE,
    salario DECIMAL(6, 2) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, cpf, datacontracao, salario) VALUES
('João Silva', '123.456.789-00', '2023-01-15', 3500.00),
('Maria Oliveira', '987.654.321-00', '2022-11-20', 4200.50),
('Carlos Souza', '456.789.123-00', '2021-05-10', 1800.75),
('Ana Pereira', '321.654.987-00', '2020-07-25', 4100.00),
('Lucas Lima', '789.123.456-00', '2019-03-30', 1900.25);


select * from tb_colaboradores where salario > 2000;
select * from tb_colaboradores where salario < 2000;

update tb_colaboradores set salario = 5000.00 where id = 4;
