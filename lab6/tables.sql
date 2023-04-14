-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `station_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `station_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `next_station_id` tinyint(3) unsigned DEFAULT NULL,
  `previous_station_id` tinyint(3) unsigned DEFAULT NULL,
  `branch_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`station_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stations` (`station_id`, `station_name`, `next_station_id`, `previous_station_id`, `branch_name`) VALUES
(1,	'Перемога',	2,	NULL,	'Олексіївська'),
(2,	'Олексіївська',	3,	1,	'Олексіївська'),
(3,	'23 серепня',	4,	2,	'Олексіївська'),
(4,	'Ботанічний сад',	5,	4,	'Олексіївська'),
(5,	'Наукова',	6,	4,	'Олексіївська'),
(6,	'Держпром',	7,	5,	'Олексіївська'),
(7,	'Архітектора Бекетова',	8,	6,	'Олексіївська'),
(8,	'Захисників України',	9,	8,	'Олексіївська'),
(9,	'Метробудівників',	10,	8,	'Олексіївська'),
(10,	'Холодна гора',	11,	9,	'Холодногірсько-заводська'),
(11,	'Південний вокзал',	12,	10,	'Холодногірсько-заводська'),
(12,	'Центральний ринок',	13,	11,	'Холодногірсько-заводська'),
(13,	'Майдан Конституції',	14,	12,	'Холодногірсько-заводська'),
(14,	'Проспект Гагаріна',	15,	13,	'Холодногірсько-заводська'),
(15,	'Спортивна',	16,	14,	'Холодногірсько-заводська'),
(16,	'Завод імені Малишева',	17,	15,	'Холодногірсько-заводська'),
(17,	'Московський проспект',	18,	16,	'Холодногірсько-заводська'),
(18,	'Палац спорту',	19,	17,	'Холодногірсько-заводська'),
(19,	'Армійська',	20,	18,	'Холодногірсько-заводська'),
(20,	'імені О. С. Масельського',	21,	19,	'Холодногірсько-заводська'),
(21,	'Тракторний завод',	22,	20,	'Холодногірсько-заводська'),
(22,	'Індустріальний',	23,	21,	'Холодногірсько-заводська'),
(23,	'Історичний музей',	24,	22,	'Салтівська'),
(24,	'Університет',	25,	23,	'Салтівська'),
(25,	'Пушкінська',	26,	24,	'Салтівська'),
(26,	'Киівська',	27,	25,	'Салтівська'),
(27,	'Академіка Барабашова',	28,	26,	'Салтівська'),
(28,	'Академіка Павлова',	29,	27,	'Салтівська'),
(29,	'Студентська',	30,	28,	'Салтівська'),
(30,	'Героїв Праці',	NULL,	29,	'Салтівська');

DROP TABLE IF EXISTS `transitions`;
CREATE TABLE `transitions` (
  `station_from_id` tinyint(3) unsigned NOT NULL,
  `station_to_id` tinyint(3) unsigned DEFAULT NULL,
  KEY `station_from_id` (`station_from_id`),
  CONSTRAINT `transitions_ibfk_1` FOREIGN KEY (`station_from_id`) REFERENCES `stations` (`station_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `transitions` (`station_from_id`, `station_to_id`) VALUES
(1,	NULL),
(2,	NULL),
(3,	NULL),
(4,	NULL),
(5,	NULL),
(6,	24),
(7,	NULL),
(8,	NULL),
(9,	15),
(10,	NULL),
(11,	NULL),
(12,	NULL),
(13,	23),
(14,	NULL),
(15,	9),
(16,	NULL),
(17,	NULL),
(18,	NULL),
(19,	NULL),
(20,	NULL),
(21,	NULL),
(22,	NULL),
(23,	13),
(24,	6),
(25,	NULL),
(26,	NULL),
(27,	NULL),
(28,	NULL),
(29,	NULL),
(30,	NULL);

-- 2023-04-14 08:25:34
