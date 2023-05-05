SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `news` (`id`, `name`, `content`, `category`) VALUES
(1,	'America is ending its emergency declaration for the pandemic',	'After years of turmoil, America’s covid-19 emergency is formally coming to a close. More than 1.1m Americans died from covid-related causes during the pandemic (in January 2021 weekly deaths were close to 24,000). Now reported deaths...',	'covid'),
(2,	'The fun and the fury of a rattlesnake derby',	'Shayne naylor has some advice for people who want to hunt rattlesnakes: “Be vigilant” and watch “where you’re putting your hands and feet.” Every spring he leads people into the countryside of Oklahoma to seek out snakes...',	'nature'),
(3,	'Joe Biden fires the starting gun on the presidential race',	'The presidential election of 2024 will feature Joe Biden against the Republican nominee. The polls suggest that person will be Donald Trump, giving America the sequel it does not want...',	'politic'),
(4,	'The pandemic’s true death toll',	'How many people have died because of the covid-19 pandemic? The answer depends both on the data available, and on how you define “because”. Many people who die while infected with SARS-CoV-2 are never tested for it, and do not enter the official totals...',	'covid'),
(5,	'The great mystery of American politics',	'Titillated if not surprised, America’s political obsessives saw some justice in Kevin McCarthy’s struggle to amass enough support to become speaker of the House of Representatives...',	'politic');

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE `ratings` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mark` int(1) unsigned DEFAULT NULL,
  `news_id` int(50) unsigned NOT NULL,
  `user_id` int(50) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_user_for_news` (`user_id`,`news_id`),
  KEY `news_id` (`news_id`),
  CONSTRAINT `ratings_ibfk_4` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ratings_ibfk_5` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ratings` (`id`, `comment`, `mark`, `news_id`, `user_id`) VALUES
(1,	'That\'s intresting',	4,	1,	2),
(2,	'Cool',	5,	2,	1),
(3,	'not bad',	3,	3,	2),
(4,	'bad',	2,	5,	3),
(6,	'that\'s ok',	3,	4,	2);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`) VALUES
(1,	'David',	'david@gmail.com'),
(2,	'Ivan',	'ivan@gmail.com'),
(3,	'Lena',	'lena@gmail.com');