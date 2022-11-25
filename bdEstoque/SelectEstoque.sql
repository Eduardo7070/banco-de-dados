USE bdEstoque

-- A soma das quantidades dos produtos em estoque que são do fabricante P&G
	SELECT  sum (quantidadeProduto) as  ' Soma P&G '  FROM tbProduto
	WHERE idFabricante =  2

-- A média de preços dos produtos que são da P&G
	SELECT avg(valorProduto) as 'Média dos produtos da P&G' FROM tbProduto
	WHERE idFabricante = 2

-- A soma do preço dos produtos da Unilever
	SELECT sum (valorProduto) as 'Soma Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- O preço médio dos produtos da Bunge
	SELECT avg(valorProduto) as ' Média produtos Bunge' FROM tbProduto
	WHERE idFabricante = 3

-- A soma das quantidades de todos os produtos que são da Bunge
	SELECT sum(quantidadeProduto) as 'Soma produtos bange' FROM tbProduto
	WHERE idFabricante = 3

-- A quantidade média dos produtos da P&G no estoque
	SELECT avg(quantidadeProduto) as 'Média  produtos P&G' FROM tbProduto
	WHERE idFabricante = 2

-- O preço médio dos produtos no estoque cuja quantidade seja inferior a 200
	SELECT avg(valorProduto) as 'Preço média produto menor que 200' FROM tbProduto
	WHERE quantidadeProduto < 200

-- A quantidade média de todos os produtos no estoque que sejam fabricados pela Unilever
	SELECT avg(quantidadeProduto) as 'Média produtos Unilever' FROM tbProduto
	WHERE idFabricante = 1

-- O valor do produto mais barato
	SELECT min(valorProduto) as 'Produto mais barato' FROM tbProduto

-- Quantos itens no estoque são da unilever
	SELECT count(DISTINCT idProduto) as 'Total itens Unilever' FROM tbProduto
	WHERE idFabricante = 1

