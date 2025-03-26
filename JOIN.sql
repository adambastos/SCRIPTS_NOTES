/*JOIN de duas tabelas*/
SELECT C.ID_CLIENTE, C.NOME, C.EMAIL, C.SEXO, E.CIDADE, E.UF
FROM CLIENTE C 
INNER JOIN ENDERECO E
ON C.ID_CLIENTE = E.ID_CLIENTE;


/*JOIN de 3 tabelas trazendo o ID_CLIENTE*/
SELECT C.ID_CLIENTE, NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO
FROM CLIENTE C
JOIN ENDERECO E ON C.ID_CLIENTE = E.ID_CLIENTE 
JOIN TELEFONE T ON C.ID_CLIENTE = T.ID_CLIENTE;

SELECT 