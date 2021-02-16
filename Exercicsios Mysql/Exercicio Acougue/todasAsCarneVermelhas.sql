SELECT db_cidade_das_carnes.tb_produto.nome AS Peça, tb_produto.preco AS Preço, tb_categoria.nomeDaCategoria AS "Tipo de Carne"
FROM db_cidade_das_carnes.tb_produto
INNER JOIN db_cidade_das_carnes.tb_categoria
ON tb_categoria_idtb_categoria = db_cidade_das_carnes.tb_categoria.idtb_categoria
WHERE tb_categoria.nomeDaCategoria LIKE "Carne Vermelha";