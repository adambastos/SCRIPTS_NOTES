CREATE DATABASE LIVRARIA;
USE LIVRARIA;


CREATE TABLE LIVROS(
NOME_LIVRO VARCHAR(40),
VALOR_LIVRO FLOAT,
NUMERO_PAG INT,
ANO_PUB INT,
NOME_EDITORA VARCHAR(40),
UF_EDITORA CHAR(2),
NOME_AUTOR VARCHAR(40),
SEXO_AUTOR CHAR(1)
);

INSERT INTO LIVROS (NOME_LIVRO, VALOR_LIVRO, NUMERO_PAG, ANO_PUB, NOME_EDITORA, UF_EDITORA, NOME_AUTOR, SEXO_AUTOR) VALUES
('O Morro dos Ventos Uivantes', 45.99, 300, 2018, 'Editora Cultura', 'SP', 'Emily Brontë', 'F'),
('Dom Casmurro', 39.90, 256, 2015, 'Editora Nacional', 'RJ', 'Machado de Assis', 'M'),
('1984', 49.90, 328, 2021, 'Editora Futuro', 'SP', 'George Orwell', 'M'),
('Orgulho e Preconceito', 34.50, 368, 2019, 'Literarte', 'RJ', 'Jane Austen', 'F'),
('O Pequeno Príncipe', 29.99, 96, 2020, 'Editora Cultura', 'SP', 'Antoine de Saint-Exupéry', 'M'),
('A Revolução dos Bichos', 27.50, 112, 2016, 'Editora Futuro', 'SP', 'George Orwell', 'M'),
('Cem Anos de Solidão', 55.00, 422, 2017, 'Editora Real', 'MG', 'Gabriel García Márquez', 'M'),
('Senhor dos Anéis', 89.90, 1178, 2019, 'Editora Aventura', 'RS', 'J.R.R. Tolkien', 'M'),
('A Arte da Guerra', 24.90, 128, 2022, 'Estratégia Ltda', 'RJ', 'Sun Tzu', 'M'),
('Moby Dick', 44.50, 720, 2018, 'Editora Oceanos', 'SP', 'Herman Melville', 'M'),
('O Alquimista', 39.90, 208, 2020, 'Editora Sonhos', 'RJ', 'Paulo Coelho', 'M'),
('O Apanhador no Campo de Centeio', 31.00, 214, 2021, 'Literarte', 'SP', 'J.D. Salinger', 'M'),
('Grande Sertão: Veredas', 59.90, 624, 2015, 'Editora Real', 'MG', 'Guimarães Rosa', 'M'),
('O Hobbit', 47.99, 310, 2021, 'Editora Aventura', 'RS', 'J.R.R. Tolkien', 'M'),
('Mulheres que Correm com os Lobos', 58.50, 576, 2019, 'Editora Essência', 'SP', 'Clarissa Pinkola Estés', 'F'),
('Drácula', 33.90, 418, 2020, 'Editora Fantasia', 'RJ', 'Bram Stoker', 'M'),
('As Crônicas de Nárnia', 74.90, 768, 2022, 'Editora Aventura', 'RS', 'C.S. Lewis', 'M'),
('O Nome da Rosa', 52.00, 536, 2016, 'Editora História', 'MG', 'Umberto Eco', 'M'),
('A Metamorfose', 19.99, 104, 2020, 'Editora Reflexão', 'RJ', 'Franz Kafka', 'M'),
('O Diário de Anne Frank', 38.90, 352, 2021, 'Editora Memória', 'SP', 'Anne Frank', 'F');


SELECT * FROM LIVROS;

SELECT NOME_LIVRO, NOME_EDITORA FROM LIVROS;

SELECT NOME_LIVRO, UF_EDITORA FROM LIVROS WHERE SEXO_AUTOR = "M";

SELECT NOME_LIVRO, NUMERO_PAG FROM LIVROS WHERE SEXO_AUTOR = "F";

SELECT VALOR_LIVRO FROM LIVROS WHERE UF_EDITORA = "SP";

SELECT NOME_AUTOR, SEXO_AUTOR, UF_EDITORA FROM LIVROS WHERE UF_EDITORA IN ('SP', 'RJ');