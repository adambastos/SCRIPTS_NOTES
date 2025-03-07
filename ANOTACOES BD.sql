/*NÃO É RECOMENDADO MODELAR O BANCO COM CHAVE PRIMÁRIA SENDO CPF, POR CONTA DE POSSIVELMENTE MUDAREM PARA UM REGISTRO ÚNICO GERAL, UNIFICANDO RG, CPF, CNH... */

/*CLIENTE (1, >1<) > ENDERECO (1, >1<) = LÊ a partir da segunda posição > Aqui 1 cliente pode ter no máximo 1 endereço [1 pra um]. O (>1<, 1) EM ENDEREÇO indica que é obrigatório o cliente ter pelo menos um endereço. 
/*CLIENTE (1, >1<) > TELEFONE (0, >n<) = Um cliente pode ter N telefones, mas não é obrigatório ter telefone, pois o (>0<, n) em TELEFONE indica a não obrigação.
/*A primeira coluna indica OBRIGATORIEDADE, a segunda indica CARDINALIDADE
/*Em relacionamento 1 pra 1, a chave estrangeira sempre fica na tabela mais fraca, dependendo da análise do negócio*/

DML - Data Manipulation LANGUAGE
INSERT / UPDATE / DELETE / SELECT 

DDL - Data Definition LANGUAGE - 
CREATE / ALTER / DROP / TRUNCATE > Remove todos os registros de uma tabela, mas mantém a estrutura da tabela.

DCL - DATA CONTROL LANGUAGE
TCL - TRANSACTION CONTROL LANGUAGE

SELEÇÃO - SELECT ... WHERE > A seleção filtra linhas (tuplas) de uma tabela com base em uma condição específica.
SELECT * FROM tabela WHERE condição;

PROJEÇÃO - Retorna um subconjunto de colunas da tabela original, mantendo todas as linhas (SEM CONDIÇÃO)

A função TRUNCATE(VALOR, CASAS DECIMAIS) é utilizada para cortar números decimais, sem arredondamento. Diferente do TRUNCATE TABLE







