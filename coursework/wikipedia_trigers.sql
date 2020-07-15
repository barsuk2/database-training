USE wiki;
CREATE TRIGGER ADD_CHANGES AFTER INSERT ON documents
    -- ДОБАВЛЯЕТ В ТАБЛИЦУ changes ДАННЫЕ О СОЗДАНИЕ ДОКУМЕНТА
    FOR EACH ROW
    BEGIN
        INSERT INTO changes (docs_id, changes, user_id) VALUES (NEW.id,NEW.text_doc,NEW.user_id);
    END;

DROP TRIGGER update_changes;
CREATE TRIGGER update_changes AFTER UPDATE ON documents
    -- ДОБАВЛЯЕТ В ТАБЛИЦУ changes ДАННЫЕ О ИЗМЕНИЕНЯХ В documents
    FOR EACH ROW
    BEGIN
        IF (OLD.text_doc != NEW.text_doc) THEN
        INSERT INTO changes (docs_id, changes, user_id)
        VALUES (NEW.id,CONCAT('MODIFY text_doc:', NEW.text_doc),NEW.user_id);
        ELSEIF (OLD.title_doc != NEW.title_doc) THEN
            INSERT INTO changes (docs_id, changes, user_id)
            VALUES (NEW.id,CONCAT('MODIFY title_doc:', NEW.title_doc),NEW.user_id);
        ELSEIF (OLD.language_id != NEW.language_id) THEN
            INSERT INTO changes (docs_id, changes, user_id)
            VALUES (NEW.id,CONCAT('MODIFY language_id:', NEW.language_id),NEW.user_id);
        ELSEIF (OLD.user_id != NEW.user_id) THEN
            INSERT INTO changes (docs_id, changes, user_id)
            VALUES (NEW.id,CONCAT('MODIFY user_id:', NEW.user_id),NEW.user_id);
        END IF ;
    END;

-- ТРИГЕР НА ДОБАВЛЕНИЕ ЗАПИСИ В PROFILES ПОСЛЕ СОЗДАНИЯ ЗАПИСЬ В USERS
DESC profiles;

CREATE TRIGGER add_profiles AFTER INSERT ON users
    FOR EACH ROW
    BEGIN
        INSERT INTO profiles (USER_ID) VALUES (NEW.id);
    end;


SHOW TRIGGERS ;