USE VK;
-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
SELECT
       (SELECT gender FROM profiles WHERE profiles.user_id=likes.user_id ) AS gender,
       COUNT(id) AS total
FROM likes GROUP BY gender ORDER BY total;

-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 5 самых молодых пользователей).
-- У МЕНЯ ВСЕГО ДЕСЯТЬ ПОЛЬЗОВАТЕЛЕЙ, ПОЭТОМУ ЗАДАЧУ СДЕЛАЛ ДЛЯ 5 ПОЛЬЗОВАТЕЛЕЙ
SELECT COUNT(*) AS total_likes,
       (SELECT birthday FROM profiles WHERE profiles.user_id = likes.user_id) AS birthday,
       (SELECT CONCAT(first_name,' ',last_name,' ',(SELECT gender FROM profiles WHERE user_id=likes.user_id)) FROM users WHERE id = likes.user_id) AS user
FROM likes GROUP BY birthday,user ORDER BY total_likes DESC , user LIMIT 5;

-- НАЙТИ 3 ПОЛЬЗОВАТЕЛЕЙ, КОТОРЫЕ ПРОЯВЛЯЮТ НАИМЕНЬШУЮ АКТИВНОСТЬ В ИСПОЛЬЗОВАНИИ СОЦИАЛЬНОЙ СЕТИ
--          У МЕНЯ ВСЕГО ДЕСЯТЬ ПОЛЬЗОВАТЕЛЕЙ, ПОЭТОМУ ЗАДАЧУ СДЕЛАЛ ДЛЯ 3 ПОЛЬЗОВАТЕЛЕЙ
-- КРИТЕРИИ ОТБОРА
-- какой пользователь написал менше сообщений
--      критерием активоности по данному разделу будем считать инициализацию нового собщения пользователем
-- какой пользователь написал менше постов
-- какой пользователь поставил менше лайков
SELECT from_user_id, COUNT(*) total FROM (
    (SELECT from_user_id, COUNT(id) TOTAL FROM messages GROUP BY from_user_id ORDER BY TOTAL LIMIT 3)
    UNION ALL
    (SELECT user_id, COUNT(*) AS COUNT FROM posts GROUP BY user_id ORDER BY COUNT LIMIT 3)
    UNION ALL
    (SELECT user_id, COUNT(*) AS COUNT FROM likes GROUP BY user_id ORDER BY COUNT LIMIT 3)) AS TOTAL
GROUP BY from_user_id ORDER BY total DESC LIMIT 3;
