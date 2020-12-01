create database db_rh;

use db_rh;

create table funcionario(
	id bigint auto_increment,
    nome varchar(50) not null,
    data_nascimento date not null,
    setor varchar(20) not null,
    cargo varchar(20) not null,
    salario double(6,2) not null,
    ativo boolean not null,
    
    primary key(id)
);

insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Gustavo", "1993-10-14", "TI", "Desenvolvedor Java", 4000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Beatriz", "1997-1-24", "TI", "Desenvolvedor Java", 5000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Bruno", "1995-2-1", "TI", "Desenvolvedor Java", 6000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Caio", "1996-3-18", "TI", "Desenvolvedor Java", 7000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Cris", "1991-4-16", "TI", "Desenvolvedor Java", 8000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Jack", "1992-5-15", "TI", "Desenvolvedor Java", 9000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Lucas", "1993-6-10", "TI", "Desenvolvedor Java", 9500.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Vitor", "1994-7-13", "TI", "Desenvolvedor Java", 9800.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Witer", "1995-8-14", "TI", "Desenvolvedor Java", 8800.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Lana", "1996-9-22", "TI", "Desenvolvedor Java", 1000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Isabella", "1999-2-25", "TI", "Desenvolvedor Java", 2000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Erci", "2000-11-16", "TI", "Desenvolvedor Java", 1500.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Ana", "1990-12-06", "TI", "Desenvolvedor Java", 2000.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Matheus", "1999-5-05", "TI", "Desenvolvedor Java", 2500.00, true); 
insert into funcionario (nome, data_nascimento, setor, cargo, salario, ativo) values ("Jorge", "1985-6-04", "TI", "Desenvolvedor Java", 3000.00, false); 

select * from funcionario where salario > 2000;

select * from funcionario where salario < 2000;

update funcionario set salario = 4500.00 where id = 1;

select * from funcionario;

delete from funcionario where id = 15;