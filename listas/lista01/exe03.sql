create database db_escola;

use db_escola;

create table tb_alunos(
    id bigint auto_increment,
	nome varchar(255) not null,
    nomepai varchar(255),
	nomemae varchar(255),
    celularpai varchar(255),
    celularmae varchar(255),
    media decimal(4, 2) not null,
    primary key (id)
);

INSERT INTO tb_alunos (nome, nomepai, nomemae, celularpai, celularmae, media) VALUES
('Ana Silva', 'João Silva', 'Maria Silva', '(21) 91234-5678', '(21) 98765-4321', 8.75),
('Carlos Souza', 'Pedro Souza', 'Ana Souza', '(21) 92345-6789', '(21) 97654-3210', 6.80),
('Mariana Oliveira', 'José Oliveira', 'Clara Oliveira', '(21) 93456-7890', '(21) 96543-2109', 9.20),
('Lucas Lima', 'Roberto Lima', 'Fernanda Lima', '(21) 94567-8901', '(21) 95432-1098', 5.50),
('Beatriz Santos', 'Ricardo Santos', 'Juliana Santos', '(21) 95678-9012', '(21) 94321-0987', 9.00),
('Gabriel Costa', 'Marcos Costa', 'Patrícia Costa', '(21) 96789-0123', '(21) 93210-9876', 6.30),
('Larissa Almeida', 'Fábio Almeida', 'Renata Almeida', '(21) 97890-1234', '(21) 92109-8765', 8.90),
('Rafael Pereira', 'Gustavo Pereira', 'Luciana Pereira', '(21) 98901-2345', '(21) 91098-7654', 7.95),
('Juliana Fernandes', 'Eduardo Fernandes', 'Sônia Fernandes', '(21) 99012-3456', '(21) 90987-6543', 9.10),
('Thiago Martins', 'André Martins', 'Marta Martins', '(21) 90123-4567', '(21) 99876-5432', 8.65);


select * from tb_alunos where media > 7.0;
select * from tb_alunos where media < 7.0;

update tb_alunos set media = 3.5 where id = 10; 

select * from tb_alunos;