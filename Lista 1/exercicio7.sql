create database db_locadora;

use db_locadora;

create table tb_filmes(
	id bigint auto_increment,
	titulo varchar(50) not null,
    ano year not null,
    genero varchar(20) not null,
    disponivel boolean not null,
    
    primary key(id)
);

insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 1", "2000", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 2", "2001", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 3", "2002", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 4", "2003", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 5", "2004", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 6", "2005", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 7", "2006", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 8", "2007", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 9", "2008", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Velozes e Furisos 1", "2009", "Ação", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 1", "2010", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 2", "2011", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 3", "2012", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 4", "2013", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 5", "2014", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 6", "2015", "Fantasia", false);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 7", "2016", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Harry Potter 8", "2017", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Animais Fantástico", "2019", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Era do Gelo 1", "2002", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Era do Gelo 2", "2003", "Fantasia", false);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Era do Gelo 3", "2004", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Era do Gelo 4", "2005", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Era do Gelo 5", "2007", "Fantasia", true);
insert into tb_filmes(titulo, ano, genero, disponivel) values("Era do Gelo 6", "2008", "Fantasia", true);


select titulo from tb_filmes where titulo like "s%";
select titulo from tb_filmes where genero like "comédia romântica";

update tb_filmes set titulo = "Sonic" where id= 5;
update tb_filmes set genero = "comédia romântica" where id=12;

delete from tb_filmes where id = 2;

select * from tb_filmes;