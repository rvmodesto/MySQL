create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
modalidade varchar(20),
valor varchar(20),
primary key(id)
);

insert into tb_categoria(modalidade, valor) values("ead", "grátis");
insert into tb_categoria(modalidade, valor) values("presencial", "grátis");
insert into tb_categoria(modalidade, valor) values("ead", "pago");
insert into tb_categoria(modalidade, valor) values("presencial", "pago");
insert into tb_categoria(modalidade, valor) values("presencial e ead", "Bolsa de estudos");

select * from tb_categoria;

create table tb_curso (
id bigint auto_increment,
nome varchar(150) not null,
qtdHoras varchar(100),
preco decimal(8,2) not null,
certificado varchar(10),
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Exel avançado", 3.50, "15h", "sim", 3);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Enfermagem", 30000.00, "2000h", "sim", 5);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Téc. Admnistração", 0.00, "1200h", "sim", 2);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Públicidade e Propaganda", 7000.00, "15h", "sim", 4);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("UI/UX Design", 0.00, "100h", "sim", 1);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Inglês para negócios", 2000.00, "40h", "não", 3);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Medicina", 50000.00, "2200h", "sim", 4);
insert into tb_curso(nome, preco, qtdHoras, certificado, categoria_id) values("Desenvolvedor JAVA", 0.00, "480h", "sim", 1);

select * from tb_curso;

select*from tb_curso where preco > 50.00;

select*from tb_curso where preco between 3.00 and 60.00;

select*from tb_curso where nome like "%j%";

select * from tb_curso inner join tb_categoria
on tb_curso.categoria_id = tb_categoria.id;

select * from tb_curso inner join tb_categoria
on tb_curso.categoria_id = tb_categoria.id
where valor like "grátis" ;