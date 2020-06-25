DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
  id SERIAL PRIMARY KEY,
  storehouse_id INT UNSIGNED,
  product_id INT UNSIGNED,
  value INT UNSIGNED COMMENT 'Запас товарной позиции на складе',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Запасы на складе';

SELECT * FROM storehouses_products ORDER BY value DESC;
USE vk;
SELECT * FROM storehouses_products
ORDER BY value = 0, value;
-- ORDER BY IF( value = 0, 1, 0 ) , value
-- ОБА ВАРИАНТА НАШЕЛ В ИНТЕРНЕТЕ, НЕ ПОНЯТЕН СИНТАКСИС. ПРОШУ ИХ ОБЪЯСНИТЬ НА ЗАНЯТИИ