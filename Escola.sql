CREATE DATABASE bdEscola2

USE bdEscola2

CREATE TABLE tbPeriodo (
	codPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,nomePeriodo VARCHAR (20) NOT NULL
)

CREATE TABLE tbAluno (
	codAluno INT PRIMARY KEY IDENTITY (100,2)
	, nomeAluno VARCHAR (60) NOT NULL
	, dataNascAluno SMALLDATETIME CHECK (dataNascAluno<GETDATE()) NOT NULL
	, ruaAluno VARCHAR (90) NOT NULL
	, numCasaAluno VARCHAR (6) NOT NULL
	, bairroAluno VARCHAR (30) NOT NULL
	, telefoneAluno INT NOT NULL
)

CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (20) NOT NULL UNIQUE
	,cargaHoraria TINYINT NOT NULL
	,codPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (codPeriodo)
	,codAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno)
)

CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1) 
	, dataMatricula SMALLDATETIME DEFAULT  GETDATE() 
	, idAluno INT FOREIGN KEY REFERENCES tbAluno (codAluno) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES  tbCurso (idCurso)
)