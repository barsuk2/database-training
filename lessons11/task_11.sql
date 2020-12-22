-- Создайте таблицу logs типа Archive. Пусть при каждом создании записи в таблицах users,
-- catalogs и products в таблицу logs помещается время и дата создания записи,
-- название таблицы, идентификатор первичного ключа и содержимое поля name.

USE shop;
DESC logs;


DROP TABLE logs;
CREATE TABLE logs (id int unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY ,
mydate DATETIME DEFAULT CURRENT_TIMESTAMP , NAME_TABLE VARCHAR(50), id_docs INT, myname VARCHAR(50) ) ENGINE = Archive;

SHOW CREATE TABLE logs;

DROP TRIGGER user_logs;
CREATE TRIGGER user_logs AFTER INSERT on shop.users
    FOR EACH ROW
    BEGIN
        INSERT INTO logs (NAME_TABLE, id_docs, myname)  VALUES ('users', NEW.id, NEW.name );
    END;

DROP TRIGGER IF EXISTS catalogs_logs;
CREATE TRIGGER catalogs_logs AFTER INSERT on shop.catalogs
    FOR EACH ROW
    BEGIN
        INSERT INTO logs (NAME_TABLE, id_docs, myname)  VALUES ('users', NEW.id, NEW.name );
    END;

DROP TRIGGER IF EXISTS catalogs_logs;

CREATE TRIGGER products_logs AFTER INSERT on shop.products
    FOR EACH ROW
    BEGIN
        INSERT INTO logs (NAME_TABLE, id_docs, myname)  VALUES ('users', NEW.id, NEW.name );
    END;



SELECT * FROM users;
SELECT * FROM catalogs;
SELECT * FROM products;
DESC users;
INSERT INTO users (name,birthday_at) VALUES ('sveb', '1966-12-10');
INSERT INTO products (name,desription, price, catalog_id) VALUES ('Intel Core i3-8102',
                                                                  'Процессор для настольных персональных компьютеров,
основанных на платформе Intel.atom',7890.00,1);
INSERT INTO catalogs (name) VALUES ('память');
SELECT * FROM logs;
DELETE FROM logs WHERE id= 1;


# В базе данных Redis подберите коллекцию для подсчета посещений
# с определенных IP-адресов.



-- ДЛЯ ПОДСЧЕТА ПОСЕЩЕНИЙ С ОПРДЕЛЕННЫХ IP НУЖНО ИСПОЛЬЗОВАТЬ МНОЖЕСТВА, так как остануться только уникальные IP

SADD IP '192.168.1.10'  '192.168.12.10' '192.168.1.10' '192.168.11.10',

-- При помощи базы данных Redis решите задачу поиска имени
# пользователя по электронному адресу и наоборот,
# поиск электронного адреса пользователя по его имени.


-- создаем пару ключ - значене для всех нужных адресов
127.0.0.1:6379> set egor@rgkazan.ru egor_id_123123
-- создаем хеш: ключ - значене для пользоваетьских атрибутов
127.0.0.1:6379> hset egor_id_123123 name egor emial egor@rgkazan.ru
-- поиск по e-mail:
127.0.0.1:6379> get egor@rgkazan.ru
"egor_id_123123"
127.0.0.1:6379> hget egor_id_123123 name
"egor"
-- поиск по имени
127.0.0.1:6379> KEYS egor*
1) "egor_id_123123"
2) "egor@rgkazan.ru"
127.0.0.1:6379> HGET egor_id_123123 emial
"egor@rgkazan.ru"


# Организуйте хранение категорий и товарных позиций учебной
# базы данных shop в СУБД MongoDB.
> db.shop.find()
{ "_id" : ObjectId("5f0823af6bfa1e4c340d0aa6"), "catalog" : "Материнские платы" }
{ "_id" : ObjectId("5f0824126bfa1e4c340d0aa7"), "catalog" : "Оперативная память" }
{ "_id" : ObjectId("5f08241f6bfa1e4c340d0aa8"), "catalog" : "Процессоры" }

 db.shop.find()
{ "_id" : ObjectId("5f0826c42c604b48e9b32f52"), "prod_name" : "Intel Core i3-8100", "prod_desc" : "Процессор для настольных персональных компьютеров", "prod_price" : 7890, "prod_catalog" : "ObjectId(\"5f08241f6bfa1e4c340d0aa8\"" }
{ "_id" : ObjectId("5f0826cf2c604b48e9b32f53"), "prod_name" : "Gigabyte H310M S2H", "prod_desc" : "Материнская плата Gigabyte H310M S2H", "prod_price" : 4890, "prod_catalog" : "ObjectId(\"5f0823af6bfa1e4c340d0aa6\"" }
