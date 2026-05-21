CREATE DATABASE IF NOT EXISTS `DATABSE_NAME`;
USE `dsxp`;

CREATE TABLE IF NOT EXISTS `users` (
  `identifier` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rp_xp` int(11) NOT NULL DEFAULT 0,
  `rp_rank` int(11) NOT NULL DEFAULT 1,
  `prestige` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `plate` varchar(8) NOT NULL DEFAULT '00AAA000',
  `owner` varchar(50) NOT NULL,
  `name` tinytext NOT NULL DEFAULT 'Saved vehicle',
  `model` varchar(50) NOT NULL,
  `color1` int(11) NOT NULL DEFAULT 1,
  `color2` int(11) NOT NULL DEFAULT 1,
  `livery` int(11) NOT NULL DEFAULT -1,
  `wheel_type` int(11) NOT NULL DEFAULT -1,
  `wheels_f` int(11) NOT NULL DEFAULT -1,
  `e_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_4` tinyint(4) NOT NULL DEFAULT 0,
  `e_5` tinyint(4) NOT NULL DEFAULT 0,
  `e_6` tinyint(4) NOT NULL DEFAULT 0,
  `e_7` tinyint(4) NOT NULL DEFAULT 0,
  `e_8` tinyint(4) NOT NULL DEFAULT 0,
  `e_9` tinyint(4) NOT NULL DEFAULT 0,
  `e_10` tinyint(4) NOT NULL DEFAULT 0,
  `e_11` tinyint(4) NOT NULL DEFAULT 0,
  `e_12` tinyint(4) NOT NULL DEFAULT 0,
  `spoiler` int(11) NOT NULL DEFAULT -1,
  `bumper_f` int(11) NOT NULL DEFAULT -1,
  `bumper_r` int(11) NOT NULL DEFAULT -1,
  `exhaust` int(11) NOT NULL DEFAULT -1,
  `grille` int(11) NOT NULL DEFAULT -1,
  `hood` int(11) NOT NULL DEFAULT -1,
  `roof` int(11) NOT NULL DEFAULT -1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plate` (`plate`)
) ENGINE=InnoDB AUTO_INCREMENT=574 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;