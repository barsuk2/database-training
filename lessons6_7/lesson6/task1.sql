USE vk;

CREATE TABLE likes (
     id SERIAL PRIMARY KEY ,
     user_id INT UNSIGNED NOT NULL ,
     target_id INT UNSIGNED NOT NULL ,
     target_type_id INT UNSIGNED NOT NULL ,
     created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
DROP TABLE IF EXISTS target_type;
CREATE TABLE target_types (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO target_types (name) VALUES
  ('messages'),
  ('users'),
  ('media'),
  ('posts');
TRUNCATE likes;
INSERT INTO likes
  SELECT
    id,
    FLOOR(1 + (RAND() * 10)),
    FLOOR(1 + (RAND() * 10)),
    FLOOR(1 + (RAND() * 4)),
    CURRENT_TIMESTAMP
  FROM messages;
SELECT * FROM likes;

SELECT * FROM messages;
CREATE TABLE posts (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  community_id INT UNSIGNED,
  head VARCHAR(255),
  body TEXT NOT NULL,
  media_id INT UNSIGNED,
  is_public BOOLEAN DEFAULT TRUE,
  is_archived BOOLEAN DEFAULT FALSE,
  views_counter INT UNSIGNED DEFAULT 0,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
ALTER TABLE profiles
    ADD CONSTRAINT profiles_user_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
    ON DELETE CASCADE,
    ADD CONSTRAINT profiles_photo_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
    ON DELETE SET NULL ;

ALTER TABLE profiles
  ADD CONSTRAINT profiles_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE;
ALTER TABLE profiles
  ADD CONSTRAINT profiles_photo_id_fk
    FOREIGN KEY (photo_id) REFERENCES media(id)
      ON DELETE SET NULL;



ALTER TABLE media
  ADD CONSTRAINT media_types_id_fk
    FOREIGN KEY (media_types_id) REFERENCES media_types(id)
      ON DELETE CASCADE ;

ALTER TABLE media
    MODIFY user_id INT UNSIGNED ,
    ADD CONSTRAINT user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE SET NULL ;

ALTER TABLE communities_users
    ADD CONSTRAINT community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE CASCADE ;
-- В ЭТОЙ ТАБЛИЦЕ PRIMARY KEY - СОСТАВНОЙ. ПРОШУ НА ЗАНЯТИИ РАССМОТРЕТЬ СОЗДАНИЕ  FOREIGN KEY
/*ALTER TABLE communities_users
    ADD CONSTRAINT communities_users_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE ;*/

ALTER TABLE posts
    ADD CONSTRAINT posts_user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE ;
ALTER TABLE posts
    ADD CONSTRAINT posts_community_id_fk
    FOREIGN KEY (community_id) REFERENCES communities(id)
      ON DELETE SET NULL ;

ALTER TABLE posts DROP FOREIGN KEY posts_community_id_fk;
UPDATE posts SET community_id = 1+RAND()*19;

ALTER TABLE friendship
    ADD CONSTRAINT friendship__user_id_fk
    FOREIGN KEY (user_id) REFERENCES users(id)
      ON DELETE CASCADE ;
ALTER TABLE friendship
    ADD CONSTRAINT friendship__friend_id_fk
    FOREIGN KEY (friend_id) REFERENCES users(id)
      ON DELETE CASCADE ;

ALTER TABLE messages
    ADD CONSTRAINT messages_from_user_id_fk
    FOREIGN KEY (from_user_id) REFERENCES users(id)
      ON DELETE CASCADE,
    ADD CONSTRAINT messages_to_user_id_fk
    FOREIGN KEY (to_user_id) REFERENCES users(id)
      ON DELETE CASCADE;

ALTER TABLE messages
    ADD CONSTRAINT messages_media_id_fk
    FOREIGN KEY (media_id) REFERENCES media(id)
      ON DELETE SET NULL ;
UPDATE messages SET media_id = 1+RAND()*19;
ALTER TABLE messages MODIFY media_id INT DEFAULT  1;
SELECT * FROM  messages;
DELETE FROM likes WHERE user_id = 10;

ALTER TABLE likes
ADD CONSTRAINT likes_user_id_fk
FOREIGN KEY (user_id) REFERENCES users(id)
ON DELETE CASCADE ;
ALTER TABLE likes
ADD CONSTRAINT likes_target_type_id_fk
FOREIGN KEY (target_type_id) REFERENCES target_types(id)
ON DELETE CASCADE ;

ALTER TABLE users
ADD CONSTRAINT users_status_id_fk
FOREIGN KEY (status_id) REFERENCES user_statuses(id)
ON DELETE CASCADE ;


ALTER TABLE user_statuses MODIFY id INT UNSIGNED;

SELECT * FROM likes;
SELECT * FROM target_types;
DESC users;
DESC friendship;
DESC posts;
DESC messages;
DESC messages;
DESC media;
SELECT * FROM posts;
DESC communities;
DESC communities_users;
SELECT * FROM communities;
SELECT * FROM communities_users;
SELECT * FROM media;
SELECT * FROM users;
SELECT * FROM user_statuses;
SELECT * FROM messages;
SELECT * FROM posts;
SELECT * FROM profiles;
DELETE FROM posts WHERE user_id = 10;

UPDATE posts SET user_id = user_id+1;
UPDATE users SET status_id = 2 WHERE status_id=0;

SHOW CREATE TABLE  communities_users;

