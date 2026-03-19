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