CREATE TABLE `bt_webtrabajo` (
	`id_web` INT(11) NOT NULL AUTO_INCREMENT,
	`nombre` VARCHAR(75) NOT NULL,
	`url` VARCHAR(200) NOT NULL,
	`usuario` VARCHAR(75) NOT NULL,
	`pass` VARCHAR(75) NOT NULL,
	`fecha` DATETIME NOT NULL,
	`id_usuario` INT(11) NOT NULL,
	`estado` INT(11) NOT NULL DEFAULT '1' COMMENT '1=Valido, 0= Borrado',
	PRIMARY KEY (`id_web`)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=1
;


ALTER TABLE `bt_ofertas`
	ADD COLUMN `webtrabajo` INT(11) NULL DEFAULT NULL COMMENT 'id_web de trabajo' AFTER `email`;

