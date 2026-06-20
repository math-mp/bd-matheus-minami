create table alunos (
id int primary key,
nome varchar(50),
idade int,
curso varchar(50),
nota decimal (10,2)
);

-- inserção de dados (CREATE)
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

-- leitura de dados (READ)
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

-- atualização de dados (UPDATE)
update alunos
set nota = 9.5
where id = 1;

update alunos
set curso = 'geografia'
where nome = 'mariana';

update alunos
set idade = 21
where id = 3;

update alunos
set nota =8.0
where curso = 'fisica';

update alunos
set nome = 'Ana Carolina'
where id = 4;

update alunos
set curso ='Design'
where curso ='artes';

update alunos
set nota = 8.5
where nome ='beatriz';

update alunos
set idade = 21, nota =9.0
where nome ='lucas';

update alunos 
set nota = 5.0
where id = 10;

update alunos 
set curso = 'ciencias da computação'
where id =2;

-- exclusão de dados (DELETE)
delete from alunos
where id =10;

delete from alunos
where nome='fernanda';

delete from alunos 
where nota <5;

delete from alunos
where curso ='quimica';

delete from alunos
where id =7;

delete from alunos
where idade <18;

delete from alunos
where nome='roberto';

delete from alunos
where nota = 0;

delete from alunos
where id =15;

delete from alunos
where curso='historia'and nota<10;

-- desafios

-- update
update alunos
set nota = nota + 1.5
where curso='fisica' and nota>7;

-- delete
delete from alunos
where curso = 'artes'or nota = 0;

-- read
select nome, idade 
from alunos
order by idade desc
limit 3;

delete from alunos;
drop table alunos;

/*set SQL_safe_updates = 0;*/
/*set SQL_safe_updates = 1;*/

-- matheus minami pacheco 2DA etec prof. camargo aranha
-- materia de banco de dados



