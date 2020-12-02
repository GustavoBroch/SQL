create database db_ecommerce2;

use db_ecommerce2;

create table tb_categoria(

	idCategoria bigint auto_increment,
	nomeCategoria varchar(50) not null,
	ativa boolean not null,
    
	primary key(idCategoria)
    
);

create table tb_produto(
	idProduto bigint auto_increment,
    nomeProduto varchar(100) not null,
    precoProduto double(10,2) not null,
    quantidadeProduto int not null,
    categoria_id bigint not null,
    
    primary key(idProduto),
    foreign key(categoria_id) references tb_categoria(idCategoria)

);

insert into tb_categoria(nomeCategoria, ativa) values("Computador", true);
insert into tb_categoria(nomeCategoria, ativa) values("Celular", true);
insert into tb_categoria(nomeCategoria, ativa) values("Notebook", true);
insert into tb_categoria(nomeCategoria, ativa) values("Música", true);
insert into tb_categoria(nomeCategoria, ativa) values("Filmes", true);

insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Laptop Acer", 2999.90, 5, 1);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Laptop Dell", 4999.90, 1, 3);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Laptop Allienaware", 9999.90, 2, 3);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Laptop HP", 3999.90, 3, 3);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Laptop Samsung", 3999.90, 1, 3);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Iphone 123", 8999.90, 2, 2);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Galaxy S12", 8999.90, 5, 2);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Motorola R8", 2300.90, 6, 2);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Sony Xperia", 1999.90, 10, 2);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Lenovo", 1400.90, 20, 2);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Batman", 20.00, 11, 5);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Vingadores", 39.90, 2, 5);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Sonic", 6.99, 3, 5);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Aerosmith", 5.99, 4, 4);
insert into tb_produto(nomeProduto, precoProduto, quantidadeProduto, categoria_id) values ("Guns Roses", 8.99, 5, 4);

select * from tb_produto where precoProduto > 2000;

select * from tb_produto where precoProduto >= 1000 and precoProduto <= 2000;

select * from tb_produto where nomeProduto like "C%";

select * from tb_categoria inner join tb_produto on tb_categoria.idCategoria = tb_produto.categoria_id;

select * from tb_categoria inner join tb_produto on tb_categoria.idCategoria = tb_produto.categoria_id where nomeCategoria like "%Celular%";

update tb_produto set nomeProduto = "Carfone" where idProduto = 11;


