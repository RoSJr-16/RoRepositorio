create database db_ambulatorio;
use db_ambulatorio;

create table tbl_ambulatorio(
id_ambulatorio int NOT NULL,
numero varchar (45) NOT NULL,
andar varchar not null,
capacidade int not null,
primary key (id_ambulatorio)
)

create table tbl_especialidades(
id_especialidades int not null,
descricao varchar (50) not null,
primary key (id_especialidades),
)

create table tbl_medicos(
id_medico int Not null,
id_ambulatorio int Not null,
nome varchar(45) not null,
crm varchar(45) not null,
salario float not null,
idade int not null,
id_especialista int not null,
primary key (id_medico),
foreign key (id_ambulatorio) REFERENCES tbl_ambulatorio (id_ambulatorio),
)

create table tbl_funcionario(
id_funcionario int not null,
nome varchar (45) not null,
idade int not null,
sexo char (1) not null,
salario float not null,
cidade varchar (45) not null,
primary key (id_funcionario),
foreign key (id_ambulatorio) references tbl_ambulatorio (id_ambulatorio),
)

create table tbl_pacientes(
id_paciente int not null,
nome varchar (45) not null,
sexo char (1) not null,
idade int not null,
doenca_inicial varchar (50) not null,
primary key (id_paciente),
)

create table tbl_doencas(
id_doencas int not null,
descricao varchar (50) not null,
primary key (id_doencas),
)

create table tbl_consultas(
foreign key (id_medicos) references tbl_medico (id_medicos),
foreign key (id_paciente) references tb_paciente (id_paciente),
dia date not null,
hora time not null,
id_consultas int not null,
primary key (id_consultas),
foreign key (id_ambulatorio) references tbl_ambulatorio (id_ambulatorio),
foreign key (id_doenca) references tbl_doencas (id_doenca),
)

insert into tbl_pacientes
(nome, sexo, idade, doenca_inicial, id_paciente) values
('Domênica Santos', 'F', 20, 'Gripe', 102),
('Camila da Silva', 'M', 19, 'Covid 19', 103),
('Bruna Ferreira', 'F', 25, 'Sarampo', 104),
('Eduardo Gomes', 'M', 32, 'Dengue', 105);

insert into tbl_doencas
(descricao, id_doencas) values
('Acne', 1),
('Alcoolismo Agudo', 2),
('Asma', 3);

insert into tbl_ambulatorio
(numero, andar, capacidade, id_ambulatorio) values
('2000', '12º', 400, 1),
('1500A', '8º', 300, 2),
('550', '1º', 200, 3);

insert into tbl_especialidades
(descricao, id_especialidades) values
('Pediatra', 10),
('Clinico geral', 20),
('Clinico', 30);

insert into tbl_medicos
(nome, crm, salario, idade, id_ambulatorio, id_especialista, id_medico) values
('Dr.Carlos jobim', '52-71557-3', 12000, 50, 1, 1, 201),
('Dr.Adré Firmino', '50-12345-6','22000,57', 63, 1, 10, 202),
('Dra.Ana Maria', '10-20201-5', '40.000,61', 42, 2, 10, 203),
('Dr.João Carlos', '22-20192-7', '38.001', 56, 3, 2, 204);

insert into tbl_funcionario
(nome, idade, sexo, salario, cidade, id_ambulatorio, id_funcionario) values
('Fernanda Fernandes', 34, 'F', 2000, 'São Paulo', 1, 1),
('Bruna Souza', 25, 'F', 1700, 'Guarulho', 1,2),
('Jessica Filho', 20, 'F', 3000, 'Sorocaba', 1, 3),
('Leandro Leonardo', 27, 'M', 2500, 'São Paulo', 3, 4);

insert into tbl_consultas
(data, hora, id_medico, id_pacienciente, id_ambulatorio, id_doencas, id_consultas) values
('01/02/2020', '12h00', 201, 101, 1, 1, 1),
('25/03/2018', '11:30', 202. 102, 1, 1, 2),
('30/04/2019', '16:25', 203, 103, 3, 2, 3),
('05/05/2025', '17:05', 201, 104, 2, 3, 4);

select*from tbl_ambulatorio;
select*from tbl_consultas;
select*from tbl_doencas;
select*from tbl_especialidades;
select*from tbl_funcionario;
select*from tbl_medicos;
select*from tbl_pacientes