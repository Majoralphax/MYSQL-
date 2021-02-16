SELECT db_pizzaria_legal.tb_pizza.sabor AS Sabor, db_pizzaria_legal.tb_categoria.tipoDeAlimento AS "Tipo de Alimento"
FROM db_pizzaria_legal.tb_pizza
INNER JOIN db_pizzaria_legal.tb_categoria
ON tb_categoria_idtb_categoria = tb_categoria.idtb_categoria;