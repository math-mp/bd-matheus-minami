create table Livros (
id_livro INT PRIMARY KEY AUTO_INCREMENT,
titulo varchar(50) not null,
autor varchar(50) not null,
ano_publicacao int,
quantidade_estoque int
);

insert into livros (titulo, autor, ano_publicacao, quantidade_estoque) values 
("harry potter", "jk rowling", 1978, 5),
("jujutsu kaisen 0", "gege akutami", 2018, 10),
("kimetsu no yaiba vol 2", "koyoharu gotouge", 2020, 5);

select * from livros ;

select titulo, autor
from livros 
where ano_publicacao > 2000 ;

select * from livros order by titulo ASC;

update livros set quantidade_estoque = (quantidade_estoque -1) where id_livro = 1 ;

delete from livros where id_livro = 3 ;
