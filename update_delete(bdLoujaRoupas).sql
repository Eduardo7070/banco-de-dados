USE bdLojaRoupas1

UPDATE tbFabricante 
SET nomeFabricante = 'Turma da Malha'
	WHERE nomeFabricante = 'Cia da Malha'
	SELECT*FROM tbFabricante
UPDATE tbVenda
SET totalVenda = totalVenda*0.90
WHERE codCliente = 1
	SELECT * FROM tbVenda


UPDATE tbProduto
SET precoProduto = precoProduto*1.20
WHERE codFabricante = 2
	SELECT * FROM tbProduto


UPDATE tbProduto
SET estoqueProduto = estoqueProduto - 10
WHERE codProduto = 3
	SELECT * FROM tbProduto


DELETE FROM tbItensVenda
WHERE codVenda = 2 AND codItensVenda = 4
	SELECT * FROM tbItensVenda


DELETE FROM tbItensVenda
WHERE codVenda = 3
	SELECT * FROM tbItensVenda


DELETE FROM tbFabricante
WHERE codFabricante = 1

--Deu errado porque o Delete não reconheceu a estrangeira.