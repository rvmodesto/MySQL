create database db_rh;

use db_rh;

create table tb_func(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario decimal(8,2),
turno varchar(255),
tel bigint,
primary key (id)
);

insert into tb_func(nome, cargo, turno, salario,tel) values ("Claudia", "gerente", "manhã", 15000.00, 99999999);
insert into tb_func(nome, cargo, turno, salario,tel) values ("Chico", "chefe de dpto", "integral", 10000.00, 988888888);
insert into tb_func(nome, cargo, turno, salario,tel) values ("Carlos", "operário", "noturno", 3000.00, 977777777);
insert into tb_func(nome, cargo, turno, salario,tel) values ("Carol", "rh", "Integral", 1800.00, 966666666);
insert into tb_func(nome, cargo, turno, salario,tel) values ("Candida", "assist, adm.","integral", 1700.00, 955555555);

select * from tb_func;

select * from tb_func where salario > 2000;
select * from tb_func where salario< 2000;

update tb_func set turno = "madrugada" where id = 4;