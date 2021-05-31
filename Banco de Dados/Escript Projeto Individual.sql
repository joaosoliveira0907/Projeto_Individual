create database projeto_individual;
use projeto_individual;

create table Agente(
	idAgente int primary key,
    NomeAgente varchar(45),
    DataDeNascimento date,
    CPF int,
    Genero enum("M","F","N"),
	Cidade varchar(45),
	Pais varchar(45)
	);

create table Membros(
	idMembros int primary key,
	Nome varchar(45),
    DataDeNascimento date,
    CPF int,
	Genero enum("M","F","N"),
	Cidade varchar(45),
	Pais varchar(45)
    );
    
create table Agente (
	idEquipe int primary key,
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
();

insert into Equipe values 
();

insert into AgenteMissao values
();

insert into Missao values
();

-- ALTERANDO OS CAMPOS DAS TABELAS PARA TRANSFORMAR EM FOREIGN KEY
ALTER TABLE Departamento ADD 
FOREIGN KEY (fkGerente) REFERENCES Funcionario (idFunc);

ALTER TABLE Funcionario ADD 
FOREIGN KEY (fkSupervisor) REFERENCES Funcionario (idFunc); -- RECURSIVIDADE
ALTER TABLE Funcionario ADD 
FOREIGN KEY (fkDepto) REFERENCES Departamento (idDepto);

ALTER TABLE Projeto ADD 
FOREIGN KEY (fkDepto) REFERENCES Departamento (idDepto);
				
    


