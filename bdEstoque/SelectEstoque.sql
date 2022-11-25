USE bdEstoque

-- A soma das quantidades dos produtos em estoque que s�o do fabricante P&G
	SELECT  sum (quantidadeProduto) as  ' Soma P&G '  FROM tbProduto
	WHERE idFabricante =  2

-- A m�dia de pre�os dos produtos que s�o da P&G
	SELECT avg(valorProduto) as 'M�dia dos produtos da P&G' FROM tbProduto
	WHERE idFabricante = 2

-- A soma do pre�o dos produtos da Unilever
	SELECT sum (valorProduto) as 'Soma Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- O pre�o m�dio dos produtos da Bunge
	SELECT avg(valorProduto) as ' M�dia produtos Bunge' FROM tbProduto
	WHERE idFabricante = 3

-- A soma das quantidades de todos os produtos que s�o da Bunge
	SELECT sum(quantidadeProduto) as 'Soma produtos bange' FROM tbProduto
	WHERE idFabricante = 3

-- A quantidade m�dia dos produtos da P&G no estoque
	SELECT avg(quantidadeProduto) as 'M�dia  produtos P&G' FROM tbProduto
	WHERE idFabricante = 2

-- O pre�o m�dio dos produtos no estoque cuja quantidade seja inferior a 200
	SELECT avg(valorProduto) as 'Pre�o m�dia produto menor que 200' FROM tbProduto
	WHERE quantidadeProduto < 200

-- A quantidade m�dia de todos os produtos no estoque que sejam fabricados pela Unilever
	SELECT avg(quantidadeProduto) as 'M�dia produtos Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- O valor do produto mais barato
	SELECT min(valorProduto) as 'Produto mais barato' FROM tbProduto

-- Quantos itens no estoque s�o da unilever
	SELECT count(DISTINCT idProduto) as 'Total itens Unilever' FROM tbProduto
	WHERE idFabricante = 1

