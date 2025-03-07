/*Função IFNULL*/
/*Supondo que eu tenha muitos campos null na coluna e-mail e eu não queira trazer isso em uma consulta*/
SELECT C.NOME, IFNULL(C.EMAIL, 'NAO TEM EMAIL'), /*Se tiver valor null no campo c.email, substitua por 'NÃO TEM EMAIL'*/
E.ESTADO, T.NUMERO 
FROM CLIENTE C...

