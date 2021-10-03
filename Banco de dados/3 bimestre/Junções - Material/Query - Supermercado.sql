-- 1) Quantos produtos pertencem ao segmento de Higiene? 
select count(*) from segmento 
where segmento.descsegmproduto = "Higiene";

-- 2) Quais são os produtos que pertencem ao segmento de Higiene? 
select produto.descproduto
from produto
inner join segmento on segmento.idsegmproduto = produto.idproduto
where segmento.descsegmproduto = "Higiene";

-- 3) Quantos produtos são vendidos em Litros? 
select produto.descproduto
from produto
inner join unidmedida on unidademedida.idu
-- 4) Quais os produtos que são vendidos em Litros? 
-- 5) Quantos produtos existem nos segmentos de Hortifruti e Carnes? 
-- 6) Quantos produtos são vendidos em Litros? 
-- 7) Quantos produtos são vendidos em Gramas e Kilos? 
-- 8) Quais são os produtos vendidos em Gramas e Kilos? 
-- 9) Quantos produtos existem no segmento de Mercearia vendidos em gramas? 
-- 10) Quantos produtos existem nos segmentos de Mercearia e Bebidas vendidos em litros? 
-- 11) Quais são os produtos existentes nos segmentos de Higiene e Limpeza, vendidos em Rolos e Unidades? 
-- 12) Quais são os segmentos que possuem produtos vendidos em Gramas? 
-- 13) Quais são os segmentos que possuem produtos vendidos em 300 Gramas? 
-- 14) Quais são os segmentos que possuem produtos vendidos em Gramas? 
-- 15) Quantos produtos existem nos segmentos de Limpeza e Higiene juntos? 
-- 16) Qual a quantidade total de produtos nos segmentos de Higiene, Leite e Carnes? 
-- 17) Exiba o nome, o preço do produto e o segmento de todos os produtos pertencentes ao segmento de Mercearia; 
-- 18)  Exiba o nome, o preço do produto e o segmento de todos os produtos pertencentes ao segmento de Mercearia e Limpeza; 
-- 19) Qual o preço médio dos produtos do segmento de Bebidas vendidos em Litros? Exiba somente o preço médio do produto. 
-- 20) Qual o preço do produto mais caro do segmento de Limpeza? Exiba somente o preço do produto. 
-- 21) Exiba o nome do produto, o preço e o segmento do produto mais caro do segmento de Higiene vendido em Mililitros. 
-- 22) Quais os produtos do segmento de Higiene que precisam ser comprados? Ou seja, quais os produtos do segmento de Higiene apenas, 
-- cuja quantidade seja inferior a 15; 
-- 23) Qual o preço do produto mais caro do segmento de Limpeza? 
-- 24) Qual o preço do produto mais barato do segmento de Higiene? 
-- 25) Qual o preço do produto mais caro do segmento de Limpeza vendido em 
-- Litros? 
-- 26) Qual o preço do produto mais caro vendido em Gramas? 
-- 27) Qual o preço do produto mais barato vendido em 2 litros? 
-- 28) Qual a média de preços dos produtos do segmento de Limpeza vendido 
-- em Litros? 
-- 29) Qual a média de preços dos produtos do segmento de Limpeza e Higiene 
-- e Mercearia, vendido em Litros? 
-- 30) Qual a quantidade de produtos existentes no segmento de Hortifruti? 
-- 31) Qual a quantidade de produtos vendidos em Gramas, Kilos, Litros e 
-- Unidades? 
-- 32) Qual a quantidade de produtos vendidos em 100, 200, 300 e 400 Gramas? 
-- 33) Qual o preço médio dos produtos do segmento de Higiene, Limpeza e 
-- Bebidas, vendidos em 1 Litro? 
-- 34) Qual o preço do produtos mais caro do segmento de Limpeza vendido 
-- em Litros? 
-- 35) Qual o preço do produto mais barato do segmento de Higiene vendido 
-- em rolos? 
-- 36) Quais são os produtos vendidos em Litros e Mililitros? 
-- 37) Quantos são os produtos vendidos em Litros e Mililitros pertencentes ao 
-- segmento de Limpeza? 
-- 38) Quais são os produtos vendidos em 1, 2, 3, e 5 Litros e 200, 300 e 500 
-- Mililitros? 
-- 39) Exiba o preço do produto mais caro e do mais barato pertencente do 
-- segmento de Limpeza? 
-- 40) Quantos produtos existem no segmento de Hortifruti e Carnes? 
 
