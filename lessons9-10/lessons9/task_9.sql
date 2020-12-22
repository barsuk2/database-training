-- В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
-- Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
USE sample;
DROP TABLE IF EXISTS USERS;
CREATE TABLE `users`
(
    `id`          bigint unsigned NOT NULL AUTO_INCREMENT,
    `name`        varchar(255) DEFAULT NULL COMMENT 'Имя покупателя',
    `birthday_at` date         DEFAULT NULL COMMENT 'Дата рождения',
    `created_at`  datetime     DEFAULT CURRENT_TIMESTAMP,
    `updated_at`  datetime     DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id` (`id`)
) COMMENT ='Покупатели';

START TRANSACTION;
USE shop;
SELECT @id := id,
       @NAME := name,
       @birthday_at := birthday_at,
       @created_at := created_at,
       @updated_at := updated_at
FROM users
WHERE id = 1;
DELETE
FROM users
WHERE id = @id;
USE sample;
INSERT INTO users (name, birthday_at, created_at, updated_at)
VALUES (@NAME, @birthday_at, @created_at, @updated_at);
COMMIT;
# ROLLBACK;

-- Создайте представление, которое выводит название name товарной позиции из таблицы
-- products и соответствующее название каталога name из таблицы catalogs.
USE shop;
CREATE OR REPLACE VIEW prod AS
SELECT p.id, p.name AS name, price, c.name AS categorie, LENGTH(c.name) len_name
FROM products p
         JOIN catalogs c ON p.catalog_id = c.id
ORDER BY categorie;

SELECT *
FROM prod;

-- Пусть имеется таблица с календарным полем created_at. В ней размещены разряженые
-- календарные записи за август 2018 года '2018-08-01', '2016-08-04', '2018-08-16' и 2018-08-17.
-- Составьте запрос, который выводит полный список дат за август, выставляя в соседнем поле значение 1,
-- если дата присутствует в исходном таблице и 0, если она отсутствует.

SELECT STR_TO_DATE(REPLACE('2017=08=14', '=', ','), '%Y,%m,%d') - INTERVAL 1 MONTH;
SELECT STR_TO_DATE("2017,8,14", "%Y,%m,%d");

CREATE TEMPORARY TABLE temp_tab_num (id INT);
INSERT INTO temp_tab_num VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),
                            (16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30);

CREATE TEMPORARY TABLE temp_tab_aug (id INT, august DATE);
INSERT INTO temp_tab_aug VALUES (1,'2018-08-01'),
                                (2,'2016-08-04'),
                                (3,'2018-08-16'),
                                (4,'2018-08-17');
SELECT DATE('2018-08-01')+ INTERVAL tu.id DAY, IF(ta.id,1,0) FROM temp_tab_num  tu LEFT JOIN  temp_tab_aug ta
    ON (DATE('2018-08-01')+ INTERVAL tu.id DAY )= ta.august;





-- ПРАКТИЧЕСКОЕ ЗАДАНИЕ ПО ТЕМЕ “ХРАНИМЫЕ ПРОЦЕДУРЫ И ФУНКЦИИ, ТРИГГЕРЫ"

-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие, в зависимости от текущего
-- времени суток. С 6:00 до 12:00 функция должна возвращать фразу "Доброе утро", с 12:00 до 18:00 функция
-- должна возвращать фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", с 00:00 до 6:00 — "Доброй ночи".


# DELIMITER //
DROP PROCEDURE IF EXISTS hello;
CREATE PROCEDURE hello()
BEGIN
    SET @X1 = 'Доброе утро';
    SET @X2 = 'Добрый день';
    SET @X3 = 'Добрый вечер';
    SET @X4 = 'Доброй ночи';
    SET @now = HOUR(NOW());
    IF (@now >= 6 AND @now <= 12) THEN
        SELECT @now, @X1;
    ELSEIF (@now > 12 AND @now <= 18) THEN
        SELECT @now, @X2;
    ELSEIF (@now > 18 AND @now <= 24) THEN
        SELECT @now, @X3;
    ELSE
        SELECT @now, @X4;
    end if;
END;
# DELIMITER ;

call hello();
-- 2. В таблице products есть два текстовых поля: name с названием товара и description с его описанием.
-- Допустимо присутствие обоих полей или одно из них. Ситуация, когда оба поля принимают неопределенное
-- значение NULL неприемлема. Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля были заполнены.
-- При попытке присвоить полям NULL-значение необходимо отменить операцию.
SELECT *
FROM products;
DESC products;


DROP TRIGGER products_trig;
CREATE TRIGGER products_trig    BEFORE INSERT ON products
    FOR EACH ROW
BEGIN
    IF NEW.name IS NULL AND NEW.desription IS NULL THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'По условиям ТЗ, должно быть заполено хотя бы одно из полей: name или  desription';
    end if;
end ;


