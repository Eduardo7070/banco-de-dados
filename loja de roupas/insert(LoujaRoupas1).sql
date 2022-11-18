--DROP DATABASE bdLojaRoupas1
USE bdLojaRoupas1
INSERT INTO tbCliente(nomeCliente,idadeCliente)
VALUES
	('Eduardo da Silva', 18)
	,('Matheus Souza', 22)
	,('Junior da Silva Pinto', 32)
	,('Kaue Rodrigues', 27)
	,('Renata Carvalho', 45)
	

	SELECT * FROM tbCliente

INSERT INTO tbFuncionario(nomeFuncionario ,idadeFuncionario ,dataAdmissao,salarioFuncionario  )
VALUES
	('Allan Jesus',28,'23/07/22',3000)
	,('Ian Ferreira',30,'13/07/22', 3000)
	,('VIctor Melo ',27,'01/07/22', 3000)
	SELECT * FROM tbFuncionario

INSERT INTO tbFabricante(nomeFabricante)
VALUES
	('Malwee')
	,('Marisol')
	,('Cia da Malha')
	
	
	SELECT * FROM tbFabricante

INSERT INTO tbVendedor(nomeVendedor)
VALUES
	 ('Xarp da Silva Santos')
	,('Peter Gomes de Oliveira')
	
		SELECT * FROM tbVendedor

INSERT INTO tbVenda( dataVenda, codCliente,codVendedor , totalVenda)
VALUES

	( '10/11/2022' ,1,1,10)
	,(  '15/03/2022', 2,1,20)
	,( '16/12/2022', 3,2,50)
	,( '01/05/2022', 4,2,30)
	,( '02/11/2022', 5,2,100)
	
	
	SELECT * FROM tbVenda

INSERT INTO tbProduto(nomeProduto, dataEntradaProduto ,estoqueProduto,codFuncionario ,codFabricante,precoProduto)
VALUES
		('Camisa all black','05/07/2022',10,1,3,10)
		,('calça prata','30/10/2022',30,2,2,20)
		,('camisa Travis Scott','03/07/2022',30,3,1,30)
		,('calça cargo','05/04/2022',30,3,1,40)
		,('top Olográfico','07/07/2022',30,2,2,10)
		,('calça de coro','13/03/2022',30,1,3,20)
		SELECT * FROM tbProduto

INSERT INTO tbItensVenda(codVenda ,codProduto ,quantidadeItens  ,subTotalItens)
VALUES
		(1,1,10,50)
		,(2,3,4,100)
		,(3,2,6,60)
		,(4,6,2,50)
		,(5,5,3,50)
		
		SELECT * FROM tbItensVenda