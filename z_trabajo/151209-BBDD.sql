-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.0.17-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win32
-- HeidiSQL Versión:             9.3.0.5025
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Volcando estructura para tabla btrabajo.bt_entrevistas
DROP TABLE IF EXISTS `bt_entrevistas`;
CREATE TABLE IF NOT EXISTS `bt_entrevistas` (
  `id_entrevista` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `lugar` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `contacto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entrevista` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_oferta` int(11) NOT NULL,
  PRIMARY KEY (`id_entrevista`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.bt_entrevistas: 0 rows
DELETE FROM `bt_entrevistas`;
/*!40000 ALTER TABLE `bt_entrevistas` DISABLE KEYS */;
/*!40000 ALTER TABLE `bt_entrevistas` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.bt_ofertas
DROP TABLE IF EXISTS `bt_ofertas`;
CREATE TABLE IF NOT EXISTS `bt_ofertas` (
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
  `cv_pdf` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1' COMMENT '1=Valido, 0= Borrado',
  PRIMARY KEY (`id_oferta`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.bt_ofertas: 24 rows
DELETE FROM `bt_ofertas`;
/*!40000 ALTER TABLE `bt_ofertas` DISABLE KEYS */;
INSERT INTO `bt_ofertas` (`id_oferta`, `oferta`, `descripcion`, `empresa`, `telefono`, `email`, `url`, `tipo_contrato`, `duracion`, `jornada`, `salario`, `fecha`, `cv_pdf`, `id_usuario`, `estado`) VALUES
	(2, 'N02', 'Repellendus nihil adipisci aperiam ut illo ea iure deleniti ut quis cupiditate similique harum alias repellat et sed earum voluptatibus ex quasi quidem.', 'Okuneva-Grimes', '(449)462-2874x0794', 'Rowe.Diego@Koepp.com', 'https://www.Lynch.org/inventore-ipsum-omnis-consectetur-eaque-quia-quae', 'New Noemiefort', 'Quo sint quibusdam volupt', 'Voluptates impedit quos q', 'Et voluptas minima e', '1987-02-27 04:02:12', 'CV01.pdf', 1, 1),
	(3, 'informatico becario de goma', 'Ab esse cupiditate laborum earum non consequatur rerum eum architecto fugiat aut eius', 'Waters and Sons', '762.054.3023', 'Price.Richie@Watsica.com', 'http://www.Rice.info/autem-aut-autem-ea-et-ut-quia-veritatis', 'East Mervinmouth', 'Iure ad nemo enim quas nu', 'Unde ut dignissimos corpo', 'Est totam laboriosam', '1973-11-02 02:44:50', '', 1, 1),
	(4, 'Prof.', 'Necessitatibus sint corporis voluptas numquam sit quod maxime dignissimos cupiditate quas commodi facilis id rerum officia.', 'Hagenes and Sons', '(435)348-3197', 'Amanda48@yahoo.com', 'http://www.Schoen.com/autem-magnam-voluptate-neque-neque-aut-nam-et-aperiam', 'New Fredrick', 'Et nulla placeat ratione ', 'Autem occaecati veritatis', 'Maxime est ipsum sim', '1992-07-25 20:45:42', 'CV01.pdf', 1, 1),
	(5, 'Prof.', 'Odit sed eveniet aliquid dolorem corporis optio tenetur quis at est corporis ipsum nesciunt quia est dolores ipsum architecto reiciendis dolorem.', 'O\'Reilly, Goyette and Berge', '(696)507-5883x04555', 'Will.Rosa@Bashirian.com', 'http://www.McKenzie.com/accusamus-rerum-aut-eos-dicta-eum.html', 'Port Jabarifurt', 'Deserunt aut voluptatum e', 'Ipsum consequatur ea enim', 'Commodi nobis eius n', '1994-06-09 03:46:52', 'CV01.pdf', 1, 1),
	(6, 'Miss', 'Ullam quas necessitatibus hic quasi quis nulla non praesentium totam illum quas quo aperiam.', 'Kuhic-Runolfsdottir', '767-970-0066', 'uBartell@Krajcik.org', 'http://www.Pfannerstill.net/ea-ipsa-exercitationem-aut-ipsa-sunt', 'South Terrencetown', 'Doloremque fugiat at corr', 'Illum quia officiis totam', 'Necessitatibus aut n', '1983-12-06 09:39:54', '', 1, 1),
	(7, 'Prof.', 'Minus hic quia beatae culpa necessitatibus vel aliquam molestiae dolorum ullam deserunt quos omnis iste autem beatae eius voluptatem.', 'Blick and Sons', '(048)551-4905', 'bLesch@yahoo.com', 'http://Schneider.net/esse-nam-ab-et-qui', 'Veldamouth', 'Quidem odio ipsa sapiente', 'Et veritatis suscipit ita', 'Voluptas velit autem', '2014-10-08 17:30:53', 'CV01.pdf', 1, 1),
	(8, 'Melon', 'Labore exercitationem suscipit harum dolor temporibus nam quis recusandae molestiae perspiciatis atque eius qui.', 'Wyman, Graham and Nienow', '(464)380-3805x8569', 'Eino45@gmail.com', 'http://Beier.org/', 'New Uriahmouth', 'Voluptate culpa impedit o', 'Aut quia voluptatem magni', 'Tenetur at voluptati', '2008-02-29 14:27:01', '', 1, 1),
	(9, 'Dr.', 'Culpa porraco tempora inventore delectus quam voluptatem iste atque facilis voluptas ipsum sapiente occaecati rerum sunt fugiat voluptate voluptatibus sunt eos atque voluptas at quia molestias.', 'Dietrich, Dickens and Ernser', '1-656-771-8453x6298', 'Prudence30@Prohaska.info', 'http://www.Wilderman.biz/recusandae-voluptatem-eius-eaque-est-non', 'West Rebeccaport', 'Deleniti enim et corporis', 'Est quidem sint quaerat e', 'Adipisci est illo ve', '1983-01-09 19:13:05', 'CV01.pdf', 1, 1),
	(12, 'Prof.', 'Quod sapiente earum omnis quia consectetur ipsum quasi eligendi molestiae id veritatis tempore sunt fugiat.', 'Wisoky Inc', '05736047761', 'Kilback.Tyra@yahoo.com', 'http://Donnelly.com/officia-cupiditate-et-aut-reprehenderit', 'North Moriahville', 'Aut asperiores vel cumque', 'Blanditiis voluptatem qui', 'Eligendi omnis volup', '2001-04-09 21:58:35', 'CV01.pdf', 1, 1),
	(14, 'Prof.', 'Veniam sunt fugit autem minima expedita provident possimus sed fuga nostrum rerum optio.', 'Parker-Wisozk', '1-797-770-9208', 'tSimonis@gmail.com', 'http://www.Barrows.biz/', 'Lake Melany', 'Et quia quod ullam invent', 'Ut magni quia eaque maior', 'Doloremque repellend', '1975-04-22 04:38:34', 'CV01.pdf', 1, 1),
	(15, 'Prof.', 'Voluptatem consectetur expedita quia nisi et ut illo sint est vel nesciunt laudantium similique corrupti ut nihil omnis placeat et laudantium facilis aut unde tempore.', 'Beer and Sons', '234.524.0405x062', 'eFisher@hotmail.com', 'http://www.Windler.com/', 'West Norris', 'Et nihil suscipit quidem ', 'Corporis qui doloremque q', 'Illo enim sint offic', '1988-10-09 19:46:28', 'CV01.pdf', 1, 1),
	(16, 'Mrs.', 'Aperiam suscipit aspernatur sint adipisci aut consequatur itaque quam fugiat repellat vel sit dicta cum ut perspiciatis quo et placeat.', 'Smitham-Herman', '08157094608', 'Quitzon.Wellington@gmail.com', 'http://www.Parker.com/', 'Towneberg', 'Ut voluptas beatae aliqua', 'Reiciendis sint quia est ', 'Deserunt ut voluptas', '1994-04-22 19:04:33', 'CV01.pdf', 1, 1),
	(17, 'Prof.', 'A qui explicabo inventore ducimus esse iure voluptatem eos qui quam fuga quibusdam numquam porro aliquam aut molestiae labore nostrum aliquid ducimus repellat quam excepturi odio enim.', 'Glover Inc', '113-052-9148', 'tKuhn@hotmail.com', 'https://www.Jones.com/odio-sit-sit-natus-ea-modi-quis-harum-rerum', 'South Jenniferchester', 'Voluptas saepe magnam mol', 'Nisi illo exercitationem ', 'Quia soluta cumque m', '1999-08-09 22:10:26', 'CV01.pdf', 1, 1),
	(18, 'Ms.', 'Aut animi harum officia ipsum magnam facere vel amet incidunt cum rerum facilis repellendus voluptatem perspiciatis magnam.', 'Jerde, Rohan and Dach', '1-724-572-4771x71415', 'Marjolaine.Reinger@yahoo.com', 'http://Pacocha.com/', 'New Daron', 'Et ea qui ut vero sunt cu', 'Enim aut quo at ut vitae ', 'Necessitatibus tempo', '1973-08-14 00:55:16', 'CV01.pdf', 1, 1),
	(19, 'Dr. mongolo', 'Temporibus saepe vero soluta dolor harum voluptas voluptatem molestias ea nobis dolore quae quae.', 'Abbott, Mann and Lynch', '969.630.9939', 'Arturo.King@yahoo.com', 'http://www.Blanda.com/repudiandae', 'Bayermouth', 'Dolor omnis sint quo iust', 'Deserunt consectetur ipsa', 'Quasi mollitia labor', '1977-04-22 23:03:20', 'CV01.pdf', 1, 1),
	(20, 'Dr.', 'Nisi soluta provident asperiores sed reprehenderit placeat error eos dignissimos omnis qui sit laboriosam quis dolores optio et debitis qui et quia in et deleniti est.', 'Funk Ltd', '308-854-5397', 'Nickolas.Watsica@McCullough.com', 'http://Welch.com/aspernatur-omnis-praesentium-occaecati-accusantium-sint-et.html', 'New Elta', 'Culpa ducimus voluptas nu', 'Omnis nam sunt dolor nequ', 'Tempora corrupti atq', '1976-03-31 05:54:11', 'CV01.pdf', 1, 1),
	(21, 'Dr. junior', 'Nisi soluta provident asperiores sed reprehenderit placeat error eos dignissimos omnis qui sit laboriosam quis dolores optio et debitis qui et quia in et deleniti est.', 'Funk Ltd', '308-854-5397', 'Nickolas.Watsica@McCullough.com', 'http://Welch.com/asperna', 'New Elta', 'Culpa ducimus voluptas nu', 'Omnis nam sunt dolor nequ', 'Tempora corrupti atq', '1976-03-31 05:54:11', 'CV01.pdf', 1, 1),
	(22, 'asdasdasdasdasdf', 'adfsad adsf asdfasdf asf as', 'adsfasd adsf asdf ', '6365879', 'fparralejo1970@gmail.com', 'sdfsfsf', 'sdfsdf', 'sdfsf', 'sfsdf', 'sfsf', '1976-03-31 05:54:11', 'CV01.pdf', 1, 0),
	(23, 'delineante  total', 'delinadfasf as fa sf asfdasf', 'tierra armadaa', '308-854-5397', 'wangchung1970@hotmail.es', 'http://Welch.com/asperna', 'New Elta', 'duracion', 'jornada:', 'salario:', '1976-03-31 05:54:11', 'CV01.pdf', 1, 1),
	(24, 'Dr.', 'hola, me llamo lola y me gusta las pastillas juanolas', 'Dietrich, Dickens and Ernser', '1-656-771-8453x6298', 'Prudence30@Prohaska.info', 'http://www.Wilderman.biz/recusandae-voluptatem-ei', 'West Rebeccaport', 'Deleniti enim et corporis', 'Est quidem sint quaerat e', 'Adipisci est illo ve', '1983-01-09 17:27:15', 'CV01.pdf', 1, 1),
	(25, 'Dr.', 'hola, me llamo lola y me gusta las pastillas juanolas lolailo', 'Dietrich, Dickens and Ernser', '1-656-771-8453x6298', 'Prudence30@Prohaska.info', 'http://www.Wilderman.biz/recusandae-voluptatem-ei', 'West Rebeccaport', 'Deleniti enim et corporis', 'Est quidem sint quaerat e', 'Adipisci est illo ve', '1983-01-09 17:27:15', 'CV01.pdf', 1, 0),
	(26, 'encofrador de goma', 'Yeah! Its a lot easier when you name the object you are trying to change. This is exactly what I was looking for. I didn\'t think it would be that sim', 'price watehouse cooper', '671108309', 'fparralejo1970@gmail.com', 'http://stackoverflow.com/questions/13343566/set-select-option-selected-by-value', 'becario', 'infinita', 'reducida (12 horas)', 'cuenco de arroz', '2015-12-31 00:00:00', '', 1, 1),
	(27, 'qqqqqqqqq', 'qqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqq', '', '', '', '', '', '', '', '2015-12-08 12:07:09', 'CV01.pdf', 1, 1),
	(28, 'nueva oferta', 'adsfasdf as df asdf asdf', 'aaaaaaa', '', '', '', '', '', '', '', '2015-12-09 22:16:44', 'CV01.pdf', 1, 1);
/*!40000 ALTER TABLE `bt_ofertas` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.bt_seguimientos
DROP TABLE IF EXISTS `bt_seguimientos`;
CREATE TABLE IF NOT EXISTS `bt_seguimientos` (
  `id_seguimiento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `tipo` varchar(25) COLLATE utf8_unicode_ci NOT NULL COMMENT 'llamada, email. etc..',
  `contacto` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefono` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seguimiento` longtext COLLATE utf8_unicode_ci NOT NULL,
  `id_oferta` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT '1' COMMENT '1=Valido, 0= Borrado',
  PRIMARY KEY (`id_seguimiento`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Volcando datos para la tabla btrabajo.bt_seguimientos: 10 rows
DELETE FROM `bt_seguimientos`;
/*!40000 ALTER TABLE `bt_seguimientos` DISABLE KEYS */;
INSERT INTO `bt_seguimientos` (`id_seguimiento`, `fecha`, `tipo`, `contacto`, `telefono`, `email`, `seguimiento`, `id_oferta`, `estado`) VALUES
	(1, '2015-12-09 22:20:09', 'llamada', 'Alfonso Rodriguez Reyna', '915654477', 'fparralejo1970@gmail.com', 'dfgsggsdf fg sdfgsdfgsdfg ', 2, 1),
	(2, '2015-12-09 13:24:38', 'llamada', 'Juan Lopez', '935689869', 'eeee@wwww.es', 'asdfa sdfasdf asdfasfd asdf asdf asf ', 2, 1),
	(3, '2015-12-09 13:25:04', 'email', 'Ana Fernandez', '915201478', 'wwww@eeeee.es', 'rrrr r r rrrrrr rrrrrrr rrrr rrrr', 2, 1),
	(4, '2015-12-09 22:14:04', 'email', 'Alfonso Rodriguez Reyna', '915654477', 'wwww@eeeee.es', 'la lluvia en sevilla es una maravilla', 2, 1),
	(5, '2015-12-09 21:18:33', 'email', 'Lola Fernandez', '935658877', 'wwww@eeeee.es', 'fsdf sd fs f sd fs dfsdfsdfs dfwer wer', 2, 1),
	(6, '2015-12-09 22:23:36', 'llamada', 'Alfonso Rodriguez Reyna', '762.054.3023', 'wangchung1970@hotmail.es', 'asdASD asdasd sdfdfg fgdf g', 23, 1),
	(7, '2015-12-09 22:24:22', 'email', 'Ana Fernandez', '1-656-771-8453x6298', 'drupalfpp@gmail.com', 'dsfa sf asdf as f asdf a sfasfsfasf\r\n\r\nasfasdfasfasdf', 2, 1),
	(8, '2015-12-10 22:28:03', 'llamada', 'Alfonso Rodriguez Reyna', '762.054.3023', 'fparralejo1970@gmail.com', 'ffffffffffffff fffffffffffffffffffff fffffffffffffffffff', 23, 1),
	(9, '2015-12-10 22:31:36', 'llamada', 'Ana Fernandez', '762.054.3023', 'wangchung1970@hotmail.es', 'sdfsfsdfsdf s fsdf sdfsdf sfsf ', 23, 1),
	(10, '2015-12-10 22:33:15', 'email', 'Alfonso Rodriguez Reyna', '915654477', 'wangchung1970@hotmail.es', 'hola me llamo lola y me cago en tus muertos', 23, 1);
/*!40000 ALTER TABLE `bt_seguimientos` ENABLE KEYS */;


-- Volcando estructura para tabla btrabajo.bt_usuarios
DROP TABLE IF EXISTS `bt_usuarios`;
CREATE TABLE IF NOT EXISTS `bt_usuarios` (
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

-- Volcando datos para la tabla btrabajo.bt_usuarios: 1 rows
DELETE FROM `bt_usuarios`;
/*!40000 ALTER TABLE `bt_usuarios` DISABLE KEYS */;
INSERT INTO `bt_usuarios` (`id`, `nombre`, `apellidos`, `email`, `direccion`, `telefono`, `rol`, `password`, `created_at`, `updated_at`) VALUES
	(1, 'Paco', 'Parralejo', 'fparralejo1970@gmail.com', 'Calle Olimpiada 3, Alcorcón', 671108309, 0, '0000', '2015-02-14 20:41:13', '2015-02-14 20:41:13');
/*!40000 ALTER TABLE `bt_usuarios` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
