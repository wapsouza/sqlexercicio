/* exercicio 1 */ 
SELECT nome, email, ra 
FROM Aluno 
WHERE id_curso = 1;

/* exercicio 2 */ 

SELECT D.Nome 
FROM Disciplina AS D join DisciplinaOfertada AS DI ON (D.id = DI.id_disciplina) join PeriodoDisciplina AS PE ON (D.id = PE.id_disciplina)
join Periodo AS P ON (P.id = PE.id_periodo) join GradeCurricular AS G ON ( G.id = P.id_gradecurricular ) join Curso AS C ON (C.id = G.id_curso) 
WHERE C.sigla = 'SI' AND DI.ano = '2018' AND DI.semestre ='1';


/* exercicio 3 */

SELECT P.nome, P.email,  COUNT (*) AS 'TOTAL DISCIPLINAS ASSUMIDAS' 
FROM Professor as P join Turma as T on P.id = T.id_professor
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
FROM Aluno AS A join Curso AS C ON C.id = A.id_curso join GradeCurricular AS GC ON C.id = GC.id_curso
WHERE GC.ano = 2017 and GC.semestre = 2;

SELECT COUNT (A.nome) AS 'TOTAL DE ALUNOS MATIRCULADOS NO SEMESTRE ATUAL'
FROM Aluno AS A join Curso AS C ON A.id_curso = C.id join GradeCurricular AS GC ON C.id = GC.id_curso
WHERE GC.semestre = 2 and GC.ano = 2017;

/* exercicio 6 */ 
SELECT Qs.numero, Qs.descricao, A.nome, A.Ra,  R.data_de_envio
FROM questao AS Qs, Aluno AS A, Resposta AS R
WHERE A.id = R.id_questao and R.id = Qs.id;

/* exercicio 7 */

SELECT DISTINCT COUNT(P.nome) AS 'TOTAL DE PROFESSORES CADASTRADOS'
FROM Professor as P join Turma as T on (P.id = T.id_professor) join DisciplinaOfertada as DO on (T.id_disciplinaofertada = DO.id)
WHERE DO.semestre = 2 and ano = 2017


;


, COUNT (T.id_professor) AS 'PROFESSORES QUE DAO AULA NESSE SEMESTRE'
