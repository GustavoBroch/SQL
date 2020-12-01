create database db_pet_shop;

use db_pet_shop;

create table tb_animais(
	id bigint auto_increment,
	nome varchar(50) not null,
    quilo double(5,2) not null,
    tipo varchar(20) not null,
    idade int not null,
    
    primary key(id)
);

insert into tb_animais(nome, quilo, tipo, idade) values ("Mew", 20.50, "Cachorro", 12);
insert into tb_animais(nome, quilo, tipo, idade) values ("MewTwo", 29.50, "Cachorro", 10);
insert into tb_animais(nome, quilo, tipo, idade) values ("Pikachu", 20.50, "Gato", 1);
insert into tb_animais(nome, quilo, tipo, idade) values ("Potter", 5.50, "Gato", 2);
insert into tb_animais(nome, quilo, tipo, idade) values ("Harry", 13.50, "Pássaro", 13);
insert into tb_animais(nome, quilo, tipo, idade) values ("Ratata", 12.50, "Cachorro", 15);
insert into tb_animais(nome, quilo, tipo, idade) values ("Kwi", 11.50, "Cachorro", 5);
insert into tb_animais(nome, quilo, tipo, idade) values ("Markz", 21.50, "Gato", 6);
insert into tb_animais(nome, quilo, tipo, idade) values ("AWS", 25.50, "Gato", 7);
insert into tb_animais(nome, quilo, tipo, idade) values ("Azure", 13.50, "Pássaro", 9);
insert into tb_animais(nome, quilo, tipo, idade) values ("Avatar", 10.50, "Rato", 10);
insert into tb_animais(nome, quilo, tipo, idade) values ("Sigma", 22.50, "Cachorro", 2);
insert into tb_animais(nome, quilo, tipo, idade) values ("Love", 20.50, "Cachorro", 3);
insert into tb_animais(nome, quilo, tipo, idade) values ("Friday", 100.50, "Cachorro", 15);
insert into tb_animais(nome, quilo, tipo, idade) values ("Plinter", 19.50, "Cachorro", 2);
insert into tb_animais(nome, quilo, tipo, idade) values ("Skill", 55.50, "Urso", 9);
insert into tb_animais(nome, quilo, tipo, idade) values ("Uol", 2.50, "Pássaro", 7);
insert into tb_animais(nome, quilo, tipo, idade) values ("Six", 10, "Cachorro", 10);

update tb_animais set nome = "Baskar" where id = 2;

select*from tb_animais where nome like "b%";

select*from tb_animais where quilo > 20;

delete from tb_animais where id = 5;

select*from tb_animais;