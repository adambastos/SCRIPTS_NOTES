CREATE DATABASE VENDAS;

CREATE TABLE VENDAS(
ID_VENDEDOR INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
NOME VARCHAR(50),
SEXO ENUM('M', 'F'),
EMAIL VARCHAR(40),
QNT_VENDAS FLOAT
);

/*É possível ordenar por colunas quiser*/
SELECT * FROM VENDAS 
GROUP BY SEXO, QNT_VENDAS;

+-------------+--------------------+------+---------------------------+------------+
| ID_VENDEDOR | NOME               | SEXO | EMAIL                     | QNT_VENDAS |
+-------------+--------------------+------+---------------------------+------------+
|          10 | João Victor        | M    | joaovictor@email.com      |       12.1 |
|          22 | André Luiz         | M    | andreluiz@email.com       |       13.9 |
|           8 | Henrique Pereira   | M    | henriquep@email.com       |       16.9 |
|          20 | Vinicius Rocha     | M    | viniciusrocha@email.com   |       17.7 |
|           6 | Felipe Costa       | M    | felipecosta@email.com     |       20.8 |
|          18 | Samuel Castro      | M    | samuelcastro@email.com    |       23.2 |
|          30 | Ítalo Santos       | M    | italosantos@email.com     |       24.9 |
|           2 | Bruno Mendes       | M    | brunomendes@email.com     |         25 |
|          14 | Nicolas Gomes      | M    | nicolasgomes@email.com    |       26.3 |
|          26 | Everton Dias       | M    | evertondias@email.com     |       27.5 |
|          28 | Gustavo Lima       | M    | gustavolima@email.com     |       32.8 |
|          12 | Lucas Oliveira     | M    | lucasoliveira@email.com   |       33.8 |
|          24 | César Alves        | M    | cesaralves@email.com      |       34.6 |
|           4 | Daniel Silva       | M    | daniels@email.com         |       35.2 |
|          16 | Paulo Ribeiro      | M    | pauloribeiro@email.com    |       37.9 |
|          27 | Fernanda Gomes     | F    | fernandagomes@email.com   |       10.3 |
|           3 | Camila Rocha       | F    | camilarocha@email.com     |       10.7 |
|          15 | Olivia Fernandes   | F    | oliviafernandes@email.com |       11.6 |
|           5 | Eduarda Lima       | F    | edulima@email.com         |       14.3 |
|          17 | Raquel Almeida     | F    | raquelalmeida@email.com   |         15 |
|          29 | Helena Pereira     | F    | helenapereira@email.com   |       16.1 |
|          25 | Débora Cavalcanti  | F    | deborac@email.com         |       18.2 |
|           1 | Ana Clara          | F    | anaclara@email.com        |       18.5 |
|          13 | Manuela Rodrigues  | F    | manuelar@email.com        |       19.4 |
|          23 | Beatriz Martins    | F    | beatrizmartins@email.com  |       21.4 |
|          11 | Karina Souza       | F    | karinasouza@email.com     |       22.7 |
|           9 | Isabela Santos     | F    | isabelasantos@email.com   |       28.5 |
|          21 | Yasmin Cunha       | F    | yasmincunha@email.com     |       29.1 |
|          19 | Tatiane Barbosa    | F    | tatianebarbosa@email.com  |       30.5 |
|           7 | Gabriela Nunes     | F    | gabriela.nunes@email.com  |         31 |
+-------------+--------------------+------+---------------------------+------------+

CREATE TABLE VENDEDORES(
    ID_VENDEDOR INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(50),
    SEXO ENUM('M', 'F'),
    JANEIRO FLOAT(10, 2),
    FEVEREIRO FLOAT(10, 2),
    MARCO FLOAT(10, 2)
);

INSERT INTO VENDEDORES (NOME, SEXO, JANEIRO, FEVEREIRO, MARCO) VALUES
('Ana Silva', 'F', 5000.00, 5500.00, 6000.00),
('Bruno Santos', 'M', 4500.50, 4800.75, 5200.20),
('Carla Oliveira', 'F', 6200.80, 6500.30, 7000.90),
('Daniel Pereira', 'M', 3800.25, 4000.50, 4300.75),
('Elisa Souza', 'F', 7500.00, 7800.00, 8200.00),
('Fernando Lima', 'M', 5800.90, 6100.20, 6600.50),
('Gabriela Costa', 'F', 4200.75, 4500.00, 4900.25),
('Henrique Rocha', 'M', 6800.50, 7100.80, 7600.30),
('Isabela Almeida', 'F', 3500.00, 3700.50, 4000.00),
('João Ribeiro', 'M', 8000.00, 8300.00, 8700.00),
('Karina Barbosa', 'F', 5500.20, 5800.50, 6300.80),
('Lucas Mendes', 'M', 4800.75, 5100.00, 5400.25),
('Mariana Cunha', 'F', 7200.90, 7500.20, 8000.50),
('Nelson Gomes', 'M', 3900.25, 4200.75, 4600.00),
('Olivia Rodrigues', 'F', 8500.00, 8800.00, 9200.00),
('Pedro Alves', 'M', 6000.50, 6300.80, 6800.20),
('Raquel Castro', 'F', 4300.75, 4600.00, 5000.50),
('Samuel Fernandes', 'M', 7800.30, 8100.50, 8600.90),
('Tatiana Vieira', 'F', 3600.00, 3900.50, 4200.00),
('Vinicius Souza', 'M', 9000.00, 9300.00, 9700.00);

MAX - /*Traz o valor máximo de uma coluna*/
SELECT MAX(FEVEREIRO) AS MAIOR_FEVEREIRO FROM VENDEDORES;
+-----------------+
| MAIOR_FEVEREIRO |
+-----------------+
|         9300.00 |
+-----------------+

MIN - /*Traz o valor mínimo de uma coluna*/
SELECT MIN(FEVEREIRO) AS MENOR_FEVEREIRO FROM VENDEDORES;
+-----------------+
| MENOR_FEVEREIRO |
+-----------------+
|         3700.50 |
+-----------------+

AVG - /*Traz o valor médio de uma coluna*/
SELECT AVG(FEVEREIRO) AS MEDIA_FEVEREIRO FROM VENDEDORES;
+-----------------+
| MEDIA_FEVEREIRO |
+-----------------+
|     6095.314990 |
+-----------------+

SUM - /*Faz a soma de todos os campos da tabela*/
SELECT SUM(JANEIRO) AS TOTAL_JANEIRO FROM VENDEDORES;
+---------------+
| TOTAL_JANEIRO |
+---------------+
|     115907.35 |
+---------------+

/*Quero descobrir qual foi o sexo que mais vendeu em JANEIRO*/
SELECT SEXO, SUM(JANEIRO) AS TOTAL_JANEIRO
FROM VENDEDORES
GROUP BY SEXO;
+------+---------------+
| SEXO | TOTAL_JANEIRO |
+------+---------------+
| M    |      60403.95 |
| F    |      55503.40 |
+------+---------------+

/*Ambos trazem o nome do vendedor que vendeu menos*/
SELECT NOME, MARCO
FROM VENDEDORES 
ORDER BY MARCO ASC
LIMIT 1;

SELECT NOME, MIN(MARCO) AS TOTAL_MARCO
FROM VENDEDORES
GROUP BY MARCO ASC
LIMIT 1;

SELECT NOME, MARCO AS MIN_MARCO 
FROM VENDEDORES 
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);