-- SHOW DATABASES;
DROP  DATABASE  IF EXISTS example; 
CREATE DATABASE example;
SHOW DATABASES;
-- �������� ���� ������ EXAMPLE, ���������� � ��� ������� USERS, ��������� �� ���� ��������, ��������� ID � ���������� NAME.
USE example ;
CREATE TABLE USERS (
ID INT, NAME VARCHAR(50)
);
SHOW TABLES;
DESCRIBE USERS;
-- MYSQLDUMP EXAMPLE > DAMP_EXAMPLE.SQL �������� �����
CREATE DATABASE sample;
-- MYSQL SAMPLE < DAMP_EXAMPLE.SQL - �������� ����� � ����� ����
SHOW TABLES FROM sample;
SHOW TABLES FROM mysql;
SHOW TABLES FROM exsample;

-- ������� 4 ������
-- mysqldump mysql help_keyword --where 'help_keyword_id <101'  > dump_mysql.sql;



