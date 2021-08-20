create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(150),
massa varchar (150),
tamanho varchar(150),
primary key(id)
);

insert into tb_categoria(tipo, massa, tamanho) values("Salgada","calzone", "grande");
insert into tb_categoria(tipo, massa, tamanho) values("Salgada","fina", "grande");
insert into tb_categoria(tipo, massa, tamanho) values("Salgada","média", "broto");
insert into tb_categoria(tipo, massa, tamanho) values("Salgada","grossa", "média");
insert into tb_categoria(tipo, massa, tamanho) values("Doce","média", "broto");

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
sabor varchar(150) not null,
preco decimal(8,2) not null,
bordaRecheada boolean,
recheioExtra boolean, /*é possível pedir recheio extra?*/
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("4 queijos", 45.00, false, true, 1);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("Chocolate c/ morangos", 65.00, true, true, 5);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("Portuguesa", 45.00, false, true, 2);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("Pepperoni", 37.00, true, true, 4);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("Banana c/ canela", 55.00, true, true, 5);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("Atum", 40.00, false, true, 3);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("Vegetariana", 35.00, true, true, 2);
insert into tb_pizza(sabor, preco, bordaRecheada, recheioExtra, categoria_id) values("À moda da casa", 57.00, true, true, 3);

select * from tb_pizza;

select*from tb_pizza where preco > 45.00;

select*from tb_pizza where preco between 49.00 and 60.00;

select*from tb_pizza where sabor like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_pizza.classe_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where bordaRecheada like true ;
