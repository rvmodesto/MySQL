create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
id bigint auto_increment,
marca varchar(255) not null,
tipo varchar(255) , /*ex: vestuário, limpeza, tecnologias, etc */
descricao varchar(255),
preco decimal(8,2)not null,
quantidade int, /*estoque*/
primary key (id)
);

insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Veja", "higiene e limpeza", "multiuso", 450, 1400.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Vanish", "higiene e limpeza", "sabão em barra", 200, 1170.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Neve", "higiene e limpeza", "papel higienico", 1000, 218.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Nivea", "higiene e limpeza", "sabonete", 450, 600.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Ype", "higiene e limpeza", "sabão em pó", 800, 20.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Dove", "higiene e limpeza", "shampoo", 450, 1224.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Colgate", "higiene e limpeza", "escova de dente", 1050, 300.00);
insert into tb_produto(marca, tipo, descricao, quantidade, preco) values ("Bombril", "higiene e limpeza", "palha de aço", 450, 490.00);


select * from tb_produto;

select * from tb_produto where preco > 500;
select * from tb_produto where preco < 500;

update tb_produto set marca = "Nivea" where id = 4;