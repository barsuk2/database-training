-- Определить кто больше поставил лайков (всего) - мужчины или женщины?
use vk;
SELECT (SELECT gender FROM profiles WHERE profiles.user_id = likes.user_id) AS gender,
       COUNT(id)                                                            AS total
FROM likes
GROUP BY gender
ORDER BY total;
SELECT *
FROM profiles;
-- с помощью JOIN
SELECT gender, COUNT(id)
FROM likes
         JOIN profiles
              ON likes.user_id = profiles.user_id
GROUP BY gender
ORDER BY gender
LIMIT 1;

-- Подсчитать общее количество лайков десяти самым молодым пользователям (сколько лайков получили 5 самых молодых пользователей).
SELECT *
FROM likes;
SELECT COUNT(likes.user_id) total_likes, p.birthday, users.last_name
FROM likes
         JOIN target_types tt on likes.target_type_id = tt.id
         JOIN users ON likes.user_id = users.id
         JOIN profiles p ON users.id = p.user_id
WHERE name = 'users'
GROUP BY birthday, last_name
ORDER BY birthday DESC
LIMIT 5;

-- НАЙТИ 3 ПОЛЬЗОВАТЕЛЕЙ, КОТОРЫЕ ПРОЯВЛЯЮТ НАИМЕНЬШУЮ АКТИВНОСТЬ В ИСПОЛЬЗОВАНИИ СОЦИАЛЬНОЙ СЕТИ
--          У МЕНЯ ВСЕГО ДЕСЯТЬ ПОЛЬЗОВАТЕЛЕЙ, ПОЭТОМУ ЗАДАЧУ СДЕЛАЛ ДЛЯ 3 ПОЛЬЗОВАТЕЛЕЙ
-- КРИТЕРИИ ОТБОРА
-- какой пользователь написал менше сообщений
--      критерием активоности по данному разделу будем считать инициализацию нового собщения пользователем
-- какой пользователь написал менше постов
-- какой пользователь поставил менше лайков
SELECT from_user_id, COUNT(*) total
FROM (
         (SELECT from_user_id, COUNT(id) TOTAL FROM messages GROUP BY from_user_id ORDER BY TOTAL LIMIT 3)
         UNION ALL
         (SELECT user_id, COUNT(*) AS COUNT FROM posts GROUP BY user_id ORDER BY COUNT LIMIT 3)
         UNION ALL
         (SELECT user_id, COUNT(*) AS COUNT FROM likes GROUP BY user_id ORDER BY COUNT LIMIT 3)) AS TOTAL
GROUP BY from_user_id
ORDER BY total DESC
LIMIT 5;



SELECT id, first_name, COUNT(*) AS count_ FROM ((SELECT u.id, first_name,  COUNT(p.id) total_posts
FROM users u
         LEFT JOIN posts p on u.id = p.user_id
GROUP BY u.first_name, u.id
ORDER BY total_posts , u.id LIMIT 3)
UNION
(SELECT u1.id, u1.first_name,  COUNT(l.id) total_posts
FROM users u1
         LEFT JOIN likes l on u1.id = l.user_id
GROUP BY u1.first_name, u1.id
ORDER BY total_posts , u1.id LIMIT 3)
UNION
(SELECT u1.id, u1.first_name,  COUNT(m.id) total_posts
FROM users u1
         LEFT JOIN messages m on u1.id = m.from_user_id
GROUP BY u1.first_name, u1.id
ORDER BY total_posts , u1.id LIMIT 3)) AS total GROUP BY id, first_name ORDER BY count_ DESC  LIMIT 3;




