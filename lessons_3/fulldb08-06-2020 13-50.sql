#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'laboriosam', '1978-07-15 01:22:16', '1999-12-08 09:11:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'soluta', '2003-10-17 10:21:04', '2015-03-09 21:21:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'omnis', '1971-10-03 03:33:42', '1995-03-17 11:15:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'sint', '1983-01-06 11:49:41', '2002-09-22 01:38:08');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'assumenda', '2009-12-03 07:51:51', '1983-11-16 23:30:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'ullam', '2013-02-28 18:02:01', '1994-11-03 06:30:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'recusandae', '2000-05-13 19:01:11', '2004-04-29 17:36:57');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'quam', '1980-04-30 10:27:02', '2000-11-20 23:15:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'autem', '1972-02-16 08:39:01', '2013-12-09 13:31:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'velit', '1982-09-04 06:25:37', '1998-05-26 21:12:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ipsam', '2016-04-04 14:16:24', '1973-12-18 09:55:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'quidem', '2009-03-04 03:48:22', '2011-02-24 07:19:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'eum', '1991-06-29 06:20:35', '2007-09-11 23:36:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'sapiente', '2002-09-24 14:36:52', '1991-03-03 11:23:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'sed', '1989-02-15 08:09:31', '2008-11-21 23:40:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'eos', '1983-04-27 07:13:41', '1995-07-11 19:40:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'aliquid', '1973-02-10 07:08:43', '1974-10-23 14:19:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'facere', '2018-02-22 06:56:12', '1974-02-27 05:21:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'sit', '2014-12-06 21:32:57', '1971-01-27 17:51:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'architecto', '2005-05-18 03:07:13', '1979-12-31 06:00:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'ut', '2015-01-17 14:07:12', '1995-12-01 04:30:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'ipsum', '2017-01-03 05:10:40', '1986-07-23 17:55:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'qui', '1984-12-15 10:16:29', '2001-03-25 03:55:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'ea', '2007-08-06 20:25:02', '1993-08-19 22:18:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'ex', '1993-03-20 20:27:30', '2004-12-18 22:28:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'quis', '1982-03-30 20:58:48', '1999-01-14 03:25:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'rem', '2007-05-13 05:35:04', '1985-12-20 11:08:42');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'consequatur', '2012-10-13 17:37:20', '1990-03-06 22:23:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'accusamus', '1996-07-29 11:26:20', '1989-01-04 06:46:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'nemo', '2006-01-18 11:52:22', '1975-12-05 17:37:37');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 7, '1985-10-17 21:31:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 10, '1991-06-23 04:32:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 2, '1998-10-16 03:43:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 9, '1993-03-20 04:51:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 5, '1975-04-27 02:35:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 7, '2001-03-30 01:13:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 8, '1985-08-16 22:15:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 9, '1991-10-27 20:13:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 0, '1991-12-23 21:58:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 3, '1999-01-05 07:31:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '2010-06-01 10:12:14');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 3, '2019-02-09 16:24:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 4, '2003-02-03 10:12:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 7, '2001-12-05 12:27:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 0, '2008-01-04 06:37:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 2, '1990-09-10 07:41:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 3, '1995-02-18 14:55:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 6, '1990-04-04 12:59:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 2, '1986-08-20 06:46:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 3, '2015-09-23 07:35:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 2, '1989-06-05 11:50:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 2, '1977-09-05 08:02:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 3, '1998-06-04 15:31:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 4, '2019-06-26 21:37:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 6, '1992-01-03 06:17:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 7, '1988-01-08 18:58:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (10, 1, '1987-10-16 02:26:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 0, '2006-03-26 21:33:11');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (11, 8, '2019-05-27 18:21:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 2, '1997-09-20 12:59:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 4, '1976-05-07 18:04:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 5, '1972-11-15 06:21:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 6, '1991-06-10 05:12:26');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 7, '2001-10-28 04:05:01');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (12, 10, '1972-03-03 05:16:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 6, '1989-06-20 12:42:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (13, 9, '1986-03-27 17:57:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 1, '1974-02-20 12:17:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 3, '2003-12-10 07:14:23');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 5, '2002-09-21 06:47:02');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 7, '1980-09-07 13:08:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (14, 8, '2013-03-06 15:01:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 5, '1983-09-07 05:41:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (16, 8, '2011-12-10 01:11:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 2, '1978-11-30 12:26:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 4, '1989-12-06 10:37:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (17, 7, '1970-12-12 01:25:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (18, 9, '2003-11-11 08:27:12');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 2, '2003-10-15 05:13:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (19, 7, '2014-03-28 10:04:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 1, '2002-10-13 15:17:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 2, '2007-05-23 05:33:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 6, '2013-06-14 14:06:56');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (20, 7, '1989-05-13 05:04:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 1, '2003-03-29 01:39:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 5, '1980-07-26 09:16:16');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (21, 8, '2009-04-21 23:12:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 1, '1998-04-27 17:30:24');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 3, '2011-11-26 15:02:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (22, 4, '1970-09-18 01:42:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 2, '1974-06-15 00:07:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (23, 3, '1977-08-09 14:02:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (24, 0, '1971-06-03 20:43:03');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 3, '1997-04-01 14:49:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 6, '1979-09-04 14:55:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 8, '2013-03-19 03:18:46');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (25, 9, '1985-03-17 19:28:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 2, '2018-08-12 23:32:21');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 5, '1988-07-27 13:05:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 6, '1974-06-09 13:02:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (26, 7, '1985-03-09 11:20:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 1, '2001-09-01 09:46:55');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 5, '1971-05-30 17:00:20');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 8, '2014-02-28 11:34:33');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (27, 10, '1983-10-18 13:34:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 0, '1970-08-24 13:02:53');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 5, '1974-08-28 16:11:36');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (28, 6, '2006-09-19 22:21:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 2, '1985-01-01 23:05:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 4, '1995-09-23 10:04:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 7, '1986-06-11 22:38:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (29, 8, '1973-12-05 04:45:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 0, '1979-08-18 19:24:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 2, '1974-08-08 01:51:32');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 4, '2006-06-28 15:56:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 8, '2006-09-22 09:16:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (30, 10, '1981-06-11 15:17:37');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (0, 4, 3, '1995-07-26 19:33:16', '2012-10-17 06:02:24', '1999-06-30 01:54:23', '2014-05-23 22:31:50');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (0, 8, 2, '1979-01-26 02:31:03', '2008-06-29 13:37:35', '1994-09-22 09:38:02', '2012-10-19 23:15:56');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 6, 3, '2005-04-30 01:48:13', '1986-03-03 02:13:41', '2017-08-21 07:57:35', '2020-01-10 10:19:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 1, 1, '1983-12-07 13:48:26', '2013-12-05 07:02:45', '1978-05-03 03:56:05', '2012-01-11 21:34:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 6, 2, '1983-12-18 10:30:35', '2012-11-01 08:52:46', '1970-03-08 00:13:23', '1988-05-19 21:57:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 8, 2, '1997-06-09 07:07:42', '2010-08-18 11:01:01', '1992-12-11 01:59:50', '2007-10-10 07:17:49');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 3, 4, '2020-05-20 03:11:41', '2016-11-17 22:10:33', '2008-12-30 23:46:54', '1989-07-28 05:18:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 2, '1993-03-02 10:45:10', '1973-07-05 04:02:25', '1991-09-22 13:00:04', '1988-07-21 02:28:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 0, 3, '1991-09-03 20:12:21', '1989-03-04 06:04:51', '1970-10-30 02:09:10', '1970-10-13 15:55:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 4, 2, '2007-10-13 19:10:07', '2013-05-18 11:40:16', '1978-12-24 04:15:36', '2009-02-20 23:37:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 1, 1, '2001-04-01 13:44:49', '1993-08-09 07:41:50', '1980-05-17 16:38:36', '2014-04-16 10:03:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 2, 4, '1975-06-06 04:01:19', '1982-09-09 15:58:53', '1981-09-11 13:50:00', '1985-03-11 04:13:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 5, 1, '1999-09-25 12:39:44', '2002-11-28 12:11:47', '1972-03-03 02:14:00', '2009-04-28 05:17:24');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 6, 1, '2008-02-25 18:34:48', '1994-10-06 08:05:36', '2013-06-17 03:07:51', '2018-01-01 08:14:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 1, '2002-01-16 21:38:47', '2011-10-12 11:21:19', '1988-01-04 15:27:16', '1988-09-06 23:04:04');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'est', '1982-09-02 12:03:44', '1995-12-23 20:20:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'culpa', '1998-03-30 09:57:49', '1979-11-14 14:43:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'perspiciatis', '1987-11-26 21:53:27', '1979-11-30 16:17:10');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'quae', '2002-09-28 23:14:54', '1988-11-14 22:43:24');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 0, 'est', 48, '618', 1, '2002-04-09 07:18:25', '1991-11-21 17:11:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 7, 'sequi', 150, '395', 2, '2008-12-10 18:52:23', '1973-05-23 00:26:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 6, 'corporis', 78, '238', 3, '2016-11-06 04:30:08', '1996-05-13 20:36:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 4, 'non', 326, '849', 5, '2004-06-12 03:44:08', '1999-09-14 08:00:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 7, 'ea', 121, '547', 1, '2011-12-01 21:06:18', '1997-09-29 08:47:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 1, 'dolorum', 386, '411', 2, '1985-10-15 16:00:00', '1999-02-14 14:38:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 7, 'corrupti', 198, '524', 3, '1984-08-07 03:15:41', '1981-03-04 14:31:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 7, 'et', 43, '406', 4, '1995-01-09 16:34:53', '1990-07-29 14:47:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 9, 'eos', 356, '616', 5, '1995-11-14 18:37:46', '2019-02-07 06:04:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 9, 'fuga', 60, '897', 1, '2006-01-23 02:54:18', '2004-09-25 21:52:55');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 2, 'quibusdam', 214, '410', 2, '1995-07-31 13:02:51', '1984-07-12 19:19:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 3, 'eaque', 126, '157', 3, '2005-02-01 02:49:24', '2007-11-15 21:21:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 8, 'animi', 96, '117', 4, '1984-02-19 06:18:53', '2000-02-09 08:11:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 3, 'sapiente', 235, '400', 5, '1995-09-27 19:19:49', '1993-11-04 06:09:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 4, 'reiciendis', 149, '201', 2, '2006-12-16 09:39:39', '1996-11-26 12:34:39');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 4, 'nisi', 292, '785', 3, '2001-10-15 05:01:19', '1991-08-24 23:41:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 1, 'eveniet', 44, '415', 4, '2002-05-30 22:19:20', '1992-03-12 19:26:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 8, 'facere', 263, '461', 5, '1978-02-21 07:11:37', '2001-02-11 09:07:37');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'aut', '2016-12-06 07:17:20', '1972-06-09 17:16:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'facilis', '1985-12-16 02:13:28', '1996-04-21 05:41:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'non', '2016-07-24 10:46:22', '1992-02-06 05:11:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'numquam', '2009-08-09 01:40:48', '2008-05-16 18:53:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'similique', '1978-12-06 15:14:12', '2003-01-29 08:25:33');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (1, 4, 7, 'Officiis vero nulla qui eligendi repudiandae ad molestiae. Quia quibusdam perferendis est minima dignissimos. Autem beatae saepe modi non quia et earum.', 0, 0, '2017-01-15 00:01:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (2, 0, 1, 'Ipsam asperiores vero debitis iure. Neque corrupti doloribus animi. Magni velit et laboriosam deserunt.', 1, 0, '1995-01-10 01:10:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (3, 3, 5, 'Consequatur in vitae eum id. Nihil nihil consequatur eaque sapiente voluptatibus qui et. Odio magnam ratione ut quia quos officiis nam. Et nobis aut doloremque veniam.', 1, 1, '2019-07-23 05:16:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (4, 9, 8, 'Et eum eum qui fuga eum vel. Voluptas eos eligendi esse iure et quo magni. Impedit eos asperiores quisquam eos quo et.', 1, 1, '2006-01-29 00:54:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (5, 1, 8, 'Nam voluptatum maxime cumque ad adipisci. Laudantium rerum hic mollitia nisi ut aperiam. Repellendus rerum repellendus non iusto nisi veritatis nihil vitae. Voluptatem quaerat sed occaecati doloribus.', 0, 1, '2013-04-01 22:51:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (6, 3, 3, 'Deleniti consequatur deleniti expedita nobis et. Ullam at sunt qui quaerat molestiae perspiciatis. Assumenda est sint tempore velit animi sapiente ut.', 0, 0, '1973-12-19 13:31:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (7, 6, 2, 'Asperiores a non laboriosam. Laborum ut sapiente doloribus nemo voluptatem aut cumque. Itaque odit cum assumenda illo soluta. Laboriosam dolor tempore molestiae rerum aut error.', 0, 1, '1987-02-05 04:13:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (8, 0, 6, 'Aut totam iure quam tempore omnis sed. Ut sed et quia doloremque placeat. Voluptatem voluptatum ipsam dolores consectetur totam quia cupiditate rerum.', 0, 1, '2000-09-05 05:10:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (9, 4, 6, 'Voluptatibus et vel optio rerum. Architecto et quibusdam vitae omnis asperiores voluptatem. Rerum dolorum at ut quasi quibusdam ex non illum. Nemo inventore sapiente quia odit dolorem consequatur optio voluptas.', 1, 1, '1991-08-10 23:27:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (10, 3, 9, 'Est aut id labore aperiam nam quod. Labore nobis facere adipisci rerum quo eligendi magni. Sapiente optio maxime animi velit at architecto reprehenderit.', 0, 0, '1989-06-07 02:09:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (11, 5, 6, 'Quas ut sunt aliquid suscipit. Ipsa aut et ea velit nam vel. In qui ut rerum voluptate qui.', 1, 0, '2020-01-26 07:43:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (12, 8, 5, 'Est aut dolores quibusdam magnam est quia. Est et officiis ut voluptates. Numquam laudantium fugit est accusantium aut. Ad quam dicta nihil rerum enim odio ex iusto.', 1, 1, '1992-01-22 02:15:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (13, 2, 4, 'Error ipsa ea consequatur hic voluptate aut. Numquam qui maxime totam. Debitis labore eum consequuntur expedita sunt. Aperiam dolore vero sed aliquam provident.', 0, 1, '1982-08-13 04:46:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (14, 8, 7, 'Reprehenderit eligendi iste nam praesentium. Esse libero dolorem numquam et at. Rerum non et modi dolorem qui tenetur dolor. Repellat sunt non voluptatum atque quibusdam.', 0, 1, '1984-04-28 11:09:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (15, 0, 3, 'Placeat et molestiae occaecati officiis at non. Quibusdam dolor illum et facere. Consequatur quaerat molestiae consequatur quasi provident repellat.', 0, 0, '2017-08-05 04:02:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (16, 3, 7, 'Iusto in tempore excepturi quibusdam similique reprehenderit maxime soluta. Rerum blanditiis exercitationem est est. Illum ad sunt quaerat dolores ut molestias et blanditiis. Facere sit dicta nihil natus aperiam ullam.', 1, 0, '1977-06-11 01:48:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (17, 0, 1, 'Maxime ut eos nemo corrupti delectus totam delectus. Magnam quis facere sunt tenetur quos. Aut illum eveniet reprehenderit nobis ipsum dolorem.', 0, 1, '2010-07-04 07:23:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (18, 2, 0, 'Molestiae reprehenderit numquam dignissimos impedit est. Voluptas dolorem unde eaque. Corrupti quas aut ut. Illum amet est ut quidem illum itaque non.', 1, 1, '2005-05-17 17:21:20');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (19, 7, 1, 'Possimus sequi quidem ut aut. Est esse nam aut aliquam. Aut molestiae aliquam fugit ut quis possimus dolorum. Consequatur sed accusantium laborum sunt.', 0, 0, '1999-10-27 18:06:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (20, 1, 4, 'Et molestiae omnis eaque sint. Minus et autem quos eveniet consectetur deserunt ea. Ut quos dignissimos praesentium excepturi aliquid officia sit.', 0, 0, '2004-03-19 09:13:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (21, 6, 9, 'Esse et praesentium rerum assumenda sunt perspiciatis distinctio atque. Fugiat repellendus eveniet ullam possimus enim.', 0, 1, '1982-12-06 14:19:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (22, 5, 1, 'Deleniti perspiciatis et ipsum. Et soluta ea rerum qui et officiis accusantium. Sed consectetur quisquam dolore omnis aperiam harum dicta cum. Quas laborum delectus molestiae eos blanditiis quia. Fuga soluta dolore harum sed omnis magnam.', 0, 0, '1970-08-08 11:15:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (23, 3, 0, 'Dolores et at aut. Voluptate molestiae molestiae aliquid consequuntur. A aut vitae est officiis libero nihil repellat. Voluptas cupiditate rerum vitae dolorem adipisci.', 0, 1, '2006-08-25 04:44:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (24, 2, 3, 'Voluptas recusandae doloremque quam ea sint. Doloremque assumenda consequuntur quisquam unde impedit. Vel ab et consequatur molestiae omnis impedit quasi.', 1, 1, '1986-09-13 15:07:59');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (25, 8, 3, 'Porro dolor enim aut hic aut repellendus odio qui. Velit autem at saepe in quia voluptas.', 0, 1, '1978-07-07 08:49:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (26, 6, 9, 'Blanditiis earum voluptas sapiente repellat dolore et. Sit neque qui earum nam sint voluptates. Qui est dolores quam totam sed rerum. Ratione deserunt recusandae adipisci non.', 0, 1, '1997-08-06 13:21:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (27, 9, 9, 'Voluptas ab molestiae beatae corrupti officia mollitia. Beatae repudiandae nesciunt veniam adipisci dolores fuga quia qui. Optio atque ratione non esse rerum iusto at optio. Iusto quaerat accusantium est ut rerum. Placeat reprehenderit labore dolor dolorem expedita et.', 1, 0, '1987-04-28 02:28:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (28, 1, 9, 'Molestiae excepturi a incidunt autem fugiat. Sed nam fuga tenetur voluptatum est. Doloremque numquam est fugit.', 0, 1, '2018-07-10 09:45:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (29, 3, 7, 'Ut dolore est ea facilis debitis sapiente. Corrupti debitis corporis numquam harum. Non exercitationem ut non sit magni et adipisci. Asperiores et quibusdam tempore et assumenda voluptate nostrum.', 0, 1, '1990-02-10 01:53:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (30, 6, 7, 'Et dolorem sed illo dolorum sequi a omnis. Et aut consequatur facilis aspernatur reprehenderit consequuntur. Repudiandae et et sed placeat minus in laboriosam. Et sequi quia delectus aliquam.', 0, 0, '1975-07-13 10:09:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (31, 0, 9, 'Molestiae doloribus omnis et. Maxime delectus minus eaque ut amet dicta vitae. Reprehenderit aliquam ut debitis accusamus asperiores aliquam. Blanditiis est autem et error deserunt est natus.', 0, 1, '1979-08-23 21:18:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (32, 3, 1, 'Omnis nihil voluptates eum dolores deleniti fugit. Ut corporis iure excepturi sint officiis delectus illum. Reprehenderit non ullam sed placeat.', 0, 1, '1979-07-29 19:57:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (33, 5, 0, 'Minima et voluptatem est sed culpa fugit error magnam. Facere itaque quas accusantium facilis cum dolorem. Qui minima autem ducimus distinctio aut est.', 1, 1, '1992-02-25 17:56:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (34, 9, 4, 'Quia nobis ea asperiores quis quo fugit est et. Omnis architecto autem quis. Ipsum non non animi.', 0, 1, '1989-03-03 16:14:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (35, 2, 1, 'Quasi cupiditate non molestias ab voluptatibus quasi sunt nihil. Beatae placeat eos quidem praesentium qui voluptate. In et id minima alias ut pariatur. Quae est dolores vel qui.', 0, 0, '2019-02-21 23:28:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (36, 9, 7, 'Omnis et qui cumque quia occaecati. Ut dolores aspernatur ut voluptatem. Minus possimus numquam nihil recusandae eum sed rerum.', 1, 0, '1983-04-10 21:14:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (37, 6, 7, 'Labore maiores neque occaecati debitis doloremque ducimus. Voluptatum blanditiis dolor aliquid nihil voluptas. Distinctio reprehenderit ad voluptas repudiandae voluptatem occaecati magnam. Consectetur sit illum voluptatibus voluptas ut est.', 1, 0, '1990-09-10 14:35:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (38, 2, 7, 'Necessitatibus a repellat dicta consequuntur placeat ea soluta molestiae. Sint et veniam laborum aliquam quidem laboriosam magnam. Nemo fugit tenetur fugit dignissimos.', 1, 1, '2006-09-29 10:18:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (39, 6, 3, 'Voluptates tempora odio rem et et est suscipit quos. Dignissimos sunt suscipit sit molestiae et nihil velit. Est nihil porro fugiat quia qui.', 0, 0, '2019-01-06 14:14:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (40, 3, 6, 'Possimus tenetur eligendi dolores quo impedit eius. Laboriosam debitis eius quos mollitia laboriosam autem ipsum. Modi ut pariatur alias asperiores vero eveniet temporibus molestias.', 0, 0, '1977-10-01 14:09:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (41, 4, 9, 'Quam suscipit enim velit possimus doloribus vero. Fuga itaque et illum ea at et. Molestias consequatur nesciunt nemo beatae et. Consequatur assumenda eos dolor iste dolorem alias facere.', 1, 0, '2010-06-07 15:06:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (42, 3, 1, 'Voluptas sapiente itaque et temporibus et et. Provident voluptatem ea nobis. Architecto officiis dolor ut nostrum quaerat quidem temporibus. Tempore vel porro iste.', 0, 0, '1975-07-24 06:28:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (43, 2, 9, 'Repudiandae consectetur impedit in consectetur rem sit id. Aliquid autem nisi ullam recusandae consequatur qui sit et. Atque eius est at eos. Sunt mollitia molestias totam vitae possimus qui molestias.', 1, 1, '1983-07-22 18:46:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (44, 1, 0, 'Qui in ratione in voluptas earum iste quod. Praesentium praesentium ipsam et et. Repellat optio vero reprehenderit et. Excepturi repellat dolorum illo non. Quibusdam iste ex ea corrupti ut et rem quia.', 0, 1, '1996-11-28 06:22:49');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (45, 8, 8, 'Et qui et magni quia nesciunt earum. Unde eveniet necessitatibus odio voluptatibus. Expedita sint sit dolore quas.', 1, 0, '1979-06-10 15:41:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (46, 7, 6, 'Excepturi aut amet aliquam quibusdam nisi beatae. Porro iusto magnam dolores sunt eos voluptas accusamus. Totam molestiae id accusantium id. Tenetur velit molestiae occaecati animi optio harum.', 0, 1, '1988-12-23 10:53:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (47, 7, 5, 'In aut veritatis velit. Laboriosam delectus suscipit qui et hic aspernatur sed. Aliquid sunt quisquam et vel cupiditate aut qui.', 1, 1, '1998-09-24 15:28:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (48, 2, 0, 'Minima non debitis occaecati voluptates reprehenderit facere hic. Sed beatae alias voluptatem et natus enim eius distinctio. Et molestiae ut qui vel eum. Harum nisi voluptatem molestiae ipsam corrupti et.', 0, 1, '2012-12-12 07:54:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (49, 4, 5, 'Enim soluta rerum sapiente deserunt tempora eum. Impedit quia voluptatem et vel. Placeat et neque iure voluptas culpa exercitationem. Laborum maxime eos adipisci velit maiores officiis reiciendis.', 1, 1, '2018-06-05 23:41:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (50, 0, 8, 'Quas debitis incidunt qui et voluptatibus vel in aut. Facilis in sint est eaque debitis.', 1, 1, '1991-10-02 08:44:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (51, 9, 9, 'Pariatur non perspiciatis aut at quia maiores rem. Omnis sed quod aut ut dolor. Dolorem in eos et eum a excepturi earum.', 0, 1, '1992-03-26 04:47:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (52, 9, 9, 'Officiis officia deleniti non officia aperiam hic quia expedita. Magni laboriosam in nesciunt ut fugit perferendis nobis. Ut ratione et velit nostrum magnam ipsa ut.', 1, 1, '1999-07-22 00:10:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (53, 1, 0, 'Voluptas rerum aut molestiae. Molestias esse doloribus ex iure soluta occaecati. Nihil natus doloribus qui et.', 0, 0, '2009-11-16 09:07:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (54, 2, 7, 'Ea et quaerat alias atque accusamus recusandae vel. Aut eum non voluptates est repellat a omnis sunt. Nihil error hic commodi ipsa maiores.', 1, 0, '1970-08-13 14:56:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (55, 9, 4, 'Tenetur corporis fugiat nihil voluptatum natus unde facilis. Voluptas et et est est tenetur consequatur quae. Officiis fuga aut delectus cupiditate sequi.', 1, 0, '2004-11-13 02:28:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (56, 4, 0, 'Ipsam dignissimos enim error fugiat dolores repellat sint. Aut aliquam occaecati id aspernatur ipsam quia aut. Et accusamus consequatur cupiditate consequatur quis soluta ad.', 1, 0, '1982-06-15 15:18:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (57, 1, 3, 'Dolores omnis dolores eveniet et. Totam in velit eos possimus voluptate. Suscipit et est saepe illo. Sed voluptates est nihil sunt omnis et nulla.', 0, 1, '1970-07-27 12:28:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (58, 5, 7, 'Exercitationem aut accusantium labore quia facilis dolor. Fugiat impedit quo molestiae. Natus ea consequuntur voluptas voluptatem sint facere iusto molestias. Suscipit minus veritatis dolores iure.', 1, 1, '1997-05-24 13:11:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (59, 8, 6, 'Velit qui neque fugit sed ad in quaerat. Eaque inventore molestiae quasi recusandae. Delectus natus officiis id. Iusto et quibusdam quas. Iure sit quis dicta exercitationem fugiat.', 0, 0, '2011-09-11 02:14:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (60, 8, 9, 'Velit cum exercitationem voluptas. Nisi natus dolor cumque tenetur. Aliquid enim est ut est occaecati nihil alias. Dolorem neque vel perspiciatis quidem nostrum sint enim voluptatem.', 0, 0, '1998-11-19 23:37:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (61, 4, 4, 'Animi voluptates corporis nemo libero ut a neque. Aut ducimus neque reprehenderit nihil non. Earum eum neque enim iusto laudantium omnis deleniti. Quasi ea libero non sit sit laudantium consequatur quas.', 1, 0, '2007-08-29 03:33:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (62, 9, 6, 'Ipsa molestias qui ut voluptates. Voluptas tempore repudiandae aliquid dolor asperiores. Sunt consequatur error voluptates nostrum est rerum. Cum sit quo placeat asperiores.', 1, 0, '2014-04-24 12:25:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (63, 9, 5, 'Nihil odit minus dolorem repellat qui. Quidem autem dolor in ut totam autem nesciunt eveniet. Sed aut rerum aliquid iusto rerum nihil molestiae pariatur. Ut laborum laboriosam ipsum nihil voluptates culpa.', 1, 0, '2007-11-02 02:14:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (64, 4, 9, 'Optio molestias consequatur alias molestiae aut iure ut. Omnis consequatur et fugiat numquam dolorem dolorem voluptatem. Quidem quo expedita tempore at. Vel ut enim nisi numquam eligendi molestiae non. Quibusdam esse enim non tenetur aut ut quis.', 1, 0, '1995-04-30 10:34:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (65, 2, 4, 'Quas consectetur aut enim doloremque adipisci quae. Non illum soluta ut incidunt. Doloremque rem corrupti nihil quod et tempora reprehenderit et. Tenetur quod molestiae optio ut.', 1, 1, '1991-11-21 03:39:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (66, 7, 4, 'Quidem distinctio inventore voluptatem fuga amet adipisci. Dolores unde qui quis ut ex. Beatae est beatae recusandae qui adipisci. Officiis voluptatem quisquam omnis ab velit.', 1, 0, '1993-02-01 22:04:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (67, 1, 3, 'Magni adipisci et necessitatibus eveniet rerum eligendi. Aliquam vero ipsum deleniti consectetur at officiis qui. Ut impedit consequatur assumenda quis sint. Id dolore qui harum nesciunt numquam in est eos.', 1, 0, '2008-08-31 02:24:28');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (68, 9, 3, 'Fugit debitis sit doloribus id. Officia ut dolores sit quos optio. Facere consequatur totam minima ut consectetur est aut.', 1, 0, '2016-03-10 12:22:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (69, 7, 8, 'Sint consequatur et facilis. Praesentium et sed voluptatem quae qui excepturi. Praesentium praesentium est aut maxime.', 1, 0, '1993-04-08 09:19:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (70, 8, 1, 'Et mollitia et placeat fugiat. Sunt commodi sit odit sunt consectetur ea aliquid. Minus libero sequi dolor aut.', 1, 0, '2005-08-22 21:49:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (71, 2, 7, 'Ex rerum fuga similique rerum quaerat cum. Assumenda consectetur dolor dolorem architecto possimus. Earum cupiditate facilis ab qui qui.', 1, 1, '1981-03-24 03:44:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (72, 3, 9, 'Non atque deleniti quae. Labore praesentium sunt ad incidunt eum nulla. Voluptatem ipsam sit voluptatem saepe et.', 1, 0, '1982-12-05 06:05:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (73, 0, 1, 'Asperiores qui ut quod aut illo velit ab eveniet. Quas aperiam impedit eius sit est unde iusto. Sit iste et dolores cupiditate.', 1, 0, '2018-07-25 22:19:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (74, 3, 9, 'Sed quia et laborum ut explicabo. Est ad magnam quasi distinctio corrupti eos veritatis. Libero delectus cupiditate quia ipsa expedita corporis qui.', 0, 1, '2019-08-12 02:09:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (75, 5, 4, 'Hic quos aut necessitatibus labore ex. Veritatis est quia debitis quod ipsum. Nihil consequuntur magnam qui et corrupti a. Ut sed accusantium nesciunt voluptatem modi et.', 0, 1, '2014-08-11 20:44:30');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (76, 4, 2, 'Quisquam dolorem tempora maiores sit ea distinctio voluptas autem. Iusto voluptatum unde eum et incidunt. Eaque animi aliquid dicta soluta quisquam necessitatibus.', 0, 1, '2010-05-13 02:07:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (77, 3, 8, 'Animi beatae consequatur magnam qui sunt consequatur eos ipsa. Est esse saepe a tenetur. Et doloribus similique quasi doloribus pariatur consequuntur adipisci ducimus. Dicta voluptates laborum dolor sint ratione veritatis.', 0, 1, '2003-01-17 11:06:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (78, 5, 3, 'Quia quidem rem libero. Quia voluptas modi soluta animi maiores. Delectus eum nesciunt non itaque.', 1, 1, '2007-03-09 00:25:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (79, 4, 9, 'Illum consectetur iure ipsa hic sapiente. Et et totam expedita.', 1, 1, '2001-06-17 20:48:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (80, 0, 8, 'Facilis quis at aut architecto aliquam neque quia. Rem dolor consequuntur enim architecto. Laudantium recusandae quaerat deserunt non ut.', 1, 1, '2004-01-31 12:36:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (81, 7, 7, 'Quia amet vitae repudiandae rerum tempore culpa. Esse eius ut eius est est explicabo. Porro tempore nihil et sint totam veritatis qui ipsum.', 0, 0, '1978-05-27 19:11:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (82, 5, 7, 'Laborum sint odit eum fuga vitae quis praesentium sequi. Velit magnam error modi rerum perspiciatis. Consequatur ipsam accusamus dolorem aut deserunt quia.', 0, 1, '1982-04-19 11:17:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (83, 6, 6, 'Corrupti suscipit quasi officia et. Ab ut nam sint magni fugit. Laborum fuga voluptatem error. Mollitia quia rerum voluptatem esse. Suscipit nulla perferendis voluptas mollitia odio est.', 0, 0, '1994-01-26 14:49:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (84, 1, 7, 'Occaecati provident cupiditate incidunt quia libero repudiandae ullam. Sint explicabo dolores et a. Molestiae vel suscipit officia.', 1, 1, '1972-01-19 10:42:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (85, 4, 0, 'Sunt qui quia natus doloremque vel occaecati similique. Ipsam reprehenderit in voluptas magnam ut necessitatibus vel.', 0, 0, '2006-07-02 09:54:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (86, 1, 7, 'Dolores maxime sint saepe tempore. Cupiditate architecto occaecati saepe consequatur illo. Qui laborum soluta iure aut. Fugit tenetur omnis et cum voluptate commodi.', 0, 0, '1995-09-19 13:52:19');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (87, 9, 4, 'Nihil et cumque minus molestias laborum facere. Est eveniet maxime est architecto omnis accusantium et explicabo. Labore qui cupiditate velit rerum similique dolores.', 0, 1, '2009-10-22 17:08:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (88, 1, 9, 'Aut ut distinctio non recusandae autem nam. Voluptatem ut quia veritatis explicabo non. Necessitatibus sit est autem. Est provident voluptate in repellat.', 1, 1, '2002-10-04 12:21:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (89, 9, 4, 'Non rerum iusto excepturi et nulla. Aut eveniet quia deleniti quia. Est odio rerum recusandae recusandae architecto.', 1, 0, '1991-04-30 02:36:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (90, 7, 4, 'Quos molestiae consectetur esse magnam quidem. Porro quasi rem sit quia. Architecto expedita minima repellendus ut est voluptatibus. Esse excepturi eligendi sunt velit.', 0, 0, '2003-09-18 14:27:27');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (91, 2, 2, 'Similique consectetur temporibus voluptates vitae provident. Qui corporis temporibus est qui similique. Expedita reiciendis quis necessitatibus neque odit et voluptatem.', 1, 1, '1997-02-07 06:27:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (92, 9, 6, 'Et magni consequatur ipsam doloremque officia odio architecto et. Dolores illo dicta quidem in laborum. Facere explicabo qui nesciunt porro aut qui. Praesentium itaque necessitatibus dolores modi.', 1, 0, '1972-11-23 08:52:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (93, 1, 5, 'Temporibus laudantium rerum autem dicta. Laudantium sunt nihil dolore sapiente quibusdam est. Commodi culpa sit rerum. Aliquam deleniti et non aut voluptates. Autem ea soluta molestiae ea culpa optio vel eos.', 1, 1, '2008-12-28 08:37:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (94, 1, 0, 'Ducimus ea commodi eum impedit voluptatem dolor. Id sit animi ipsam et ea non. Velit excepturi hic at maiores fugit qui rerum.', 1, 0, '2011-04-17 04:12:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (95, 6, 4, 'Nam ut ratione deserunt consequatur exercitationem aperiam quae. Nam numquam voluptatem non possimus est et debitis. Totam delectus eligendi facere a fugit.', 1, 0, '1972-02-08 12:04:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (96, 3, 8, 'Ea eos veniam soluta excepturi optio. Est qui earum sit quisquam iusto. Dolor est sed rem explicabo quam dignissimos.', 1, 1, '2009-04-07 04:12:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (97, 8, 3, 'Beatae facere voluptatibus quas dolor quae. Molestiae tenetur sunt nostrum. Laboriosam a molestias adipisci quod qui perspiciatis. Et neque nostrum reiciendis voluptas repellendus sed.', 1, 1, '2011-05-01 16:35:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (98, 8, 1, 'Molestiae corporis libero sint rerum labore quam. Dicta eos architecto nihil aperiam laudantium dolorum sed. Provident quasi laudantium exercitationem. Et saepe ut nulla facere dolor.', 0, 0, '1980-09-27 21:30:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (99, 7, 3, 'Perferendis minus numquam odit rem et illo. Neque ratione odit id deleniti est. Ullam asperiores aut illum est magni. Corrupti itaque necessitatibus quaerat temporibus animi eum.', 1, 0, '1974-09-03 02:25:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `is_important`, `is_delivered`, `created_at`) VALUES (100, 5, 6, 'Et dolores aut voluptatem ipsum earum. Quidem ipsam ea dicta nemo necessitatibus omnis omnis et. Velit enim voluptatem ea delectus. Labore veritatis omnis natus in consequatur porro.', 1, 1, '1981-09-20 01:31:36');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `city` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, 'w', '1983-06-15', 'North Marcos', 'Serbia', '2003-09-06 06:51:32', '1985-11-01 20:17:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, 'm', '1974-05-14', 'North Skyla', 'Macao', '2010-10-25 16:08:19', '1970-08-17 14:47:24');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, 'w', '1986-03-01', 'New Gillianview', 'United Kingdom', '1977-10-22 05:10:14', '1979-08-14 19:16:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, 'w', '2014-07-12', 'Kilbackfurt', 'Kazakhstan', '1996-06-29 17:47:22', '2006-10-06 09:32:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, 'w', '2013-03-16', 'Kreigerview', 'Croatia', '2012-02-23 19:53:36', '1977-08-17 19:33:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, 'm', '1993-04-29', 'Port Nia', 'Bermuda', '1971-06-13 22:38:10', '1993-11-04 06:02:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, 'w', '2006-05-14', 'Garrickmouth', 'Solomon Islands', '2010-05-25 00:21:22', '1998-12-28 16:05:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, 'w', '1974-10-01', 'Reingerborough', 'Greece', '2017-04-29 22:03:05', '2010-10-30 12:20:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, 'w', '1987-10-23', 'East Sonnymouth', 'Iran', '2014-01-02 14:12:45', '2001-07-03 05:40:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, 'm', '1993-10-30', 'West Monicachester', 'San Marino', '1985-03-15 07:09:04', '1987-03-13 11:05:37');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (1, 'Estefania', 'Schroeder', 'qconroy@example.com', '380-471-1726x723', '1986-03-01 04:15:58', '2012-04-18 06:32:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (2, 'Penelope', 'Bauch', 'christ99@example.net', '04389095331', '2001-05-12 23:33:24', '2001-09-01 13:37:05');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (3, 'Jarrod', 'Schoen', 'eloise92@example.net', '665.446.8123x195', '2010-11-14 18:02:17', '2016-12-14 05:49:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (4, 'Blake', 'Fisher', 'earl35@example.org', '+97(2)6028463693', '1974-06-16 11:59:09', '1982-11-18 14:52:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (5, 'Anissa', 'Schinner', 'dbins@example.org', '1-774-302-3809x958', '2018-07-12 11:30:50', '1989-12-31 04:26:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (6, 'Kevon', 'Davis', 'rachael69@example.com', '037.230.8942x5689', '2009-07-30 17:17:22', '1999-06-18 18:49:36');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (7, 'Jewell', 'Schaefer', 'hector96@example.org', '08599645537', '2003-02-19 16:39:30', '2006-04-08 14:45:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (8, 'Merl', 'Goodwin', 'qbosco@example.org', '1-605-630-9113x1730', '1977-01-16 21:49:54', '1992-03-31 20:26:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (9, 'Roberta', 'Lowe', 'jones.mia@example.com', '1-549-731-2836', '1970-07-13 11:55:05', '1975-05-11 10:51:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `created_at`, `updated_at`) VALUES (10, 'Layla', 'Fay', 'lacey.rau@example.org', '(613)226-2240x752', '1999-03-03 14:25:42', '1991-10-28 04:28:01');


