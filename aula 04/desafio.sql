create table clientes (
 nome_cliente varchar (50),
 id_cliente int primary key
 );
 
 create table estoque (
nome_jogo varchar(50),
id_jogo int primary key,
id_comprador int
);

select*from clientes;
select*from estoque;

insert into clientes(id_cliente, nome_cliente)values
(1,'lhorrany cerqueira'),
(2,'maria carolina'),
(3,'matheus minami'),
(4,'rodrigo matheus');

insert into estoque values 
('dead by dayligth', 1, 3),
('fortnite', 2, 4),
('stardew valley',3,0);
insert into estoque (nome_jogo, id_jogo) values
('geometry dash', 4),
('assasins creed', 5);

select clientes.nome_cliente, estoque.nome_jogo
from clientes 
inner join estoque on clientes.id_cliente = estoque.id_comprador;

select clientes.nome_cliente, estoque.nome_jogo
from clientes 
left join estoque on clientes.id_cliente = estoque.id_comprador;

select estoque.nome_jogo, clientes.nome_cliente
from estoque
inner join clientes on estoque.id_comprador = cliente.id_cliente;

drop table clientes;
drop table estoque;
