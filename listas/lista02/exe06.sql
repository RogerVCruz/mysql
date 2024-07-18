CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria_id BIGINT,
    preco DECIMAL(6,2),
	criado_em timestamp DEFAULT CURRENT_TIMESTAMP,
    nota DECIMAL(2,1),
    PRIMARY KEY (id),
	CONSTRAINT FK_cursos_categoriaId FOREIGN KEY (categoria_id)
          REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Python', 'Python é uma linguagem de programação de alto nível, conhecida por sua simplicidade e legibilidade.'),
('JavaScript', 'JavaScript é uma linguagem de programação amplamente utilizada para desenvolvimento web, permitindo interatividade nas páginas.'),
('Java', 'Java é uma linguagem de programação robusta e multiplataforma, muito utilizada no desenvolvimento de aplicações empresariais.'),
('C#', 'C# é uma linguagem de programação desenvolvida pela Microsoft, ideal para desenvolvimento na plataforma .NET.'),
('Ruby', 'Ruby é uma linguagem de programação dinâmica e de código aberto, conhecida por sua simplicidade e produtividade.');


INSERT INTO tb_cursos (nome, categoria_id, preco, nota) VALUES
('Python para Iniciantes', 1, 99.99, 8.5),
('JavaScript Avançado', 2, 1200.50, 9.0),
('Java Programação Masterclass', 3, 1999.99, 8.8),
('C# Básico para Iniciantes', 4, 750.50, 8.2),
('Tutorial de Ruby on Rails', 5, 129.99, 9.1),
('Python para Ciência de Dados', 1, 600.00, 8.7),
('JavaScript: O Guia Completo', 2, 300.42, 9.3),
('Java: Do Zero ao Avançado', 3, 430.99, 8.9),
('Tópicos Avançados de C#', 4, 1500.00, 8.4),
('Programação Ruby para Iniciantes', 5, 109.99, 8.6);

select * from tb_cursos where preco > 500.00;
select * from tb_cursos where preco between 600.00 and 1000.00;

select * from tb_cursos where nome like "%j%";

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT *
FROM tb_cursos
INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id where categoria_id = 3;


