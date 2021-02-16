SELECT tb_personagem.nome, tb_personagem.nivel, tb_personagem.raca, tb_classe.nomeDaClasse
FROM tb_personagem
INNER JOIN tb_classe
ON tb_classe_idtb_classe = tb_classe.idtb_classe;