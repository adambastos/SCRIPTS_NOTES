/*Criando tabela*/
CREATE TABLE CLIENTE(
CPF char(11) NOT NULL,
NOME varchar(40) NOT NULL,
EMAIL varchar(30),
SEXO char(1),
TELEFONE varchar(20),
ENDERECO varchar(100)
);

/*INSERT*/
INSERT INTO CLIENTE(CPF, NOME, EMAIL, SEXO, TELEFONE, ENDERECO)
VALUES 
(12345678901, 'João da Silva', 'joao.silva@email.com', 'M', '11987654321', 'Rua das Flores, 123, São Paulo, SP'),
(23456789012, 'Maria Oliveira', 'maria.oliveira@email.com', 'F', '21987654321', 'Av. Paulista, 456, São Paulo, SP'),
(34567890123, 'Carlos Souza', 'carlos.souza@email.com', 'M', '31987654321', 'Rua Amazonas, 789, Belo Horizonte, MG'),
(45678901234, 'Ana Costa', 'ana.costa@email.com', 'F', '41987654321', 'Rua Rio Grande, 10, Porto Alegre, RS'),
(56789012345, 'Pedro Martins', 'pedro.martins@email.com', 'M', '51987654321', 'Av. Atlântica, 23, Rio de Janeiro, RJ'),
(67890123456, 'Fernanda Lima', 'fernanda.lima@email.com', 'F', '61987654321', 'Rua Ceará, 45, Brasília, DF'),
(78901234567, 'José Pereira', 'jose.pereira@email.com', 'M', '71987654321', 'Rua Pernambuco, 67, Recife, PE'),
(89012345678, 'Laura Rocha', 'laura.rocha@email.com', 'F', '81987654321', 'Av. Beira Mar, 89, Fortaleza, CE'),
(90123456789, 'Rafael Gomes', 'rafael.gomes@email.com', 'M', '91987654321', 'Rua Bahia, 100, Salvador, BA'),
(11223344556, 'Carla Fernandes', 'carla.fernandes@email.com', 'F', '31987654322', 'Rua Sergipe, 101, Curitiba, PR');

/*Mostrando estrutura da tabela (campos, tipos()...)*/
desc CLIENTE;

/*SELECT > Projeção de tabela / Utilizando ALIAS*/
Select now() as DATA_HORA;
SELECT NOME AS ARROMBADO FROM CLIENTE; /*Virá "ARROMBADO"* em vez de "nome"*/

/*SELECT*/
/*Trazer cliente que tenha SP no ENDERECO*/
SELECT CPF, NOME FROM CLIENTE WHERE ENDERECO LIKE '%SP'
+-------------+----------------+
| CPF         | NOME           |
+-------------+----------------+
| 12345678901 | João da Silva  |
| 23456789012 | Maria Oliveira |
+-------------+----------------+

/*EXERCICIO*/
CREATE TABLE LIVROS(
NOME VARCHAR(30),
EDITORA VARCHAR(30),
UF_EDITORA CHAR(2),
NUM_PAG VARCHAR(4),
VALOR VARCHAR(10),
NOME_AUTOR VARCHAR(40),
SEXO_AUTOR CHAR(1)
);
/*Trazer todos os dados*/
/*Trazer o nome do livro e o nome da editora*/
/*Trazer o nome do livro e a UF dos livros publicados por autores M*/
/*Trazer nome do livro e num de paginas dos livros publicados por autores F*/
/*Trazer valores dos livros das editores de SP*/
/*Trazer dados dos autores do sexo M que tiveram livro publicados por SP ou RJ*/

SELECT * FROM LIVROS;
SELECT NOME, EDITORA FROM LIVROS;
SELECT NOME, UF_EDITORA FROM LIVROS WHERE SEXO_AUTOR = 'M';
SELECT NOME, NUM_PAG FROM LIVROS WHERE SEXO_AUTOR = 'F';
SELECT VALOR FROM LIVROS WHERE UF_EDITORA = 'SP';
SELECT NOME_AUTOR, SEXO_AUTOR FROM LIVROS WHERE SEXO_AUTOR='M' AND UF_EDITORA='SP' OR 'RJ';




