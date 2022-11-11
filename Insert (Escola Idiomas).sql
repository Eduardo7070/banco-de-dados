DROP DATABASE bdEscolaIdiomas

USE bdEscolaIdiomas

INSERT INTO tbAluno (nomeAluno, rgAluno, enderecoAluno, numEndAluno, compAluno, bairroAluno, cepAluno, cidadeAluno)
VALUES
		('Kauê Rodrigues da Cruz Leite', '52.006.752-5', 'Rua Osvaldo Souto de Oliveira', '276', 'Bloco 3 Ap 1', 'São Miguel', '08042-530', 'São Paulo')
		,('Lara Silva', '34.053.790-6', 'Rua Alcio Carneiro de Lima', '131', 'Bloco 3 Ap 2', 'Jardim Robru', '07024-430', 'São Paulo')
		,('Nicoly Dos Santos Silva', '67.032.892-8', 'Rua Ribeirão das Furnas', '210', 'Bloco 2 Ap 1', 'Jardim São Paulo', '80042-350', 'São Paulo')
		,('Babu Santana', '66.072.423-7', 'Rua Miguel Ancheolli da Fonseca', '3', 'Bloco 2 Ap 1', 'Lajeado', '42080-305', 'Guaianases')
		,('Peter Oliveira Gomes', '12.065.256-4', 'Rua Ermelino Matarazzo', '22', 'Bloco 5 Ap 6', 'Chabilandia', '60024-035', 'Ribeirão Preto')
		,('Marcus Calvo Santana', '51.600.562-6', 'Rua Manoel Feio', '13', 'Bloco 4 Ap 1', 'Roseira', '32004-432', 'São Paulo')
SELECT * FROM tbAluno

INSERT INTO tbFoneAluno (foneAluno,idAluno)
VALUES
		('11988503140', '1')
		,('11985183773','1')
		,('11985183774','2')
		,('11985183775', '2')
		,('11985183776', '3')
		,('11985183777', '3')
		,('11985183778', '4')
		,('11985183779', '4')
		,('11985183722', '5')
		,('11985183744', '5')
		,('11985183733', '6')
		,('11985183722', '6')

SELECT * FROM tbFoneAluno 

INSERT INTO tbNivel (descNivel)
VALUES
		('Iniciante')
		,('Intermediário')
		,('Fluente')

SELECT * FROM tbNivel

INSERT INTO tbCurso (nomeCurso)
VALUES
		('Espanhol')
		,('Inglês')
		,('Alemão')
SELECT * FROM tbCurso

INSERT INTO tbDiaSemana (diaSemana)
VALUES 
	('Segunda')
	,('Terça')
	,('Quarta')
	,('Quinta')
	,('Sexta')
	,('Sábado')
SELECT * FROM tbDiaSemana

INSERT INTO tbPeriodo (descPeriodo)
VALUES
		('Manhã')
		,('Tarde')
		,('Noite')
SELECT * FROM tbPeriodo

INSERT INTO tbTurma (horario, idCurso, idPeriodo, idNivel, idDiaSemana)
VALUES
		('15:00', 1, 2, 2,  5)
		,('14:00', 1, 2, 3, 6)
		,('07:00', 2, 2, 1, 4)
		,('15:00', 3, 1, 3, 3)
		,('15:00', 1, 2, 2, 5)
SELECT * FROM tbTurma 

INSERT INTO tbMatricula (dataMatricula, idAluno, idTurma)
VALUES
		('15/01/2020', 1, 1)
		,('20/01/2022', 1, 2)
		,('15/02/2020', 2, 3)
		,('20/02/2022', 2, 4)
		,('15/03/2020', 3, 5)
		,('20/03/2022', 3, 2)
		,('15/04/2020', 4, 1)
		,('20/04/2022', 4, 3)
		,('15/05/2020', 5, 4)
		,('20/05/2022',5, 5)
		,('15/06/2020', 6, 1)
		,('20/06/2022', 6, 3)
	
SELECT * FROM tbMatricula 