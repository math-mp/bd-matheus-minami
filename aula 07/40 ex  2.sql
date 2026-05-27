create table alunos (
id int primary key,
nome varchar(50),
idade int,
curso varchar(50),
nota decimal (10,2),
data_matricula date,
status_matricula varchar(50)
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

