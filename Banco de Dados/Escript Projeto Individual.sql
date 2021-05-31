create database projeto_individual;
use projeto_individual;

create table Agente(
	idAgente int primary key,
    NomeAgente varchar(45),
    DataDeNascimento date,
    CPF varchar(20),
    Genero enum("M","F","N"),
	Cidade varchar(45),
	Pais varchar(45)
	);

create table Membros(
	idMembros int primary key,
	Nome varchar(45),
    DataDeNascimento date,
    CPF varchar(20),
	Genero enum("M","F","N"),
	Cidade varchar(45),
	Pais varchar(45)
    );
    
create table Equipe (
	idEquipe int,
	fkAgente int,
    fkMissao int,
    fkMembros int
    );
    
    
create table Missao (
	idMissao int,
    Descricao varchar (100),
    Status enum("Completa","Incompleta")
    );
    
insert into Agente values 
(10, 'Joao Pedro Santos Oliveira', '2001-07-09', '123.454.455-54', 'M', 'Sao Paulo', 'Brasil');

select * from Agente;

insert into Membros values 
(100, 'Caio dos Santos', '1999-05-01', '9489384478', 'M', 'Sao Paulo', 'Brasil'),
(101, 'Thiago Bonacelli', '1908-07-02', '82273827718', 'M', 'Sao Paulo', 'Brasil'),
(102, 'Frizza', '1970-02-21', '625387498880', 'M', 'Sao Paulo', 'Brasil'),
(103, 'Fernando Brandao', '1978-12-30', '89382738809', 'M', 'Sao Paulo', 'Brasil'),
(104, 'Celia Taniwaki', '1975-12-16', '2232132234', 'F', 'Sao Paulo', 'Brasil'),
(105, 'Marise', '1971-09-19', '65463454434', 'F', 'Sao Paulo', 'Brasil');

select * from Membros;

insert into Equipe values
(202, 10, 7, 100),
(202, 10, 7, 101),
(202, 10, 7, 102),
(202, 10, 7, 103),
(202, 10, 7, 104),
(202, 10, 7, 105);

insert into Missao values
(7, 'Nessa Missão você devera construir uma apresentação para que a Banca da Bantec conheça o Agente enviado da SWORD, e qual o objetivo dele durante nessa tarefa.', 'Incompleta');

-- ALTERANDO OS CAMPOS DAS TABELAS PARA TRANSFORMAR EM FOREIGN KEY
ALTER TABLE Equipe ADD 
FOREIGN KEY (fkAgente) REFERENCES Agente (idAgente);

ALTER TABLE Equipe ADD 
FOREIGN KEY (fkMissao) REFERENCES Missao (idMissao);

ALTER TABLE Equipe ADD 
FOREIGN KEY (fkMembros) REFERENCES Membros (idMembros);

				
    


