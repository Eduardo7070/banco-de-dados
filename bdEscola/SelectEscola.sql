USE bdEscola

--  Listar o nome, rg e data de aniversário dos alunos nascidos em SP
SELECT nomeAluno,rgAluno,dataNascimentoAluno FROM tbAluno
			WHERE naturalidadeAluno like 'SP'

--  Listar o nome e o rg dos alunos com o nome começado com P
SELECT nomeAluno,rgAluno FROM tbAluno
			WHERE nomeAluno like 'P%'

--  Listar o nome dos cursos cuja carga horária seja superior a 2000 horas
SELECT nomeCurso,cargaHorariaCurso FROM tbCurso
WHERE cargaHorariaCurso >2000

-- Listar o nome e o rg de todos os alunos que possuem o sobrenome Silva
SELECT nomeAluno,rgAluno FROM tbAluno
		WHERE nomeAluno like '%Silva%'

--  Listar o nome dos alunos e a data de nascimento que fazem aniversário em março
		SELECT nomeAluno, dataNascimentoAluno FROM tbAluno
	WHERE DATEPART(MONTH,dataNascimentoAluno) = 3

--  Listar o código dos alunos e a data de matrícula dos alunos matriculados em maio de qualquer ano
   SELECT idAluno,dataMaticula FROM tbMatricula
   WHERE DATEPART(MONTH,dataMaticula) = 5

--  Listar o código dos alunos matriculados no curso de inglês
  SELECT idTurma AS 'idTurma' FROM tbTurma
WHERE  idCurso = (1)

-- Listar o código dos alunos matriculados na turma 1AA
			SELECT idAluno FROM tbMatricula
			WHERE idTurma = 2

--  Listar todos os dados de todos os alunos
SELECT nomeAluno AS 'Nome' , dataNascimentoAluno AS 'data de nascimento' , rgAluno AS 'RG' , naturalidadeAluno AS'naturalidade' FROM tbAluno

--  Listar todos os dados de todas as turmas
SELECT nomeTurma AS 'nome da turma', idCurso AS 'id do curso',horarioTurma AS 'horario' FROM tbTurma
