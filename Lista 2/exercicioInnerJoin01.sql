create database db_rh2;

use db_rh2;

create table tb_cargo(
	idCargo bigint auto_increment,
    nomeCargo varchar(50) not null,
    nivelCargo varchar (20) not null,
    
    primary key(idCargo)

);

create table tb_funcionario(
	idFuncionario bigint auto_increment,
    nomeFuncionario varchar(100) not null,
    salario double(10,2) not null,
    ativo boolean not null,
    cargo_id bigint not null,
    
    primary key(idFuncionario),
    foreign key(cargo_id) references tb_cargo(idCargo)
    
    );
    
    insert into tb_cargo(nomeCargo, nivelCargo) values("Programador WEB", "Junior");
    insert into tb_cargo(nomeCargo, nivelCargo) values("Programador Mobile", "Pleno");
    insert into tb_cargo(nomeCargo, nivelCargo) values("Programador Fron-End", "Junior");
    insert into tb_cargo(nomeCargo, nivelCargo) values("Programador Back-End", "Pleno");
    insert into tb_cargo(nomeCargo, nivelCargo) values("Progamador Full Stack", "Senior");
    
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Gustavo", 5600.90, true, 4);
	insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Pedro", 4000.00, true, 1);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Bia", 4000.90, true, 1);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Lucas", 4000.90, true, 1);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Bruno", 4600.90, true, 2);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Alana", 5600.90, true, 4);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Cris", 5600.90, true, 4);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Marcelo", 10000.90, true, 5);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Camila", 10000.90, true, 5);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Witer", 4000.90, true, 1);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Pamela", 4000.90, true, 1);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Mateus", 5600.90, true, 4);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Tiago", 5600.90, true, 4);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("João", 4600.90, true, 2);
    insert into tb_funcionario(nomeFuncionario, salario, ativo, cargo_id) values ("Lucas", 4000.90, true, 3);
    
    select * from tb_funcionario where salario > 2000;
	
    select * from tb_funcionario where salario >= 1000 and salario <= 2000;
    
    select * from tb_funcionario where nomeFuncionario like "C%";
    
    select * from tb_cargo inner join tb_funcionario on tb_cargo.idCargo = tb_funcionario.cargo_id;
    
    select * from tb_cargo inner join tb_funcionario on tb_cargo.idCargo = tb_funcionario.cargo_id where tb_cargo.nomeCargo like "Programador WEB";
    
    update tb_funcionario set salario = 1550.00 where idFuncionario = 16;
    
    
    
    