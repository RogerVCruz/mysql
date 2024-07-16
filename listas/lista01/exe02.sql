create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
    marca varchar(255) not null,
    descricao varchar(255) not null,
	preco decimal(6, 2) not null,
	quantidade int,
    primary key (id)
);

insert into tb_produtos (nome, marca, descricao, preco, quantidade) values
('Notebook Pro', 'TechBrand', 'Notebook de alta performance com 16GB RAM', 4500.00, 5),
('Smartphone X', 'MobileCorp', 'Smartphone com câmera de 108MP', 3200.50, 10),
('Fone de Ouvido', 'SoundMax', 'Fone de ouvido com cancelamento de ruído', 299.99, 25),
('monitor 4K', 'ViewScreen', 'Monitor 4K de 27 polegadas', 1500.75, 8),
('teclado Mecânico', 'keyTech', 'teclado mecânico com iluminação RGB', 450.00, 15),
('mouse Gamer', 'GameGear', 'Mouse gamer com 12 botões programáveis', 250.00, 20),
('Impressora Multifuncional', 'Printall', 'Impressora multifuncional com scanner e fax', 800.00, 12),
('Câmera DSLR', 'PhotoPro', 'Câmera DSLR com lente 18-55mm', 2500.00, 7),
('tablet 10"', 'TabTech', 'Tablet de 10 polegadas com 64GB de armazenamento', 1200.00, 18),
('smartwatch', 'WristTech', 'Smartwatch com monitoramento de saúde', 900.00, 22);

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set marca = "lenovo" where id = 1; 