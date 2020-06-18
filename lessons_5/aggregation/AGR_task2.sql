SHOW DATABASES ;
USE shop;

-- РЕШЕНИЕ

SELECT  COUNT(*) AS count_weekday,1+WEEKDAY(CONCAT(YEAR(NOW()), '-',MONTH(birthday_at),'-', DAY(birthday_at))) AS weekday FROM users GROUP BY weekday;

SELECT WEEKDAY('2020-06-15');