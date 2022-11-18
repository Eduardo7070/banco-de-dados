--DROP DATABASE bdLojaRoupas1
CREATE DATABASE bdLojaRoupas1

GO

USE bdLojaRoupas1

	CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeFuncionario VARCHAR (50) NOT NULL
	,idadeFuncionario CHAR (30) NOT NULL
	,dataAdmissao SMALLDATETIME NOT NULL
	,salarioFuncionario SMALLMONEY NOT NULL

)
	CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeCliente VARCHAR (30) NOT NULL
	,idadeCliente TINYINT NOT NULL

)
	CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeFabricante VARCHAR (50) NOT NULL
	
)

	CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeVendedor VARCHAR (50) NOT NULL 
)

	CREATE TABLE tbVenda (
	codVenda INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,dataVenda SMALLDATETIME NOT NULL
	,codVendedor INT FOREIGN KEY REFERENCES tbVendedor (codVendedor)
	,codCliente INT FOREIGN KEY REFERENCES tbCliente (codCliente)
	,totalVenda SMALLMONEY NOT NULL
	
)
	CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,nomeProduto VARCHAR (50) NOT NULL
	,precoProduto SMALLMONEY NOT NULL
	,dataEntradaProduto SMALLDATETIME NOT NULL
	,estoqueProduto SMALLINT NOT NULL
	,codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
	,codFabricante INT FOREIGN KEY REFERENCES tbFabricante (codFabricante)
)

	CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1) NOT NULL
	,codVenda INT FOREIGN KEY REFERENCES tbVenda (codVenda)
	,codProduto INT FOREIGN KEY REFERENCES tbProduto (codProduto)
	,quantidadeItens SMALLINT NOT NULL
	,subTotalItens INT NOT NULL

)