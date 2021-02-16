SELECT tb_personagem.nome AS Nome, tb_personagem.nivel AS Nível, tb_personagem.raca AS Raça, tb_classe.nomeDaClasse AS "Nome Da Classe"
FROM tb_personagem
INNER JOIN tb_classe
ON tb_classe_idtb_classe = tb_classe.idtb_classe
WHERE tb_classe.nomeDaClasse LIKE 'Arqueiro';