/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.30 : Database - traductor
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`traductor` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `traductor`;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `rol` varchar(255) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT 'contribuyente',
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `nacimiento` date DEFAULT NULL,
  `registro` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf16;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`imagen`,`nombre`,`rol`,`direccion`,`telefono`,`ubicacion`,`nacimiento`,`registro`,`email`,`password`,`token`,`estado`) values 
(8,'2023-06-298496379059Fanart Hollow Knight, Thibaud Pourplanche.jpeg','admin','admin','union','None','qq','2023-06-06',NULL,'admin','pbkdf2:sha256:260000$KvJv3xjqSjCB7gjs$beae2faf16b149da9dba11e43dd1dd302653dacaf85f5f1f8ad2746a9df2c64a',NULL,'activo'),
(31,'','shayd1','contribuyente','Mocoa  ','3107531564  ','aa','2003-06-25','2023-06-21','shaydruano@gmail.com','pbkdf2:sha256:260000$QKea3p9z1TvfRne2$a896d33fba1c459e8eff4a5aef4247d5e69211e29ad19265923d22bb473a1aa1',NULL,'activo');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
