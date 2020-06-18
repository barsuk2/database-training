use vk;
SHOW TABLES ;
SELECT * FROM users;
UPDATE users SET updated_at = NOW(),
                 created_at = NOW();