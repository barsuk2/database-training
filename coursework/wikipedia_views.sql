use wiki;
-- список пользователей, добавивших медиа файлы
create view media_types_views_user as select m.filename, mt.name , concat(u.last_name,' ',u.first_name) as lf_name from media m left join media_types mt on m.media_types_id = mt.id
    join users u on m.user_id = u.id;

select * from media_types_views_user;

-- вывести список статей созданных магистрами
create view show_docs_by_group_name_view as select  title_doc, concat( u.first_name,' ',u.last_name) fl_name, gu.group_name
from documents join users u on documents.user_id = u.id
    join profiles p on u.id = p.user_id
    join groups_users gu on p.grops_users_id = gu.id where group_name ='магистры';

-- вывести все документы с медиа файлами
DROP VIEW full_docs_views;
create view full_docs_views as select title_doc, text_doc, m.filename, m.size,  mt.name AS m_type FROM documents
    join docs_media dm on documents.id = dm.docs_id
join media m on dm.media_id = m.id
join media_types mt on m.media_types_id = mt.id;





use wiki;
select * from documents;