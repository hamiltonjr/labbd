/*
SCC0241 - Laboratório de Bases de Dados
Relatório de execução da aula prática 2

Aluno                       Nº USP
Hamilton Gonçalves Jr   1053763
Rafael Souza                  7239301
ID de submissão             7c84143d-d73d-423a-b19b-c9606853912
*/

--Exercício 2 - Item a
--Comentário: Este item consiste na apresentação do esquema da base de dados, especificamente das sequências criadas nesse esquema. Usamos apenas a sequência para criação de chaves para a tabela PARTIDA. O código e a saída no SQL Developer são as seguintes: 

--Código
CREATE SEQUENCE SEQ-PARTIDA;

--Exercício 2 - Item b
--Comentário: Este item consiste na apresentação do esquema da base de dados, especificamente da criação de todas as tabelas.. O código e a saída no SQL Developer são as seguintes: 

--Código
--------------------------------------------------------
--  Deletar todas as tabelas e sequÃªncias: retirar os 
--  sinais de comentÃ¡rios dos comandos abaixo
--------------------------------------------------------

DROP TABLE TECNICO CASCADE CONSTRAINTS;
DROP TABLE TIME CASCADE CONSTRAINTS;
DROP TABLE EMISSORA CASCADE CONSTRAINTS;
DROP TABLE ESTADIO CASCADE CONSTRAINTS;
DROP TABLE CAMPEONATO CASCADE CONSTRAINTS;
DROP TABLE ARBITRO CASCADE CONSTRAINTS;
DROP TABLE JOGADOR CASCADE CONSTRAINTS;
DROP TABLE PARTIDA CASCADE CONSTRAINTS;
DROP TABLE CARTAO_AMARELO CASCADE CONSTRAINTS;
DROP TABLE CARTAO_VERMELHO CASCADE CONSTRAINTS;
DROP TABLE CONTRATO CASCADE CONSTRAINTS;
DROP TABLE GOL CASCADE CONSTRAINTS;
DROP TABLE PATROCINADOR CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_PARTIDA;

--------------------------------------------------------
--  DDL para a tabela ARBITRO
--------------------------------------------------------
CREATE TABLE ARBITRO 
(
  NOME VARCHAR2(30) NOT NULL,
  FUNCAO VARCHAR2(30) NOT NULL,
  IDADE NUMBER NOT NULL,
    
  CONSTRAINT PK_ARBITRO PRIMARY KEY(NOME)
);
   
--------------------------------------------------------
--  DDL para a tabela CAMPEONATO
--------------------------------------------------------
CREATE TABLE CAMPEONATO 
(
  NOME VARCHAR2(30) NOT NULL,
  ANO NUMBER NOT NULL,
  CAMPEAO VARCHAR2(30) NOT NULL, 
  QUANTI_TIME NUMBER NOT NULL,
  RODADAS NUMBER,
    
  CONSTRAINT PK_CAMPEONATO PRIMARY KEY(NOME)
);
   
--------------------------------------------------------
--  DDL para a tabela PATROCINADOR
--------------------------------------------------------
CREATE TABLE PATROCINADOR
(    
  NOME VARCHAR2(30) NOT NULL,
  CIDADE VARCHAR2(30) NOT NULL, 
  UF VARCHAR2(15),
    
  CONSTRAINT PK_PATROCINADOR PRIMARY KEY(NOME)
);

--------------------------------------------------------
--  DDL para a tabela TECNICO
--------------------------------------------------------
CREATE TABLE TECNICO
(    
  NOME VARCHAR2(30) NOT NULL,
      IDADE NUMBER NOT NULL,
    
  CONSTRAINT PK_TECNICO PRIMARY KEY(NOME)
);
   
--------------------------------------------------------
--  DDL para a tabela TIME
--------------------------------------------------------
CREATE TABLE TIME
(    
  NOME VARCHAR2(30) NOT NULL,
  CIDADE VARCHAR2(30) NOT NULL,
  TECNICO VARCHAR2(30) NOT NULL,
    
  CONSTRAINT PK_TIME PRIMARY KEY(NOME),
  CONSTRAINT FK_TIME_TECNICO FOREIGN KEY(TECNICO) REFERENCES TECNICO(NOME)
);
   
--------------------------------------------------------
--  DDL para a tabela CONTRATO
--------------------------------------------------------
CREATE TABLE CONTRATO 
(    
  PATROCINADOR VARCHAR2(30) NOT NULL,
  TIME VARCHAR2(30) NOT NULL, 
  DATA DATE NOT NULL, 
  VIGENCIA NUMBER NOT NULL, 
  VALOR_MES NUMBER NOT NULL,
    
  CONSTRAINT PK_CONTRATO PRIMARY KEY (PATROCINADOR,TIME,DATA),
  CONSTRAINT FK_CONTRATO_PATROCINADOR FOREIGN KEY(PATROCINADOR) REFERENCES PATROCINADOR(NOME),
  CONSTRAINT FK_CONTRATO_TIME FOREIGN KEY(TIME) REFERENCES TIME(NOME)
 );
   
--------------------------------------------------------
--  DDL para a tabela EMISSORA
--------------------------------------------------------
CREATE TABLE EMISSORA 
(    
  NOME VARCHAR2(30) NOT NULL, 
  TIPO VARCHAR2(30) NOT NULL,
    
  CONSTRAINT PK_EMISSORA PRIMARY KEY(NOME)
);
   
--------------------------------------------------------
--  DDL para a tabela ESTADIO
--------------------------------------------------------
CREATE TABLE ESTADIO 
(    
  NOME VARCHAR2(30) NOT NULL, 
  CIDADE VARCHAR2(30) NOT NULL, 
  UF VARCHAR2(15) NOT NULL,

  CONSTRAINT PK_ESTADIO PRIMARY KEY (NOME, CIDADE),
  CONSTRAINT CK_ESTADIO CHECK (UF IN ('AC', 'AL', 'AP', 'AM', 'BA',
     'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 
     'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'))
);
   
--------------------------------------------------------
--  DDL para a tabela JOGADOR
--------------------------------------------------------
CREATE TABLE JOGADOR
(    
   NOME VARCHAR2(30) NOT NULL,
   TIME VARCHAR2(30) NOT NULL, 
   IDADE NUMBER NOT NULL,
    
   CONSTRAINT PK_JOGADOR PRIMARY KEY(NOME),
   CONSTRAINT FK_JOGADOR_TIME FOREIGN KEY(TIME) REFERENCES TIME(NOME)
);
   
--------------------------------------------------------
--  DDL para a sequÃªncia SEQ_PARTIDA
--------------------------------------------------------
CREATE SEQUENCE SEQ_PARTIDA;

--------------------------------------------------------
--  DDL para a tabela PARTIDA
--------------------------------------------------------
CREATE TABLE PARTIDA 
(    
  ID_PARTIDA NUMBER NOT NULL,
  TIME1 VARCHAR2(30) NOT NULL,
  TIME2 VARCHAR2(30) NOT NULL,
  DATA_PARTIDA DATE NOT NULL,
  CAMPEONATO VARCHAR2(30) NOT NULL,
  PUBLICO_PAGANTE NUMBER NOT NULL,
  GOLS_TIME1 NUMBER NOT NULL,
  GOLS_TIME2 NUMBER NOT NULL,
  ARBITRO1 VARCHAR2(30) NOT NULL,
  BANDEIRA1 VARCHAR2(30) NOT NULL,
  BANDEIRA2 VARCHAR2(30) NOT NULL,
  ARBITRO_AUX VARCHAR2(30) NOT NULL,
  ESTADIO VARCHAR2(30) NOT NULL,
  EMISSORA VARCHAR2(30) NOT NULL,
    
  CONSTRAINT PK_PARTIDA PRIMARY KEY(ID_PARTIDA)    
);
   
--------------------------------------------------------
--  DDL para a tabela GOL
--------------------------------------------------------
CREATE TABLE GOL
(    
   JOGADOR_MARCOU VARCHAR2(30) NOT NULL, 
       QUAL_PARTIDA NUMBER NOT NULL,
    
   CONSTRAINT PK_GOL PRIMARY KEY(JOGADOR_MARCOU, QUAL_PARTIDA),
   CONSTRAINT FK_GOL_JOGADOR_MARCOU FOREIGN KEY(JOGADOR_MARCOU) REFERENCES JOGADOR(NOME),
   CONSTRAINT FK_PARTIDA FOREIGN KEY(QUAL_PARTIDA) REFERENCES PARTIDA(ID_PARTIDA)
);
   
--------------------------------------------------------
--  DDL para a tabela CARTAO_AMARELO
--------------------------------------------------------
CREATE TABLE CARTAO_AMARELO 
(
  JOGADOR_SOFREU VARCHAR2(30) NOT NULL,
  QUAL_PARTIDA NUMBER NOT NULL,
    
  CONSTRAINT PK_CARTAO_AMARELO PRIMARY KEY(JOGADOR_SOFREU, QUAL_PARTIDA),
  CONSTRAINT FK_CARTAO_AMARELO_JOGADOR FOREIGN KEY(JOGADOR_SOFREU) REFERENCES JOGADOR(NOME),
  CONSTRAINT FK_CARTAO_AMARELO_PARTIDA FOREIGN KEY(QUAL_PARTIDA) REFERENCES PARTIDA(ID_PARTIDA)
);
   
--------------------------------------------------------
--  DDL para a tabela CARTAO_VERMELHO
--------------------------------------------------------
CREATE TABLE CARTAO_VERMELHO 
(    
  JOGADOR_SOFREU VARCHAR2(30) NOT NULL,
  QUAL_PARTIDA NUMBER NOT NULL,
    
  CONSTRAINT PK_CARTAO_VERMELHO PRIMARY KEY(JOGADOR_SOFREU, QUAL_PARTIDA),
  CONSTRAINT FK_CARTAO_VERMELHO_JOGADOR FOREIGN KEY(JOGADOR_SOFREU) REFERENCES JOGADOR(NOME),
  CONSTRAINT FK_CARTAO_VERMELHO_PARTIDA FOREIGN KEY(QUAL_PARTIDA) REFERENCES PARTIDA(ID_PARTIDA)
);
   
--------------------------------------------------------
--  Fim do schema
--------------------------------------------------------
--Exercício 3 - Item a
--Comentário: Este item consiste na população das tabelas da base de dados. Seguimos as instruções da prática, que consiste na inclusão de pelo menos 2 tuplas para cada tabela cujo conteúdo tivesse significado semântico. Para atender essa segunda instrução, em alguns casos se mostrou interessante incluir mais de 2 tuplas como se pode observar. O código e a saída no SQL Developer são as seguintes:  

--Código
--Esse arquivo insere pelo menos duas tuplas em cada tabela. Algumas vezes foi 
--necessÃ¡rio inserir mais de duas (como no caso dos Ã¡rbitros que devem ser 
--pelo menos quatro por partida).
   
--Os dados sÃ£o fictÃ­cios. Procurou-se apenas inserir dados com significado 
--semÃ¢ntico.


INSERT INTO EMISSORA VALUES ('Radio Sampa', 'R');
INSERT INTO EMISSORA VALUES ('Radio Minas', 'R');

INSERT INTO ESTADIO VALUES ('MaracanÃ£', 'SÃ£o Paulo', 'SP');
INSERT INTO ESTADIO VALUES ('MineirÃ£o', 'Belo Horizonte', 'MG');

INSERT INTO PATROCINADOR VALUES ('Paulistana Artigos Esportivos', 'SÃ£o Paulo', 'SP');
INSERT INTO PATROCINADOR VALUES ('Mineira Sports', 'Uberaba', 'MG');

INSERT INTO CAMPEONATO VALUES ('Copa SÃ£o Paulo-Minas', 2016, 'Corinthians', 23, 12);
INSERT INTO CAMPEONATO VALUES ('Campeonato Brasileiro', 2016, 'AtlÃ©tico Mineiro', 21, 12);

INSERT INTO ARBITRO VALUES ('Lucas Santana', 'Ã¡rbitro 1', 32);
INSERT INTO ARBITRO VALUES ('Roger Santos', 'bandeira 1', 25);
INSERT INTO ARBITRO VALUES ('Silmara Penha', 'bandeira w', 23);
INSERT INTO ARBITRO VALUES ('Carlos Mota', 'Ã¡rbitro auxiliar', 26);

INSERT INTO TECNICO VALUES ('Carlos Santos', 34);
INSERT INTO TECNICO VALUES ('Murilo Teles', 32);

INSERT INTO TIME VALUES ('Corinthians', 'Sao Paulo', 'Carlos Santos');
INSERT INTO TIME VALUES ('AtlÃ©tico Mineiro', 'Belo Horizonte', 'Murilo Teles');

INSERT INTO CONTRATO VALUES ('Paulistana Artigos Esportivos', 'Corinthians', '01-01-2016', 6, 300000.00);
INSERT INTO CONTRATO VALUES ('Mineira Sports', 'AtlÃ©tico Mineiro', '03-02-2016', 6, 250000.00);

INSERT INTO JOGADOR VALUES ('Juca Borba', 'Corinthians', 22);
INSERT INTO JOGADOR VALUES ('Beto Pontes', 'AtlÃ©tico Mineiro', 23);
INSERT INTO JOGADOR VALUES ('Alex Ribeiro', 'AtlÃ©tico Mineiro', 25);


INSERT INTO PARTIDA VALUES (1, 'Corinthians', 'AtlÃ©tico Mineiro', '01-04-2016', 'Campeonato Brasileiro', 30000, 1, 1, 
                                                        'Lucas Santana', 'Roger Santos', 'Silmara Penha', 'Carlos Mota', 'MaracanÃ£', 'RÃ¡dio Sampa');
INSERT INTO PARTIDA VALUES (2, 'AtlÃ©tico Mineiro', 'Corinthians', '08-04-2016', 'Campeonato Brasileiro', 29300, 1, 1, 
                                                        'Lucas Santana', 'Roger Santos', 'Silmara Penha', 'Carlos Mota', 'MaracanÃ£', 'RÃ¡dio Sampa');

INSERT INTO GOL VALUES ('Juca Borba', 1);
INSERT INTO GOL VALUES ('Beto Pontes', 1);
INSERT INTO GOL VALUES ('Juca Borba', 2);
INSERT INTO GOL VALUES ('Beto Pontes', 2);

INSERT INTO CARTAO_AMARELO VALUES ('Juca Borba', 1);
INSERT INTO CARTAO_AMARELO VALUES ('Beto Pontes', 1);
INSERT INTO CARTAO_AMARELO VALUES ('Juca Borba', 2);
INSERT INTO CARTAO_AMARELO VALUES ('Beto Pontes', 2);

INSERT INTO CARTAO_VERMELHO VALUES ('Juca Borba', 1);
INSERT INTO CARTAO_VERMELHO VALUES ('Beto Pontes', 1);
INSERT INTO CARTAO_VERMELHO VALUES ('Juca Borba', 2);
INSERT INTO CARTAO_VERMELHO VALUES ('Beto Pontes', 2);

-- fim do arquivo DML

--Exercício 3: Item b
--Comentário: Este item consiste em fazer alterações (usando o comando UPDATE) em pelo menos 2 
--(dois) atributos de um conjunto de tuplas (pelo menos duas). Selecionamos as tabelas ARBITRO e GOL. 
--O código e a saída no SQL Developer são as seguintes: 

➔ Código
--tabela ARBITRO inicial
SELECT * FROM ARBITRO;

--alteração do nome do árbitro (condição de localização IDADE=32)
UPDATE ARBITRO SET NOME='Lucas B. Santana' WHERE IDADE=32;

--tabela ARBITRO alterada
SELECT * FROM ARBITRO;

--alteração do nome e função de árbitro (condição de localização NOME='Silmara Penha’)
UPDATE ARBITRO SET NOME='Silmara da Penha', FUNCAO='Arbitro 2' WHERE NOME='Silmara Penha';

--tabela ARBITRO alterada
SELECT * FROM ARBITRO;

--tabela GOL inicial
SELECT * FROM GOL;

--alterações tebela GOL (cond. loc. JOGADOR_MARCOU='Juca Borba' e QUAL_PARTIDA=1 / QUAL_PARTIDA=2)
UPDATE GOL SET JOGADOR_MARCOU='Alex Ribeiro' WHERE (JOGADOR_MARCOU='Juca Borba' AND QUAL_PARTIDA=1);
SELECT * FROM GOL;
UPDATE GOL SET JOGADOR_MARCOU='Alex Ribeiro' WHERE (JOGADOR_MARCOU='Juca Borba' AND QUAL_PARTIDA=2);

--tabela GOL alterada
SELECT * FROM GOL;

--Exercício 4 - Item a
--Comentário
--Este item consiste em fazer alterações (usando o comando ALTER TABLE) no 
--esquema da base de dados. Decidimos acrescentar o salário do técnico de cada 
--time na tabela TECNICO, com restrição de que deve ser no mínimo R$10 mil. 
--Tentamos incluir a cláusula NOT NULL, mas não é possível incluir em tabelas 
--já populadas (esta iniciaria NULL e estaria em conflito direto com essa
--cláusula). 

--OBS: O resultado a ser observado é que a coluna recém-criada tem seus valores nulos e aparece vazia na saída.
--O código e a saída no SQL Developer são as seguintes: 

--Código
--tabela TECNICO antes da alteração
SELECT * FROM TECNICO;

--inclusão do atributo SALARIO na tabela TECNICO
ALTER TABLE TECNICO 
  ADD (SALARIO NUMBER CHECK (SALARIO>=10000)); 

--tabela TECNICO depois da alteração
SELECT * FROM TECNICO;

--Exercício 4 - Item b
--Comentário
--Este item consiste em incluir uma chave secundária em uma tabela qualquer. 
--Como não houve restrições impostas com exceção de que deva fazer sentido, 
--escolhemos a tabela EMISSORA. Essa tabela tem os atributos NOME e TIPO (rádio 
--ou TV). Decidimos incluir CIDADE como chave secundária, visto que pode haver 
--emissoras com o mesmo nome em cidades distintas. 

--Em pesquisa descobrimos que a melhor maneira (ou a única) é excluir a chave 
--primária simples e incluir a chave composta (com a secundária). O código e a 
--saída no SQL Developer são as seguintes: 

--Código
--tabela EMISSORA antes da alteração
SELECT * FROM EMISSORA;

--inclusão do atributo CIDADE na tabela EMISSORA
ALTER TABLE EMISSORA
  ADD (CIDADE VARCHAR2(30));

--tabela EMISSORA após a alteração
SELECT * FROM EMISSORA;

--inclusão das cidades para que a alteração de chave seja efetivada
UPDATE EMISSORA SET CIDADE='São Paulo' WHERE NOME='Radio Sampa';
UPDATE EMISSORA SET CIDADE='Belo Horizonte' WHERE NOME='Radio Minas';

--tabela EMISSORA após a alteração (inclusão das cidades)
SELECT * FROM EMISSORA;

--mudança da chave da tabela EMISSORA para uma chave composta com CIDADE 
ALTER TABLE EMISSORA
DROP CONSTRAINT PK_EMISSORA;

ALTER TABLE EMISSORA
ADD CONSTRAINT PK_EMISSORA PRIMARY KEY (NOME, CIDADE);

--tabela EMISSORA após a alteração (nenhuma mudança visível aqui)
SELECT * FROM EMISSORA;

--uso do comando DESC para descrever 
DESC ALL_CONS_COLUMNS;

--Exercício 4 - Item c

--Comentário
--Este item consiste em escolher uma tabela com chave primária simples (definida 
--por apenas um atributo) referenciada por uma chave estrangeira em outra tabela 
--e tentar remover essa chave usando ou não CASCADE para excluir. Na tentativa de 
--excluir a chave primária da tabela PARTIDA, obtemos mensagem de erro explicando 
--que era impossível "exluir uma coluna-chave mãe". Usando CASCADE retorna que a 
--cláusula CONSTRAINT não foi encontrada.

--O código e a saída no SQL Developer são as seguintes: 

--Código
--tentativa de excluir a chave primária da tabela PARTIDA
ALTER TABLE PARTIDA
  DROP COLUMN ID_PARTIDA;
  
--tentativa de excluir a chave primária da tabela PARTIDA (usando CASCADE)
ALTER TABLE PARTIDA
  DROP COLUMN ID_PARTIDA CASCADE;

--Exercício 4 - Item d

--Comentário
--Este item consiste em escolher uma tabela que tenha CHECK (escolhemos ESTADIO) 
--e desativar a restrição, inserir uma tupla que viole a restrição e depois 
--reativar a restrição pra ver o que acontece por conta de dados já inseridos 
--que violem a restrição. O que ocorreu foi o seguinte: a restrição foi excluída 
--e uma tupla que viola a restrição foi inserida na tabela sem nenhum problema. 
--Ao temtar retornar a restrição, o Oracle DB recusou o comando, dizendo "não 
--ser possível validar a restrição". 

--O código e a saída no SQL Developer são as seguintes: 

--Código
--mostra a tabela antes da alteração
SELECT * FROM ESTADIO;

--exclui a restrição
ALTER TABLE ESTADIO
  DROP CONSTRAINT CK_ESTADIO;

--insere uma tupla com Estado inexistente
INSERT INTO ESTADIO VALUES
  ('Estádio Mágico', 'Tão tão distante', 'SK');

--mostra a tabela com a tupla que viola a restrição devidamente inserida
SELECT * FROM ESTADIO;

--tenta retornar a restrição: erro  
ALTER TABLE ESTADIO
  ADD CONSTRAINT CK_ESTADIO CHECK (UF IN ('AC', 'AL', 'AP', 'AM', 'BA',
  'CE', 'DF', 'ES', 'GO', 'MA', 'MT', 'MS', 'MG', 'PA', 'PB', 'PR', 
  'PE', 'PI', 'RJ', 'RN', 'RS', 'RO', 'RR', 'SC', 'SP', 'SE', 'TO'));

