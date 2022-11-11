CREATE DATABASE bdSistemaAcadêmico

USE bdSistemaAcadêmico

CREATE TABLE tbDisciplina(
	idDisciplina INT PRIMARY KEY IDENTITY (1,1)
	,nomeDisciplina VARCHAR (30) NOT NULL
	,cargaHorariaDisciplina INT NOT NULL
)
CREATE TABLE tbAtribuicao(
	idAtribuicao INT PRIMARY KEY IDENTITY (1,1)
	,dataAtribuicao SMALLDATETIME NOT NULL
	,idProfessor INT 
	,idTurma INT 
	,idDisciplina INT 
)
CREATE TABLE tbProfessor(
	idProfessor INT PRIMARY KEY IDENTITY (1,1)
	,nomeProfessor VARCHAR (100)  NOT NULL
	,dtNascProf  SMALLDATETIME NOT NULL
	,rgProfessor VARCHAR (10) NOT NULL
)
CREATE TABLE tbMatricula(
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,idAluno INT
	,idTurmaMatricula INT 
	,dtMatricula SMALLDATETIME 
)
CREATE TABLE tbTurma(
	idTurma INT FOREIGN KEY REFERENCES 
	,descricaoTurma 
)
