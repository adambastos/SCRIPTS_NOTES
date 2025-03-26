/*STORED PROCEDURES*/
São blocos de código SQL armazenados no banco de dados, que podem ser executados repetidamente para realizar operações específicas.

/*ALTERANDO O DELIMITER ANTES DE FAZER UMA PROCEDURE*/
DELIMITER $

/*CRIANDO A PROCEDURA QUE TRAZ O NOME DOS CLIENTES*/
CREATE PROCEDURE NOME_CLIENTE()
BEGIN
    SELECT NOME AS NOME_CLIENTE
    FROM CLIENTE;
END
$

/*RETORNANDO O DELIMITADOR PARA O PADRÃO ANTES DE CHAMAR A PROCEDURE*/
DELIMITER ;

/*CHAMADO A PROCEDURE*/
CALL NOME_CLIENTE();

/*APAGANDO A PROCEDURE*/
DROP PROCEDURE NOME_CLIENTE();

