-- Adminer 4.8.1 MySQL 5.5.5-10.3.32-MariaDB-1:10.3.32+maria~focal dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `branches`;
CREATE TABLE `branches` (
  `branch_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `branches` (`branch_id`, `name`, `color`) VALUES
(1,	'Олексіївська',	'Зелений'),
(2,	'Холодногірсько-заводська',	'Червоний'),
(3,	'Салтівська',	'Блакитний');

INSERT INTO `cities` (`id`, `name`, `population`, `region`) VALUES
(1,	'Київ',	2888470,	'N'),
(2,	'Харків',	1444540,	'E'),
(3,	'Одеса',	1010000,	'S'),
(4,	'Дніпро',	984423,	'C'),
(5,	'Донецьк',	932562,	'E'),
(6,	'Запоріжжя',	758011,	'E'),
(7,	'Львів',	728545,	'W'),
(8,	'Кривий Ріг',	646748,	'S'),
(9,	'Миколаїв',	494381,	'S'),
(10,	'Маріуполь',	458533,	'S'),
(11,	'Луганськ',	417990,	'E'),
(12,	'Севастополь',	412630,	'S'),
(13,	'Вінниця',	372432,	'W'),
(14,	'Макіївка',	348173,	'E'),
(15,	'Сімферополь',	332608,	'S'),
(16,	'Херсон',	296161,	'S'),
(17,	'Полтава',	294695,	'E'),
(18,	'Чернігів',	294522,	'N'),
(19,	'Черкаси',	284459,	'C'),
(20,	'Суми',	268409,	'E'),
(21,	'Житомир',	268000,	'N'),
(22,	'Хмельницький',	267891,	'W'),
(23,	'Чернівці',	264427,	'W'),
(24,	'Горлівка',	250991,	'E'),
(25,	'Рівне',	249477,	'W'),
(26,	'Кам\'янське',	240477,	'C'),
(27,	'Кропивницький',	232052,	'C'),
(28,	'Івано-Франківськ',	229447,	'W'),
(29,	'Кременчук',	224997,	'C'),
(30,	'Тернопіль',	217950,	'W'),
(31,	'Луцьк',	217082,	'W'),
(32,	'Біла Церква',	211080,	'N'),
(33,	'Краматорськ',	160895,	'E'),
(34,	'Мелітополь',	156719,	'S'),
(35,	'Керч',	147668,	'S'),
(36,	'Сєвєродонецьк',	130000,	'E'),
(37,	'Хрустальний',	124000,	'E'),
(38,	'Нікополь',	119627,	'C'),
(39,	'Бердянськ',	115476,	'S'),
(40,	'Слов\'янськ',	115421,	'E'),
(41,	'Ужгород',	115195,	'W'),
(42,	'Алчевськ',	111360,	'E'),
(43,	'Павлоград',	110144,	'E'),
(44,	'Євпаторія',	106115,	'S'),
(45,	'Лисичанськ',	103459,	'E'),
(46,	'Кам\'янець-Подільський',	101590,	'W'),
(47,	'Бровари',	100374,	'N'),
(48,	'Дрогобич',	98015,	'W'),
(49,	'Кадіївка',	92132,	'E'),
(50,	'Конотоп',	92000,	'E');

INSERT INTO `regions` (`uuid`, `name`, `area_quantity`) VALUES
('C',	'Center',	5),
('E',	'East',	3),
('N',	'Nord',	4),
('S',	'South',	5),
('W',	'West',	8);

DROP TABLE IF EXISTS `stations`;
CREATE TABLE `stations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `next_id` tinyint(3) unsigned DEFAULT NULL,
  `prev_id` tinyint(3) unsigned DEFAULT NULL,
  `branch` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `branch` (`branch`),
  CONSTRAINT `stations_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branches` (`branch_id`) ON DELETE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stations` (`id`, `name`, `next_id`, `prev_id`, `branch`) VALUES
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

-- 2023-04-21 06:45:08
