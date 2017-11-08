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
);

create table professor (
    ra int,
    apelido varchar(30),
    nome varchar(120),
    email varchar(80),
    celular varchar(11),
	id_professor int,
    
    constraint pk_professor primary key (id_professor),
    constraint uq_professor unique (apelido,ra)
);

create table aluno (
	ra int,
	nome varchar (120),
	email varchar(80),
	celular varchar(11),
	sigla_curso char(2),
	id_aluno int,

	constraint pk_aluno primary key (id_aluno),
	constraint uq_aluno unique (ra),
);


create table grade_curricular (
    sigla_curso varchar (5),
    ano smallint,
    semestre char(1),
	id_gradecurricular int,
    
    constraint fk_siglacurso foreign key (id_gradecurricular) references curso(id_curso),
    constraint uq_gradecurricular unique (ano, semestre,sigla_curso),
	constraint pk_gradecurricular primary key (id_gradecurricular)
);

create table periodo (
    sigla_curso varchar (5),
    ano_grade smallint,
    semestre_grade char(1),
    numero tinyint,
	id_periodo int,
    
    constraint pk_periodo primary key (id_periodo),
	constraint uq_periodo unique(sigla_curso, ano_grade, semestre_grade, numero),
	constraint fk_periodo foreign key (id_periodo) references grade_curricular(id_gradecurricular),        
);

create table periodo_disciplina (
	sigla_curso varchar (5),
    ano_grade smallint,
	semestre_grade char(1),
    numero_periodo tinyint,
	nome_disciplina varchar (240),
	id_periododisciplina int,

	constraint pk_periododisciplina primary key (id_periododisciplina),
	constraint uq_periododisciplina unique (sigla_curso,ano_grade,semestre_grade,numero_periodo,nome_disciplina),
	constraint fk_periododisciplina foreign key (id_periododisciplina) references periodo(id_periodo)
);

create table disciplina_ofertada (
	nome_disciplina varchar(240),
	ano smallint,
	semestre char(1),
	id_disciplinaofertada int

	constraint pk_iddisciplinaofertada primary key(id_disciplinaofertada),
	constraint uq_iddisciplinaofertada unique (nome_disciplina, ano, semestre),
	constraint fk_iddisciplinaofertada foreign key (id_disciplinaofertada) references disciplina(id_disciplina)
);

create table turma (
	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id char(1),
	turno varchar(15),
	ra_professor int,
	id_turma int

	constraint pk_turma primary key(id_turma),
	constraint fk_turma foreign key (id_turma) references professor (id_professor),
	constraint fk_turma foreign key (id_turma) references disciplinaofertada (id_disciplinaofertada),
	constraint uq_turma unique (nome_disciplina,ano_ofertado,semestre_ofertado,id)
);

create table cursoturma (
	sigla_curso varchar(5),
	nome_disciplina varchar(240),
	ano_ofertado smallint,
	semestre_ofertado char(1),
	id_turma char (1),
	id_cursoturma int,

	constraint uq_cursoturma unique (sigla_curso, nome_disciplina, ano_ofertado,semestre_ofertado,id_turma),
	constraint fk_cursoturma foreign key (id_cursoturma) references turma (id_turma),
	constraint fk_cursoturma foreign key (id_cursoturma) references curso(id_curso),
	constraint pk_cursoturma primary key (id_cursoturma)
);
