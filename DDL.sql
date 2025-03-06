CREATE TABLE PRODUTO (
NOME VARCHAR(50) NOT NULL,
QUANTIDADE INT NOT NULL,
PRECO FLOAT(10, 2) NOT NULL
); 

/*Alterando o nome da coluna*/
ALTER TABLE nome_da_tabela
CHANGE nome_antigo nome_novo tipo_coluna;

ALTER TABLE produto CHANGE preco val_unit float;


/*Alterando o tipo da coluna*/
ALTER TABLE nome_da_tabela
MODIFY coluna_nome novo_tipo;

/*Adicionando nova coluna*/
ALTER TABLE produto ADD COLUMN CATEGORIA VARCHAR(30);  
ALTER TABLE PRODUTO ADD COLUMN CODIGO VARCHAR(10);






