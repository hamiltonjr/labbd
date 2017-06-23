/*
SCC0241 - Laboratório de Bases de Dados
Relatório de execução da aula prática 4

Nome No.                USP
Hamilton Gonçalves Jr   1053763
Rafael Souza            7239301
*/

--Exercício 1 - Item a
--Comentário: Nesse exercício  criamos duas conexões as quais chamamos SESSÃO1 e 
--SESSÃO2 e executamos os comandos segundo o roteiro apresentado na prática.
--Iniciamos usando isolamento READ COMMITTED e depois usando isolamento SERIALIZABLE.

--para nível de isolamento READ COMMITTED
--Iniciamos as sessões como recomendado no roteiro (itens i e ii).
--Na sessão 2 incluímos a transação (item iii):
     SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

--Nessa mesma sessão, fazemos a consulta (item iv):
     SELECT JOGADOR FROM F04 INNER JOIN F05
     ON F04.TTIME = F05.TTIMEJ;

--e selecionamos um jogador pra fazer o experimento, a saber, o jogador de registro:
     90000001 Rogério Ceni GOLEIRO São Paulo

--Agora na sessão 1 fizemos as seguinte alteração (item v):
     update f05 set jogador='Rogerio Mito' where cpfj=90000001;

--alterando o nome do goleiro Rogério Ceni para seu "apelido". Repetimos emtão a 
--consulta (item vi) e notamos que a alteração não consta na tabela JOGADOR.
--Por quê? Porque a transação é READ COMMITTED e foi feita em sessões distintas (
--em transações distintas portanto). Nesse nível de isolamento, somente dados 
--consolidados são exibidos. Logo, somente após ocorrer COMMIT na sessão 1 é que a sessão 2 "enxergará" a mudança.

--Dando COMMIT na sessão 1, consolidando assim a alteração (item vii):

COMMIT;

--Repetindo a consulta (item viii) vemos então a alteração feita na sessão 1. Dando COMMIT na sessão 1 (item ix):

COMMIT;

--e fazendo novamente a consulta nada de importante acontece (item x).

--para nível de isolamento SERIALIZABLE
--Agora refizemos todos os itens (de i a x). Iniciamos as sessões 
--como recomendado no roteiro (itens i e ii).
--Na sessão 2 incluímos a transação (item iii):
     SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;

--Nessa mesma sessão, fazemos a consulta (item iv):
     SELECT JOGADOR FROM F04 INNER JOIN F05
     ON F04.TTIME = F05.TTIMEJ;

--e selecionamos um jogador pra fazer o experimento, a saber, o jogador de 
--registro:
     90000001 Rogério Ceni GOLEIRO São Paulo

--Agora na sessão 1 fizemos as seguinte alteração (item v):
     UPDATE F05 SET JOGADORr='Rogerio Mito' WHERE CPFJ=90000001;

--alterando o nome do goleiro Rogério Ceni para seu "apelido". Repetimos emtão 
--a consulta (item vi) e notamos que a alteração não consta na tabela JOGADOR.
--Por quê? Porque a transação é READ COMMITTED e foi feita em sessões distintas 
--(em transações distintas portanto). Nesse nível de isolamento, somente dados 
--consolidados são exibidos. Logo, somente após ocorrer COMMIT na sessão 1 é 
--que a sessão 2 "enxergará" a mudança.

--Dando COMMIT na sessão 1, consolidando assim a alteração (item vii):

COMMIT;

--Repetindo a consulta (item viii) vemos então a alteração feita na sessão 1. Dando COMMIT na sessão 1 (item ix):

COMMIT;

--e fazendo novamente a consulta nada de importante acontece (item x).

--Exercício 2 - Item a
--Comentário
--O relatório solicitado pode ser obtido pela consulta mostrada na seção Código 
--abaixo. Em seguida aparece a view criada.

--Código
--relatório de jogadores que já receberam mais de 1 cartão vermelho
SELECT F05_JOGADOR.JOGADOR, SUM(VERMELHO) "CARTÕES VERMELHOS"
FROM F15_GOLS_CARTOES JOIN F05_JOGADOR
  ON F15_GOLS_CARTOES.CPFJ = F05_JOGADOR.CPFJ
GROUP BY F05_JOGADOR.JOGADOR
HAVING SUM(VERMELHO)>1;

--visão criada para gerar o relatório de cartões vermelhos
CREATE VIEW RELATOIO_CARTOES AS
  SELECT F05_JOGADOR.JOGADOR, SUM(VERMELHO) "CARTÕES VERMELHOS"
  FROM F15_GOLS_CARTOES JOIN F05_JOGADOR
    ON F15_GOLS_CARTOES.CPFJ = F05_JOGADOR.CPFJ
  GROUP BY F05_JOGADOR.JOGADOR
  HAVING SUM(VERMELHO)>1;
  
--consulta usando a visão
SELECT *FROM RELATOIO_CARTOES;


--Exercício 2 - Item b
--Comentário
--Fizemos junção dos dados da tabela F12_PATROCINA com F06_PATROCINADOR (pra obter o nome do patrocinador e não somente o IDPAT que aparece na tabela F12_PATROCINA) e com F04_TIME (para pegar a cidade e o Estado do time).
    
--OBS: ficamos em dúvida se o patrocinador deveria aparecer na tabela apenas uma vez, mesmo patrocinando vários times. Mas não imaginamos um meio de fazer isso e fizemos da maneira mais óbvia.

--Código
CREATE VIEW DADOS_PATROCINIO AS
SELECT  F06_PATROCINADOR.PATROCINADOR,
        F12_PATROCINA.TTIME,
        F12_PATROCINA.CONTRATO,
        F12_PATROCINA.INICIO_VIGENCIA,
        F12_PATROCINA.TEMPO_VIGENCIA,
        F04_TIME.CIDADE,
        F04_TIME.ESTADO
FROM F12_PATROCINA JOIN F06_PATROCINADOR
  ON F12_PATROCINA.IDPAT = F06_PATROCINADOR.IDPAT
JOIN F04_TIME
  ON F04_TIME.TTIME = F12_PATROCINA.TTIME;
  
--Exercício 2 - Item c
--Comentário
==Código

--Exercício 3 - Item a
--Comentário: Não conseguimos achar o erro.

--Código
/* drops
DROP MATERIALIZED VIEW LOG ON F08_CAMPEONATO;
DROP MATERIALIZED VIEW LOG ON F11_PARTIDA;
DROP MATERIALIZED VIEW LOG ON F09_ESTADIO;
DROP MATERIALIZED VIEW LOG ON F13_APITA;
DROP MATERIALIZED VIEW LOG ON F07_ARBITRO;
*/

-- visão materializada CAMPEONATOS
CREATE MATERIALIZED VIEW LOG ON F08_CAMPEONATO WITH ROWID;
CREATE MATERIALIZED VIEW LOG ON F11_PARTIDA WITH ROWID;
CREATE MATERIALIZED VIEW LOG ON F09_ESTADIO WITH ROWID;
CREATE MATERIALIZED VIEW LOG ON F13_APITA WITH ROWID;
CREATE MATERIALIZED VIEW LOG ON F07_ARBITRO WITH ROWID;

CREATE MATERIALIZED VIEW CAMPEONATOS
BUILD IMMEDIATE REFRESH FAST ON COMMIT AS
SELECT  F08_CAMPEONATO.CAMPEONATO,
        F11_PARTIDA.TTIME1,
        F11_PARTIDA.GOLS_TIME1,
        F11_PARTIDA.TTIME2,
        F11_PARTIDA.GOLS_TIME2,
        F11_PARTIDA.DATAHORA,
        F09_ESTADIO.ESTADIO,
        F07_ARBITRO.ARBITRO
FROM  F08_CAMPEONATO, 
      F11_PARTIDA,
      F09_ESTADIO,
      F13_APITA,
      F07_ARBITRO
WHERE F08_CAMPEONATO.IDCAMPEONATO = F11_PARTIDA.IDCAMPEONATOP AND
      F11_PARTIDA.IDESTADIOP = F09_ESTADIO.IDESTADIO AND
      F13_APITA.IDPARTIDA = F11_PARTIDA.IDPARTIDA AND
      F07_ARBITRO.CPFA = F13_APITA.CPFA;
      