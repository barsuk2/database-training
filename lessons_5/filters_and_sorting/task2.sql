USE vk;
DESC users;
SELECT * FROM users;
-- ALTER TABLE users MODIFY created_at VARCHAR(50), MODIFY updated_at VARCHAR(50);
ALTER TABLE users MODIFY created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    MODIFY updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;


UPDATE users SET status_id = 3 WHERE id = 11;
