create table alunos (
id int primary key,
nome varchar(50),
idade int,
curso varchar(50),
nota decimal (10,2)
);

insert into alunos (id,nome, idade, curso, nota)
values 
(0,'lucas', 20, 'matematica', 8.5),
(1,'mariana', 22, 'historia', 9.0),
(2,'pedro', null, '', null),
(3,'ana', 19, '', null),
(4,'carlos',null, 'fisica', null),
(5,'fernanda', 21, '', 10),
(6,'roberto', 18, 'geografia', null),
(100, 'joao', 25, '', null),
(7, 'beatriz', null, 'quimica', 7.5),
(8, 'rafael', 30, 'artes', 6.0);

select * from alunos;

select nome from alunos;

select * from alunos
where curso = 'matematica';

select * from alunos 
where idade > 20;

select * from alunos
where nota >= 7;

select * from alunos
where id = 5;

select nome, nota from alunos 
where curso = 'historia';

select * from alunos
where idade = 18;

select * from alunos 
where nota = 10;

select * from alunos
where nome = 'ana';



delete from alunos;
drop table alunos;

/*set SQL_safe_updates = 0;*/
/*set SQL_safe_updates = 1;*/





