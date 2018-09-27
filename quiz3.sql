-- PARTE I --
-- 1)
--CREATE TABLESPACE quiz_noche
--  DATAFILE 'quiz_noche.dbf' SIZE 10M, 'quiz_noche2.dbf' SIZE 10M;

-- 2)
--CREATE PROFILE estudiante LIMIT
--  IDLE_TIME 5;

-- 3)
--CREATE USER user1 
--  IDENTIFIED BY user1
--  PROFILE estudiante
--  DEFAULT TABLESPACE quiz_noche;
  
--GRANT CONNECT, CREATE TABLE TO user1;

--ALTER USER user1 QUOTA UNLIMITED ON quiz_noche;

-- 4)
--CREATE USER user2
--  IDENTIFIED BY user2
--  PROFILE estudiante
--  DEFAULT TABLESPACE quiz_noche;

--GRANT CONNECT TO user2;

--ALTER USER user2 QUOTA UNLIMITED ON quiz_noche;

---- PARTE II --
-- 1)
create table attacks (
	id INT,
	url VARCHAR(2048),
	ip_address VARCHAR(20),
	number_of_attacks INT,
	time_of_last_attack TIMESTAMP
);

-- 2)
--SELECT * FROM ATTACKS;

-- 3)
--GRANT SELECT ON user1.ATTACKS TO user2;

--GRANT SELECT ON user1.ATTACKS TO user2;

-- PARTE III --
-- 1)
SELECT COUNT(URL) FROM ATTACKS WHERE URL LIKE 'http:%';

-- 2)
SELECT * FROM ATTACKS WHERE URL LIKE '%google%' ORDER BY NUMBER_OF_ATTACKS DESC;

-- 3)
SELECT IP_ADDRESS, TIME_OF_LAST_ATTACK FROM ATTACKS WHERE TIME_OF_LAST_ATTACKS BETWEEN TO_DATE ('2018-01-01T00:00:00', 'YYYY-MM-DD"T"HH24:MI:SS') AND TO_DATE('2018-12-31T00:00:00', 'YYYY-MM-DD"T"HH24:MI:SS');