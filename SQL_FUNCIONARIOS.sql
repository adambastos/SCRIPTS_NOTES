CREATE DATABASE EXERCICIO;

USE EXERCICIO;

Error Code: 1075. Incorrect table definition; there can be only one auto column and it must be defined as a key /*Para o atributo ser AUTO_INCREMENT, ele também precisa ser PRIMARY KEY*/

CREATE TABLE FUNCIONARIOS(
	ID_FUNCIONARIO INT NOT NULL AUTO_INCREMENT,
	NOME VARCHAR(50),
	EMAIL VARCHAR(50),
	SEXO CHAR(1),
	DEPARTAMENTO VARCHAR(50),
	ADMISSAO DATE,
	SALARIO FLOAT,
	CARGO VARCHAR(30),
	REGIAO varchar(20),
    PRIMARY KEY (ID_FUNCIONARIO)
);



INSERT INTO FUNCIONARIOS (NOME, EMAIL, SEXO, DEPARTAMENTO, ADMISSAO, SALARIO, CARGO, REGIAO) VALUES
('Carlos Silva', 'carlos.silva@email.com', 'M', 'TI', '2020-01-15', 4500.00, 'Analista', 'Sudeste'),
('Ana Souza', 'ana.souza@email.com', 'F', 'Recursos Humanos', '2019-05-22', 3200.00, 'Assistente', 'Sul'),
('João Pereira', 'joao.pereira@email.com', 'M', 'Comercial', '2021-03-11', 5100.00, 'Vendedor', 'Nordeste'),
('Maria Santos', 'maria.santos@email.com', 'F', 'Marketing', '2020-06-18', 3700.00, 'Coordenadora', 'Centro-Oeste'),
('Paulo Oliveira', 'paulo.oliveira@email.com', 'M', 'Financeiro', '2018-09-01', 5400.00, 'Gerente', 'Norte'),
('Fernanda Costa', 'fernanda.costa@email.com', 'F', 'TI', '2017-11-05', 4600.00, 'Desenvolvedora', 'Sudeste'),
('Lucas Mendes', 'lucas.mendes@email.com', 'M', 'Recursos Humanos', '2021-02-20', 3100.00, 'Analista', 'Sul'),
('Juliana Lima', 'juliana.lima@email.com', 'F', 'Comercial', '2019-07-10', 4800.00, 'Supervisora', 'Nordeste'),
('Ricardo Almeida', 'ricardo.almeida@email.com', 'M', 'Marketing', '2020-10-08', 3500.00, 'Designer', 'Centro-Oeste'),
('Camila Rocha', 'camila.rocha@email.com', 'F', 'Financeiro', '2022-04-14', 4300.00, 'Analista', 'Norte'),
('Gabriel Fernandes', 'gabriel.fernandes@email.com', 'M', 'TI', '2019-01-15', 4700.00, 'Desenvolvedor', 'Sudeste'),
('Patrícia Carvalho', 'patricia.carvalho@email.com', 'F', 'Recursos Humanos', '2018-12-12', 3000.00, 'Assistente', 'Sul'),
('Marcos Gonçalves', 'marcos.goncalves@email.com', 'M', 'Comercial', '2020-11-22', 5200.00, 'Vendedor', 'Nordeste'),
('Isabela Martins', 'isabela.martins@email.com', 'F', 'Marketing', '2021-05-03', 3900.00, 'Analista', 'Centro-Oeste'),
('Fábio Nogueira', 'fabio.nogueira@email.com', 'M', 'Financeiro', '2017-03-15', 5500.00, 'Coordenador', 'Norte'),
('Bianca Ramos', 'bianca.ramos@email.com', 'F', 'TI', '2020-09-21', 4400.00, 'Desenvolvedora', 'Sudeste'),
('Pedro Araujo', 'pedro.araujo@email.com', 'M', 'Recursos Humanos', '2022-01-10', 3300.00, 'Assistente', 'Sul'),
('Renata Borges', 'renata.borges@email.com', 'F', 'Comercial', '2021-03-30', 5100.00, 'Supervisora', 'Nordeste'),
('Thiago Barros', 'thiago.barros@email.com', 'M', 'Marketing', '2018-08-11', 3600.00, 'Coordenador', 'Centro-Oeste'),
('Larissa Freitas', 'larissa.freitas@email.com', 'F', 'Financeiro', '2019-05-17', 4200.00, 'Analista', 'Norte'),
('André Teixeira', 'andre.teixeira@email.com', 'M', 'TI', '2021-06-05', 4600.00, 'Analista', 'Sudeste'),
('Jéssica Lima', 'jessica.lima@email.com', 'F', 'Recursos Humanos', '2020-07-13', 3100.00, 'Assistente', 'Sul'),
('Rafael Costa', 'rafael.costa@email.com', 'M', 'Comercial', '2019-09-09', 4900.00, 'Vendedor', 'Nordeste'),
('Adriana Pinto', 'adriana.pinto@email.com', 'F', 'Marketing', '2017-04-24', 3800.00, 'Analista', 'Centro-Oeste'),
('Bruno Sousa', 'bruno.sousa@email.com', 'M', 'Financeiro', '2020-11-12', 5000.00, 'Gerente', 'Norte'),
('Aline Ribeiro', 'aline.ribeiro@email.com', 'F', 'TI', '2022-03-08', 4500.00, 'Desenvolvedora', 'Sudeste'),
('Rodrigo Ferreira', 'rodrigo.ferreira@email.com', 'M', 'Recursos Humanos', '2021-09-28', 3400.00, 'Analista', 'Sul'),
('Monica Castro', 'monica.castro@email.com', 'F', 'Comercial', '2018-11-19', 4700.00, 'Supervisora', 'Nordeste'),
('Eduardo Lima', 'eduardo.lima@email.com', 'M', 'Marketing', '2020-02-14', 4000.00, 'Designer', 'Centro-Oeste'),
('Vanessa Cardoso', 'vanessa.cardoso@email.com', 'F', 'Financeiro', '2019-07-05', 5300.00, 'Coordenadora', 'Norte'),
('Gustavo Melo', 'gustavo.melo@email.com', 'M', 'TI', '2021-12-07', 4800.00, 'Analista', 'Sudeste'),
('Daniela Campos', 'daniela.campos@email.com', 'F', 'Recursos Humanos', '2020-08-25', 3200.00, 'Assistente', 'Sul'),
('Felipe Rocha', 'felipe.rocha@email.com', 'M', 'Comercial', '2017-06-18', 5000.00, 'Vendedor', 'Nordeste'),
('Carla Nascimento', 'carla.nascimento@email.com', 'F', 'Marketing', '2021-01-05', 3700.00, 'Coordenadora', 'Centro-Oeste'),
('Luiz Barbosa', 'luiz.barbosa@email.com', 'M', 'Financeiro', '2019-10-31', 5400.00, 'Gerente', 'Norte'),
('Debora Santana', 'debora.santana@email.com', 'F', 'TI', '2020-04-20', 4700.00, 'Desenvolvedora', 'Sudeste'),
('Ronaldo Silva', 'ronaldo.silva@email.com', 'M', 'Recursos Humanos', '2018-03-27', 3300.00, 'Analista', 'Sul'),
('Mariana Duarte', 'mariana.duarte@email.com', 'F', 'Comercial', '2021-07-29', 4900.00, 'Supervisora', 'Nordeste'),
('Alexandre Coelho', 'alexandre.coelho@email.com', 'M', 'Marketing', '2019-12-23', 4100.00, 'Designer', 'Centro-Oeste');

SELECT ID_FUNCIONARIO, NOME, DEPARTAMENTO FROM FUNCIONARIOS WHERE DEPARTAMENTO IN ('TI', 'Recursos Humanos');,

SELECT NOME, EMAIL FROM FUNCIONARIOS WHERE DEPARTAMENTO IN ('Marketing', 'Comercial') AND SEXO = 'F';

SELECT NOME, DEPARTAMENTO, SEXO FROM FUNCIONARIOS WHERE SEXO = 'M' OR DEPARTAMENTO = 'Marketing';

SELECT COUNT(*), DEPARTAMENTO FROM FUNCIONARIOS GROUP BY DEPARTAMENTO ORDER BY 1;

+----------+------------------+
| count(*) | departamento     |
+----------+------------------+
|        7 | Financeiro       |
|        8 | Marketing        |
|        8 | TI               |
|        8 | Comercial        |
|        8 | Recursos Humanos |
+----------+------------------+

SELECT * FROM FUNCIONARIOS WHERE DEPARTAMENTO = 'Marketing' OR DEPARTAMENTO = 'Financeiro'; /*Quando se Trabalha com OR, a segunda condição é opcional, coloca-se na pimeira condição quem tem mais chance de uma saída
verdadeira, pois a segunda opção não será checada nesse caso*/ /*No caso acima, Marketing tem mais chance de uma saída do que Financeiro*/


SELECT COUNT(*), CARGO FROM FUNCIONARIOS GROUP BY CARGO ORDER BY 1; /**/
+----------+----------------+
| COUNT(*) | CARGO          |
+----------+----------------+
|        1 | Desenvolvedor  |
|        2 | Coordenador    |
|        3 | Coordenadora   |
|        3 | Gerente        |
|        3 | Designer       |
|        4 | Supervisora    |
|        4 | Vendedor       |
|        4 | Desenvolvedora |
|        5 | Assistente     |
|       10 | Analista       |
+----------+----------------+

/*Ao se trabalhar com AND (Atender a duas ou mais condições), devemos colocar em primeiro o atributo que que tem menos registros */ > /*Ex: Tenho 10 Analistas e 1 Dev*/
/*Ex: Traga os funcionarios que são desenvolvedores e analistas */
SELECT NOME, DEPARTAMENTO, CARGO FROM FUNCIONARIOS WHERE CARGO IN ('DESENVOLVEDOR', 'ANALISTA');
+-------------------+------------------+---------------+
| NOME              | DEPARTAMENTO     | CARGO         |
+-------------------+------------------+---------------+
| Carlos Silva      | TI               | Analista      |
| Lucas Mendes      | Recursos Humanos | Analista      |
| Camila Rocha      | Financeiro       | Analista      |
| Gabriel Fernandes | TI               | Desenvolvedor |
| Isabela Martins   | Marketing        | Analista      |
| Larissa Freitas   | Financeiro       | Analista      |
| André Teixeira    | TI               | Analista      |
| Adriana Pinto     | Marketing        | Analista      |
| Rodrigo Ferreira  | Recursos Humanos | Analista      |
| Gustavo Melo      | TI               | Analista      |
| Ronaldo Silva     | Recursos Humanos | Analista      |
+-------------------+------------------+---------------+

SELECT COUNT(*), SEXO FROM FUNCIONARIOS GROUP BY SEXO;

/*Funcionarios do sexo masculino ou funcionarios que trabalham no departamento de recursos humanos*/
SELECT COUNT(*), SEXO, DEPARTAMENTO FROM FUNCIONARIOS WHERE DEPARTAMENTO = 'Recursos Humanos' GROUP BY DEPARTAMENTO ORDER BY 1;

SELECT COUNT(*), SEXO FROM FUNCIONARIO

/*Traga a quantidade de pessoas com o sexo 'M' e a quantidade de pessoas que trabalham no departamento 'Recursos Humanos' em apenas uma query.*/
SELECT 
    COUNT(CASE WHEN sexo = 'M' THEN 1 END) AS quantidade_masculino,
    COUNT(CASE WHEN departamento = 'Recursos Humanos' THEN 1 END) AS quantidade_recursos_humanos
FROM 
    funcionarios;
	


















