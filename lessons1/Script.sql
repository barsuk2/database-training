-- SHOW DATABASES;
DROP  DATABASE  IF EXISTS example; 
CREATE DATABASE example;
SHOW DATABASES;
-- янгдюире аюгс дюммшу EXAMPLE, пюглеярхре б меи рюакхжс USERS, янярнъысч хг дбсу ярнкажнб, вхякнбнцн ID х ярпнйнбнцн NAME.
USE example ;
CREATE TABLE USERS (
ID INT, NAME VARCHAR(50)
);
SHOW TABLES;
DESCRIBE USERS;
-- MYSQLDUMP EXAMPLE > DAMP_EXAMPLE.SQL янгдюмхе дюлою
CREATE DATABASE sample;
-- MYSQL SAMPLE < DAMP_EXAMPLE.SQL - гюцпсгйю дюлою б мнбсч аюгс
SHOW TABLES FROM sample;
SHOW TABLES FROM mysql;
SHOW TABLES FROM exsample;

-- пЕЬЕМХЕ 4 ГЮДЮВХ
-- mysqldump mysql help_keyword --where 'help_keyword_id <101'  > dump_mysql.sql;



