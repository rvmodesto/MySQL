create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
nota  decimal (2,1) not null, 
materia varchar(255),
serie varchar(255),
situacao varchar(255), 
primary key (id)
);

insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Geraldo", 3.5, "Biologia", "7º ano", "Recuperação");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Mariana", 8.0, "Biologia", "7º ano", "Aprovado");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Vinicius", 8.0, "Biologia", "7º ano", "Aprovado");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Astolfo", 7.5, "Biologia", "7º ano", "Aprovado");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Brenno", 4.0, "Biologia", "7º ano", "Recuperação");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Gustava", 0.0, "Biologia", "7º ano", "Reprovado");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Adoniran", 9.5, "Biologia", "7º ano", "Aprovado");
insert into tb_estudantes(nome, nota, materia, serie, situacao) values ("Henrique", 8.5, "Biologia", "7º ano", "Aprovado");


select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set Nota = 6.0 where id = 1;