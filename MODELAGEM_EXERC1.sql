/*CLIENTE (1, >1<) > ENDERECO (1, >1<) = LÊ a partir da segunda posição > Aqui 1 cliente pode ter no máximo 1 endereço [1 pra um]. O (>1<, 1) EM ENDEREÇO indica que é obrigatório o cliente ter pelo menos um endereço.*/
/*CLIENTE (1, >1<) > TELEFONE (0, >n<) = Um cliente pode ter N telefones, mas não é obrigatório ter telefone, pois o (>0<, n) em TELEFONE indica a não obrigação.*/
/*A primeira coluna indica OBRIGATORIEDADE, a segunda indica CARDINALIDADE*/

/*No relacionamento (1, 1) a chave estrangeira fica na tabela mais fraca, no caso ENDERECO. "O que é mais importante, cadastrar o cliente ou o endereço do cliente?" */
/*No relacionamento (1, n) a chave estrangeira fica na tabela de CARDINALIDADE n. Não faz sentido a chave de telefone ir para cliente.*/ 

/*Como o cliente só pode ter um endereço, OBRIGATORIAMENTE, Defino o campo referenciado como UNIQUE, pois não pode haver o mesmo id de cliente para mais de um endereço diferente*/


CREATE DATABASE PESSOA;
USE PESSOA;

CREATE TABLE CLIENTE(
	ID_CLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR(60) NOT NULL,
	EMAIL VARCHAR(50) UNIQUE, /*UNIQUE diz que o valor da coluna não pode se repetir, mas pode ser deixado em branco, ao contrário no NOT NULL*/
	SEXO ENUM('M', 'F') NOT NULL,
	CPF VARCHAR(16) UNIQUE
);


CREATE TABLE ENDERECO(
	ID_ENDERECO INT PRIMARY KEY AUTO_INCREMENT,
	BAIRRO VARCHAR(60) NOT NULL,
	RUA VARCHAR(60) NOT NULL,
	NUM INT NOT NULL,
	CIDADE VARCHAR(40) NOT NULL,
	UF CHAR(2) NOT NULL,
	ID_CLIENTE INT UNIQUE, 
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(ID_CLIENTE)
);

CREATE TABLE TELEFONE(
	ID_TELEFONE INT PRIMARY KEY AUTO_INCREMENT,
	TIPO ENUM('RES', 'COM', 'CEL') NOT NULL,
	DDD VARCHAR(5) NOT NULL,
	NUMERO VARCHAR(10) NOT NULL,
	ID_CLIENTE INT,
	FOREIGN KEY(ID_CLIENTE)
	REFERENCES CLIENTE(ID_CLIENTE)
);

/*JOIN CLIENTE / ENDERECO. Traz os dados do cliente com seu respectivo endereço*/
SELECT 
    C.ID_CLIENTE,
    C.NOME,
    C.EMAIL,
    E.BAIRRO,
    E.RUA,
    E.NUM,
    E.CIDADE,
    E.UF,
	E.ID_CLIENTE
FROM 
    CLIENTE C
JOIN 
    ENDERECO E 
ON 
    C.ID_CLIENTE = E.ID_CLIENTE;



SELECT C.ID_CLIENTE, C.SEXO, C.EMAIL, T.DDD, T.NUMERO, E.CIDADE, E.UF FROM CLIENTE C
JOIN ENDERECO E ON C.ID_CLIENTE = E.ID_CLIENTE
JOIN TELEFONE T ON C.ID_CLIENTE = T.ID_CLIENTE;