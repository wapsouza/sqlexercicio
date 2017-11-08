create database exercicio
go

create table disciplina (
    nome varchar(240),
    carga_horaria tinyint,
    teoria decimal(3),
    pratica decimal (3),
    ementa text,
    competencias text,
    habilidades text,
    conteudo text,
    biografia_basica text,
    biografia_complementar text,
	id_disciplina int,
    
    constraint id_disciplina primary key (id_disciplina),
	constraint uq_nome unique(nome)
);

create table curso (
    sigla varchar (5),
    nome varchar (50),
	id_curso int,

    constraint pk_curso primary key (id_curso),
    constraint uq_curso unique (nome,sigla)
)

create table professor (
    ra int,
    apelido varchar(30),
    nome varchar(120),
    email varchar(80),
    celular varchar(11),
	id_professor int,
    
    constraint pk_professor primary key (id_professor),
    constraint uq_professor unique (apelido,ra)
)

create table grade_curricular (
    sigla_curso varchar (5),
    ano smallint,
    semestre char(1),
	id_gradecurricular int,
    
    constraint fk_siglacurso foreign key (sigla_curso) references curso(sigla),
    constraint uq_gradecurricular unique (ano, semestre,sigla_curso),
	constraint pk_gradecurricular primary key (id_gradecurricular)
)


create table periodo (
    sigla_curso varchar (5),
    ano_grade smallint,
    semestre_grade char(1),
    numero tinyint,
	id_periodo int,
    
    constraint fk_siglacursoperiodo foreign key (sigla_curso) references grade_curricular(sigla_curso),
    constraint fk_anograde foreign key (ano_grade) references grade_curricular(ano),
    constraint fk_semestregrade foreign key (semestre_grade) references grade_curricular(semestre),
    constraint id_periodo primary key (sigla_curso, ano_grade, semestre_grade, numero)        
)
