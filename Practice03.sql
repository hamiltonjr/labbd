SCC0241 - Laboratório de Bases de Dados

Relatório de execução da aula prática 3

Aluno                 		NUSP
Hamilton Gonçalves Junior   1053763
Rafael Souza                7239301

Iniciamos a prática removendo todas as tabelas do nosso schema usadas na prática 2. Daí executamos os scripts Futebol.ddl.sql e Futebol.dml.sql paracom esses dados darmos seguimento à prática 3.

Exercício 1
Item a

➔ Comentário
Como solicitado nesse ítem do enunciado, escrevemos um script que insere, como solicitado, 5 tuplas para cada tabela-entidade e 20 tuplas para cada tabela-relacionamento. Fizemos pesquisas para inserir dados condizentes com a atualidade do futebol internacional. No caso dos relacionamentos, muitas inserções são similares às que já existiam, alterando somente datas e outras informações (supomos que tal atitude estava prevista, visto a quantidade de inserções solicitadas).

➔ Código
/*

   Script para inserção de dados complementares nas tabelas de entidades
   e de relacionamentos da base de dados.
   
   Prática 3 – SQL/DML

*/

-- inserindo 5 tuplas em F01_ESTADO
INSERT INTO F01  VALUES ('AC', 'Acre');
INSERT INTO F01  VALUES ('AM', 'Amazonas');
INSERT INTO F01  VALUES ('PR', 'Paraná');
INSERT INTO F01  VALUES ('RS','Rio Grande do Sul');
INSERT INTO F01  VALUES ('SC', 'Santa Catarina');

-- inserindo 5 tuplas em F02_CIDADE
INSERT INTO F02 VALUES ('Rio Branco', 'AC');
INSERT INTO F02 VALUES ('Manaus', 'AM');
INSERT INTO F02 VALUES ('Curitiba', 'PR');
INSERT INTO F02 VALUES ('Porto Alegre', 'RS');
INSERT INTO F02 VALUES ('Chapecó', 'SC');

-- inserindo 5 tuplas em F03_TECNICO
-- Renato Gaúcho - Grêmio-RS
-- Pachequinho - Coritiba-PR
-- Vagner Mancini - Chapecoense-SC
-- Paulo Morgado - São Raimundo-AM
-- Patrick Souza - Grêmio Atlético Sampaio-RR
INSERT INTO F03 VALUES (99999999, 'Renato Gaúcho');
INSERT INTO F03 VALUES (99999998, 'Pachequinho');
INSERT INTO F03 VALUES (99999997, 'Vagner Mancini');
INSERT INTO F03 VALUES (99999996, 'Paulo Morgado');
INSERT INTO F03 VALUES (99999995, 'Patrick Souza');

-- inserindo 5 tuplas em F04_TIME
INSERT INTO F04 VALUES ('Grêmio', 1903, 'Porto Alegre', 'RS', 99999999);
INSERT INTO F04 VALUES ('Coritiba', 1909, 'Curitiba','PR', 99999998);
INSERT INTO F04 VALUES ('Chapecoense', 1973, 'Chapecó', 'SC', 99999997);
INSERT INTO F04 VALUES ('São Raimundo', 1918, 'Manaus', 'AM', 99999996);
INSERT INTO F04 VALUES ('Grêmio Atlético Sampaio', 1965, 'Rio Branco', 'AC', 99999995);

-- inserindo 5 tuplas em F05_JOGADOR
-- Tony Bahia - Grêmio Atlético Sampaio
-- Caroço - São Raimundo
-- Niltinho - Chapecoense
-- Luan - Grêmio
-- Rafinha - Coritiba
INSERT INTO F05 VALUES (99999900, 'Tony Bahia', 'ATACANTE', 'Grêmio Atlético Sampaio');
INSERT INTO F05 VALUES (99999800, 'Caroço', 'ATACANTE', 'São Raimundo');
INSERT INTO F05 VALUES (99999700, 'Niltinho', 'ATACANTE', 'Chapecoense');
INSERT INTO F05 VALUES (99999600, 'Luan', 'ATACANTE', 'Grêmio');
INSERT INTO F05 VALUES (99999500, 'Rafinha', 'ATACANTE', 'Coritiba');

-- inserindo 5 tuplas em F06_PATROCINADOR
INSERT INTO F06 VALUES (50, 'Vida Vidros', 'Para uma vida mais transparente');
INSERT INTO F06 VALUES (51, 'Aladim Tapetes', 'Um sonho de tapeçaria');
INSERT INTO F06 VALUES (52, 'Lavanderia Espumosa', 'Tudo limpo de verdade');
INSERT INTO F06 VALUES (53, 'Padaria Peter Pão', '24 horas dando fim à sua fome');
INSERT INTO F06 VALUES (54, 'Wizard', 'Por uma nação bilingue');

-- inserindo 5 tuplas em F07_ARBITRO
INSERT INTO F07 VALUES (99991111, 'João Mota');
INSERT INTO F07 VALUES (99992222, 'José Silva');
INSERT INTO F07 VALUES (99993333, 'Luis Gomes');
INSERT INTO F07 VALUES (99994444, 'Paulo Santos');
INSERT INTO F07 VALUES (99995555, 'Leandro Borges');

-- inserindo 5 tuplas em F08_CAMPEONATO
-- aqui apenas alteramos o ano e criamos então 5 novas tuplas
INSERT INTO F08 VALUES (50,	'Copa das Confedera�es 2007',	2007);
INSERT INTO F08 VALUES (51,	'Copa das Confedera�es 2008',	2008);
INSERT INTO F08 VALUES (52,	'Copa das Confedera�es 2009',	2009);
INSERT INTO F08 VALUES (53,	'Copa das Confedera�es 2010',	2010);
INSERT INTO F08 VALUES (54,	'Copa das Confedera�es 2011',	2011);

-- inserindo 5 tuplas em F09_ESTADIO
INSERT INTO F09 VALUES (65, 'Mané Garrincha', 'Brasilia', 'DF', 72788); 
INSERT INTO F09 VALUES (66, 'Arruda', 'Recife', 'PE', 60044);
INSERT INTO F09 VALUES (67, 'Arena do Grêmio', 'Porto Alegre', 'RS', 56500); 
INSERT INTO F09 VALUES (68, 'Arena Corinthians', 'Sao Paulo', 'SP', 48234); 
INSERT INTO F09 VALUES (69, 'Engenhão', 'Rio de Janeiro', 'RJ', 44661);

-- inserindo 5 tuplas em F10_EMISSORA
INSERT INTO F10 VALUES (69, 'Radio Nacional', 'R', 103.7, null, 1300);
INSERT INTO F10 VALUES (65, 'Radio Paulista', 'R', 107.8, null, 1500);
INSERT INTO F10 VALUES (66, 'RedeTV', 'T', null, 15, 123000);
INSERT INTO F10 VALUES (67, 'Radio Canção Nova', 'R', 93.8, null, 1000);
INSERT INTO F10 VALUES (68, 'Radio Oeste', 'R', 103.3, null, 1400);

-- inserindo 5 tuplas em F11_PARTIDA
INSERT INTO F11 VALUES (1045, 'Grêmio', 'Coritiba', TO_DATE('03-08-2016:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 50, 64, 2, 1);
INSERT INTO F11 VALUES (1041, 'Coritiba', 'Grêmio Atlético Sampaio', TO_DATE('10-08-2016:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 51, 65, 1, 2);
INSERT INTO F11 VALUES (1042, 'São Raimundo', 'Chapecoense', TO_DATE(17-08-2016:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 52, 66, 3, 1);
INSERT INTO F11 VALUES (1043, 'Chapecoense', 'Coritiba', TO_DATE('24-08-2016:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 53, 67, 2, 3);
INSERT INTO F11 VALUES (1044, 'São Raimundo', 'Grêmio', TO_DATE('31-08-2016:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 54, 68, 0, 0);

-- inserindo 20 tuplas em F12_PATROCINA
INSERT INTO F12 VALUES (50, 'Grêmio', null, 2016, 6); 
INSERT INTO F12 VALUES (51, 'Coritiba', null, 2016, 6);
INSERT INTO F12 VALUES (52, 'Chapecoense', null, 2016, 6);
INSERT INTO F12 VALUES (53, 'São Raimundo', null, 2016, 6);
INSERT INTO F12 VALUES (54, 'Grêmio Atlético Sampaio', null, 2016, 6);

INSERT INTO F12 VALUES (50, 'Grêmio', null, 2015, 6); 
INSERT INTO F12 VALUES (51, 'Coritiba', null, 2015, 6);
INSERT INTO F12 VALUES (52, 'Chapecoense', null, 2015, 6);
INSERT INTO F12 VALUES (53, 'São Raimundo', null, 2015, 6);
INSERT INTO F12 VALUES (54, 'Grêmio Atlético Sampaio', null, 2015, 6);

INSERT INTO F12 VALUES (50, 'Grêmio', null, 2014, 6); 
INSERT INTO F12 VALUES (51, 'Coritiba', null, 2014, 6);
INSERT INTO F12 VALUES (52, 'Chapecoense', null, 2014, 6);
INSERT INTO F12 VALUES (53, 'São Raimundo', null, 2014, 6);
INSERT INTO F12 VALUES (54, 'Grêmio Atlético Sampaio', null, 2014, 6);

INSERT INTO F12 VALUES (50, 'Grêmio', null, 2013, 6); 
INSERT INTO F12 VALUES (51, 'Coritiba', null, 2013, 6);
INSERT INTO F12 VALUES (52, 'Chapecoense', null, 2013, 6);
INSERT INTO F12 VALUES (53, 'São Raimundo', null, 2013, 6);
INSERT INTO F12 VALUES (54, 'Grêmio Atlético Sampaio', null, 2013, 6);

INSERT INTO F12 VALUES (50, 'Grêmio', null, 2012, 6); 
INSERT INTO F12 VALUES (51, 'Coritiba', null, 2012, 6);
INSERT INTO F12 VALUES (52, 'Chapecoense', null, 2012, 6);
INSERT INTO F12 VALUES (53, 'São Raimundo', null, 2012, 6);
INSERT INTO F12 VALUES (54, 'Grêmio Atlético Sampaio', null, 2012, 6);

-- inserindo 20 tuplas em F13_APITA
INSERT INTO F13 VALUES (99991111, 1040, 'PRINCIPAL');
INSERT INTO F13 VALUES (99992222, 1040, 'BANDEIRINHA');
INSERT INTO F13 VALUES (99993333, 1040, 'RESERVA');
INSERT INTO F13 VALUES (99994444, 1040, 'RESERVA');
INSERT INTO F13 VALUES (99995555, 1040, 'RESERVA');

INSERT INTO F13 VALUES (99991111, 1041, 'PRINCIPAL');
INSERT INTO F13 VALUES (99992222, 1041, 'BANDEIRINHA');
INSERT INTO F13 VALUES (99993333, 1041, 'RESERVA');
INSERT INTO F13 VALUES (99994444, 1041, 'RESERVA');
INSERT INTO F13 VALUES (99995555, 1041, 'RESERVA');

INSERT INTO F13 VALUES (99991111, 1042, 'PRINCIPAL');
INSERT INTO F13 VALUES (99992222, 1042, 'BANDEIRINHA');
INSERT INTO F13 VALUES (99993333, 1042, 'RESERVA');
INSERT INTO F13 VALUES (99994444, 1042, 'RESERVA');
INSERT INTO F13 VALUES (99995555, 1042, 'RESERVA');

INSERT INTO F13 VALUES (99991111, 1043, 'PRINCIPAL');
INSERT INTO F13 VALUES (99992222, 1043, 'BANDEIRINHA');
INSERT INTO F13 VALUES (99993333, 1043, 'RESERVA');
INSERT INTO F13 VALUES (99994444, 1043, 'RESERVA');
INSERT INTO F13 VALUES (99995555, 1043, 'RESERVA');

-- inserindo 20 tuplas em F14_TRANSMITE
INSERT INTO F14 VALUES (64, 1040);
INSERT INTO F14 VALUES (64, 1041);
INSERT INTO F14 VALUES (64, 1042);
INSERT INTO F14 VALUES (64, 1043);
INSERT INTO F14 VALUES (64, 1044);

INSERT INTO F14 VALUES (65, 1040);
INSERT INTO F14 VALUES (65, 1041);
INSERT INTO F14 VALUES (65, 1042);
INSERT INTO F14 VALUES (65, 1043);
INSERT INTO F14 VALUES (65, 1044);

INSERT INTO F14 VALUES (66, 1040);
INSERT INTO F14 VALUES (66, 1041);
INSERT INTO F14 VALUES (66, 1042);
INSERT INTO F14 VALUES (66, 1043);
INSERT INTO F14 VALUES (66, 1044);

INSERT INTO F14 VALUES (67, 1040);
INSERT INTO F14 VALUES (67, 1041);
INSERT INTO F14 VALUES (67, 1042);
INSERT INTO F14 VALUES (67, 1043);
INSERT INTO F14 VALUES (67, 1044);

-- inserindo 20 tuplas em F15_GOLS_CARTOES
INSERT INTO F15 VALUES (99999900, 1045, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999800, 1045, 0, 0, 0, 0);
INSERT INTO F15 VALUES (99999700, 1045, 1, 0, 0, 0);
INSERT INTO F15 VALUES (99999600, 1045, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999500, 1045, 0, 0, 1, 0);

INSERT INTO F15 VALUES (99999900, 1041, 0, 0, 0, 0);
INSERT INTO F15 VALUES (99999800, 1041, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999700, 1041, 0, 0, 1, 0);
INSERT INTO F15 VALUES (99999600, 1041, 1, 1, 0, 0);
INSERT INTO F15 VALUES (99999500, 1041, 1, 0, 1, 0);

INSERT INTO F15 VALUES (99999900, 1042, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999800, 1042, 1, 1, 0, 0);
INSERT INTO F15 VALUES (99999700, 1042, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999600, 1042, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999500, 1042, 1, 0, 0, 0);

INSERT INTO F15 VALUES (99999900, 1043, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999800, 1043, 1, 0, 0, 0);
INSERT INTO F15 VALUES (99999700, 1043, 1, 0, 1, 0);
INSERT INTO F15 VALUES (99999600, 1043, 0, 0, 1, 0);
INSERT INTO F15 VALUES (99999500, 1043, 1, 0, 1, 0);

➔ Saída: 140 linhas inseridas (14 entidades x5 = 70 linhas e 4 relacionamentos  x20 = 80 somados) 
OBS: um erro ue não conhecemos apareceu na saída "SP2-0552: Variável de Bind "18" não declarada".

Exercício 2: 
Item a

➔ Comentário
Como queremos campeonatos iniciamos por essa tabela. Como queremos contar as partidas, selecionamos os IDs de campeonatos como um de seus ítens. Queremos listar campeonatos que tiveram PARTIDA (fazemos junção com essa tabela) transmitida pelo rádio (junção com a tabela TRANSMITE e EMISSORA) quando o tipo de emissora é R. Agrupamos por campeonato para agregar os dados para contagem. Ordenamos para organizar a saída.
 
➔ Código
SELECT CAMPEONATO, COUNT(PARTIDA.IDCAMPEONATOP) FROM CAMPEONATO JOIN PARTIDA 
        ON CAMPEONATO.IDCAMPEONATO = PARTIDA.IDCAMPEONATOP
    JOIN TRANSMITE
        ON PARTIDA.IDPARTIDA = TRANSMITE.IDPARTIDA
    JOIN EMISSORA
        ON TRANSMITE.IDEMISSORA = EMISSORA.IDEMISSORA
    WHERE EMISSORA.TIPO = 'R'
    GROUP BY CAMPEONATO;

➔ Saída
CONFEDERACOES 12	            2
CONFEDERACOES 13	            6
Copa Audi	                    3
Copa das Confedera��es 2012	1
Copa das Confedera��es 2013	1
Copa das Confedera��es 2014	2
Copa das Confedera��es 2015	2
Copa das Confedera��es 2016	2
Recopa Sul-Americana	        2

Item b

➔ Comentário
O time escolhido foi Brasil e o campeonato escolhido foi 17-Copa das Confederações 2013 (onde o Brasil aparece).
Dividimos a consulta em 2 partes: 
- a lista de times que não jogaram com o Brasil como times da casa (à esquerda)
- a lista de times que não jogaram com o Brasil como times visitante (à direita)

OBS: por conta do tamanho da base de dados, não encontramos nenhum caso onde poderíamos testar nossa consulta e 
ter algumas linhas como retorno. Porém, as consultas estão logicamente corretas.

OBS: uma observação interessante é o uso de UNION para unir as consultas e resultar numa só lista.

➔ Código
-- times que não jogaram com o Brasil como times da casa
SELECT TTIME FROM F04_TIME
WHERE TTIME NOT IN (
  (SELECT TTIME1 FROM F11_PARTIDA
  WHERE TTIME2 = 'Brasil'AND
  F11_PARTIDA.IDCAMPEONATOP=17)
);  

-- times que não jogaram com o Brasil como times visitantes
SELECT TTIME FROM F04_TIME
WHERE TTIME NOT IN (
  (SELECT TTIME2 FROM F11_PARTIDA
  WHERE TTIME1 = 'Brasil' AND
  F11_PARTIDA.IDCAMPEONATOP=17)
);

➔ Saída
nenhuma linha selecionada
nenhuma linha selecionada

Item c

➔ Comentário
Iniciamos listando os nomes dos técnicos. Não há como fazer junção de técnicos com campeonatos diretamente.
O time está diretamente relacionado ao seu técnico (relacionamento 1:1). Então podemos fazer junção de técnico 
e time. Notamos que partidas são jogadas em campeonatos: existe como fazer junção entre partidas e campeonatos.
Porém, nas partidas, sempre devemos levar em consideração os times da casa e visitante. Fizemos então 2 consultas 
e as unimos com UNION. Depois disso, fizemos a junção de partida com campeonato para obter e poder contar todos os campeonatos. Agrupamos por técnicos, acrescentamos a restrição para a agregação de que só mostrasse os técnicos 
cujas contagens de campeonatos fossem maiores que 1 (excluímos assim algumas tuplas). Fizemos como explicamos acima tudo isso para time da casa e visitante e unimos as consultas num só resultado.

➔ Código
SELECT  F03_TECNICO.TECNICO, 
        COUNT(F11_PARTIDA.IDCAMPEONATOP) "CAMPS"
  FROM F03_TECNICO JOIN F04_TIME
    ON F03_TECNICO.CPFT = F04_TIME.CPFT
  JOIN F11_PARTIDA
    ON F04_TIME.TTIME = F11_PARTIDA.TTIME1
  GROUP BY F03_TECNICO.TECNICO
  HAVING COUNT(F11_PARTIDA.IDCAMPEONATOP)>1
UNION  
SELECT  F03_TECNICO.TECNICO, 
        COUNT(F11_PARTIDA.IDCAMPEONATOP) 
  FROM F03_TECNICO JOIN F04_TIME
    ON F03_TECNICO.CPFT = F04_TIME.CPFT
  JOIN F11_PARTIDA
    ON F04_TIME.TTIME = F11_PARTIDA.TTIME2
  GROUP BY F03_TECNICO.TECNICO
  HAVING COUNT(F11_PARTIDA.IDCAMPEONATOP)>1;
  
  ➔ Saída
Ederson	                4
Paulo Autuori de Mello	2
Illidan	                5
Marcon	                4
Jacob	                6
Bristassio	            4

Item d

➔ Comentário
A consulta retorna o patrocinador, o time (que aqui representam o contrato entre estes) e o tempo de vigência desse
contrato (só para constar).

➔ Código
SELECT  F06_PATROCINADOR.PATROCINADOR, 
        F12_PATROCINA.TTIME, 
        F12_PATROCINA.TEMPO_VIGENCIA
FROM F06_PATROCINADOR JOIN F12_PATROCINA
        ON F06_PATROCINADOR.IDPAT = F12_PATROCINA.IDPAT
        WHERE F12_PATROCINA.TEMPO_VIGENCIA > 6;

➔ Saída
PATROCINADOR    TTIME                   TEMPO_VIGENCIA
------------------------------------------------------
CANELONINO	    Italia	                 10
TELEFONICA	    Espanha	                 15
LIMPA MAIS	    Brasil	                 12
MICROSOFT	    Italia	                  8
INTEL	        Italia	                  7
ELETRIZO	    Italia	                  9
Umbro	        Sao Paulo FC	         15
Lupo	        SC Corinthians Paulista	 10
Coca-cola	    Brasil	                 30
Casas Bahia	    Brasil	                 30
Nescau	        Brasil	                 30
Yp�	                        Brasil	                 30
TELEFONICA	    Brasil	                 30
Coca-cola	    Espanha	                100
Casas Bahia	    Espanha	                100
Nescau	        Espanha	                100
Yp�	                        It�lia	                999
TELEFONICA	    It�lia	                999
Coca-cola	    Taiti	                555
Casas Bahia	    M�xico	                333
Nescau	        M�xico	                333
Yp�         	        Nig�ria	                120
TELEFONICA	    Nig�ria	                120
Coca-cola	    Uruguai	                500
Casas Bahia	    Uruguai	                500
Nescau	        Jap�o	                200
Yp�	                        Jap�o	                200
TELEFONICA	    Taiti	                555

Item e

➔ Comentário

➔ Código
-- campeonato escolhido: IDCAMPEONATO=61
SELECT  F05_JOGADOR.JOGADOR,
        SUM(F15_GOLS_CARTOES.GOLS) NUM_GOLS,
        COUNT(F15_GOLS_CARTOES.GOLS) AS PARTIDAS,
        SUM(F15_GOLS_CARTOES.AMARELO) AS LEVOU_AMARELO,
        SUM(F15_GOLS_CARTOES.VERMELHO) AS LEVOU_VERMELHO,
        AVG(F15_GOLS_CARTOES.GOLS) AS MEDIA_GOLS,
        SUM(F15_GOLS_CARTOES.AMARELO) AS AMARELOS,
        SUM(F15_GOLS_CARTOES.VERMELHO) AS VERMELHOS        
  FROM F05_JOGADOR JOIN F04_TIME
    ON F05_JOGADOR.TTIMEJ = F04_TIME.TTIME
  JOIN F11_PARTIDA
    ON F04_TIME.TTIME = F11_PARTIDA.TTIME1
  JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  JOIN F15_GOLS_CARTOES
    ON F05_JOGADOR.CPFJ = F15_GOLS_CARTOES.CPFJ
  WHERE F08_CAMPEONATO.IDCAMPEONATO = 61
  GROUP BY F05_JOGADOR.JOGADOR  
UNION
SELECT  F05_JOGADOR.JOGADOR,
        SUM(F15_GOLS_CARTOES.GOLS),
        COUNT(F15_GOLS_CARTOES.GOLS),
        SUM(F15_GOLS_CARTOES.AMARELO),
        SUM(F15_GOLS_CARTOES.VERMELHO),
        AVG(F15_GOLS_CARTOES.GOLS),
        SUM(F15_GOLS_CARTOES.AMARELO),
        SUM(F15_GOLS_CARTOES.VERMELHO)      
  FROM F05_JOGADOR JOIN F04_TIME
    ON F05_JOGADOR.TTIMEJ = F04_TIME.TTIME
  JOIN F11_PARTIDA
    ON F04_TIME.TTIME = F11_PARTIDA.TTIME2
  JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  JOIN F15_GOLS_CARTOES
    ON F05_JOGADOR.CPFJ = F15_GOLS_CARTOES.CPFJ
  WHERE F08_CAMPEONATO.IDCAMPEONATO = 61
  GROUP BY F05_JOGADOR.JOGADOR
  ORDER BY NUM_GOLS DESC;

➔ Saída
JOGADOR             NUM_GOLS    PARTIDAS    LEVOU_AMARELO   LEVOU_VERMELHO  MEDIA_GOLS  AMARELOS    VERMELHOS
-------------------------------------------------------------------------------------------------------------
Julio Cesar 	    3	        4	        2	            2	            0,75        2	        2
Gotoku Sakai    	2	        1	        0	            1	               2        0	        1
Keisuke Honda   	2	        1	        0	            1	               2        0	        1
Masahiko Inoha  	2	        1	        0	            1	               2        0	        1
Vincent Enyeama 	2	        1	        0	            1	               2        0       	1
Yuzo Kurihara   	2	        1	        0	            1                  2        0	        1
Daniel Alves    	1	        1	        1	            0	               1        1           0
David Luiz  	    1	        1	        1	            0	               1        1	        0
Diego God�n      	1	        1	        1	            0	               1        1       	0
Eiji Kawashima  	1	        1	        0	            1	               1        0       	1
Jairzinho   	    1	        1	        1	            0	               1        1       	0
J�lio C�sar     	1	        1	        1	            0	               1        1       	0
Luis Su�rez	        1	        1	        1	            0	               1        1       	0
Mart�n C�ceres  	1	        1	        1	            0	               1        1       	0
Neymar Jr	        1	        1       	1	            0	               1        1       	0
Walter Gargano	    1	        1	        1	            0           	   1        1	        0
Fernando Muslera	0	        1       	1	            0	               0        1       	0
Ideye Brown	        0       	1	        1	            0	               0        1       	0
Joseph Yobo	        0	        1	        1	            0	               0        1       	0
Nwankwo Obiora	    0	        1	        1	            0	               0        1       	0
Reuben Gabriel	    0	        1	        1	            0	               0        1	        0

Item f

➔ Comentário
Juntamos as tabelas ARBITRO, APITA E GOLS_CARTOES (as duas últimas tem relação direta entre si). Fizemos a soma
dos cartões e incluímos o rank de acordo com a sintaxe dada nos slides.

➔ Código
SELECT  F07_ARBITRO.ARBITRO AS ARBITRO,
        SUM(F15_GOLS_CARTOES.AMARELO + F15_GOLS_CARTOES.VERMELHO) AS CARTOES,
        RANK() OVER (ORDER BY ARBITRO) AS RANK
FROM F07_ARBITRO JOIN F13_APITA
  ON F07_ARBITRO.CPFA = F13_APITA.CPFA
JOIN F15_GOLS_CARTOES
  ON F13_APITA.IDPARTIDA = F15_GOLS_CARTOES.IDPARTIDA
GROUP BY F07_ARBITRO.ARBITRO
ORDER BY RANK DESC;

➔ Saída
ARBITRO         CARTOES RANK
----------------------------
Wolfgang Stark	11	    16
ROBERTO ALBERTO	 7	    15
Ricardo Marques	 8	    14
Peter Sippel	 9	    13
Paulo Oliveira	 2	    12
PAULA TEIXIEIRA	 4	    11
LUCAS JUNQUI	 4	    10
Lucas Ferreira	 4	     9
Jo�o Silva	     4	     8
Joaquim Santos	 4	     7
JOAO ALMAO	     1	     6
Gunter Perl	    12	     5
Fernando Moraes	 4	     4
Deniz Aytekin	10	     3
BRUNO ADA	     3	     2
Ant�nio Prado	 4	     1

Item g

➔ Comentário
Para relacionar PATROCINADOR e a mídia por onde a partida jogada pelo time patrocinado foi transmitida precisamos
juntar PATROCINADOR, PATROCINA (onde obtemos o time para relacionar com PARTIDA e desse para TRANSMITE  e por fim EMISSORA), TIME, PARTIDA, TRANSMITE e por fim EMISSORA. Como sempre aconteceu ao precisarmos juntar PARTIDA, por termos que lidar com "time da casa" e "time visitante" usamos UNION para unir as duas consultas (uma para cada lado).
Restringimos a consulta para tipo de emissora televisão para cumprir o que foi solicitado.

OBS: deixamosa mídia sendo mostrada, mas essapode ser reti

➔ Código
SELECT  F06_PATROCINADOR.PATROCINADOR,
        F10_EMISSORA.TIPO "MIDIA"
FROM F12_PATROCINA JOIN F06_PATROCINADOR
  ON F12_PATROCINA.IDPAT = F06_PATROCINADOR.IDPAT
JOIN F04_TIME
  ON F12_PATROCINA.TTIME = F04_TIME.TTIME
JOIN F11_PARTIDA
  ON F11_PARTIDA.TTIME1 = F04_TIME.TTIME
JOIN F14_TRANSMITE
  ON F14_TRANSMITE.IDPARTIDA = F11_PARTIDA.IDPARTIDA
JOIN F10_EMISSORA
  ON F10_EMISSORA.IDEMISSORA = F14_TRANSMITE.IDEMISSORA
WHERE F10_EMISSORA.TIPO = 'T'
UNION
SELECT  F06_PATROCINADOR.PATROCINADOR,
        F10_EMISSORA.TIPO
FROM F12_PATROCINA JOIN F06_PATROCINADOR
  ON F12_PATROCINA.IDPAT = F06_PATROCINADOR.IDPAT
JOIN F04_TIME
  ON F12_PATROCINA.TTIME = F04_TIME.TTIME
JOIN F11_PARTIDA
  ON F11_PARTIDA.TTIME2 = F04_TIME.TTIME
JOIN F14_TRANSMITE
  ON F14_TRANSMITE.IDPARTIDA = F11_PARTIDA.IDPARTIDA
JOIN F10_EMISSORA
  ON F10_EMISSORA.IDEMISSORA = F14_TRANSMITE.IDEMISSORA
WHERE F10_EMISSORA.TIPO = 'T';

➔ Saída
PATROCINADOR        MIDIA
-------------------------
Adidas	            T
CANELONINO	        T
Casas Bahia	        T
Coca-cola	        T
ELETRIZO	        T
FORD	            T
INTEL	            T
LIMPA MAIS	        T
Lupo	            T
MICROSOFT	        T
Nescau	            T
Nike	            T
Penalty	            T
Puma	            T
TAKIN TACCOS	    T
TELEFONICA	        T
TOCAMAIS PANDEIROS	T
Umbro	            T
VOLKS	            T
Yp�	                                T

Item h

➔ Comentário
Nesse ítem escolhemos o Brasil como time e a Copa das Confederações 2016 como campeonato. Usamos sub-consultas para
calcular o total de vitórias do Brasil na Copa das Confederações 2016. A sub-consulta precisou de UNION para unir os
resiltados do Brasil como time da casa e como time visitante.

➔ Código
-- total de vitórias
SELECT SUM(V) VITORIAS FROM (
  SELECT COUNT(F11_PARTIDA.GOLS_TIME1) V
  FROM F11_PARTIDA JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  WHERE F11_PARTIDA.TTIME1 = 'Brasil' AND
        F11_PARTIDA.TTIME1 > F11_PARTIDA.TTIME2 AND
        F08_CAMPEONATO.IDCAMPEONATO = 64
  UNION
  SELECT COUNT(F11_PARTIDA.GOLS_TIME2) V
  FROM F11_PARTIDA JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  WHERE F11_PARTIDA.TTIME2 = 'Brasil' AND
        F11_PARTIDA.TTIME2 > F11_PARTIDA.TTIME1 AND
        F08_CAMPEONATO.IDCAMPEONATO = 64
) TOTAL_VITORIAS;

-- total de derrotas
SELECT SUM(D) DERROTAS FROM (
  SELECT COUNT(F11_PARTIDA.GOLS_TIME1) D
  FROM F11_PARTIDA JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  WHERE F11_PARTIDA.TTIME1 = 'Brasil' AND
        F11_PARTIDA.TTIME1 < F11_PARTIDA.TTIME2 AND
        F08_CAMPEONATO.IDCAMPEONATO = 64
  UNION
  SELECT COUNT(F11_PARTIDA.GOLS_TIME2) D
  FROM F11_PARTIDA JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  WHERE F11_PARTIDA.TTIME2 = 'Brasil' AND
        F11_PARTIDA.TTIME2 < F11_PARTIDA.TTIME1 AND
        F08_CAMPEONATO.IDCAMPEONATO = 64
) TOTAL_DERROTAS;

-- total de empates
SELECT SUM(E) EMPATES FROM (
  SELECT COUNT(F11_PARTIDA.GOLS_TIME1) E
  FROM F11_PARTIDA JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  WHERE F11_PARTIDA.TTIME1 = 'Brasil' AND
        F11_PARTIDA.TTIME1 = F11_PARTIDA.TTIME2 AND
        F08_CAMPEONATO.IDCAMPEONATO = 64
  UNION
  SELECT COUNT(F11_PARTIDA.GOLS_TIME2) E
  FROM F11_PARTIDA JOIN F08_CAMPEONATO
    ON F11_PARTIDA.IDCAMPEONATOP = F08_CAMPEONATO.IDCAMPEONATO
  WHERE F11_PARTIDA.TTIME2 = 'Brasil' AND
        F11_PARTIDA.TTIME2 = F11_PARTIDA.TTIME1 AND
        F08_CAMPEONATO.IDCAMPEONATO = 64
) TOTAL_EMPATES;

➔ Saída
V
--
0

D
--
1

E
--
0


Item i

➔ Comentário

➔ Código
-- média de gols para o time da casa
SELECT  F08_CAMPEONATO.CAMPEONATO,
        F11_PARTIDA.TTIME1, ' X ', F11_PARTIDA.TTIME2,
        AVG(F11_PARTIDA.GOLS_TIME1) "MEDIA"
FROM F08_CAMPEONATO JOIN F11_PARTIDA
  ON F08_CAMPEONATO.IDCAMPEONATO = F11_PARTIDA.IDCAMPEONATOP
GROUP BY F08_CAMPEONATO.CAMPEONATO, F11_PARTIDA.TTIME1, F11_PARTIDA.TTIME2;

-- média de gols para o time visitante
SELECT  F08_CAMPEONATO.CAMPEONATO,
        F11_PARTIDA.TTIME1, ' X ', F11_PARTIDA.TTIME2,
        AVG(F11_PARTIDA.GOLS_TIME2) "MEDIA"
FROM F08_CAMPEONATO JOIN F11_PARTIDA
  ON F08_CAMPEONATO.IDCAMPEONATO = F11_PARTIDA.IDCAMPEONATOP
GROUP BY F08_CAMPEONATO.CAMPEONATO, F11_PARTIDA.TTIME1, F11_PARTIDA.TTIME2;

-- superconsulta
SELECT  F08_CAMPEONATO.CAMPEONATO,
        F11_PARTIDA.TTIME1, ' X ', F11_PARTIDA.TTIME2,
        AVG(F11_PARTIDA.GOLS_TIME1) "MEDIA"
FROM F08_CAMPEONATO JOIN F11_PARTIDA
  ON F08_CAMPEONATO.IDCAMPEONATO = F11_PARTIDA.IDCAMPEONATOP
GROUP BY F08_CAMPEONATO.CAMPEONATO, F11_PARTIDA.TTIME1, F11_PARTIDA.TTIME2
UNION
SELECT  F08_CAMPEONATO.CAMPEONATO,
        F11_PARTIDA.TTIME1, ' X ', F11_PARTIDA.TTIME2,
        AVG(F11_PARTIDA.GOLS_TIME2) "MEDIA"
FROM F08_CAMPEONATO JOIN F11_PARTIDA
  ON F08_CAMPEONATO.IDCAMPEONATO = F11_PARTIDA.IDCAMPEONATOP
GROUP BY F08_CAMPEONATO.CAMPEONATO, F11_PARTIDA.TTIME1, F11_PARTIDA.TTIME2;

➔ Saída
Média de gols para o time da casa
CAMPEONATO                      TIME1                   TIME2                           MEDIA
---------------------------------------------------------------------------------------------
Copa Audi	                    Manchester City	        X 	Bayern Munique	            1
CONFEDERACOES 13	            Espanha	                X 	Italia	                    0
CONFEDERACOES 13	            Espanha	                X 	Japao	                    2
Copa das Confedera��es 2013	Taiti	                X 	Uruguai	                    2
Copa das Confedera��es 2012	Brasil	                X 	Taiti	                    3
Copa das Confedera�es 2007	    Grêmio	                X 	Coritiba	                2
CONFEDERACOES 12	            Mexico	                X 	Italia	                    2,5
CONFEDERACOES 12	            Espanha	                X 	Mexico	                    1
CONFEDERACOES 12	            Italia	                X 	Brasil	                    2,5
Copa Audi	                    Manchester City	        X 	Milan	                    5
Copa Audi	                    Milan	                X 	S�o Paulo	                1
CONFEDERACOES 13	            Brasil	                X 	Italia	                    4
CONFEDERACOES 12	            Brasil	                X 	Mexico	                    0
Copa das Confedera��es 2012	It�lia	                X 	M�xico	                    2
Copa das Confedera��es 2015	Brasil	                X 	It�lia	                    2
Copa das Confedera��es 2015	Espanha	                X 	M�xico	                    3
CONFEDERACOES 13	            Mexico	                X 	Italia	                    1
Recopa Sul-Americana	        Sao Paulo FC	        X 	SC Corinthians Paulista     1
Copa das Confedera��es 2013	Brasil	                X 	Jap�o	                    3
Copa das Confedera��es 2014	Nig�ria	                X 	Jap�o	                    2
Copa das Confedera��es 2014	M�xico	                X 	It�lia	                    3
CONFEDERACOES 13	            Italia	                X 	Japao	                    2
Recopa Sul-Americana	        SC Corinthians Paulista	X 	Sao Paulo FC	            2
Copa das Confedera��es 2013	Uruguai	                X 	It�lia	                    5
Copa das Confedera��es 2012	Espanha	                X 	Jap�o	                    8
Copa das Confedera��es 2014	M�xico	                X 	Uruguai	                    8
Copa das Confedera��es 2016	Espanha	                X 	Nig�ria	                    2
Copa das Confedera��es 2016	Taiti	                X 	Brasil	                    6
Copa das Confedera��es 2016	Brasil	                X 	It�lia	                    2
CONFEDERACOES 13	            Brasil	                X 	Espanha	                    0
Copa das Confedera��es 2015	It�lia	                X 	Taiti	                    3
Copa das Confedera��es 2016	Jap�o	                X 	Uruguai	                    1
Copa das Confedera��es 2015	Uruguai	                X 	Espanha	                    1
Copa das Confedera�es 2008	    Coritiba	            X 	Grêmio Atlético Sampaio	    1
Copa Audi	                    Bayern Munique	        X 	S�o Paulo	                2
CONFEDERACOES 13	            Mexico	                X 	Espanha	                    2
CONFEDERACOES 12	            Brasil	                X 	Espanha	                    1
Copa das Confedera��es 2012	Nig�ria	                X 	Taiti	                    4
Copa das Confedera��es 2014	Taiti	                X 	Brasil	                    1
CONFEDERACOES 13	            Brasil	                X 	Japao	                    3
CONFEDERACOES 13	            Brasil	                X 	Mexico	                    1,5
Copa das Confedera��es 2013	M�xico	                X 	Nig�ria	                    3

Média de gols para o time visitante
CAMPEONATO                      TIME1                   TIME2                           MEDIA
---------------------------------------------------------------------------------------------
Copa Audi	                    Manchester City	        X 	Bayern Munique	            2
CONFEDERACOES 13	            Espanha	                X 	Italia	                    2
CONFEDERACOES 13	            Espanha	                X 	Japao	                    2
Copa das Confedera��es 2013	Taiti	                X 	Uruguai	                    2
Copa das Confedera��es 2012	Brasil	                X 	Taiti	                    1  
Copa das Confedera�es 2007	    Grêmio	                X 	Coritiba	                1
CONFEDERACOES 12	            Mexico	                X 	Italia	                    2
CONFEDERACOES 12	            Espanha	                X 	Mexico	                    2
CONFEDERACOES 12	            Italia	                X 	Brasil	                    2,5
Copa Audi	                    Manchester City	        X 	Milan	                    3
Copa Audi	                    Milan	                X 	S�o Paulo	                0
CONFEDERACOES 13	            Brasil	                X 	Italia	                    2
CONFEDERACOES 12	            Brasil	                X 	Mexico	                    2
Copa das Confedera��es 2012	It�lia	                X 	M�xico	                    5
Copa das Confedera��es 2015	Brasil	                X 	It�lia	                    1
Copa das Confedera��es 2015	Espanha	                X 	M�xico	                    1
CONFEDERACOES 13	            Mexico	                X 	Italia	                    2
Recopa Sul-Americana	        Sao Paulo FC	        X 	SC Corinthians Paulista	    2
Copa das Confedera��es 2013	Brasil	                X 	Jap�o	                    0
Copa das Confedera��es 2014	Nig�ria	                X 	Jap�o	                    3
Copa das Confedera��es 2014	M�xico	                X 	It�lia	                    2
CONFEDERACOES 13	            Italia	                X 	Japao	                    0,5
Recopa Sul-Americana	        SC Corinthians Paulista X 	Sao Paulo FC	            0
Copa das Confedera��es 2013	Uruguai	                X 	It�lia	                    5
Copa das Confedera��es 2012	Espanha	                X 	Jap�o	                    5
Copa das Confedera��es 2014	M�xico	                X 	Uruguai	                    5
Copa das Confedera��es 2016	Espanha	                X 	Nig�ria	                    5
Copa das Confedera��es 2016	Taiti	                X 	Brasil	                    3
Copa das Confedera��es 2016	Brasil	                X 	It�lia	                    4
CONFEDERACOES 13	            Brasil	                X 	Espanha	                    3
Copa das Confedera��es 2015	It�lia	                X 	Taiti	                    4
Copa das Confedera��es 2016	Jap�o	                X 	Uruguai	                    3
Copa das Confedera��es 2015	Uruguai	                X 	Espanha	                    1
Copa das Confedera�es 2008	    Coritiba	            X 	Grêmio Atlético Sampaio	    2
Copa Audi	                    Bayern Munique	        X 	S�o Paulo	                0
CONFEDERACOES 13	            Mexico	                X 	Espanha	                    2
CONFEDERACOES 12	            Brasil	                X 	Espanha	                    0
Copa das Confedera��es 2012	Nig�ria	                X 	Taiti	                    1
Copa das Confedera��es 2014	Taiti	                X 	Brasil	                    4
CONFEDERACOES 13	            Brasil	                X 	Japao	                    1,67
CONFEDERACOES 13	            Brasil	                X 	Mexico	                    0,5
Copa das Confedera��es 2013	M�xico	                X 	Nig�ria	                    4

Exercício 3:
Item a

➔ Comentário
Somente usando junção
➔ Código
-- dados dos times da casa que já jogaram em estádios com capacidade maior que 50000
SELECT  F04_TIME.ANOFUNDACAO,
        F04_TIME.CIDADE,
        F04_TIME.CPFT,
        F04_TIME.ESTADO,
        F04_TIME.TTIME,
        F09_ESTADIO.CAPACIDADE
FROM F04_TIME JOIN F11_PARTIDA
  ON F04_TIME.TTIME = F11_PARTIDA.TTIME1
JOIN F09_ESTADIO
  ON F09_ESTADIO.IDESTADIO = F11_PARTIDA.IDESTADIOP
WHERE F09_ESTADIO.CAPACIDADE>50000;

-- dados dos times visitantes que já jogaram em estádios com capacidade maior que 50000
SELECT  F04_TIME.ANOFUNDACAO,
        F04_TIME.CIDADE,
        F04_TIME.CPFT,
        F04_TIME.ESTADO,
        F04_TIME.TTIME,
        F09_ESTADIO.ESTADIO,
        F09_ESTADIO.CAPACIDADE
FROM F04_TIME JOIN F11_PARTIDA
  ON F04_TIME.TTIME = F11_PARTIDA.TTIME2
JOIN F09_ESTADIO
  ON F09_ESTADIO.IDESTADIO = F11_PARTIDA.IDESTADIOP
WHERE F09_ESTADIO.CAPACIDADE>50000;

➔ Saída
ANOFUNDACAO CIDADE              CPFT        ESTADO  TIME                    ESTADIO         CAPACIDADE
------------------------------------------------------------------------------------------------------
1899	    San Siro	        90000021	ML	    Milan	                San Siro            80074
1894	    Manchester	        90000022	GM	    Manchester City	        Allianz Arena       71000
1900	    Munique	            90000023	BY	    Bayern Munique  	    Morumbi             66795
1914	    Brasilia	        1002	    BR	    Brasil	                LA CARTUJA          60000
1914	    Brasilia	        1002	    BR	    Brasil	                OLIMPICO ROMA       75000
1914	    Brasilia	        1002	    BR	    Brasil	                OLIMPICO ROMA       75000
1914	    Brasilia	        1002	    BR	    Brasil	                OLIMPICO ROMA       75000
1914	    Cidade do Mexico	1004	    MX	    Mexico	                LA CARTUJA          60000
1912	    Roma	            1001	    IT	    Italia	                LA CARTUJA          60000
1912	    Roma	            1001	    IT	    Italia	                OLIMPICO ROMA       75000
1910	    Madrid	            1005	    ES	    Espanha	                LA CARTUJA          60000
1930	    Sao Paulo		                SP	    Sao Paulo FC	        Arena Palestra      66795
1909	    Curitiba	        99999998	PR	    Coritiba	            Mané Garrincha      72788

ANOFUNDACAO CIDADE              CPFT        ESTADO  TIME                    ESTADIO              CAPACIDADE
-----------------------------------------------------------------------------------------------------------
1930	    S�o Paulo	        90000020	SP	    S�o Paulo   	        San Siro    	    80074
1930	    S�o Paulo	        90000020	SP	    S�o Paulo	            Morumbi	            66795
1900	    Munique	            90000023	BY	    Bayern Munique  	    Allianz Arena   	71000
1914	    Brasilia	        1002	    BR	    Brasil	                LA CARTUJA	        60000
1914	    Brasilia	        1002	    BR	    Brasil	                OLIMPICO ROMA	    75000
1914	    Cidade do Mexico	1004	    MX	    Mexico	                OLIMPICO ROMA   	75000
1912	    Roma	            1001	    IT	    Italia	                LA CARTUJA  	    60000
1912	    Roma	            1001	    IT	    Italia	                LA CARTUJA  	    60000
1912	    Roma	            1001	    IT	    Italia	                OLIMPICO ROMA   	75000
1936	    Tokyo	            1003    	JP	    Japao   	            OLIMPICO ROMA	    75000
1910	    Madrid	            1005	    ES	    Espanha	                LA CARTUJA	        60000
1910	    Sao Paulo		                SP	    SC Corinthians Paulista	Arena Palestra	    66795
1965	    Rio Branco	        99999995	AC	    Grêmio Atlético Sampaio	Mané Garrincha	    72788

Item b
➔ Comentário
Usando EXISTS
➔ Código
➔ Saída

Item c
➔ Comentário
Usando IN
➔ Código
➔ Saída

