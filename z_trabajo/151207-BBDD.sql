-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.1.8-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla btrabajo.entrevistas
DROP TABLE IF EXISTS `entrevistas`;
CREATE TABLE IF NOT EXISTS `entrevistas` (
  `id_entrevista` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `lugar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contacto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entrevista` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_oferta` int(11) NOT NULL,
  PRIMARY KEY (`id_entrevista`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.entrevistas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `entrevistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrevistas` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.migrations
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.migrations: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2015_12_07_113501_create_tables', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.ofertas
DROP TABLE IF EXISTS `ofertas`;
CREATE TABLE IF NOT EXISTS `ofertas` (
  `id_oferta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oferta` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` longtext COLLATE utf8_unicode_ci NOT NULL,
  `empresa` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tipo_contrato` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duracion` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `jornada` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salario` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` int(11) NOT NULL,
  PRIMARY KEY (`id_oferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.ofertas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `ofertas` DISABLE KEYS */;
/*!40000 ALTER TABLE `ofertas` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.seguimientos
DROP TABLE IF EXISTS `seguimientos`;
CREATE TABLE IF NOT EXISTS `seguimientos` (
  `id_seguimiento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `tipo` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `contacto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seguimiento` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_oferta` int(11) NOT NULL,
  PRIMARY KEY (`id_seguimiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.seguimientos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `seguimientos` DISABLE KEYS */;
/*!40000 ALTER TABLE `seguimientos` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.usuarios
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` int(11) NOT NULL,
  `rol` int(11) NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuarios_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.usuarios: 1 rows
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `email`, `direccion`, `telefono`, `rol`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'Paco', 'Parralejo', 'fparralejo1970@gmail.com', 'Calle Olimpiada 3, Alcorcón', 671108309, 0, '0000', '2015-02-14 20:41:13', '2015-02-14 20:41:13');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
