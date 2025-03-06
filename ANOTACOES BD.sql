/*NÃO É RECOMENDADO MODELAR O BANCO COM CHAVE PRIMÁRIA SENDO CPF, POR CONTA DE POSSIVELMENTE MUDAREM PARA UM REGISTRO ÚNICO GERAL, UNIFICANDO RG, CPF, CNH... */

/*CLIENTE (1, >1<) > ENDERECO (1, >1<) = LÊ a partir da segunda posição > Aqui 1 cliente pode ter no máximo 1 endereço [1 pra um]. O (>1<, 1) EM ENDEREÇO indica que é obrigatório o cliente ter pelo menos um endereço. 
/*CLIENTE (1, >1<) > TELEFONE (0, >n<) = Um cliente pode ter N telefones, mas não é obrigatório ter telefone, pois o (>0<, n) em TELEFONE indica a não obrigação.
/*A primeira coluna indica OBRIGATORIEDADE, a segunda indica CARDINALIDADE

DML - Data Manipulation LANGUAGE
DDL - Data Definition LANGUAGE
DCL - DATA CONTROL LANGUAGE
TCL - TRANSACTION CONTROL LANGUAGE



