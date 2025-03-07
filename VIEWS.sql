/*Views são tabelas virtuais em bancos de dados relacionais. Consulta pré definida e armazenada no banco de dados*/

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

/*Criando uma View para trazer apenas o endereco dos clientes que moram em SP*/
CREATE VIEW CLIENTES_SP AS 
SELECT ID_ENDERECO, BAIRRO, CIDADE 
FROM ENDERECO 
WHERE CIDADE = 'São Paulo';

/*Excluir a VIEW*/
DROP VIEW CLIENTES_SP;

/*Não consigo fazer insert nem delete em VIEW com JOIN, mas consigo fazer UPDATE*/
/**/

