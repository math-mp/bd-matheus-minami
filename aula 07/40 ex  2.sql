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

insert into alunos (id, nome, idade, curso, nota, data_matricula, status_matricula)
values
(1, 'pedro silva', 15, 'administração', 7.0, '2024-01-10' , 'ativo'),
(2, 'claudio', 16, 'matematica', 10.0, '2025-02-05' , 'ativo'),
(3, 'laura', 17, 'quimica', 8.0, '2023-04-15' , 'ativo'),
(4, 'guilherme', 18, 'desenvolvimento de sistemas', 6.0, curdate(), 'ativo'),
(5, 'camila', null, 'fisica',null, null, null),
(6, 'D''Angelo', 17, 'nutrição', 8.5, '2024-06-16' , 'ativo'),
(7, 'felicia', 2026 - 2008, 'logica de programação', 9.0, '2023-10-05', 'ativo'),
(8, 'marcos', 17, 'quimica', 5.0, '2024-03-28', 'trancado'),
(9, 'sônia', 16, 'banco de dados', 10.0, '2024-02-15', 'ativo'),
(10, 'beto', 15, 'artes',(7.5 + 8.0) / 2 ,'2023-06-24', 'ativo');


insert ignore into alunos (id, nome, idade, curso, nota, data_matricula, status_matricula)
values
(1, 'alexandre', 16, 'serviços publicos', 7.0, '2024-01-30', 'ativo');

insert into alunos (id, nome, idade, curso, nota, data_matricula, status_matricula)
values
(11, upper('Leticia'), 15, 'nutrição', 9.0, '2024-02-20', 'ativo');

-- leitura de dados (READ)

select * from alunos
where nota between 6.0 and 8.5;

select * from alunos 
where curso in('matematica', 'quimica', 'fisica');

select * from alunos
where nome like 'c%';

select * from alunos 
where nome like '%silva%';

select * from alunos
where nota is null;

select count(*) from alunos
where status_matricula = 'ativo';

select * from alunos 
order by curso asc, nota desc;

select * from alunos
where curso <> 'artes';

select avg(nota) from alunos;

select distinct curso from alunos;

-- atualização de dados (UPDATE)

update alunos
set nota = nota * 1.1
where curso = 'banco de dados';

update alunos
set status_matricula = 'trancado'
where nota <= 4.0 and idade > 18;

update alunos
set curso = 'desenvolvimento web', nota = 9.0
where id = 11;

update alunos
set idade = 20
where id in(2, 5, 7, 10);

update alunos
set nota = null
where status_matricula = 'trancado';

update alunos
set nome = lower(nome)
where curso = 'historia';

update alunos
set nota = nota - 0.5
where curso = 'quimica' or curso = 'fisica';

update alunos
set status_matricula = 'concluido'
where data_matricula < '2025-01-01';

update alunos
set nome = concat(nome,' representante')
where id = 3;

update alunos
set nota = 10.0
where nota > 10;

-- remoção de dados (DELETE)

delete from alunos
where nome like '%junior';

delete from alunos
where id in(4, 8, 15);

delete from alunos
where curso is null;

delete from alunos 
where idade between 30 and 40;

delete from alunos
where curso = 'geografia' and status_matricula = 'trancado';

delete from alunos
order by nota asc
limit 3;

delete from alunos
where nota < 5
and curso <> 'desenvolvimento de sistemas';

delete from alunos
where nome like '%teste%';

delete from alunos
where idade < 16 and data_matricula = curdate();

delete from alunos
where nota = 0.0 or status_matricula is null;

--desafios

select curso, avg(nota)
From alunos
group by curso
having avg(nota)>7;

create table alunos_aprovados 
as select * from alunos
where nota >= 6;

update alunos
set status_matricula = case
    when nota >= 6.0 then 'concluido'
    else 'retido';

delete from alunos
where nota is null and
curso = (
    select curso
    from alunos
    where nome = 'joao'
);

-- matheus minami pacheco 2DA etec prof. camargo aranha
-- materia de banco de dados



