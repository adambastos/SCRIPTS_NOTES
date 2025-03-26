TRIGGERS ou GATILHOS
/*São objetos de banco de dados que contêm um conjunto de instruções SQL a serem executadas automaticamente em resposta a eventos específicos, 
como INSERT, UPDATE ou DELETE em uma tabela.*/

/*Eles funcionam como mecanismos automatizados que garantem a execução de regras de negócios, auditoria de dados e integridade referencial sem a necessidade de intervenção manual.*/


CREATE DATABASE TESTE;

CREATE TABLE CLIENTE(
    ID_CLIENTE INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50),
    SEXO ENUM('M', 'F')
);

CREATE TABLE PEDIDOS(
    ID_PEDIDO INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    DATA_HORA DATETIME,
    ACAO VARCHAR(20)
):

CREATE TABLE LOG_PEDIDOS(
    ID_PEDIDO
);