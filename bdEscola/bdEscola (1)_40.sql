CREATE DATABASE bdEscola
USE bdEscola
--DROP DATABASE bdEscola

CREATE TABLE tbCurso(
   idCurso INT PRIMARY KEY IDENTITY (1,1)
   , nomeCurso varchar(40)
   , cargaHorariaCurso INT
   , valorCurso INT
)

CREATE TABLE tbTurma(
   idTurma INT PRIMARY KEY IDENTITY(1,1)
   , nomeTurma VARCHAR(40)
   , idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
   , horarioTurma TIME
)

CREATE TABLE tbAluno(
   idAluno INT PRIMARY KEY IDENTITY (1,1)
   , nomeAluno VARCHAR(50)
   , dataNascimentoAluno DATE
   , rgAluno VARCHAR(17)
   , naturalidadeAluno VARCHAR(40)
)

CREATE TABLE tbMatricula(
 idMatricula INT PRIMARY KEY IDENTITY (1,1)
 , dataMaticula DATE
 , idAluno INT FOREIGN kEY REFERENCES tbAluno(idAluno)
 , idTurma INT FOREIGN kEY REFERENCES tbTurma(idTurma)
)