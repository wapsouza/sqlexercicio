/* 
Vinícius dos reis Oliveira - 1701731
Isaque Felizardo - 1700525
Wallace Paula Souza -  1700251
Kaua Ramirez - 1700652
Natalia Nadgela - 1700653

*/

/* exercicio 1 */ 
SELECT nome, email, ra 
FROM Aluno 
WHERE id_curso = 1;

/* exercicio 2 */ 
SELECT A.nome, A.Ra, Qs.numero, Qs.descricao, R.data_de_envio
FROM questao AS Qs, Aluno AS A, Resposta AS R
WHERE A.id = R.id_questao and R.id = Qs.id;

/* exercicio 3 */

SELECT P.nome, P.email,  COUNT (*) AS 'TOTAL DISCIPLINAS ASSUMIDAS' 
FROM Professor AS P join Turma AS T ON P.id = T.id_professor
GROUP BY P.nome, P.email
HAVING COUNT (T.id_disciplinaofertada) >1
ORDER BY COUNT (T.id_disciplinaofertada);


/* exercicio 4 */ 

SELECT D.nome AS 'NOME DA DISCIPLINA', COUNT (*) AS 'TOTAL DE TURMAS'
FROM Matricula AS M join Turma AS T ON M.id_turma = T.id join DisciplinaOfertada AS DO ON T.id_disciplinaofertada = DO.id join Disciplina AS D ON DO.id_disciplina = D.id
WHERE DO.semestre ='2' and DO.ano = '2017'
GROUP BY D.nome
ORDER BY COUNT (M.id_turma) DESC;

/* exercicio 5 */ 

SELECT COUNT (GETDATE()) AS ' TOTAL ALUNOS MATIRCULADOS'
FROM Aluno AS A join Curso AS C ON C.id = A.id_curso join GradeCurricular AS GC ON C.id = GC.id_curso join CursoTurma AS CT ON CT.id_curso = C.id
WHERE GC.ano = 2017 and GC.semestre = 2 and CT.id_turma =4;

SELECT COUNT (A.nome) AS 'TOTAL DE ALUNOS MATIRCULADOS NO SEMESTRE ATUAL'
FROM Aluno AS A join Curso AS C ON A.id_curso = C.id join GradeCurricular AS GC ON C.id = GC.id_curso join CursoTurma AS CT ON CT.id_curso = C.id
WHERE GC.semestre = 2 and GC.ano = 2017 and CT.id_turma =4;

/* exercicio 6 */ 
SELECT D.Nome 
FROM Disciplina AS D join DisciplinaOfertada AS DI ON (D.id = DI.id_disciplina) join PeriodoDisciplina AS PE ON (D.id = PE.id_disciplina)
join Periodo AS P ON (P.id = PE.id_periodo) join GradeCurricular AS G ON ( G.id = P.id_gradecurricular ) join Curso AS C ON (C.id = G.id_curso) 
WHERE C.sigla = 'SI' AND DI.ano = '2018' AND DI.semestre ='1';


/* exercicio 8*/

SELECT C.nome as 'NOME DO CURSO', COUNT (*) AS 'TOTAL DE ALUNOS'
FROM Curso as C join Aluno as A on C.id = A.id_curso
GROUP BY C.nome;

/* TESTANDO ALGUNS AINDA

 COUNT (T.id_professor) AS 'PROFESSORES QUE DAO AULA NESSE SEMESTRE' */

 /* exercicio 7 */

SELECT DISTINCT COUNT(P.nome) AS 'TOTAL DE PROFESSORES CADASTRADOS'
FROM Professor as P join Turma as T on (P.id = T.id_professor) join DisciplinaOfertada as DO on (T.id_disciplinaofertada = DO.id)
WHERE DO.semestre = 2 and ano = 2017;


/* exercicio 10*/

SELECT C.nome as 'Nome do curso' , GC.id_curso as 'Grade Curricular', GC.semestre as 'Periodo(semestre)', COUNT (*) AS 'Total Disciplinas'
From Curso as C join GradeCurricular as GC on C.id = GC.id_curso join Periodo as P on P.id_gradecurricular = GC.id join PeriodoDisciplina as PD on P.id = PD.id_periodo 
Group By C.nome, GC.id_curso, GC.semestre;
