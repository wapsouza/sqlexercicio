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
    
    constraint id_disciplina primary key (nome)
);

create table curso (
    sigla varchar (5),
    nome varchar (50),

    constraint id_curso primary key (sigla),
    constraint uq_curso unique (nome)
)

create table professor (
    ra int,
    apelido varchar(30),
    nome varchar(120),
    email varchar(80),
    celular varchar(11)
    
    constraint id_professor primary key (ra),
    constraint uq_professor unique (apelido)
)

create table grade_curricular (
    sigla_curso varchar (5),
    ano smallint,
    semestre char(1)
    
    constraint fk_siglacurso foreign key (sigla_curso) references curso(sigla),
    constraint id_gradecurricular primary key (sigla_curso, ano, semestre)    
)


create table periodo (
    sigla_curso varchar (5),
    ano_grade smallint,
    semestre_grade char(1),
    numero tinyint,
    
    constraint fk_siglacursoperiodo foreign key (sigla_curso) references grade_curricular(sigla_curso),
    constraint fk_anograde foreign key (ano_grade) references grade_curricular(ano),
    constraint fk_semestregrade foreign key (semestre_grade) references grade_curricular(semestre),
    constraint id_periodo primary key (sigla_curso, ano_grade, semestre_grade, numero)        
)
