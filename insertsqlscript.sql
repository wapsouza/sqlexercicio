/* SCRIPT INSERT
Isaque Felizardo - 1700525
Wallace Paula Souza -  1700251
Kaua Ramirez - 1700652
Natalia Nadgela - 1700653
Vinícius dos reis Oliveira - 1701731
*/

Use Pmaster
go

insert into Disciplina (nome, carga_horaria, teoria, pratica, ementa, competencias, habilidades, conteudo, biografia_basica, biografia_complementar) values 
( 'linguagem SQL', 80, 40, 40, 'conhecimento linguagem SQL com criacao e manipulacao de dados', 'logica de programacao', 'raciocinio logico', 'banco de dados', 'criando seu bd', 'google.com'),
( 'linguagem de programacao II', 100, 40, 60, 'continuacao de linguagem de programacao I', ' linguagem de programacao I', 'raciocinio logico', 'python', 'programando com python', 'youtube.com'),
( 'engenharia de software', 80, 60, 20, 'criacao de um projeto de software e todas etapas de seu desenvolvimento',' linguagem de programacao', 'seguimento das regras de organização de um projeto', 'engenharia de software completa', 'Linha do tempo de um software', 'google.com' ),
( 'IOT', 80, 40, 40, 'internet das coisas', 'raciocinio lógico', 'Logica de programacao', 'introducao completa a iot', 'conectando mundos', 'google.com' ),
( 'Gestão de projetos', 80, 80, 0, 'gerencimento de projetos', 'criando e gerenciando projetos', ' gerenciamento de pessoas', 'conteudo completo', 'requisitos essencais para a criancao de um projeto', 'google.com' );


insert into Curso (sigla, nome) values 
('SI', 'Sistemas de informacao'),
('BD', 'Banco de Dados'),
('ADS', 'Analise e desenvolvimento'),
('ADM', 'Administracao'),
('PG', 'Programacao de Games');


insert into Professor (ra, apelido, nome, email, celular) values 
(102017,  'Well', 'Wellington Sanches', 'wellingtonfit@impacta.com.br', '11952945573'),
(112017, 'GeniusBd', 'Rodrigo Carvalho', 'Rodrigofit@impacta.com.br', '11952944563'),
(122017,  'Ademir', 'Ademilson dos Santos Dias', 'ademilsonfit@impacta.com.br', '11952945573'),
(132017,  'Mag', 'Magali de Oliveira Gonçalves', 'magalifit@impacta.com.br', '11942949573'),
(142017,  'Yuri', 'Yuri', 'yurifit@impacta.com.br', '11952966571');


insert into Aluno (ra, nome, email, celular, id_curso) values 

(152017, 'Wellington dos Santos', 'wellington@hotmail.com', '11952941573',1),
(162017, 'Pedro la rosa', 'pedro@hotmail.com', '11952942573',2),
(172017, 'Leticia vasconcelos', 'leticia@hotmail.com', '11952943573',3),
(182017, 'Caio Ramos', 'caio@hotmail.com', '11952944573',4),
(192017, 'Vinicius oliveira', 'vinicius@hotmail.com', '11952955573',5),
(202017, 'Mark Massami', 'markm@hotmail.com', '11952946573',1),
(212017, 'Marcos junior', 'marcos@hotmail.com', '11952948573',1),
(222017, 'Daniel sbrami', 'daniel@hotmail.com', '11952949573',1),
(232017, 'Bruna marques', 'bruna@hotmail.com', '11952947573',1),
(242017, 'Carol bernardes', 'carol@hotmail.com', '11952940573',2),
(252017, 'gustavo', 'gustavo@hotmail.com', '11952941584',2),
(262017, 'Pedro', 'pedro@hotmail.com', '11952942573',3),
(272017, 'Leticia pereira', 'leticiaper@hotmail.com', '11952943585',3),
(282017, 'Caio castro', 'caiocastro@hotmail.com', '11952944573',3),
(292017, 'Vinicius oliveira', 'viniciusoliver@hotmail.com', '11952955586',4),
(302017, 'Marcelo rodrigo', 'marcelor@hotmail.com', '11952946587',4),
(312017, 'Marcos silva', 'marcossilva@hotmail.com', '11952948588',5),
(322017, 'Daniel de sousa', 'danielsouza@hotmail.com', '11952949589',5),
(332017, 'Bruna marquezini', 'brunamarq@hotmail.com', '11952947580',1),
(342017, 'Carol albuquerque', 'carolalbuquerque@hotmail.com', '11952940581',1);


insert into GradeCurricular (ano, semestre, id_curso) values 
(2017, 2, 1),
(2015, 6, 2),
(2017, 1, 4),
(2016, 1, 5),
(2016, 4, 3),
(2015, 2, 3),
(2016, 2, 4),
(2017, 2, 3),
(2017, 1, 1),
(2017, 2, 5),
(2018, 1, 1),
(2018, 1, 2),
(2018, 1, 3);


insert into Periodo (numero, id_gradecurricular) values 
( 6, 5),
( 1, 1),
( 3, 3),
( 4, 4),
( 2, 1),
( 3, 1),
( 1, 5),
( 5, 2),
( 1, 2);


insert into PeriodoDisciplina (id_periodo, id_disciplina) values 
(3, 1),
(1, 3),
(5, 5),
(1, 1),
(4, 2),
(2, 4),
(4, 1),
(1, 5),
(8, 4),
(2, 2);


insert into DisciplinaOfertada (ano, semestre, id_disciplina) values 
(2017, 2, 1),
(2017, 1, 3),
(2017, 2, 3),
(2017, 2, 5),
(2017, 1, 4),
(2017, 2, 4),
(2017, 1, 1),
(2017, 2, 2),
(2018, 1, 1),
(2018, 1, 2),
(2018, 1, 3),
(2018, 1, 4);


insert into Turma (turno, id_professor, id_disciplinaofertada) values 
('matutino', 1, 1),
('matutino', 3, 3),
('matutino', 1, 4),
('noite', 4, 2),
('noite', 5, 1),
('matutino', 1, 3),
('noite', 1, 2),
('matutino', 1, 5),
('noite', 2, 1),
('matutino',2, 3),
('noite', 2, 2),
('matutino', 2, 5);



insert into CursoTurma (id_turma, id_curso) values 
(5, 4),
(1, 1),
(3, 2),
(2, 1),
(6, 5),
(4, 3),
(1, 2),
(3, 1);


insert into Matricula (id_turma, id_aluno) values 
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7);


insert into Matricula (id_turma, id_aluno) values 
(1, 8),
(1, 9),
(1, 10),
(2, 5),
(2, 7),
(2, 10),
(3, 2),
(3, 1),
(3, 3),
(4, 10),
(4, 7),
(4, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 10),
(6, 9),
(6, 7),
(6, 8),
(6, 6),
(6, 5),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 18),
(1, 17),
(1, 19);


insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values 
(1, '11-25-2017', 'assinale a alternativa correta', '10-20-2017', 1),
(2, '11-25-2017', 'assinale a alternativa incorreta', '10-20-2017', 1),
(3, '11-18-2017', 'explique', '10-20-2017', 1),
(4, '11-18-2017', 'assinale a alternativa correta', '10-20-2017', 1),
(5, '11-25-2017', 'assinale a alternativa incorreta', '10-20-2017', 2),
(6, '11-25-2017', 'explique', '10-20-2017', 1),
(7, '11-18-2017', 'assinale a alternativa correta', '10-20-2017', 3),
(8, '11-25-2017', 'assinale a alternativa incorreta', '10-20-2017', 5),
(9, '11-18-2017', 'explique', '10-20-2017', 4),
(10, '11-25-2017', 'assinale a alternativa correta', '10-20-2017', 5),
(11, '11-25-2017', 'assinale a alternativa correta', '10-20-2017', 6);


insert into ArquivosQuestao (arquivo, id_questao) values 
( 'Quem criou a linguagem SQL?', 1),
( 'Para que serve o comando "create database"?', 2),
( 'Para que serve o SQL server?', 3),
( 'Para que serve a funcao insert?', 4),
( 'Para que serve a funcao select? ', 5),
( 'Para que serve a funcao drop?', 6);


insert into Resposta ( ra_aluno, data_avaliacao, nota, avaliacao, descricao, data_de_envio, id_questao) values 
(1, '2017-12-1', '8', 'avaliacao ES', 'prova np2','2017-12-3', 1),
(9, '2017-12-2', '10', 'avaliacao LP1', 'prova np2','2017-12-3', 1),
(10, '2017-12-3', '9', 'avaliacao IOT', 'prova np2','2017-12-3', 1),
(11, '2017-12-2', '9', 'avaliacao SQL', 'prova np2','2017-12-3', 1),
(12, '2017-12-3', '7', 'avaliacao GP', 'prova np2','2017-12-3', 2),
(13, '2017-12-1', '8', 'avaliacao ES', 'prova np2','2017-12-3', 2),
(14, '2017-12-2', '10', 'avaliacao LP1', 'prova np2','2017-12-3', 2),
(15, '2017-12-3', '9', 'avaliacao IOT', 'prova np2','2017-12-3', 2),
(16, '2017-12-2', '9', 'avaliacao SQL', 'prova np2','2017-12-3', 3),
(3, '2017-12-2', '7', 'avaliacao GP', 'prova np2','2017-12-3', 3),
(4, '2017-12-1', '8', 'avaliacao ES', 'prova np2','2017-12-3', 3),
(5, '2017-12-2', '10', 'avaliacao LP1', 'prova np2','2017-12-3', 4),
(6, '2017-12-3', '9', 'avaliacao IOT', 'prova np2','2017-12-3', 4),
(7, '2017-12-3', '9', 'avaliacao SQL', 'prova np2','2017-12-3', 5),
(8, '2017-12-2', '7', 'avaliacao GP', 'prova np2','2017-12-3', 5);


insert into arquivosresposta (arquivo, id_resposta) values 
('alternativa A', 1),
('alternativa B', 2),
('alternativa C', 3),
('alternativa D', 4),
('alternativa E', 5),
('alternativa A', 6),
('alternativa B', 7),
('alternativa C', 8),
('alternativa D', 9),
('alternativa E', 10),
('alternativa A', 11),
('alternativa B', 12),
('alternativa C', 13),
('alternativa D', 14),
('alternativa E', 15);

