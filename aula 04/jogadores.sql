create table jogadores (
 id_aluno int primary key,
 nick_name varchar(50)
 );
 
 create table skins (
 id_skin int primary key,
 nome_skin varchar(50),
 id_dono int
 );
 
 select*from jogadores;

 insert into jogadores values (1,'malukogameplay'),(2,'lokinhodaprasa'), (3,'tungtungsahur');
 insert into skins values (10,'capa de fogo',1),(11,'espada fogosa',2);

 select jogadores.nick_name, skins.nome_skin
 from jogadores
inner join skins on jogadores.id_aluno = skins.id_dono;

select jogadores.nick_name, skins.nome_skin
from jogadores
left join skins on jogadores.id_aluno = skins.id_dono;