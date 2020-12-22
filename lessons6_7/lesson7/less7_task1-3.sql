USE shop;
DROP TABLE IF EXISTS rubrics;
CREATE TABLE rubrics (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела'
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO rubrics VALUES
  (NULL, 'Видеокарты'),
  (NULL, 'Память');

(SELECT * FROM catalogs)
UNION DISTINCT
(SELECT * FROM rubrics ORDER BY name) LIMIT 5;
SELECT * FROM catalogs;
SELECT * FROM products;
UPDATE products SET catalog_id = 1+ RAND()*4;
SELECT
       (SELECT name FROM catalogs WHERE id= products.catalog_id) AS PRODUCT,
       COUNT(*) total
FROM products GROUP BY catalog_id;
SELECT name , (SELECT name FROM catalogs WHERE id= products.catalog_id) FROM products WHERE catalog_id =
                                                                                            (SELECT id FROM catalogs WHERE catalogs.name LIKE 'Мат%');
SELECT  * FROM products WHERE price > (SELECT AVG(price) FROM products);

SELECT catalog_id, COUNT(*) FROM products GROUP BY catalog_id;

SELECT * FROM products WHERE catalog_id = 2 AND price < ANY (SELECT price FROM products WHERE catalog_id = 1);

SELECT * FROM products WHERE  catalog_id = 5;


CREATE TABLE tbl1 (
  value VARCHAR(255)
);
INSERT INTO tbl1
VALUES ('fst1'), ('fst2'), ('fst3');

CREATE TABLE tbl2 (
  value VARCHAR(255)
);
INSERT INTO tbl2
VALUES ('snd1'), ('snd2'), ('snd3');

SELECT * FROM tbl1;
SELECT * FROM tbl2;

SELECT * FROM tbl1 JOIN tbl2;
SELECT * FROM catalogs;
SELECT p.name, p.price, c.name FROM catalogs AS c JOIN products AS p
ON p.catalog_id = c. id ORDER BY p.name;

SELECT name, price,   (SELECT name FROM catalogs WHERE id= products.catalog_id) FROM products ORDER BY name;

SELECT * FROM catalogs AS C JOIN catalogs AS QWE ON C.id=QWE.id;

SELECT * FROM rubrics;
SELECT * FROM catalogs;
SELECT * FROM rubrics r JOIN catalogs c on r.name = c.name;
SELECT * FROM rubrics r LEFT JOIN catalogs c on r.name = c.name;
SELECT * FROM rubrics r RIGHT JOIN catalogs c on r.name = c.name;
SELECT
  p.name,
  p.price,
  c.name
FROM
  catalogs AS c
RIGHT JOIN
  products AS p
ON
  c.id = p.catalog_id;
SELECT  FROM catalogs JOIN products ON catalogs.id = products.catalog_id WHERE catalog_id = 6;
UPDATE catalogs JOIN products ON catalogs.id = products.catalog_id SET price = price*0.9 WHERE catalogs.name = 'Видеокарты';
DELETE
    products, catalogs
FROM catalogs
    JOIN products
        on catalogs.id =products.catalog_id
WHERE catalogs.name = 'Кулер';


DELETE products FROM products JOIN catalogs c on products.catalog_id = c.id WHERE c.name = 'Кулер';

SELECT
-- Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
SELECT u.name, COUNT(*) total FROM orders JOIN users u on orders.user_id = u.id GROUP BY u.name HAVING total >1 ORDER BY total DESC ;

-- Выведите список товаров products и разделов catalogs, который соответствует товару.
SELECT products.name, catalogs.name FROM catalogs JOIN products ON catalogs.id = products.catalog_id;


-- (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name).
-- Поля from, to и label содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.

CREATE TABLE flights (id INT, `from` VARCHAR(50), `to` VARCHAR(50));
CREATE TABLE cities (label VARCHAR(50), name VARCHAR(50));

INSERT INTO `flights` (`id`, `from`, `to`) VALUES ('1', 'moscow', 'omsk');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES ('2', 'novgorod', 'kazan');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES ('3', 'irkutsk', 'moscow');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES ('4', 'omsk', 'irkutsk');
INSERT INTO `flights` (`id`, `from`, `to`) VALUES ('5', 'moscow', 'kazan');

INSERT INTO `cities` (`label`, `name`) VALUES ('moscow', 'москва');
INSERT INTO `cities` (`label`, `name`) VALUES ('kazan', 'казань');
INSERT INTO `cities` (`label`, `name`) VALUES ('irkutsk', 'иркутск');
INSERT INTO `cities` (`label`, `name`) VALUES ('omsk', 'омск');
INSERT INTO `cities` (`label`, `name`) VALUES ('novgorod', 'новгород');

SELECT * FROM flights;
SELECT * FROM cities;
SELECT * FROM;
SELECT f.id,  c1.name, c.name FROM flights  f JOIN cities c on f.`to` = label JOIN cities c1 ON f.`from` = c1.label ORDER BY f.id;

SELECT f.id, c.name, c.name FROM flights f JOIN cities c ON f.`from` = c.name;





