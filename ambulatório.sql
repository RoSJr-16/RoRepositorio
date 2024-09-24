create database db_ambulatorio;
use db_ambulatorio;

create table tbl_ambulatorio(
id_ambulatorio int NOT NULL,
numero varchar (45) NOT NULL,
andar int not null,
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
foreign key (id_ambulatorio) references tbl_ambulatorio (id_ambulatorio),
foreign key (id_especialidades) references tbl_medicos (id_especialidades),
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
foreign key (id_ambulatorio) references tbl_ambulatorio (id_ambulatorio),
foreign key (id_doenca) references tbl_doencas (id_doenca),
)
