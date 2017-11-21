/* SCRIPT INSERT
Isaque Felizardo - 1700525
Wallace Paula Souza -  1700251
Kaua Ramirez - 1700652
Natalia Nadgela - 1700653
Vinícius dos reis Oliveira - 1701731
*/



insert into Disciplina (nome, carga_horaria, teoria, pratica, ementa, competencias, habilidades, conteudo, biografia_basica, biografia_complementar) values ( 'linguagem SQL', 80, 40, 40, 'conhecimento linguagem SQL com criacao e manipulacao de dados', 'logica de programacao', 'raciocinio logico', 'banco de dados', 'criando seu bd', 'google.com')
insert into Disciplina (nome, carga_horaria, teoria, pratica, ementa, competencias, habilidades, conteudo, biografia_basica, biografia_complementar) values ( 'linguagem de programacao II', 100, 40, 60, 'continuacao de linguagem de programacao I', ' linguagem de programacao I', 'raciocinio logico', 'python', 'programando com python', 'youtube.com')
insert into Disciplina (nome, carga_horaria, teoria, pratica, ementa, competencias, habilidades, conteudo, biografia_basica, biografia_complementar) values ( 'engenharia de software', 80, 60, 20, 'criacao de um projeto de software e todas etapas de seu desenvolvimento',' linguagem de programacao', 'seguimento das regras de organização de um projeto', 'engenharia de software completa', 'Linha do tempo de um software', 'google.com' )
insert into Disciplina (nome, carga_horaria, teoria, pratica, ementa, competencias, habilidades, conteudo, biografia_basica, biografia_complementar) values ( 'IOT', 80, 40, 40, 'internet das coisas', 'raciocinio lógico', 'Logica de programacao', 'introducao completa a iot', 'conectando mundos', 'google.com' )
insert into Disciplina (nome, carga_horaria, teoria, pratica, ementa, competencias, habilidades, conteudo, biografia_basica, biografia_complementar) values ( 'Gestão de projetos', 80, 80, 0, 'gerencimento de projetos', 'criando e gerenciando projetos', ' gerenciamento de pessoas', 'conteudo completo', 'requisitos essencais para a criancao de um projeto', 'google.com' )


insert into Curso (sigla, nome) values ('SI', 'Sistemas de informacao')
insert into Curso (sigla, nome) values ('BD', 'Banco de Dados')
insert into Curso (sigla, nome) values ('ADS', 'Analise e desenvolvimento')
insert into Curso (sigla, nome) values ('ADM', 'Administracao')
insert into Curso (sigla, nome) values ('PG', 'Programacao de Games')


insert into Professor (ra, apelido, nome, email, celular) values (102017,  'Bolacha', 'Wellington Sanches', 'wellingtonfit@impacta.com.br', '11952945573')
insert into Professor (ra, apelido, nome, email, celular) values (112017, 'GeniusBd', 'Rodrigo Carvalho', 'Rodrigofit@impacta.com.br', '11952944563')
insert into Professor (ra, apelido, nome, email, celular) values (122017,  'ademir', 'Ademilson dos Santos Dias', 'ademilsonfit@impacta.com.br', '11952945573')
insert into Professor (ra, apelido, nome, email, celular) values (132017,  'Mag', 'Magali de Oliveira Gonçalves', 'magalifit@impacta.com.br', '11942949573')
insert into Professor (ra, apelido, nome, email, celular) values (142017,  'yuri', 'Yuri', 'yurifit@impacta.com.br', '11952966571')


insert into Aluno (ra, nome, email, celular, sigla_curso) values (152017, 'Wellington', 'wellington@hotmail.com', '11952941573','SI')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (162017, 'Pedro', 'pedro@hotmail.com', '11952942573','BD')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (172017, 'Leticia', 'leticia@hotmail.com', '11952943573','PG')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (182017, 'Caio', 'caio@hotmail.com', '11952944573','BD')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (192017, 'Vinicius', 'vinicius@hotmail.com', '11952955573','SI')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (202017, 'Mark', 'mark@hotmail.com', '11952946573','AD')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (212017, 'Marcos', 'marcos@hotmail.com', '11952948573','SI')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (222017, 'Daniel', 'daniel@hotmail.com', '11952949573','AS')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (232017, 'Bruna', 'bruna@hotmail.com', '11952947573','SI')
insert into Aluno (ra, nome, email, celular, sigla_curso) values (242017, 'Carol', 'carol@hotmail.com', '11952940573','AS')


insert into GradeCurricular (ano, semestre, id_curso) values (2017, 2, 1)
insert into GradeCurricular (ano, semestre, id_curso) values (2015, 6, 2)
insert into GradeCurricular (ano, semestre, id_curso) values (2017, 1, 4)
insert into GradeCurricular (ano, semestre, id_curso) values (2016, 1, 5)
insert into GradeCurricular (ano, semestre, id_curso) values (2016, 4, 3)
insert into GradeCurricular (ano, semestre, id_curso) values (2015, 2, 3)
insert into GradeCurricular (ano, semestre, id_curso) values (2016, 2, 4)
insert into GradeCurricular (ano, semestre, id_curso) values (2014, 7, 2)
insert into GradeCurricular (ano, semestre, id_curso) values (2016, 3, 1)
insert into GradeCurricular (ano, semestre, id_curso) values (2014, 8, 5)


insert into Periodo (numero, id_gradecurricular) values ( 6, 2)
insert into Periodo (numero, id_gradecurricular) values ( 1, 10)
insert into Periodo (numero, id_gradecurricular) values ( 3, 3)
insert into Periodo (numero, id_gradecurricular) values ( 4, 2)
insert into Periodo (numero, id_gradecurricular) values ( 2, 7)
insert into Periodo (numero, id_gradecurricular) values ( 7, 6)
insert into Periodo (numero, id_gradecurricular) values ( 9, 5)
insert into Periodo (numero, id_gradecurricular) values ( 8, 1)
insert into Periodo (numero, id_gradecurricular) values ( 5, 4)
insert into Periodo (numero, id_gradecurricular) values ( 10, 9)


insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 3, 1)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 3, 3)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 5, 5)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 7, 2)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 9, 2)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 2, 4)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 4, 1)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 1, 5)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 10, 4)
insert into PeriodoDisciplina (id_periodo, id_disciplina) values ( 6, 2)


insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2017, 2, 1)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2015, 1, 3)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2015, 8, 3)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2016, 2, 5)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2017, 3, 4)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2017, 4, 5)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2014, 8, 1)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2016, 4, 2)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2017, 1, 1)
insert into DisciplinaOfertada (ano, semestre, id_disciplina) values (2015, 5, 4)


insert into Turma (turno, id_professor, id_disciplinaofertada) values ('noturno', 2, 5)
insert into Turma (turno, id_professor, id_disciplinaofertada) values ('matutino', 1, 4)
insert into Turma (turno, id_professor, id_disciplinaofertada) values ('matutino', 3, 3)
insert into Turma (turno, id_professor, id_disciplinaofertada) values ('matutino', 1, 2)
insert into Turma (turno, id_professor, id_disciplinaofertada) values ('noite', 4, 2)
insert into Turma (turno, id_professor, id_disciplinaofertada) values ('noite', 5, 1)


insert into CursoTurma (id_turma, id_curso) values (5, 4)
insert into CursoTurma (id_turma, id_curso) values (1, 1)
insert into CursoTurma (id_turma, id_curso) values (3, 2)
insert into CursoTurma (id_turma, id_curso) values (2, 1)
insert into CursoTurma (id_turma, id_curso) values (6, 5)
insert into CursoTurma (id_turma, id_curso) values (4, 3)


insert into Matricula (id_turma, id_aluno) values (1, 1)
insert into Matricula (id_turma, id_aluno) values (1, 2)
insert into Matricula (id_turma, id_aluno) values (1, 3)
insert into Matricula (id_turma, id_aluno) values (1, 4)
insert into Matricula (id_turma, id_aluno) values (1, 5)
insert into Matricula (id_turma, id_aluno) values (1, 6)
insert into Matricula (id_turma, id_aluno) values (1, 7)
insert into Matricula (id_turma, id_aluno) values (1, 8)
insert into Matricula (id_turma, id_aluno) values (1, 9)
insert into Matricula (id_turma, id_aluno) values (1, 10)
insert into Matricula (id_turma, id_aluno) values (2, 5)
insert into Matricula (id_turma, id_aluno) values (2, 7)
insert into Matricula (id_turma, id_aluno) values (2, 10)
insert into Matricula (id_turma, id_aluno) values (3, 2)
insert into Matricula (id_turma, id_aluno) values (3, 1)
insert into Matricula (id_turma, id_aluno) values (3, 3)
insert into Matricula (id_turma, id_aluno) values (4, 10)
insert into Matricula (id_turma, id_aluno) values (4, 7)
insert into Matricula (id_turma, id_aluno) values (4, 1)
insert into Matricula (id_turma, id_aluno) values (5, 2)
insert into Matricula (id_turma, id_aluno) values (5, 3)
insert into Matricula (id_turma, id_aluno) values (5, 4)
insert into Matricula (id_turma, id_aluno) values (6, 10)
insert into Matricula (id_turma, id_aluno) values (6, 9)
insert into Matricula (id_turma, id_aluno) values (6, 7)
insert into Matricula (id_turma, id_aluno) values (6, 8)
insert into Matricula (id_turma, id_aluno) values (6, 6)
insert into Matricula (id_turma, id_aluno) values (6, 5)
insert into Matricula (id_turma, id_aluno) values (5, 5)
insert into Matricula (id_turma, id_aluno) values (5, 6)
insert into Matricula (id_turma, id_aluno) values (5, 7)
insert into Matricula (id_turma, id_aluno) values (5, 8)


insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (1, '11-25-2017', 'assinale a alternativa correta', '10-20-2017', 1)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (2, '11-25-2017', 'assinale a alternativa incorreta', '10-20-2017', 1)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (3, '11-18-2017', 'explique', '10-20-2017', 1)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (4, '11-18-2017', 'assinale a alternativa correta', '10-20-2017', 1)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (5, '11-25-2017', 'assinale a alternativa incorreta', '10-20-2017', 2)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (6, '11-25-2017', 'explique', '10-20-2017', 1)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (7, '11-18-2017', 'assinale a alternativa correta', '10-20-2017', 3)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (8, '11-25-2017', 'assinale a alternativa incorreta', '10-20-2017', 5)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (9, '11-18-2017', 'explique', '10-20-2017', 4)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (10, '11-25-2017', 'assinale a alternativa correta', '10-20-2017', 5)
insert into Questao (numero, data_limite_entrega, descricao, data, id_turma) values (11, '11-25-2017', 'assinale a alternativa correta', '10-20-2017', 6)


insert into ArquivosQuestao (arquivo, id_questao) values ( 'Quem criou a linguagem SQL?', 1)
insert into ArquivosQuestao (arquivo, id_questao) values ( 'Para que serve o comando "create database"?', 2)
insert into ArquivosQuestao (arquivo, id_questao) values ( 'Para que serve o SQL server?', 3)
insert into ArquivosQuestao (arquivo, id_questao) values ( 'Para que serve a funcao insert?', 1)
insert into ArquivosQuestao (arquivo, id_questao) values ( 'Para que serve a funcao select? ', 5)
insert into ArquivosQuestao (arquivo, id_questao) values ( 'Para que serve a funcao drop?', 6)


insert into Resposta ( ra_aluno, data_avaliacao, nota, avaliacao, descricao, data_de_envio, id_questao) values (12017, '12-1-2017', '8', 'avaliacao ES', 'prova np2','12-1-2017', 1)
insert into Resposta ( ra_aluno, data_avaliacao, nota, avaliacao, descricao, data_de_envio, id_questao) values (22017, '12-1-2017', '10', 'avaliacao LP1', 'prova np2','12-1-2017', 2)
insert into Resposta ( ra_aluno, data_avaliacao, nota, avaliacao, descricao, data_de_envio, id_questao) values (32017, '12-1-2017', '9', 'avaliacao IOT', 'prova np2','12-1-2017', 3)
insert into Resposta ( ra_aluno, data_avaliacao, nota, avaliacao, descricao, data_de_envio, id_questao) values (42017, '12-1-2017', '9', 'avaliacao SQL', 'prova np2','12-1-2017', 4)
insert into Resposta ( ra_aluno, data_avaliacao, nota, avaliacao, descricao, data_de_envio, id_questao) values (52017, '12-1-2017', '7', 'avaliacao GP', 'prova np2','12-1-2017', 5)


insert into arquivosresposta (arquivo, id_resposta) values ('alternativa A', 1)
insert into arquivosresposta (arquivo, id_resposta) values ('alternativa B', 2)
insert into arquivosresposta (arquivo, id_resposta) values ('alternativa C', 3)
insert into arquivosresposta (arquivo, id_resposta) values ('alternativa D', 4)
insert into arquivosresposta (arquivo, id_resposta) values ('alternativa E', 5)
