-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla servidorproyecto.devicehistoric
CREATE TABLE IF NOT EXISTS `devicehistoric` (
  `idDevice` varchar(20) NOT NULL,
  `contador` tinyint(4) NOT NULL,
  `hora` tinyint(4) NOT NULL,
  `minuto` tinyint(4) NOT NULL,
  `dia` tinyint(4) NOT NULL,
  `mes` tinyint(4) NOT NULL,
  `fechasubedatos` datetime NOT NULL,
  KEY `idDevice` (`idDevice`),
  CONSTRAINT `FK__device_state` FOREIGN KEY (`idDevice`) REFERENCES `device_state` (`idDevice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla servidorproyecto.devicehistoric: ~171 rows (aproximadamente)
/*!40000 ALTER TABLE `devicehistoric` DISABLE KEYS */;
INSERT INTO `devicehistoric` (`idDevice`, `contador`, `hora`, `minuto`, `dia`, `mes`, `fechasubedatos`) VALUES
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:02'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:07'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:12'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:18'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:23'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:28'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:37'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:42'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:42'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 08:18:47'),
	('tarjeta1', 0, 8, 18, 27, 5, '2021-05-27 10:38:36'),
	('tarjeta1', 29, 9, 0, 27, 5, '2021-05-27 10:38:41'),
	('tarjeta1', 70, 10, 0, 27, 5, '2021-05-27 10:38:41'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:38:41'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:38:41'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:38:46'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:38:47'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:38:52'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:38:57'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 10:39:02'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:20'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:25'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:35'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:40'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:45'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:50'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:02:55'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:03:00'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 16:03:05'),
	('tarjeta1', 5, 16, 3, 27, 5, '2021-05-27 18:26:55'),
	('tarjeta1', 82, 17, 0, 27, 5, '2021-05-27 18:27:00'),
	('tarjeta1', 119, 18, 0, 27, 5, '2021-05-27 18:27:00'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:07'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:13'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:18'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:23'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:29'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:34'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-27 18:27:34'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:00:29'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:00:34'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:00:39'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:00:44'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:00:50'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:00:55'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:01:03'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:01:08'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:01:14'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 07:01:19'),
	('tarjeta1', 4, 7, 1, 28, 5, '2021-05-28 09:00:22'),
	('tarjeta1', 75, 8, 0, 28, 5, '2021-05-28 09:00:27'),
	('tarjeta1', 101, 9, 0, 28, 5, '2021-05-28 09:00:32'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:00:37'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:00:43'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:00:48'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:00:54'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:00:59'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:01:06'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 09:01:11'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:22'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:27'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:33'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:38'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:45'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:50'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:00:55'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:01:00'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:01:07'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 16:01:15'),
	('tarjeta1', 5, 16, 1, 28, 5, '2021-05-28 18:01:15'),
	('tarjeta1', 45, 17, 0, 28, 5, '2021-05-28 18:01:20'),
	('tarjeta1', 63, 18, 0, 28, 5, '2021-05-28 18:01:25'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:36'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:41'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:49'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-28 18:01:54'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:02:50'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:02:56'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:01'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:06'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:11'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:16'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:25'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:31'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 11:03:36'),
	('tarjeta1', 2, 11, 3, 29, 5, '2021-05-29 13:00:22'),
	('tarjeta1', 34, 12, 0, 29, 5, '2021-05-29 13:00:27'),
	('tarjeta1', 51, 13, 0, 29, 5, '2021-05-29 13:00:33'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:00:39'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:00:45'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:00:45'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:00:45'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:00:51'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:00:57'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 13:01:03'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:01:59'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:04'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:10'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:17'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:22'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:28'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:33'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:40'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:45'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 16:02:51'),
	('tarjeta1', 0, 16, 2, 29, 5, '2021-05-29 17:46:59'),
	('tarjeta1', 24, 17, 0, 29, 5, '2021-05-29 17:47:04'),
	('tarjeta1', 47, 18, 0, 29, 5, '2021-05-29 17:47:09'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:15'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:15'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:20'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:27'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:27'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:27'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-29 17:47:32'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:02:55'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:00'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:05'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:10'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:15'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:20'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:25'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:35'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 11:03:40'),
	('tarjeta1', 1, 11, 3, 30, 5, '2021-05-30 13:00:08'),
	('tarjeta1', 20, 12, 0, 30, 5, '2021-05-30 13:00:14'),
	('tarjeta1', 34, 13, 0, 30, 5, '2021-05-30 13:00:19'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:24'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:29'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:34'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:39'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:44'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:49'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-05-30 13:00:54'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:14'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:19'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:24'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:29'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:34'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:39'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:44'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:49'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:28:57'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:29:02'),
	('tarjeta1', 1, 12, 29, 2, 6, '2021-06-02 12:32:08'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:32:13'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:32:18'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-02 12:32:23'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:25'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:30'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:35'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:40'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:46'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:51'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:46:56'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:47:01'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:47:06'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:47:11'),
	('tarjeta1', 7, 16, 47, 10, 6, '2021-06-10 16:47:51'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:47:56'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:01'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:06'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:11'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:16'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:21'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:26'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:31'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:48:36'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:04'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:09'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:14'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:19'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:26'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:32'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:37'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:42'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:50'),
	('tarjeta1', 0, 0, 0, 0, 0, '2021-06-10 16:55:55');
/*!40000 ALTER TABLE `devicehistoric` ENABLE KEYS */;

-- Volcando estructura para tabla servidorproyecto.device_state
CREATE TABLE IF NOT EXISTS `device_state` (
  `idDevice` varchar(20) NOT NULL,
  `contador` tinyint(3) unsigned NOT NULL,
  `hora` tinyint(3) unsigned NOT NULL,
  `minuto` tinyint(3) unsigned NOT NULL,
  `dia` tinyint(3) unsigned NOT NULL,
  `mes` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`idDevice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla servidorproyecto.device_state: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `device_state` DISABLE KEYS */;
INSERT INTO `device_state` (`idDevice`, `contador`, `hora`, `minuto`, `dia`, `mes`) VALUES
	('tarjeta1', 0, 0, 0, 0, 0);
/*!40000 ALTER TABLE `device_state` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
