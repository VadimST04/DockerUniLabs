-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `branches` (`id`, `name`, `color`) VALUES
(1,	'Олексіївська',	'Зелений'),
(2,	'Холодногірсько-заводська',	'Червоний'),
(3,	'Салтівська',	'Блакитний');

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `next_id` int(10) unsigned DEFAULT NULL,
  `prev_id` int(10) unsigned DEFAULT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `branch_id` (`branch_id`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stations` (`id`, `name`, `next_id`, `prev_id`, `branch_id`) VALUES
(1,	'Перемога',	2,	NULL,	1),
(2,	'Олексіївська',	3,	1,	1),
(3,	'23 серепня',	4,	2,	1),
(4,	'Ботанічний сад',	5,	4,	1),
(5,	'Наукова',	6,	4,	1),
(6,	'Держпром',	7,	5,	1),
(7,	'Архітектора Бекетова',	8,	6,	1),
(8,	'Захисників України',	9,	8,	1),
(9,	'Метробудівників',	10,	8,	1),
(10,	'Холодна гора',	11,	9,	2),
(11,	'Південний вокзал',	12,	10,	2),
(12,	'Центральний ринок',	13,	11,	2),
(13,	'Майдан Конституції',	14,	12,	2),
(14,	'Проспект Гагаріна',	15,	13,	2),
(15,	'Спортивна',	16,	14,	2),
(16,	'Завод імені Малишева',	17,	15,	2),
(17,	'Московський проспект',	18,	16,	2),
(18,	'Палац спорту',	19,	17,	2),
(19,	'Армійська',	20,	18,	2),
(20,	'імені О. С. Масельського',	21,	19,	2),
(21,	'Тракторний завод',	22,	20,	2),
(22,	'Індустріальний',	23,	21,	2),
(23,	'Історичний музей',	24,	22,	3),
(24,	'Університет',	25,	23,	3),
(25,	'Пушкінська',	26,	24,	3),
(26,	'Киівська',	27,	25,	3),
(27,	'Академіка Барабашова',	28,	26,	3),
(28,	'Академіка Павлова',	29,	27,	3),
(29,	'Студентська',	30,	28,	3),
(30,	'Героїв Праці',	NULL,	29,	3);

DROP TABLE IF EXISTS `transitions`;
CREATE TABLE `transitions` (
  `station_from_id` int(10) unsigned DEFAULT NULL,
  `station_to_id` int(10) unsigned DEFAULT NULL,
  KEY `station_from_id` (`station_from_id`),
  KEY `station_to_id` (`station_to_id`),
  CONSTRAINT `transitions_ibfk_1` FOREIGN KEY (`station_from_id`) REFERENCES `stations` (`id`),
  CONSTRAINT `transitions_ibfk_2` FOREIGN KEY (`station_to_id`) REFERENCES `stations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `transitions` (`station_from_id`, `station_to_id`) VALUES
(6,	24),
(9,	15),
(13,	23),
(15,	9),
(23,	13),
(24,	6);

-- 2023-04-21 06:54:59
