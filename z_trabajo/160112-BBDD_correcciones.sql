ALTER TABLE `bt_ofertas`
	ADD COLUMN `estado_actual` INT(11) NOT NULL DEFAULT '1' COMMENT '1=en curso, 2=Cerrado' AFTER `estado`;
