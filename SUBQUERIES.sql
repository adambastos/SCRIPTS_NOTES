/*Trabalhando com Subqueries*/

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

/*Trazer o nome e valor de quem menos vendeu em março*/
SELECT NOME, MARCO AS MIN_MARCO 
FROM VENDEDORES 
WHERE MARCO = (SELECT MIN(MARCO) FROM VENDEDORES);
+-----------------+-----------+
| NOME            | MIN_MARCO |
+-----------------+-----------+
| Isabela Almeida |   4000.00 |
+-----------------+-----------+


/*Trazer o nome e valor de quem mais vendeu em março*/
SELECT NOME, MARCO AS MAX_MARCO 
FROM VENDEDORES 
WHERE MARCO = (SELECT MAX(MARCO) FROM VENDEDORES);
+----------------+-----------+
| NOME           | MAX_MARCO |
+----------------+-----------+
| Vinicius Souza |   9700.00 |
+----------------+-----------+

/*Trazer o nome e o valor de quem vendeu acima da média em março*/
SELECT NOME, MARCO AS ACIMA_MEDIA 
FROM VENDEDORES 
WHERE MARCO > (SELECT AVG(MARCO) FROM VENDEDORES);
+------------------+-------------+
| NOME             | ACIMA_MEDIA |
+------------------+-------------+
| Carla Oliveira   |     7000.90 |
| Elisa Souza      |     8200.00 |
| Fernando Lima    |     6600.50 |
| Henrique Rocha   |     7600.30 |
| João Ribeiro     |     8700.00 |
| Mariana Cunha    |     8000.50 |
| Olivia Rodrigues |     9200.00 |
| Pedro Alves      |     6800.20 |
| Samuel Fernandes |     8600.90 |
| Vinicius Souza   |     9700.00 |
+------------------+-------------+

