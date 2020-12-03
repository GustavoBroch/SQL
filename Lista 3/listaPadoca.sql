create database db_padoca;

use db_padoca;

create table tb_bolo (
	idBolo bigint auto_increment,
    descricao varchar(30) not null,
    amanhecido boolean not null,
    valor decimal(10,2) not null,
    
    primary key(idBolo)
);

create table tb_cliente(
	idCliente bigint auto_increment,
    nome varchar(255) not null,
    cpf char(11) not null,
    celular char(12) not null,
    endereco varchar(255) not null,
    numero int not null,
    cep char(8) not null,
    
    primary key(idCliente)
);

create table tb_pao(
	idPao bigint auto_increment,
    descricao varchar(70) not null,
    disponivel boolean not null,
    valor decimal(10,2) not null,
    
    primary key(idPao)
);

create table tb_bebida(
	idBebida bigint auto_increment,
    descricao varchar(60) not null,
    disponivel boolean not null,
    valor decimal(10,2) not null,
    
    primary key(idBebida)
);

create table tb_forma_pag(
	idFormaPag int auto_increment,
    descricao varchar(50) not null,
    
    primary key(idFormaPag)
);

create table tb_comanda(
	idComanda bigint auto_increment,
    descricao varchar(255) not null,
    pao_id bigint not null,
    bolo_id bigint not null,
    pagamento_id int not null,
    bebida_id bigint not null,
    cliente_id bigint not null,
    
    primary key(idComanda),
    foreign key(bolo_id) references tb_bolo(idBolo),
    foreign key(pao_id) references tb_pao(idPao),
    foreign key(cliente_id) references tb_cliente(idCliente),
    foreign key(bebida_id) references tb_bebida(idBebida),
    foreign key(pagamento_id) references tb_forma_pag(idFormaPag)
);


INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Milho",true,7.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Paçoca",false,20.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Café",true,14.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Prestígio",true,18.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Cenoura",true,9.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Chocolate",true,12.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Nescau",false,18.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Limão",true,15.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Morango",true,16.50);
INSERT INTO tb_bolo (descricao,amanhecido,valor) VALUES ("Chantily",true,13.50);

select * from tb_bolo;

INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Vitão", "11122233344", "015911112222","Bairro Taquaral", 1050, "13695123");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Alana", "21122233344", "015921112222","Bairro Barão Geraldo", 90, "13695125");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Lais", "31122233344", "015913112222","Bairro Barão Geraldo", 150, "13665123");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Bruno", "41122233344", "015941112222","Campinas", 130, "18695123");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Gustavo", "51122233344", "015951112222","Augusto Mazzer", 299, "13295123");

INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Jose", "11122433344", "015911112282","Bairro Brasil", 1010, "13695523");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Fernando", "21125233344", "015211712222","Bairro Campinas", 100, "13695125");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Ulano", "31122263344", "015913612222","Bairro Santa Efigenia", 110, "73665123");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Camila", "41122733344", "015941512222","Bairro Moca", 120, "18695423");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Valira", "51122233344", "015951212222","Bairro Savira", 399, "13225123");

INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Krian", "1112223394", "015913112222","Bairro Lima", 2050, "13695163");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Housten", "2112228344", "015721112222","Bairro Unalima", 1250, "15695125");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Samira", "31122237344", "015913912222","Bairro Graves", 130, "13265123");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Bruno", "41122733344", "015941812222","Bairro Alans", 140, "11195123");
INSERT INTO tb_cliente(nome, cpf , celular, endereco, numero, cep) VALUES("Gustavo", "51152233344", "015951512222","Crist", 2599, "13235123");

select * from tb_cliente;

INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Frances", 1, 0.99);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Folheado", 1, 1.50);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Recife", 1, 3.00);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Australiano", 1 ,2.59);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Gergelim", 1, 1.29);

INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Sovado", 1, 4.99);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Italiano", 1, 2.50);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Parmesão", 1, 1.00);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Integral", 1 ,2.50);
INSERT INTO tb_pao(descricao, disponivel, valor) VALUES("Gergelim", 1, 1.90);

select * from tb_pao;

INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Coca", 1, 5.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Café", 1, 2.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Leite", 1, 1.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Whisky", 1, 9.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Sprite", 1, 4.99);

INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Fanta", 1, 2.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Yakult", 1,1.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Toddy", 1, 2.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Nesquick", 1, 2.99);
INSERT INTO tb_bebida(descricao, disponivel, valor) VALUES("Chamito", 1, 4.99);

select * from tb_bebida;

INSERT INTO tb_forma_pag(descricao) VALUES("Cheque");
INSERT INTO tb_forma_pag(descricao) VALUES("Cartão Débito");
INSERT INTO tb_forma_pag(descricao) VALUES("Cartão Crédito");
INSERT INTO tb_forma_pag(descricao) VALUES("Dinheiro");
INSERT INTO tb_forma_pag(descricao) VALUES("Pix");

select * from tb_forma_pag;

insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 1, 5, 1,2,1);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 3, 2, 2,3,3);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo Viagem", 2, 1, 3,4,2);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo Viagem,", 4, 4, 4,5,5);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 1, 3, 5,1,1);

insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 2, 9, 1,5,6);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 3, 8, 2,6,7);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo Viagem", 4, 7, 3,9,8);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo Viagem,", 5, 5, 4,8,9);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 1, 3, 5,4,10);

insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 10, 5, 1,1,11);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 9, 2, 2,2,12);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo Viagem", 8, 1, 3,3,13);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo Viagem,", 7, 4, 4,9,14);
insert into tb_comanda(descricao, pao_id, bolo_id, pagamento_id, bebida_id, cliente_id) values ("Consumo local", 6, 3, 5,8,15);

select * from tb_comanda;

select * from tb_pao inner join tb_comanda on tb_pao.idPao = tb_comanda.pao_id where valor < 1.00;
