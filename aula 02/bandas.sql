create table tb_bandas (
 id int auto_increment primary key,
 nome_banda varchar(50) not null,
 estilo varchar(50) ,
 fas int,
 cidade varchar(50)
 );
 
 select*from tb_bandas;
 
 insert into tb_bandas (nome_banda, estilo, fas, cidade)values
 ('slipknot', 'rock', 1500, 'trumbull'),
 ('linkin park', 'rock', 3000, 'marshall'),
 ('panic! at the disco','pop rock', 500,'danforth'),
 ('daft punk', 'eletronica',2000, 'trumbull'),
 ('maroon 5', 'pop', 1000 , 'marshall');
 
 select * from tb_bandas;
 select (nome_banda, fas) from tb_bandas;
 select*from tb_bandas where fas > 1000;
 select*from tb_bandas where cidade ='trumbull';
 select*from tb_bandas where estilo = 'rock';
 
 update tb_bandas set  fas = 2500 where nome_banda = 'slipknot';
 update tb_bandas set cidade = 'marshall' where nome_banda = 'panic! at the disco';
 update tb_bandas set estilo = 'pop rock', fas = 3500 where nome_banda ='panic! at the disco';
 update tb_bandas set nome_banda ='panic!' where nome_banda ='panic! at the disco';
 
 /*
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;

seta a segurança do update sem filtragem a partir de chaves primarias permitindo a alteração de qualquer dado a partir de uma informação
Já colocada.
*/

delete from tb_bandas where nome_banda ='maroon 5';
delete from tb_bandas where fas <= 1000;
delete from tb_bandas where estilo ='rock';
delete from tb_bandas where nome_banda ='daft punk';
