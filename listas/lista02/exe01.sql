CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    classe_id BIGINT,
    poder INT,
	vida INT,
    pet VARCHAR(255) NOT NULL,
    PRIMARY KEY (id),
	CONSTRAINT FK_personagens_classeId FOREIGN KEY (classe_id)
          REFERENCES tb_classes (id)
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Classe de combate corpo a corpo com alta resistência'),
('Mago', 'Classe de conjuração com habilidades mágicas poderosas'),
('Arqueiro', 'Classe de combate à distância com precisão e agilidade'),
('Clérigo', 'Classe de suporte com habilidades de cura e proteção'),
('Ladino', 'Classe furtiva especializada em furtos e ataques surpresa');


INSERT INTO tb_personagens (nome, classe_id, poder, vida, pet) VALUES
('Arthas', 1, 3500, 1200, 'Lobo'),
('Jaina', 2, 2800, 800, 'Fênix'),
('Thrall', 3, 3200, 1100, 'Lobo Espiritual'),
('Sylvanas', 4, 450, 900, 'Corvo'),
('Illidan', 5, 4000, 1000, 'Pantera'),
('Tyrande', 1, 270, 950, 'Coruja'),
('Malfurion', 2, 250, 1000, 'Urso'),
('Guldan', 3, 3800, 700, 'Demônio');


select * from tb_personagens where poder > 2000;
select * from tb_personagens where poder between 1000 and 2000;
select * from tb_produtos where nome like "%c%";

SELECT *
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;

SELECT *
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id where classe_id = 1;
