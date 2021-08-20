create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria (
id bigint auto_increment,
tipo varchar(255),
material varchar(100),
primary key(id)
);

insert into tb_categoria(tipo, material) values("decoração/construção", "madeira");
insert into tb_categoria(tipo, material) values("decoração/construção", "metal");
insert into tb_categoria(tipo, material) values("decoração/construção", "cerâmica");
insert into tb_categoria(tipo, material) values("decoração/construção", "aço");
insert into tb_categoria(tipo, material) values("decoração/construção", "outros");

select * from tb_categoria;

create table tb_produto (
id bigint auto_increment,
marca varchar(150) not null,
descricao varchar(255),
preco decimal(8,2) not null,
desconto boolean, 
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Dexter", "Kit ferramentas",45.00, true, 5);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("ArcelorMittal", "Vergalhão CA-50 8mm", 48.90, false, 4);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Artens", "Pastilha 30 X 30", 65.60, true, 3);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Ekomposit", "Viga Autoclavada", 73.00, false, 1);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Votoran", "cimento", 45.00, true, 5);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Aetens", "Piso cerâmico esmaltado", 29.00, false, 3);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Mix&Match Docol", "Cabideiro para Banheiro ", 354.90, false, 2);
insert into tb_produto(marca, descricao, preco, desconto, categoria_id) values("Glass Mosaic", "Pastilha  Durada ", 149.90, false, 2);

select * from tb_produto;

select*from tb_produto where preco > 50.00;

select*from tb_produto where preco between 3.00 and 60.00;

select*from tb_produto where descricao like "%J%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where desconto like true ;