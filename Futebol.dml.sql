INSERT INTO F01  VALUES ('SP','São Paulo');
  
INSERT INTO F01  VALUES ('BY','Baviera');
  
INSERT INTO F01  VALUES ('GM','Grande Manchester');
  
INSERT INTO F01  VALUES ('ML','Milão');
  
INSERT INTO F02 (SIGLAC, CIDADE)
  VALUES ('ML','San Siro');  

INSERT INTO F02 (SIGLAC, CIDADE)
  VALUES ('BY','Munique');
  
INSERT INTO F02 (SIGLAC, CIDADE)
  VALUES ('SP', 'São Paulo');
  
INSERT INTO F02 (SIGLAC, CIDADE)
  VALUES ('GM','Manchester');

INSERT INTO F03  VALUES (90000020,'Paulo Autuori de Mello'); /*SP*/
  
INSERT INTO F03  VALUES (90000021,'Massimiliano Allegri'); /* Milan */
  
INSERT INTO F03  VALUES (90000022,'Manuel Pellegrini'); /* City */
  
INSERT INTO F03  VALUES (90000023,'Josep Guardiola'); /* Bayern */

INSERT INTO F04  VALUES ('São Paulo', 1930, 'São Paulo', 'SP', 90000020);
  
INSERT INTO F04  VALUES ('Milan', 1899, 'San Siro', 'ML', 90000021);
  
INSERT INTO F04  VALUES ('Manchester City', 1894, 'Manchester', 'GM', 90000022);
  
INSERT INTO F04  VALUES ('Bayern Munique', 1900, 'Munique', 'BY', 90000023);

/* São Paulo */
INSERT INTO F05  VALUES (90000000, 'Ganso', 'MEIO-CAMPO', 'São Paulo');
  
INSERT INTO F05  VALUES (90000001, 'Rogério Ceni', 'GOLEIRO', 'São Paulo');
  
INSERT INTO F05  VALUES (90000002, 'Osvaldo', 'ATACANTE', 'São Paulo');
  
INSERT INTO F05  VALUES (90000003, 'Aloisio', 'ATACANTE', 'São Paulo');
  
INSERT INTO F05  VALUES (90000004, 'Wellington', 'MEIO-CAMPO', 'São Paulo');
  
/* Manchester */
  
INSERT INTO F05  VALUES (90000005, 'Alvaro Negredo', 'ATACANTE', 'Manchester City');
  
INSERT INTO F05  VALUES (90000006, 'Boyata', 'ZAGUEIRO', 'Manchester City');
  
INSERT INTO F05  VALUES (90000007, 'M. Richards', 'ZAGUEIRO', 'Manchester City');
  
INSERT INTO F05  VALUES (90000008, 'Dzeko', 'ATACANTE', 'Manchester City');
  
INSERT INTO F05  VALUES (90000009, 'David Silva', 'MEIO-CAMPO', 'Manchester City');
  
/* Bayern */

INSERT INTO F05  VALUES (90000010, 'Kroos', 'MEIO-CAMPO', 'Bayern Munique');
  
INSERT INTO F05  VALUES (90000011, 'Weiser', 'MEIO-CAMPO', 'Bayern Munique');
  
INSERT INTO F05  VALUES (90000012, 'Mandzukic', 'ATACANTE', 'Bayern Munique');
  
INSERT INTO F05  VALUES (90000013, 'Muller', 'MEIO-CAMPO', 'Bayern Munique');
  
INSERT INTO F05  VALUES (90000014, 'Dante', 'ZAGUEIRO', 'Bayern Munique');

/* Milan */

INSERT INTO F05  VALUES (90000015, 'Poli', 'MEIO-CAMPO', 'Milan');
  
INSERT INTO F05  VALUES (90000016, 'Boateng', 'ATACANTE', 'Milan');
  
INSERT INTO F05  VALUES (90000017, 'El Shaarawy', 'ATACANTE', 'Milan');
  
INSERT INTO F05  VALUES (90000018, 'Petagna', 'ATACANTE', 'Milan');
  
INSERT INTO F05  VALUES (90000019, 'Antonini', 'ZAGUEIRO', 'Milan');
  
INSERT INTO F06  VALUES (90, 'Nike', 'Just do it.'); /* manchester */
  
INSERT INTO F06  VALUES (91, 'Adidas', 'Its all in.'); /* Bayern */
  
INSERT INTO F06  VALUES (92, 'Penalty', 'Ginga Brasil.'); /* São Paulo */
  
INSERT INTO F06  VALUES (93, 'Puma', 'Do it with quality.'); /* Milan */
  
INSERT INTO F07  VALUES (90000024, 'Peter Sippel');
  
INSERT INTO F07  VALUES (90000025, 'Deniz Aytekin'); 
  
INSERT INTO F07  VALUES (90000026, 'Gunter Perl');
  
INSERT INTO F07  VALUES (90000027, 'Wolfgang Stark');
  
INSERT INTO F08  VALUES (90, 'Copa Audi', 2013);
  
INSERT INTO F09  VALUES (90, 'Morumbi', 'São Paulo', 'SP', 66795);
  
INSERT INTO F09  VALUES (91, 'San Siro', 'San Siro', 'ML', 80074);

INSERT INTO F09  VALUES (92, 'Etihad Stadium', 'Manchester', 'GM', 47826);

INSERT INTO F09  VALUES (93, 'Allianz Arena', 'Munique', 'BY', 71000);
  
INSERT INTO F10
  VALUES (90, 'ESPN', 'T', null, 39, null);
  
INSERT INTO F10
  VALUES (91, 'Radio GLOBO', 'R', 104.9, null, null);
  
INSERT INTO F11
  VALUES (90, 'Manchester City', 'Milan', TO_DATE('31-07-2013:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 90, 92, 5, 3);
  
INSERT INTO F11
  VALUES (91, 'Bayern Munique', 'São Paulo', TO_DATE('31-07-2013:21:30:00','DD-MM-YYYY:HH24:MI:SS'), 90, 90, 2, 0);
  
INSERT INTO F11
  VALUES (92, 'Milan', 'São Paulo', TO_DATE('01-08-2013:18:15:00','DD-MM-YYYY:HH24:MI:SS'), 90, 91, 1, 0);
  
INSERT INTO F11
  VALUES (93, 'Manchester City', 'Bayern Munique', TO_DATE('31-07-2013:20:30:00','DD-MM-YYYY:HH24:MI:SS'), 90, 93, 1, 2);
  
INSERT INTO F12
  VALUES (90, 'Manchester City', null, null, null);
  
INSERT INTO F12
  VALUES (91, 'Bayern Munique', null, null, null);
  
INSERT INTO F12
  VALUES (92, 'São Paulo', null, null, null);
  
INSERT INTO F12
  VALUES (93, 'Milan', null, null, null);
  
INSERT INTO F13
  VALUES (90000027, 90, 'PRINCIPAL');
  
INSERT INTO F13
  VALUES (90000024, 90, 'BANDEIRINHA');
  
INSERT INTO F13
  VALUES (90000025, 90, 'RESERVA');

INSERT INTO F13
  VALUES (90000024, 91, 'PRINCIPAL');
  
INSERT INTO F13
  VALUES (90000027, 91, 'BANDEIRINHA');
  
INSERT INTO F13
  VALUES (90000026, 91, 'RESERVA');
  
INSERT INTO F13
  VALUES (90000025, 92, 'PRINCIPAL');
  
INSERT INTO F13
  VALUES (90000026, 92, 'BANDEIRINHA');
  
INSERT INTO F13
  VALUES (90000024, 92, 'RESERVA');
  
INSERT INTO F13
  VALUES (90000026, 93, 'PRINCIPAL');
  
INSERT INTO F13
  VALUES (90000027, 93, 'BANDEIRINHA');

INSERT INTO F13
  VALUES (90000025, 93, 'RESERVA');
  
INSERT INTO F14
  VALUES (90, 90);
  
INSERT INTO F14
  VALUES (91, 90);
  
INSERT INTO F14
  VALUES (90, 91);
  
INSERT INTO F14
  VALUES (91, 91);
  
INSERT INTO F14
  VALUES (90, 92);
  
INSERT INTO F14
  VALUES (91, 93);
  
INSERT INTO F15
  VALUES (90000011, 91, 1, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000012, 91, 0, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000000, 91, 1, 0, 0, 0);
  
INSERT INTO F15
  VALUES (90000002, 91, 1, 0, 0, 0);
  
INSERT INTO F15
  VALUES (90000014, 91, 0, 1, 0, 0);
  
INSERT INTO F15
  VALUES (90000017, 90, 0, 0, 2, 0);
  
INSERT INTO F15
  VALUES (90000016, 90, 0, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000005, 90, 1, 0, 2, 0);
  
INSERT INTO F15
  VALUES (90000006, 90, 0, 1, 2, 0);
  
INSERT INTO F15
  VALUES (90000007, 90, 0, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000018, 92, 0, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000015, 92, 1, 0, 0, 0);
  
INSERT INTO F15
  VALUES (90000016, 92, 1, 0, 0, 0);
  
INSERT INTO F15
  VALUES (90000019, 92, 0, 1, 0, 0);
  
INSERT INTO F15
  VALUES (90000005, 93, 0, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000013, 93, 1, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000012, 93, 1, 0, 1, 0);
  
INSERT INTO F15
  VALUES (90000006, 93, 1, 0, 0, 0);
  
INSERT INTO F15
  VALUES (90000011, 93, 1, 0, 0, 0);
  
INSERT INTO F15
  VALUES (90000014, 93, 0, 1, 0, 0);
  
  --------------------------------------------------------
--  Arquivo criado - Sexta-feira-Agosto-23-2013   
--------------------------------------------------------


Insert into F01_ESTADO (SIGLA,ESTADO) values ('BR','Brasil');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('ES','Espanha');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('IT','Italia');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('JP','Japao');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('MX','México');

Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Brasilia','BR');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Cidade do Mexico','MX');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Madrid','ES');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Roma','IT');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Tokyo','JP');

Insert into F03_TECNICO (CPFT,TECNICO) values ('1001','Illidan');
Insert into F03_TECNICO (CPFT,TECNICO) values ('1002','Bristassio');
Insert into F03_TECNICO (CPFT,TECNICO) values ('1003','Jacob');
Insert into F03_TECNICO (CPFT,TECNICO) values ('1004','Marcon');
Insert into F03_TECNICO (CPFT,TECNICO) values ('1005','Ederson');

Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Brasil','1914','Brasilia','BR','1002');
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Mexico','1914','Cidade do Mexico','MX','1004');
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Italia','1912','Roma','IT','1001');
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Japao','1936','Tokyo','JP','1003');
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Espanha','1910','Madrid','ES','1005');

Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('1006','Julio Cesar','GOLEIRO','Brasil');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('1007','Alvaro Arbeloa','ZAGUEIRO','Espanha');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('1008','Shinji Konno','MEIO-CAMPO','Japao');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('1009','Javier Aquino','MEIO-CAMPO','Mexico');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('1010','Andrea Pirlo','MEIO-CAMPO','Italia');

Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('24','TOCAMAIS PANDEIROS','PANDEIROS PARA BRASILEIROS');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('12','TAKIN TACCOS','TACCOS FALANTES');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('25','CANELONINO','DEIXE A ARMA, PEGUE O CANELONE');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('78','ELETRIZO','ELETRONICOS MAIS RAPIDOS');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('64','TELEFONICA','NUNCA FUNCIONARA');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('26','LIMPA MAIS','LIMPA MUITO');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('15','VOLKS','DAS AUTO');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('30','FORD','MAIS FORTE');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('45','MICROSOFT','WINDOWS');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('56','INTEL','INTELIGENTE');

Insert into F07_ARBITRO (CPFA,ARBITRO) values ('1014','BRUNO ADA');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('1011','JOAO ALMAO');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('1015','LUCAS JUNQUI');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('1012','PAULA TEIXIEIRA');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('1013','ROBERTO ALBERTO');


Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('18','CONFEDERACOES 12','2012');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('17','CONFEDERACOES 13','2013');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('27','MINEIRO','2012');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('21','PAULISTA','2012');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('31','RIO-SAO PAULO','2010');

Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('45','MARACANA','Brasilia','BR','50000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('46','LA CARTUJA','Madrid','ES','60000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('36','AZTECA','Cidade do Mexico','MX','45000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('27','OLIMPICO ROMA','Roma','IT','75000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('49','TOYOTA','Tokyo','JP','30000');



Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('24','Globo','T','0','5','1000,25');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('28','Band','T','0','2','1500,36');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('64','Record','R','0','4','1250,96');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('87','Sbt','T','0','8','2589,63');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('97','Jovem Pan','R','15,5',null,'600,35');

Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1021','Brasil','Japao',to_date('20/08/13','DD/MM/RR'),'17','45','3','0');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1022','Mexico','Italia',to_date('21/08/13','DD/MM/RR'),'17','46','1','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1023','Brasil','Mexico',to_date('22/08/13','DD/MM/RR'),'17','36','2','0');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1024','Brasil','Italia',to_date('23/08/13','DD/MM/RR'),'17','27','4','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1025','Italia','Japao',to_date('24/08/13','DD/MM/RR'),'17','49','2','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1026','Brasil','Mexico',to_date('25/08/13','DD/MM/RR'),'17','36','1','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1027','Mexico','Espanha',to_date('24/08/13','DD/MM/RR'),'17','49','2','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1028','Brasil','Espanha',to_date('26/08/13','DD/MM/RR'),'17','45','0','3');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1029','Espanha','Italia',to_date('27/08/13','DD/MM/RR'),'17','46','0','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1030','Italia','Japao',to_date('29/08/13','DD/MM/RR'),'17','36','2','0');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1031','Brasil','Japao',to_date('30/08/13','DD/MM/RR'),'17','27','4','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1032','Mexico','Italia',to_date('01/09/13','DD/MM/RR'),'18','49','3','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1033','Brasil','Japao',to_date('02/09/13','DD/MM/RR'),'17','36','2','3');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1034','Espanha','Mexico',to_date('03/09/13','DD/MM/RR'),'18','45','1','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1035','Italia','Brasil',to_date('04/09/13','DD/MM/RR'),'18','46','3','4');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1036','Brasil','Mexico',to_date('05/09/13','DD/MM/RR'),'18','27','0','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1037','Mexico','Italia',to_date('06/09/13','DD/MM/RR'),'18','36','2','3');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1038','Espanha','Japao',to_date('07/09/13','DD/MM/RR'),'17','45','2','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1039','Brasil','Espanha',to_date('08/09/13','DD/MM/RR'),'18','46','1','0');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('1040','Italia','Brasil',to_date('09/09/13','DD/MM/RR'),'18','27','2','1');

Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('24','Brasil','2010','3');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('12','Mexico','2000','5');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('25','Italia','1979','10');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('78','Japao','1985','2');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('64','Espanha','1815','15');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('26','Brasil','1985','12');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('15','Brasil','1999','6');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('56','Brasil','1998','5');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('78','Brasil','1996','4');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('64','Mexico','1992','1');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('30','Mexico','1994','2');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('26','Mexico','1995','5');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('45','Italia','1992','8');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('56','Italia','1990','7');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('78','Italia','1989','9');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('12','Japao','1994','6');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('30','Japao','1997','5');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('45','Espanha','1997','4');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('56','Espanha','1994','1');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('15','Espanha','1995','2');

Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1011','1024','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1012','1023','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1013','1022','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1014','1021','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1015','1025','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1011','1021','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1012','1026','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1013','1027','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1014','1028','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1015','1029','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1011','1030','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1012','1031','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1013','1032','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1014','1033','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1015','1034','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1011','1035','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1012','1036','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1013','1037','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1014','1039','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('1015','1040','BANDEIRINHA');

Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('24','1021');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('24','1026');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('24','1035');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('24','1036');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('24','1040');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('28','1027');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('28','1033');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('28','1034');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','1022');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','1024');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','1030');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('87','1023');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('87','1032');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('87','1034');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('87','1037');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('97','1025');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('97','1029');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('97','1034');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('97','1038');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('97','1040');

Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1006','1022','1','0','0','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1007','1023','1','0','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1008','1025','0','0','3','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1009','1021','0','1','2','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1010','1024','0','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1006','1023','0','1','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1008','1022','0','1','2','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1009','1025','1','0','1','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1007','1026','1','0','0','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1008','1027','0','1','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1009','1027','1','0','2','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1010','1027','1','0','0','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1009','1028','1','0','1','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1008','1029','1','0','2','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1007','1031','0','1','0','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1006','1032','0','1','2','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1007','1034','1','0','3','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1006','1037','1','0','1','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1007','1039','0','1','2','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('1008','1040','1','0','0','1');

Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Sao Paulo','SP');
Insert into F03_TECNICO (CPFT,TECNICO) values ('801','Ney Franco');
Insert into F03_TECNICO (CPFT,TECNICO) values ('802','Tite');
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO) values ('Sao Paulo FC','1930','Sao Paulo','SP');
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO) values ('SC Corinthians Paulista','1910','Sao Paulo','SP');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('803','Rogerio Ceni','GOLEIRO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('804','Denis','GOLEIRO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('805','Lucio','ZAGUEIRO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('806','Rafael Toloi','ZAGUEIRO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('807','Rhodolfo','ZAGUEIRO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('824','Edson Silva','ZAGUEIRO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('808','Douglas','LATERAL','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('809','Juan','LATERAL','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('823','Caramelo','LATERAL','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('810','Rodrigo Caio','MEIO-CAMPO','Sao Paulo FC');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('811','Denilson','MEIO-CAMPO','Sao Paulo FC');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('812','Wellington silva','MEIO-CAMPO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('813','Pato','MEIO-CAMPO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('814','Jadson','MEIO-CAMPO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('815','Maicon','MEIO-CAMPO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('822','Roni','MEIO-CAMPO','Sao Paulo FC');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('816','Lucas Evangelista','MEIO-CAMPO','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('817','Osvaldinho','ATACANTE','Sao Paulo FC');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('818','Luis Fabiano','ATACANTE','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('819','Mercadante','ATACANTE','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('820','Ademilson','ATACANTE','Sao Paulo FC');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('821','Silvinho','ATACANTE','Sao Paulo FC');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('825','Cassio','GOLEIRO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('826','Tafarel','GOLEIRO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('827','Chicao','ZAGUEIRO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('828','Paulo Andre','ZAGUEIRO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('829','Gil','ZAGUEIRO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('830','Felipe','ZAGUEIRO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('831','Edenilson','LATERAL','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('832','Fabio Santos','LATERAL','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('843','Alessandro','LATERAL','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('833','Ralf','MEIO-CAMPO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('834','Guilherme','MEIO-CAMPO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('835','Danilo','MEIO-CAMPO','SC Corinthians Paulista');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('836','Renato Augusto','MEIO-CAMPO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('837','Marlon','MEIO-CAMPO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('838','Ibson','MEIO-CAMPO','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('839','Romarinho','ATACANTE','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('840','Emerson','ATACANTE','SC Corinthians Paulista');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('841','Guerrero','ATACANTE','SC Corinthians Paulista');
INSERT INTO F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) VALUES ('842','Alexandre Pato','ATACANTE','SC Corinthians Paulista');
INSERT INTO F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) VALUES ('81','Umbro','Ginga Brasil');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('82','Lupo','Just Do It');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('844','Ricardo Marques');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('845','Paulo Oliveira');
INSERT INTO F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) VALUES ('81','Recopa Sul-Americana','2013');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('81','Arena Palestra','Sao Paulo','SP','66795');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('82','Pacaembu','Sao Paulo','SP','38199');

Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('81','Rede Globo','T',null,'16','5000');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('82','Radio Bandeiras','R','96,5',null,'500');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('801','Sao Paulo FC','SC Corinthians Paulista',to_date('03/07/13','DD/MM/RR'),'81','81','1','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('802','SC Corinthians Paulista','Sao Paulo FC',to_date('17/07/13','DD/MM/RR'),'81','82','2','0');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('81','Sao Paulo FC','2010','15');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('82','SC Corinthians Paulista','2008','10');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('844','801','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('845','802','PRINCIPAL');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('81','801');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('81','802');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('82','801');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('82','802');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('809','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('813','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('814','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('812','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('819','801','0','0','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('832','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('833','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('840','801','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('841','801','1','0','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('808','802','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('835','802','1','0','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('839','802','0','0','1','0');

-- -------------------
Insert into F01_ESTADO (SIGLA,ESTADO) values ('BA','Bahia');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('CE','Ceará');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('CM','Comunidade Automa de Madrid');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('DF','Distrito Federal');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('MD','Distrito Federal de Mexico');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('MG','Minas Gerais');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('MV','Montevideo');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('PA','Papeete');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('PE','Pernambuco');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('RJ','Rio de Janeiro');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('RM','Roma');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('NG','Território da Capital Federal da Nigéria');
Insert into F01_ESTADO (SIGLA,ESTADO) values ('TO','Tokyo');

Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Abuja','NG');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Belo Horizonte','MG');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Brasilia','DF');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Cidade de Tokyo','TO');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Cidade do Mexico','MD');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Fortaleza','CE');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Madrid','CM');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Montevideo','MV');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Papeete','PA');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Recife','PE');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Rio de Janeiro','RJ');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Roma','RM');
Insert into F02_CIDADE (CIDADE,SIGLAC) values ('Salvador','BA');
Insert into F03_TECNICO (CPFT,TECNICO) values ('600','Arnaldo Antunes');
Insert into F03_TECNICO (CPFT,TECNICO) values ('601','Bernado Braga');
Insert into F03_TECNICO (CPFT,TECNICO) values ('602','Cesar Cruz');
Insert into F03_TECNICO (CPFT,TECNICO) values ('603','David Dias');
Insert into F03_TECNICO (CPFT,TECNICO) values ('604','Eduardo Elias');

Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Japão','1900','Cidade de Tokyo','TO',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Brasil','1900','Brasilia','DF',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Taiti','1900','Papeete','PA',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Espanha','1900','Madrid','CM',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Itália','1900','Roma','RM',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Uruguai','1900','Montevideo','MV',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('Nigéria','1900','Abuja','NG',null);
Insert into F04_TIME (TTIME,ANOFUNDACAO,CIDADE,ESTADO,CPFT) values ('México','1900','Cidade do Mexico','MD',null);

Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('601','Júlio César','GOLEIRO','Brasil');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('602','Jairzinho','ZAGUEIRO','Brasil');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('603','David Luiz','ZAGUEIRO','Brasil');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('604','Daniel Alves','LATERAL','Brasil');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('605','Neymar Jr','ATACANTE','Brasil');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('606','Eiji Kawashima','GOLEIRO','Japão');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('607','Keisuke Honda','MEIO-CAMPO','Japão');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('608','Yuzo Kurihara','ZAGUEIRO','Japão');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('609','Masahiko Inoha','ZAGUEIRO','Japão');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('610','Gotoku Sakai','ZAGUEIRO','Japão');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('611','Vincent Enyeama','GOLEIRO','Nigéria');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('612','Joseph Yobo','ZAGUEIRO','Nigéria');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('613','Nwankwo Obiora','MEIO-CAMPO','Nigéria');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('614','Reuben Gabriel','MEIO-CAMPO','Nigéria');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('615','Ideye Brown','ATACANTE','Nigéria');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('616','Fernando Muslera','GOLEIRO','Uruguai');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('617','Martín Cáceres','LATERAL','Uruguai');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('618','Walter Gargano','MEIO-CAMPO','Uruguai');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('619','Diego Godín','ZAGUEIRO','Uruguai');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('620','Luis Suárez','ATACANTE','Uruguai');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('621','Gianluigi Buffon','GOLEIRO','Itália');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('622','Christian Maggio','ZAGUEIRO','Itália');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('623','Ignazio Abate','ZAGUEIRO','Itália');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('624','Daniele De Rossi','MEIO-CAMPO','Itália');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('625','Mario Balotelli','ATACANTE','Itália');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('626','Mickaël Roche','GOLEIRO','Taiti');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('627','Teheivarii Ludivion','ZAGUEIRO','Taiti');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('628','Edson Lemaire','ZAGUEIRO','Taiti');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('629','Rainui Aroita','ZAGUEIRO','Taiti');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('630','Vincent Simon','ZAGUEIRO','Taiti');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('631','Iker Casillas','GOLEIRO','Espanha');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('632','Raúl Albiol','ZAGUEIRO','Espanha');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('633','Andrés Iniesta','MEIO-CAMPO','Espanha');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('634','Xavi Hernández','MEIO-CAMPO','Espanha');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('635','Pedro Rodríguez','ATACANTE','Espanha');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('636','Guillermo Ochoa','GOLEIRO','México');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('637','Francisco Rodríguez','ZAGUEIRO','México');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('638','Jesús Molina','MEIO-CAMPO','México');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('639','Héctor Herrera','MEIO-CAMPO','México');
Insert into F05_JOGADOR (CPFJ,JOGADOR,POSICAO,TTIMEJ) values ('640','Aldo de Nigris','ATACANTE','México');

Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('60','Coca-cola','Sempre Coca-cola');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('61','Casas Bahia','Dedicação total a você');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('62','Nescau','Energia que dá gosto');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('63','Ypê','Duvida porque? Sabão é Ypê');
Insert into F06_PATROCINADOR (IDPAT,PATROCINADOR,SLOGAN) values ('64','Bombril','1001 utilidades');

Insert into F07_ARBITRO (CPFA,ARBITRO) values ('603','Antônio Prado');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('604','Fernando Moraes');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('601','Joaquim Santos');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('600','João Silva');
Insert into F07_ARBITRO (CPFA,ARBITRO) values ('602','Lucas Ferreira');

Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('60','Copa das Confederações 2012','2012');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('61','Copa das Confederações 2013','2013');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('62','Copa das Confederações 2014','2014');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('63','Copa das Confederações 2015','2015');
Insert into F08_CAMPEONATO (IDCAMPEONATO,CAMPEONATO,ANO) values ('64','Copa das Confederações 2016','2016');

Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('60','Arena Pernambuco','Recife','PE','50000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('61','Maracanã','Rio de Janeiro','RJ','50000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('62','Arena Fonte Nova','Salvador','BA','50000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('63','Mineirão','Belo Horizonte','MG','50000');
Insert into F09_ESTADIO (IDESTADIO,ESTADIO,CIDADE,ESTADO,CAPACIDADE) values ('64','Castelão','Fortaleza','CE','50000');

Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('60','Globo','T',null,'5','1500');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('61','Bandeirantes','T',null,'13','1200');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('62','SporTV','T',null,'41','1300');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('63','Rádio Globo','R','601',null,'500');
Insert into F10_EMISSORA (IDEMISSORA,EMISSORA,TIPO,FREQUENCIA,CANAL,CUSTO_MINUTO) values ('64','Rádio Bandeirantes','R','600',null,'500');

Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('600','Brasil','Japão',to_date('15/06/13','DD/MM/RR'),'61','60','3','0');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('601','Taiti','Uruguai',to_date('17/06/13','DD/MM/RR'),'61','61','2','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('602','México','Nigéria',to_date('18/06/13','DD/MM/RR'),'61','62','3','4');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('603','Uruguai','Itália',to_date('19/06/13','DD/MM/RR'),'61','63','5','5');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('604','Itália','México',to_date('20/05/14','DD/MM/RR'),'60','64','2','5');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('605','Nigéria','Taiti',to_date('21/05/14','DD/MM/RR'),'60','61','4','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('606','Espanha','Japão',to_date('22/05/14','DD/MM/RR'),'60','62','8','5');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('607','Brasil','Taiti',to_date('23/05/14','DD/MM/RR'),'60','63','3','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('608','Taiti','Brasil',to_date('24/07/15','DD/MM/RR'),'62','64','1','4');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('609','México','Uruguai',to_date('25/07/15','DD/MM/RR'),'62','60','8','5');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('610','Nigéria','Japão',to_date('26/07/15','DD/MM/RR'),'62','61','2','3');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('615','Itália','Taiti',to_date('31/07/15','DD/MM/RR'),'63','61','3','4');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('616','Japão','Uruguai',to_date('01/07/17','DD/MM/RR'),'64','62','1','3');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('617','Espanha','Nigéria',to_date('02/07/17','DD/MM/RR'),'64','63','2','5');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('618','Taiti','Brasil',to_date('03/07/17','DD/MM/RR'),'64','64','6','3');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('611','México','Itália',to_date('27/07/15','DD/MM/RR'),'62','62','3','2');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('619','Brasil','Itália',to_date('04/07/15','DD/MM/RR'),'64','60','2','4');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('612','Uruguai','Espanha',to_date('28/07/16','DD/MM/RR'),'63','63','1','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('613','Brasil','Itália',to_date('29/07/16','DD/MM/RR'),'63','64','2','1');
Insert into F11_PARTIDA (IDPARTIDA,TTIME1,TTIME2,DATAHORA,IDCAMPEONATOP,IDESTADIOP,GOLS_TIME1,GOLS_TIME2) values ('614','Espanha','México',to_date('30/07/16','DD/MM/RR'),'63','60','3','1');

Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('60','Brasil','2013','30');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('61','Brasil','2013','30');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('62','Brasil','2013','30');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('63','Brasil','2013','30');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('64','Brasil','2013','30');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('60','Espanha','2009','100');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('61','Espanha','2009','100');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('62','Espanha','2009','100');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('63','Itália','2000','999');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('64','Itália','2000','999');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('60','Taiti','2011','555');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('61','México','2012','333');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('62','México','2012','333');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('63','Nigéria','2010','120');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('64','Nigéria','2010','120');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('60','Uruguai','2008','500');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('61','Uruguai','2008','500');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('62','Japão','2010','200');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('63','Japão','2010','200');
Insert into F12_PATROCINA (IDPAT,TTIME,INICIO_VIGENCIA,TEMPO_VIGENCIA) values ('64','Taiti','2011','555');

Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('600','600','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('601','601','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('602','602','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('603','603','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('604','604','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('600','605','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('601','606','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('602','607','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('603','608','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('604','609','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('601','610','BANDEIRINHA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('602','611','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('603','612','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('604','613','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('600','614','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('600','615','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('601','616','RESERVA');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('602','617','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('603','618','PRINCIPAL');
Insert into F13_APITA (CPFA,IDPARTIDA,FUNCAO) values ('604','619','PRINCIPAL');

Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('60','600');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('60','605');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('60','610');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('60','615');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('61','601');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('61','606');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('61','611');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('61','616');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('62','602');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('62','607');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('62','612');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('62','617');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('63','603');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('63','608');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('63','613');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('63','618');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','604');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','609');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','614');
Insert into F14_TRANSMITE (IDEMISSORA,IDPARTIDA) values ('64','619');

Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('601','600','1','0','1','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('602','601','1','0','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('603','602','1','0','1','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('604','603','1','0','1','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('605','604','1','0','1','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('606','605','0','1','1','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('607','606','0','1','2','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('608','607','0','1','2','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('609','608','0','1','2','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('610','609','0','1','2','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('611','610','0','1','2','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('612','611','1','0','0','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('613','612','1','0','0','0');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('614','613','1','0','0','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('615','614','1','0','0','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('616','615','1','0','0','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('617','616','1','0','1','2');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('618','617','1','0','1','3');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('619','618','1','0','1','1');
Insert into F15_GOLS_CARTOES (CPFJ,IDPARTIDA,AMARELO,VERMELHO,GOLS,GOLS_CONTRA) values ('620','619','1','0','1','0');