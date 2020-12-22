-- 1. Проанализировать какие запросы могут выполняться наиболее часто в процессе работы приложения и добавить необходимые индексы.
CREATE INDEX profiles_birthday_idx ON profiles(birthday); -- ИНДЕКС ПО ДНЯМ РОЖДЕНИЯМ
CREATE UNIQUE INDEX users_email_uq ON users(email);

SELECT * FROM profiles;
CREATE INDEX profiles_birthday_idx ON profiles(birthday); -- ИНДЕКС ПО ДНЯМ РОЖДЕНИЯМ
CREATE INDEX profiles_city_idx ON profiles(city); -- ИНДЕКС ПО ДНЯМ РОЖДЕНИЯМ
DESC media;
SHOW TABLES ;
CREATE INDEX media_filename_filename ON media(filename); -- ИНДЕКС ПО НАЗВАНИЯМ ФАЙЛОВ
CREATE INDEX media_media_types_id_filename ON media(media_types_id); -- ИНДЕКС ПО ТИПАМ ДАННЫЙХ
DESC messages;
CREATE INDEX messages_from_user_id_to_user_id_idx ON messages (from_user_id, to_user_id);

DESC posts;
CREATE INDEX posts_head_idx ON posts(head);
SHOW INDEX FROM posts;

# 2. Задание на оконные функции
# Построить запрос, который будет выводить следующие столбцы:
# имя группы
# среднее количество пользователей в группах
# самый молодой пользователь в группе
# самый старший пользователь в группе
# общее количество пользователей в группе
# всего пользователей в системе
# отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT cu.community_id /*, mt.name*/,
    /*ROW_NUMBER() over W AS 'NUMBER',*/
                COUNT(cu.user_id) OVER ()                                AS total_usr,   -- ВСЕГО ПОЛЬЗОВАТЕЛЕЙ В ГРУППАХ
                COUNT(cu.user_id) OVER W                                 AS usr_in_gr,   -- ВСЕГО ПОЛЬЗОВАТЕЛЕЙ В ГРУППЕ
                COUNT(cu.user_id) OVER () / MAX(community_id) OVER ()    AS avg_user,    -- СРЕДНЕЕ ЧИСЛО ПОЛЬЗОВАТЕЛЕЙ В ГРУППЕ
                MAX(cu.user_id) OVER ()                                  AS total_users, -- ВСЕГО ПОЛЬЗОВАТЕЛЕЙ В СИСТЕМЕ
                COUNT(cu.user_id) OVER W / MAX(cu.user_id) OVER () * 100 AS '%%',        -- ОТНОШЕНИЕ В ПРОЦЕНТАХ
                MIN(p.birthday) OVER W                                      MIN_B,       -- САМЫЙ МОЛОДОЙ ПОЛЬЗОВАТЕЛЬ В ГРУППЕ
                MAX(p.birthday) OVER W                                      MAS_B        -- САМЫЙ СТАРЫЙ ПОЛЬЗОВАТЕЛЬ В ГРУППЕ
FROM communities_users cu
         JOIN profiles p on cu.user_id = p.user_id WINDOW W AS (PARTITION BY cu.community_id);



