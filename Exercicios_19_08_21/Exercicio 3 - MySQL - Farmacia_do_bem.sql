create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (
id bigint auto_increment,
comprimido varchar(20),
xarope varchar(20),
injecao varchar(20),
primary key(id)
);

insert into tb_categoria(comprimido, xarope, injecao) values("sim", "não", "não");
insert into tb_categoria(comprimido, xarope, injecao) values("não", "sim", "não");
insert into tb_categoria(comprimido, xarope, injecao) values("não", "não", "sim");
insert into tb_categoria(comprimido, xarope, injecao) values("sim", "sim", "sim");
insert into tb_categoria(comprimido, xarope, injecao) values("sim", "sim", "não");

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
nome varchar(150) not null,
preco decimal(8,2) not null,
descricao varchar(250),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, descricao, categoria_id) values("Ibuprofeno", 15.00, "analgésico", 1);
insert into tb_produto(nome, preco, descricao, categoria_id) values("Benegripe", 20.00, "alívio da gripe", 5);
insert into tb_produto(nome, preco, descricao, categoria_id) values("Neosaldina", 31.95, "analgésico", 1);
insert into tb_produto(nome, preco, descricao, categoria_id) values("Vick vaporub", 27.31, "descongestionante", 4);
insert into tb_produto(nome, preco, descricao, categoria_id) values("Melagrião", 35.80, "alívio da tosse", 2);
insert into tb_produto(nome, preco, descricao, categoria_id) values("Benzetacil", 16.46, "antibiótico", 3);

select * from tb_produto;

select*from tb_produto where preco > 60.00;

select*from tb_produto where preco between 3.00 and 60.00;

select*from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where xarope like "sim" ;