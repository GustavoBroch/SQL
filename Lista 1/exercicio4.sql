create database db_ecommerce;

use db_ecommerce;

create table tb_produto(
	id bigint auto_increment,
    nome varchar(100) not null,
    preco double(10, 2) not null,
    categoria varchar(50) not null,
    disponibilidade boolean not null,
	quantidade int not null,
    
	primary key(id)
);

insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Memória", 300.00 , "decoração", true, 20);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Cooler", 800.00 , "decoração", true, 5);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Gabinete", 400.00 , "decoração", true, 3);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Pasta Térmica", 20.00 , "decoração", true, 10);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Processador", 2900.99 , "decoração", true, 5);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Mouse", 250.00 , "decoração", false, 0);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Teclado", 400.00 , "decoração", true, 3);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Headset",250.00 , "decoração", true, 2);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("CD-ROM", 100.00 , "decoração", true, 4);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("DVD_ROM", 150.00 , "decoração", true, 4);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Fonte", 900.00 , "decoração", false, 0);
insert into tb_produto(nome, preco, categoria, disponibilidade, quantidade) values ("Fax", 700.00 , "decoração", true, 1);

select nome, preco from tb_produto where preco > 500;

select nome, preco from tb_produto where preco < 500;

select nome, preco from tb_produto where preco >= 700 and preco <= 900;

delete from tb_produto where id = 12;

update tb_produto set preco = 750.00 where id = 1;

select * from tb_produto;

