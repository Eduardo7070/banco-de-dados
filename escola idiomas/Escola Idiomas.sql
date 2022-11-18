DROP DATABASE bdEscolaIdiomas

CREATE DATABASE bdEscolaIdiomas

GO

USE bdEscolaIdiomas

CREATE TABLE tbAluno (
	idAluno INT PRIMARY KEY IDENTITY (1,1)
	,nomeAluno VARCHAR (50) NOT NULL
	,rgAluno VARCHAR (12) NOT NULL
	,enderecoAluno VARCHAR (50) NOT NULL
	,numEndAluno VARCHAR (5) NOT NULL
	,compAluno VARCHAR (15)
	,bairroAluno VARCHAR (30) NOT NULL
	,cepAluno CHAR (10) NOT NULL
	,cidadeAluno VARCHAR (35) NOT NULL
)
CREATE TABLE tbFoneAluno (
	idFoneAluno INT PRIMARY KEY IDENTITY (1,1)
	,foneAluno VARCHAR (15) NOT NULL
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
)
CREATE TABLE tbNivel (
	idNivel INT PRIMARY KEY IDENTITY (1,1)
	,descNivel VARCHAR (40) NOT NULL
)
CREATE TABLE tbCurso (
	idCurso INT PRIMARY KEY IDENTITY (1,1)
	,nomeCurso VARCHAR (30) NOT NULL
)
CREATE TABLE tbDiaSemana (
	idDiaSemana INT PRIMARY KEY IDENTITY (1,1)
	,diaSemana VARCHAR (30) NOT NULL
)
CREATE TABLE tbPeriodo (
	idPeriodo INT PRIMARY KEY IDENTITY (1,1)
	,descPeriodo CHAR (5) NOT NULL
)
CREATE TABLE tbTurma (
	idTurma INT PRIMARY KEY IDENTITY (1,1) 
	,horario VARCHAR (5) NOT NULL
	,idCurso INT FOREIGN KEY REFERENCES tbCurso (idCurso)
	,idPeriodo INT FOREIGN KEY REFERENCES tbPeriodo (idPeriodo)
	,idNivel INT FOREIGN KEY REFERENCES tbNivel (idNivel)
	,idDiaSemana INT FOREIGN KEY REFERENCES tbDiaSemana (idDiaSemana)
)
CREATE TABLE tbMatricula (
	idMatricula INT PRIMARY KEY IDENTITY (1,1)
	,dataMatricula SMALLDATETIME  
	,idAluno INT FOREIGN KEY REFERENCES tbAluno (idAluno)
	,idTurma INT FOREIGN KEY REFERENCES tbTurma (idTurma)
)