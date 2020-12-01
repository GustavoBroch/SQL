create database db_escola;

use db_escola;

create table aluno(
	id bigint auto_increment,
    nome varchar(50) not null,
    data_nascimento date not null,
    nota float(4,2) not null,
    ativo boolean not null,
    
    primary key(id)
);

insert into aluno(nome, data_nascimento, nota, ativo) values("Gustavo", "2000-10-20", 7, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Pedro", "2001-10-23", 5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Lucas", "2002-01-21", 10, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Marcelo", "2003-01-25", 9, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Camila", "2004-02-27", 9.5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Cris", "2005-12-26", 7, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("João", "2006-03-29", 6, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Silvia", "2007-01-30", 6.5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Ana", "2008-09-02", 2, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Bianca", "1999-06-01", 3, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Savira", "1998-05-05", 1, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Fernanda", "1997-06-20", 0, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Alana", "2002-07-07", 0.5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Bruno", "2001-06-09", 1.5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Karlos", "2003-08-20", 2.5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Naruto", "2005-09-21", 3.5, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Goku", "2007-11-22", 3, true);
insert into aluno(nome, data_nascimento, nota, ativo) values("Sasuke", "2008-12-24", 4.5, true);

select nome, nota from aluno where nota > 7;

select nome, nota from aluno where nota < 7;

delete from aluno where id = 7;

update aluno set nota = 8 where id = 15;

select * from aluno;