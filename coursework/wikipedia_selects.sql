USE wiki;
-- ВЫВЕСТИ СОЗДАННЫЕ ДОКУМЕНТЫ ЗА ТЕКУЩИЙ МЕСЯЦ
SELECT * FROM documents WHERE MONTH (create_at) = MONTH(CURDATE()) AND  YEAR(create_at) = YEAR(CURDATE());
-- ВЫВЕСТИ ДОКУМЕНТЫ ИЗМЕНЕННЫЕ В ТЕКУЩИМ МЕСЯЦ
SELECT * FROM changes WHERE MONTH (date_of_changes) = MONTH(CURDATE()) AND  YEAR(date_of_changes) = YEAR(CURDATE());
-- ВЫВЕСТИ СЛУЧАЙНОЕ ИЗОБРАЖЕНИЕ
SELECT filename FROM media  WHERE media_types_id = 1 ORDER BY RAND() LIMIT 1;
-- ВЫВЕСТИ СЛУЧАЙНУЮ СТАТЬЮ (ВЛОЖЕННЫЕ ЗАПРОСЫ)
SELECT title_doc, text_doc, (SELECT  CONCAT(first_name,' ',last_name)
FROM users  WHERE id =documents.user_id) AS FL_name FROM documents ORDER BY RAND() LIMIT 1;
-- (JOIN)
SELECT title_doc, text_doc, CONCAT(u.first_name,' ',u.last_name) AS FL_name FROM documents
    JOIN users u on documents.user_id = u.id ORDER BY RAND() LIMIT 1;

-- ВЫВЕСТИ ВСЕ СТАТЬИ ПО КАТЕГОРИЯМ, ЕСЛИ КАТЕГОРИИ НЕТ, ТО ВЫВЕСТИ ЭТИ ДОКУМЕНТЫ В КОНЦЕ
SELECT t.name, title_doc, text_doc  FROM documents
    LEFT JOIN docs_tags_ dt on documents.id = dt.docs_id
     LEFT JOIN tags t on dt.tags_id = t.id ORDER BY t.name is null ,t.name;

-- СПОСОК СТАТЕЙ НЕ НА ЯЗЫКЕ ПОЛЬЗОВАТЕЛЯ
SELECT title_doc, l.name  FROM documents d JOIN language l on d.language_id = l.id
WHERE d.language_id in (SELECT id FROM language WHERE name != 'Руссский');


-- КОЛИЧЕСТВО СТАТЕЙ В РАЗРЕЗЕ ЯЗЫКОВ И  В ПРОЦЕНТНОМ ОТНОШЕНИИ
SELECT l.name, COUNT(*) total, (SELECT COUNT(*) FROM documents) alldocs, COUNT(*)*100/(SELECT COUNT(*) FROM documents) AS "%%"  FROM documents d JOIN language l on d.language_id = l.id
GROUP BY l.name ORDER BY total DESC ;


-- КОЛИЧЕСТВО ПОЛЬЗОВАТЕЛЕЙ   В РАЗРЕЗЕ ЯЗЫКОВ И  В ПРОЦЕНТНОМ ОТНОШЕНИИ
SELECT l.name,  COUNT(*) total,
       (SELECT COUNT(*) FROM users) 'all' , COUNT(*)*100/(SELECT COUNT(*) FROM users) AS '%%'
    FROM users
    JOIN profiles p on users.id = p.user_id
    JOIN language l on p.language_id = l.id
    GROUP BY  p.language_id ORDER BY total DESC ;
-- ТОЖЕ В ОКОННЫХ ФУНКЦИЯХ
SELECT DISTINCT l.name,
                COUNT(p.language_id) OVER (PARTITION BY p.language_id) AS total,
                (SELECT COUNT(*) FROM users) 'all',
                100*COUNT(p.language_id) OVER (PARTITION BY p.language_id)/(SELECT COUNT(*) FROM users) AS '%%'
 FROM users
     JOIN profiles p on users.id = p.user_id JOIN
     language l on p.language_id = l.id

ORDER BY total DESC ;


CREATE INDEX profiles_birthday_idx ON profiles(birthday);
CREATE UNIQUE INDEX users_email_uq ON users(email);
CREATE  INDEX tags_name_idx ON tags(name);


show index from profiles;
show index from tags;
show index from users;
SHOW CREATE TABLE profiles;