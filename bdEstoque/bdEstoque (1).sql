CREATE DATABASE bdEstoque

USE bdEstoque

DROP DATABASE bdEstoque

CREATE TABLE tbCliente(
idCliente INT NOT NULL PRIMARY KEY IDENTITY (1,1)
,nomeCliente VARCHAR (70) NOT NULL
,cpfCliente CHAR (11)
,emailCliente VARCHAR (100)
,sexoCliente CHAR (1)
,dtNascCliente SMALLDATETIME NOT NULL
)

CREATE TABLE tbVenda(
idVenda INT NOT NULL PRIMARY KEY IDENTITY (1,1)
,dataVenda SMALLDATETIME NOT NULL
,valorTotalVenda SMALLMONEY NOT NULL
,idCliente INT FOREIGN KEY REFERENCES 
tbCliente(idCliente)
)

CREATE TABLE tbFabricante(
idFabricante INT NOT NULL PRIMARY KEY IDENTITY (1,1)
,nomeFabricante VARCHAR (70) NOT NULL
)

CREATE TABLE tbFornecedor(
idFornecedor INT NOT NULL PRIMARY KEY IDENTITY (1,1)
,nomeFornecedor VARCHAR (90) NOT NULL
,contatoFornecedor VARCHAR (50) NOT NULL
)

CREATE TABLE tbProduto(
idProduto  INT NOT NULL PRIMARY KEY IDENTITY (1,1)
,descricaoProduto VARCHAR (50) NOT NULL
,valorProduto SMALLMONEY NOT NULL
,quantidadeProduto INT NOT NULL
,idFabricante INT FOREIGN KEY REFERENCES 
tbFabricante(idFabricante)
,idFornecedor INT FOREIGN KEY REFERENCES 
tbFornecedor(idFornecedor)
)

CREATE TABLE tbItensVenda(
idItensVenda INT NOT NULL PRIMARY KEY IDENTITY (1,1)
,idVenda INT FOREIGN KEY REFERENCES 
tbVenda(idVenda)
,idProduto INT FOREIGN KEY REFERENCES 
tbProduto(idProduto)
,quantidadeItensVenda INT NOT NULL
,subTotalItensVenda SMALLMONEY NOT NULL
)