create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria (
id bigint auto_increment,
inNatura varchar(20),
polpa varchar(20),
cortada varchar(20),
primary key(id)
);

insert into tb_categoria(inNatura, polpa, cortada) values("sim", "não", "não");
insert into tb_categoria(inNatura, polpa, cortada) values("não", "sim", "não");
insert into tb_categoria(inNatura, polpa, cortada) values("não", "não", "sim");
insert into tb_categoria(inNatura, polpa, cortada) values("sim", "sim", "sim");
insert into tb_categoria(inNatura, polpa, cortada) values("sim", "não", "sim");

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar(150) not null,
preco decimal(8,2) not null,
quantidade varchar(150),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, quantidade, categoria_id) values("Maçã", 3.50, "100g", 1);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Kiwi", 16.90, "100g", 5);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Banana", 5.95, "dúzia", 1);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Mexerica", 6.50, "unidade", 2);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Melão", 15.80, "kilo", 3);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Cereja", 45.00, "kilo", 1);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Tâmara", 35.80, "kilo", 1);
insert into tb_produto(nome, preco, quantidade, categoria_id) values("Manga", 1.60, "kilo", 4);

select * from tb_produto;

select*from tb_produto where preco > 60.00;

select*from tb_produto where preco between 3.00 and 60.00;

select*from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where polpa like "sim" ;