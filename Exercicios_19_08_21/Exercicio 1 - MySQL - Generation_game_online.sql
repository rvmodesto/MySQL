create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
elemento varchar(255),
regiao varchar(255),
habilidade varchar(150),
primary key(id)
);

insert into tb_classes(regiao, elemento, habilidade) values ("Ar", "Nômades do Ar", "Dobrador de ar");
insert into tb_classes(regiao, elemento, habilidade) values ("Terra", "Reino da Terra", "Dobrador de terra");
insert into tb_classes(regiao, elemento, habilidade) values ("Água", "Tribo da água", "Dobrador de água");
insert into tb_classes(regiao, elemento, habilidade) values ("Fogo", "Nação do Fogo ","Dobrador de fogo");
insert into tb_classes(regiao, elemento, habilidade) values ("Todos", "Avatar", "Dobrador de todos os elementos");

select * from tb_classes;

create table tb_personagens(
id bigint auto_increment,
nome varchar(100),
nivel int,
ataque int,
defesa int,
classe_id bigint, /*não pode ser auto_increment*/
primary key (id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Aang", 1000, 300, 100, 5);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Toph", 100, 400, 100, 2);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Zuko", 9000, 2500, 1500, 4);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Katara", 15000, 5000, 2000, 3);
insert into tb_personagens(nome, nivel, ataque, defesa, classe_id) values ("Kai", 11000, 2300, 6000, 1);

select * from tb_personagens;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id; 

select * from tb_personagens left join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_classes.regiao = "água";
  