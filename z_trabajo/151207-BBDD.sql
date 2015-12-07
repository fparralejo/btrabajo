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
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(1, 'Ms.', 'Esse id aliquam iste aperiam excepturi magnam deleniti illum eum voluptas mollitia eius omnis beatae sit et.', 'Stracke LLC', '818.232.6176x445', 'Lorena65@Schoen.com', 'http://Grant.info/quaerat-eius-ad-veritatis-voluptas.html', 'East Rhiannaport', 'Necessitatibus error aute', 'Minus nisi est aperiam ip', 'Esse distinctio mole', '2004-02-27 00:49:14', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(2, 'Mr.', 'Repellendus nihil adipisci aperiam ut illo ea iure deleniti ut quis cupiditate similique harum alias repellat et sed earum voluptatibus ex quasi quidem.', 'Okuneva-Grimes', '(449)462-2874x0794', 'Rowe.Diego@Koepp.com', 'https://www.Lynch.org/inventore-ipsum-omnis-consectetur-eaque-quia-quae', 'New Noemiefort', 'Quo sint quibusdam volupt', 'Voluptates impedit quos q', 'Et voluptas minima e', '1987-02-27 04:02:12', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(3, 'Mrs.', 'Ab esse cupiditate laborum earum non consequatur rerum eum architecto fugiat aut eius.', 'Waters and Sons', '762.054.3023', 'Price.Richie@Watsica.com', 'http://www.Rice.info/autem-aut-autem-ea-et-ut-quia-veritatis', 'East Mervinmouth', 'Iure ad nemo enim quas nu', 'Unde ut dignissimos corpo', 'Est totam laboriosam', '1973-11-02 02:44:50', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(4, 'Prof.', 'Necessitatibus sint corporis voluptas numquam sit quod maxime dignissimos cupiditate quas commodi facilis id rerum officia.', 'Hagenes and Sons', '(435)348-3197', 'Amanda48@yahoo.com', 'http://www.Schoen.com/autem-magnam-voluptate-neque-neque-aut-nam-et-aperiam', 'New Fredrick', 'Et nulla placeat ratione ', 'Autem occaecati veritatis', 'Maxime est ipsum sim', '1992-07-25 20:45:42', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(5, 'Prof.', 'Odit sed eveniet aliquid dolorem corporis optio tenetur quis at est corporis ipsum nesciunt quia est dolores ipsum architecto reiciendis dolorem.', 'O\'Reilly, Goyette and Berge', '(696)507-5883x04555', 'Will.Rosa@Bashirian.com', 'http://www.McKenzie.com/accusamus-rerum-aut-eos-dicta-eum.html', 'Port Jabarifurt', 'Deserunt aut voluptatum e', 'Ipsum consequatur ea enim', 'Commodi nobis eius n', '1994-06-09 03:46:52', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(6, 'Miss', 'Ullam quas necessitatibus hic quasi quis nulla non praesentium totam illum quas quo aperiam.', 'Kuhic-Runolfsdottir', '767-970-0066', 'uBartell@Krajcik.org', 'http://www.Pfannerstill.net/ea-ipsa-exercitationem-aut-ipsa-sunt', 'South Terrencetown', 'Doloremque fugiat at corr', 'Illum quia officiis totam', 'Necessitatibus aut n', '1983-12-06 09:39:54', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(7, 'Prof.', 'Minus hic quia beatae culpa necessitatibus vel aliquam molestiae dolorum ullam deserunt quos omnis iste autem beatae eius voluptatem.', 'Blick and Sons', '(048)551-4905', 'bLesch@yahoo.com', 'http://Schneider.net/esse-nam-ab-et-qui', 'Veldamouth', 'Quidem odio ipsa sapiente', 'Et veritatis suscipit ita', 'Voluptas velit autem', '2014-10-08 17:30:53', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(8, 'Ms.', 'Labore exercitationem suscipit harum dolor temporibus nam quis recusandae molestiae perspiciatis atque eius qui.', 'Wyman, Graham and Nienow', '(464)380-3805x8569', 'Eino45@gmail.com', 'http://Beier.org/', 'New Uriahmouth', 'Voluptate culpa impedit o', 'Aut quia voluptatem magni', 'Tenetur at voluptati', '2008-02-29 14:27:01', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(9, 'Dr.', 'Culpa porro tempora inventore delectus quam voluptatem iste atque facilis voluptas ipsum sapiente occaecati rerum sunt fugiat voluptate voluptatibus sunt eos atque voluptas at quia molestias.', 'Dietrich, Dickens and Ernser', '1-656-771-8453x6298', 'Prudence30@Prohaska.info', 'http://www.Wilderman.biz/recusandae-voluptatem-eius-eaque-est-non', 'West Rebeccaport', 'Deleniti enim et corporis', 'Est quidem sint quaerat e', 'Adipisci est illo ve', '1983-01-09 17:27:15', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(10, 'Mr.', 'Velit atque alias ratione qui rem consequuntur temporibus est cum placeat optio nesciunt officia non nostrum repellendus porro dolorem perferendis voluptatum suscipit inventore.', 'Reilly Inc', '1-980-921-5551x3700', 'Ramona.Daugherty@hotmail.com', 'https://Deckow.com/nulla-laborum-quia-voluptate-non.html', 'East Vickie', 'Perspiciatis et quis repu', 'Explicabo sit officia mag', 'Eligendi cumque ut v', '2002-03-10 23:26:19', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(11, 'Mr.', 'Quasi nihil consequatur repellat ea et in quia sequi sunt nihil rem alias ex qui voluptate ducimus in consequatur.', 'Walsh Ltd', '053-504-1867x394', 'sKihn@Nitzsche.biz', 'http://Veum.com/molestiae-natus-recusandae-vel-inventore-eos', 'North Violetmouth', 'Qui eos numquam consectet', 'Alias voluptatum ducimus ', 'Ex natus laboriosam ', '1977-10-29 05:04:49', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(12, 'Prof.', 'Quod sapiente earum omnis quia consectetur ipsum quasi eligendi molestiae id veritatis tempore sunt fugiat.', 'Wisoky Inc', '05736047761', 'Kilback.Tyra@yahoo.com', 'http://Donnelly.com/officia-cupiditate-et-aut-reprehenderit', 'North Moriahville', 'Aut asperiores vel cumque', 'Blanditiis voluptatem qui', 'Eligendi omnis volup', '2001-04-09 21:58:35', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(13, 'Prof.', 'Qui eligendi repudiandae beatae magni iusto unde et impedit error cum aliquam quae eum eum magni ipsam.', 'Moore, Gottlieb and Hand', '(515)760-1922', 'Hills.Amelie@gmail.com', 'http://www.Gaylord.com/et-blanditiis-ex-officiis-dicta-ipsum', 'Amyfurt', 'Esse necessitatibus paria', 'Ut aut dolorem labore ali', 'Accusantium qui labo', '1992-10-17 16:31:07', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(14, 'Prof.', 'Veniam sunt fugit autem minima expedita provident possimus sed fuga nostrum rerum optio.', 'Parker-Wisozk', '1-797-770-9208', 'tSimonis@gmail.com', 'http://www.Barrows.biz/', 'Lake Melany', 'Et quia quod ullam invent', 'Ut magni quia eaque maior', 'Doloremque repellend', '1975-04-22 04:38:34', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(15, 'Prof.', 'Voluptatem consectetur expedita quia nisi et ut illo sint est vel nesciunt laudantium similique corrupti ut nihil omnis placeat et laudantium facilis aut unde tempore.', 'Beer and Sons', '234.524.0405x062', 'eFisher@hotmail.com', 'http://www.Windler.com/', 'West Norris', 'Et nihil suscipit quidem ', 'Corporis qui doloremque q', 'Illo enim sint offic', '1988-10-09 19:46:28', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(16, 'Mrs.', 'Aperiam suscipit aspernatur sint adipisci aut consequatur itaque quam fugiat repellat vel sit dicta cum ut perspiciatis quo et placeat.', 'Smitham-Herman', '08157094608', 'Quitzon.Wellington@gmail.com', 'http://www.Parker.com/', 'Towneberg', 'Ut voluptas beatae aliqua', 'Reiciendis sint quia est ', 'Deserunt ut voluptas', '1994-04-22 19:04:33', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(17, 'Prof.', 'A qui explicabo inventore ducimus esse iure voluptatem eos qui quam fuga quibusdam numquam porro aliquam aut molestiae labore nostrum aliquid ducimus repellat quam excepturi odio enim.', 'Glover Inc', '113-052-9148', 'tKuhn@hotmail.com', 'https://www.Jones.com/odio-sit-sit-natus-ea-modi-quis-harum-rerum', 'South Jenniferchester', 'Voluptas saepe magnam mol', 'Nisi illo exercitationem ', 'Quia soluta cumque m', '1999-08-09 22:10:26', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(18, 'Ms.', 'Aut animi harum officia ipsum magnam facere vel amet incidunt cum rerum facilis repellendus voluptatem perspiciatis magnam.', 'Jerde, Rohan and Dach', '1-724-572-4771x71415', 'Marjolaine.Reinger@yahoo.com', 'http://Pacocha.com/', 'New Daron', 'Et ea qui ut vero sunt cu', 'Enim aut quo at ut vitae ', 'Necessitatibus tempo', '1973-08-14 00:55:16', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(19, 'Dr.', 'Temporibus saepe vero soluta dolor harum voluptas voluptatem molestias ea nobis dolore quae quae.', 'Abbott, Mann and Lynch', '969.630.9939', 'Arturo.King@yahoo.com', 'http://www.Blanda.com/repudiandae-rem-eum-sit-exercitationem.html', 'Bayermouth', 'Dolor omnis sint quo iust', 'Deserunt consectetur ipsa', 'Quasi mollitia labor', '1977-04-22 23:03:20', 1);
INSERT INTO `ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `id_usuario`) VALUES
	(20, 'Dr.', 'Nisi soluta provident asperiores sed reprehenderit placeat error eos dignissimos omnis qui sit laboriosam quis dolores optio et debitis qui et quia in et deleniti est.', 'Funk Ltd', '308-854-5397', 'Nickolas.Watsica@McCullough.com', 'http://Welch.com/aspernatur-omnis-praesentium-occaecati-accusantium-sint-et.html', 'New Elta', 'Culpa ducimus voluptas nu', 'Omnis nam sunt dolor nequ', 'Tempora corrupti atq', '1976-03-31 05:54:11', 1);
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