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

/*Table structure for table `calificativo_comentarios` */

DROP TABLE IF EXISTS `calificativo_comentarios`;

CREATE TABLE `calificativo_comentarios` (
  `id_calificativo_comentario` int NOT NULL AUTO_INCREMENT,
  `id_palabras_inga` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `comentario` varchar(100) CHARACTER SET utf16 COLLATE utf16_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_calificativo_comentario`),
  KEY `id_palabras_inga` (`id_palabras_inga`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `calificativo_comentarios_ibfk_1` FOREIGN KEY (`id_palabras_inga`) REFERENCES `palabras_inga` (`id`),
  CONSTRAINT `calificativo_comentarios_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf16;

/*Data for the table `calificativo_comentarios` */

insert  into `calificativo_comentarios`(`id_calificativo_comentario`,`id_palabras_inga`,`id_usuario`,`comentario`) values 
(10,1,8,'asd');

/*Table structure for table `calificativo_reacciones` */

DROP TABLE IF EXISTS `calificativo_reacciones`;

CREATE TABLE `calificativo_reacciones` (
  `id_calificativo_reacion` int NOT NULL AUTO_INCREMENT,
  `id_palabra_inga` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `bien` varchar(255) DEFAULT '0',
  `mal` varchar(255) DEFAULT '0',
  PRIMARY KEY (`id_calificativo_reacion`),
  KEY `id_palabra_inga` (`id_palabra_inga`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `calificativo_reacciones_ibfk_1` FOREIGN KEY (`id_palabra_inga`) REFERENCES `palabras_inga` (`id`),
  CONSTRAINT `calificativo_reacciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf16;

/*Data for the table `calificativo_reacciones` */

insert  into `calificativo_reacciones`(`id_calificativo_reacion`,`id_palabra_inga`,`id_usuario`,`bien`,`mal`) values 
(1,1,8,'1','0'),
(18,2,8,'0','0'),
(20,1,31,'0','0'),
(21,2,31,'1','0'),
(22,3,8,'1','0'),
(23,4,8,'1','0'),
(24,26,31,'1','0'),
(25,3075,8,'0','1');

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nombre_categoria` varchar(2555) DEFAULT NULL,
  `imagen_categoria` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf16;

/*Data for the table `categorias` */

insert  into `categorias`(`id_categoria`,`nombre_categoria`,`imagen_categoria`) values 
(1,'Trabajo','2022-12-05231167817trabajo.webp'),
(2,'Escuela','2022-12-052319948557Escuela.webp'),
(3,'Comida','2022-12-1221928968434Imagen de WhatsApp 2022-12-12 a las 21.04.58.jpg'),
(4,'Presentacion','2022-12-0523123803616presentacion.jpg'),
(5,'Viajes','2022-12-0523520894236pngtree-cartoon-travel-photo-shoot-travel-shot-png-image_2183399.jpg'),
(6,'Saludos','2022-12-0523141221204saludos.webp');

/*Table structure for table `contribucciones` */

DROP TABLE IF EXISTS `contribucciones`;

CREATE TABLE `contribucciones` (
  `id_contribuccion` int NOT NULL AUTO_INCREMENT,
  `frase_espaÃ±ol` varchar(255) DEFAULT NULL,
  `traduccion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `id_categoria` int DEFAULT NULL,
  `id_usuario` int DEFAULT NULL,
  `confirmacion` varchar(10) DEFAULT 'no',
  `frase-audio` blob,
  `frases-audios` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_contribuccion`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `contribucciones_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  CONSTRAINT `contribucciones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf16;

/*Data for the table `contribucciones` */

insert  into `contribucciones`(`id_contribuccion`,`frase_espaÃ±ol`,`traduccion`,`imagen`,`id_categoria`,`id_usuario`,`confirmacion`,`frase-audio`,`frases-audios`) values 
(1,'Hola Â¿CÃ³mo esta?','Ala, Â¿imasatak kangi?','2022-12-051585271190un gusto conocerte.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨d\0\0\0\0\0\0\0\0\0\0\0\0Ù¡ö_,+.2\'.1%%$) %&&) $\"\"&\"##$# &+)+./0.114.3469549:345+-)%&\"$\'&\"#((+)#(%%38<6637:942-6/<22/-4HäÁ6ìÅ€HáRc,·&§š‰„Î¾6H†E­>Ru½UÝÃ‹õó½9Ã ÍvzaæŸÉÆZ2íQº‹P¢¾¼ú®ÞH€‹PM.)çx‚9¾[ˆ#H4‘j%€ý%Ata§!‹¦ÚŠÇ³Q¹ƒ\0€HˆÿlMã7+;–ÅTìt·Ï¢\'†Ð„ï‚ÍGÀj%±Ê@4°ýË_Ü€Hˆ×4ø¼Ã 3`ÖXÆ\0Ôm½ÄÑÌåäú„\r6;f\0Úð(þùØÓËí”\r©H1Ò^_, F;3š`š·KãæË¤®AËO\']´¢hœå~ÂaH‰÷gqR¹Ž<…ò–ÁA±\"ÎME xòŠ4Z•IqpáÉ=m_Ù®\0²‚ÚÿHŠdW½Ò–Þ\'Í³É\ZpØªnÝªŸ—ŸØàÏ&[X«ú°ñ`\\özÆƒËm	PH4§T:|„NóÒÞ]Mœ$ŒÒ`Ù½÷\0úÿ=P³]/¡éH/rw·•ù7}¡!yH­L.&ãe+ky_kö|ßN ü\'ž H1Q8A1äã—i\Z÷XzhGŽ2[ó6¨š®Y‘¨jZw¢H/	—}•Ø\Z_G\Z)IÃÄWô÷5×¯ÃcÌ®‰H-¼ž¸‚6ÿÿ)SÖ¡U£\ZŠKî„\";Q²è)RtîŒSÍÚ¬”ÐH1µBŽe¡ª‡\Z»\nW½ù0\"õšºïª§æVÉG8`H/0…*òÜK	{OÇº5gN¹BÊgúe«–åXø¼_~±T«Ÿš`H/hròÕŸ }ÂCô|½&âÃ§5”sD4’tŠMíñks+¨@H/hr±cÝ­©\r‚Œ/æ¬ yÉ`²qREÁ×Ê\"þ·¢TO¿2gàHŸØ-¨ æ³÷Ð(9OB™£–1£O€[\\ËFÄ»®Åù0O}ÒjàH•{â\Z\r»¶fF›ƒ¯2 ô„vÌ=Æpñ³€|ýtHh—˜ba!«ÞÒ·»\0‡AªæPòÆ3E¬€H}EL Ñ5ÆIäí—n†ƒY{îš›n!ŠPy6ð5Ñz®hÆ—´H×*³íý`ÎÈAäX0<£ñkF`.ÝtùÞ®$Ú:H§µ^¡2jRœ÷qþ\"ƒl»ªëÏc+õVîN¢¿¸H¤‚,3PdOÌ6o°÷§ƒºZg÷^“1D—çŒ„÷I(ÎH×ÙYl\\¿Ïœ+ úÞÏáBÜÒ q³3K€pSH4·µl	b’ef\r#Õ¡FÀo3J—©QaØû«ÆÒÓDÔ@Hë0YtÁÚ ãR¾Rfò/¢âÍiÒúKC¹lwÇß*tH6ôœE¨Ö\rrÉZ•eáÖˆy½L.È®¬ÇPÌHH2–t÷á™/nTgÉ.Iwr(Ú× 4UÞÅ—ÀšH/,õSôlM­Ð:žGF+ù¿ ‰=‰so-E­Þ.Ë‰ƒ€Hz¼&¾ç%;£ÇÚáL	‹¬¿y <t¨Zïÿä6pÜ´HžÉÃÏWU¹A.ÊRqâæ?çt_¬›®žÖ	„Î½H/£®›Uó~ý’ß³i†\'5XÈ3H#LìÜžWúDßÚùÊ@	éÿpH0à(ïe8ÜÈ¤¶„iÚ	ÀˆÉÿ\0,§úÉ’sê¡÷&°íûváÁHŒòel\'(f‰e?á@ ÎÛ£‡ ã†º$ØÄ3’£NÎí=¿Q„°HŒgŒÇ@á†\0véijoÂ•\neüÏˆ;¨ä²´‡xù¶\rÍÄ¾>Y£ø:íàHõÌþ¼W5é ñ	T£2gí¢\nñ`|-DÑeñðç›H¬\ZÉ²¼êci]˜H„¿ri8¬½B‘µ°®{®W7¨A•œuOÿ\n-U¨¯7{\'ÃýÂ§‚.\Z5!pH¸¢1Ûé¸Ÿ£S#¨+Ï>ÓL.+Ø•JÏ6˜yÌÖGçe×ØÝZ-ÌÚªÊ¸H¸×ÈêôKaú°*ÝÎÑUGF]NÁôp6’Ÿâ\r©ÚxC­’Öj¢#z2½ùÐH¹¢;`º”áÙ}=k;IIUWÝçÚPáD X}PÙº5²hŒdßzœŠà\"^@H¸‰¡ò¾—EòGLšù×æsSlñ—ôº\"´Ý=X6)IÐ]ÕgÍ<†e¨hfiÖ®H·¡‡–‰Ò3ë‘óøY¿;lc½Ù/A%¢ h[9w›83Ø}.*.ÑOr<·ƒ†Ôjœ€Hµ¶¶Äx\'=Ï+»$Zâ–°œW¯ÍµY‘ç³¸‰œ)Œ¥|õ¾\Z¢õmîN€Hµ^™x“žèæ¿×tI¸¼!Heíœ¬yÑùÊIÜ°ò;Ù>ƒ\Z·pƒ7–QMàH´Ñª/©/ZãÛp‘;)8‘¤iågÒV›+6Æ¹(º¿	Äç™¤ÉÜôÂ².#PRWð`H·¨|Ó€´W€>/©\0)›ª×|gºRr^e‘¨\rFúˆ5X±á sünæK©†ejdHšXÿ´MÀH¶öû‡8ýá®~·r¬¤H™ìéh¾/±òù4Õf¢sŽM}Ð\nSäg¤gOò(ŸDÛäH·¤ÌçÄ´½!*å|$ö{ /tOh}\'?Pü\0Ðâö>ñ|x\\÷»ku°ïä®N;È Hµúx:†[	pü“±6Ü¾àÙƒNI%OµàÃ´èÇsù@2z[èJ+º´V\0ãS‹?úB…Hµáu-•Zgœp÷ËÐr:Ùðf-á\nPF[$Oó<¨B/‹´[>c©7©´˜¶I7Š§`H³¸§oP,Á3›QmÒZÊcœXÊÛuü1í” [éejsƒÔÕðjíµ¶ˆ*k‡%ÁJJµÃ©H°.H–d{ K}$Ý°{Ö†œ½#-m×™“OµDè@Ï+¼ÖùUrTÒƒî|¢ÀH®[|èÀ©_áú©>Z£À8°&Ç¬Ë¥’ :[p]˜«tè´\"6$wèPv°H¤²æ:UMögŸ¯ß°W*ÂÕ¤“)ÆÁi^™Žun;PÅ[‘öƒ/Â?ïðgÎUÜœŸ H£‹ê‰èº’y¢>0Ecn¤mJ\'\0že(!@Ç¿Ræä¡±3¥$Å<-@H½ú‰LñóÏ‹àK#\0:ÇZÓÑ¥uoÅ¾äêæŸR9Ø‘|®)VDiÀò€H‹9Lñs³¡ËÝ9dÂ#þ!5n8í°Ñhß9ƒÞh5ã½£Øz r\nÐH5Ÿ:õïÔäV—l©ÑI—;µoÂŒÝChHŠ&z·£|| H4ÁÖÝu\"CöáãÓÄýxØ\nt\Z>±ƒýjó¤/„%…x:îH30+QIäN/\\Fž=`éhXÓ–º#¤©®\n‚Æ$>sŠH300¥Ð—Çÿ“¸ec•ìWäþtoËaHl.ÌÁ•i·˜çÀHjcSR7Î‡.E	ä„¼-®Tè¦{ãBo$3ãV7xœNÉeH2–l^/Ž3A!0WI:×ºººW-¥XXÄœ¸Ë£\ZÖ¨ @H0òƒŽÒ:z’g`/ÇzÌ¾j~œù€¢V{ÜÃLÓ}TH/,õ&ƒd¾ªJÐaòõ^¿×FÅ»u\"íÄ\"S}Gº¿½$H+Þ™\0)1\Z‘ž\nfåà]/AúÍø¥Hw­2ÂDï•e%7ñQÚîjH+ˆÚ^`lO}4³*ÁúõÛ\"ã“%—Ÿº-Õ/IyTq H+–÷™qûÅÝÊsRÃÜCËù—ØÏ ,Å†%	mÑàžOq‡bdÒ4@H+©Øýb!ÂçÀbæ+ÉŸtÇnÉù|‘ü]Ô¨Þ³QnÎìÑÆúH-ŸBêt‡tÉoOisõþ±ÌÙE[ÄQªSá;´µë8Hh—æ–…bhÙ“S´Š\Z@œ/òqxz(ÚñŽxü@Ón˜€aùH+–óoNdºÐàP‚‹‹êõ!ÔR=¤ØŸð›pTfÂß¥öH)ÁØï£Â%Wr‚SïæÀm|Dg.—Á‘¿…Sq¢à*,H€ËxóÌqClÎ½]ÛE\\I¿ÏJèp1èÁCÃ ¬ª*>Yd\\„`0‘ük¹¬tHøÁkmç°âÞrnîi®WV^šj—½îè°g®í¹t¹kÊ@¥U¾Ðl\rîŠüÕµezgedàH¥X¥ÖiUÚ‡ŠqDA9Å[®”S¨ÅÂß#ÎBëýþ0ãù)\ZS}¼>ø©Œ¸ÝX9,ïÁƒ«lpÙîH©A÷!aågãa´Zîëájpž	£G_€¿’ËIñ£½›{ñ˜µÁÎ‚K$O.ªyÛÓ*SÔH¦¥Ø¡ÔÈÂ²õïgÉ­ebz‘¯£O“¨ƒ[Ã:üL‚—E‘Ž÷ô€ÿ/ÍšR«ÄF]H¤°9´‰D1²%Èœ¢žS•çºâè‡˜\0Âü‹¼ˆv‚jh\rr0mN¥\\Â¬¶PH¢xä3ýâŸÓÃr²€Ënoy9!3ñþüœÙ®QL¶ínž5ˆ¨gÒŸJü¶èß‘ƒ³yÔH¢xV×sü’Ž.CvU“J–ðç5Ò¶’P€\"BI”´ÔùQîÉŒ9ÈçOCÜû/¢6[ŒÚ”›ªH£½kêIYÌ³pÊ—¦~\në;?ˆ¤Ü‚iÚÎ¼U™¥S¯ˆnçz­Þ´Õ$Â9Iì8€H´RgHN=ÂpaëJZ[™A¤E¬Y\n†ñì·ÿÖÀP§\'\Z¼°ký2=\\‹ÖèQ	 H·0‡ÎðZõ`nÕ:1É‰BŒæP\ruñÿ¨‰bP5ÃÙÃ\'],!!NYìÔ€ÀH¹!Qî[‚¥é>MM¥\\#ðˆW­ø¶S^·?ToÎOzýÌ@ìÝ€í·4´üH¹npæ[¾Ñþá	Z±eÀ‡^²eµÛî9jŠ«@AR(â­íï úß@kµvÛ8H¶ØÉTÅÎ]üñ)ªÎVÀž/ePntc¿/~FÝ™—£å•¶o\rºÃŸ¥ H·.«;©ù1Ý:úB£n‚´g€\"W\'ìñwó‚5‹ƒe	Á³^0w±t ÅÔÁÑØ5ýß¨9ŒèÜöö´H¸ap›zTŸ1æ\\V×lÓú\\\'ðƒS“…7!ŠÂ§u­×rÆsmaú `š:¬¤Hµ$ô*Û¥‘º\0s&çñ¹R;b]ˆok{^<ç—$Þ¸=‰fÎ(Å$-îÇŠÎâH¶î_‡Y<€oãtG eYðÑ•‚kÃîw´püú¾ucK–Ï¢\'þ6ÖùLù_H¶²³ŠC=ùšÒôêë+Õ÷é¥\nŸQ„œÐ-üÝKüïÇùú€¢æMéÄ[€H¬_¶£5ˆë»«˜²,\"ú­&A±Õ œo^Ús	î¢³wðYŠ§@¿,íkVkƒõ«½ÐOggS\0\0(\0\0\0\0\0\0\0\0\0\0\0\0àŸ—.0-13620,266.133.(\'-143/139*-.05*1,/-,&\'\'%%($\'%H§K´a£\"Ün0r0nêl½ÅÃïlöw#>‡îqëú”.s¾œ1$§Ó¥šÙ´÷H¤¸wÈ†&V•K|ÃSZ€iuÙ ;°‚»4Ó\rkÌ#•V QÊÃNçÀH¢3\'jÓ\"s’çÓ•(OÔÿ6Æ±áFÉHkÏ5«k!hum¥¸ºñŸ7£%ù›Ò\\®H¾Z.*2€PÙ\ZpV­¦ú¯s\Z°í_sJEöV»A±®áSÑ,•÷49c¢ò„R`H±r´ß8W¸ND\0+E”ø‰4–ÊåBM®°bš—ÌýÞã|E\\¯É5v:í?ÉdÉ2H·	t(V=‘Ú¬_4NXûJj]ñÍ¼B“ƒK‹€?ýŒ¶:G‚ÕÔ3`:—‘PŒH¸ª#Jªÿ)p$YŒZìï:~…®ü°:ÐrÂ •´í®áWË `™ÛP‘ÂˆH·§ú\\ðÚLBìOÿŸy$êàcu7/ú9q;S%\nxq·B²—VŸ	«HµË¦¿Gó;)3µc`¥ÒMÃj•4yáÝKéòûUõöº&+Éû\nQÅˆóL²€H®<(.\\$»wã¹øÔR·2XSõ|Mé”PUê-;Ùˆà]1LkÓ·õGsÞÝ4Ãf0hH¬\\=òz=-êñDætc¢—ƒ p]hÜþi© 3±‰tzµ\"Ú¥u6Êƒü‚£}(wüg*pH§•þÕ#Q¹†UxW@ý2è\rÒs†sV¿ª,º	šX¡6äÕ9	›GÂzjó7(H¾”¿pˆmëæÓ®BAîÀ‘É˜t5ÑÃžÎ´Ìù1¬hÈL‰A¹»ÀÚ%½@tîàH¶ƒCÈ‹1×„×:zðÖQdÖöÄÉ†[­¬Î,£Bg¯åo³,›!”q-¤Á§K¯\ZÝ#ÀHµxƒEçr´õ°fÈqV@‚ïâÍO_(î­ÈQhº\0[)Ÿ‚ÇÂE\Z†`V4øSZ½PH¶Óªï»\rÁ¬_9°‡^È”“å—â\0	7’Õ¹C¶³šoœ¼ìvl¿¿GgPH¶íÞéÊ|Í˜Õóúâ)¢¬©OõƒIÙ/¨™³V«4ù:Xƒ¯PH¶àŽÔûã=ìHëÙ:Æ\Zb\"úU’ñA^\nÀ ®o%UÙÄÃÍHµø\"úóðT¸Çt7y°¤f/t^¦%µ)¬®×äftÍûH\'õCW2¹ÞHµ¶It®‡•ÓÜÝ­©AßdKB!2\nfôéz™¼“:Ø<æv\ZÉÐdrH?PH³tu¹Õ™+öõÏžŠk¬È\0+. šÜ\\æ¸j´Þ¹’\'ysÂ&;a©v}ø=­¾H±¶Õ×^}ýç\ZùŸóMöBE¸uþ*û_·Õ¦l\Zè	Ÿý\\hüà×Z“í‚!¶H°4w¾J ”ŠKÜøˆL.u©Ä•¥ÜVºª\rá•€ß\r2ÊšQ2e9[ˆb€H®Yy…Ô5¯·Ä»®äaÜVh5úñFe±˜D ì©`K/3ºÂPÙÚçA\\H@H±ÂH ¡\\=ÌŠŒñòNàP´½\0I>+ýª={vbåµHòÄÃêê¬Þ\r™ˆqÿr`H°åáoø7Ž%F8[YCüÛù\nr¼…¶Mœø5Ø¥Õ\\Ý®TôÈzs<5„ø£‘|lÉç¶¾ÇÐ·H³§Ñç=Ùy®pÿ…>Í	{ºÎaˆ\\^èxFÊì¾D˜Ý¨ù× H³Ó¯^¢ÉfV¯‰^·|\'®çðÞ1e	Ð¹ÊÁÝ½ÝçzøÌþNq£1ÐO`H³Ó¦Í× V–m÷ý\"#‚‡V³Ç{RÙ€X¿Üþp²te±El¯Ñ9»²A®•H³«_&êä4X¬´Gã˜`€EêdFÛ ÉöH×Ì¿…\rÞºÆmû¼Ãpnùó\n`H±‚ÙLlÁ„›áè-ò¢8i{.?àZ»ÄN±´Çb`–y¶cÀþOð“›Za©óóDH¯Öúœ\'„òõBS&oó7e­dÖUXÿ¾ÁŸº¤AH£œŒâÚ×%0H¬i™´@€ø¢±ÙKà%WFSK|–¡O£Ú=›Ô—QašÐ¦îFÃºzTmõ÷šH§ƒ¾­£õ‘)¾,ÐmìTãÑ¨ô¸%þ¯õë¨_ÓpC¬ý7xpÂjmH¤Ý\0¡k§w®N”Å\n4ÁmY•äfÒpÃÓ	ÿóGÈÅ„Jø*¥«åÊé\"H¾D„\Z±ù°Š\r[I*Ÿ¶«µI²h\n/Ñ9bø¾‹Gžª™ ¡sèD*O(H¾,}Ò aÃEŽýœ{Ç­“g0ÇûªœÇ>H\'ß.w¨¦˜aØ—ð`HŒÛtrwB@‰¯W­¿0Êö·\\C\r\ZH†01ÎxK&®nJ©H7à+o-C•QÚ‚Yi¦ÿŽ·Á_Hå	aâÞ\Zª*i4[¿+8ºõ¸H7lM<ÞôGŠôSHú¼}hfˆÅiGåUC?V\'³%Ž³š$2àH6s!4–Qxk”‘·ÛL€å´	VáfkËþçÊ„sbõ–€H69Ål:~j‹7þv›O\"n+©ÆÚ©YU\Zq˜ÞFtë H3F×¶\"7Ö@³Ó‹•¡øš~²¢eì\n·£’äYUè·Ð“Á^ÅÅ‡\\H4üì×PcaLæ¤Ûve&0\\Pî¥×X	Å‡˜­P)-øüH4æôóšìN Ÿ{ÚÁJ¿ß´˜Á°ôOßéò$“/Ü=#	»aãÈH#×(ª¶o(v¡ÓRŸ_g%Å`ŠF&P?Ýþ+x<¶t','Ala, imasatak kangi.opus'),
(2,'Buenos dias','Puangi','2022-12-0515935885354buenos dias.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hw\0\0\0\0\0\0\0\0\0\0\0\0Ç¶‚d(,.,$(%#&(&$&\"$\"\"##&\"!$$\"$\')&&$\"/79<;6460303541416.2210/--.*-/% !#\"%(&%.*)-$\'\'(\'%++&#))%,#*,*\'\'\'HäÁ6ìÅ€Hàý4sN.º—[ëÐZà>éF°H†\Z÷zÇÔ°<\"ÊÆObDƒ§ÉtÒŒ3°5&ƒN[y¡o¡Ó€H€VR×KRDáÄ[–ï¡a¬[Þ_¯K¥wÁÃ\"…Ú“9Ç¦-=!—ÎFë¦ÀHˆnySýJÐN~ÓXTB{NàZ\\EÚªF!÷QjUEoD8Étcøj”×lHˆÈ:ÿÖ°ìnŽwb2öW{·ëÁ²¢d~WÐâ®°ÁtæhÊ…ÍH-HÊñÍ§!è±ßA;³3ÎÄ¬ÁÐïöL¦u‰9ØÚ_XûÀHˆ¤²¯`»¹ÛHI„\\!rMSh\\X¼l×urhdÈ:&ó×. H+QŒ¬õØàÝJlçê¢ž–˜ÄžE=v!J$áZANÈHú¾hœßÑ½}ª<#Øœ%]1\Z#Ôò8ß¢;óC€H+8	ÉC>¦˜ÖúÏmÙÍ›ý#MÏÝ5\rüµzøfÊ.œŸ\nÈH)­ô¡A§9ˆëÀHA>Ì?¡*¸z’1Ùrx–¬Ug\0²Ï#‘e@H)¤î,Ž¾ŠÉ,Û~ÉÎo÷\0’ü•HþpÇ¹ì«í”gî=ÎH)­ðN»ë…£^ÿqurû«¢±AÍá8NhEZm°yôÏ&àH)­ô¨eHŽ–ëÃ…òÃgj»xá…ßåíHdc{x[‹àì¬ Hùà1—¼š@øiÌð%JÒó›0­Š»H/˜Hú\'äïÛÄA}²)Lÿê¤Ky2Ç:–Á¦»Ï§rXêÂHù#&ùjøBúcø Ê²}EeO>¹yWÎ³	£„ÒhŸýM€H)­é7õÈÎa\n”7‹zC¥Ü÷Õ¨×­µ+65&›‰PH)mK$ß3MTwþœŽ»ògQüˆW‘VÒo9Æ‹G¨H°ü_)„*÷Ç²¾åù!Ì#è0¤…â5Mf?·O	§ÜH(ó4QûÁO\0_^¢6(u£ß½·è“oR™€Þ_¨˜´`/Û$ØH%Ð;È%óö·S•aïó¿[öàòÁ=mÞÎÉ^Åòš_¼H\'®\\˜WÄºö¡*µT……>îûÏA£6œ¿[$ÃïH\'¼.)©ûë¶jÚÆÓÜq\ZP½KÁ\0£oÀ ¢¢ÃÉÀH\'´ÄƒÆÈly´¥·¹˜ÚÕ…Õp•ý=>ÕËK15›1H\'Å6¢MSbÉŠ¸s„}oO!D7‹­[0ØØº/ãêý™ÅGÀH\'®[n•ºÁz7á\0”6uÚ6Ù*ŠèG™C(îÓ1Oc&H\'Å6¨HSXÄÓô9Ïë¼3¾8˜áq´4Ê’Ç«JÕH\'œb.å ;	²ñpóüù„H…»×j­I9æ²cyv›ìÀH\'®\\~‚jÝùßl*•³ø²Zœb¸L£AŽ«Ñ4Ú(ÞKÇöH»cÑ€H\'®\\/G–½&àÙ•ŽZ/­.à˜1Êk/~¬ú“›C Æ\\`H\'›AÙæ”;“­Ôe¦¿	[ïƒs½\ZÍX¾ƒ¥×Bo1*¤H\'›Àæ9?ógf§ïôÙ<h,¹“§sµIFÔôãmæÃÀH\'œ“U•ŒëÏicc\rßû/ŒXxÓÿjŸ²X\r5‰1“@ØH‡˜ÃE‡+3[íUI,4ýAú@jî,[FŠH‚a‡: ’bÉù°,—¨ SõÆ—„	_™i¿±7Þ˜›€š¨pæÏÞÑ =«Í×HžÊuMnK~XÃmœ¨&7W,ùT©y©m…õ$d©¹ É‹±ÇlãŒ|XÐ,QÏä=’!H i@NïÌWŸÝ2~Åšª›òa[ä€9$M[s¾M©îx­2Ç\08{ZòÿI2þ3~üâKIkô¦P]H¤BKþ‘r¥-í/R’IdsÿŽÐj&æÄ#¢„%ÜFÐxP¸wŒ2q¿µþ±D¦Ì\'Ú[«aÏ†þZ§1\" H©Õ„C¯¬„”³¸¨>:!7Lû\Zn*fû‚\'Ã¼˜mÃë`%°‹˜ë¶ñS`\n÷Ž€üÃÕ;€ÄH­;¯Ç$=6e’gâæ×ñw©\\¸i©dyz1£«>XñJ2£$?•Ö£œˆ‡„eÈ\\ÛHH²)1“ñW1I=–×KjŸJù¥ 	w8Oj&5ß´HegzŒV¬…CŸÐe¡Úfi@H³t¬lÅaQÐG«	å#Äöîëñ‰¤ò0çžP<x´ª7fa	git½k]¥¹AzýZ:ë H²S¥øvG‘û^/ÚR¦Ä×B:Ð…ˆ)¡Ì9äa\'>v¢Užq˜üÔ´ŽGÙrÀH±»Ñá\"Áe‚M4½0z\\}NË—]%ev“BºRZWˆX\nBã•x·TúHÝŒpH¬è%N\\ýöT-‰EÔýÓè,25jŸÒ‹Ez^}žíõZUùPüÖàè¯ *H~HªªJ<Å(ðä¾*R­¦ß‡ˆ%Ö©4}	zD˜m|j«YËnê„<2¢oâ›¬*ÔœH¦C¨×¿qß	ÿ®7¡øñ¬\0½àõúT°â#!\"œ(+HC>­&—~dkiCóD‰“@H£gùUz·1æ’âé‹cÝzË«$5›¦µý2~ýj9-9J^ãåþ¥i$Zë\Zæ¹@H N,’2¹×ÉA{LîÊŒÁKš¼g½^´øÄ†ðv›%×†xU?~Õ[»Ï¾oG H©³Œðaÿý÷ÓÂtƒû!×ˆå¶aÅÖéõBØMòjùD7…ý#‰$RÉ½Ãƒød4H­g´ÉÍ›\r°šXoþ=U—&!Ðø1hºm¯Ï©¬{ÃœØÌuƒ|Ç$hS¹ H®’€BK[ìÍ¾ÄNû’K|i[¯fV–š=CÑ2jlÚ3â¯cí/Æ-åZ›üÆò?©¤`H®’ŒžÜÐBkœr}ü*HFŒ;¨EYþœdSøp( #£”—¹KŒsb€‡@H®y¯Ôl€×™èí–û•DèNLÖ:)ÆÁö3ˆ\\|&àýp\nw÷3wÔµ›ôY2öç€H¬¤›ÀTUèÍHé‘,Ð} ÿ(Š®Ì†ìb¹H˜m²ï€VF÷¦…ÍC9SG”šH«/IÝ#7£%\"‘‡ÓUeuba‡‘«ÚnÎf·ç83]cŽ]Ví`º.Êbå\"oàH§Žw2Y5Ülœa38¢·Ñú(fTDèÛÐ˜}ÇÿÃýó^ÀþŽ K‡:úù¦0H¤þŸÂÍÄêúJ-Ód½íaNâ¬*‘>Œ·åŠ\\//£ßíK9ÕîûT¾H£º~¯FÎ\\-=Ì|ª8%ÚAûRÐ ÷øÈGZ‡É¹n¯\Z÷xGò:^ŽÔè€H¢+»’Z3g-GÛ1å×©@ËIÓcÂîÏË™)ò¡ÍSmÉž´ç;ôp­HŸk¤K’YŠ¤SDÖÃ.¸†¡ÔÂMÀmÌµ1$Ð¡\0•7Å6dŠ¤K³ÒæH’†M&}\râ\'‘SvT9‚¾²À¢ˆi€µ²¨qùÿI†ø¨H½ÅË¡¥\n³ÆN;ó›†ªQlëŠÂÎˆ¤•`Gy÷7Èë`=¼=—ðH‰õANL\01ZJÉ¼ËÎìXª´d4€¹ò_ë´3fþ°~#«™Yk	ýÆ†ÿH1>ÙÂ=ÕCæ-•qó‰ÒæÁ%\\b6ðaœøû|8’m#¡^üH1FÀ(©Þ¦ƒ3e	Þª†oŒæMWº~N­)ôe`H0ïþS—;mVÊC\'E]D‰j»7¬VÕRT¦Èà„H/^\0GE\rlÐHeÅ:Ê ÀäÜ¿ôÌJµ[L:$X¶kH/,6û\"8ø÷†òÇ…çCIdvuðYÉÇ¨2CCžÀH-Ô(k&™KìëÚHL÷S).-ª÷ÖïÎ7¸\Z¶`H-YûÚ-R¿$é¼e,4˜NÙ¶l#B€ÆÊ>ƒ–sík}·N? H-uPðÃ1²¬y3âøL‡µ§Ôš¾àqÇàPë§Ä$ÙœÁïjË­€H,ÑƒNßz§jéÐD5–g-^~u]\rœ]RísÎ™Ásv·H+Ì3yJ„\rüJ[éî@6Â—`XÆ¦­Ù¦É_£Ll¾ÇßµÂVwc È@H-YÌ°Ÿê!°TÒù¹hÊo\0ÂŽÉxøÇqG«„\"¦S¹CÐ§h?à°H-q’NæË°“1µØNßº} [JÂ:Ô¢n»r@h©çœ°]ï¿DH-Z½°Lõ\\†l~BÄŒ¹\0IÖäÞÕ\'Ð²ÚØÄ€ˆ^_LýWå9r\'ÓPHg‘†EL .Mb›ši[Z9Í<‡½*¯e±¿—\Z~P$H-Z 1y­0[ºüþKôFCrõ)Tð¼:\0¨(osþÍ©¼§ H-uS<s1·°G³Ï•ƒe—bãU7P¼¥BÅb÷­×Ù6ËÂð8ÜH-Ô);ÐcávÈ˜÷ÄBÞö”üøàÐq¯Ã¤‹¬éeø¨×È;ÈH-uS<sø¸\nüo°†­ÕÎY°”s› ®›¬¨eÁošMÚÀH-Ô);{š&°GþqN j+¼òþ‹dï¬Ò@$Å‘`cÿ°H-YûÚ5b¸¥ý\"jO´ib\"•mL	| ›ó#Ï¦«‚*{qã@ëY00H-u@ÄÊ˜y÷Í/jM^vOå´Ã3ÓQþy]£2]ÒÝb‡[®øRF`H-UžÅƒ‘5úAÒÐ\ZãjÜŠ’³uÄ‘ÛOºƒ½ÔRÅ›j\ZÊ@H-M\r€\"sóÃn):»=Û	„Pæßx4öÙ .ìD%Þ\Z…8H+Œ“;~3(3ÎæAË\0#Ã\Z½N=–«#†¸¬Ü#,=Í‹Ûå&@H+dMPzbû#´¬J÷CKPdº“8˜Õ]ÖY¨ƒãôg>ø™`H+5ãÜ¥8ª¼^ƒ~`Â Ýl,™ñ~ìÍé—>ú³ 87§û\0äH)¤Mùck?ñVÈÇÿR¡ÒHU5,_“::û,‘PË­12	‡M¹Xó™=œ¯H)¥Ëƒz87ú:òŸ{WJ2sKfäè¶ìA¾0^¿ç(~H)„¾\nrû0=%aÃ}¢uùË[Ï3Qèá¸Þ‚!ðížj>ˆ@H)®T)\'Ö¿$éZ”-r!³-Tý¥°xç¢üó?dŠÜ3&\\ÖcõÐÊýöH)„›¥öÐÝ}Ñ¸Î¢\0ä¨2lÅ–üº&˜Y.NDèïuí·ìaøH)¥Î>­R^ûyÛ%,PÏ€Òò4­jŠ^\n^HŸ-¡Ðß&#98H)e„A=VØDö-i¤D‡ša™Õå™qq)Jå»»ëÆã@êP”°H\'¼¿?¦,Žn¾¦ˆ1âÏtq$Hr¨ç\n«.t[©ïmØ2øê0OggS\0\0¨‚\0\0\0\0\0\0\0\0\0\0\0\0•ß\"þ& !H\'›W¿ð_a­Óé2Ø¥_ã|e=¶hK·žç«OëY,Z1&H\'¼Ü?íÙñÂZ«žøeÿÅë]gÓ‡óŸâI|H\'•§º(Ö[l$L™”òâ­ìVZ48 :&ò y','Puangui.opus'),
(3,'Buenas tardes','Chisiapuangi','2022-12-05151041915563tardes.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨d\0\0\0\0\0\0\0\0\0\0\0\09@6X_,%+)$-*()\"\"(!)\'.$&(+(((\'$\"!(*\"(#$(( \"$&\'\'$\"*0;--)0;./,86/6.424,7435++6961,,\'-.1.1:44611556,+HäÁ6ìÅ€HâS†z\r9ŽƒI \ZšP@H†E¬ë^GÚ›÷Þ&„;¼ƒùû£Ð!—›1¬bÞ=R4—¶ü¹”‘­ÞešàH‡KFC¬Ç”eÕ­}TäØ ¸3AÕ@Šùà c€êâí\'˜8ñ³H‡VüŠèíý.\r÷lÔ›YÍxˆ÷z˜ˆËhá,\\þÈþ\\úÜŠ\'8ì Hˆ‡W¾ì(1Ä†à0šœØµ’DaT¯Tiƒ«øŽ0ñ¡#PH+Qômò½™‰1Q*èYú øJ*`¶—¥o<ª‹ÐO[H‡îc1I¥²É°ž(\rÞ¢’ÜäÈÆ—w=|¾kìR4UÀ##Å(Icÿp0H)„5Y2ÜBE?V\0¢ùf‘ƒ;dÈ£Îlcª$’*žm{xçÖ¿°H)„ ‰ûy¯“]º=avš{-K0Î{:\"p»»FÆÑ°m6ªÀH)­÷×š’„i±QÄílæåük‹›:ôkÑ—»Û\nþÜaÓKJOzH+–»cBÛàû,dFª\n_×Œ—5N?¨Ñö~ÁÜ5B°H+–·‹8µöZù)+¿äý\"Tï´r@$M$Aus“RýH+_.œz¥\'síÖja1tèLƒ“ív ÄÐÉ}ò[Íy½S³Þr@H+lÂ3­Çñ­và<È…õ›Sÿ¢Œ‹¸¶Ææ\\a$€H+n=”º“.3@J}ì£mµ†PÞó÷„.È«Ç• kÛÇ?h<,œ+ˆH+–º>–3:¤u|Á´x¹“N^|ÚÕ|\ZzhÂ’´Îz\nW€H+lÂ×zq4g,\rjÆQ¶º…\0;€­}·aBMÆæ©#´2v/f”KÅ‹	ˆ€H+lÂHBT(\n$D4ý7ü»_’g£M‘óÿ,2ŸW`H+€_˜0Q2²_o‰†ñSæxGR#`ÄhºÛ!˜™®^õÒq@H+lºÏ¦z‘×@ñœ\Z—ó\rú1ÝAŸk;L¾ŽŽãjö}0aÀ‰ H+l¹¿\n¢Â Éî6œ½ÞQIþÙýê*ÿÃa’?ç_ž5i{>*4H,ëô[ÕŒæÇÁànsïåîÔX\"-XPE„»$—å¯}9 H+qWaRÎ£1[­³]›¥Ø*4-ŠP’ÿMd§™-ßô’Q“5pðÒ2¶H0KI§jTðVUáB]èB}£gyî÷v°¼ö3¯3ˆôYÒ6H-w”Ù?OµøtHl;¾ý-„ù\rÁ½Ýãá¦Ô* ,{êÞŽH-vH€ÆõG-š$\nxhI^ÚsãÞvågé¹ØHc/°H-H)gSSq]`¬¾>Nå(åÚu°Ù2‚â5÷ÚÏ” H-D\'Qþ2A7$KÁ£^˜þoèÍÒ3Ú õEl^‚	(€H8‹ÂHÓû	Í°­K~}CŒÀÚùÊU(.xš4*îì÷‚Ö¢$9ÚxHq&o¨´÷Ì¼×Šv ”a+¹ÂÒ€+à)Kîj\n¸D ØH4Pyïæ‚$YÊýWÚ¡¿ÞzòG“œn.‡ƒÏ\n$Ë¹CˆH”\0Qö‘XØÈEí5Ÿ-\\\nq\r1©,ÏÚ‰[ž‰`H,Ú	„ý¹ªùòÐáí)Tƒzûÿ¸Vâ\"W÷çÒá¦ï}eÄ`M:¯@H3-ì`‹>X;o¾¹&l3ù9Dä÷7ž\0éè\0@Þ3ÃH,Ò¨ê31áýKF¡³´™ßr“Œ˜2sÇi ©ó:êU&á°¼ÀH+–»*Ê &½\"à	\0tÍÝƒE -O¡!ò§ªý“„éÐ?9]€H+_lïæU7ý)V#éYÒE²\ZŽx”“–¹èîm[_ÜñÜðH+lÂI40áÀõoP	!¡º«ÏóŽš æÈ€H+lÂI@èlÁü<>MU¶k–Fôs|Mcz¨Zò´‘HH)vä4º¨ô¶äß°uÝß9·A>­Þø($èù]Ý?ƒÊlH*QºŸ[nsé]Ü7­éËîuÀ†Y³à&ž)þÀÔèÄ¹úÌH,ÍUr>1&Ûêv‡Y0MË2>Šãõ@M¹çj»é\n+°Êë;\"àH)¤îJ?+@RÔ·÷í»eÌ$NÉ}­´¯àfr©r§Åqµ•’@H)…}vƒ»\nPÄ4²$­\0šÎ\\õ:Anµ­6£^xþ|fòH/G.·¶Ýbéì~Q¾.‹Â±ƒÕMû»Béž¥#´ÀH:fIwvÇú“XÚbÎõ7qá1¸\"Ž3‡(NuìÊ#Á2w¸Ž`H”tVUÁÄvõŒ@uÚÏâ }Ñ0„ä	×y´˜ÑþYÓ€E\r6UâÚ)	aÀ¼¡FHµó=¿EÀ÷¼Ù¤Wò.î#3Ô_™•Ä$;\0T˜ÉØ:ö_Þ*NÐE[1LŠ*[Ž;FÇªe…¡û@Hµåçšì£Ô™V)ˆ8êÜÆ+U-éy¿xsyÀ){;2àN@/e$DÁñôb™Hµ\räBÐ¸bÄ£+}ªCÛÿÈbºŒ¾1„â fjj‰DÎ.»Æ&P«`S<öÊHµÉiGWæML5#Žz&ÆêG¢·3X¬®ê3ÆÙº	À¤áŒTÌeHµíJ„A÷ùEÎ•i³‹$4S§øV\\˜Á(¨4Æ‰7#ÎÐîf}8ø›{ŒH·}p¬ü5W9|}º/BžXËÇÕE¢Q\nyJç,7÷ëº_¹a\\|WšÅ\'Ã\"÷¤hÞH…ähí³íýº¥Óöp›Åy†¿›vjš\ZÒ\nå2R0”—ÖÖŸeU?Ý7, H•0ô=u²oöòLîò v£`iÆ¼)w™ö@&û\Z†³­Rõž²ówWb8H“üÈk%lÍbFð‡‚6òæÉ˜¼\n|%L±{Ó®Ž¯½K O_;Å—yò\'¨äH“ªžÀ`ù\\t\rÜ?%LplšBK.ƒŒ¶øèô‚\Z|.¶c$ˆìáÇ‘;\'B9æw€H”ì1LÑdÊÁMd\ZõzÌã\'–/KÈ.GÍ·#Uº·–Ž_:¤EÉ\ZF²qÌ‹ï^ï4Â€H“vEßVna¡H±‹ûb¿¨„ýý’dD\'öÒíåp)|3>§™ØSÊ2ÜV÷™†¸òDH²¬>*	:uïá»]¼odç¨Ã^†:GvÛYy‘\"§“›pfëCR	é8qi®šÐÃèHµ<NÇ[¡cd?s²„äLÁµl7Ûtÿè tY¶ÉRýÙ’õàÍ8•É$“¡5ËdH¶ÚÚ2ƒ0N¦À™ ÅÂ4ð‹ÐøQ.ÅA4Ÿ*hº#ŒNŽ	p×¥Ð=%ù~]Y{„i¢ H·ÆÇ\rÌb\néô®9—S-qXNû½œêþÒp^¨õè›ˆ÷hbAðG´ÂK?ä\'ñz7ŒÝH·qBô»|ÁYú«êçêžxî\"Ä¼=ïÌðŒ=Hmßÿëà³þí	yáˆ\\öº%q7µžñÐH³0U©U6Eõ$¦ò\r SÃ‰Óì¤»gy˜Ù\n¿®È ÅÔ¢·tý#SÀH­îš@÷¬@ÝýŒúý¦{jöVº&ñïÊ1.ªACw£©9i£¦÷D9áG:½Á–Ï?¼>¸(H¤úÊ2¢ÅÖ\'§C›ìàùŠÅ%2PV\"ÜšÒ½ûu2ÌQ£E¡ÀeüôHõÊD²Þ©€H¢k\"À³ãâ¯€Î5a´å-»Mðl³•Àò «ÝTœö»/¹ÂÞŽu3§ŽåÏ´õpbiöH à¯ªÿA{GÞl×“l$·¯Œ·n¥šæQ³‚¢ùx}\"ƒ¾~Í$œòìÚú•ˆþ~Æ2àH…u”©.>+«¾z©\'„5½ö\'¨¹\r&”>Â= \r6‡‹7À0‹µœHƒI%?–{Ž\': 7i´k\'ºÙ>Uå©ÙzµÜOàTÂ.Ìò¡Èiÿ= H¡±Å\'®tHš·ªÑ‘¼\nÍ“\\…È=\\-qœ¶xïÿ ~Ü]îmö¿F#Fã³‡€H§ËºÊH)¼ƒyVó¿`#ã÷Ññy–Éë\Z‡1Ñ§ˆÌïã:q–“bƒo`˜! sƒèIFl–H©ÖO¸,ÆVZKÛN¢…ZÙ¿V8™´Ó`6Äó¤Û	úÙ`çäQi] ‹\rY,ÁÄ ÐH­ÛWmw^ãÜìg6îMU€_Mi[¢;ì+F€Ú:kxÆ©µS¹Uç€;Á¾8`H°IñiG÷è¼>âþÒ)v”Ñ!mPú1:gÞ¢(§Ì	i¤JLŸæùuµÔ²H°MíO¥R¤ãÚ|\'”bÚ¤uË•ëÃ5!ŠÌÍ€k¨|‹º7 È”À`H°bÖ­t9Ê#AùE.d\0\0ÁçŠð)Þ®˜«VŒ‹Ïõ“Vˆ~H°f,­HR¢¥?„ðs^±¿_À¬‘×ºA\nCh@ß¾­)dvÈ”­òðÈVIH¯Évÿˆ‘Õw!ÎúwØƒïµýDÅâøž ~t¹7&¬ôÞÅ9±^phñ½{H¬eþG=:‹éj<Ó)(–ìè9ÿc¿î‘6Ì„Õã1Éô¥SÊvðþ\")ÍH©h)°Î·nÎëxHœòß`|RY\"L&ùéíi/Ç‘¡}À^ŸÊºjƒ\0k(H¥ò/ÍâÆ¶šÂXŠ\rf´[i¡11†‰^¼ÝA®Ë”¸Œ¢^Hù{“Ó‰DÜXnH¤\"\ZN[µ™\rTÂKÉ{m{[	çùMh¯SE8-lí6G˜òÀ\"Á›¤–í@ÿç\'ž¼UZÈQ]¯³”H¬R^ä¹øPï|síÕ‡Àl\"UÔŸÎx_s½à’›‡Ž¿Ym½¬•×øÞÕ§P«:£H«\\¶\nµò±=£‰õ´É~þhÔæËq¯ÐÂØ|¨ïÜ±ÑœkÆLÇ!‡´îåöÆf6TH¯2¹´Ã7áõ:çÁß‰^t5_ó£J‡ã¯F¶µ=·f9\Zž~8õÃ€L·íi.PH°EL¸ªš7zÛAc½n¦Ü+|IL­\r‘+­ÖÚI£‹q¿Ý½ZÔð<XR`H°,ow\0iIþ@wHyV\"nñnû°YºâjfIK—üV´ÓM8ËÚ[E?\rÞÜApH®’ŽRÖ¼vÙ4468ïòãÆ¸mt£‘‡‹íùk&ÁÝnˆq`c¿WÊ‡ð˜:„\\@H®žþäQfT}·õ @´Eïç¿™\nÏ_2\\ñ\n7ó^aýieôB­ðMŠ­D8RâH¨í‡žDþ3îš\"C£í¾ÿÌ­CFmCH—WªÌ‘Ìö´µu×\Z„ƒ¸W»OÃÈf8BS09Ì&½H§-÷î…À“)Ÿ¤Øâöf\"cÒ—æsiÎ¯µŒU8õ¡1}ªÙFPÜ$f4FÜhH‚\r˜\r¶-2qïs]ÁY@/t{Iç<]™ŸÊë»\04­CðÁ€Ô§¬øaUÈOggS\0\0(·\0\0\0\0\0\0\0\0\0\0\0\0€*@*!!%(\"&(&$(&+.&($**2!H‹ÆjL*äî´\"\'-ï×iUO;—P¸2ü>¡çwåçûIî–­¿†ÖÁH>ÑHhÂ‡SÐÉ,\\œã+¹?ñˆzs…(º‘¥Í¯¦vK¬H\nÜ!¸HHË,î¨^&¤ãrŽé‰áqÏÅLû²&H0éˆÝÏ,¬(xFO}¸Û\ZÄ±»{£Š	Å†ªã„ó6C!\r$¤€Hü:vâO¿G·Ö,ËóùÁCØ7¦Ò´$–ÿÊÆ¯•‚Yì«-­ÓÝH©)s.¾¶™M¿Vtò¦’Ò¿€è]cË³`H4Rv/<!aÒnøÞ¯2»àTŒB{8&uÍ`mÄVM]¨ã\nH0«LJ¢Ùlm‡KsÔ„Ïùñ x§ËÅ<—&\rz2Ø¶ÝhH-A¿ò­š;áb®íÃ\"K_ûÕ`œ¶‘\0óÚœ/¸¢¬ö_2\r¢~€HFŽ«fÌÆžÛúKu¦èb!¯¸›ùt\nÐn’XÃÃdÛ\ZeH/^ô}rL¦-×Y»DWÍ‡O¾÷¼ž Ó×Ng²I·8ÅôVH-úÓÊ$ç…¶¼0Ç.Éy‹^‡Ë+‘ \n7F°Qêo¢ÃÂ#J`H)µƒN9µn¸0:a!)AÚ½Š&î\níµŸë’)±È\r#nW0H\'ý‹»àú¾ÓàþÚÊÓn8Og,7ü\ný_˜“(Fþ&Î	÷Ï H)¤çmZ›6£Ö0¹žQ“Ãeî;¶G¢«o\0M,í«ÉŽ·wN±çEM²ÀHC[’8mþY–D¢¿ÙÊË¯M~wR\'ÙUŸ9ðÒÞd$<;H9„DRÑS¹²ŸqÄë=J°¹ÆÓ˜*¨Ñh	P‹KðËû3H-m¸\nëFø25ô•liVEÎjÌ!Ë+6ãš7´ÚÔp¦PÉoH+–l!¬¤®hL?Ï€#¹’Eµã+¸·å‰ñc9y3·ÈH,ª†|oS€ODk€Ç)4ˆ™Dy=Bpûœ¢×\neQ<*\nÓÞ8H€ò{	šÆô8ØFrää}„<‘	Ò¯”ý¸Žˆ½;™ãs,3H.T’©.ÌÃÞèH9a“Bk2õ®‘/Ýe;ÎÓ Qª£éØ V·PlÐ‰4','Chisiapuangi.opus'),
(4,'Buenas noches','Tutapuagi','2022-12-05151141259579noches.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0•\"Âº`#((/&-,$($(\'($&% &#\"#\"%+3/&*872=/655*0/24.,0(75433\'(#),336431564497/1/...*\"\"#(\'(*&#$%%$\"#&%\'HäÁ6ìÅ€Hßq”¼o¾ŠÏY»ÛÁK™ÈÈÀH†–åÙdd=oÏŒ»RÊD²ŠQVDú¤½øö’ÜÙìH†¸ŒÜðp‚B_9²ã& ˜c6Ê¯y\\º§À‚ë«Bq\\é‹\0‚\\Ï©H†Û\0lÛûÃY¶ñ\\$è°õ±mjz³•ó ™L€b{@Åü#ðH‡(7AK\n#Âèmzv…Å³‚…BBUþ®øÅm)1ûù6\"$®˜ñqälåÀH&“â˜Bm²ÑDìøÂ„z®¸ÚRáGÒK]¼†˜0H‡95JžÊOG(%]+ÂµÕÈ>WÀIÆUÚ™ay¬—áV‘Í!—ðH‡ñ\"ØêŠ76u\r)ÒþŠ«¶´\\û³EÒ}¢S#?¬ù±K?:\"“Ôêg@H-U‚ñÑ’-º¹YÏ×)FÇ5 Sc=d%°AOTeJztÊH-ºì¦&\'ž^ÙX‚Ñf‡CÜ?a+ùF\n_€ü“Ä°ÙÙ*q~™‹€H/?À\"+/Cgyo]WÓ›ez•ˆÜÐ÷³¾0/\"ö ärUD€H/_BêàxÍ¸x›)•äÀÝ-V÷³åÄX’ŒEv”‹=œH/éfÉái%^ðQ*G\0ý1ª=csLé,:1\"Ožmv¥ÕxH1Qgóäº+§¨«[L«‚zt‘ß³\Z¿ƒ÷ÜX2Õ_™¾éUÐë@H1Q,Ã¯ÄítE;ß÷F`x2Ðe‚Çî¯öBj;h4Œª{æ€H1Qá˜÷ý/&U!SûH¥å¬†kì€ç™Ä~Õ•ž»\Z‡íä\Z€HÅô.“¸–[8ó7ùwMæïðlgßŽþ Ì=9æ“Zÿ)HÊèKªhGzÖÞYÐI_%¾ûGÚYšò{#XóHH/>Ó9ÇÜþGï²«\'Y‡{¦øåcú¤YÁŠƒL‘;„\'8È@®$PH-@pžóòÒ²i]]f2\rÞEgýÈúØ¥³þQþ@ðH+8	©üü«ó»ÛM ,7ºÍ¿¨îÊ†ÙÑ†³²RÀ@H)ƒÒóì#)æ(wÎ[ÙpSC¸[¿Õå\Zîü„	©@HõaVO»l€—_–™TöA\'ÃÆXðJX¤ÓÀ0H)—\rÌ\0îPJôÓÌ¨^evÀ‘’æM\0‹€§#ÀÈòx€H)ƒøž	 å ´ïïEƒ	½YÅÏ _f”Ïw÷»E\rSÐBHÔ¡ÔJÉw2¹×á±o\'ñ‚<GzO–Ø#x!ß§<Ùôì%Ì^ÖÙ˜¾lH¥1cüNe+RwHŒÎ^æ• ´‰é›ëÑÒTÙÿ˜«Pà¸l–ÕIµtRåa±`H¥/âµÒz·2Ë1ë‘lŸoVÞãò\rŽ÷\n|<é‹zÜÙà«½Z#?§¹…VkÂH¥›·À¥8XwQã’‰Á`‘å•)nG¦òGf“›ø«À¿H£Ôì~¤EZ0BåóX³qiSúö\'ët-›´wöØŽÄ»#xCÁE	€H£©]¯&°Ûqþrp’ÎKªUñnÎœûôF^dT[×ãfŽM/ˆI!Ê°_DêµbQeË€çf€Hž?xN\r§@t 4z)´\n*e]ž¿¼¯Êâv-Ö4K¢ÂögñXTÚû_Röð±…xHœ—†Þ;ÔkúçT¦ëì/ã½‰•õŠœí;àQÙŒbcF=\ZwûŸ\'fär°DÒ@’r„Hœ-’1©gzšÊR6*äak1û,ï„ðóùð¼à \nžë)	ÌBn³£ÃFëXÉ.Ê<É¿ìàHœ–e›OY\nôäDwT0¹nØbÃ9Wžazì``	Õ<²\"ÌB¿^Ir*Õý·hHœ­ÖºxíCå8Ù¢²U^«ËrÉaé<sËÌ†$çœ²#¶”È™|4ð»Z\Z-_ÂyÐ“eH±d)³y>Žá/cém/©3à«a.ND‹Ñ\0äÿHüh…ØÃ÷±Òç\Z?†\"ïÝvýH®íè*Í©1³¶Ü ³š<UË\n_þ<ï\'‘äl&ÿF»Tý†odÑˆ“_£\ZmÃ:m€H±tRâD\n÷æ\0øQÅ2Qh~’#å!i«gHëiƒkž[è×	›H¬^yŸ¦DëB[GT<€tnHëÈVàN¥½<…¿!%s L+û\r}·½`VXH§,›´‡ý{6ä>l×£	Àï‹¹ŽõlÊX9¢h¯OMñ‹Yë\"ô³\Z;H ×!ÿóó­|NoDÍ¬%béÊMã$džUe0%÷r×X)§÷½O\Z.iÿà¬.PHžMMù÷õ«SýZã…©õXC6µ•J}ŠgÀ”†[-A‰$§¥vOêçÀñ±-u;`H$ú\"‡ç ÇyQ¼„©v–¾ly Ï$—\Z±ÞPÿ‘òˆôDñŽf\n\Zx×Qu›HaÀ­=î7å® 0õ»¨7Ó] ¯W~	ŠzÞ$ìâ}…rÆó®qÖÇH‰–ÈR\n~\0	·#O®.×gèå÷XKd;0ß-ù;ÑFÃ,£ƒJxGqÂÿ€H‚.:ß{\r>É÷(ŠƒK‚rUûÃ\"Tí/Ño½M¥Ü’LÀH‚\"ª…Lº\0ÿÄmÇ‘E\0´á×UÊ™–Ò>·a\0-\n‡S„ðÛEÞ½û ½è¾óV¢kHH£è»·î}›,Ç1S¬­…qÃMÆê…”m´n$5ù:¡\"(ÕˆâTÉ—R˜ìú—ÆkyØ@H¥…„ .Ù7ÌÏ3cw¨…Œ	í9eKÛ[ù‡½…&ú¯hÊøg{mâ?/˜ñúyú×£‡ Hª Æÿß\"Ü\"5ÆoÉ4O™I¾ÐÙ$4¾¸¦\r¿!-µ9û·k€ƒ£SÓ‹©àH­y·te+	ýÐ6nîƒ-ýöbd{°A¡‰… M«_§¯ôÚÙr¹¹hã ˆc—×ÐH°xŒ]!“Êíá›;JÞ©‘£…™Q·‚=è}¾lÌb3¶«¹BÀH²p™¢á¦>=I‹Xúëh\"‹qäÂ¤é;u?»Õ¬†ŒµÕÀH²\0¦U/ãX®5Q¯X¡>!S×§FHÈþ¦C¿alƒ5Ä¨H°f¿zÎ©PÒ· 6UyÑÊ.zªØÿGÑÍw\0)§¢Ùè(ÙNf‘Ð5àH® Í„(ÌŸ×Ò‚P§`$ƒ|¬Ü”¿Ó‚ˆÛü`Kdé9—)¥6?§æA°Ð€H®{˜;OÀKÛì™Q=œš}°¾×JÏI+¶n÷EI¥¸å Ò¦†\'=°ˆ\'·0¶¤`HªªïÄCŽ$8’»l~á‡ý7v©ªý[bqe÷àe¸ Ï¾Õ¯ÅÈÙ3„iõS@H¦H” œÆFø%¼£‰l˜*\"„ãjÐG‹Üi­C‘%¦°ÉÈJ•H“Œ§%˜-%·Õ…aH¤²ÔFÖÁ¶Ê¹ºk¢øW_Ù§°Kà\"ñÛ/MÂ¿•½3-—èÐt¬²íüï/a•äH£hr21q\r/_yy`‡Ñô¡ÊE8nZiûY¯Þ¥»>cŸ¨6Û{6ógä]·QžÀHŸœ4§âl“Ë…x¬?}T1Ò¤ÚŒÞ8ý¤}Þäà	xÆÓoËà<\Z\"Ü4Û>\'ÍÏ%IÀH§Äy`fS\rõíÖ(~à—(8œêæþa’“7ûðU e³–ˆ\r×\\‚ÁŒÚ€Ûy÷6 H§èH¿KÿFî,‡À-ßç]ÿ*¤ÜpyK¦<E·~ü¨ÇDi9Ú™‘4´°¨À)ê €H¨jTÌÂ·lôa,\nýùkä¤]ÀA‹Î¡îÌ\\èøái\ZÒœ\"p«ŒABÇ#WØàH¬ß¿Ñáíõ\nR~§c›„PN€ƒ‹Äòc\"îhøÚþsé?åÅüJ·I\'‘WJáèõ\\`H®y¯êx—.½ÙõºyìêáØ \'\"ž(³í‹½ÌfÜƒOõ`‚l<ã&/«qg\r‚•öâè0€H«-‚{cŽÒ@•—âµÃÞÐ@=`Z¶­W^6‘©„!3H%g§OEÛ>ƒÚ=\"°»ì@Áñ‡¬ Hª½R¬¿œ¯DŽÁúÝ6ÕüˆQÈ*‚¦,ÝD _e™ZŒ<YÞKÏ@H§¸:ŠiŠ½šÌèùê3d±,†¥eî[°ììÔløoc–Æwü:@b[	÷âèH¤®ë„ »ÑYGfÀŠÑL¨ÛõóR™l‹ŽŽÓÛ?èTò}I&òYc)à^H£¬ê!Aš5¼}SÛz·Ž<	©Õ™ÙTå.‹ümA@Šj‰ãáÔ4›¬£æÃHŸÿËt”ñìŠ:é›‡SsV†šøVÚæ,ª¢@$¨Ò¼\'Rž†…ófÔ@HžŸsßÖkEQXA8‘‘â¥ÿb(¼ÿÃévF3Ö5ÀJp&h5Ì]‰ÀH8#íK€.cË,lKÚÔ]¬”<›ÂT‡¦ r“ý“?.B]¥],Ÿ»àHÝf3E†qóWSÐÒëoñ¥¾…ÐRD•ÔH8¯’ŸÕ]p3kùç´>Œ>U³¯‚((æ~<¢ó˜öÒ½ H62šûgúŒs›%x¿_Gç •ŠXæf|¬„ÀÚÈH1FÀéïyõ\'†¤/¢mÛëÎý·šýÕß±Sõ\"þdmó\"Ï H0ò.uQ…@Iy?JnÑýš‡ª~!pÎâ|“×Qéƒ¼½ØhH/;©qT²ïMÿ|¶|¯$ÅpyRîã‚KåêYhm2sŽ)ké-™ H/U}ˆ5ÖxÒr\'™—…lÜSÅ0Ðax›÷Â+ Ë#šä§ÒšH/îÜ88uwžž†;á‚ñþ]b½¸ˆ„jFWm½Â,ûrhäjüY­ìÕH1FÐûì™ä*ð;Ø,{¡ãæX†Fw‰Þ@Ñ\'|üÒ«`H1FÑ3Vcv‹óK’Á—+»]‘Á{’jHW|žH8H1GÒý6;0ÆÂÎ¿…¿®ÐZ¡ò oÃ\'@vÝnÆÆ›â\'H0«QÐ–˜^¥PxÐ3”4¡ÊîP_×ÌöI³hÞöªÐg°H/BâÕòéšZPp©š+…ÑÌ+È¾Kæ%j‡]åæPþNàH/^0—”’–\0v“îí›+g}Gä`Nð{éÈ#§Ÿ@H/8¤2It„vY‚\'Ä­¯e·\ZqlÅLiZD\Zý¬æìHšp§˜¥ãš†ÍG3P|~)ûÜíïdÃ’(€6i–D°H/.­FXp1…ý&ÅZX\rMd¸òÜàã§#Ä´)‘°òš^jH-Ô+DP—~BŠÓE\n/óJx_y¨‡šnèÉ1Æ]P¶¿ðH-M\r˜½QôÖ‚Øÿ,wQ¦´‡vPåš²ïT˜“—w\0¼0®yDÎOggS\0\0è\0\0\0\0\0\0\0\0\0\0\0\0”+Fù\n\"\',-&&()&*H-uS=kŒJÙ!­Îí2¾i¬öÚ%Ä)dè|\'FµËH-Ü£ëLT@[t!yàÈ¾#ÔEtø’T›r	øLÈ!™Íï¼uÄH+g`U\0“›¬3a?—µŠzÔÄO]ÐÄþÌ…ßvr9Ò*ÒUIØ@H+¢Aßßy‰TîÄÈyì$ƒÙ\rgþ®ƒŸóÑûnàz¢9e¡3¦©õ3¿³g¸dH.¼RÏ‰ÉêHÍ™\r‘†u·	,Î×”D¤8È~Mò½2|.t[H+Â\'!ÅÒl…\\~h2RÃð¢ù™j¤49¼NÇî\ZwûH+–k®T)è·Æö¤+&—eG‰@em¡ßu!â{È¾:‚öløÌDH+“·×`Æz‹®\r›2õ$˜d©\r6#K\\€Õoi¨.Ž~÷…8ôèH&^Å!±¯nÑ¶LÆ«¢•šûµ­_LÂÛ™BôäŠÖT0²Ì0H)¤þ$M|ä`½Ì—?ÑþØMTˆb¦ý$j>\0o#PÀÖ×Ñ¹³Z','Tutapunagui.opus'),
(5,'Ha pasado mucho tiempo','AchkÃ¡ puncha iliska ka','2022-12-05151158528313necesito mas timepo.jpg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0({\0\0\0\0\0\0\0\0\0\0\0\0Ÿüoye\'+ )+$%))%\'\'.*!!\"#&#%(+*(%$!&$&#((*$%$\'(+))%\"%#\"%%%%\'(++()\'$$\"&#!%(!%()-<6,.11675340-/.7.#/4200/567HäÁ6ìÅ€HâêyŸËÕ„e¶Wµˆ4ÓÑ‚H€Åûç$}—¡a< Jy÷äRà<lìPââØZ×_ÄÓÈ¸H‡VüT³ÒÓdp~?ßQõJ=YÿÙê«Ý[I‡J²ÅÛz¬àŽD„¹H€v7m¶[°âe\"¬oÌ|‚ù8-Q|Þ“ÊFad\'H‡FÇGÀOÄ\nü: y÷ËôÃÌÏä)‡Æ§Unši\'À\'ÿîÓzH%]_:›Ò…I¿l6Ì9N,aE³‡2J§qÚ)÷Çñ¹ý© ê{jþ8H)\0Ø;º\\¶Ò7øRº“w\\£À«\ZÀ‡ÈÃñ’Qâ|£®H¾œýÂTË(±#ÅpÚÅÙœ¢×úØ´ýËÎ#_«—H\'®Ê\'©‘ç#[-	‡{U¹ÂšN+¥yãÃ±¯í¹ü•“qã.¼°H\'ÿ.ÿ»ÿÈ¡‘c°¿¹ÇÒ)ÐV.\\=\0ç ±ðö¦pÜªóVdÄH)„d™i~Ï`ùÎ±Å üÝ|éI©÷¦d¾_e#¥UD„H)„Ål•.œÄ+\r‹9Ú­*ù8g´Ý‚ð\Z{ÆYY\Z:ÓVhH)„…\"ÆÐäÛP$˜³´²q˜+³ìlU69#<Òz°³\rƒbCH)édcÀÊ´Q k¹xFlÆjW«5š#IOšM2‘˜½v©ŽÊþˆ[²´o`H,#fSAlëÍ#†àòãü¡&~ª­:ö:¦¦«¼´¦0÷Ç(õ¥Í	@H/_³D7Ó­šQ3œµÛä¥½:V©\nýFÍk.iA£H/hrFšg¥ŸvŒE\0ðzFç¿þ:×Çæò¥òÇ@H/h?&M»Èú²zÐ‘wŠù}¡·!p5Í‰“W1~/»H-VÚþtÇýaˆ¹ÈêªÂyÍˆ|ýr…8®p÷·šÄÒH-uK€¦9 »3^SKp|„¨ZFXªu†cãìJ$•R’O†YðH-Í;ÅÀÍ²ZœçBr88ÿ›í§íZRA»XcÜªøw¼Ç H*éñRùUTú®óà	|þz¨y&Ÿ‚`cÌ\nÒ15b›øÀ8pªH)—¸4è¬Òã;ù»ô€L@{Î‡¸=7K¿þ¬ï¸ÀHõQÈEí\'0ý9Â–>ÛØò/uúÍ<að4<(ªY¼u78ÙÊý÷tH)›—ŒÖ•iæ]\n»5Ó2ú?pTímðZ¼N\'h?ð$Ç×™ýbgHÔŸd„H)›áæÍXR\0Ú£bœk\'EU×.~¹}¾›X^¥}³yí˜VÀ½…lØH)›ãé\\/#|-†ì“¢l1¬­/›6ìXàO‰õjãHŒd}0H÷{V÷]÷Ì=÷÷n…°Kda›ð•{Õ[ShžWe7šî0H)—\nUúm*¦?´SA!Ë\'ê¨„ˆKÚÑ™²¸d&ƒÊŠH)ƒúžÿ·¬Ž¨Ç9ì·%É´ŽÖò{ƒ„^àˆò»ðÖŠxE@H*,š™-2F*\Z$=ÇÄIçéâƒ ‹›`AÜCËŸ¹÷C_€H*,– ÍQÙÖAD².(µöç\"’ÕôI5|Áö qµ)Cß•H)„\0õ¡È¥§×Õb¿û#åÈÄÐØ<¹0B)%ÐÙÆw0‰@H)ƒúPák×( #–6»øÛ=¤a?1l&Ì²q~µ’ý$’m„RH)ƒý«jD%Ú‚>ÿ®á 5þðdg«¼\0‘Çü•°ô[6ªx€H)„ƒ¸{YQIêæÃ#Ì‡þFØOó%\0’7XKô€‰R´OBRñÀHõy§20pï\'müDáOñm÷¸¬€1wC¯™ÖfîûÆõÀH)¤Ì½„¶/´0IÀšO¹öÏ)Å I±§61Œ-Áâô@,aH)ºS€þQžÕ!·–»GZÅrý¿üøÇ€\"÷}ÅKóïYÖ,H+–¶¦\0ht›¥%¥”8®¬!¿–å“VÌëò`N›PâZ£ðÚH+£&˜:\rÚý¶)™b7l÷¨–¡@£¨‘k*´çcKáÃ²¸¾0H-mcéþ’ö1ÊQé´ÜÏãçiÁQ_ã“m”fû¢Ç˜ÌŠ¹SCwÙH-v¦(µÙò¡èE¹2VÝƒ•Óõp“0zïÐLªñJ/‡sb@H/˜²V\"APzß7š&ò´ääAF–u¸øž¿:¨5!ÒAw‹¢¤-QA€H/>ÅÌ-Rê½6¹×ÓŸÕû\",³º’Qðæ¬â<WÚûåÐH/>LSó ß+†ÛG!ŠE\"ÉýtÒFeÛŸG—öðÀH.ÄñÆ5»Kq–þY‰IÕ‚Õ–€ÂAà0ý#ß	„l|7ßHywý‰â›°X­e¸+_R Q	ä–ÕÚ}päQ¥O¤ABÀH-Uv‘ðÒ²æ÷Ðf–ø\ráÖwÌ± Ñ…º*â,Ï¡ƒÝ|ÑH- ÉTõ/|ëVôzü4%˜oF¤*È$%\rO	ØÃ¤ÔääH+£&¦#ÎDY‘Ív6p_ÌÊ‹Ü Ì^4Ôi¾v¿Ý\\€H-U‚HÑ—<„¯\"‡w–=™Ë€Æ×vù{L@îØ£a·°\\H-UzÎ…$ûÂéÕ\'ö¼/lÆaÀ\\\rxR±þï‹2R½C›‰¦vÀH-h¤²6ÿqú‚N£\n†STgÆÜåŸ‰,Š·ÓØl_¶k÷‘É\'€H-J3(hþ	 5¶‚Ôåù×h˜ïƒyW.8Dg¶Øžrß,ALŠH-v‰Þúžps”møs¨tý;è¢šÕÌ}ú?#È+œ¯jÎ‘Ý\\Ä\Z@Hg††ñƒ{àZ)ö[¦ß°è)><‰eü¹Öüæd}Ž«9þØ!m¥ÈúðH-Uv•C%\rÞb™ÕÛñ`¨~Z» y8¶*-%Ð™½ó—ÀH-mcèúb„L™öÑ>oñÙ>Ü³•Wäã¡Æ²\"~uÉ’Ã7­)H-U´½øyï>CV\Zñ˜Áß¬P~”eúýæI„\ZîC†€H-mbØïÒ(UÉ»\\»	½¨~%Ò|º¯4O1¢=À¥€HcÒR–R0_Ö¿:§W…œ`¬Wä2e¹8«ƒ¥Ý3ë€H-VUîš—ü\r{­D\"‰˜¦GlÖl%€%ßMçA;;mH,Ü1°HÐgÒ¸¯í±—t’Ñê3LýÔÜþ&6Ð³«`HCbB³ƒ¾‡ík—;£R±/…\0öOIú9«tWÊ6Hl•´ÍúÆ‡°ôjýy°Z˜b™ \"¬ñ‹½øÀH×Ó˜ðò†N	´mE÷AYiÄ9ë·„ªÒN“úvå- H0ò/²£í—€`s¦òöd¾JÙ¾\"\'‘ðß2$¯b“YÀ®–ÀH/>B4thmÖ-¹€îÒ+œ{Ÿ¿Äýž·Á#Gº*H-vn\n*Nobê¯íØà\nFñmí:åŒ;Ó„ÙG#}Î~ø!/H-H*ŒãHš²r š\'ûÑ‹ÌßéªŒ0c«?RÏ6ÐçñÊ«í	ÝÀH-•%¦»éS²ì”.Èz¢iÜT›c\\©‰%µZo3iXë¼p\\H1CLiÕ›¨¹Y˜-Ÿ=gÇè!ø¸¡î8ÑréìäÁ^w€)Ó	×~SH }F™ñÛŒÈ€ÖjìC¸£™ø|7ãQ^‘¶`¨\0T<[ðÁ.Œ6ß\Z3K¼Á›øÅ&TQ 3Ú;£>¡H«Ó¹3…áÇÏC{+ç¥¢vñÓ…(‘+Ž®oÆ5ê`y\'¨ËobÖëAêà“sDCÝF±H°ëþ¯Ñ»>aNá=›z ÐÜA«â©”Ÿ0+,-ìÿ¾ôÿk—×ÑhHµ<‚E’Ftãæ•Û\r÷t|úº5†Y\'Í\r€`ig+ŽŸõ$ µdŸ4=ä8H·-Æ©ÑÒuÊÌš«`÷Z0$ë‡*˜°8³[L	ZIü´îüþ­8ùæû/â¡\"\\”PH·Ø¡o#aï‰yK÷\\§Ð^[Ñžkw’¤*VY*•½…oèG»õüÕ^@HµË‘!äF>„„Õ¶Xp–º­2Ó¬ÀÎÍ2¾ø×,ƒ‚u¡â¡¹º8ùRÊÖŒä^ó H­ù«F»Å{¦em7°G:KØq>éã®ànµAÝ?Ò6\'­;p\0Û•»\n1\'²z¥ßë˜< H¨\"™|šÄ¿§·ø4Ql¥}~ˆv•œÜvÒêÌÛo¸KAÐ@›y¾¯8\0mpì®Ó–²ðH„\'j€	°‡ŸÀ¨ËrÒjíc!qm—úéž«lVÌ\rÞ¿š(o^JKV¡òÑH©¨CÞìpH•yOrÄ·ò)_ô€s …]¸åœ|3¿Ç¶#ß¾ýìßÔM8QóÞDaê¶º‹#ÅÐU+H–sÂÌsfÏf3ë¨Š³)yeÐ7ÈRg¬µZ&úbê ÊŠ¡É‘ƒmìô~Ó“H“v:Þ0BÑ‚º.rÅzyu.qÐQÀ8È\0;\r mFšîì0.¶aQ¨HƒÒßí¸Ø ‹¼©R(5f}´ï#)ùt<r8ßÓ\0^JjÆÃ(+aÀM$½3óOJ‹ðH“µÜê\0Ë\n3ô”±I~«3h¨	jG?¡ï3¤˜4¤ÐÐ;ð-Ó—²vBÕ€Hƒ‘A˜%5òBÚš8a…ÿv6–¸Uã~oi#µYÈ¸6¯.FBÜ3ù}nÖæzÝ2d~üLH¶ß·(ãý¹TùDf}/ÜÛˆ0óiœ:>¨}\Z>ÝÖÈN<F ß%¡ Hµ²“¡	´åIa¼hKó3°¼ÅFhÎ˜N?±Üøø[Ò‡ðH³&~‹>\'Qée!ìül!_í)q\rsÛ«C%§4Çi›­ÐxíŽ§„% H§‰ØÿO{Í¸²¯Ž>jCzX”H—§ó8[+Æ¢è[…dH¹˜+¿xšwPåò¬ ¯œ¥zH¤ª­:Ð®Åmc(fmàæü?ŠÂ#´ñ&Lºí \ZS”ç“œ~®¿lÆcVe#>RH¡·ð îø”Z³ƒ©/´få¡y¡?žÉ<ëºq‹6[;E€¡`,Ô„ÍÄ@Hž±g”v•ú±0Sú2U>w\'\\1¾0dÓ#êYa÷×gxGeÝé²(ÆëuàÎ7ÉˆÐH£¶Çëvs Õ5ÝKýûfsÅ~°å¾yâEj¬¨æ\0”ZÊ‚`çø‰.éàùPH£ž-zß×Ý‰ áIøÌdº[·+ÉZ\\“…åÝeðÀU™ˆ6I-\'h`¤škî—Ç€H¢Šv½LHÞ{m0Õ>„Ö­»·ýª’Žóèq(É{mý£p±0l]Ó\nLÈ¥µûôÒ©ˆH¢ùï‘Z˜ë;À»Rçìé±ë*ŠUÚêÍ†Û4l±ƒPOß®ëÂg3Æ$}*«ßý’ó@OggS\0\0èÈ\0\0\0\0\0\0\0\0\0\0\0\0IMqY,830/4841-+1-+/02.,.4\'0,,4\'(-:;1./*%.\'4.-54+3,/3.0,051/((#\"+**&\'(%\'&+\'(((&&&*-%&%\'(&%()\'$H§û²€~8¤)Œ7ŒàŽÑë*îÊ=çáñïÎmé—5Ïr‡sM¦5Hª»V ÅiI87¦ýÃ	C7°/í3¿*	ØŒ{3ílïAÃû]âW\n€+ô#çÌÃiW$ÀH¬èFn:@²ÙªÏm$ ÁÌ˜-çÃÉZ:25ùÞµ¬ãNdfíçÐ<æg]Hª©iòÖ|{FŽÿ^]–Þ/ùñïÎÊ7hµÇºÉÚÑÏ¿iÜ;k$LwÍßÑ)ÞH¦2ñj1ÝWO6È—¾Eï‘@Q¿’ÑmŸnÇqÃ°åE´DûÌžû¶ð>ç\'¨€H¥ø¬Ó“\"ê}Ú#âD„²å?™¡ïô&$Ïóà„÷®g\Z­\\>M¼—¡É³ýË0H¤#£èÈÛ\0vpV†üh´¢iA·ð/QOB¢EÓ²§]þÇ?ß²½P{z«ñIÞõY$ý@H¢Ç¢WùTóˆõ7·ýè¥QÑm-À0ÙND×Iu-°ã4ûö2%Ì±Ú™\\*jH\0é›ß_ˆ``hjz+/^Ës1‰ŸÔpuÞ\"`×ÿe…¶²µ<zÊw{_œÁÖûH”\n#5õœXáë”:G¹g«*6HÙ’2n¤e;ß…Ã§G>ÃGŸ|û$€|¢pH„‚ÔÉm¸A½zYyÈ”·Š¯t”F‹}M¸¢cI”ÉUm±Ð=¦€H´RsÆFâÞ“N÷¢N‰Üí\ns	¦‘Ïj©‰åö:1¬æÁO©Îmß¼\"×? ‚H·Æ\\\rvÐ|dÑ%dÛòWwBl1Ô^Ë†û´,ÑµËb¸&³’ûB¡d‹ƒèH·£NFƒ ö­óÑ§JÞ¼\ZÔoqrBâ®z!O­DG¢ûì2i9wÈ`H¶½r9ãî€óüx(Çœb+hÕ\'­Äœ‹2*ÆôÃ8Osçú¡j}\ntüÑ•HµùæÁ^.wØR>KÜñ1ôî*ßÝ!Opb·ƒ£¯úíoN9äÌ°„V®Hµó™Ñ~þD;BþµJÿ ?ð,ý¤~\n#M]	ÖL5ä¬åi¹}’Î2ùé¾ˆi€Hµñ½¶(ÖÇß|(}S(Ý˜Í»à(>4N0\'ÛdVPl2|¾-¯Æƒ Hµóe05vÊï*\nÏ5B7—®bùÂR e4`†à–Å™JR¦¹¹žBç‹¡`HµìÞ×•mµ³qaÒ¨‚x:èªF\r†RöÊ\\ûsOuø¶D_¬\rfu-˜§H¶á<ã®­|½¾àHDùò¹áYÍ&S+èªüZ/&ÛwwÝÒ#Ñ,US@aDèH¶•ŽãÔ^e·ö£Å=Ü%¯9Ò„0\nFM¦xõZ.VýàH³tÇ.rÛ¢Û<…HÅiî‡Kd´…iÛN!H‘Èji¶^ µwd\'£_+H±ÀNÍ\"TÎ«˜Õ˜7koññ-P\r¸Kðˆ¤wŒ,…ze¸„´¡Ô:Ke€H°^Rk0FX—ö(ÌÀ\\_¸3äÙ3æÆÚ9“óÇÚ×x)ÌH°áÛSSûC×»E¿¢é_Í°šù<þE`\ZsêF;òÖPÉ‰!_>¹­cA|øöÔüíH±ÜX)@ÈÝs¥µ‡9¦hžÅ/˜¶€Ÿƒg‘«È?63nŽ%màH®^_Í¡ðd|¢ƒ{L‡’\'lÙ;ÔWçý<.³‹ÉEžÏ+uÏ¤€H¬ñtˆyä¶ó}ÉË£Wî)[*šŽ_D)vˆ1ïGŸ0Ââk¢ÏdœH®öÛë\Z.TCªJxoSÌSÎwf65*úË“®`ÀV·ñµ!Ÿu@…4%‡pq7´õ cEk:óï±ÏH¿<^\"îÕ‘¾TóÈ|±e›&ÿ7ØÓ9µ$(·Ø\r©Î0hŠjzæÐÿM½6ÿšO:œ—®³n˜H”„ÁSÆ‚ã–ifØ¼}\rexkˆ‹A¯êšån~ ºÉN^§Í?/¨°éuÁLH”|å5d«Œàðñ¿ïÐyÌ«³Ø`×\\US$ö(lü_úfaŸ±jŠ±æ XH”m<—úÑXÙÚ\"ìW«AZf¤ìxå\\Çß\0ÏqÖU~¢øh|ûáãnÃ¨÷àH‘Ð×‰÷šÂ\r°žü9†9^÷ÖyCÿ%êAóI’LUuãŽ‰²8âòH\0—‚ñ /lûMH¯Ø]Ê!Òá[“\0p®\\\0|¬0ÜýJH‚ÞŸ\"w\Z¦{Ra¨Oª*`Öþ!\0=$qÌ¨H\\uòÜZÝpÊÕûJø]¥üHƒ·Ads$èYëš;Ü­Ë°\rù…[÷¤\n´a™éº´û ¢H«Bf\"^>y‰ª[n§5Ü×[Ü\\»fÉ—wÔ\r\0Žz\r”Œ± ÄhÐ[ÿ\0E‡\'^ÐH«†‘¸ÔÒõtŠ)òXˆyÐ—ô¬_šµuw`6Qÿ7x3Æü,‰3Ê(©ÅDªH§ŠžÃ7ö/‡øäj•§l­0qº–8æ¤¬=ÓSá’ŸË*ê‰õ‘§-ŸMˆMìH£enÅ\nH¯¬2Ž›CSÕ µÓtk–÷Gÿžj¿O.;³.È>HMYrb»\'“T.ã%µË¡ºHž•Lª¶ëY‹¹Q¦SgþôY!>q9êZ|C•ÛJ™ÌUY–Uê4¥QPÚ6³ºnÁPHœ›Ú5ô“]YÒÇKø9\0ý~ç9ƒºýƒIrðl“Û×I…Ìœ¾ÉHƒjùEåX6xwŠ ~ä_8Zê­‡À¸“~&\Zmœ(r±[ÀöÑzÓ™!€H‚¾Šrž+m:õ£âO€™ÿèU>\n’gK),·åT„Û­Ð50]™8 @ô#*H«ÊRø~t0XèŠÎ/ž÷£¦üËj¦<Pë”(x%‰ÖÓxçÇ©Z¦¾›ôH¬öñ1Þ&…@É‹øX·¶ðIdåöŠ¶/âUc‰–Ž…Ù‡ìP—\"ôŸBÓ´r™H­zÚj–;^?^&*!Í†|‚hÁªŽ\r\"éuúÛ¡E¬˜+‚øˆQKƒH®½ÚÎ‹âƒ?/Y×+O4Z¦6qÏã&MÄÉÔ§=ÙûÒ	.ë±†jÜ_dùÒIðH°QN’õw¹|‰©Âí<C]dØ\Z={Ypš¼Ð\\H!÷q%2Ì³2g2þÎH®A¾ÍåìÎ~ùjG=”×c02øÉà?5Ôˆ¡&Œí0ˆ´•ø39^›?ˆšàë H¬ÈçÚDŠ•óB–\0^ü$Ç*«ÿ#ª¸î:ÖŒäà’b8Á@¥VNädùøPp7Ú\r H©0âM2¹ŽÒuýŸÞë%çœ×4`âƒY\'¤Æð™9¸[È-v-v¿û¾V\Z“8Hw\Z¨çT„rü³µ\\…°ñß­€°Q€¬¯@¡Wx¥1’4\ZÏ­igþò’`H8ÊL3H¸µBàµvöè¾Veô%—&>ÄW[AºQ™ÁâC÷¢Ös‚ÏH8p% Ûxà¬´ÇqPjyÜ2X<CZU~åÄp…²ƒCêH8	¡™GCº}DNf„ãã•¾uP»GQþU\r…¬ÓAèŽ€H6{“Ñûb®ä8¦s#B}Ì3•Â\r¥…ÕYÖ :þÐQ¥^H4{HSC¡ƒ‰bÏV4p.Ã±(W¯ätœ¯yÉÜ*™çø¯ü²÷ô.ÜxH30?ýÉSMäˆsIm9ïufsâ:Â5=±Eˆ\nÎ*g®DÂ;–|H30\n7j¡€¶öÓ€+Pƒ=Dû-Ý†F?.PÏâEOøf¬äËDAìH3KFµe•¤gÌ5£	 )&»Z†|íÑäQç}Ð°Ï–Ý$H4veQ»JƒÏøÁ«oEZŽ‹a³×d`nX…¶›•(\n(¥\nàèH3ËÀâfÓÊÖéùýTI.PöxwÙ#Tÿy“ÇÌ |B³Ü]èH4p¶¶÷«“\\qáiDyÐDÁu¦5—\'l$¥à¾3ê)q˜ðÈH/_>›²žÏG%ôÎn€¬Êî­$¹qÁ¤]DreiþC9$H/_>šöö1ÕÐÛ£cApw±Ö?Ï\\>ü^^%¬Ñÿjà!ZH.ÂÍ\"÷{`)6ëÆ[5$ÝA¤=÷]»ã2Ûþ\\L?ŒÔDö™³¡!ˆHcÕCrösZ–«¯Ñ–ó³â-tGcF_§oŒ°ujH/‚½ÀH-Oä28Üm??Á ”­ [Ø·Dí&[*hÓç¶ÁØ•‡Ù±€HgŽñ6—	©€\"ÿ~çÑÈ¶h\"Š¢hÝV÷ÛòW&H-uÍú·3“P¾Í`hˆ)f”l|Ï®³£ñ…2ŸEFZ_¤ëõº€HoÙK$Á4,­\\¨‹\\ã‘‘\r€¥Á»<lt±ð~•<QZàH‚é!:vò&æÛó®)É“ÅQÛÖ&š¬€¬ko3»vë0ÙxH2˜8‰ì=-÷ËVÿ\r¶‚ˆÃ\'%¿óýI”i!‡É{>Ô|yåH/d­UžEeoÚÑ1?\'ãÿiVÕÿåû™iVÞþóÉç@*¯\0pH/_J\'”:	äÃLQ³ÎaŠe*¼xeêYŸ†ÅŸ[_ÃØM·cø]’¸H0ÖÉÚˆBð¶„YÆý1]ëò˜±¶‰ÐížEÊ²)R—`H-v~›vê„±¥8šhëS€Åë‹Müìò\\í)t˜Èº\ZxZ¤ HŠ®Õæ·]Û¼Ë¾×«_dæUÔ#ç)G³ø^~Y!H´H2Ð¼eŽ³W”ƒ#‹x{«Œi««Êo/‰ðÂ—„‰ÐReÈH,ÙÐ?¡4”?ûüt¨‡¬n³—öõ#|O˜ÜëÌ7HDÄvC]üè<UÓÜíXaÄÉqòÙÉÅÚâp§vy;Ø‘pH*éŽ²67C5kùiØÛî~ï2®!w°Eª÷2‘ŒÇrõÊÏ`H)ƒÙÀ!_§¿u— Ã·ÒdW£›—¤\\3³È»[eÃ/SÌÇQH)çðÉ\Z=ËŸ ê¡Þ„S‰{“ê2IÈGKªNÀr%B¿üòHÈÏ˜H+_kQ Ô¬f-U	\\3Y4!å¶R`Ts‚…&ÍU1ˆîÉÅ€Hvƒ£t_ÑXZ^ë&/…œŽÌÞ£ùé´ÕÀ_¿ÃÈóöL–‡„','AchkÃ¡ puncha iliska ka.opus'),
(6,'Me alegra mucho verte','Ajai aliachiwa kamta kawangamanda','2022-12-05151214406126todo va muy bien.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hY\0\0\0\0\0\0\0\0\0\0\0\0!êl\\\Z())$(\"!%##$%&%$ &%,.0-456847;1,,,4214(,)045;4@-/081,72-),5/*+51/0\"%,/,)*%.,400-4013\'$$(.30HäÁ6ìÅ€Hß¤®BÈûYÂõ²s0ÖGç—ÿÑ»ö€@H†\Z÷zÛD¸tU·b¹´Ê)!û>rE5Ç§ÊE®ú·ãÈº,§•Ñ©ˆH†¯}Å«sviÕ6¾¦=Ž™ytgÄb4TéÉ¶îƒF	Ö´ÁH†Ô›ùeùû¬£Ÿ¿Ø@†Ó»s~Š•û¾Ð¯¦Riîœ—\'ñ¬â H	1ÿüV~ŒÓ‚Òqú™AH\nÓj(QCì5îCI#kU×‚H>Éuù´[Ö4äÎ×ªB®ˆÕ[Ms±g©V¶,ó>9Hú%DÐAÿêH‡‰E@ºðîRwO;y÷¹wa#ŽÐ#ö@ñÞ°Ù |ÐH\'¼bÎÀh‡†=yÎÙ èyA‘Œj\Z·2f¬ç©+;àH\'Å6¥¦Kå²ÉÜ§U™MSMÖÁî³k``M#[ñ+¢€ÞÆB H\'œ1t5Cq]ížæ¯9íËKYHbC]³Oš/X×ÏŒv°HÀ;qh.ÐåTq\'¸u»Tzš©HO­ûŸ8>Þ®FÖÑêhõŽH\'ÆÏºÁ<ß´OÀàEÅË%ÓB?\0çc£|u”¾Gjg 2˜HÁÆ^Ò]«\rø²·¨ablxÙ…jzIÊÎ;cøä·Þ³è°HÀ<d‚¬b-˜>QÙãøŸê…‘°z\"q«ºÎž‹¿ŠÄÚ§üFÞÀH\'ÖÜl®&Ð¢¼Ãw˜ªÒÔ¶	ì<C[^Ñf|\\¾s[¨7ÉÀH)ƒó5OÏÜU‰jÅ‘»’«!–ëïÐ-ÇC;žíÅÓk0H)„(3|€>=üy©ºw..ŠÞg¸!	ïl½ŒpH\'¯>5ÄerÄæª}óß\rbp5™³‹Õ¹8\r•Žˆ•¾HÁÆØh2³\0åþºŸÕìÆ(´9¢oY¡}×\'À3‹$©¤‚Yn`Hˆ€þ…+ÀZÁæg	9t`¥5Cs£Ÿ^¦4û‰¶ô„+ZFörlMÐH¯# µ ÌŒ!µ½÷\rŠˆÝ6X&€‰kÔ€¯¨à¤§Ï€éð<‡6e	NHñ÷iuõâï-çk¦1M+Yå§–s@ó¤©¿^ØŠ/Óþb¡ÐÀ6\\ìŒ-®H‚±Jƒe)(|˜¸½ÒÒ	ÆçèÛ]I¯•°ãxßEkÙ\ndv?B3‹Œô€H¨\"à0â=°dÉÔ×¶ðê”=}unf/.s5s=¹˜›Lì_oýgýÑE\Zùô˜óhÛ#ÉñH­™9`G…ó;ØfSéÎÑœñ/}u·ÛÃ×µ%º`ËÐë}*çfp‚åó¨Þ\\\0@ùŠ€H±Âw=»>åÅ4ú)å´«<Ô™\\‰5üùž®uò#ÁTp1ˆßÆC\ZŒ§EOOÉìFbì7|“|ãH®Í¼’b\r*	õ°!6¶ÙT±Ÿ¶©“ê]ç‚|õ,»ŠÐí^s¸iÆYŒ&tÎ°\ràˆ€H³$1ú|)Ê)JR6èHÌQe-eÙ_{z¹5ÖÁÌù¶+ìÇ56À1bRÜºŠê@H­ô»Ç±:çMm«ß¿B4b\ZzƒyøñÔƒƒµâdú#¸BÍ¡«n÷‰¬>®±àÔ/2³`H­5wÐTñÂƒë\rpü@úÖÞŠÿÅ*BCXËcû#‚z¼ì9ˆQÝjQëqiÚÝùºÕÍ`ôP£Wà`¥H²˜Ä…€€š~}feôŸ5ÒÄ_tß€¶þjÀÛZ1\'ùI9ï‹Ô›ˆJ™ª£œH¶	»çbþôûÙ¡vûM…/¸—l¸DÅ}¸‡¬ÐNþÍ#øë¾¸Ù¯®Õ)(H¶ä…ýD*­¤ô‰Š©˜B7¼D×¼«þðcÓŒ$®²åX#\'óƒPH¶åÅ\Zxl®báÀŒêÐ©òIjí‘?›9QÕÓZÃÓyáIÈVV;aé&i@H·Çr =êü©Vn‰LÅ#Îö«_\\AUîå¹	¦¥H…YEYWÆ¨ C\Z~2„oyúÕH¶á=DýËI¤öƒeÏæS–¡£øÔ–\rkËXò†2ArÀðæ¹?½ü‚L¨„<‘œÛH¶½Î¹òÿ(|Ôÿ¼¤~2¹ðtoÔÝˆ1+„FæpQAA¾üQTÍ\'_ƒ¦Qý°SHµóçX¾ÅlÝHIÓOõNãt÷y-h)š^Á®ºå¥ZQ¼ªòûÑ0Ä> 9\'ƒñI‡†H¶\0{{.æpA4g*a€¸Ø`?¹`[ÏÑ47œ¡\'’fpæý€Hµó‚hÎR-ë2Ùµõ¥7Uâ\0ïµoÚ¥ÛLê:Zy3¡Ý#äÊiÕ HµÕnÂüÏQSvkoŽ)9ÔK¿³ 1ÎwYEà$Ma<­ÀwO8Hµã$T‚ð]õÏ_]g4Þ¢ßcò˜½` 9b}\\4\\Pª$)hÐÇ1M\ri>H´Æ» /\nQ+12°W± ÍKdÑJFÀn©ªça?ïæÍZÿÝsW™ë,G«6•&oyÖ\Z²€H°P™µ˜²€u>Í@„·ð6Y¿™{Îò\"\r\\wîÃ¾ô¹\nA–XN(ÃÀÿÔ.8c\ZXH®Ô’¡p_2†à‡_åÙZc4O¦.»Z\0õKW•Ã†¥Ü³5%]ROuW»ŽMD\ZA™Î@H®iFU‘y-—ƒ¤ÌžêKÐ(yy•_¨\'æÛE—ðò¢æPhµÊú<}fù…Y\nG@H«ÕŸ*Ôæ3ñ\"æYëQ:Q&È¡gÝÀs5á<­t¡ŸÊC^ ¤ÌÔÎ¢nm”9ô	¸öy®‚ÔóÉ;ôí€H°O\nm¨÷?ÜÕì+œ÷GnqgÁåÛÎ	±êf°aQKEær€7ÉÁ$ÊúH°sÃ«MzµÝ¡¼\0µxo<Î’óMÙÔ©\0òã!¬¥ŽMÊ/w2_e9Dš\ntH³¶(Ò’&MØdvñæee^Dçv{¾vª\'‹¤õ\rùä(ÌFw“(+ÛÚ›•Ö H±‚íK³¾ä~IfÁ_zzõ–ej<W¬Iìùëß\".R‰Ö¦«ýÞã`Š‡ðÒÝ¢aï’xHª‰¦b5È\\!ùÓáäÕØæ\Z“\\CÀql²aÙ€^RÉ³îÑ¸©N¶²ÀH¾B¼Ü²L®Â>1;éü³ýEäÖ’z– žœ„Íƒ5kåuÇ¹%¨ùAØ…H¾Lþ{=æýÿD|+_…zØ¹°œ þå«±¢Âà)ñ½ˆ\n˜8Ç…Ég/X‰\\RÂ¬gñÀH’Á;-V´n­Y=Õ…xÑs&Š\nÀ[üaÞ±ˆ\'óJÀ—<®=uƒžè„×tàH”êTHƒMjßäSÚ;èŸÐ‚=’fç_ëh\0Öˆ]¡Ýb\'f\Z2¨ëæ>ºH”ÄT.fËûŸÊÂx¡×ãÆ~Æiäö8—Í~„]×—7Æòk¼éù«vH’îÈlìEì*×A¿\Z³0é4KE;ZÄ¼Dã°‡û}ŒBœÅ’ú<pH­7Ç±»\" ©ÊÖ6™àzSÜY1lŽÁÏ/wnöFO“ÞÜ^ýlã·	w`Û€fð,ÜH®8Y(Y( °”ýt¥tYÔ—ó·ƒ_yAv1(ã\n‹#q&V_üsD H§F‹æ4b:ìË§Jä[;M`*D·Ð¢Û*³Z¸!Î3`—å½H£²iT‘zxš§8„¯I‹ãólØ²ºãéhfnUF’%G¦ýe]ÎßøH¡Z’’çß Áh%Õ×ì˜\0Øl¥ÿÃ}8ùñ$€ÓI‹ò0j‚ÛÙ¦³±/ËUvUN‚ª²°H£ÒÊËö*àñ£âƒ{y‘:pæÃÈ³{Ö ky_Õ÷aä1¦rìÓQ\0€H¨\"ÄuÌ›°\06àŠèg¹<´?”\'h|Jè“w*b \rê­%hS—3]\"–H«Î•AUM?§ûÏ$œšw4åá›j0ƒ&Õßq¼Ð9¹‚¬Úúá U¢¬H®—o‘ÕÚÒ §Ó, ]°>…Ïs’q¥ƒn$ô„°H®µKhÛ^ùD÷ÔZ”-\0ð¶ôÆ8gM‡ÚŽ$èª-ˆ£€H­ûö9ÜË†Õe—‘n¶`÷ ÿ¾¨z@\\X8›ç_Rz¯ÚÛùa•‡SdH¤¦è€úÛ€sÍòÏw¬xQÚßÄAçñ’“n„\08Ù]`†ô²š°X-©FÎH Ïe‹y†ŠPÆD•«F\ZNÙ~Õ;…K–eo^•±34>ˆðÉ¶èOÛH6zPÚž|šãïý-+ü©‡hŠ`š†@86ƒ÷ACn¯q H6;uG>-Bk•´#É†–,‡(¼ò\'š-g°_fÏ0ÕÉ­”<y!_†ØÐH4¾é1E®•–ÃÚƒpR\0±AMßÊq¬iÉÀŒÓ 2k#nÅˆH7n¦4{,â\"úŒ»ì.OÑL:é÷‹Ÿ…/¼©ÂÍ•‘³=@cÀÐ|Y²ÆÎHƒ©§¤¯Ègü«}Ë$ŽªN‹vÄ{Ë©Rg‡ŒøÇ6–?ÅÁ£Â7H´Gsjnƒ4çŒ°ÖÎªÁøEß‰]Ð—Ì±¹íX^ÄÙæSÐ`íÿšëŠ™Fi÷_ Hµ1V¨Œï¹e\nvÇÃÝ§ùVð*v\'€0QÕJÆGe…mß[Ikó@nÈá[!ŒÊH³ÍŽÇ¥!W¼s‚<‰8y¶r^R\'o‹2³Âù¹£ñ`û#Þ>-­e;Ãv€H³oôtIbåõ/ûbJ—¨4F0‰ûûQ°±|9±<â‹7I7ÐjìÞh°€H¯«rª«ž¨ÃÆ=Ÿ›gBÿn<aøµîÆ1=]|± sÙ€¦q„-ÝëÑoîÝB1‹.ÈJ&pH§¶FOgõ«\nì\"óha…âVà ¦õ\"±M½xpŸr¼Œ¼‘º˜³F•pË•±9@…H¥ý²Ä£‰GŠY%MûŒ#à‘Ý2èŠ¸Ê>Ö‘uv0¢¦¯©ž’\\@OºÇãÜ¼ÑH£aŽ“ã@Û•¯Oe”…œ¶˜|Éìœw/kÛ>¾çmúLüK¨²Ç8å>`ÝN@H8Åï„¿óeê@orˆý˜œ¼Äý>ZÅ\\\ZÎzxôEG*Ü.H®bÒ˜PšÐÖh\Z×ê…\\\\ìiX€Ã`r—sd_ÇOw+˜IH{äSõeäŒQ¾A–h#›RlŸM¹ð Ý’õ[”«}ìãº€HŠçèÆm¹sYôóÕšÙ O.J”pªS‡žkO“z<âƒ…š•:. H„ ç¼x¹†_\ZÅýÞ/:RBâú»zÆ«î øXÃcMe–au–F¢@Hµ]¢2°¦Ê$¢î(³–_W«•µB#Azf2‹p”:°|sî¥wŸÕ–az]ìläFH´ÇêÁwÿ6T:‰nƒi,RkTCÈ¹¥r‰˜À½Ävv[W€Ox*ÄÆÅ¬°OggS\0\0èP\0\0\0\0\0\0\0\0\0\0\0\0•ð+ÑB220,.*5--.0.0270/--0996-+5-,763.1..222*184+(..%\'%##!\"#&)\"\'-)&$%((\'H±T€Íèjqóöb?*ÔJp‚CÚKwþ\'Å¦À¤É\r-ÖdÕ³FáÂ@¨=0ìÏë“gH¾h¨s´aÓIÉ®ÞuX‚ƒfo } ¢Ó†F¼àB\"EÛ÷Ø=¦ÂÐÏÝ÷¯£ø8H¾<Cwˆµ½!-òì`AcˆÆðg]\r‰^v³°Ú/D¤§§IÚ±Ää5µ­ìH8œ…ê¿XOöCÐž´XÑˆ>zVÙŒdª0#ÿ}ƒ¶ýˆoi°£L\'¸ó5%s\'àHÒveÙ ~Eª–ë¨ùø™®„Åk½Ó¨þ‘¿X÷]Kÿ¼ˆ>,:.”›wÌHƒÐ‘ÍŽîýáŸ7r]àGý`©ç`jÞ¢-8ØÜ¦þ–J³·þÄ÷Ä@Hª:¿hò’Šy;LÂÁ«~¡eK\\«½†SšèJù7!êßØÈ—ö?Å# Ëô„:ˆÃ(H®¦˜ìEOíŒÕ@.Í‡-A–…œc‹†iëby7waÜ–´+Ýì™ŠëH«6î‘Íæè&kÐA˜%Ú<r¶‰íb–ï—Eª^Â_|\'#Lì>¨C=îSšv€H¨åÛ@•Ó7	1°éåÆ¶rÃ}(2 Ø£ä.ãÐ!ÜŠŽ0©oŒBQÊ´ãðH¦.	zõ»¹hÖvXiä*&ˆ}(G6D)?&\'ifaÈƒ¡GSè!bµ9Îù‚H¥=ÎÖà8V¤ú‹\"µR*ëè\nõu;F’‘9ä¿Ï!æÞÃÔÇžYešmAH¥€È—©<ºÜ±ÒäÕR°òü8nƒ£ÀÐŠ¿èÂéh7Ç24ü\"¶ò>¨H¦Íæza¡è(Œ;zi,ÿùýYóÀ^r¦òç³Xqq½z¹Q!<È\rD¦};”SŒH«1I[\Z‹u‘OÍ¿ÐÀ)pœ6OA€¶0r/­´¨z_\ZHo7f)„ÌÎÏ ê\rrÓÑ]3ÔH«N·‚µŠ.\0;·Ašð¾9ÊD ¾*ÔREÁ¶Žîï1‚¨Øuÿ}¢HrY†ç Hªª÷ÃÞ†c!À1‘Þî›r„\"\\>n¸¯§]£SË[Ês7™w?ª©CYðH§Xo0ßž@·ýAìz˜Òíbžjƒ†c¡\"ÑHcœÖ­gßdÊçjd‘!@H¦+sÐÐì:\n`j[‹R)u%Ém|ú_†Nøó¡Ym´^ÃLéFÕuD¥\\²H¤²óDö4Em’V3$v2×V¹ÉÀÓg‹®[î»£Ó¡GíÝ÷³ÙÞLÅLæô¼H¤\n)}¼]ÄÇuŒÉ\"™É•ÖÝê—‘¼ºÃ0dîÔ^b•ù6!™èžiê[h³óƒ†É€HªŸá„¿£¢ 4Øœ>‹Ïk0?\0±T¬¨v°\Z)Ÿop]!‰g\\Ä6Ntš÷«}¬ÏZv£ãÌH­”ÿ*ÛÂ#pþ]«…C‡C“Âßm\rH¢\0§#ƒŸ4îÐÎ©q~\Z®‚º93ìX$ÀËDÂ0H°R6½ö’Zö‘ˆÿ¸ƒ:ÆwLèLÕ¬­>íŸÚª«,Á·³º°H¬^{Úµ×¼-ºJ?øæ?º€ëí†´)Q¦¬þ;qáE†•ÃÚÁQ°•ÝðH§5{øƒI€—-„²ÌzIa-Æ}•Ó™÷«BMDþøÚ¥÷Òì”1®XŠ·ßG$¥@H¥ŽÞD€?°é¦KêèƒýFsó\ZKâh`í$å‘*rÙOR3îÉ¼ï H¥ç{N\0þæR!±8†5ðëÜ,[c\rÅr<ž§\0‡\ZýÖÈ|êÌ€H¥%},0åzíÎa#ÆÞšz b¢U7î²úÆ„åîvU3M\rjÍÁþ›ž\nm~¾rGŸ$ÀHª0ä3MA³¯#Ò;<.ëƒ…Œ‚(dàó¬%›=pö_ó\'€h?†óyÝjâ3C¸“ÛGtH®Ã[ÕÇ@Åe%oYüé!áhö†|R¢Ì’SÉFÅ“~>¤·³[\0Œ¯˜¸zhÁ„T)A H°NGÞp4n™žÀT—S6•“¶ jOªs¯‘1´”mý~<ÂLÒ©Þ”=H°v`©ÚøD”C¢ð›v“ÜúôÌÃ:÷Ï©L?›Ù÷„¦ÉúY×NüX§þƒ-ú/6H´Å§íÁ§CoÜ×ÈíºÆ‚îþ<ƒ°‹yþÅbn†Rº\r3|3Õ*à÷@H¬o(¹\0÷UYûÕÐx†»°¤ªÛy^SôšqzÂöWx(Ô\"\'ß£–\\^¦Ðk\nf†H«Ý!G;Þþ‘Ø\0¤J $@‹z™m»ÑàKîçÃzYPqfQH©GÂ:-¶5s¹¿-9 \ZÙg¾¯FÆ€~Íqwèj6±x\'²Tð2©¡YÔLèrH§¶hÀì\"¯)‘ÒËsž÷}ÏÑ\r¿ÌC®)ü7­‡/JQšT½--›XÄ(;ö˜ª~H¾l½&Ý¼¯&(tîÚ5æ{ÐÏƒŒy½íÿ­\Z™Ùm0\Z=ÑpH£aUÈ^è 8kÜ•$ÄmiÂëLÇ¦w‘É¤Ï$\0+¸\"ô\Z³©±uóç½)oXH¡ÆœPí&Fâ%%ZL{qÕÃx„U±ÌÌl±‹Í<•%	ÀóŠ]Y©„VQõ+äXÊ€H¯RTjhNð8¹¸cŽÊâròÌ£dšxº¥…~âr\rÙÄPL¯PV-qên¡æ*4ÇHH³¨Çu8wÅRWÛz«é78–(p½cŒÿsÈÄ¹íQiŸ6I5~3FáèH²\08Yu-å±	ˆg¹ï…€Y­©[Õ”#h·Ö“ºŸC ^{Ý€H¯«ü¥‘2ô§HS>ÆAöx¿íJ»s«ô<Vwv%,q°kv‡Yà¾ÅŽÂ¤Hªªó‘>ýq[+AõwXè`&¦²C+µ0ï«öfÝÒï¦ÈOßÔ…H<þÄÇÌ.§´\'çÐ£á¬7åD\rZû2´ñ~ÖÓî@ØH:EÀ\"@!(€ñL¹A˜¬9	> ¤59=›ÇÇÿ•\\`ÑV MpH8	ÃS)BØ²-ª÷ø“>‡£!ž‘Ã*–îº‡>Ìƒ²fH7O?§×WÌƒƒ\Zù\0/ë:^Fþa`8\r¹÷dû¢‹‚€H6h]°Æ‡¿@Ë ÀT—µÉfS(ˆ5[(1Ep}±`H4âåÇA&ƒ³‚½Ñ€JVÂïzßÉ›eˆaä)æ H2”\'G=EP&Tµ\Zˆ­n5§çFx9ChU®œ}oî·óÒHÄ â(ú<PM6L! Í‚#ÿ¥Å§òj¬‡0}Ê~œÅH/è†ý„€nä/†.wÍêÄî<ËP\ZM–Øƒº¾€H/^x¤Ê^A‚yÒÏbYVSŒ†\rÆÇÈ)ÐàÒŒ¡l`phH/*Çîæóy\"Ä*kÅ&ínz\nÑE»ƒinð$¼BcH-iP@ç[§æpÚöÃÈ‚QN þx~§-þs*FákŠ\rˆ2Â¸H-Oãõˆ±ãçhdÌ6¾žWrƒ\nr?‡ù¹4xU0Ì Š”“ÓYp4H¡û²Èüd~€{Äù¶T‚Q¹ý´Oò³:‹Wœ$ÁIwÅu^Ó8?9¬H/_>‘µ|Î¤Õ÷7JÑÇriKWË¯t ØÿŽJ~æ¸Œ•]ÀH/_@ŠJÏÚ$5§ù+?!ù6j‡›ïÆã™‘HÔN¬Ô¥,H›	G8gž55ÚÖ¬‹Ôl%wO“YÙ³ã|ÿ¿Ìœ·xÈH/_÷HÐTˆQIßrësg#	“Ç_Ö!$¾Ý•W³I×hH/>Y(qÇ>3wªš‘~ddß¼%`L3.ž¡›ž0èWfM7Új”z{H/^\'å7…fØ5äeÄQöðuöjE©™EeÖ[@oeñªxAç\\','ajai aliachiwa kamta kawangamanda.opus'),
(7,'Yo muy bien','Nuka allillita','2022-12-05151231111032todo bien.jpg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨d\0\0\0\0\0\0\0\0\0\0\0\01zòÆ_+&(!&!\'+,\'$\'\'\"%!!%(*-#*%!(%-&* %##$##\'1146<408=01/7=8*,\'&*9661//**52/2005016=-..&./301,+,)\'HäÁ6ìÅ€HãVÒ7 ø)x(‰‡éM¦³P€H†•b\\”œÇ¥ð¤îwH<;ž¦fþšÀë6z›é¥?{<šIPPH‰É†skïè$„Ï^DÜÂ´—¹å³ßê÷VíÒ9ý½–\Z\'-ØpH‡ø>È€ùû‹8Òý¸iK6Z¿¨Ã	¹ìÏ£·ÕÆÓ´ÞØÜbàH‡÷íO@¿;´ÝÊI«ÑhI‚æS÷¹TÁR[åx§V«˜H)ée”z`•ÿˆOÕûfMñæze Íð‰e—5½\0ôï½ñEåX Hˆ_ø™ºâó×ÐBh‚?%ž˜vAÕ=±LYTã6\rØ¥&Hˆ`-@<›É¯œâ»cÐpI>â5a!¡¦°xVÉ”µöÛ’*Ä¨H+­“8jÐ–ÆpU‚\nÊ±Õ€µ¦óÞ,’£y/¼ÐJÁWÃ@H+‡¦ì5Æ	rQ~Ê‹e18†¼YÙZ­‘àÓÛ¶[­5BT”`Ž(H-Vü0+B¯ÎãG9Äñþ>ÜT1ÈPë%ÏØ¢„–\"ÝÔ®\"µÐîHÊQÁ‰ñ0˜ž&+Špžy´±å¾ƒüŸ2;ðä¶n0õJH,CM^Îtf)^Vm4;	^6êˆÌ;@ÑXæèÆpIñØH/i~©*¶­;m¦Ö{PùáVGV¢ao(hVNÌþÕ¹Lm†Ho‚Üñ³ŽÕïl3Óâ‰&h00Áæëõ5ÑÖb`‡®}8H\0ë+#ëŽlÂO¶C¸§ll=ÏÕ*£]a•VÛ]‰ejÜKæPH.»ræë–øä<ªçŒ$·ŒèEl>¤è^à<Á H-vvf´GS‚Õœz7«©O´ÍFN)±œkT&VÓ¥†ØH|Ûu#ç­1.1’ŒQpÒvM\nšoœdçïP·0ê>\\?€H-‰Ð‘*BžØ§,ûŽyÃF,a}åDË—ê,¼iÆžm\"–£ä«H1QÃ`Oá\"3Ÿæçc¥	Q\nÁ!]#÷€%‡µ0w¹˜à’}‹¹ÈHÐß¥áÔÁÑ½§>’ø¼ ’ã¿¦,a\'ÆrT±ò ÆÐå.}¾\rFk$sÐH0åZ,&Ù°ÔÄb÷sò¬d3XHðëù«Î‹Ž• Ä*ÅG H¦¸KyšÝ—\Z%\"ÿ³™Õò^ÙÇ9™âa¥u¨²²÷ÞJr“é¤(ÀH3ðkù¤ÅŽÄ(\ZHþƒz‘{´T{›b–›ý\nè¸l¥HÒ}ÊúªaÖ`$çèB_ö¬-òø”D?(:Û` H1ÌÙaâ6,‘t¾È&{»û€]Íd‹ô•\nÎ¢‡ûí4ãé¢£%µH/_>\"pCA+¢ëÊ]oEö.kËá»š=n²JÖ›«Í\'ATH1ÔDk—çÂî?ïÇóû†€¬“á_íƒàåÆ‚­ad;”åÍûÁ ·òcýx™HËAàuhrÄmxéª• û{¾ˆ\'Â¿>±^NiŽŸ©F;H6Zâ‚ZvôlÓE>Õ/baºî°C<_}³ÞÀƒÄ§äíÊÞo€H2–©¿‹²³i…\'úò×ü½G\'›¨šc—0ÛvÒ´Õ H×(l”UËeKò®Í†‚Ï@þÔ+o‚üþª¼SÀH.Äótç,\\½ çLÄIÑñŽgÃð¯BP&¬Yc4ÎÏhH-H/ÔÙo$ž²™¢…æ¿÷_VÀ¨µ\"±1™h§ÛY~H-‹ýÐ®k9Œé•èM’•œJt~ ÀÜBÞ#ý^lp6 –É—ÎH/êçâ}è§—´öH©ïPçíVÈ1)1+ÎYÙÉ,c™ö#pH-U‚I ^n¿…^À,\r¹’k³§ütj‹\"kªóò’Y»3N@H,Ò±^<’D ß×[JòµmUxn„÷4½ô+ã­+ßAÓ H+–»î!æ\0œæ›ÌEp¢tüV7]¶Þ\\g©>ñ¡×@úf¦ÌËîáH€ññ(ßuC›ý_p›öI	wÌìéÔ¹ð“\rA.&Í4Ã¯Žðœq®íÙôˆÚJò^ H¡vJn‡Yñ¸Òý÷•nÚ‹™nÈ‹±¯¦,ün?¤þùH¨Ge7*ÊÁ_ÍP\'ÚDX H¤BoMËék»V–ð	¥#‘î_´~t•RDÇ-	öû\\»‹1…\'ãw_=X¿æaÛ7\rÀH«Jó¿ 9×ø?ÌÇI•yú/·JõM)î…f+uŽÊt÷ˆ•2úÖâ¶]Y¬ˆH¬Ü:Q;¶N¹<bÁ€ÔÔ]×Ÿé™¨t,À¾Wt×zÌyõç€A¾š¤®N÷ð¨„ÝDkHó™Q²€H¬Æ=`zŠº¯%Åf:íL©ö#®\ZÐM`AG8F0óÃêÓå×´Å—£ÿ<ÄÜô´b¦’°Hªð¶r\r6ßYZdiÕjl{q›¦r!Î±Í®…Š…‹™ÐÅ:½Fòr“û·#hàH¤æŒ¯!i¹ük°àÜÎ€Ea$ç?ó½j;]ü¨vÅH–‡‰EÑ\ZþOo‚FÓÜ×MK¨”·˜ôU8 H£bvâEdºN´Ù2I—bW0Ý%¿ŽÀ±5ÌìZ)Ú@e´“È1¿á)I×ÀB`½4=î§ÍòÁ4A%ÊŸ\0€H Ñ˜;º9¾úïNké­zR¦œ¯C?C‚X5C1ñ0©ÒW§Á“ëBbX|L»$$Hž{Z	°Ý‡‡þ·S	C«÷Èøw\0Í!ÓÏr‰iÎäÓxêE%„Pr³b.Hr‘ßæó­è\nÏþ\'Ýxf%Ùz\nÿÂ½/ùŸ‚{Î[C(gæõÊ÷\n‡`HÅB³Õ0‹Vä~Ü´ëjè{og€˜”$½@ñƒ‚îX;%ÔÁáü­:‰\0˜f>ÿl’ëºH´8KDQVÉæ(xBžË¹„„/›¢ÃÊã«1Ú£Ž)à9Òy5J`/:™±Vþ`FÂä×‚½GZÀH¯<âªÉ€3°Âgc-oÛì`?mÅ&¢õ…¾u7DºGÆ½@2*?\'?/ç³­¼H=~Í²‡unH·ÓkWTýù\Z Ç7»iÆ3Qÿ>i«™x‚Èò>ëläR\0 H·¶«èþ#Àhåþ\0ø±˜cí\n\"ÙA€Ç­2ð³¾Âf\"†2#ç¢ÄÙRH¶ÛÚ¶4QíD–e±y)	4˜ˆÙ²Ã$Š\"Œf}tƒà<Õ€H¶æÓò†X©ºbº„=‰^Î5ö#KhøûRR9sHµ·_>ä—ßƒJþq×†Xz¹ýiPž“å¤ÂÕ5Î4Ý¥©d¨ H³z„°ß²Á”„R“€z½¬OR	JkÑ®èÖãM+z–VCG¶\rH±ä;§¥gk´,º©É×:lçì(~xØ,3§=—³š8Â©%LUK#„­h,Ú(o2¬Np6ýã H°Q%#2w]fœPµ#~,gì¤8ØœlºôUZšäÃ½˜‹‡S|­Â\rãb6ðÑ7Ów9Éò€H¯ÃTöxMw4¢ ïòÍº]ªsXÿt ¬ÅeMØ:Éø­KõË@›SÈJlJWÖòÞq÷H¬e\rÿä’¡BJ~Hè‡ŠGg\r]ÏWÊçdd`K­ˆP’®»àó\Z ;3X@G0¶Ø\\Hƒ\ZÚŽðÜPà°ô¿¥[eŠfæÂßö&&ì­\\:Úì~nº½²—÷Fêò@Hé5l¡à~—ëó¦\\Èjá%eðPN=xÐ’--ÌÃ*ö¾2ïýô}%zy¾@HŒNžfBÅ)ÒhQ‘…‘z …/Ñ#“äŽ•Úé……?õ§AœB$rEœH6¡’r•óÌl\'¬;øªÙpŸÅ´¦kSVzÀÈèãÆ\'€æéÞçh›H‹üž\níÄ\'¿ö8yNØkØCO¿’ÕW53™Ã¼äe\Z îzBÚÙúcî}Nv… H‚áøUâ­{äI`\\Æ„LU<ñ®\0lˆ\ZÇÿ[øªP³€xÐ|¾%Æ–¬ê°º]q¹lHƒ¿ûöy8w¹¬YJzŽÝíXíè¿;gÅnþ#¡›š´$1F‡ñµ0£@•ËG^‘î¡H¶š—»ÉRËHñ²þïlæloMº&ðIÞã2\'Y“ìý¹OÈZÒUÕ÷*ZÚÛS§€Hµð>,ˆKdóæâºOèÏEOµ•2Å¬>DáZÉ‰AB‰õâ`9ëTÀšî(g¬€Hµìë)‘–,ûE4ñå1vB4VP©P»p¯^9ÕBÉƒ_þV5Hô=W€ö\0È-»ÀH³=<Ph\"§Ìo5Á×nµÞùåm±;¥t1ÕÿLÞÐÜ¹Gw¿L¡u\'m¡šÛvÐþýWH±‚>iùD§ÿX	\'w¶Œþ9´šKÊb.ÎèÐAû\0ÆqÃFAIêPXP€H¯Ï\'H¤­@nô^KSZB7è™jf‡‡¼ØýwU×>HrÜØÏº8@!qó,H®²Í¾ñÀïãoÞ®(EŒtÈDÇ¿4ù€^VpOÅÚ–€zv­„Ì¸b`ì\0!ÖæI=@H¿ Çm•$Ð®6GÐ3Ò.­€\nÛÌöÿ—ÉŽ6–A4h/˜¼Lü2JkvÎÒ±#‡ÊP¶a·JŠH±õq]Å£z°½à°¡­Ì4Rõ‚’m-A\'€Q~’¾¢áåavý³Êà}¥üH±æÞ)Üj1ÊðFÃ’ú©£núÉ‚’L¬OÎ‰RÙ’Vyv¨_ŒÎÈH°ª¿<×»ÑO?.á¬(jæ—Ó9w®ey¸Í+]“\nê€ìJ˜©}­W¿„õ\'ðøH®ºgBYfz\'H?&ürón´`à6í¾®Üi|aì™¨­@ÅðH®#¤Áö€×º‚æyž¢»úTP§€Ñx±!ÚAÕ0¹+ç G\Z\'ixÍA€H¬ý5‰4gJ„~k©±•Ô¬Ê	/Ô¿\0TI|KYHvïÂ¾ÂÞ†æë	H­xG¯µ\\©n\"í*ôjï£’#ˆ–v˜#\rAry$%¸»Ÿ”ˆo÷ÜVp{à\"PHyH®k•Tlík]ƒ®]ðÉˆ]Ÿ—ªTi+É»h>¯Sh@$»oèÂwœ[~¢O€H°+BÁ¦œó›õáœ}?5\Zð]EÁR¥lr¿wz8$O/\niÈ†êÊ¸£RH¬Æ FŠ@ªGÐ{ÄMPJé–ÁºZ­æý,ç,zŒo-è¶úd»œàH«ÌYÑøfd\0â?°ur¥\0ä7U±æ|©6•°éO3Ùæ¨ÐÏ²ô9Hî=Ñ£ß‹âWETBÞuÖ=SLô>b³`ƒzH3u)Uà6rœnH²H8¨¤Zl)-Ã€tÑeXQüòVdí®•âÄäLÔ—£Á\'ÀH6s\"†„å#-²)ügÀÍÁ›Ú½`¦qâú€§ís«ø²Sã]0ØOggS\0\0èº\0\0\0\0\0\0\0\0\0\0\0\0ß˜M)#-3537:1/9,\'\'$+&((\'./H6ƒ\r[ƒ×EI.æ—¹gá}µ„Ðê@P??Šþ0	)ÀEIøpå[\'$HkIÄ¿:Rõ5ž»tgl{!w^ñ‚£>=j<mº5¬ HøÞ{‘á§«²…A2Íômè:®6Ø\\\\Ú‰?˜æÐ8c+¡¡iFÂ(íoH°ûàoÔ•ÆIÓX¹Á]‰7ªW[´Ðm\nêKsßìÄ9:Gª®‘sµæqG€F`H³o‡sÐ\ríM¯9ÝçÿFÓLë7NýX<Ñ#[·Ìò™“àô¤‘¶ƒÒYÊ¥—¸™ËÌH±}€®ÒŒ‚ÏM³0N8iøª2³#¨—Œ32ô:­Èyr¦³CØ‡ž{&Ã!…ª;´ó’QH®™‰ú9ÕT-ÇÑ©)\0Ì÷ýÎ~æI¼÷É(B5¸‘ÿê\'õb„<ÅEÛ8æ€½jÏéŸ;Óô@H®µŽcŒ“¦—i‹k‹s® ŒžZ5ƒwéHþgG~3|-,Lòv—W%	²‚`©3ytH¬êÐÞB,Ž#ò%Ü°R¦›ãê|ß4\rÙcïq„û×²ÅW5àÄ°fnuåFjsH¬eâ`ë^¨{!–Õ¹ÃGê´ùÎó˜˜ñÑ¾E<«ÕK»ž¯Ø…ä”\03h4ÜH¨ö\"»\"|D‚}å…‡éƒì-øšÉgqGn».d˜ey·–%æq@¥M„¤ò¡±Õ¾aá¨R˜p–@H]y\n‘ÊG‡ËO\r5\"a\'¤-Ø]~f˜F`Tn¯4CÝÙ©@HÏ>¹£IWdh+)Ã%uMcÜ.z®Íëür£Lf=L¶›GàH‹ÝI5ªbÄS¬åò¹“RÍ¼µ ËÔi(Èi´§¹*ûåPŒµôpH7KãÔòo*Œß!e´QúÐ§ôû\0RÁ	†ÀväÉx\nHŒ‘ÇÌäü«ôÚ/ºö•©Ôñ‡Àßd1|\'	øAdøûV\n•QLÿˆ H7Ê>©Ù«{Àë ™Ò8Pâò”åÁœ	ßEuQ6á7šþ¯1Ô˜€HDi!X¢ýÕöÐM¡½C‚4^ ä¬YÔ\\PÀH3/€\n‘Å;Û¯ŒPre2j§È˜ð×’ª•`áS4öñ‘WÕJ•3@H3/€¼p*¶ÞÐÒ­+^PA¨‘ÔqD¿HßÂêµÛ^áã°\Z›Š/¶ØH2”†Ì,é´‚žó§ôðÚ…vŽ¶ú>žÃŒÄ¥²¿Ãÿë–7™4H14bÜÂð¸dƒ€š#¹q¶i™r—b‰™C’eéÅZ;ÐáŸñw#/6ÉÄ€HŠu|Õ¯å€åÞ²€±©î¯Ó^Ü\\Ô0´%ÕÇsgÂUn.Ÿ²«ïÅ\":ÞÖÒý¸','Nuka allillita.opus'),
(8,'Â¿Usted como esta?','Â¿Kam imasatakangi?','2022-12-05151251809617estoy bien, gracias.jpg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0l™Àh^-4-*&../++.\'++)%(,)))(/*$&&*%(\'*%((%\'+&\'&\'(%(+&4)()5,/6403582.3&*-375\'10-077,/1187--43$\'\'(34HäÁ6ìÅ€HóÍBq(l;Œ9\"p|æm)`H€cSÏKkÙ£pEÆíóô[§\ZD¤èo ¥çúšUçò†h†+Ÿæm¬–ö;ÀHŠˆ@®‰îï—¢\"Û\\nøå›í!\"†Ÿ¢–(HçsuTÄí‚Ç·¹îP¯Â¶H‹’ÑB\0Œ¯Ðþ´îÅ iImýj\ZebZB|ˆœbpÎÊG—§? }Íz|HŒ	½©¤i¯ÙT!¯WëY«ÚšÐw_æµçêv^»f¢h}ÐÍfkë¢ƒ4èGHŒƒÂÌß·Û€eÊ•èÔHo4v8!4\\º\'ÐvPäï¬x½F¿H‚\".vÏ#¸ž÷šˆç ð¨}æuÂ³}ä”¨>ñÙ“–YÍ.Ôr·ö”a	>Hv›Y—–tDûÚ¿\n×}ƒâ§‘Ï„ËV	ûn)bŒ[ö±ÿCstÈ¨gàHÌõ±Q3Çx—úv8\0%©\Z¶)¢o+Ð3Bˆd3‚OêÐÓëèþyÔ>°H:yªÈCÿJã™€æWíe†] ñ)7«4O9.hp~xÌ=Y®H;eò4¤‡‰Åªª„ûû¼\nÌŽ=úxC1<žÞ/dV#ã-ƒØ=¯šÕà»€zH<6«EËŽvßKG‘ésS…œórLY[áüÀ26DH›z|;tÑ‰–`Þòv@H<À†}ƒœ³T/6¡ï9gÍ~sû¯®ÔÓ¹´“þÜÛôYÅÓyH<1æl\"MÓP\n²$Dµ©’öb+ºw=íXíÿªNî#V‹Z[W7û\'tH<6c;ì¡‰5t\"\"Õ¤êr5‹Ð\0i§¯ŸúDò‚Ú-f*`r“H<6f3^ÓÖP¸;@#ÔMð\n£XS¼XÆÜ­†^êd £³´AeuÂRH<½îs$+^zøu&@]]™t7\rŠû^Áqu6Ü0¥ùJ÷€H;UÛ½ÿ1 æ¦ñ¢i8¿¥dDïÌ‰î–‹TnÁ%WD½›lÎ´šH;UÛ’EµN²LHJ_*>ÑYL¦‚/d?pý„·v{ÈÎL±öü/©ÂTŸ‰€H;khA·5íTÇ°¡øµHJ„T cÑM!\0]¡ê–—»Ôp±@H<pä¥´+Ä¢¡#<H¢›q\ZíÆ&Y…Él\\Çújy>7@5ßH<ËI}!^Ãï¶Ÿ_’Ý\0¤ÍR\0üºBÅN\'P¸]Ï·×Ø‹±‚’€H<º«”^œU-|¤Ûsl;H-ú88Õæ…	8rìèjz>ÅŠúáÀ+€H<&NFô*Xùù ÷¸ž†ÿx]\\,ç¢|íSÐ÷\\³=3*’žƒÇzø(â.H<1æiðS\Z¦>ÌŠálRU†y€°²Ý~y÷–¤Î[Ñô»Î>žŽ€H<1æj¼£ÈbÜ\'$)€j’½ùLHê6»B•ÑRë3>ñH<&NEm,ºÐßœ,6î%-~ÿ1£¦Z}®hâbåZÎG?ÕH<6GFêà¨ÊÊSÅ_s´À/£‡ZÔ]A$Ç•QLŽ4½8H<6å3K.Üü[ÔÃµ£ÝúkÇÉÕïÞF\"ÊÈ.âzib›‘Y`Ñ	R¡ðH<º;¦…H³Ò%˜<y5e²«Q›KÏ?>ÁÍÄø§œc…\'n^¹H<6fÃFÉÐÂeöâðXj9Á9Uv°ùK}D\"8äw¨Ö6ŒÇ ÀH<\rå¶¾·cÑ‰àÙ±&ìŒ­Sß…3ËÚÉ]*Ír ´@ZúH;e«ËNf©g,ÆÈÙöhñçãƒŸO5Ž+ÓòÄ‚žw¢žRÙÒ\0\"Â€H;aøÊ·É(‰‰ÈÆ´›¸ï6¸u%”ÑâÍ•ÏÍ@Õ8«3H;*[\n¥&tSMàä|;\ZN.î.¾W€â\"Ñ\\\r1_AÎ:5“biH<6bD…<ÑÌIî‘¾CÈz±®Fx¬JIÔ§TÌÄo4¤A°­¹¦9€H<6mÈ,“vÃˆË—sE8íYaá^#)‰š0ôµÂÜ_á¸úŠíðH;ð¤Ê¡S»-J¼ÙÅ	Ï¸>³ƒÜ,À™3Á´Pup!?Ä)ÎH;eýË|·_WÇÿœIÉ«AÕóÀ~ôÒ‘Eý¡ÔóXóy]›&ÚN+k7—¹H;fxÅÍ¹e\rÛ”!‹e\rÖõ\'—ø‰G6x3Ææ¯[l0H;aøÊAa)CìÐ2­Ç³\0ÅÐøàËóQ©‡Qø@Â×´VÅH;aøÊP¯ÔÊÆ<+U(1¬d¸2Å‹HÅæ1xwžßßaºÔßÞàH;eø(dæä×ëËTÑ‰ÿ–,•U)úQˆC»;Oðö5\"g…ï H;eö€H_]Ca«fO.ö•¯,*Îr„ZXïE÷N¹6SÊdü¥u¦Í(H;f4¥Ã-ÂIfzª³ì£y‰ê|ÀGÖ¦ YåÄWŒ)OHH™%9n§!wL}œ&í’q3Ôk£¿¡’±]R¦‹ÜIü6nó H\ZŒÅQú©ÅÆôÝr&hl*2mð\rS{\n,uÐòeª2D@Íx úvŒ“0H?bÏ¨ê?Ÿ-(Œhµ`“}6‚?z]}õV]ynü«Û4àH¶TÜ\\$µä&¤î¦Ô,Æ-Òáñ×E+gÞ!˜‹s×¢½Pu\'ËÐöÒb‰¬ŒÌ-û\0äÏ Hº‡Ô•1‹RËnºmšOätÅ²GçÄFu0pÇH:=£&,x°HºvzA¾AP±YDÔÑj®Å (/Û¯¬k8Kà†Ò¬;ì›ï÷Hºhå+Ñ¸Ô&•ìeS–tÙTêlX¶è·j¥DmÄ\"r®}Äš¡€H¹¢Œ0$\nç4±‹ÊQß˜Ovd–ÙÏº[0$87B Ûš^ø£§išËœz«aÖÄG°\'5)ì`H¹”üÐ¢£ÃqÆÿâ3éÏŠÝ¯iî‰ªÌ»eŠï¢Ì°mÕ£âsÌ¿ß€H¹J”àßÌF…ºN–˜8lõ’kê}ZUi\nVe@–¼ýª0ønD–•4cÄ˜Hµ¡t“šÿiV³›E îÙþÝÖ¾§&ð¦„Nà¶/ƒ{¿äÐ‹{lò°–zG3ò‡¸ö H±}T¼”°ø>j½þO®hË\0œÞ^_!Þõ¢·Fï7j{™Lï¦T%^ÞögMãe\0\"î@H®ûX qBt»N#¥\rÓÖ(F8lhgúO“»>¦áMa8T¿ê§ŽK:˜H«5{57Šl·šß4J4Ò¶upð\r<	ã\ZÆ\'ºZÓÃ¯¸ÕXË™÷Çv”íô±ºôìH©ŽKa™1GEXn@Ç±ÐxOPµ•T>MÇâµ	ZWyxÿ.Ìv@¶iÁUNB³6€\\H©–/rúáKøÃAš˜W*vÂö,ËÕB,WºÄw««‹¶¯WVœg0õ1Û«f;oQé2¯9(H©v¢—÷jöÛjøÅEjÕÆÓß&\\		ðÿ41óÑû‡ÂÉljã¤~¶\\ÈÒu\Z°H©gü5IŒù‡ª¹w™¨0Ú”.jBåR±nÈbâN-ø²`n?»K×éÞ~ÉcHƒúÚ¥l*\\Ø¢¹KOögäùÂ[4y¾„tÉÃP“:púœÀ”ÐËÅòcžŸó#£šÎH<¬þŒK×ûÈˆzí~]pª¡Ò?ÚUÛ+*¥B9w|0©aSH<NéBÿP;aLãª@í`9(±a§@(‹~k‚àeŽ†ô]‹Ö\"	Ã*H94ÐV7wÖwŒ„^Æ7ö¾×çß{—´…¢AxïfÂ×¿ç¨&w¯Cï´Hƒ3úÖª™“;Ÿéò¨zvŒÕëÅC83<3:È¯©D5_)|ŠŸ®ûEÔk.á­@H®îGÞ>,=Ð±á~ØÈ›7ÃÇÛïß„öûb8ß~d\r.|Û€?ûÃá×ñ5{ÕÓ¯® H²ˆ‡@Ðë™u\n´„…þMŒ\'\'+{SCÝÿ{þþá±ê,MÓp—/ŽœY½”òtH±õ$#7¶Ê\"\'üºëž2G4-2Dé;‘ ƒ¬‰W‚AJ¼’ÄH±tñŽïp§V	L\r&&XçIçû½×áu¦ná­>røxÔ{ÏU6û‹ƒ¶ÀH¬üÖ&˜îÛ5>täU7â[fø+ZÁlß¹ªF(Ÿ¬cÇ…s>è7$ŸÏ\ršôÁX\0H«)—z\"@ô€€]Ê6.é§6[–\\¿÷¼»ÔþâvÈ\Z¸tæ·p¶½r@H«Jì/P\"bá.âÚÇé½)«,\rjÕJ|ñ<\'eá&\\ŠW¿4}¯ÇøH«Öñ!^‘(…ÎjÊïŠ2E>2F—Y4±re€Â”˜’­è|T¬‰ u´UsxßäZTÿˆ´†r€H·3Šyài+¶Ýa\n^ýÂD,zŸ„}ÊxàÛÚ[ÈA’ð›.¡á[[–pnªùdkÒÃÍPH¹½í\\”¤ÉêÜø…ØJf›¾Ï‘¶»4J}ºËñÁžG7ÁlC*y\r=QÒHº1aâN™]šyFÁ+® OîŒCÈà[a›9h:L’;¤§12½9¾,ÆtAµ}€H· rÐ6ÐŽ|p6Ï@>ôb1Øææ8g­&\\)åŠTéïai_Ã(½kôÔ€H¶ØÛ÷;ÊÚ%?¬)49b¤Í3“… <÷¾ðÁZ|.l\"÷>Wú¢¸)|(„˜(ƒ2O`H¿ŒôœÁWFbÏ±‹WÛÊ†Ò]‘DäB&‚ÇÏŠ$ï¶÷N\'K!GŒfñS¸M=Ûl¯rø¿H¿¡¬y?K­9ñÁ:/ãÎ°UÄîs˜€`\ZsühXß1;oœŽE›õ‰övç\Z°ðê;F³H•<ÕVÃ!Å)½àëê‰šû2{Ã‘…2ßðÜÜØÌ&%-äc0H“.\"U{vV€É(˜ÃÙÑl\'\rørS·•ùííç]äŽX±QÐH¶Ù_ïP€U¤ß/=Lö)òÐ¡ÀaÙÁx’ ¡°F­ø½•”ãŒ1cDì%[`°€àHµ­$: %ü’2QÀGHƒÑùêÜô7_7°ìŸÿ¡zdkÃ@Ðƒíñâ¢^§Ãp.Û>ý@H‘öh#u]ß-E(ß>`Ýu˜ÆÍ”V›q+Î‘ºSy‰îH>ƒhs?…X_3FÙlLË5ÍRÜ€q¦Ã&tNJkœ7ŸcQ&¨H=Zª æi+÷W ¤ì¦[Inà’ 8}/P~ò«Qì ‘Ù\ZH=&‘÷?\'¯ÓetƒmHôÇ\'¾ê<\0ä²²•„j´½3H0ªTò€H„~þª±\Z49ßJñ˜G/GJÄ×B-‚Ã7äül’éøÁ Sæ\"Dß¸ïÿ!ñäHµ((ôÑÛÅhG‚Êš³oÞU…[UÆ–ù˜AÔSs~­;áòŠ\"ˆ•mø†U?\" 0üOggS\0\0è#\0\0\0\0\0\0\0\0\0\0\0\0Eå`4,-4)).-50,(20442/+4541.0010+,\"!#(%*#$$$-*$()(&%)))+(Hµ\\$ÏyF’Çv¡ÒCv=¦òîV<2”÷DÜÙ\'‡\0!(·I¨Y§[W,Hµ-¸”‚¶RM%j³n“KnBðßoO¶ª§Y”\0c‰Ißy™Äßùõ¹H¯¿)Ú®à¹6\"¶k%{5ôÌSs1øÕtq‰ó¸æ!&Ä3r\0ìÈÐ[¬Ý§õ;ÀH=Ì¡¿W‚£ûœq›É~¿ØMÙ³G÷>9µžòÛ„=\"m23Øµ€H=Ì}™Zz;I‘xcOÊ\"[l©]²÷¨2Íx@q«.CPh[²M~íìHƒŒ0”!q—/Ñ@ÂX85øŠ[NÞå—§Óî…Þ^TÇZ<¦Û¶ø›ïy ¤H’ö´4éœ·Íl”M¹\'[^ÖaœÑï©/àœ…\ZŒÌ—“_p $tšõ~H´_üiR?:1äø×¾òG» €yAî§Ã¨‰O{òÛ *¥‹%×\'ÓïdÝ H¶ŒED†ƒð¶ÇÚ4ž‘<}Þì¯¸Õ•´=µÀó<LF|ƒÜƒ©u²a®êXHµÿgJÑ	Y|uaÜÄUñL\rgQmx‰ISÁÂ³\rnŸõï=ë~éOì€Hµ³vT|Û³‰˜8‘}ZÓˆP¾%`çf~,B«YNÅUÅÆ¶†ë¸Hµ•‡€7¼”/ÚûÇ­3àî$;Faf²ÙÌZÉ¼s0ì™HÌƒöÜ}ÏòC8£ØHµ\0\'\r\n‚Ç3oÉ\ZÍÂŒ·ÉAòü@!?*VžÐ†f=J¼8^·82‘ó ¦ÉJ`H³”“¾M\né®æR€èPÀÓ*8kO§\n=I-7ëÈÃ»š¦ˆ¯2Ö(áæÔôú©=›¯gH±„±Ñ%\0$ô½ø\0¾PdCøœµtÎGá(\nV«çÛ¯ct¾£T(&CãeµªH¯×uw‰ûª…T‘ñgAeÆ{ºÚ$E}Þ>I:¥é7ôbDX:\ZËß#f\nßã¯$H®`ý>”ƒúÉ˜Þ¢8óÈ,Ÿ%@µ 8Èt¨À´YX¯}amÅréãKÏÍ¢€H­vÎ#jàUO¯­ukÄ¬ÖŸÐ>:¢Ë»¨º3dmÄÏì8:Â`H¾ÏDRöÝá‹ÙàFœ¤—¢©+ä2z¤´ôÓ[7¿sT0€C^Ã\0¯_` 4XŸé9/ÿ®`H¿LEA¼„™ÜJf§ÓQkõFtkYƒEy˜WLÒP„Õ¶ Ðhíís|3ò5CÞ©-€H³¬6þ½’s÷OW»s‡¸9äï]_1ß®¶Uœ\'Ó@+Qd¼L:-”šhóËi6¹gHµ!¨\\Z‚³žìÝZ%DlŠÏÿÛ7³vš°£vID˜oï“7Kö‹H? HÅ.Á HµXoz{Và%\Z)/v¥xyœPdh:Ÿ_±6Y.áíc_üS¬wŸZ‚·ÍnH´þ?n±ñþSù>°]wÕîÉUŒ	ßá°ªzxÓsÎ`bê[¾cC\Z<·¨ À¡´+H³›‡ãV¾«qbÔ¶^; °K=u>Šˆödv´W×Qñî¹4¿ÒcGÒ É\"†`H±õe|ó$ðN%’ÿŸÿ¬v2<m½+/”œèlÑÿ¹-a%ÚÏV§…°öQ{}†´ÀH±õyC³çå>ù`âø^ì‰-¬^´äÄrõIVðê(OãaUjÚ¡ç@H¿Ú”mßx©>DK1norRP³À+._Â‚k5}hÊÚM‚+ßæpÀH¾öVüÝÌj0WúÍ~ˆéØS›Ér6Pç©¥f{;ŠÍ~ÐÜN´­ÓŸ–³ž¸H=½w¾ŸUVCÿ\nð”ÌH1bèæ“ˆã’Dì~ÝV­ê¤H=g7¾œš›Ø{l¿u¯àLîØ§B›÷P­¨UvFødÈH=÷¾j»ÿ?BBMa-‚äËIV&\"!3õ.23ô\rF1nH<º¥6Ÿã¬®SÔŠÃ”UÅž™+ÃŸ”2‰ï\'vCP–é»F;âEÀHó$	[D¡Ô(’¶x\0ýs¨…æ|øRáYí˜Ö³ôçH<Ä¿X‘)‚Ða¿G?¬b~EO6ý¥\nÌ‰©6€|&–f$ql…wr¸Hù-Ò&7eñ™¼÷uÔHa-1}oðq¾D•×\n 2àH;Sòù5a%æCV€Ðau™®<ê$¤zœy¹?±‰tH;  oûÕ…‡Œ Äš‚aZ_Õ´u¯I}ÌæNU\n-`H:lï°ë¢õÉåBà•”ü½ÕM(÷œU×ÕÙË‡ š»8@X-TH9Ì`Œ¢½•wÕ‡Âó£’Œ,¦Æ«6ÐÝ²—fÿìð{±| Ÿ¦,öÀH:˜’ÍW.Wñì^Ñe—ƒËqúÁÂBnJt¤d?v6Àío[W*(åÊH:woz>«WO\r1Æðžò°ò”H•ßB|¬»íPöäÒÛËH:Úôë)5z÷#—6\"vâ°\ný[pzà²ÝjÉ:Ì¸H:iS$Tk¯å·òþoHéX¼h:Þ~…³I”MN^ùÙªÜNÄ·«Ý€H9¯ŠŠ‡žÅðÎA_±=tVì¥:Ê³9°œÍÎ ) ª„ž1\ZÃ@H9ÁÉö—z‘/Ìp^ÅE\"ì@±ú4¨~¹}¢Á‚¨ÁÊ¸°†Q€H9UmvC\r|ÉÅ£$zGÄøtç{y¤S©@;Ä#·VÆG{/H8ô­Ž­°ä{5 Ñº³·&í/\ZzD˜/_R\'X™‹MÙS)ÞÀH9,£AWfãÏÃ#Zåñ\\Àc]2?ç™Î½ËHbèðø&É”ºð\n4H8â®ø¿š.ð—‹‡ÛèÁNÔ.¯ñ;Šrÿ¦[‡#6:Ã ýƒ)\Z#H8ô­îôSSåQ|ê¿$í¢éá¨ÊÝÓ`>lCæ´åÊ‘ ½5†xçH8ô­ŽÝ˜Ÿ¯Ý%ƒG«F*«ÐJ…Äé:lpðÂçzØ;sÖ@÷Âk','Kam imasatakangi.opus'),
(9,'Hola','Ala','2022-12-05151356159247hola.png',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0èo\0\0\0\0\0\0\0\0\0\0\0\0ûóêb--..*.&$%*&!&-&&(.+)+()!&&$&$$%((&\',\"*-)+\"(!\')1>111//3.2-47505:141*-.,%(\'$))&\'(*)+\'),(/,*0/-++(,HäÁ6ìÅ€HóÙõ!E¾ñ¿¦¹ÈákÉ¶H‡\nòO¯œ0|Žbæ<I¬ã»5yÚŒÙ)QoÓã=Å)8imÆ&µÓh€ÝÚ1Dó€HQVÓéê5;—0šÉä¤OnÑuW,²44’ñœ°Òí¬BÝÁºöäœ`HŠÛ³A:šc›rTœ‰ÖgT™Ÿ?þˆ«<ÍEßÝÁí–þd†Õ*UŒHH‹|°,g\0…sŽUóÄliÂAfìš%&ÓÐ9Pû°žBÆ´µÞÐûó‹°jqçtH‹ùIµj¥óÑ“·ÕŸ	]çÍÂÄp–sm=°.…¿v]Ã»UáéH‹üE¹}\'\n›³Bm¨DŠ\r™!j·’ƒ€§à\nmBa¾ôêß¶DEµ0˜6”HŒ{ŽænÖëRfó))|Œý“èýÍ\Z\0d§F„nj=dêHøH8èìl=”NGY@ÈktjgDwQ7mÐ¿Ô\Z#ž¡]àH8ß%²ÍYÝIo>£Gcî›—kÛµ1/–cyj´÷“º\Z±WùG@H8ÞQ²yÌR@ÉoÒ=ÁôÆ{Æ—»fcQŸ¢ôU;A2»åZèH9\nmïéhÉiÃ‹ü¾žŽ¾:)Åþp¶áßqøïqÍrÏbuéH9+Ç\rRhaÌÁ:ü‚ˆéyÖUërüJ¦ à‘hH¢H9¯•Êlv{=ç»—°QËV½åx¾Q5½²Aò#VÊf*àH9ÚÞS¥ŠÖ¶¡Ë	}0:„‰A6qa°+Dˆ¸ü¯H\nõýü8?+:âŠxHàÚê%7Óu}¢®¦ýpFíÇpTx\\‰kÛi3ÉJ¡¦8H:‚4&zý	eÜÊ}É§qä.EÕHÍö!\rE?‘	B‹ZwbìAH:€.\n°Y(k&%L‡[rMsd(gR³õÙ\Zû<Å‘;”ö?€H:›‡$Êì¸š2á•$‹UJP`¨§{¨~¨r« §>…§î†>@H;}.bjÆ€|a…£` Õ³ÊPÜÆô,åîÌ±(kŽ›\"ëzf ŸDH<)â»Ä| 3ÙÇÊ­jÈ~&ò\"ôyVs¶Wœ^fpk¯Šò’H<)è;¡/EøÏß^¯á=\\êr -\\ÝÞðÎ©«…åûoˆ\0\Z‚Û7áH<)ç@½Õ\r§B!7½•´cQXHÙXP\0EI*Òs´3\nç° ÍEH<)ÛÒWk?3g¬ÍÛ\ZPÏëWÁh96B…ô÷dú\'ÃÍ¹ës£~øÌHù¬U«b¶Î³\Z¨‰\\ø‡Ï9ºÐn?¨hËLå€€H< \'Œ\ZUÙø.I½&J—ÔwåFháôœ-|i”\\®ƒ`“ì`H< åínO\rÔáœN\ræ]gEíA8oÔ\Z)¡ÛC¬¢údÃ>²âÀH<*)÷ÐuVHÅ™¬5we„âÝÛÜ³<¯{KE:¡[°\ràH<)ÛÁq¢L6/}¹7“1«}‘msl<p¢Xnæ®9S°rÎ‚èH< h‰pâ7\r?Y§Þ wlqf¦=udé|TÉ_c³|©àH< ·|4P‘õÍ‹¯w*Pš\"ÚYØ5^¥[p\r,á‚H;:“Ã”†ä®-RâE¥‚SŒJ}·µz5Ô~wç¬Óo~¼ƒ€H:‰G1I|\nÉþÞý·yq§°˜0ïŠøYÌ	@ù~ÝoûµˆœTHáH:~%—Lø*\'Ì%Nì[È÷\n0ú¹ Z¢c¼¦*A)×õŒH:J´„ðÃt ­Ó°]sÉ6aÕuoýòS¶xtöÚ›F€H9|rÏ,FàÛsô¦‡&X„¼ÍºÅÓª˜ú´ÞÀ‰4œ¤Ë®H9É\\| ì‘j\0?¢‹”møèõÿÅ‚.m%¨¬{+wuâbF¨`‘©È H9ÅÅ¡b¥*e£¨‹;³[Ò	Ùö¢âQ™«r\Z…¿7Â+H9Éª?òûK9ÒP‡<^¡\r°x.½KAËW±<(ÌÐ\Z/è+7\nu|@°H:®­“&-Œ¾ &€ªl[=P³$²Èã¨WEÉY\\õq\ZXªX~—ÔËH;{½îG€†9ê\Zt\naó\0\Zô’ÉÏ•˜]Ðn3“\ZOíÔ<Š¾…b`H<tj£äEOUÍŽìÝö9PÒEdx[ªÖ–u85kíˆ/ÿ‘ô— H=¿rš<G*SB@¡ºNßì	ŠyFF\ZÔÑs9^Þ’ÀH=~3/lSÁ“Ùû¿ñ³WšÈ­¯÷a­jãk{bÆWI)øàH=Ù+)¯y]Ùá	7PB„~!;0L¹->Gÿ(H=\0d‚U‰q>Áà29D$œ/cxæÓ=¼Ífàï´ž~tPH;íÄ*‡³6ÍÏ¶j$ÙÈOU(D¤Ù>xÙÜ7LJ¢¾ÞwWanN`HŽKÛHk\0ÑB¸øF{ýïÿÓd‘Ž­Ù›P°I•ÚZ\'ãÑà·MÇÁýæÃ¬H«’Kz²6^4ÛüH¨t·.Ãeg¸\'ü4#fÇ‘`cT²¥WÅß!•\\®ó‚y\0¸°“ï9}¹\0µËîë€H²²ws~ì¡{òGE*Vk:–ÛŠ6·ž“/oÉ/ûk/×ˆpî»ô›`\\PH¶#ßÍÂvTXù%jHÆˆŽ\'–ªîæ8ŽÀ?RÁ”i<b¹Üðá¹‰Ùt\ZBÚ=½TH·ð’€³Ñ¹X‚%¨K0Ã_lwá/|°‹Ñw†Q¿û\r/ÞÛ	zMO`È¥ÜíÁØH¸µv×.ÎÿÒÀŒ~`Ð“¤cÕ3õéáàgÃyUê»*×Êï—Z¦/ú$N1ºhÝH¸¥þMP°vÚ;o	†ðÒ¼º»$ò\0’Ðr¨žnùk÷Ÿ€WÐYG¼!e1]ìH·¥=XñÊ’—4rà§³u~¬$%ž¨».F—\\€UäÆß%îqÞ\r)$¼H¶™r\0còjM»«u£¶4‡S2o\rP­g3ÅVÈñhw‰•û%mãp˜®/€Hµn¿ióÛy³!²Ù+( Ü»—pÂ¯©‰ç _¥¤)\0Q‚¹ÚtÐ‡²\\RŒIU€H³´™SdÊþ‘¹ÿíZ¯\nMàž°öDn„Y\"…Xäû=Ð\Z¿I:yÊ/¬¼t€H³Ûï®.môÌ%Ûmb®Nl¶ë‡^€Lo~Ð¢õDûmÍ•í×mT¼:s¨fô*ÖHµVHNM0Š^a:<U‚R4Ô—ûP©^ÙÞ~Ã÷²Ü½¹wW2Ó7•~…ø†Û¢pµ\nŽnØ{‘Hµ;_ö” ð+ÒEîµ2¿…è`^ÎûÛúº-¾eK‡~%”H™E`ùÍ…rö:Hµ×ÅÙ\r¸kbC\rœ§ýOîÑØµåg‡¿þ(\Z®¡t?iÛ£©7]¬Õ‡fðcÂhH´Éõ¿ˆùX™p~Osiîð‰™ù’~y_z/Ÿ-KªÞ+¢¸†H’Eglìò°§K7Q7oH²¬Œ†ã}ûº­»ËÂìòzaŠœà>núN*ÿ­É‹Ò`vá»aò,!;÷¯!—GA¯ä )`H±Á“Yºß)Îpä¹\n2£ ­r]ËîêÞÀTLt‰dÐÂå[Pÿ¹Œ2Un±³ H¯Áy„Ð 7Vf¶_ŽÔ¥m®›1¼pøE×ŒmÀ×‘]ìñ9Í¬X@¤Oc8’QòÃf€H«Þë0¤ ž6R\"¦qÕ!¨µïðpýÐ¹¿ç‹N)±dWí¾mo^Æ² ,´ÀH¾¢.=ÊY‹\"Wç²‚š©!\r\'¾²ºÁ¶…’![Íæ/µLïdeì€H¾€ÔkIã$YÅ„F)pA`³Y7ºL(÷Ë‡…+Hf	mà$@x‹ÒT6½Ô+HŽ¨´ù™)†Ô4RzúÔˆ5ëN†aÎN7>]Å\"Âh^f##HîikàyuÖUExHŽ‘K€æ\ràâ_áó†oj$OÙãjûÀä—kßöœ•§gò†Wn-×ÏpH;eÌyø1z\'k\'q=Œ‚MMõïqz½Ãý\'gÈ ÃF“õû@ 0H;e·<Np+Á§—%V‹d7D=ÃE“ïŽKoô€ÐI™H9Ò¾;üH:•\\—˜¹>’±âÊGxçXüËm²=Vu–ŽÕË–“%hØH9Äìxâò2‡\ntk®üP8@wR8\0#Y¦T$Lxø2Ý¡H9Äëo¿:>ÿÞz,2P^8‘kóaþùÜK‡£:[ ¨KO`ìèXH9ÞJm-“®®Ûõø˜1¾¯b8¶‘J¦ÄÔ2w‹\0µ¹ƒ5RÙ‹H9L\Zœ2B1_5%ÑBUó\0øbií[$ºiJÎÜ¾Õä¾<0H8ÞTúDÈ‰ª’è[õzzÉt\\VóËÒä…\n¿°ÄË0VÇ•+?zj€H8«;N\"¸Î²£’¸2çŠFo¥æäÜ×T³ŒÃZÈ—Ôï\0ýïH8$:r•Ê6ÚX‰Òh”ûâí-¤S¢ú2©\ZÆ<c¥H¼™tVô€H8$6|Øw(·™œÙ¸[–(3–Hþ¯¸*¥ØhzC–¥.(ßIJ H8>ø¿Ð-—×ê[×+è{¢Šœ\ZßzÁÍ	–Çn>ˆêI#÷c(€H8«Ix§zî¥Éµ}úRÓoLµ @lt©–—õè ÷”+ H7>;Dk^jRà¬euEË`câÐh’¼^ÄJí–4q¢³uI–ú=´¶ðH7Œ\\­ÜF3{¹÷\'(“ôí$;Z×d@~G:ˆKòƒ\ZÊtôÚ8 ËÅ\Z†€H8$Kc@q¤SÁ3³ãÿ®þ`á¬N±ùšÊF&j}†&ÞO¨âH8êºí’•ÎK²Qû,¾)àñÙØéÆ<Š¾–u×ÞŠV¶ú^Ì@ÁØy\'£4H8\rå	B°mmRžƒ`V>Ûõ_•_ýUþSƒ(Ú3Ð›¿é7l7iT‰H8ãBí»z	g«žWGó8]½%ÌŽ:Ò™ž†kVn°HLéˆ˜_Q€H8¶A×¶\'Êÿ›IÍpM¥Wíì©ê¾”,7å‚”SA÷RŸN¥’7.R„ÀH8$Kn±\Z>”#SmµB¸\"‘K/ÆFîk ÛkÉ“ðç˜Â}–Ó*ôE<ø8§îH8úÍåõä¹Q-VÌ¯U×V±‹‰Ûâˆ9]h8C³A}Ö°fœT°0éH9¯½¢¡NãÜ’¸ø°ÒÕ#ÜI9èÉPÇvåÛOæ3Ã$÷†~%ÀH9ü=8~”ÐUwE8æ!:Z©³H„Aãÿ„îo¡:-hÈÙ6ØjûDH:ût?Ñ¹PëhôÎÚ,æ	\'î«@®ÚŸo0•hI¤þø0ŠH:Ía‹!5Ã«Œ?È‹‡<©qö\rXR÷Ç2~4–-…±g#½Ê´±ì8OggS\0\0(Š\0\0\0\0\0\0\0\0\0\0\0\0¹Å,ð,+&(#\')H;PŸUíTŒ³SŠÂÜP‘Ð0ÖÈ}Øà0$ûgœ%´+4Ì¿IÛRH;i‘E…7£^á„n²i-ÐT`’Bcè«ž„ÂÕ)\'; †°H;Lž*EËÝœÜË†4DO(ÓvXh3ÞÇ¥Y¯ÁjcH:|ÓÿJœs_O\r¼Ö>Ì]Îw÷03O‡á8uâ	úÊ@ Q\0÷ ‹ƒ(H9¯¯ŠIŠ}úfŽD;}nÇóøm¶¡ª}-`£ët~£oFH9™³Ä{öWwxrzrC›Ïx7mÌ1Cî&Qï*N~ŽkoyŠH:Î¨´,SGÙ›â‚î0£‹­‚8W©M`üãMB9=DE','Ala .opus'),
(10,'Â¿Como te va hoy?','Â¿Imasatak riku kamta kunapuncha?','2022-12-051514952405estoy bien, gracias.jpg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨d\0\0\0\0\0\0\0\0\0\0\0\0\\ãÿ_-050112-*((!$\'$&$%$\'\"))(!(\'((&.+$)\'\'+&))+-%(&,\'*&%*$$\'&1</8542964+,.558(-)21//3742++%28:22416HäÁ6ìÅ€HóÓ›_dUK4z×@H€V»éXZ\Zggd²»F&¨ë7«ªÔm…üÚÆHqO+Tä4.wlZ`1ÀHŠ «nð«;Ç¢SMñ1Ánå(§ß\'iáàk{è=‚9,[J<-‚ƒHŠÕØ–ªÉîÍ/iëÿ¯þSªÜ˜„Vt\0Ù\'‡»Ôßžätõç¸v6ÉÄÎ‹:ïwk&­(H‹“[a¼eùô\r8™ssÁb[™-ƒ9¹£±7JMîj\0\r‘Ú )p¯ b«ó cfH‹ûýÜAJÊàÀÜÊ!ÊÀÙ^ÖÚ»AeV¯ˆ9CÉÏ´µ^Àõü$®N~ˆ±ÌHŒƒÃCtç%è	LrÙ\"\"DøÂGIz	§G×5îØï\ZÇbãR¥¯»BýÿØñ:HŒ¨báa ×œ5Œ¤ŠÂpv‡70‹<„´G ¨òIÆtk‡ö%Jw*2˜ÔlÀHç1%„P h£ü½8x’OÔ}Ð”ÆßŒ	‰O’OÕÙu¹ë¢å{ØH:š8Èê\\d;2fˆØf¤o¬$¡Lž¬ó@47A,Hz}g:žëÀH;PY7;-Ýx¥Y¯{%B\\¨Ott Ú\nKl;4Ð^N¼Ã e®w5àH;Pv6*S„™è’7O}²‰*	VßùžvÍ¾;ÿ÷Ö¶„sÿÄ‹‰4H;Pj‹â•Žš5Ë‰ð¾†’Ð›|óûK§âû×rkÎFÆ H;YpB)q¯èHè~Ý>p½gð^µÉy×7@)Ö©Î‹¤ðH;PuðƒØÉiŽtèÌ”åýïæ½£È±J ò*¤P<h±æç}H;lµk7ñ°’`ï5ä¼i­“ªx0/ÓQŸba79MïêõÔH·ˆ‚µ*ý±Ïð·ÂW2²/PÌ™2×\0(¡€³§H< åÉ\'¾cš¹u\"ÀZ‰//Œic1\0¥4ßÕ4òW7À@H< åàL±W†5S¤kB»56E\"ºýn\ZóˆÂPD«—¬KÑH< åÕ†‹…Vˆ“rÉá‹Æ³•ÿŠØ/ŽkÔñpt_Êè”9Hèg¼ƒ6?vú\n\nWŒó|.»=§k–ûRù!È®#îXtÏ£ÛH<Ðtõ$}V`™û_,ƒ*ÊFêr‹Y£áÛ5g:ý:¦‘H:•ŠÔc¡TSÍË(ÆJÞŠýß›F1?ª9þ<û5ämy7Õ¼>Âi–H:gíÐ!ßë¹@žNb÷°Æ]_6),Ñ¸ÿ“$v4\n‰Dll¦ÀH9üÇ\0\\F$~l_l69%E–…eÆûÅ±óC±á¨r»îºøHÛ†Áò\'Ñ½ÑÔÝ\\Ž8ÔdÍÁ9A‘gÞ…Š·\\Ó»HÊI‹Èe•Æ=óW\n\Z‡áê€*	OÜèžHmMUÞ¡Æô H9¯mrMekôÛJ±Yp¿+P¤îñŠKW\rgy#[ˆAôÍ¸H8ô­™W—Æ©˜j|°££& ËˆÛ\'\0ž,û$ˆ#ƒÞÒG+eÿ5e H8Þýs~Y¯’Ó× ã¸ÕÂmbÈ_ßS_f³Zë.Ó@H8Õ»«ý^¿j¯ÒØ)„ìÛòO«á¶dØ\0Ãjž®mfw<bH8ªšEøFÛå-ƒc×¯†ç?[çJfIê‡‰c 7Ž´(©+s§zê¬i`H8ª‹vràª¥¸Ÿ€û%ÇvµîwHÏ	Vú¼tŽ®`ÃK_^GªI$H8[WòjÚHVìÐÙÔG{’kòr¢R/FÜÞG84J3\0€H8Þýr¢—£mÎ¨O$é5eèÑ2:†zÁM£R«hþvIUpÒˆ¬H9\nl\"2˜þˆÍ+åÙ3õ‰r|yss€¡*v61^>$p\0k°ï,H8äŽDAG!‡{D”3MØ?¿$ob²lÕƒ~öIéž_BÊ!tàÞH8úmóöÓu74\r’•Ôíd&ÆÜEkÒPÎ{ºkÆu7˜XL÷pH9¸ŠÑá‘·I=GWóá˜Ñ;Ìj3œÔAŽÐÒBêv \Z%€H9\rÚË¿§úÝõå\'Zoð#àtÀ®Å×Ä1‰ç$ ¢¯nK=â&cpH9UoÇ[|ñ:ŒhZm®:R*­£osF½Lt\ZqÙÿ¤	Á‹àH9ÍñXl, }\n0Æi­±Ñ§`íÚFudøtXÎê‰?Öé%·õ8H:ˆñ®áÅxâ+Üí80gènÝfƒt_áDHa·T°ì¹$[ý·Ä~H;Z†rºèÔV¤û%ïP²³ë<!© ›\r–Ê~ñßBà@H;=†N7¦_l[X–žôrî¯Í–œÓë>á&þL›Cô@ê¶„ú` H:•}ø\rë É©¸¶šGŒ•o‡¥Tz\\GrFþ~OqûIžuôH:ˆú‡u3‹9ú°¹	\\ÉÓ-‰	[½ÜåÿÑBÝÖf¥S«£Ñ?î\n&§ý3ÐH:•—h7¿{ôlèÔ\"ÒV˜ÚÙ‹ÓÞ‘ç^é¨ÙrÍˆÜ85 H:•™ž«k<„´x«êxf³¬Šï×†±½hƒî¦\n-ˆY`¢”×ž€H:•;7í×ÁÌ;Ñsh«øë+Ÿ±1Ÿ£íÛßm\ZÎ„·LH:O²\rr@SÓ¡£¹_ÿ‡Í°4²S\Z(|Þ´!x»ýµXH9¯n-ä²Y\"*õŒÙ	Õ´a¯¼Ûš‹ýÅÐÿMfÀÆõõhåíp€H:ˆúÒmk?’¥Œ«õ+Xü\rÆ«>)ä>ûBO˜Ž~»#J)H:€áq•ñYêV¤6ûƒ}.«CÛï^¢†Õó§ ÞEøH:è½C–Òaé6[hŒªD‹¿ÐËÈ öÄr\r´å©-ìfEï#PHë›ÝÄ—FÇž—,[ÃÑ‡}4èæœË^ @ß•Èk5‚+x\\HŽ5³»0öêcâä[B¤‰ö–RVÓÉŠeípÂr[.n¸Ã‘^ÒšÚ/žE¤5ÌÝÀH«Ô\n”Ú®®FofÜâ‡gÓ¯„ç–Òñvïö³çP­§u…3ìbi,\nï¨«ê£;G°ÕÍž+\r¤4÷ÌH®»5ŸžT…j_\"¼Xy\"#=Æµž‚Ótã\Zæ8€õ´È¤Â4¨|&£ÒhH¯+¤|ÁB›ñ‰Â¾ßÀ,¾7{oaÖ°>bfÀ sƒ`Úé-:‚ØFqH–¼³ˆ\\ŽŒ}LtâÎH¬q±¶­!ù›éE4OŠJ·ö¦ïpEÍ |¶ º8J<™áfg]A±Þ×¯|jÓ*WÒÐH«=Ÿ—ã›ÊgÛØ4zw\0ß)bwãÏÓ¹M’×èšTùià´æšÈ‡wÎ¨qÕªyÇBH«)zQ{”UÙéž¦íÄñíÅ!â ¦.ƒ3©ôÙ”Ï˜pU‰¿)!¡.+]ßMØv˜ØH­<Ôf‡	d*ESf}F¦&ZAˆ0­OrïJð‰c–ú˜cÇ#=@.:7¹à­é›dH¶K½Ñ&¦ÕÄžm\r«·³$¦FFF9UF;ôbÈ\'5£ôó‚ÎQ“\Z ]XùÓóéH¹äWTÙEc/Ž<]ùèvžÿ¸µú›˜‡¯=9\'ÉØ»¹C!ßÒê`„¬Õf=ûÍ¡xH»²‰A2Aq#(öªÚAu°±Œ¢Â?âœ¸›ýx|5c™¡êÄ½ÀH»íŸûçh¬ƒAx¨±Õ«Å\\¿|Õ×éÊ\0H”[X8†õï/¥%Ã˜hî4H¸ §3¿2ËRsÊ<B!\0‡Õ–ÜŸv^ˆ˜œ5õY8nDóaø|Çž\\–¥ÀH·Öì9Wz8_òŸÝÞ’s4’¸µ_\0ŽS4âžožù\'Æ{¹ŠÔm¼…Uò‰\Z¡ÒðH·ÐyŠF´Þ|]Ç»õ>Q½¾ÈÀJ³ÿCÅ¤¸å=‹i\nµWóýûÀÂøòŸ8Lé,@H·†Ë‘{n²îxf²\\,bÌøY°†Kmb–FCRè®bŒ}†ÔG«+é…u.F²}›iÑ­La)H¶ì\'¾‰©pÀaï\'TEDêjâ/(#ß¦cõF;bü‰™\"„(H¶Ñ»&xÕ&ˆiŸ¶\rtPs}Q\nÏ›Huf<¨äð¨\'\r’a°\r°HµÒæ†ÏÜ\\yƒzrNÓœP¿Ûïi*pÖÙôn°>Šöy?g‚KyÀH±¸èuèKS7Ó—¡Ò\'•ü9…’ŸóñíqDQÛÕŠ¥>æÖÔaÁ%SÝ¢-·\\ÀH¬^ÊzX½–h\0»¾Ì1\\GÙFò£ð6mÏS‰9sÅD¼øÁ@®¤}†˜É+t¶_QH©FÞõFÊã[3*,¼5ô¨Z{Æp¥ÐýlJ8-CL¡‘Ä v÷®é€H§F”Êæ	¼â¤…)\\[O–™7L‘‡íi4­§Û=ÌÕ6ÏÐ…wÜk.ÈuH¥%\'I™%Óy$tÝu†§‘ ?²aéC¯pã¢j«ïÀ+ˆú¥VQPÐÏ˜BÖ µ•H¾YœEŒÕ¨üw7n¾ƒG ÀŠž$ßœÑs“À\rD´G™	8º<ü7•6®!îðŸ*Ä~â±_H¥£\"Z»‡ÍšN×>1q¿^!+þ‡áûJ©[¦Ç$7\"Ø´Mø`?ƒn-ö6¿F¤À÷€H²ºŽî-aS—¿35w’ÉM/ð¨Ju-Õ‹\0ìßÄÉv\'5ÄPé»ï/mÒÞ¸eC H¸ý€?·,Ï?Ô¡€Ü»¡n^Ò\rpY¢ßžã29#C*†XˆÏÆŠÐDG`H¹œ‘óK¶]]¬êsDî|¦T­÷\n@û°‡ÅK²ÔøßïÚöÅè]lH¹‡{Åƒð;ãº„­ÿFÃ·¤6öô³%Ý`}êàøæ  ==ØÎH¸gôÑW	ÔáZƒ¡¤fõæ.ÍÿÅc…“Ïˆ,±7\nf\n{Ç†’á*°‰ÌO\"î÷ H¶ˆrú\'>ÏÊv(	ééd¹-5¬¡cr· j÷Øâ}zV/UpIl-á+\'[ŒNižß\'9ÐH²*þnYBÑ};	]bÔßqaÁ¹äöÒ*_D+]zÍæ­jªzH\'¤Ê6Ç+XÇÄîXêV× ð-0HµUS^zÃ¢Å¤’ ²\Z>œî”€˜>.\"ULgo²ÿ·å‡®½åJ—ñW1/ôøH´ÿ¸T…D9;Ñ?QNE80¼›öd§\'OÊY¥eF*Ypæ¯Þu¨A\'A?×Gó€H³¡Á~Êz^ +¢Q`ØÌúèÉE\"/§h–}r©c-£…[zlÐáÉL‚>°Â™ H³ÈUB1,³„³ÚjÍ_4/äØ­Ìý+öÕ‚ÛxK\Z!r\r†eßŸb}7-]¥ŠäÐH´D)ÌIAÿZœ9Ea8eýPQ8S¹Ë{;NG¢\n³ç\ró‚»¨FX%n$Çê8OggS\0\0è›\0\0\0\0\0\0\0\0\0\0\0\0Lb¬S2)1632-23-/2$+0+\'&&12.2,$&%/5,-32)+()-480/7//0.((&&.04561)/)3.15+13467653*(!#(%\'#$Hµ¦ü[4`TÖýX9W‡æØ¦\'·R³µÖ3ë¯›Q¥~uë9]Î±(2z„¥ˆ0H´þ¢‹ù1S‘µ¦m%\0RXÉBºKÜIz‘ZÙKM,2‚¹ˆuc}$H³l¤Û”‰0zá:¿,ŽÄ5_÷M·ÙNýè½A±zú35ëËYÑ.(ÅRY‘!±ŽˆH®\0½ÿkdäŽ©éSF—5ì->$OÚöûÆHMË-ŒÁ·šDsÂº:x`ÄDô\"u3ªlH«-4ußgÍs<C[£G@‡.¥0ˆóžqãÏ¬¼3G<ìvMí,n«\"vdÃ	æ@H¾Æ±µvMƒHËyr ]Dv$7R.½Q˜]2¦$0|‘¨)]„O²9û\"é3¤ŠœH¿/¨}ßN\'_ß€â}&S¡™‰½)Ò•É°æcý”J!ý¤|hmcÛœ3*H«II…zÕîª ¥€àŸ¾òý×FøÜCÎF×\n\Z[æ._!— !’<ÀÑ»/2<»ÞBØH«5hƒ4åÉW\'Ø§O¶Á=’ýÁ%LâñþæÅbÉ»îs:Ùàí¨›×¨pnú^€Hªõˆþ‚\'ê\rÚõ·‚šÏq¦AŒ.³ïBÚX”8L0r#÷‰ÙSØ¿X¢`H©ëõ^\0;µm)a·5ÄèN2:Ä&£Ì÷!°£5¤ÿh© <\'5uIÀH§Yý°øS‘$Añ;\Z³“Fß a&=Ü·Ù68P–*éíua¨»´qÑ`º@´¸€H‚Ò˜ºÍWÚÍñ39ã˜B5MÛOXÈ{Fë¥Ž&PG™ŠH<Ëx|{àéEWÿLc÷ijJ®eÐÑ‹vçžð\rÓÀHƒp>x*d˜ä«‹±‹qq¤ßçUGM´‡}´¶C êatJ¢dÖèO€Hƒî|¾!øþÛÞÖ´h_Â,]„]ì*aäsM,çÈC]TÛ4$vUJ#:zßAÍèH·†ýp%U—tH	ÏŽvŠÖqŽvßF4»jý¤áÚxh•Mô×’tI	žHµÔPk\nýô~m¥ñ-J‚©ˆ¥ÁT¨±êLÓ÷?”B\rA=ÀHµ^ÇH„ð{Úvø¼ªèfÖ}Þ¶5UuÁ!ÆEtt[òKàH´Æ«ÅÈí)>Nò\ròš«{ìe÷NúGçwá\"4Í¡ÑML .ìH±t|a··Ú°æ*s¿WfcY!’’zÎ!Òq$sÅ7[jkÔ;6,:¾j0©€H­ÙwN:«Âe]…Ùê»p·á¡rf—ÿ¦N,c‡¸áMkì_ËHLZ\0„|†‡É H¬ü$¦ÿo‘\0¬Å*‚=´mŒjª	\Znepq©ND[ü3×‡K÷È+J”RH«MÒð1îÂf›UIÉ„õGš²í%ÌPðv˜¿¦÷—}‹\ZÏE¥ŸŸõpô¯$—¯¦H©–lPÐ`9í¼²We¬íºs÷Ø—=·E ZY®oÜ»F“0rlš•H,=gSFgqÅ“h*‹/c²Ô¾Å\r€š‡ÅXß?~Z\nYbžH=Óa¬PÑsv¸B…dtK)€mè\0;\"Úk4ÈLój`ðß‚ Hó]$Ö2îéÜ¿;5¼ñËQ«×“‰ó©œŽînö*ÞL¬ëðHƒ=,±`‘ªwÎ}isª6#	v#¦!¼\r\r‹\n‰I7™Mõ‚¬ûjÈñi¯	³H´i¢‘ó§Þ/øO	µÂaóþ,cÎäÐ¿V£+àØ…–Œ-6ûùñÐê+EW}=0öÝÿf81@0Hµæ(ÜÏìý!cÿ´kìo7Ð\n®eogƒÕ£U&9ŽpÃKýÄVÉÊ(H´Í¸Ãê)gq’3´ÁåàNMŠ×³ÉÜæ<NOÒ”œâ¨i[#þyË<¦e¯@H±sãµû>JÆSMt×n˜\ZšsÙÈÔÍœ£”w!‰	¹>úê9ï/¾WbæäòÀHª¹±ç=áÈJöb[«!JÐÛš½Éê©\rŽñÓIÀ¼Ä+5ÖÙ?°cÓØ<]Ÿ|”HH¾¤ ­æƒ¯7ÁO† Üôgz¡al·)ðÀH§ï(òuMÈ~5póTH<¯‡¨{¿(¨QBÛù7ò~9ÙKÍy_5äbÎñ’ÒlIžÈP’«Ît¼HØ[KfO§0}0üG˜õnÆ¤ö%W	Ô¬Uâ„#Ó¢ˆÚýðýPTH‚½5B½ÞS¹¡bãBT.Ž\nA×<óD{ôê/ü\00-2(†<õŒHæéÈ\0nÖw/ÃÕÃí¬¯q5ÛAF.RÒt15Þ5…QF3YÂ·8H«ƒÆ\"ò¢V9ô£;¿ÚÍ¨kÌq¬#/u#856‰¨è eÚ\n_3Ê0·`séS\"6\\FätH¬ü¥¿\"pZæóvP°ÀHMª¦Ð<1«7}žç}CPæ`æBØ¬¥¶;1Tºµm	ÓqðH¬¦¤š˜c·û’7âÈ%/ž*‚:¡8ú’ˆ¢ý3 #ñQg¨-¾žMöU“c½Ú]`H«aÜV—€ë§¨GqëRvØSc­ôƒýÉ&Ò«l+ƒWohÃªòñpeÂÆâ6€H°š¥ú´Pª9eÐ­å£ÐC±L9 Ð	BøÀ2}’êË ©,\0xè³—ê uóHÜäIQi†{`H±Æ„ùxk>ç†3“M.\'‰³5Mÿ&©—º;¥¿Ä=$Wv-òÚ:EEˆ°h H°TÅ@jˆ3Î³/r/èŒâî\\|yÖ[æûF‰NåZ‰U0lçªªÀ}”H¯¿ƒà\nÐû9ï¼2t¡:¶ŠŸøD|0ƒ4ˆN®Ý#pºh°»N„tXITòª›(H¨ùT^å)ÂK<Ñ!Í	Ubª!ŸÏ‚îØÕßnX·ßS<(¾<8ó` 3ÞÌ H¦FÌÖ}È\ZÜÑgoqšôÛ(ssMä¯AÌýôõB~÷·\Zó–×@ÀH<2¶?ÀøÌ§àAâ&yCõŽÙd¸Üã)ó‚G=ÍÒ…–Œ%-”H<\r„\rvÁ ªe¥>9’jQœ•ûÅ$Ø¼¥n¢lï+ÖéÉÓH%¡èN\0Êôx&âÂƒ<©ðx\'½³P\n—åd:4Ñò€HŽ´‰m\"´¸•2èVlâ|q…9ù•*ÊY±Ý‘¢hE¥ß,[{ìg›\ZøˆT!H§ä^[_LäHí«Àt2çd*_3wüã² mÓšò<Ÿ¶û¹b©Ó[ŠWl\ZáÒÿèïH§ÏÝ]6ÏÒ¢Ó¾eå Hh6^úuÔƒ5õPŒ‹¾.ÆÜKëFë\'®ÝŽµ‹UÔH§ûçX=iîoBíÉ7VPTpùnKh.š ÎBªÕc¸áïŽS¢\nOßáÐâØ§UàžPH©wXã•‡zcú4×ÃŒnÐ]ÓÍa¹÷´ýéY.:Ó uûa¢ÃÈ±DW‹{aó»ÝÿŽHªÖ£§ulÎ7ªøíÉõôõ˜O*Ñ¥c\nô¦¢É´NS„&Èöü7ªeÀz€H«I+@ÑZg~ŽýP1÷ÙËzYË¹c=5|¤1vµô_…µBôÜÜcHª¾Qâ\\ª²Dö„èÐˆŸÎJPi¦¢3¦ÂDhÓÜî¥-Š}ŸõüªÓ¨/œ(@H©–k>Xe‹îÅJhâLÆÀ¬6d«ˆ÷@gu Ë‚×øZ(þá‚Ùë]ž}`H©–lC[%#ûîf]¹ï÷Yƒ×ÇÙˆ•/j=Û¢H¾biˆ·Ç»ÙÐ¾Šu€Hƒ/OgÚD«£`E¸\0@¢”UIÑÈ©´×œF;3”·£ÄYþÏãŽ¨\Zf¶È…H’:åªIr<;\'Ø‹ßÈ—­${_	‰¹§a\ZFŽPnÔ¦Ë×ôs]d‰ÝŒkÐH”êRW¬óÂÎs‡cU`žæÌÁ¨µ…)C<™\"SÑ4NÒùÊõ®åL{ŸŒ£E;½œ¶–H”Ui´’®4)¼ÿMñüÄcyO\rSÂ·ÌJœ´)\0àq4…„‹{ñN˜ 8H¶E3?àëö¹pm3¬dhVÍ\'hƒ}‹‰.n¥‰¹¢†y“Ý¨ÅH¶Û•)q>;‹ž»`Ê©Ðó^õíŽAÁú¨k?ÓèTýjA)5“ªI&¡Ë[ØbRzÒH¶äc‚˜íÕÍ=(ç€Ác±\"E•Zg]Å€gê¶ÎH¥]Ì)®®FÜü\n#ù(‡*H¶ßß%œ”?\"rURFf±Ž6§Ì†Šð„éšH¢c¨°\Z¨†iîvLœx÷ÜÔFH¶”gÙ=RuFq_v³µU™fm0½}9LÛù{5¨†§À$?ptâØ°Ü›}Þ4=¬H³–Ú>*x½öši\nB\Z‰JifâM}µ¨Gó³?îùÿ´Çæ€[ûjÒ *á,ñuêúxH°ò´þÁGÐ¡ÀjÑið“g»ëÈ2NQ×,øC§—ËPæ…dºizýÞT\\Q„5ðŒ¼ H¬f0V·RfvÃo!ù”ì{Þ¾SÒ’ªâº›´®y	±‡ÝÃ®*»ù~¿˜½D@HÈ§@“?ÿle…v+û€Ö²ÎLÑTyó._ò#pÖ¡\"rÕJ€H=Îò«|ê/¡ìþ^g¬‰SPÆ´l¿Ò…\"{H5÷ô `H=!â¸Aö`ÿ*;YøHnÃ¡vº\Z¹ýqqúmùqÇ`H<Ë[BT‚ôšÀc¼°)ù¨TáWùhó€\0ôue­›˜Ï@Z@H<MG\\ÑÚÓçÉiG´¶}	oXjMë&qà1†Wv\0\'ªmE‘ýH<º;ši=©ñˆ¡Cœ’¤BŒH˜Ž4?Áä9ž0…îÀHZsw.;z\ZùsnCä†œAPûãÆd»*1FKà½+‘_‡€H<\n««AÊP¥ð;hžÂõÿó1?}•ö¾zþ3Í¤ßH;eœx‹‡aæ,^’n‘õ,è1À©wjhå“h½ÝàtÊ³€','imasatak riku kamta kunapuncha.opus'),
(11,'Â¿CÃ³mo va tu dia?','Â¿Imasatak riku kamva puncha?','2022-12-0515142972194que me recomeinda.webp',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0h†\0\0\0\0\0\0\0\0\0\0\0\01–¦h00,112-)#&$-.(,$%\"\'+\'%\"&)&((\'!(&)\'%\"\"$(,+*&$\"%$%((\"*&\'%#\'((+\'++**)(\'\',-)%%% &*\'#)+($#%\'!%\"()+)(>7829HäÁ6ìÅ€HøPqš½œÆ³…¸ ôÞª]R(¯ŠoVH€pÃó@éBíˆ¯¥~—4»NŠn –\Z¨•o\'ëE&ÑdÐ”ÄUƒÁMqþÚ€HŠwæ#È…V\"I$‘üu*eHÕ§†/[E¸<4Ó/…ôÕÝá¼Ë°¢K%[:T`HŠàêŠ?»1Ü(ªÄ€H~AbÄÛ˜Þi¼KfíWÀõ:^	€\' /H‹\npd~‚àËäöËË\'@Õ~1ß®uÈDM»–°ÊFÁ^k8NÃ-’÷T<<@H‹^¸J¨.	0pÌÃ\ncPL¬‰Weh`)çÃ<Á ôlÙCÒ“š<jÇå€H‹^¸L	ûEnW°Eüª\ZWº{«\'px{§pÈ4LâFÖBGšŠñèV¸=ÍôôH‹_ÝGùOœ…)é®Ã¦°\'¶ëð÷kf°5`æVÍv/wk_ëÃ/9ádï€H7X	^Ö´Wa®a\'*TÊOeÜ®	X²étEÀN4ÝUTH8®Vå\\¯¿«øïÊ\nÕVƒn/;Z˜LUÉ“™ÑƒRÍ`H8$63÷\'³ö‡®5HM)¨?\Z”‹•.2¦Hb¦á‹¿ðr?àH7úÏÅ\0‹gh±ÚleèFU&	•#®„\r¿ÐûêÜ‡ÔðH7>9É\n:‹€.û©2=÷¤“RcøgÚèºýXm½\'`æWõžu\0Ý1¾€H7Œ_ÖG\nQmÀ‹UL ˜WËÂá)ËóÉ6Á%†°š¥“¯ßt,O\'ÓÅ…uÐH8îÂ”ZókF8ª\\‰üŒ”B²ø~\'§¤ùŽ1r@TMóa-H8\ræ=âY\\†œãòGÀ>°>oªþådŠ…aVüŠì0í¬ogýUÎµêNH±{ŸÃÖÅ0\'CØ÷µÂæfDNÒaçHµ´Dmªhþ H8ôYêíÂ=©0:à¨ p|¸XÛa*nð7B6«JztŽèøH8Ý=H¢†Ç$$¼˜k½b%ÂÿNËÝpD…å<é¯ðH8©\\ô˜tqªWBÑ³î,”\n ¸IqýDôÏ\r)ðøïŽàH8$:í±Óü5MªoòýY`Då‚jA2îÍl\Z,ïýKTkÎPÁý H8©£?P)øÓÑt\\î£gòPœÉÙnhÁâèiÔÎ-ãn‹rH8ª‰Ç6>x5ßÚ	ÍšLùž°7ä™¹¼M\0«.€Å©ö¼)`H—`èªôT\ZºÖç5ÁÎ|_‰®Á%†u,Ý½ìŽ»H7SÆ3TÀz†MÁv¼f¶jbmÄË,½\0{ÑM)È+ú³_C’H7Sztc‚:£DÕI\nG™LqZ··6k3âŒ=ùÔbÍ‰¯	>GðXŠ¸H7<QÅž‘·’gäé* Q\'ÍÀ·¹?ï\nA™|.¸iÀÅI<¥`H8[TþšÒŒö8)gŽ½nVI#¹ÌOßÊYÏÅàG›ÕpH8ÝÃ,TÂøxöSñÛ\necü/¼UÔ\r+Ä/©<2¶Õ˜H8ß…\'Û‚hŠc¥îÆºãÉô’Q”Ùgô½Óèi=©<z€q{pH8©Ìï5‡Ï^Á=Ê³€ÉûóÛ?ßk£ñÀ8!øŽá`H89Üä»Á¤é÷²€y;¢ÈÅÿÜ¶0Îp6Ã\Zp+K…’Â¨pÍÐþ’H8èZ•aoK¼\";Ïë§‰Ï5ÓÚ`c=“¾ï¹+êë’ó,$H8è\Z( ~Çð¶~º#ÝïWÏ>ÒÐïýÒœîi0÷NÐ°„äßì&H8ÞTþûÑÞÜ•àI|½©û\"ãŽPžŽ‘¤ »áúu€H8è—yH§b¾ß ¨ßñ­ÐÆåFW¼¸Û¶bsDÆf 6ÁH8ÞRœÚàŸ°\rMæ‹\\D¤=²£ÑÅ\'NƒÆ¥CoÖ;]D@H8ôZq¤±RLƒ9ÈæFÄåÀD=§r%:bÛe\"\"-xH8Õûœ·%|œð‹®8ql&N‡Í’\Z–ÿŠGŸõðHzê)M»¶\n”wf1ëÝIÐöp‹1ZµdbÕ³«ÅY„€H8ô£<ðZ–õ\r.&ó!WÛÄwÝh§E\'\rž.ÔÇNÖ/y™EcãMÐêÅÚ+²H8ù5\\ç8Q¯‹xóo”‰öKî.°z@3A»&	j%¹ë¾4`ÊÏH9®Çv%gKƒý1Ÿsj.(GrÑàž‡Y×+ZÈÿ2óG…HÃ9&@H9®Ã¶Ñ¤.K-X¥4DèŠÆLœŠj@ úï‹ $ö-Özf¾@HÉ.Ý•Ðí•ˆ%9ìjü¸§ÓEþ½cËçÙÄr×nG\Z†àö³$H9¦kY_ß™7<Wq¬Ÿ+Î`:Æ\'sšôušv2NˆH±ž¦Å\Z´37Xq7øž×Z^\"´™ßâ%ç]H8\ræ0òy±&ç1\Zbµ$9¢0RÇ‹}/·ÉšÕÏßÙþàðH8®JFNe!£´q¥3†b1©-]”aS‚Nd˜NH8\rì9Êò%Bº6hä¢ÊNÒûí ë– «m»ÿSHG‚P4H8$63j[”ø4¥¿`¤Žs«0´0÷‚ø\n-NþúËkŸ©€H8[_…ksÃôÑÅˆ‰aÊ•â›\r^0–è•Ü¼6GkˆzúH8Ö)›e­Ûñs«I`ÍÏ)TÒþ#û»ïï!XÄãþ¤àH±}Øý¤ ‡JL?Nô¾Q&§\"MZÒlwõ>¶ „<*t5ˆ@‰¬)iH9ü°/Ñ;Ù„øtc%|R¤ŸË†xpso	^T¾DÎôH:€fóï¡Ú£P@+;ôw\\½øTYÍRwôz­þ)Ã$K,÷Z H:O²$e]†4¹ŽÄ“é\nÛ‹6Ü!°óÄY|8…ÉŽ¿Í8(4H9—U<¤Uh\"ŽFÌÅ(ï¿ÝiPêiNr‰&Ž…wgJ½ØH±žâÔÑ2‰¼MÜ3EoôïõîB,`a-H@Å\" ¿a9JXÌH8©¥\\ðsqÿŸøý &œv»máu¿\"w{ãÜœi–Zv’v‚«ÀH8$:èw_rR—TÞg[M#¾d`Vvµr¡­$|P³{a‘«mH8[@&£ƒLåßOBæ\rJåsÚ~\'}nö‚»ò.îL¼ã7\\@H8ÞTò=0\'\'õD˜ß íÿ·L\'Ö•²§mü¿™é!\ZœF4.Z€H8Ý2d¬`\'ÆË¤§‹O{³ðX¾¸XUU.oë™ËbÕ‹ëA¨ú£ÝM˜B¯äH8øìyH‰Ú’§ð…h‰\rXçŒ\0²£ˆ$÷S­	»¸ä ‚ÕÖ®|=)\Z¨H:t>{éý1ùà\Z—JÐGcÖ…¥þÛÉÖ„¼Ø²¹ìm\'\0,H;žŒÇ8MêÌ’ƒ±‹è5èþÓïkŸê1ÒZ_DÅ™\\C$•í,c€H;ëe\\Dà”G­:*ú‰Žß\0Ï¡¦Mg+qeÈ‘è¥ÌKÍFél‚7`H;PuÊÊÀéSÞ´‹B}\"Â\"j]_‘Å¤´¾d„)«Úë_°Ç\0pu@H;Tþ3úiC\ræÎ±2œ³1óþ^O°±Ê\rÞˆ8â£@üO³q€H:6K\\/;e,î/àik„ô€°d·d/œªK¶¿S¬³äúG¦4ÔH:•ŠèküèBqâ“½áæsæ.K¾Š…#ô‹´7*†ñ‘±îEÙù¼>¨H:%†îMr`fÊXg×âCo·¸‹\\’”´³AI~ÙÄ½VW‡ñYpW%,H:69‹‘ãï˜£¦{ˆ\"\Z~:¢¼ÝÛ¢TŽbx JÚ¬Ä³Üa]ùŸH:7~°£V›P˜‰<(®v5A½ZÓ¥ß~‚¥@½+rDsÅS.DH:vÚ}– qß‚\Z(8\ZÒÿ*úTµ?–Æ3”Ê­ÿ™£&}ºH9®Ääuiì´’Ö!Ágò#Áé>Ë5u\'ˆž¤ø<Á;RÃZÞŽ,€H9¯µûÃ‚¸öÇ Oå°í£Éõ… ) Ò°ùõ—¤H9­ŽIE§êØ •eÉ¡Ž»ºžýA³ºœØ6 H9{’Ñâ}Ç„\"2Ó\ZŠ `a[vF/\'üiÉ0œÖH8â¡Ö¾Õhó¬°Þÿ9‘>c`cç¢Y¤¡6·ü%Ò²ª•e›CÌ„ÛíXHŒþÊèc~€º¹lØhÍŒ“J?GE6ŽõO\n)&EÕ°>?ñ€ô¥\\ÐH9ÄÊtvì!¨ï¶R\0ôÓÄ=WÕ&}ôûù\\34˜! H9³ÖÖø}]Ù7ªí÷Úij÷º‹èK]h“SèVÒÀE\'\rÎH9Ú½B‚¶§»Ùå©â±Y%ò5±	ÖÀ¦BR.÷Òkâ¦â·rJÎmÕ\"[\nH:®­«@x6O-I—ŒV²š¼lIo[±2¥[{UM©OÑF·ˆ²ÙÖH;Yj(}g²¢¬É¯?‡Á\reps\0wV1&\0árNÜO\nëX þH÷]=æ³Ü<¨©[ƒb]Ù|´ÎP.ð§’±à&LT€HáÙº8	¦r¿öçÃCÏÇ³d†!V)7yZô-ljiŸ<H:~$+«Ë™¬©ZÈÖün\'Öfìã¤”ù¢qÿßÉÅQF+ÀHËµ!5!0¯¨t|õü”dÏš×šMGŒºX6ˆH9®Æ.]ÙhÖ8CDÖ`\"B{ÈÙSVöËlÀ<“,~è<¼ÂH9­¡ìï™86E4­ÑQÎÆ=]:,4Ñ¬á¤ÕÂB¬ÐH9—UìÆÂiy0dÚ\'}Öùp¦<r‡åqÕ*ëÓ(µ•7Îe€H8Ý¸ê«ÓO+m¥Ÿ¸<ÚØŠ%.6øc;£KÃžŠjõU›oÀH9\n`N]˜Q šˆúF]j•« #‘ÞAÐu8}Íë%hÎ¨` H9®Äÿæ\rÔNE“ÅV“ãn<=þhßb¨šP’4îà,Å9\08“H9Å\ZÙŽ³¿jÁÚË¸¢>oÐ^À,ŒãæVÖÚß(\'[U)6BH£äµ/Ouò¼¨:šá¡z/P†¸®ÕÐs€yöY\\Â¬à[v0º0ßÌ\rôóêÑ Ø\"Ì2ýR;\\n,ŸH«€–¡Ò¶ðý¬}îè¾\"	€ÀÿÂ\0–_x¶‘bH…	ôÈAî~ÕÀþ<·ÓŒ.\'‘P®10C‚üH¬Æ90y2i*xÕ9Èbhù‘¼N<ÚU.€:‚/¶Qk>U0 g²ïIœûî‹3JÒ(zpHª¶óëîr·TÐ/=V‹M…šCTÕfR˜ZÓz—e‹®LdŠ7¼ïvŽOCkm¯lH©–kø!\\Õír¹ÏsÎ„(\"ÿÄ¹\0rç8Ö—¤pn)$	`u	\'­ÊîÊ(ÍiP¯mœ—8¼@OggS\0\0¨Ì\0\0\0\0\0\0\0\0\0\0\0\0Z,W49-*-.:52,(),,1/6082-584373)\'.4,4:.-/,02.-312/,02/.-/8/+&-.,83/16&(-+/-(#+-131,1+/0-2*.H©·„\ZcyAîŸG#5,Ì$™^NÔ­Õ™{©XUÓ¦³©\nŒ}£7PE!L‘cƒ‘(H²±ÞRúàÚÒN›áÃC _p·Ú­ã}Vœ—ù–‰<\nK>øØ–ÝO>Q½D¥àpí\'–‘ðè&ÚÕ¸H·03¬ï0ÐÐ–\Zªœ{`Ã*=Ñ‚mì¹?É«g@gNq¸‡®[¯;l H¸¸8ÊÀáÖä:oßÚ_Ô«­r1xagaÝÎ\"Æc‘f3UH¸fÂÂª^Ôwµî.Ò¤œ¼(ÜŠ,ˆ[n´Îâ){cygøÝ:Ö›¥!$€Hµñ™ °ZÄ_\'#”À_ùÈ\'<‘zÛÖ¢û@&ÀKŒÀMR1¼ì±¶»Snâ;H¶£+ÕÞç;¾È-iÂM„gª#\Zùä8x¹gäêÏÓe~¿zî¼ó˜¹ká	ÿ=7ä¿n)«dXšH¶Øv»ïM?ª‹5UÛNgª²ªpóÄÕbƒ†QÞÔ\nú\\þì€6*0½ó’òÞWøÂ Hµ´m\r¾¿ž˜¿¦áÌü«8Zk,&ƒÇÐÚ=k?Fž<Å(QIì|é:úozÿCHµòí«C80*hR0NÇÅ?*11™öj{	­³:×P@îÂi~6Ï‚@Hµ¸<Êñüu\0-ófz{cá•øTíÆvóà]‘ër½º‰Ê€H´ËHŒ®±xi!5^‡áâqÆô¬o•4Šð££¼wL¼‹#íYÌ´S,°H°EØ[ac§Ár^rhˆ]ä­b§ 2>ˆaÒI5ö0OTL3(Hª¾XÔzƒnîÂë\Z§ Kœ£ðÜî¯Øe§ékC¶Fr©ÓöÊ°ÃþDƒF€H§µ@¢tk5Þæ°ï…¾0KÏ¬ûî¾ïãkÄ°“_lØJïö¦M©±™ñvaH¶í0H¦iàöëUzaqØí¬éÙù\Z€oV…Li´-{é\"µÌ_g\n8™»[>þ~Î7H¥!Cè˜/^š•1G´ä¤fŠ=ImüPx#éç(~×ô<F‹Ývìö‘KDÖ#¨º‚€H¥™e,K´ú®Ÿ8nEâp_6¾ÄWÚˆÉïËš\0dâÍ#ƒ`ß½e£ÆÛ0ÕŸ€éH­š^+qQ22 ,²pmå:•wñbÏ×\'@Ãš”Ñf)¤ÒL•`þ[ìœÕ†Î»‡ï¸ºËlÙU?÷ÔH¶öÑ[/r1¡f-ÇéáîžR‰¬>LŠìÑurà§«ØF‚i#KØ[\"ÆQÝ|H·ÍðM—-Åµ¿^³É$:+QÙQßYB`\\s5H´ÆMcª¶Ì‘\rfœÑïj€H·{7\\‡¹ASx¸ßY•Ô+1ÓìC´,Þ6!\nüåe7tUm¿pbÑwµÛÝÙ H³÷ßÒ?†‰Éª8§/(·®[Vàóý=df´2lïbÐS2Y¥åÅ›QµÌTy@o!ìZJ[c˜H¬f8R¶¦ã2‚eI>-ä°êá½+ÔS%‰˜(òMU`àFûÎì£ÃÖÙQ\'\\%HdTH©rþÒòõœ9v‘hE¿£3#©!\\KÝ@ÿ¿ƒ–àEÊ\ZÏ©;€Œû¾J™<‰¤€H« ñ(°Uï(NèÄÄD>qç\0\r¸“r\0x‚:)Tcä¸{ jr‘O”ðŽsªZIä¼ì H«ç™¶ŒõÌy‹f	(×XŸž02‘†ëhŠ±Î\r8vp°à}\0¶_ÖHvÞÛ‡Íw…H´C’žnÀµþ¾—”?¢1cë´Õìºô\0™§|œÂQØ´SðHµ\n:ËW=x”Ø\'ƒÍ{=ÚOÈ8¡	b¬fC.ƒ2{@H´ýÉ¥™Ÿ&«ïTIë‰Iék•fþÂ‡qâÁhÌ$›fßW=˜ê‘‹‘(P“°H³ÌºŒAèö4¿†´˜½ã‡Ù§Õ ¬(iG7Iú™{Š;¸Êù¸§c§C<\\-K\r¤€H³§íƒKÐƒ¢ï<–¯›«uy™&ÏÆ+}t›	{}EmZÒ“ÖÝªÎ:H³Äeˆ¯r\ngÁDÆ‹%ß8gæãX–»Hgoßå³T°yoX4&ÑÉÖÌäH³ÈõRÐ£™âÍüu#\"½bu-ÔåRÑ/šx×¦t¥?ÖÆwÕzæ¿U~¦Šæêo€]EŒ´àH³ËÍ]rÑ€ìOÔ$]Ò|=ãôó7ZZéš]ÝaÍÎ@ÿ>®ð7À H³À ãûz›Ã„åðv	àCÔ`ÂÇ½	/¦@\"¦cÔ>,§4gŽ´–VÊ–fìH³Ô^¦LüXŸ_íÛ€Üu\"á™lgd€¾gj³1~dÖèÆgs£àó€H³¨øî$ÃÁ[ž«]ŠøÀ„Ùþá0·ý N©}1|öî[Ëb”ÀH³l½›þ	¼UæýºMo€ ð{^X±û5%ÛlÚ½Àh<}QW1\"]‡äÈH®½iôîý1¥Ù+UEå#\"Ð\0¸BÌ4u1\n=ÉÉ+‡·€¿Éïø‹ZnX`E~ðH©aqJßU©Úã’üÛÚH@IÎØÏ\"éÈ×ã£úf\"çµ_“3L>×;H¦i‹lë‘„½ÜóŽ^˜íUUdŒ§ø1v_h|>z‹”$ÔàòµðH¾ÉŠlŒFá•GbÁ`Z<(Þ0S>¹L™Å.ÃAï›¥‘¾Ñø±Ùy?ŽÜ€(“æ@H©:Ô	Öj<©íZ\0VBÅàXÅ}úB©ôç•‡Õ‡„‚Q³•ø·•7ŽÊ?Ò°0€H§è¤–\Zr2A76cZuaP÷tg©á¤óÑÈBÆXR=ß÷C§ß?ŠŽ‚ÿ@H§Ä^Àì§€n¸6I‚o|ý%èxzéD“–ñ‚÷uˆ_Y˜z\Z½èÄ’O+H˜ÊH§—/®SV¿3\Zàaeb€ˆÒ{°ÐzãkŽ %Æãáé¨4žá—®wXí2­ðH¦C1ÍËpÜp¢Äñ\r!—¤”<ÝÌâA¯›×Ùt-:âf<\0máÏ¨¸WÕo%H¥P­–o´“CIùB\ZÖWô½È fŸŠÙ\'€ÿ¤fÙÊ˜H(Üv¹:óZµ%	€H¾n™ƒà«#}ÕE7¾¦\'Lâ,2d¥ÌÇûM²\rUQÃ®uiñŸHGa\'W H¾p§ëß`‰6£•Ë\0Rµö!|çý¨÷)Ø¬5õfMÛ2,ÿà,Ð)4H¦ã&í©¿È7Õ‚2›ÎËÂŠ(î<Ø$F„YÊ¸\nÕÛ›õHŒ…ïœY~âH¾êqNNÌ;Ó¹|¼f[?öÈ>É“\núÐÃ)ßð¸=½CÀ¥2™¾RÑ‘\"(8H­¢eÍâmŽ™CÌQ6ÐÖã¯YÒ5?p6Æë^2‰ì<Áý*FžÚÏX™a;ñž•†P´à¶ H¶šëî4‘/[pÂ7CýÓJ¿Ù…Ç]·* ãh2`w:ê·ˆÒ^J¦OÎ	@Hµ3E“Wt&xy*{GgÚWÛ‹,ò’™\'i h;œwRó§,~ÝÃ|¾H³1:-¸ (]Aö•}7·!Á\'m…­³ÛŠ÷ ƒo¹Ú	.%èH°Jî¼ÝcÜói¶Síüa\'\\Ô~\'yî#­c±«Nœ+€«óÃºRˆ3Ëu@H¬ü£ŠœjvÄLS­ÈƒäÇ;Öâ\'Ùäº%ƒjP´Æ0¨’†Üº1Z5Ú%”Gî€H¬óô†%[þü:4W {@.av©’Õ¤JtpºˆcþDéÞË*É§å\'R0H¬ô…ö¬¼:\\è‘¤‡â×€»;V,ü>úWˆ\nÆ¤Ûf\Z¶ãù8ÆŒ½ûœdCLEã$4W/ŸEaÀH¬Ë«<LËã„PžØ´ñ“íCtüÌÊ$üopŒúXSj¸8ÖoV|‡¬°‡òx‚À¾,ˆH©–¬k‘/_ÄÕð¿Ýnª%G¬&s¥ùÝÍ…+`Ì\"¸åÜÈ5èdñµO¦RH¨O¹ÈìÉtW€f\ZÂæÇ™ÝÊ`ÉÉº2¢\rÛýML¤ûÍ\ZÜ¹{mj\r6Ï\"eìH°áïi-¯è²u>MùÃ¤½+È¥[:8T0 ­ù&Ü!•Ôì1üT\rnô/q®4Ó·°H±ÆÝŸÀ-ßˆÆÄƒêH<ª6[Ô~÷ðµè%+¯ÚBwåšH¯ÁiƒÙUK¸Ëæ/xµD^ÿs(\'övBØ.ÁÁ­6:Ÿpo½-€H©=ö’Ä7¹w+\\ÛÐ–÷°rêÄD#þ¸ç°\Z‡Û\r-›Œ =-s€S›áÙ!ÐH¦FÌ¿›!-×«?³ Ì®-ìª`ÇWf)½s]Dî-84=wuh{<2„H¥#\r“¹¦K2l\"ÎU±Á~é\n77Pa#…y5òà,]à­|b\r%n9]MUH¾Z7RBOôKv—N_Á2G÷e…_2k-=ó™˜e•,‚tú¶±‡ÜHŽ!|ñ/1D./qºOrŸ žþE×q7¾&†Eû,,•ùBbápH;aÜùÅAzüg-±	U0`¢x_‘ß‹Ïa¾IÕÐ&d`HŽ!uÆ¢?@g’¤Kü~¸[@üL¼Ñäý(xr(öê¥§X.Ï9§¨ZmÚH‚°?qÂ—¸K Ü?Ñ›ûÜ&²~ø#ŠhqóçRžÚ1QÂd©o:„žÂH¦Ëz¹™ƒðËò5:@3dV<nnªð­†˜Nú¼¼®‘¹‹Ü;NÕª+FÕoL,ÀH§Ä–ZÅâ–§Û³”d!Ä%µ›‘k}íÂV¹ìE4¡	U,×@ÉÎB:l°”=H¨eíxO-™þÃJíVY–wï‰Wå¿Óéosž•²mp…ÞÓ¯úSç+bJ£@H«U&í*{š¨~!ê§IÌdtP«I[Ž{”©ò«ÔèVlKÇ1½pzEH«UNRG`v/ËjÜ1¤Ñb\rªWò‚ø±BKb¥v‹Óš2ª3\\“Z¸p\\\Zh“€Hªþ!ƒ‰¾n+U•r}‚øåERf¢\\£aIã–qõc„3j¯{?áFJÜH©KaŒ.ÈòÙ¼¿Å”éF\\ijT‹¯>Ñ^ÙZ=ËÎ¦ÍømùQƒí6Áq®H§µDEggh®Å?BjJâeÃüÿ­|Q0Q&€ïR‡gãg]è8¸óŠƒ½8Ð1˜HƒÇ×ätp†Ø*]¤oëoŠÖ4@ˆ~_Ã<ø-\"Å`Âi›3¹!Ûþ‘[tH’9\rÿÌ{AÅé—‹™ïF¥àNày[£Ð@ßƒß; ‚…Z@ìT^TšÐ	H”q–“É\nH^h¡¤óË—‚“VÙ•ÛHqšx0”æÂ]¦¼åh`H“|aDO4DfK*Î‘Ê˜Åj­_ÇFï,G,%È¢þ=)ADxÝA[™Âÿ¶/OggS\0\0(\0\0\0\0\0\0\0\0\0\0\0\0{ºZ\n12232/.%( )\'&%)\'%!++&$H´\rv¶gvƒnžüZR‡\n)n|ž¯v>ÏAe\"#¢îú-®KclÔ¨:Ø©Õs€H¶¼Ýµ«ÉƒÓLañ.>Z@\'”\"1ÁL€”o²­æçY\nxã8«Ï£ÎA6 Hµ÷Ö9÷pç’åå†i	gxÆégê\ndä³+wú±ƒ;tdÍO%²@,þ|±ÔB–oìHµÖur‡ðDÁ¤Ø<±KØÍ;ý*ºÒÁWŒb)ýÐ×[2·])ü¾ýt,ža,H³kîùDâRÎwÇPÏ‚Z)‹¨HFð5-¢ä€{ò‘Y‰(.\nõc±å¹VŠZ—#…_‡H°JÉ<{Ôndí#ßbšhQžÒÀÊ«SþÔgÕlCÔYøW\\.Yyœ=?ñîH«I_.F¾ûèœnÍäãð5EÑù˜-o\\âÅÁ\n•¾“O_}YwTÃþÐHW˜¯aÙð™»îzËŠü)ìZòæ£o¥sZ‚\n\\þ.…×ÔìàŠHFZrd6Ùˆ ªG®O=Ú)øê\ZLá@û³g`†bQ,ÿð¸H+ÁcQ‹8\\‹Ðw0¡Ìú5‚×Z^ØÄæýbÕõ°øH<ËgÙ‡2°Ê\r”gŒÿ¥r™—kÒ4‚4`\0]–—ëš„[ûøH<Àâ˜p7€—Ë^÷ico¯šÄDY÷WaöÚTg C_Âï`H<êM&Ýÿ‚\rˆäˆqbÉd–ôqwÄ(^>þ×x¶¸x‹lHéÅ{“0ðhÎuNèV_¨…¿â8+zÌ<JkÎ~‡2å&Ì²LH;auë£-ì†»¼ìÀh,ÑÌ¹“¨‘Àº¨ôV3xÞuø@€H;eŸ•!ÆËÜ(%e ÑX«…7_«„c`×¡¹fj¯üÕÉÕò¶H;eŸŠ\rýŠïÐ8j»<ï.8<êÝïÿîu‚ŠÖn3ÂŽH;86,l†<‹¿öÅOßêÍ™½»*iŠT,ãSÄm¶GÊH:«,·‚ 	˜c©!Ÿ´Î{6ãûˆã×@TÌÞ¾’Œ€[Ö‚¿TüÁž¢[HŽ¦an{Ë˜›jõÌ@÷=ÁÏRAUÉÿàXç$ù¯®Q@\\s¶ú¿H_r8H<*Á.¹E£‡küKÌÃë;ÞrÑÕÜÇDd˜Î#6»@H;:ƒëëZ2›´Ïü¤QO¤qÕÔéÌŸ3ªg|¢ßßµ\\','imasatak riku kamva puncha.opus'),
(12,'Â¿CÃ³mo estas?','Â¿Imasatak kangi?','2022-12-05151445842098un gusto conocerte.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(N\0\0\0\0\0\0\0\0\0\0\0\0a¿rY731,1+3%,\'-1,3-22,.(*+*$+)0-(&)1,*433--7189592036172.,575155(1/353/,47%&)/)-01+62.21*(-HäÁ6ìÅ€HúbzÿÇ¥ùžýãµiY!gâŠ?H€[ö(]M“€Í8|‚øú:–ý´RèÛëDá5MØÔ-‚°)KÄ%Êè\\Ûåo¢-Cà¹mCÚíPH‹—óøçð^“ÿµö¾KØPP­¨ÉúAñ»ÛÓáZ„úF uÜœ¯ôpâQÏÒ;Ÿ°H‹zûõmÖš¹ò»@~Ã\0þw}ž7\"ì`Iø$õÿ#©çûqða9*f+096ÍLwÆH½Ð½½nÓ¾„|q–©~9!ŽÎUe—Þ%c† ©†ŸÆAê¥»¼0HŽ¤ÄÅ‘ÃwpÇXE/{leL°ÓBC®NàÁŒ­‚*ö:¾Î>ßZ«ã¾î€HŠÝGQNåîÓ±ÜHuQç$½íÉ ¿å×\0Þ?ÝE÷„Kš!N–šÖH¨®fuóòž	øÚÚ.eHk[¾læ‚ˆNÅÙ‰ìcñuéºÏÚ[4†¼•:ƒ2èf0 HŽÀ˜/t .Ìè«^$êtûë]úBÓ£PfVÐe¼èà”9è°_¨HŽ2Ž-˜xs¼}Ÿ‰<Å¶!÷û½˜GoßÇúŠ‰dkü½ñfŠ›-@H™hÑÏÂ	un¸„¦ƒçÙ)câZ³õ¶€?”W%½‘!Ù;À\"•PH‰ŠèÈU¯†)ë´ëMHCòÀ±‰_ø›ö’…‰’ýt£A^Üï¥Ý²ÍÕB;_H©ýš™”j¯%8¢ŽðŠ’Æ†taô¥é%ãåš%õ*§&uq=Õêz=~92¼É0HŽ$F©:™È/#«äºàEíÌêŸy´v&$Á*4+ÝåT¦e÷¸8òËnàHŽ#ø¾,§#ØS\"‡Ð­»öEÜgŸ~ÇÅ²–´ü1]\ZñÄZ<Ì’ÿ)Öæ/]ö‚	&HŽ$í+ê8Rc¡_ügj)C.wB.a“YTfÿ‰¼8\r&/Ô£ò¿ÑÌª€Ha—SÜÀrêBˆñþSWÀÄ­²ë®C„Fa´ñðÈk&AKà’Ò´ó5~š8p÷·€H¼`iWÍ\04ÆÅƒ?p¿&\Zƒ6ûéçX½X5ÙhóÆÝfoM1yaGúCb›™HE«e\05é_Ïš9Œ(xj<—fOÿ}‚o÷=k±. º)ŽÂ=Om)|Æ@H«â\Zób“øk’•—Ò?Ó®ÞßÊ¾wqš|Ÿ/È,U©–¾~Dž¦Å¹†ÓHø…ÏÚ-ç/òšC\ncûÊ¯gÎ1òqMÃ>9ÊÁÓ•\nâ0 HŽ\Z¬Ë^kóDbp\"FWb„OÈqÊ¹€ESÁyÅÎÕf³_ç»” HŽ þYÕ¡5{L3‡¸Ù¿‹tÙŸúÕDÜjñ“0<Tq8.ct$BÍÀHŽx+!ï\ZÃV¬y•žX÷er¸ _°ý1†·H.Û…û\'…Öýû`H;\Z¹Ž¸0’æP²,V¾Wfÿ	tã¤‘ŒQÔÙizzõ£ñ*H9Åd;\0|Š¹ÇÎ/2wjäßÌ©ðm;àõ›÷Ô×¼Dw}¼J†¶€{€H9¯ˆ‡¿B•Á\n!k*ÇWè0J\'\0ß[¯«Ý?&rwÄ7)›Âêq§Ï €HŠ[7xó\0e“>°\rÄöènVãê²ˆ™\\jWÄíÄ•õÎ	oªå\0iw\"<…rÎÀH§ž»öJÁUíÛñX¸ÜÝÙ’»‰6}Iúe¦	‹© í·x‘ÌÝf¨Ý² HŽKH„A¥ÛîZ¢1ùõ\'¥__²vÞ\0‹Ïy\nCœ¬\\[¬b!h H;eúè¬ÚÏ:ù#¼9çñD.‹wÜÈ»±·÷^MÔÌüÙµPH;O™ÜûÏY³))^Ù-Á¬CŠnûbZv°É@ñµR›—_à9/c€HŽ2ttßÙý²µ‰ô¯®0ÎAžØˆÕp/ÀÜi4KŽãD,Ôè*&[N[ìþHŽ dÜëÕkÈBÅ÷Sùí\n*@ß¼m6Ž›£3ÉJm	É×Â‡èî×èÑèHŽ dÝ<`E¼î÷™A®RÏÒœù­ÍÚ„NEÀ më9Ü™Ó&àH‚×‡wÅCôÅaß²Ö¡®¸Ù_zóšB)‰(7¬nY\np©™iª‘ÓÐs¨2àV†Î’¸H­è¸¨Þ½,Î¹»÷×\"RŸek7„È«xÃ\'1ß¶ÊNqn}Þ•{ò†±‚L…±Š\\_XH®/Ø²ð9é×Vi…°`þØ6-îø$œ©¬ó-ÓŸþw{>´ÏD×ÎK‚s¤~æH°bËÇb’á‚‰@ØöÖ}1˜ _Ô¬6=4‚ÍJ	²ˆsw-ôî¶<H°,‘¤D6èúðëÎkYrÙ°Dó\nÝJ­Xvëà61>!oé_\"†åØ`H®Z>e ]Œ™Ú²n¦Á¥_Ý\"LçV*GSë’uñeŠ¾ùÅTc€<’šu«‘C	tZ v½HH«I6:ªmN{wzÜ†Y÷„VI©·îØª[Ð/*í´$ZIÂ´ŸÖÒ\ZÐñŸIïˆH«)‰@å•‰0Å¢µh´Â;ÿÑüøý5{õÍ|ÖüUØ‘\\ò}<§rø¤T}gYêŒRX²ååê,H«f™ªSnÖÆ|fSÈ?ò!ÿ¡J§\nM|v¢ó§±‰¢óÁéÈŠO2ò1“)-;V1æÑ\'Ä¿×é\0\"H²*5¸\\¤Tñïtk±ÕÑ\nÞêc6JÙåJ ª¡\'Ah•vÌæ7Þir*6îUÛx2àH´S“qk}0÷Í)Ñ&GžPjêÖ±IUèÉáìië¸…[]°”ÙR°%v3Š²—ï·ü§ù7›êm¾°H·BÊ$Õæ™s°åß6	ÁŽ«»‹\'ÓõBYì¸ë<§÷„ŸÅ2sÌ\"ÌNÖX´\0˜ˆH¸ˆ¼\'<FáJá‹ŒÖK$¸äÁQWçþ’ª’#Ü»ºHä{eñDÎeµITÝé˜.ÈHµ´IÒ?¿×Þåòo®!±sŽKNÆžª¡Z”2ŸîKT°\n6Ý\0¸š9ƒùï>³ÕK£=šPH¶!ÖÈCmÐÇ	åàF™ªôÉæöÐxo4éfH‹é*Wzµ]ªÅ°xÒø1£>Ñp}pH¿‹:ö©wÒXUjáë\"è\rxàuÀXÞëÞoS#¶wðÂ±é\r)K˜ƒ_ÂôH¿|½÷û£OüÅY\"\n¶ŒÃ!W£™ûv.JBb…H^ãq™–Þ\\Sn¨éWÛÑë‰«š€H³§›ˆeÉÕfrup`:ÿ¯§	°u(Üg‡ØiõÊ‚+¤1u\0EÛþ\Z“­ò…×rè(Hµ\nWÎŒì$‚ŒàÔ\ZmÌ¨Æ¯§âBD$ÉütÊR§„»G1ý@í.TÖÅ\'Ÿ¨H³n9ÔÑ¥Õ\\ÕÑ†À®†úï¤8y·CõSÀj¿)u/’²\r~NáP‡—o€H¬³¿Fhò`‡ƒô\n•È%ã	Ý•NHa¾8†ò…[Ôž\Z\0àÇ_Ë˜V	Ý€$ým·ÀH¬ûæÓy•î%œ…¹¾\'æ­I«VšxÞ\"†ÐR)8Õ»nm£cjù[5:ÏIúŽ6H¬ÜDø;êöÛ?cwvGñËòvÀ€@s\rÅ:ö½·Œv‚E03½9;›C~\\5õÀH¾ßÍYÄ×7\nßàç\"Á%ú…Öº…àã¼ó\"G¥^b¦jþ³.¼/Öø\'].-ßŒ+ÀH¾íTÎ¯®þæ¯)t/‰ÐÁ¤¿Ÿú ŸwØÀ.*e™Ás+8‹Z\"é*&¾@ø¦/Æ¾H´Sô¼±+å_Eã Ü,5a ü’â™N\'\0H6k¢²/tù#ˆ“¸„™GgÝU~TH·„k„oæ|ÓÌ¡uœÝ—7-\'\"ë6cüæ¾Å— þ%¦	ÐžH¶ìd¡©¢¬g”ÀØÞv,xzÜ¶{†€Ã¹…Ìªvä.W«ð×ÂØV2“%ØH¶ºC;OÓ_‡ÈÞ:¤–†×\0mé,œ˜û0v}¨Ä\ZZI*ðHï›—*ZUÊ H±sÛh‡çû¶ŒÜé\n	µ=¯h\\¥»ƒ?NÆž×­®\nµymlôìüÂ$ºÃ—§âseÌüH«I2%ÓrxQeqåðËyL(¬t¸ÿ¸-{Ô3.Äd«}.EÐQÉ7äÉ“µô´ÈÌg;ÕH¾ÂAR¨ñà	,ê€ãKŒ[#eÄÿŽ\0NGD¥ÞÉ†*ê¸Hlˆ®½Ü´+¨) ¬#ŒÈH¾¿¯)P‘yé/ª#´ WzCtíÜÅ!šl»‹×“ƒ¬rëi­{­‚´$&ç,ÀH„ ÓzuÎÝðw¨\Z}1¯¥wWðç#=äô„î„„Y[9Í’¸·X@0{tH²ºD™ÅW†0tã…3“}œ³VG`96Y¹u¼±Ë«kSAÜ7Üµ—o†œ‡ÈRÀß+BÕ€H¶àß\'öÙØvË!+AMÕkâçg.“RÙžç£b¬ÊËÛø„ÝO’\0‰Uü¾+.q]FuH¶à…£5X×½8ü\0ß²\n|˜ðžÜp)œXM6/èÝZ	¦Uæ€H¶ßY>ŒTÛ„5Düï¯h·5è“ðã^¨þ\\Ê”k¥ÀS>ñÌH¶ÀA8ûI)\Zpq/‚Ïö}yÿ±#:‰60‚š?Ô˜@vÁEZŸ€Hµé”\n\'§ü®)ê»œ7‰Þá¹h$uPNùiÂæ„z•;Zq‡|\r 3KîhŒ H³³³t£ØI%…:IÜ×Ì˜1©=’ú\Z•J‰‚Êb)oë_ÓÄ·àH±Æ€&\\l_%ÀçJg&â=#¡MÆaö\'áüÅpH?ô8vGs@hžeHH°a‰•§sjÚ@\'É(ejj‘Avª¾ ¶r.ÕYŠ›70|UQp`®Ú_¾àH°e”˜ècñêõ¨;ÑOºW|©œ`Ûb‹bƒ:(\rMRø+„õæ¸¹ÀH°8Á¥¼VÞ¯+‡^*ÄÒ=ŒZæ‘‰Œãv\Z -šÀÇ<Ÿ¬ZüàH°”¿3nÐàìÊ(^ŽS–‘BS™‚ißx<ŠI¸d§\\­y³ÀAY\n,_›-XzÿÅg€H²Ù.äžDv—†™Š…X÷Î‡ò93pM@ðÀg(I»c´˜_õ>»G¿ÔWÄ´ƒVF€H²•:Àá¨õ\\TUvœ\Z»ßôo+¿ÂìsO‹*&Å¹&ËA )lH³ÄÃÈýöÎ?þÍƒÞz2çIréE7“-gÝAà€ñÇ*&w§H‚)<ê)$PHµ:rÇl4_²§jöEWO¯	ñ-6jø˜š4?À\ZQÎÊ´…8ý‹93„€Hµ×J!½ÔçÉ<Á6ûêV#¼o©±›z»ë¢BÖ¼Û8ŠÊH³¨ã\\\\[(ƒM™,$ÍÑ$Õ¥¨´ŸùÀvmô‹\'0:‡†KJFàH±·ú\r}s™Ê.ÄP¸qF¡{uÑäRî;›»|+·Hûá‚eÿúñV*9@OggS\0\0è«\0\0\0\0\0\0\0\0\0\0\0\0ó~`2.*#\'\"%&)-*$\')*($#%\'\'%%,H¬¤œ·õ)öTÿƒ$µ¸ÎizQB:\n¡—•Êj nàÿƒ6•ô\ZX^Sˆ\rRÔ…”H«J`¤XÚ´ÙuØ¤Bpí½Coè_¤‡ûÕ1þšè²Àþjë>MŽ;`bÓ÷‘H¾§¡|S\r\\×!›#OQ<)Ë[êfâ’¸gM\Zzxb——Í3²[\\0šJH+yi5óú{a×ÎkõT 	ˆ¨$‚NHLIn]EUH!ßnž®Å˜Øwñ¾¸bÎÓ,Òhs¥²O	bÚ7mQ:&òqpH<6ãeJ…ÿ;ÍüÈÜü¨z!Ø×f>U|r[#éè`H<2ÞWHºã$1æÂxŠjéOO§»û |¥Åáfû‰Hj€H;eŸ„’cƒ•M%vš,&è¡A¾¦—¯Ø¼UÌ@Ï9Ór/Mãþ€H; QðÁqÌ…o:>AƒÙYÒx`z\'\"»¨s~¼Ä{S98Ût´H:šò„<ntm)ASGµ§âÀq7SðŸÐQõ/¬Ô­Vž¨wqt!	ÐH;eUÛF?`Ym½2Òï	ðišò3¶±WÔ›6Ï!2í\Z¼X3ôðH;eŸ¤ê&¡p¶5MÅÂ\"nx‰‹÷þëi‚›o·H;eŸ”†E…§þ;†ïa)Ïe9ÌýÝ.¤›fãØ/¿`H;e¨àåÈ‰4(!aDaZ	\neõ’Íf…x‚nŠý×!uÌÀêÐH;eúã=EwÈ)@ -Yp¢²t£Ö@ñªà‹€ÙÆñú¡øÓ€H:•ƒ:½yP3k‹mõUvIK>ªº¬âýÃI¾(ƒ*‰m­§	8dEH:•ŠèÂ«{˜ÕðiØ|åxZÕ£b¾°ôeÓº™É=eES‚¨\'€H:•/‚¹¦»É”ÈgìV]êhkî@Œêjçï§Íûá¶§ïÏJH:•Ñ}À/mÔd1©áô¬¼Í]ªs³àçHjù?T\\0H:wÝëŸ&p5øºN”+/øNÕöÇyŒ¡‹‹.<ðpÉÌ•Þ?@H9ÁÇa¾Q•6I“³¦A.©Ñg—B9ÛèÂ·Éƒ[VJ3‡°Ì‚H9ü4¶QîK\ZÚ|3.íÉ\"Ð·jé/=—¯ä\'1=C6‘ÀH:O¿T6žMÆÿRìÙ\"«ZÖ\0/ŸCC\r:‹c»’R(HÑì;k¥ìUŽæ¹~„•£n<\rOLþ”+rúÅÝ…QÖ€H:™û6If>@bi ó2™ÿèŒËOœF>8.-\Z¡_b`tmŽe\'\'@','imasata kangi.opus'),
(13,'Â¿CÃ³mo has estado?','Â¿Imasatak kashangi?','2022-12-0515150951707un gusto conocerte.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(]\0\0\0\0\0\0\0\0\0\0\0\0Ókh¨]22+/4/-1-4(%(&*)$%$&+((\'\'%\"*#$%&$*570,1737;41,/9635\'/-44-=5*,62#&0,8)-01-+*)))%,30,*+0/*-,3HäÁ6ìÅ€HøPi›mrNTmò\rYDr’¶üH‡¹&vG¦—dOLÎŽô³:k.áã[Ð£z/>°®™Õ½àÏLŠÉÊ.œ$·|.Û€H‹—×æAÒíó$®•Èb>F ×XŠ`^0“‡È>þe2x¾²ºKiõñy…œ‰Ú`€HŒ”xIIr6âL€ÛêÚj>\Z÷ˆ¨Ö«\0TfoøC­ðB\'°åü–4šTH4\'·@^Ô\0FÊFPñˆ«4Þ¶*üí§\"×À\"÷Úó†çxïéšŒm:¾îOÛHœÓ“Ð¥oêÖoö€ð{šÑ\"ŠÿÖ°öo¥ÅªÝ¥³ÿ{t Ô;‡œŸ¹§^…YZðãHŽ$I²>òÿò¦ôw<üIó©ÆÔ—GJâù¾ÓyìµÓŸ=W)\0ÍUÂÑÉd€HŽ#ÜGz‘³âÍÌ68sþš»^EÕñ‡ŠP7óƒiC—B[VÝ=ƒ‡G»šHŽ®´©àõ¼÷g÷Q\0&õôWˆh\\çÀ´¬“ŸÿJjNwcÑuSH$éˆåÂj@HŽÕ¢å%L»cËVŸaèhÏ ìH~Œd1jÛÚl‚“›WàþC¯„@ôHŽ®psV™]¡&f¼«è­±³%M •ÁS×òG©‹0TÕÛñr;‰œç,]w®Üu%\"û H<>cîrã!5&§t²šÀ „:š†½–ÊöYfU%’ñ×FhH<ËgÊg9Ê™:öâ¼oçð¾6£{B7a[@³}ë‘.Œ…H<¸}u¯ò´BQêÔå×,Næó™ñ*_¸×—Éîû’†áEõˆN˜H<Î½=§‘©UøæÓå7N¡=h\"ÿÅU\"“çˆ°vÞ†.û]ƒ˜4H=÷ºcq\r¬0W0,ß®Ì¬\0bY•Ã+ÃëN¥xÚ]ÙOÆ9£R€H=÷ÿ2Ø˜¡¼f9p\ns¦@¯à›9,ê$Ò9¦çòi„§|ÄH=!¨UÊE\'E+Jè\"xm‡DïùIÚè8ñ†ŒK(hœÉH=ív^Ëòž fld6\r¹@<ô±o¡ŒôDÞ6—ž´>ØH=(ø½`kÛÅfÉÄ<ÆžE«ÉùÃ\rÕJ}®Š¼>~H<Ëg&Ú°CûŠ6ÎáZìÿà»LRÛh4H6ñ¼¸3PK¸!€H<Ë`ÎðÃñµƒáôÅ{õU…›Õ—ló\"™ŸËìÜ±%µ«#æ­_H<ËdêKŠ|‚Ž¢Á¨v·i¦Ì?‰½Åii‹Ñ£„Mþn*Âd}«t%€H<ãe”ë>Ê¯•Ú_w\r·gY6ì™¨ÚËæ!Ë#¥c’fÏ„¦¼H=!Šk×Ë¾3Íl¿VÍ»ëƒ_2XW,Ã¹ý1£ÞK¾‡^˜ç„	ÀH=!‹\'2n~ÔãDÒÚ;l¬.ÈéŸLì|ë%BGéÏ.“ª‡ÐH=FÕä*Y-•4þ}W¯¹k€ÝIjV;«—Ý3iÖ…€H<ý“h^µMz\'°èŸï	\rÙ`?2ÅáÀicÛKÀH<pý4åŽÍ.S°é3Úêž`ãÐP0 àÏ?Mƒ ™o H<Ëc«p·r­Ç\n*È;ö2”ŸÂÖtQ…tÉ§cÀsfrPJH<ËdÈ3\0¥–Ô.“îä\0Tý	‚ÐµäþH¤¥»™HwÜ7€H<¦5k;ˆLÛ_ßa¯6½¡94JEbŠð”LÞ²‚’/H; ²GçÉqˆŠÜ~\núu»“åÝÙ3îÊúÿzÚjBü€H<Þ1¥áÈªºÉ¯ëÅYÒùaäëóí’ÅÎ˜N©*AçUqÀH<6ií­q´=òM½€/‘àï@ã!îs_ù\ZŠçQø÷––OJ€H‚á3kÄãhKCH±ƒõz!	ï«èN7¤âÀÑ“4úa+ Ï\"¡¿åÉ ŠÌŠrÚn°c’˜H®’Éãä\rYØ§Øß\Z‘fèÍP%m¸Ì¨kzÎ(Èì)ˆ^¡Nm)¼iv×‹\"©\0Yom‡H°A×ˆÓ]2ÆqVHØC¹U)—`ˆ œl}>Êiªoôp¨³‡^¸I‰àÁ\\«™`H°Ej·žjrhe6`N?NÀO¥Tì\\ü6­2à\Zß«¢ƒƒÙ‘….Å4ö€H°V<l®\rJã5tá\'n°#WQ<îÈ7ÀP7N\ZÏõúT5Ôu­—©mÐbyÙÏ1(ðH­\0’‚ª\nÌã»\rÌoÎ>j²é£Ý¼hŸ:†n=ùÝ÷ÞöÙqØììˆ„D\'?à.!û.îý@H¬ÜII ž_&s/%’äwþØç).ò»á\ZÆ%ÆB¯ÅÑ½tfÎ’ë{¨4Ð×ï³ H¬û´%qÜìRž­Å0•I	Ä”ÉY,q%ü£æÖ]nÓ´ÈO/W\róûGãÄy!àß\"çkàEnH°ÿC¶÷×Ø³ÏKŠ…ÑNçõuKìø\"T–zÆ¿´øQÛü9›AuÜu/û&­¾\Z\Z›+¬sF(R H¶G£QƒÈ:&\\IÌä…¥8ø½v\n|É l20$¿¢J=ø´A@Cìør®%êÈr€äòH·‡ŒÞc7‰ÏÆ|~G@ aé#\r‡#?]m“Ò`‡Ko@ÝˆN=ÓÙ2¤É0•JwŠH¸ÅåTØÆAkî\\-mç_·ðcß-[¸SlóŒJÐYoäª‹ÊmH·¡`’&Ø|uÌ|¯qÅi–‰ˆð`“ãFÜÙ×çS	·&è\\Áx_}gaZ›xø€HµØ½ ùŸ å°7PþP\'2Œˆ;ìg\Z»O}˜LKaöEÉ¯Œ‰xêbfÇz<Òi¸™,µ†÷YÄH¿#ˆÿüVú’îã{5Å±Ô^°­¨‰UÑÔªý˜RO%™}þ%˜¨°Ç]pçˆÛøPÈ¢H·¸ÉPù¢Œ-¤F™ó¼7ñ”	ç‡\nÍGö¶hMwkïX\\&—¾…‰õÉ±ëj[šùØH¶rL±w{¡[ì¾‹‘¡ùAº6š	v–¥©ÎrÈ¢µŸó\0¶ÎIW²bD€)ò¢»H¶éµ6\\	a¤êP	hãw»ålÐ“V\Z]ˆPá01&õb¦\\á¼ai€H¶¸^—`¬­eÍþai´™®àãö|ï!¸ç£FââTÁž$ZÖìþ	êœàH²àUj¢6ã(|h{ztä‘Ë\n\n÷Fþ \\j¬P‚oÂÑYÜìÂ¡SJØpH¯ÌV<…&Ç¼wàÿj~-_°Š­Æs«\\ð°èlÝ-ÀœãE[ž ‡	*˜/;zÜÚ@H¬Üå–H@%x²ç&0Ë\'\'þõã¦hœ“­~ü@O&èôLœôÈ5€4J¬q¶¤!`H¾ß_îâ?l©;í&öc¥Lä1„Õ‰y—Ðkš÷È=zSÈNRÉ°ÍýŽüo€H«ø`ÛÔ{5ä=>ù‹™™Böm+çýœ\ZŒFXÐuwÿèzsÖy•^š¨\'ï  	???‚•˜×{_K H·@»óhˆ)¾™s\'\Z~¹Z¿EÙ{7ÛBà/ÜÃ¿“_‹­éÔ €é€ÀBöïr4H¹ kmõG#+56Â©qîïsf÷/ša»v¸bíEbi>/£\0ªH¹ KÐ„s¶`Û[*KÜ°27PøåâË«„AÖh`YjÜ’:òHÎMhH¹=¡ÜÊtÖ?«²¶QpC%T#Á	cì#•w/š@ã¯ó‚\"ûØç³â…ÎûìÀHåÇ¥¯¡×H³.ÞÂ±3‰x›«tp#B˜ÂÌéÓÚ¶s`c¤æM5·¸íZÈý„þ—ñüPH‘vmOÂÞßÖN´¨èÁ§t3+¿Vs`dÅ¿YwX$H>ŒŸÛ–Þ4bÁÅäØV¸Äéó\0G™ËÞÝ)ýE5|¡¹ÕpH‘‹¦‘T?»Œâ½h•£Ì…©Â´Yí€Ü™\\\rvSùEsï[vó¸L¥¯FdMH”TvÄ\nÐ+a@†j¼\0i±Q-@}>ÉXû7ƒ$w¸v\'Ì|@ˆ‡P3ïHµr	.];fœ¤é¸$­¿Bài²ü™¾«–ÔE^ÙÒL’^†Üð\nÿq™L ‘œÈOéf— H·ÆãaÚæ½‡af}$ØP<)ñ–ÒXðÿ3!éæ«¶UÌü#±-¶6ÿH·ÔS-ZÜÉSŠmxÔB†ÑýÇ‹­d¡]u«“ Qèº–µK÷7À.\\`H·È)òÉ †ß1ýk•ëèB8ã‡ËR»e1T5ú.P¨›¿zÎ”‚n…[($OS©ÂPH·„¶#$¬Lc¾3«„œ8IýÙŠcuz¨f-¯9ÃÊç¬‡è™ýzƒRÞ‡ÈÒñU³¼ H„ÖBÈµXøo8sSŽîÇpö.>ô2H’g÷S8`EÓ‰{,¹9šAl”/cPH”ÖËmýb‘…YÎÅõ)Î™ïADLï•Ènk1k9u»CÇZI‡!9òH”UÁ÷ï‰v‡ëËìÖIú>T>ç$Þ…<]TTÌäóÚ¼³ÓÀH„E¢v`WäŸ{ô¥z6OÔÃ¨¿\'3¢7ø<Ñ¢°\n!à·«!ºHµ8ÐÔhéƒm	òf¿åÁ¨#e÷‰ò\'Xí:×­7Yß„\n*·\ZB@HµÊ²‡HgVGEcw¢\"ë¶QÊ©¥÷‰3¸\\éÖÕF˜–Mç™®Hµ\nƒ+uóWUêWÎ÷˜p6\rUtYVv>ÔH¼æüar©kH²m´6¬_Ü÷qºB‡O‘~€hÙÍ\nÆcý×9uü¦p9Ôÿ¨vû,‚¸H²->(y‡Æ)e«?·ªÈ—£»2O\0ÉÇ.¨ÖWW·z¿ƒ·CV¿rw¡\Zu+gy•W-.H³Ìå¨Ï«>3,¥º’&sº½3rvßKÄÌ¶ZÍBŸåíÆ§\"ÎZ s6·ýwH³˜³Zî!êøb éJhNñ³·ŽÊ]HCµBòQBOSj­y€€ÈeÎOH±Æaëª‘¿K‹Øš•œ!p{qíƒÌ2K<i”žg $Z\0F¤ã¾ÆNŒ¶H°\nÿmMÆuëS»Ù‚njÏ¹]Í‘Ž)úŸÐ7ã»\\3Þ³<Bó?\"ûÂþH®ºÒK¤fê6hLº¸dZô¬˜²çû¨§ŠrBEÁ¾³}ø&‘çWøÔ¸“PH­à›“å¯C;I€nz 4õwœ×\'ûêoâ‰IU‰I¨©ŸrÁúû€H®€Hü©7¯mOÙlg(m=špbÀ#—cn²-3Li¬›~Íp°Hƒ‘^å„ö&Ôþzðùš=[¨JÕ×Ž¬8iH	}Fˆ³ÑðCg\rïf€H„:8 ÂÛ‡gïªã¥¨³à[7\"WâŸc\rÖ8ø=Êãq1T‘ó2šz´ÀH±ø#D††Æ„wñ«£ª@õ‰Þ`4¢[O¤>GøN½³ˆƒUÆ½1áµJ„¹ßOOggS\0\0èØ\0\0\0\0\0\0\0\0\0\0\0\0fˆt!45922) )!&#+\'+$&#\'()&#/,0\')$%()$H²\'À\Z³Ù“ÒãM?zÉ™]«\r]á£˜o¨t¨ÆØœTh_­œäÉ¸Vî…*Æ¦ÂÒ£Hµ<PË¹—ÆDpÌŠ*—:Rs „?#æŽéÒI{Ë3ÇsiÆ„DpõÒ\r*<ZŽÝmÆ® H¶œnØùÖ9q€›H~§Í5,Žc±ùtU”@¹f1Rs˜÷8s°¿Têc\r¨1=‡~á¯Aëá„ë,Hµèý>øžî´Áhõ³ÿøÌl“êØ6‚\ZcjQ,\nŸjÐéïÏéóªÄr{ñ^H³lu¦n`+6œNã<è}|qõoÇ¡O¨CSíuã…€ur‚õCC{:ÀŽ$H>xßènÔyfÀ¡ND²gÔA›pCÜÜ)6ü)°Bí`aêi)H>g’z<²]\"Ú—JéÏcdUx\Zà;·£sš@H=Ì¸§©gÏ+!AŽ»U–‡‡jÊ{Ð=l‘CèÊ#î8H=x\"ûçYþ;DuyÊ1$–†‰Iáö¼×ûG‡Ë•öŒãë H=g7¾ærÉóUÈÈVàLwà´N{œNLõq÷ƒÏçŽH.*íä3ô&ñ·¶§J’ƒÆ€Î¨-œ4×‘¹Üœö•ê£’àH=!ƒfsã&ÒÏA\"œà­Ý~óÇ\Z˜õ(<ä´ƒã—å\\–5H=!Šh­ù1àýd^ŠR¾Ân25öm\0ðKJê‰äå¨Mw¶Fg€H=wË/aŽ€¯ÈÓŒ¤&fÄóƒûˆA—¦¶À2g#:wÔ\njÅ@H=wË­!šrÍ÷8ÆUàþpoÅ·ÏûÙtµ±˜3ÙÏTGã$X€§wºÜH=±QƒœÆMù˜Xµ6~Håßûy´Ñï,ï©SwB˜H=[<Ùy±—Ò§âblr:\nØ?{6Ž}}dzŠ*\"ÝAÔ!°ZÏüH=ä@Ví?øDõÌ5¹2qyñÒªövM¶ó8®Ä fàH<6läÔvÈ‹fü¹MùxJ†LõL‘rtÙü}-SÚ3——ë@H×#=Ç0q\"ÇNWX‡©ºHîW<ñr-üUàÝ~Î‚˜²Ö	Åi¨¨H<Â]E³Þ¸&¿¡~„NÝ¯RÐ`iþé0*š\rv*¿ˆ_O»€H<Ô`C?æzKX;Öh§¬K†ÿuò¨ì™Q ó¡÷KuP6ð H=$ÿJ”Oë\"¾F´âƒÌæI°R××Ðì§(j¨€H`0ãNlxÃßàãžØœ·Ž`r&û\Züq¶ÒÆ+Ÿd¥µ¯´¸6CÛá¡\r&H‘Šˆšnüe\'/<lÓmŽñ@^¡² †ö…#¢>[x\0î¹k\"ðšžäHƒç\'fÄ°¸CèÿÞ¦ ¦kõ,D ÊW_iÞ÷P“¤?Ön¢6]—ôÉ€H’âl/©#uw\"RÈ¡0q5UÀ¼RÊ!ýòN©*€Öx¦Œ¨PH‘Ø¤Û:ÂS±Ø;nENBá¶é¡ÕR3îêßŽqÀ;ñ!½Á/Â\0øH>„rÃ¤~HV<N@9g×?0ŽîC_W\nw&$ÌYjÔ=ÀH=Âq`:\rG]µ#È¼¥JŒnêY7KVàÒt®T©,.¡ÈH=Žµ6[ÒXI+g½«,‰Vë%P…`.öÐ moŽëGPH=å™>@Ö»ÁqoðÔÀú…úæß´‚Ï\\4í;7ÌÇ·sÂ€H>jÙd\nO¢ÒO|ÂÿÑíVsu¡`Sg×l=÷Ç0\nÊ.À','imasatak kashangi.opus'),
(14,'Â¿CÃ³mo te va?','Â¿Imasatak rikungi?','2022-12-05151622482607como te va.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(]\0\0\0\0\0\0\0\0\0\0\0\0gÓˆ]-1)0+)%-(-0*%,&*\'+\'#&.+)--+&#%\'&&\'&8413:3899.02.1>.0\',/6/.155+,*14/16-54--\'!$\"/$3-32/-+0\'()HäÁ6ìÅ€HûÔAÔsWÁ«±÷‰ë\"€3[‰?°H€ÒÚÄ€†¡ÅV§\ZŒº{Ï7XÍÅÜDá´æéÄUg„²t=#hPU;à	bSH8-!ÞÉúãÐQ@ãóPú*w2Á/k~‘¥ˆ!&l¸7¯2ú{1&?2ÀH<\0\"k ×zd…söð³\'j#+û‹ÀD·œˆF­C¶dÐ H?òn16³n¬GlwŸÉ¯¡›©0¤Oˆ?]ØÔ„ª‹Y‰ðÞ,vh¢Z–ý^Á’H»%\r%ˆÓàr	`MKÁ” ‹=jî ¡ZðBY¶žN,óv9yþßH¼Ô\Z½I<rØ9¶†CogòˆÎf£\'|ÈìÚt}0ä Äîµaò„H»¥^Ä’bAÙÓLðèõˆma~mœÛÒ]È`k(Qa\\MÀHƒ-W™¸W‹Ø¢½£3ïl_L>	ýn{ñˆtYÐ—eÃkïœÈ^Qí}NÏ€H¼“ õD^H¸Ùœ„\n=<·…ç¨:ÔfX¿|î’+øò¶C$HË»ûUÞØßÍtœøÚÍ‰(¬=A‹M~€¥Û1((Èt=dŸ|´€I\\þíHËAÉÌNö“iílªëKaòàT\'`;Ö‚B‰\rjÚ-ÍêŠd\"èè\\°?àHË=íçÖ÷šF¤¾Ïwu÷?.\Z¿¾æÏ=Ã–7	e†ñ’º¦„Õú¥H=!§«ý!½jìNÐU%‰ñR€[I°Ø}í2™+ÑÝ\0åh¯H<ÎÂ~“@ã>¯”Ö©pº€?yÂ¯¶8A©ö2QcŽ‘gËn.³F¬ö”H=Oƒ•ünº¨ùEDðSs²šë‰·n|	©‘,Ýø0H=$üŽNÉg›EˆW7Ð^ã%µÏ28@µÝ[[k‰$Uä,L•¦@H=wËSVN³o4äÇà¬´žnÌŠ£Û8»@ËºˆÑÂï6:@H=rÀ!U\r0§¾âGÜ€®ãç{å·ŒJ2õGÖhT³êÆ\"ÃàÖv¯@H=o\nSž˜ßÑ!¾£Œi\"xæÛ+ÖS*•yD\"_ÒVô˜H=o~²(”B±£ë(F5‡°Ý-¹+Û\'çp½\"JìR€-ZH=ÆÿÝUòzXDwà\\…Î¤è2•63ªz‹ªk]hrú(æH=¬¨Â™DyF^ŽÚŸÃË™àßãŸˆä¤aŠnoj¾­ŠW…{ýîŠ{[|£u$aH=¼¨|«ýüxÂ]²Ð÷¦ü2[?Aû?€ýänZÆ³LèÎ­ÈH=­¢Û>Ã#½K±{Å2›´”ÝîÇ\Zò^ÙÆæÞëœZÎd-úz<H=;çz\n\'Y~Õº”¡Ù&\ZßÛ®OÞ€C$šué\"¨¬³¿–3ÌŒ&`H>;:ÎUJD|‘Xï¾vóÁ€ð®ó`­®ÛÁ°5|ù»\n_ú_0¹Gƒ%H>ƒ¤(| Ñä@â§:\Z‹<¶qÿQAÆÝ-(]èqƒ!4 y2=\Zéb°H>Ç²¦dó®iî«>î´|_Jænã\riQ‘—Lv¦ÏŽ‘@H>Ä7×Ã˜z\nòýYÚ.»¬À}=®Á¢y9·-|wàH>qg&”CY”#¡*·(mO³oçè²(ÈÜ½ˆ,.ÛC€H>nòÁ®§Ø| ågaïí˜qÆn’(–<ª»ÇMü4Á«Ú ÐH>c¯>êGz5¸¿ô(Iþ´ñÏîÐ÷_kè/&ø¿u?¾[yH=o†ÿK¡s:›_\r·W@@]ÍˆŸbÉl6x‹óý´uh—žÚ€H=rÂìã†Å½›ö7GÑ[¥5_À¯åRØílRØKªîû6H=[ÖÇ9’%Ë¬;—0¦Ã³Ð%•?Ã>Ìª»òaðH­°Æ»/¾;tÌ\r¢º’ÿÌØz¡‹I\'8ª%š²q¡¯v»€€í”ÑgÈëõ\0<h‘)í;H°E”Hº##ŒÞ§ÜyO°S‘|·™‰ìÄ¼èÇõ\'Õ° 9*tÂ!¶z Ê=âH°yf¯÷$-ÚG&Ö]–>mÂ¤))Ç®ûËçèï7À­(yU>æáö…©¤x†#17ÔH±ùš*èÓžÙiÛÈ³³(ÄŽù:²—vRiÜyû7ãÐ†LÁë!ñ‚4^—ÌIóð©H²ûoã¦(‚K…Gˆˆ\0‚÷œ>½›„-²‹›-/ÉˆìQ?•²>äpeNZªÊfÿ1Q5,g@ÈH°AÉA°Œ—áiIgE¿—´ºN—(€òÔ~6·«óŠÚ	xPÒ\0Ñ3î§Q¡ {Ü(¸¾û`H°VPBÈ´¾Ï‘ù_äÛ\"çj¶W½nw°ò†#LH„ì“Pf<¿éc©Ax+—,“s·A€H³ÚŠ/ÇàÈƒ’(Ž©Ï¶C-JÇ:Ót@‹åB¡·íðÀ©ÄHú7Xh4ÖkG\rUsW`˜/I pHµnãËŠ;MwÉw,åh>`é)l·Ì¡Ã«Õ2ƒWQJ…ŽA81¬NŠN¦=ÑÀ©J‹†Å\"°H·Ðõ/5—ßz`_ÌzÉÆÞ\"!\nŒaÃá&ÆO‰@ãu6÷ßðbª˜…¡ecÄIèH¸¸8ÙùnÄqË“Ì‘y;[ÅI”4ÜGèT=V\ZCB&7+î(Q{öª@H¸­o‰«7§9ÇK t*Óï/…ªžkš¹â¢[|Ã†FlrpZ¾ßÍ‘ðÞ-§³ë°H¸ºæùfa:¨óÙÝÍîÎ€&\Z˜­ƒèDÉ¡3™K*¥Ø%\ZŽ—xY8‰Ò:wH·À…ð–Wß§áÃ®ç„vÿñN¹Zç;`s\ZýÁRÀøBëß¤F·$ï^ÞH¸k‹÷ìd\0µp\\H2ãFI½›*/CÖ åÛ§¨”4A1Ý8#[Ð\0vIee¯ü\r_àn_¢WÁµ¿¯-]ôŠ€H¿¹·ê>–ûC] yØÖÛu”„Ê­à\\nPó3Ï*CR¦ÿ¦(çëÈ…¸~y`H·À+ÕrëÊ\Z„áÆö\"8Y<À¥Ó\\¨[5ärw4÷),í]K:«@‡ÏŒ@H·†¼Íö:bf}ƒ=ù¤O|‚1Ü>‰·âîmc«9ÃpH¶Øí &¶’À¨–T)N-æ}XµËŒ±=J~a,«CÛxž³×H´Å‡~\rg …ó\"2À\nÁ×)fIF·©Ï÷­¢x7È$ibXd„·\\wöH®zÚŽpˆ>ä•· ìýB\Zd9öÃ$BƒKO²b3([\0Bp;cNI×ì­©%+Oâ-€H­á×0þ¦•+•ÂeRÍ#65èÀCN¬°øEÔìÿ+obÊ—Ö\\2 ÌKúQ§OŒH­×\ZXÕ88Á|ˆêéÙûÓv5~\"íIn–]EÂ+ç«•Öù£Û€H¿˜¡ÞtfrQUª¦Øðžÿƒ3½ß’ØÑÏo\0¬ãæÆ(Ô.ü•3ž¡÷þH¿&©âL™TÒ!e8\"GæGâÞúA&E Ÿ*‘r®=ì»´¸\n:MkBÚ\nVá­L’â¡~ÂHµo,¸½IXñü ý¥qõð¤2†ô›ãËŸ«¥v=þ\0¶Žp¦+téM.à×¨äc€H¹UÞ@d¼úæŒÀØï+*ØW©ÚÐôõýcñö: Žc\nD±©ÕíHv€H¸¼^ß£ì:Ø}‚ÛÔCªÊo‘s)Q–‹cG·éÝ˜™iæËÿ ÍÎ`H·ÆŠÙ]K,¬Í«„BIÜk#à\Z§M+},zÇ`)1Ñ¢I\\Â¢ØØH¶ÐûÂxêª†>{zØÞá¡¾Iÿ`íñ¢ï\rtÙ\'pzöpÆœÿ`C€HµÒM¬àç|éùQÚ‚ûhõì\0¼;OYïÛâYîs)…¤èÑuÒ+êXDQ¡°‚òå H³=àÂÇ/ÒƒYÝ‹4[8Ò%áÂtêÈ§Ø|Iîƒ	7™òHSŠ‘7!„\ZH±õü¶ìGp9=^æW=yUxÐRˆ‰3öþÔ|§C\\½Â;Ø¶¤l¦õÃ&<€H²îZì¶¼1¢0†>EQË\r¤ÔÐ#Vç¹Æö\r^¹Ì£ËP4æËÞïêNXH7ï@H²ŽŒ	°Â]¨«²À–F´Ï¾È±XUÁ;Êd4Ï5( &Çéæ+¦Á¬¼H²¡¢Ò\nj……åà÷°\nY)æ6µÂŸ[&b7ŒÅkótÓŒŠé¯KiÚ­ä=)O¿‹H²áø€ÈÀN#ˆDÙóAŒŒÞÝfžj\'c1Ó®\\…‰G[ší/!¬û%*Ú»¢˜~f€H³ÈÀ³ÂiÛÔ6.Á§ ·ºZgq¤Áçá»Ú	mëÌ¶}„UFŠ¸åM@\\H³¬N@3ÎuE¾$JN–°:sgØÒv’½K\"¼Ê›„XgªzynKb8w™H„9‚aà†Þ¼kkÆVD±T¬WTÑÉV¥³Ždöt,M#×ðäÓ€HP®850¾ô;»­{[eój€`©ÿœÇœ‚4ˆH=Ì¹g‰6Ò¾:•QxÁðÞü`äÀ5HmˆX$D>=SÖÉH=vy	fÜ3…·T(§*IêÙ¾(\"…~è©É5BàHƒ3[¤vÓïÏXR+{´ÕúˆÕHÇbùß7›=î×1ÔŸÓ	ZR«&ïEÖ./¬H³*ó’/ƒ†«ß 4/MÒíCô³qót>ºæ’¾u¨b&àHƒí´Ñ-ŽžÛB¬æì\rê¬›Y§zO†ñYópr)êÒDÕ§‚›¾×ƒ¡bH“Æ«ôH«IOÚ	ïX&9‰Vñ†ö7õ`éßˆè£±{6°”€!ù®<Wü|¯iH«A4mYC{LBáï*W!Éoi4â,²óó—‡ûÜÙÕ‰GÌÂº¹=F±ÚUÔH¬ü˜=G\0l»íŠÕøh\'ìÌ7üõC0.éü–®ˆcZ”•Ø®/³—Ð+¶>1ëHÀ?ÓàH¬ü¥z³TyLóöŠÔ’Öµ[«ƒª0øÑß¢•ã$ŠÈŠÇb‹+cm|@\'Æ¼àH­\0þ·Ÿ¨FJ…Ô‘ª¡Œ…/{0ƒ Ä”ˆ×dq½×±n¨˜R¬«L‚H¬ÍÃ‹#ëe>Ç7‚ëre\"9\0-$4ö$i,L®šCô÷®UNÝB]H«IQõÃ·7_BI2óôÆÊN¢T ÷7?:AV)›á¤ä„*kKëa6OÊ®ß€H«Iå™¨I“iÇTë#™1í—¿të§äÏñN¼2ë‘X/ëð)lG Hª¾z‚ÓT¾>Uõ¶x†#Ï&XÑš|š›ŠÌ¨Ü\\A,!2ôc! H©A;ÿZLwO3Ü@-4ã©öŸ”N»Òuˆ£¥3,Ð7ö›[Þ¸OggS\0\0èº\0\0\0\0\0\0\0\0\0\0\0\0vßÕ,343+1345(\"&%%(\')#&\"%  &-H-UntÊ·\\ÜY¿É–Á’ß¥y×idr310k¡ØÉ£Ð*ÒhÛ%àHƒW5\nyªV,~Èä Jiwei\nýÝ\0sWÙƒ\"‹öãKs\nô,4	®øH°FR7\"*tò¹±÷\rÅöøvÞïÍ;JýõŒðŒh³‹o—âêÉp×5ƒŽ²8LH°ÞƒZ^ëév6ÀÄóvßÇ£Ÿ¦•·`Vwyï=¯b/âGÛŸ’î‡=ÓÝß± H±ù\0…€íÕ#¶g˜½ £Ô°Ó03FyºÞÇßíß@qeéýó¸Ó¢ýH²R&Þ\rý¦owù.KT‰— ùàâîÐÂð¶NSºÒZ\0Òp±î3œçs~c°H³«›Íä\\íÔpr|¤4«ú[³ô½ÞSy)!1í£Ùß:ïÇ»v˜)æbHCeÚ–¡ðH³ŠÝ1æŽ¡cèöÄËïM]ß³9¥æAr¯=fKˆ]o¾>W*b8ÆZá¥§=Â@H°™ò¨U“›ìn’XÒå®Itç·L8{9oÜ*¬ÄÝ‹Þ*#3ìÂî\Z9AÞÅÕ¡¿XH>%\0Ý¤]‡ÝŒùt‡lìð±ÊÍVuª¿YA\\!ñ&9C`H=lý**êwmPcbKÝ˜9–ŒsÍé!§Ï­?*– H=\ZÙµÈï\0ßÃß§]™ßÔq‹ên3žƒÕ£#yµ„ÂQøƒs\ZÛH= 8ª¨9Xhö–oå?ÖJ1ÛbÓ¯PóF.¼ •Ò\"™H=÷¾N¶§ßûÍ]dî6*Ñ˜  u_Y\\Å†Øm-Dé;Ø³@H<º·ÀÑp<;q¨P¸„1áÁ(Q„ï11Ä-wÊ}üYÉïàH<Ü&#\n/ž²‘mE×drKàÍÎ¸y(ªªqûïÜŸ©ËÆ¡¬€H<6ØòTÕfäÝE›Lþ%æÅ¥QÛòâ0VK¡¤‹ÊCÓ®)N‹€H;eùBè™R<ðÍ×ž•Þ©Ù®Ø°gú¡÷cÏO &›Ø‡`H;eŸ2ü,C,2ÅZ­Y$?íd¨àWÖ7Y:\'€¥B*G²y:H;eùÐéÖ™P\ZŸ	#ýóóF¡£ù]€¢*NêÕŽ8T¨H;ežm&J] ¡uL…†a±ëåù—ªg®Ä(D´f€H;eúYÃ\\DÈØ‚lçQ8‰¢è¸ïê/´¥­ðH;3dV.·ý%;QiL9%1is²Ž=}¢½8ž{æq@H9Äû§‘kOU‹G 5Qñ~õ„3µÿ»ÐUZn«yUÀ»Iü€H9¸ˆ(öO4Ú<?‚¤+ÊÚ÷©ÇÉU@Þõl«[[98ÅÄOêiÑï9P','imasatak rikungi.opus'),
(15,'Â¿QuÃ© hay de nuevo?','Â¿Imatak  uiariku?','2022-12-05151656312577de nuevo.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\0¶Ý`Éc-/*++)-,3*\"\'*&&$%&..,)%#\'\'((,&$#!&\"%(*\'# +%($$\'-%$&(&+*+&#&851,.701:-/.60.1+<2(#26122&,,$(1365HäÁ6ìÅ€H€{Ð. wðñ),\ZÕ€H‰Ázm‹¡^ì¶#ð|Í¹çU—¦Ô›‘I†ÿjÉññlý\Z	6‚…\"ú•Ø@HLš$r£\ZŒ‡AÿAÃ1\n;^É¹ÄPÐ–€T[Rl/®½¬»$5\nœ€ÎÖHÍ[tìÅ×=\0Y9¨‡¤ùþÑð7Î	,£ªtwÓç““’ß%FàHËR;bµ»¬@¿&©Â’²¡\\ì~µZìTZ¼kÃ7Ä.¹oK‡üžÅW\\HËK#Ì›0âòÄO­}/æ	Çéñ|Æ`ó–“DÂ×¿ðHËK\\ñi„{Uóƒ‰À™Ÿñí\0ýíÌ¹Š/aº\"5–rƒX ˜ªHËõqh\rø©ªì%ÂfX=5 rd\Zÿö2Š†¤ÏdºCÅ\rl½ZHËI5QÄPñò­	«º¥¯\n²Ú¬ËJËq|K²\0[“m¬=«jã›º}AÞ÷HÃ?©Æ”šbï(Qëqá9òaZžÐz°\\ãa’u½xc\Zòn¢…L‰¶Èˆ±@ó@H=8…yýK>„H†ƒ=Ã-Ë;[óxö¤¬>Ž¦æÖSx)r‚ÀTH=wïlÜ‘åÔmÃ_bâOŠ8ú\ZôÍrcsÂšóa‹ªæÈH=zoM4¤ÜlÃ”9ggöÌ¶{tm¸2yÕ+PçÏb*®¥& H=Ðƒjµf@ò2ëõåg|»ð¤|Ûˆ¯TÄzËhÜxW-…@ò€h€H>ƒ±^„MoBÜ·N8`+wÖ°…ùÆÙÛ¯;•ÿÊ	PÛ1H=ÎO–õtä¼lió+ˆ\"tíçn¥5ŽxJI¬ˆ\'¢Ö¨H=Éy9[{æ÷°¢þd×¢Ÿ2±ô_¶‡.ºùš«Á H=»QÀÖ£ÓÝe%@u¨éPé ³ÍŠ,!›Œ—7õ®Š­\rª¹@H5²ªÀÍÔï25ÄóëâìÄAWŸ¶TÜ¯ç%ªùbT×ZÌH=x^¤äÄ†}1x|ðS™µÁëýj½?ÊiðH&¶MhìõòÈ«kÑz¹–u[[±Ì´¢JSM_lQÕqÌFê=ùWî­ºTH»cêò[%–‡ï8Ö¤›ü†f´X áÛC´$Á\"úß\nò´¡H=,!}^rê›úº&›Ç\'ÅqÔ$|°…‹îã4ø¯™5˜\\µß´y_5è³k”H=wïŒÊ`ˆIOßÓ@Wux´kâ¯ÔU6¤Ð/™…âÑ9¾SóüR2áH=n¥^R}ª‰êQ•ta9‘\nŸôÀ<~kÖôHJÿ³´À† H=wïÃ~Áæ#_µ	\\JÍ¬J÷laô€VùŠ¥€H=YpŽ¶8HÄI:?Ë¨ç(Œ•]ýIØÓÞ ÷ÛçH=!Ì¦¤’+•Á~*EV—@0ÜZ8·Vûsqû*Ã“ìb—êh³/H=*\\ˆµR¿UR„¢Wž¼9fh¸s¨Iz\n¯(a•lU”ü<ÛÑoâ€H=+\\—1°n”öUà“}E Epâ•`ŽöÏ3ªªÖ\nÄ`¿êGÂm-mH=Éy;ÉÂbè$[´±æü20ê¿±tí;Rü©Ëˆ£ó(ó«£ä+\'\r°®)B€H=o–\\B7Ÿ\'âiØÛ– åg!.{`ƒÛÐqùí¡èÈÅL¯•/€H=o		µLìq¦<–GÚû#LÇæAR‰U\r\"ÎõÕµìöÞÓH5²W´Nep’\\æÏá¼&bØlOÉkA°ÒàH=n²”>Ú¡aþÑ©*.çËNÁæÃï¤MO¾äµ®†¸ëH5²IÀ\rnéfÛÙï‚Õ’nŽ!Ì;qg¤J^…ã»,ÐH=s8Ð¿ãMG””Y±¬’hõzÂk¹Õt1L8ˆ]—Ô4n&[H+ò<U|’ü{\nOu[ß‚ˆ1tdìÎg’UÂOpKßs÷éH=ræÒ5¥9/Ã–\rÃž\Zu-1·>‘Ð¶Þ\0îó—€H=žDf”ö~O£C€wy?­¥Îsft™§k°ÈŸü?™±«ŽÞ,H=9év\Zö”Ï+ÿ^ÐVØKÔwR©{í“ÂˆØýë`à@H=‘m³âœ±·î«-§Îr¬\Zø«\'ORP|Óˆ+Ü;ÿŸŸè£H=¼;nbÍB¥hÙnô#Ó}„(ñÈ‚G¦òRvÕà\0*H=l8¯gC^•%ÑfHÄÎ²å^‘ûi™1y?;.ãyPH=9\Z(ËRnD±p_2V+ÀÄÞêy–8µ3Ázêô]7¦/P­=B8lH=n³¤(•v £\0¦±\Z&Gð#Óö›TMF’ŠŠv§n>îH=rÊ<U‚µ÷Ûã_K†PâDr6¿ð©`aì‡bjåÌbMrJóC\\H=k>l£’™{„ö>œ\\j¼dy5d¼¤ÁæpPÌH=IØèiucyèhÇÏîpPm[MUyå6Æ^ÁŸEH†@H=8aZy»¨	 ,\ZA8Y6@¼Ád¢·g¾ÿpdì‡›½Q€H=nX¢~:–¬ò”Ô4óèI‡¹a–†rWŸ<õZÛ×Äú\'Î‡\ZÈó3_7©ÏàH=Žª_C÷ö–±¶%ÈPvÕý”ï_kœƒìïÜ)Ò1¼ìÐRcsH=»ZßÂàWr‚`UæYÌ”ó€˜(™o) ¯Y×kË€H=n³¬³îerŸtÇ2}Ü%—¡Àè\Z¯–7[$5¯›lV“ùìÀH=nlŸKAbQ[¸JÿþV\"üLo_Œ9½HP™ä±ÛHÒõ\Zïà÷«¨H6¾2)žœRËe¹^¥ÿ¸4:‚Ù«Hùž*ntH=[“ÿ9³(_ÕýÈ*<²[ŠA{‹WÉ]“U àM¶ÀÙ´H=‘çSÁèw\\6$Iª©ÕåKÂÓ7Aƒ«:l‰.nOAÜ¾üÓòH>sÐ +Ò°&þ¬fÅ·	{Í‘Dæ…y„Þ#ôÎÁçÎò´Ä€‹áë H>zÞD?âîK¶©jQ¨ò²p&pN{9:XÇf Ä(2`±Øä¹ú¸ H>qèKÃŽIÆl!¨\\Ú&‘ÿ(Žj*fÏX’®M´:þ}Jç±H>”¼Ò×ú¡¾,‰6G+{’‘ÃO5êž~¤KáÙ(ÐH>‘+2ò·Q+NÊ†%î‘‘ÍðäáBîŽ€\rî‰ÑòÄÔ,á›·€H­¢BòêOŒc\rh®U°f}Ø7Æ¸£ù–Ì\rÏ hjmà\0ÊOiu“aŒ­h‰1Ã)<XE ÀHµ\\ú9lx*€7žW¡Ž¨!ÀÀ• ä0®i¸oF ®@M¢yÚ3fÔMOéNà\nEYH¶ç»W{kÛ[<î)+kñËã¿÷•2»/®Ï~ààX¦ªÁJIÿhÝÿþ?Ä&1úH¶DC±Ï%W5Â¡\"Ä&™xê|4šcÃö¹è|*¬á½@>Èö{¸*H¶¹V{ _äY”NÓÅxÈçP[T>m¿hò{ÕßdT@¨±ŸºþqE36rrÒH³q©lÁ,pßAitœ‹\"²aâKQ«f8!Ø0YþòPu,z`Â3;=ä\'Já	y<å@H±ô”Œê3¿Ëßóô×‘ËÐnÄŽYœHLÜ¶¬æGWúÌå\"×d¦6D¨ÜŒ•H±ä-íÛm)•baò4Š¿gnëÅ {¤ëŽÞÜ„zxzõ%ß„¬ô€æë×àÜñ¶¤H°î%ø‚–›ÂÈîÈ~±uÏ‚¯X®Q‚Žª«DÈ\0jFlWŠR\Z´4¤§¢mcgÍã™º„„-{@H¶TÞ7=Ð4‡·{|`.AvŠêOî…­›|™SÓ¤I¶4æSC­\\gß,ŒH¸¹-¹¹íãÔ~4ô·–ÚÃ(=Ý‹3M)9‘{>\'Áû%þ~œ\'Óº/ðú†ˆH¸šˆ9Ç¨“\nš†‘YŽ„ñºÔ&aþ]Îõw¦ùmºT$h‚.¡¨Àµ¡ÖH·yñ;]/Ö<aUaO7¸6‡÷*#e\"\"uÓœ³.Ÿd?—\ZGÿKvý\'úƒñ…H³.ß®ÐÛž›ŠA1NÞ£›: Ì².ŽÆL¹ÁZò±è{Š^\0ÿrÏ€ ê‘zH°¥.2¶o/ÀD©ˆ¾²;m^Q â€™Ò£Ž—\\4]*ã\'Ú¡H[ZÊH¾ß0š~³ÆôsþÚ¾ã¢œÀçz	áËe÷r M˜‚ê¸ýYöÄØ×F2ÂÐ–—jH¾ÆùeññÅeé.H~IÅç\"­Ãs×Éýµ)|­N…ÑÉÌxÿHÙÊ»ÒH²®5}³”p»pm¹åÆÓñ×Ð‘Kxà·m0#C®‚«ö\\îm|goUS‰–Šœ×tÆ³Z4ºOàH·.¤\"‘R‘<lÈµòhúŠ3È™w1ã=:ƒ÷Œ{#?ø{Òøºw«$‰×™L|ÜT€H¸ä#k^9r­øãÐh¼Ï4n.Ýú5&°å%¬_qÖ©fßC_ÝðH¸nj²P©VÕ¼Q9Šö_”@\\\n½·örZ‚±1…Z8:H·§ànd\ZÎ\ZHŠë?R>*Œ®œé–è™0Ú/€ÈÌ4Àëb~ŸŽöuvî–ÖÈg€Hµ¬®}ÏŸgñ¯5_‰Ÿ\"—\ZƒUP­¬$ÏÝAvá¦äÿŽsŸOV¡+Æò)îk7ÓÄH¯ÔÜ#‹uÃMË@F$3®×Ÿ´m\r9ÓwŽªp\'=‚<q¸³š¼´É\'Òç3€H«I‡ am,Û´Ó×Ý½%³\\GAºƒM¤öÙ:<_Cq÷ø-=´äùdÇ¥¾½X6ºpH¾ÅIþ£®\"Å\Z­ßvD\\hï‚ºI‚?ämhÜn£ß¥á†ºîi¯Dö“ª¸žX¥w`H¾§˜vºçqòˆÚ}†×Ó\"ïÛš¶aÖ÷à‹¯‰ô¨;þUÍÀH=øÕ|™ÊK;¢d\0å\rÉZ³j‘5\ZÍý€æÜÝækýËIöÔÙã~3ZHÜbèÙ\Z1ô™@šëàšÕæŽd‡:¶fBB¼ &Š#\" \\RØÍ\0R+H=g.˜­nvC¶«Hâ‘•ÇÙâä@AÕƒìöbë	ItX0H=ç’œ”,‚¿qK¨¥ƒÝWF™$ÓD”ðx«?âÕ€ÆºéâÖHÐ˜ñ›GZBb¡7¯ïf’ªg$ŒÉ7œ;I‚KJ¿[”Ú]öTNW3íÌ}H«N,ÂýTðûˆsüw^È$u¹}nƒ†€©áCÚ	`¨ó³=çZUØm„“o¹ËLH«…_×(`º-ëèÕ^9l|\nÀÌ|“øüU}~ÄÚ•\\”x GÜêö¡ÐòEoÜiæŽqàH­9^c&<\rÒ¿‰Ó:˜Š‚}yŠ\\YÉ°€uB›GH*›TÁ:>E®Ñ…^¬;:OggS\0\0h+\0\0\0\0\0\0\0\0\0\0\0\0#176513/4.*)0-,,1-+500\'%(-)5080;;/&!-.-!!$\"\"\"#$)\'$#H®ÁÉsÌF&´åuòVè(B‰óãíáñá?®gD\0&™]E-´MúÆ WB³¦¥x|hX9\Z•€H°â_^@ózPi¶CKCÛÆÒä¬þ£äqËu\0tÙS‡_f\Zö* §ˆë¾ûsŠ ¬H±ö‹ªí.ù”ñæ*¥ÇÚ¤\nSÕšã‹#ý~yøÇ ²RÂ6šá@£·GÈþ·Š‰¶7Ë;`H³©KÔ.»qÜenî€z‘©QsÍA\'“Ñ‰	:N£UŒ-ð¡¶°·¦vã•H³¼v^7½*·#ä©Ëi[¯îló<?éŒ•… rd!¶.\rÀœ¿ÊÐûpëÓ)NÄ-ëaå\Z±H³´šhâÀr\Z(qÍi£Ïf[s´Ñˆû²®~6kÀ\ZvW^\Z¨Üù:ù#AÉ­H³Ê|Ç:÷ƒóAÚüPƒœ¢2`Ñ¥òL\rÇJ%çHH1Ò•h,±)”DéºRzPàH³snH9› €ô¬?\n×y¤ë$øÊƒœ¸ÖæìZÄ$—™ñÅœ3?ñ™ÑRH±Äÿ†ðXúäÖi¶ñŸ¹]¦\rú=1Œ©Ÿ-‚Œª	(7€œ‰qÑH°b\\Ä÷Äu¦[M¶TWPk\ZÔÈK•<¿ã,\'Ð*p‰VÈgÂüÂIH°b±ï†¥ÔsõuÂET¸?žh	ŸI˜B/ö”¡@Û{ëìÖC\0g`H´º{ðð?EÅÅö‹PÄ¸ÈÄXyrÝ4_GÒtFf\n£´»6›ëÂ5;1­2H°b[¸þ·vso&Ç¥º\rÊ’}\",D5n, ìI‘²ê~•¹‡X¹æ{O\r5fH°>PÅÂËCÀ¢íÂdvaÀ¬}£ƒ ¨Ì#€²Ž¬¸Ý§cI?ªH²T¶Ïª*îç›ÏÅ¡\"ÝFÑ™³^Òy1_¿†n0Ö·(çê5k÷\"³š@H´Ï©,:Wƒö\\¡±û„@Ì,²¸Gµ@ãûþ¨¯VšúÿÏÌWmªpÖ“ H³¼ >$e+áºÛÖôv”˜ýg”íBœ¹\\î‚~Q|;Ù÷‚Bçõlï,H³m‘¦+>3qkóeÑ”È¹Ùä‹Ôj\'ä6Fuš¢ðHé6œw½3—ïûöq	\0¯ýœ[€H¯°9°ÎÍæ…ò<‡ï¡X\n˜ÃÂC÷«±€”Uït£]Ò ù¤AÚ´)÷4áH­H^JV\rò@™ÅWö“ë‡\ZŒ¬QF¥×\"«ãƒ²;²ŒÌ¢óŒQ™Œn8YÓiB@HçgP6>a¦Ú´€ÕÕÝ›Å»¢ÈÙÙÕÉE×_Í´­‹³ÈÌ<=°@H=Ãµ™N	)\\?þ¼@’h“\n+_ÜÅb•fžÆœ«£¯}H=,¤†lû”\'à¤QÑc5ðP…yŸ\0—ª‘ª‰bk³^Y¨ô‰»ÀH¹C)Çc„þ»K4fq^ž—“D*)Qeî‡Ïlhûu{Þf×}Ä×n¼Î HƒZ§°ÆHü/d3¬©=HÒœØˆ°f,rjÓ½S…¦p$¼¦éü¶0H«0F¯˜E‰ï†IõXÛt_&²ÐË‡¥eØ¾àÓ,ÀÜ,ç±Hð÷ŸØ©@Í\\yþrÆ€H«Sqþ«VØPWäÝ‹Äð†’{mç…QjæÂ’%4ÐUªP=¿åôœ¶}@Æêl¸HH«;P²ï—+\'‹Çzë»Ã)JêC³ƒkñ‹íâÌ1›ÓekB¸(Žïr®\0}¼ZK‡òÐH¬þJ‚ÊY]ñÕdÉ¹Òí›ÉÊúTrËuhÖVˆ”úÐl:CîÏ]¾p\'††­hH¬q;ÀF|!³&µ/wkÅ£fR¥–q—_Œ›ÆZsUGUS6Ìà1»~w”ãŒŠ[Gû Q¿<H«c«]OƒíUòn˜Ï¯E3™9“ã;g!ÂêDßÊG< @¶1SÖ\r¸žòïšˆlÿ÷Aµ,s…°H¬®>¹y*³¬~7WZºòŸá\nÞp5èSeÒxdZžšF%C@R¿t.úHHéêsç0§šä°Hã¸ý~wö÷#WC8jãU¡ç¦»ñH=Îm«ÒAš—lpø=r¦·u)ºéàa<o%¥Ð‹³€HkÂô\\}òD*5`ä‹7½÷åHáY]c|°`@^¡åÇ6ùÉàœ¾€H‘xó>s‘E÷Õñ6Ò“u—¥ÃL®æXn¾Â/Íñ;®Zÿn£\'Í‚îM`–æ H‘y8òfD>OÇ‘„±@­áçmÙ-`ˆæ{WLWœD°Ã6Ë>àOt€H‘]X ÷Ö¾6ƒ\0iÖ2¥ÏÆ/Ö}\\Ê¾M”v•¡¿(H=Î(ç(Î¼ß¦hÆá\nçáçH†ÓáèU~ùÜ®FÏ¨¡H=qŽò>“ìª2’XæŸ<.ÇpºõÀ+;³‘)¾Å\'Ý¯Å@H=!Š>3íÐ&‚ÓQ-£ÏÈã0yÛy­çæJÚ“˜ H=¬#å¾5®Ž¿ù%¡×‡¿A{0o…$—äÿé§„°H=Èjâÿ9ìÌòÐ™— ýW+0×ªð—Ê!BÄã¯èš^H<ÀéŠ·8Ù¬à~àZ}3K ¼ªœYÐE;J„1CêÂDS H<s&3¯%I*ošt“Å«³ÍsE‡÷’¸Mªå“¹:`H;O\'‘°™$²v@ÇGÓÜhZí«”èÓÍ¢´ÒlÌ*ÜÈç!_HúÝV:6¨f­L•k¨]Ù…€Ömo½M ß»ÛwycrHÚÍ¥ßV(¿Ž@R¯ÊKN…Õ\\ãò¥ÂÕ%•ßÏœgÐH<Â‰\n9§\"á‚R¦üÌÔ9ïHœpÕv›¥éÒó?ÉïÍè','Imatak uiariku.opus'),
(16,'Me alegra verte','Nukata aliachiua kamta wangamanda','2022-12-05151714379204todo va muy bien.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hw\0\0\0\0\0\0\0\0\0\0\0\0ý¬d//-*&-3*(%%*+.&)+&%\"*&*\'!\'(\' ###(#%\'\')*4&$&%#&)%$%)(\'\'&\"\') \'*)\'#)-%4<0604.35638/(+-946431;/\"\" *HäÁ6ìÅ€Hóº’·»]$ýƒ˜Uhø\" H†âíK±*tÁúýnêÝ“-‡\"Öƒtž¯:%àï•¼ÈDÃë¯½Jš¢)JHˆÌMúu&\\o7Â¯2N\\ð˜k#tÊK}TguÊ©\ZMƒ ÛÝAÙÓ2@H‰‘jŽÕ9›!NSŒA\"\'†\\òÖÂI±ˆŸ¬Ù(¾•Dêâëöe<oR“l`H‰ŽÊ)àEôÐƒ}ç>bÆrÅVrrlƒ•|ïjw$ÇlÛšßŒhÄH1\'ñŠlu«ä{O~;\" I¬ÀUåmÜW;Íä÷œáçùžH‰§°¼éÙ€,lS1Äßà”N\\ø	èÔ¸ýšH÷ZFG\r\ZÆK¹-ÞH‹|?«‰Û‰|ØÔ™{Jä‘n„õªB4ô~:Ã÷b,üþ\\åµ„4\ZU§ÿ\nÁƒk\\5)xH9+È0ÌP½Ïq^ûÇ0Ó“¼h¥¼c6Õõîs`b,”D0Iwí°H9È#§„?a¸ƒ†)dn?7™Ç¬K>4´y\n—Ö@Ë„ˆ<•1ëAH9zp¬™èºîÁgÀ;¦¯0Çèã¯àGªédMª.Fýœà³àH8Ú*Öx5çºçäõðš±K¥&¸1\nR³Ø*ÖY&Ô«tÙŽ @H7Ù]Õ¯SŒu—9çÿ¦ÖØ]ŒëvÂÃ¿	ÿéÃyÂCû«¤úx¨µ@H‚~ ~c›P\'ðŠB>«°9öê¥Æ•0yÛ|5XÊÏkôLPÏnä€H7ŠâJfÂF»…©æëûj²œá¿³­X^ÞJ8ø¹8»ÙŽý9ó’4€K£vÀH8\rÿxnÊU6Ca.Àó5çì.r‹fAp]ê¥/{Ô²<é@H8(«;SF“/.«‡?7&*«×Q\"9gƒJepO7·m#ÛCCÍ\'Ã€H;­gÇ™CQž]{é^dV÷(h¾V8mõ2íŽ;D[NÜø`pëíù[»€H<¥LŽy(=:Rå*8©§Ð	¤Å¡À,ŠÛAÅ3\\  H6kó¹„IT†Â“ÕÓ“¶}µNg •Ã®è›¹‚\\]fîíHhRV\r¡e¾wº¨´º~*É\rÓANéÐ4µEö,Ì¥)dH6bX¦FB3ó¶æÑ–¥—Ð²ë\r’{¶gªø¿Z3,Ñ¤@H2ØÞ\n=d	4Œ´÷¹ûŠúíÞÖ+“Rà4\0îiNè¾ÓH1Ú e]ÿÍn‰{d­U¿Pˆ7¢À\'3KzL<Îçõ›¶˜\0vþà¬Ù‚RpH3:®è]ÙøŠ÷ 9¸«P‡vŒÑ¦_%*$O´`s¦ŒÆoÞoY0H2–}Ž‘Ö¨Ô‰JAö\"{¢â?ÎŸçðìÊqµùH1QRsn?ºi÷Æþ<u6:Dyoi40ìÒ ÿèÿJÁÈG¡H1Q\'$wßdô;í”9d8ßªSÏ–Å±v\n<*Ã¨¢ß9\0‘@H3làÙæB#[ËKÝ…ì’6ÍÝì—•t7—#´Æ#æ¶ Å4ŠHE­†ú½MEˆûé¦¬F‘ÎÄgOHé‹€¦ ´@H4Ã×o³ØK6ÌÔ^¿üZj€…<á¬xbà¤ÕIÑ*lÇ@H39ó+~{—Ð™ŠõxøçÎ	ÿ”ý\Zœ˜Õ–<ã±°ºH3¹% ÁàE°úÊK.dárG¿‚„Ü.`¼ñ,iH39òú)³?ºhÔ¼±J(XÞoëQRø#_.BE?8ù·íçAìÁàH3ÃZ©Ð?„à5‚m•ácÏÏ?Æƒ?(óD.­;Éø H4ÃÑ7SÍ:X½¤„UÛ“°Äéå:x‘£Q)ànjóÀH4î|[^n@˜@JÉ-;ÎêÏç<Z9C¡~©cQ€CÆV€H5.çÿ8\\zh‰8üV#sçûÔÐÑ#ž’ËxGeƒò38B=Œe:H6‡¤3¦=@¦¤ïN/+t3+0G¨ÍÂÓPe)OöŽ[7+GòâºÌH8_lÓQBØ8¥?;÷ô•\"r@W3†|`\rLìAýiÿIk$¿Hˆ³e£Û@}u\rš²©œ>9%5!ÑV„ŠB‚,ösšZŸ×Ù”×‰•;xÔw\Z\'Ù\"€H:•s× kš]Ä/»­HŒ+Š¿$û’,|B)?ÁÃ€!Tq~ H9®ÁÓq	ÿ¹ kÐú4‘Ùî<Xjü§ó»*\\ÚN¾H8$ ß¾o©b€x1h×,PîS3¯ªr6ýÌ‹yt5_T@H8\nÏÇáÍWPe@síœÜJÃQ«*€/ª¬e±/h€H6iä\ZÖ¡Ü» ´ôsuÃb—_¢YþÓZE_KôîSô}“ØH5\"vÊ\rš´0Üð|¹á¸†=©bìØ •S©j±ÿïŠ ÍÌìH>Ýó»Eõ7üáÐo±¹©\0ä¢mú‹š&ÀX¥H30®*Ù	\'i¿Ñˆ²ŠõQG©*ío?ÜqITÞïÒív H3/¬šhÈª²›“áDSªôƒªâ÷Ð\\Ë<HÇÖx-§.n$H1PøO0œ:þ¿/\'TÂ5=‹«¥\\.Û)ØPeÞâ^Qûù3€H1\ZIâˆí£$CÒ„U „•¾™ü^ŒbM–@H1â¬fVÛVÇSÉ„èŽAã$¹Rœ-ÀÝrÛIñcóºf×Œp¶H5\"Ñ¯Ä|š-ÞóÓäò0ÐF£¼PãÒÏ’’z&«yr”/²÷pèH5ÐvS®¬#FéWò‰7ú„©´’“ãì—ìŸÕ¡¼Êo0žò\Z\\H4êÓ‚Á„\nkx†ùut§ÕÇ1ÖÜÃ}œéX¸C•Vðg€±C	âH4îŒ•ªë«o¼±úòÙcÑQ<³»ð|¼ÅøXõh¤ä0ª‹¹ÿ H4ëÞ´ÎûÎ™ž­ºò3…žMÔÇp‰VjYŒä1n8H3õ$F~ƒÃÖe5ÈrÇxDÒTúŽ;ìüñF2£V5ƒ H3¸”AX?ÅJáînˆ^«ƒ‚*gˆ¨kB³\nÍVEn9KwÞÍ@H39ó*ƒ#çÕiÃ.4(LÆƒï¹,0\'*¡ÂTh2H2þ\røóµL=©ØÍž[2^Uòú®G\\Ê°˜^Ì¯†,H1Gº¸J‡$¿ÂªÝæ†U•\0Éé¥ZpC®]kå01\nÐÓçåŠÐH1QOxEoHÙùV¬\0è.Väáü“JË7mX]AºNš„áÊ àHñØ¡º½ç_¹Ó|¡ ‚º4•uÊcº[AÛÍÞùæ‡”<G<H6ƒQáÎî2 ú…·q­Ê¾+iÙtï4w¾nº@H6d±£B2bŠÊîÀ-Fw¡RXÃzØÊý0;H#B±d)àH3ACb;	ã0Jfæ$û’Há#ÔÒQ½‹O™4L;4±Ì+,u×ñ¦YAèPÀH3ÇäÞTnë,pM}¨&•pk]Û§#òŽÿÝ•b5d,dHŠÙç)Òvl8—gxX_UïÓGKÑ,¼&’¯8Ú=Ú§ßFoÍtg·MVŒ“¸”Û}H );ý¶áš\ZÙ•\'¹Š0Öbª&àÏ’XØ}\'oµ!ñíÇò0]ð±gd+\'R‰ôîŸtÖØ±»”Ž`þH¡ZŒÚHþ¢\n¹th‰XÇÍ@âÖ4_V=“¿¶“BCÆHÉFÈz,Á¨lH¦|Ö#ô«ébË	]èú1Êœ–?’Üq~ìi{{¨t3…¤o_ÃGÈ|”-ÈÈ‚ö$0H§–c­tƒ‹kýdš%ÃƒçÁÍîoPÙYpý(¼¡ù¿,ÖƒòXÙ5ŽÙ`j±ó H¦ÅRêæ”Ñâ+…¾)b‚»ÿkÉÑa\"2@óãýmM¼Íäð:Úa¾uo“žµ°XH¢§tš1h}´Ã‹%…¼€%ÑãÉ=½K¼¾‡Vs¬r×tc­Ëuˆ»²¬HŸÅ)FÊ5Ö».6:g2@œÓ¯eAoåÌµM(d³Òí(Ð?p`÷½¬ÀÄN­ØtP,HŸK¡^Z¶]~’5mÞºÂÂ]·:¬ÙglúOï’ß¾’F†ŠH`Ñt_Çý¤€H <¡à—?0çm}¯é\Zèv/žE:Õ³#×MM©úÃ†\0	à\0)œQ¡sø uN1NH±Ü63™d³CÆª\rŠx‡™zC™nO3âæôŠYÛè\'òþ$Öhqi|Ó#!ðH±\r1èxl½SAŸ>®ä©~Z\nÂBr±hÇ±q/KÇÔÃà®yÛxuœï­¯Ì5’Îâ0H¸´Ëy’žX·ûâaÉÄ€«hnEbs°¯wèÂŠ´ÊGüØ9¯]®üPà€H¸´éfdŽµø¿&ùZÛª~ôYÖO©~Ùöla‡˜SßÆoaòÆèìH¸ý$%ÎâÃ]w>Ò¸<´—žÎâ¨ð¬5ßuù2OG–ÌÂ%ÒëÏë€H¸‡@É4&áðT(+Š¹š{t[C+\"Û#c/AùQl»ƒ{hyïµ¡TWÙ¢ H´¹pôÝÒc˜Ågtº«Ct<w>5G­ÑÊ9à0_‘ÇIñš\nIpÖçºÌŠ9Î¾cXø¢r½òg\"€Hª²W»KYêm€Î3¼o2eã\02™bWÅ€HozJ\\\ZÞÌÉy°ôÕ}_\n„ˆl~0H§³d.ÌDú×ÖÌˆ’+š‚Öîéž#æÇbTËÍÞÏöÔUauB$„!ß)ŸuMˆ\Z™¨H¥ÿŽ¦-açµ¾“OÆÄÅ¦d	KÌ¿ñßú	aP°ñH?7{.‰!#…ÌÒ,FhÞ¸×VH¤þU³…†òÒÍ	–«™Lÿ|C*vêÂôú»J60—»â©±C]Ùo;ÎPâêP{[’ÕJ^H¾EÇä56ê/¿(^žË$£è9Œ¢×ñq*‹ÿM\':=ÌQcû=à[NW‰¥ñ¢H®3&k	s€ã¦EËñzÌÄÊ¦}>àÑçÖ9BõæZûþ3u;)´°œä»½Ê’o(°pÀ”g@H·ÉUj\rS’Gáõ	™r–{ÇEOlmW1ýZ(0-«Þú¤&%Òé´éõÀH·Ó£ÖuÂâíL‚ÁúK¬¯.ì¡Ÿ‡LKŠa9@H¶ÙAù¬]~EÌSÂR ˜AÄ|¸ Hœ1‡Â@rxMæH¶ÀýÜM¹.[ñB´J5¦EÔ<a;ç#F¶@c%‹Hµñ¡ú¿a{¢™±ÌÛf#ýÝæ&¬Ùï	³í§| H¶‚Ÿÿ•·ÅQ`}rEjål¾‰z†¥úîµ\\UÄ¯°Hµõh5½ƒÿùë ð7²ŠÒÿ0úö0b2QJàéîœ÷U]ãÛÏ(OggS\0\0è¹\0\0\0\0\0\0\0\0\0\0\0\07‹V3<77775.1.-4/;6-)--.31073/.+/224(\',04+&)21,,/,$(85,:653/2((,.2421.7\'01,/92.(023671/+*1H·0Á÷ÓÐêýý%ö6ŸëÒ;R„;§Õ2-cG{u\\Ï¸u‰Ù:†…©Ü\0°o8ô€H¸°•xhÌÍÿûêí®ÞÊ°;ÜQ»NôÐz@r¥ Ï´g/Ö·Ž¶ÊSÇþÙ-)U·†ö˜mVÑ® H¸b¿tñÜî¦øø-Îô‰Žˆ]#K3ë9Û¦VrM(ºnð>M,fSI„LmnìF: =*Ò‚H´Ñ”¨¹¥úCe¶`Ê2;çY™OÞRMwRÕ%	0QÑ¶·ïÙ‚üÎ\"­¼$Èöß§Ä£çÏ@H²Ôç¼\Z‡I»/„ í°ÿû\ZƒQNÁÒ>¶n1ß\0·1—|)§n¾6YMá£ÁàQÆ54H²JOŽïd“T½m~…ywÁÜ<äÆø¹i¿^åkf¯a›Ô^u}F½¨.ø|ä³Ü¤lÍ®Ð‰¡H´\0”3åÒÝE©`G·E\Z½LOT—’Õ”EñHÅ\0j„\nzNÖã¼¡iŠ;}æµò£ë=:ŸHµXãNpÅ`;Šíj&í³ ñHOS$dÓæÉ5”™{ãÛÒ’½¬›.§‡Hµ;1ÓšÁô,\"(Õ`ò1FøJÉEmgÀóÐŽ¬‡}­íì©Âx;­¦@Hµ´öÍ ÐÅ|é’ÑôY[Ú__¾ú€bðËíÇ4ÐÁô‰÷\0³:Hµ¬ç\ZSÚºz8‚À¿m˜\Z¬xCÝÖP}Ù:wÃ8ÚÕ ×O¯	°ÉÑIê;Hª©9˜ÙI\ntÊøÇÈø4§€\r¡ñ:JÉTÊO~X×ì–è\Z\ZÃ¸ˆK°|=5’zš>€H¥ïŠÌEi/Ê²™›|–Ž›Fp\"O‚@%6Ë‚ïÉÅéäé>Û7ËÃiƒ‰bH£yù\"š$÷:ßqVÄ\Z2¯]Ó!lV×¦_õgÈèö‘íºŽ3ÝE»M¸íµ®ZÃ\\î¹Ç]-îÞÀH¿s›éUö‚¦H›CÒÑßwoÁ^ÓB´YZoJÞú)å³f½áAaßwKröç]iw–TÞÊû0H•ZAƒ7ÜÕ&ŒÆê¸wpD\0¿Ù1ëùzl|°(A?0ÇÄ&ÄÅ{ÐðH•HL#®Å¿wÏ8_áÓÄŽ«^^Ÿ\nHëÏf\nÖ¥pÉ×\rH„ƒóÙÌI}Û=%¹¨ Ü>1†Õ‚ÅJîç†ý	ÒÒãÄKÛ‹Ý‡ñ¼H³r¡µ¥Ì¥éÉïàÙ>ýèæ®>URT\rÎ1ö–­?ÃÜ†æUk@H¯Â‘¯%…þ^¢³ç¹’í·êÔ’¯]]­ìúƒòþßÛ|«E<å}¶H¬®?Ä€è½ŽíDx¸çW:êüŽRlyâ]t5§TCQƒÎÿ…GiœTÖÛm0Ek€H©¼!.[çcXc_1ÔùÿäVJ ?¾â­¬Ÿ—w)¢8¤MàEor¤ŒQ¦æH¦j<)=Å3XWTÁšZ.ðLË‡ÉòDØ^ŽÐNÿãtK‘“®Æ~5\'PF&Ÿ®ðH¦ÈLäã›1¯¤I=J:¬RÈëš~Pˆ!7Á¦›TYžqû5¼†Ã–½³þ£ûkÍnH«Ô¢\0 êŒ*EF6Kìx“«üþD=äê6:\n¯3öº%\nÇÆéDãJÕdeHüHPH²˜Ð«ØvãIºo4e˜­\Z\'¦ÛoVÕvƒÚï£àŸáÅ[È56»ë¾D9mpHµÉ»<¹Ð©¾®8ª†ãQ¡7á«p+S¦:ÈM€4˜!ÎŸñ™S_‚BHµ]¢\\¸\0–I/pÅ\ZíÜ~Ñé] šÖ©ÚMö§]e1ŽÀ¢K?ý)>	`H¶õšþdž®$Êçð\'B§`Æ¬Ñ3©ËpS…¦tYfí%ôÐÂŒ¿¿)…× ôÀHµ¬·KÌ8Î’¿Þâ*a4Ÿ• e(vq ,QÝ‹·¼B6Í3Ìgã‘nþ\\¬ HªïþÞo öjÈðö††ŸË„/Ï~5’o?Z¥»h™¶‰÷W8¥’cBíNî©pÀH¥øÏÉæŸÎ6ðùét--ç¾£Þ0<~H×mkõOU³÷’;\\ÑçgÔ§ÞÒÁj¥FÉJH¢l*=öÐ»uú¾‘[!ƒG}áàžâL£Å\Zsjä\"úpW+~H fa´ØYLéª¢ä½TÀ§eÜtÐŒ£K/Æð]c57\\EÞ\ZH½íP—NT•<Ct‘XäÀz=?¯áÂüpõ\n\0:8£¼l¤ü»Âë‚HH„ ôˆµ%LNKÖ”â19n	ºyYÞ“*>HhX‡DqñSÂ*@Xj^\"Ìc\n£Ó­H²½Ù~é{4L×v4òÓ:¸Ó•F²ñ“gT-o´¤F4O$\"ïÂÊ9òCaò¼R”Íÿ†€H¶ê$Cä	Zó¿Ü\0Ã£œ·†Z]ž1X¼[:6Èª§ÖˆN´\'™,YßH¶îÅ%JnØã ñéáb¯`i³³	b\'Å\"ÍÉš}dº™¿Üiì˜H¶™¼G	J:¤tÌ\'ÿ—Œ:X¥õØ¨·ÈÇ·h&”r;éŸ³ëÃpH´Ä%ÒÅ4ÎÍñ ·¿Wh-Å@\nKbj4róz:.äXï1‘UÁCŒZåŽËè9\"ÈàH«Mß¬/¸g@5òWsÈ\0i×e\r%·ú ˆ¼|õY¾ø]=ü”hï±•&ÝQ_2.(¤€H©d¢ƒ\"1<£un*#¹A¶Œmá>,+ä–ø´€ýlšTj<RŽoÛÅ0H¦EXâ .ÙÓW³ó$Ïö\'\'›z²øá«’‹Zé]·g¥ÍŽÂR8FSxühH¤¨·ú—=Š\róá©è8Éâ÷Å³.†~™F¾;ˆ4ÜÌ4Ó#ñ´%S:«¤H¡/\rÓÛ›/é‡þ–Ó×K`\n7ýo´žùéSÖû;‘ê˜\"QŒ7nÈHž·‹%pùàl†Å	)tóQ´«çïWßb;leJÄÏËpÝW(HhêˆØ¦ä2Ÿ-|uág#Z(–@ ±9M›n~6‹>¢;ÅGìnÕhHÿR†ÓºÂÑ(iî#*\"5°R:¶óü9åA¬š°¹RœÈx¦tAutÛ°öÒÎ¶§¸R€).(H¸ª\'ˆ¢zh©/›L _f3›Ž\n…=æïý‹)€NV\nª=âto~ÞG:ó	:B+È€H¸d†xÕRrüð¼%ÚE¾fÓáücè£Ór½LfAý£¡ H¶‡àt@Õ`•!)ÆöÞg-S#ªe\Z~É”x¥ë8ÁK\nVÕNVËÄ8:CéöÏÓ¿øßBY#7Ç^,H©:va‰FMßø×pWš#Š±R®†ñ‰mBµJ—±\rS9Œ—Ï‰ŸdÆFèô”GªüÓ¶ê`H¤á.¶\ZÎÆŒ–˜?ç8ˆ(_02\ndîâÏÂX¢í´:°©×—Z§IoG{¨gÙÕœ@~8H¢Ë>øuQ\ZÙ};}•tèLÿv3kgÛ#‚ëË|v¨s_]¶aàzN¦ŒÀH‚µ\"M«_<à(uŒµ\nÅ¤¸úåÈ2»’>K¼×aÌ÷2KE°l¹’8…ŠHƒšûŒEûHˆ\'@çÂl!uˆŠn¬$Ú|ªo3Ö…8e}rŽt€xS[vëwø4$ìH´ý3+I1þÜ“iW(ÜDÌÒº&;—íÉu\r||ªçS¼_ë8“P:ëH±Šàà!¾F\\HˆÆÏ ¼oŠ·%¨Ùá‡EK“”ÞÚOoyLÅÄH¯Äj@oáDËX…étëÓöT1N4à˜º†ZN¤6|±YvtlGÐ¥ˆH«ÀižU‡:+´}\ZrBÀÅÇunzHn{S9ñÁÁp´¡I‡,áv^xŒÜH©ôø3Ú–TEs‘¶\"šPôEê[ÈÌíÁßEÀV´žOµü›«}1ÑÛßL4^„H¦:ã/‘ýÕÎS\')+ì@Y±ð\Z‹ë$å§4/2”¨HúÄÅU]q4ª”þÙ¶ÀH¥\'¸˜»`ë¤Eÿ¡4C!ÙçØìjFÍç8{hêVÁRž6¥,MSAÙ\\é9é¿6³µµ€H¥‰ïnqêT¼œîIšcëLÂ¦W@Ì~¼tÊ6Ÿx…#\n&øM iê}[èî\rhH©Ÿ†Å4WEÉì(ÑŠ<ånmàBöóŒi³K	sÝÀ¬Ö±RjUÕH©}gîÌ\0¼Ë¨*„æÏÊ8Ñà­Ðul)M`¤zö3Í˜Ùv;å˜\rÚ¦ø¤~‹$a;:8H©n›Pô9qÆväsÐ\nËRòtmVˆ\08\0VÎs°S`”š	ç=ðH©\0;êoKôa¤ó]\Z8*&Ð\ZtzXÐ%÷Uo2Uk5iˆœ1»ÏÂZÅi) 9¹˜ÌH¦H§‰hâu‚osE­çˆâ!šÝüvœBÈUnýŸ“SŸ|´Ý–ÐgÜeçvp@H¥bäSä’ÕÓR	i„\rìß4J vÖbd¶r\"Ãh^ñ?6DáH¾=Nþ´ÚR‹$ù?ŒZõ^ÁnÌIC3Ô×½‚BYëQ CÂ´ÇŸEå,,°H¥ŒðóúÓÞÙ‘%§]J“×¾¤â)¤	¦¹Ž”·‡|kŸIÞM–î5çÓ»Ú<rd‹zÌmDöÜŸ`H²Ò]qŠ>M½Újü3ü,\"§€N!“~«ÖÍqë‹YÂ},Vy Fð:7Ñô‡ Ât‚€H²”;\"æ\r­Û\Znpq–ÒÏŠ!>	UÌß®,L—QæêÐ³í”æßØ+ÜH°	ê¶¯÷uðöJ0íaS÷¸ê˜À(yÝK°«¹ã.EJÅžà\\H¬\\R:3”­´\r…¢CÅN”Qx°4ÕQ“º‘OZÛ^Þî½µbârÅÆ½·ULH¥ÿe:ž¶›y‡ÈrKí_Ì{–iõ¥fÑk™_…Šå\0¸×,çiOw©û»}ÊëÌË€H£Þ4-Ú$u	ù^ &3\\Nƒg m¶ÎÀð%D·$:äaN¼WÇòXv	–‡ª@H¤>Jƒ	îì)4z¦jn÷Ñ\0;øX‚p®`¬úóÍm¶¤p…¨OeS³…!˜‡Au¸Í‚H«æ¢o©lw§F\rçDZª†gª£¦%¬À¸^›ô›ÃBY±\0ZáW€e‹Œx²ÏÑ1”ÑêH°ÞÝOm9ì˜ÚQZÖZnkÔD˜rHuò§Áõ¶ºk#A‘x‡‡¨Uî½Ë}\rûæÐH²–¸t\0“!±°Ül¥\n÷‡µŠiòyã®£Heô!œ›3\n¬W®-	˜cæPH³Ì¶-WæÙ“©¯!9¶FåÕ®÷zRµâ%†ÁÄH¿Ò-S^œXQZ8>ßÀH³$Óà7OMN}ÌbÌd›¹\"à»ÎëjZÀÚùD@01¶oî©~H«‚N[.6=ÉkÃíK—Ý)|¹ÔyÁDˆM)RÅÒ†•Ê©HÑ’½	Úƒy8OggS\0\0(\0\0\0\0\0\0\0\0\0\0\0\0›u¨ê71444&876.21&!\'#!()#(%(\'$)Hª²ùÔ\\¼œr²eªÆoã¼©ûäàÑ_-þ²º‚LWWwß¹‘ŒÞ¨0·Ô½È<yœö²¢ãwX€H§±<ûw/QÅ¤vò€Ò¬-#Lvc›(çdî=Ô?ì$™÷}¦ÂP¯m«„ÈH¦+ÛÙÜÞÆžõÑ÷ù`˜H nÆ,¢kéÜÌÑíëxƒ³^›“ŸÓ˜Ù”â4©›ß±¦ H¤Ø\"MœÊ¼z1ÃÍ%eýŽJÚbÊÉˆ|tY¨¾MzRï\r^oÎŽ#…EëO|P³Ž€H¢Àÿoâ=:‘‹	A·ïÄ/ué%õ¯L†·æ	Ýÿ=w†×YPŠ1Cušu\nÆëÖ3ðHŽ¤éÈEu\\ùì˜C•P7-°¨+ñö¸ï¬‚LÂ8‡yÔ*H«ÎøódÞœe$ïúš¤‚»$«uió\Zç¦kÙ~n-‰MŽ—l¤´‡WGÆHƒŽù1	·¬H®…Ã<á•ÜRœÙ2Òö»l·UF¦êiAEÉá=˜=JH=>+¨ß\n´% T©Â	ÏH®§Ï÷+¥¬ž¡ã­6^šÆ3Râ¯)ÖÃïÞKœ±/æ‚Í°22J‹¶´BBhr´?0ÀH®OiüF!š¦HV‰²ÇÊ¾>ëp\r=,\Z^ßéBo.Ž\näËñ ¸|ª;_ˆ¨LHªüõ•íÇÈ ×—ö{–ÖUo\'#ºPMzVZö˜;•<\nœ¨ô ¾å¬}?¬Áy—H¨øPª†—e\'¦úœ_ñöØžtƒëöžLR÷Äpk,U‰Ós„FßñÎ‘ÓÐH<­(Ø_¨ÔÏiR:&‹àjüÌ¾ú$¡eOn²ë¤i„@H;=+÷àm¥£Ì\"õ=^AÑWœ{ç[µÓ$¯WŸÿw$H:¥)Ó%énŽŽ÷C÷1»C:cø+ìhù8Mý­6 \"êH:{³éöi†coøëP¬}{Ç-²Y6j_ôìÏ#éñ´àéHÉ˜øœGÆÉmçÀn@îSÉ²Ïlò)³çñä)O§\nàH9°7æX{¸S\"¿ñ[\ZÚQÿÝTÁð*%WhÂ4mNIß{\\;€H9·’»UÀÆöÖºÍ=sêˆ-\'í€sL£0mjOÅ›¥HŒ­­¾_y?Æ:{Àƒ<¥©à6ÏðÚU+\Z6Ëæk1êí£(H:ì›C„.GV‘ññ\'°œ\'7»Üõ}•œà?Å22ÙÿH:‘IõVçá¯žƒà}›@š)|žH9Ö`È…sFo|e€H9·¥˜Þ„/›\"Ï—ñ¤ÒE‚g)o®ó|ý(6h†J@H8×\0èág ÷GÊ?–4‡“ÞÅ+ $x©®ºîBÕ™ OuPÝÀH8ñëêìUKñ)<¹X©¥ÌŒ«B×Æ4/Ç§+B¹.ç‘C÷Šò€H8y\rCn˜û+(×ëÌÄý†íÒnØcåðàx«ä9âH8hÇ€k¼«Fxâm³‚V¢G6ä›·ÿ 0Í›Z±™ÔÕ©h8','nukata aliachiua kamta wangamanda.opus'),
(17,'Hace tiempo que no te veo','Achka puncha kamta man kawariua','2022-12-0515173947707asi es.webp',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è~\0\0\0\0\0\0\0\0\0\0\0\0™ÎTXf)//01+.-(%#$)+-!&)*& !\'!%\"#-(\'#)$*&!\'\'*!\',* \"\"%\'$))()),%%!\'$&(**,%&%\"\"()#)\'#((+(%+$22,85=79753/:/4,HäÁ6ìÅ€HâWÕè™dÔ¥äƒ—b0m?çÐH†F_OýWs*LWÿ{Z‘´Ÿˆü<s_†Ï,>ÀTŽ%cÌ¦¢ H‡LÑ›îŒQE`ùxþ`ìV¥9ÔZwË$´goqËêÑÕ[-qJ:ÒXõˆÛÆ8PH‡•`ñï¥ñß‡5ŠSµ÷*ÀqÛØ/\rß–Dy3ì§¥À«YÆ³!R\r[Ð+±ákHˆeãæŽ/ÃMžmkÍUÚÃÙkÈª-©»kŽ1[Õ|(e¼ù-‚¸B`JyØ\nHˆÙ{Â)ubÅÒŒÄwÊh¡4 ¶\0_åëãƒ\rÉ×Ä¹,wY¹¦·{+~\næ?€H‰ŽºÓHtZðc½\\„¼»UÓ\rK“Û×ÀláãRçô®0¬Ÿ±8âµg“†H‰Ž²XY+-XØÙ$6–èWœ÷ïš½*ž Ú¤ÒstÖ+Ün´ßÌjôÐH‰Žºå‰*)+ý,VVUòj¨áÃEé°¢BÞ¦Ü—à(õï?uÇÏ«H1QU›EÄ]AÏ`õª†€?Þú\'®}ÛÓ–²´àô¸1¸ÓA[SDH1\ZGR‹=üš°Q6ÌfÅ‚Yy±7mó¶5¢¸¢7õ¥ßœðHÒUÔ¾s3‰­KùËMàÖûaïª9¼:Òº\r­bØH1(Ø´yö£ÅJð1cÄÛ¦ó÷v>9×3¾G‚jÊ@D/0H1 ¥~pë}+.Š‘n?‹ó¦bè—ÛM#Žû`uxê.ù¾èéË/*x2H1\'ñ8¸ÀÅ«]­3hë/îÖ á	Ñ¾¬cìò¤w\Zðœ.Ú\'LŒH1(}•ÃTüP¶Ï‘óMÂ§my¸Ì¤¨:Ú¡%Úê/h¢%7A\n³o]/ÉùH1 S1œ\r‘]öÂ¯à>+ö&ë¡#Å¤Öà§l•¨ãH/>Å*>ƒ#¨:œ¤è~ÄÃ>;ž¾uc ˜9þâ{ùY:“öo°H/ðŒÉcäA‚†4¸Ìü©ç{-Éµä‚sŒUþ€<o&fØKH1(ägúí¶ã:˜i¾\ZË.Åà*ùõ«;/e·W„­]ÍXEÄXHùYÙ¯ÆÆ6Œ5þÕëBÚn6‡˜X¬–™¨/Yþû[uàHÊçüŒj’–ˆK‹Nôìá(2Mø©x5Ð	§ràHŒì{Ë™àXÄ>—Lrªs§@|ßß×--w4Œó#,·ÀHpÂL#á[öµyÕLnÆEGÅ\'sÅû5…•–_µd¸ì°»¬!H½jõ-Ï6¼ÃæwíÆI€”.6ª¸@s3>Ì³H4Ým¡†ò´“5Åó½Ò.jÝ‘³%Yî€aÖl9ß¿Ël‹$j H2|f_ŽÔýžhñèû¤–KÛM÷MºÀpoä@JŽÖH-h,ÊÜ6&¸zšÍYÔ4,2AdþÄ¹Ù®K”¼D	!ÐH+lâµ+äURy0€ÌUðýCï›8¢1Wè@ Ò)¦Y¡,º€H+Ð°•ì‹X\r;]yëêÖKP)Ø„!k»ÙÇ9Œ\Z\"C H-Œ7/Ý¶û›°zòO_„ÇÛw†a_vËr8Šj6r¯9êÈjK1lH/@7é*=ií¬°Çš®õp®Â3ôo3òÒðx˜ÛáìF8H/_yÔaïyNlKÒ÷á±[\r¡ú8ÿ¤ão>•a¡¤\'EåâæZPH/>×žgÒ¨RÐÎÇp] •P‘˜úÃÀ€{L¤ö\'yD*H/^ûð­Hs×ŠMŽVËOëËËÀY\r_‘jü‹2Õ|ó_Íí>?@H/QýJÞÁ¶eÄoiNñ[Î$Uù+Ä‰é|n½D½¯`H›i€Ÿˆ´Ÿ@H-Tn’í«íò3Ì½ZF•´€H-V\r}knBîÔseÊ–k–õé/73ŸÇJ¾8g=ür`H-vÕù9s{ºp`ÐÔàç2²dúŠ©a\n,(€ˆLl`õ¾èc~Hp±Y5âï \"”ÐÔV‰Ø0âªé2\nÁÓŸšÀ°Ðo²šq†m$H-HÄ÷.â ÍÁüÁ˜|}YjBU)~T‡ ôRHp•ÀŸ¼H-HÄù!Ž£ß0Ä «/œSQàÖØ¢¾’–PB‘T\\BU¨!a°¢úˆH-HÁG6¬@9&;@L¸ë…ª¡w$_’y‚\Zû»ü„V„ØÏ¬ÄžÅ¹@H-Z‚¬·’ z ƒùu†qÂšTÄéÚ/”ù´ú‡ãp`]¨áíý|8H-vw;VƒÒp5˜áÔ‘fÝå£\'NtI–³&âøÐH-U›FüÎIl½	­M|¸5Ö÷7iþÒ!Å\'dëŠŸªH-WZRŽ*™¡vŸàˆÍ¡Å¤C§…¥ÌbBQS¯µåÎ«€H-Vn(çyO\ršT)-}j+nÑž/‹¤»‹*mÂ¼A‘[êH,Þ¦\0J?˜¸„jÇªQµqm\r}¢àí¿¢×€_Û’!)Î½\0H2}þˆ{Ë\r*–{\nS·ÒžµlÒû ´Ìq8Îìc[ÖTÎH/>LS˜¤ªù£0y\'¬¤øß… i6I¸ÿÀãbá]7Ø¢ý†N,\ZH/9gNŸ\r˜»ô.³†ð\Zz’¿,rî›þÖQ­l¦MÒ8û‰×H1\'‰±ùºbÆëÀœÍ=\08/rœ£&QGÂ„	ïçˆ›@H1â‹ŒŽ… ÚõøÍÃR#I?I†r¼ÓºÅ/;ÞEË(åûIš‡mm*H3¹Åp{>z®½ig0¾‚þÒ\"¦ºæúö,ºÑ“Ñ·Ç0Õsº4!vˆH5Ð€(jÎµìçBØ•Öq1±ôp™6Ò®®DuŒ#Xî×lnjvÆÝhH7÷y\\°‰‡	}É·5½$%èspË\\ä®â…®ƒçf\ZÐH7½ã1doH˜ØgQˆýûÐ¼´J4~N>\\Ö1„ÓâýˆàH4ÝPgy¢)ˆd¦e0Òñ3â5ÙwrÂÌÍ9Å¥X3üH2‰šÒÂ…^¹5(=ìOÃÏx¨èùeü§âØ¿ªÎ3ûý”®xH1H×{ÒñM¤T¨lS¡¿ä6=²Âõ0™ý\ZÙH:C&\"H0ètÍ\'ÆS(´EWl-÷±#³®W³6yG‰ªtc?MãRÑ§1ÐH/1„ðÖ²‚så¿³Ù§ ¹»ÌäcÌtÃ	÷í³X—«aå7»­€H.ÿµó™Z¾ÉÑ·å\'Ô÷ÅÌ¨@í’l?½ÀH.ƒ _2¡Ôp×Žg\Z3¯\0ZÒ‹w­Uœz tZ”!\Z÷§Ñ5‘¬ÀÝ@H/1†t7Ä‘eŠDç¢gmzu ïœIPšÜò¤œ,g„!jÍÊ0m/H/1„ûÁ¹Ó÷éÃ Æa×€v×VN1Ò†D!.„Ë±mÃZq¥w7’© ú<H/>L@\Z•:ÅûmhJ¶YÛž•’Æx}ƒû&,Näžú\\ÀH›:ëã(§-¨Ü¢S/%ç^E1°¸Z¶Gfâ&ÀÂ(ž´Ú5ôH›PXãÞš¾ÆÉ|T´ïé“?iå–`´X£me\'=–œ¯UœH/>pü–%ÞråãØgG\0Ö|Ö»¹Óh)kUÁôèƒÌH™¡ôk[01åÑO.¶ÓA0EB£‘8—§ÔD¿IH.»OÔÎªB„uù•´6ž!º?¦ˆU^&‹qZh$‰:8/ÏƒÓwB H-HÄÿ1ˆç1Æ‹íüŠø¥#ÕÓcV,¯‹)ø‡;Æ9èQàl€H-WXUÐ/œÚœ9Q·jcÖÎÅˆÄÇ ÂXzƒŽÅ¦Y3«H-UËúœ%Ïôs¿„>“g%Í8…TÊžy8qRÒë†ÿ9®\\M˜H/?¡BÁž…¾~](îrÐÓ¿V<AÉCòóÔ\rí‹íqMÕp€H1Hnž2Á“7j!ŸgËû†Ž‹\rµ‹k•[=P<ÍJ€H1Hgúp±çÃUš¹Õ±UŒñ7„ñ¥ø<Õê,/˜Ÿt©H\\–ë\"H0çw¢3?…ÿgêÇ¶‚áë˜âƒÙ¤Î2Jëó¤2°’—†çñ€H/_AþO¹‚WávËBìevìžxBŽ§RÔåc¼x.[½LÁçáH/8¤\\=`Ñ$ëoð ¹”Ëò³œ0w[ã=ñíéŠzfÂ‘ÀH/>\\;Yš%U™RÙpœÂ[š@Øi§×éÀÂ¢/ž¦†°H/yæìUK€ƒëÊcï-zaÛQ¿÷h{{¢ þ‹‚=u¹–rHÙê¿HÚ¹Ò„ôxK&%\"+ÂY¬„¡ª\'…‘!!{H¥¥¾zÇ•P’Šžü,™U‹AÙdûçwTõqd¦);¼B-ùÉÈäÝ}nÎfôH°ÿ×¾jÓJ‘Íu‘€åéc¥rÑœYÄñ¬cA`ó4Œ¡éÌ¸·ì—²Æë¾§³ÝÐl@H·+Pˆ‰úy˜qO¨[1ISß»÷qê©¢¾‚Çg;7vbÅ¿ä,H¸®>N\0gqªaiÈZ•òIŸßíœÂÅpÒ[!s:L¦ƒæ¶´=¶†øŠ¢‘~ß¼ìÝQÅb €H¸‡?MþSÍÕºã’¬Obš\0þŽG8F‰6B½À’”\rÂ³\0®QSL?Âþæyt<Öf¸Hµ«‹®,[³4ÍH†=W{¹Hn¡Kn´Ÿ+k 5Âi9¹«ëå] è¢p/`8¹·ðË0¸j<m&‡Ïp€H®€`8T[±‰1¿MŸß½i»uýA&îÁo–LáQ–»‘\\ÛqvƒˆxcþÔ½àú–ÍnBHH©\ZÑæ€B\Z¯[ÉT60õ,ƒÅ½GKÞ2½àŒS’=S»0Rk½¼gÈ—…)a\"¼•CCÚLßèH¿b†N*Î\rH oëä®`^šå;m!u=BF£7š¨ÜFYQÈéTÚËuqô¥’¨~mq¾\nüH•éÔòb\0å:†–L`Xb\"ÅpÎ‘ò |ñ a15#[›yÁÒ¯­†}&“¬\rŠfØ‡›Á€H–‚çNÆü@£xö¨ë†-]œäÞñ¶‚rxtp¥•¡ãÜ­ÿPy ‚™vCbq;+úóž€H”O…š‚+½lõ¥Vw€Ì˜yoÎÈWÎm-zI¨Š.…Ý”[¿&ÅùÌsj€H„t¤rÁk¤:˜ÁA= Ž|ž7Hz%ÈÓ‘;cp¡÷w„œ†ã¹Üõ!\0KùË¢ªEl°Û @H“ú>|ÿø*ÈxzöÝâÀ¼“	zå¡Ò¦ß:°ŠQOß…î­‡„_¨ünw«§bxH²]ËuV3ÖIÚ!EmvùSVº!˜ÏGlUm›ÐØÌdÇit©\'¾	‚ìAZtÿàH·§€½1ïÑ¿³ŠÃ]6’¬Þ™iÖ7ð‹êÔÔÓU,Ö Æ;	Úõ´^‡OggS\0\0(Å\0\0\0\0\0\0\0\0\0\0\0\0ÌbP±W\'.-/434884211115:1+.102*2044\'*-001.,,*.3,\',02(/.%!\"\'23-*;60(\'+/&/512/35968./..4423013/,Hµ®ÇZQ`nªä).”Lûµr\nŸyªÐ‰m“ø$Â—CðŽ}J¨H³ÖÏLÙ:]÷‡‡«_v™°ó¿ppv7ÓfWŽ™!UIj§Ê-ðÏœiH§LÖºàœòaôÒ±Ð×2Â|›WgDhàõbW]0ÔƒžT(-Û„©ÊNùþH¤åCBï®2î)û»Ëå\\<\'¬¹|ûýðCs\np—ìëi6×N\nêØòOê\nƒ_ H¢jìË«/ËÂ2ØTÅ8‚uâ³Æmc©q@ð¿«\\Ró§z{Ôþoýã/ÿ-1f#²@H¡ßý[ò¦{ë}À:ôiOÓ²±‰Ã¢ñyn(UV·8ß;Ü\n…¾ýýAŒ×Ì›’Cq\"H©0â£rsÐ_ökÇÀÈ)}G”í ÇCSÚV\nÁÑ¤NÓé¡æ&Ï@¦È[-RZzºƒ™®H¥2›b‡-©Å ÂA[Î_¶ZÀ‰|\Zˆr®Š}\rP«šÝãôm‡€“ïû‘öÿA\\»ÿ	ËH¦Z¿jWÃ^³æ‡wž‚iÀÅó™Âi« ’ä2§sìš]W£A}ÍÑ•Va¦jÖÀ·›àà	°Hª7Ñ¨R8²ÂÔÏGÒôÛXuV“V=çÚò^ÀÂZ,Ö”yª“]H­®r&{˜CV`H©Õž/kŒ4Z(UŒŠ7·3í5†â–Pâ>*¥kï¼@7½üÞëîröä[PH¬ÝÕ~ëÕ_ZwVoxa,-\"\\;@ÄÓTsÏ\nÈ>1Ë§0u3:\'>gäÍfV+xH¬\\ î™gðáŽrEU_G˜8³–€¢%¹‘‰L¤È/Ñ£ÜebXþHIlä€ŒCÔûH§µQuHIÃÍ\\v	é\"ÕILÉ>.ÐTvC¬Ë‰Ô¬PçZ´Ä`åwø´yL”ËeŒH¥øæŽ27N‹:ê6jc\'–ùÝÊƒºÌúæ\0u¨{xáþ=åêPéôÌ[VƒXÑ‰`H£gìÉ±¼6‹æ;Àzj¶ºUÆ{.ø‚ŽÔL/Å\nP¹ÂV²5æH¥±——¡ZéÚÉ>FrÐH¡ÊŒ2ûV×‰Gïà8JvÝð–‹“G’ã+›x;\rDë³6ƒµ³ü4a6&‹Þ‡`Ýt.îâNü¨)(H”\"ZO¾ÃšæúÏORViã–<Î¡dM§Ð`”‚±g»jÌÉŸƒV|îS<½\\|2€H„¬&lÍ@M‹ã¨¼´¨0TÄgèO)üµ\r\\µÁn­ù±v­žž˜g–À–÷€H¶ìˆÂT×ÍÐ£j7dPž¦Ø†!YW=]Ò™^5ûÃîð™[B›“VQFM¸H¶ÞÛoÒÍÄÏßXV†l,ë½4íÐ=Â’£pøV¥ÍºË{x˜Ž6Y¡G?ÓÜë@H¶¹‡\\ÿ±\0	³íÐsÐ8áàßÚòD§	áá5œ›ëÃ“DÄ-M7•¹>qH±^öt&|¯ñ7«hJÓê+ÖïÙÁþ_\nÙA‰3’žÅ@úÚªqL@RšáfHª¹´7iÙ 3;ó?×gk8l};1ùRÖ]ÜìÈba(zm_€6„H§3líõ-ˆúÂðµŽý‰œäAž3ó“âuÓmh¤<¢d»Ätid˜¿ãÉùX¤PH£vcð!EY\0a[0¡Ïšlº¶÷Ž]4bõVq\næ³CüE¼Aº–k¿&—‚ÄHµÉ¢¿ÉgÔ„ørÀüÆöE¿çm+øs*pCî½BQ•Ã;fÑ{Þ™^ê­ßò¯E·\0±Hµï\Z\\åxa\\\\x°cv‰vÞ<“E€˜°DÒœf ivòRmùMç^ãzGƒ\ZÊ\'»EZH¶šòˆŠÆña9çø©r©À†p‡NØí˜Â|únU‘WòÌU‘XHµÒu’Ï®?Ÿj\nµÝ*°`b@M	 ˆ³[©†?ýF‰Çä\Z´Ä#*H³a<‚žÂ4Ï€W¥aø¨LŸîõÀv<¼xðÔw1YXÔÊ..iVŠà¸â H¬mØ€\\‚	çt¶ùÍ„†	£mõÝ8š¥…ßÆõ4äI$®Ã3¼†òÀH§Û•šŒ¥Ì«t&jE´a WœŽjçFé/³NrEæz,œ¿\0F 	½ÈH§M{t£44. îé,Þ¿EGhv,¡8š:Îl$þ¬æà~ìk¥ÖçL…!¯ã€H£n¥1Ýãz©Ü#ˆE3|†»;-w5ä×RZ¦¥1‰ÄMÓžáÒì´‚ë|³¾ˆH¢&E¾¾Ê7ØÅ\rtNûfV`=ºRðºF.®CrŽÉ•´ÂÛ[@¼ÙÒ¹LPH¡út¼ôË=f¸îUŽ7­å’}ŠJÇß3«ÌâhëŒS­?ÿª!q€Hž±Qfªy÷}ñ` ¡zébÚcqtSû[ûëK›ûÇ—õ \rþ&ÀHŸ5Vþ~m/ºS\'ÉÕœ4¨djl	»?ÔéšËÞá4V¶U&á‹9®H²\\AÛñr&º\Z¬Va#m°´Œ¬CÅà7Ž³ËÓqvCANfÒó4FP°¹BÏ@Ê£†ŒÀH´Îöðâ,½|ôFg[ìFËMþ3}ÓÝÑ©l{\0àÌ:&Ÿ!2œôˆ:H³”“>­]_‰@Êa\r7	I¼´jB}5rÀ³½Öñëü#`H¯Á£¬jvŠA^ødÉèS÷ Ù=xw§£oL*aØ-Âq©ZÛ8¯—iTPHª¹¬èéËØóËLiÑ<Ð>JÊÏ`j\"tñ*-èíd<“ÓÿÈž]BGƒFÒH§Çkj9’nH—3úú³³Q œgfêÄ†Ö)M¬{3\0DÑÜii2äst{/xH§èó‰E ‚1\rö—€ŠDÌöO˜ÇqÓ®ŽJŠ`«ÈÁ~Í!NmçÐH§j ®AiJ½&g†¹c´ÜEÑÔë® 8v1¥IíNSwKCSó)MßõJ%	Û€H®ÇbƒTò¯Ñþ%™\ZÙtzG”—_=ùÑŒúÏÝï\ZÓ%_pô\0ÚŽàñ ‰H°RÝ{¢ycÿt±!L9kjÜS¤«_2xÜsïMx™?|(CUÀH°7»F‰#~z@Éta2ÝzÈ;R¯{“ò	pÕIþ™Ð€H®X%igã:°_µr¨ÉšpãV~U ÜÊéŽÔ‡ÎîØH¬eƒn7¡;ü²éãP¹ZT•º\0¡,•¬ÓãÔ¹ËWMÍs\Ze©€H§L×GÓ’QWk-î½ÃÊ˜Ahý´fïG^^¼„ý¶¿ÐŒ{JGB—IGå;àH¤¨É\ZÔÀ¸žO‡õ¬ÔåëoA¨œgäŠðŸk™@¤ÞŠiUb©z9ñIºÍ„­a°HŸ•…ºmC€ÜKàÓ|êç²zs!„û%Á™ï9x™®ì• ahËˆhÐ©»Ô†H8Q×	ZØh¢•æðpèÐ<æÎùåy	àIÄe¨)´ñ‰\\‘@w®’ÆH¾a¸²,ý!vÃÚ¡œÂæì‰÷\'c¶V²Iñá9RÆIg,€ «Y÷&ÿ4ÁWé¯oo}\n1»n“¹3·ÀHªÍ›ŒkùœK‚D”åÆÚAY Ä°IêSƒXå\\àeŒ¤5JÞ·ªŒjÑ¿l°+eˆž² H±G\'š l^7êÒ!ÆwnLU1”tÈ‹µÄ±¯Tú&ßÕ¤·î»t:\"|í5x:H°5š‰¸$Ï…_ëØ×4\Z}vv‡äÐ‚å¿ÎKÜœÙX©€j*dH®ƒ¼ÂÁXƒ—òý dMG÷\0dÌ[pÿ*ä’ 8H!†òÌ°@Hª²!\nüóqFBnýÚ²²bHØ®V]—Û=)¥ØcÇ•šW²vjvÀH§‹^õ…:.Æ]e\n)ãIÙdËôUÕ·EÉÒ§ˆ”¯—srwûËâÀ²£ÍÙïÞH£Þ·õðOüÌ:Pßi¯Ž|³>½;\nÃhb°=Ë*°ÕêMPH£Ó¬oöÑz’WjÀìDŽ‘€ÿØEp¨ü»BzY@éÈßAb¦ƒÆÛf}È4ý‘H¤=%±w[Ú[ gÉëw=zJJÝðG×«UŸ®*”Á’\0THÓX>B´rãT´Q6ÔìàH¨f	¶Ko*·E@rh×0ë(Dš“Á¤|¯ËŠ3€kËÿ¢5Q);F¬:-ù~–ÁÉ H«†gì1[¾t¤2ò¼ý%›úÄº –Ä÷z¡òJ~Ùh.-¬_¿ñÝŽt€W?b˜s®ßëH¬Éž²sNúÃpÇÊ»ç­8ëpîù í^äÌÆY\rºÜ¦‹	íYŒ9KBª{€H«Nñš¹[ô¸”a±ÅÑ¨fšÅeJKºy	-bîTL®¨Ø£Ö>ë¯0H«Qˆú.­¶Ù:Þ¹,æ <±Áê_2Í<UdùpE¼ ÚxÚØÚ6OÇÆÉç>ÏOÐ›ë+H®çxeÙ]ˆ!Xñ…vgð$]ÏìŒNgÌÅjPóÓÁSpÿaÿ½D&­ª&žÔ}ÆXƒ“CH®¤#ØÊ[ _[l÷\"ÁC‘ƒœÊP\rScDòYc³!^FÕü5Cõ¿<®]V¨ñDe…ÍH®€Î:äGÜÇÆ‰T«YÞÖ©B˜ò•‹ÜV;S=òÑsãEò¶ìü¡ItßvÞÞïLûÙÊGˆH¬áuesì:ØH_ÖØîtŒ[&šdÃŠ@YÙ$Î>ÕSYz¨…˜vÂWbàHªôÇ7û#©|36c¦š^œ™(C$´è>å¬ ,žIç»Äq®;…uîwÈH§“2ãÃ³¥uÞM\\åÍ¾5VÊ7ìm?$J9Ñ59¥-¶a,ÝŠñó}…@€H¦.^^æÓÎû7{Ö¥\Z0–.^Ù©^¨É%J¾,pî@¿×F\rci¢²€H¤¼<KÔú¶iâ]¡§î\'€ßÀî×ÏVŸ¾	í&T2ò®‡Ê;…N­~Ý3%Ríâ¿×ðH¥R\"Î\'£Ù·Iþã}ú\rmCûnæËH+d\'ÎVYË>38Ic….Ù{è»¶Ï€H«‰\n`y!J7zâìÀò.7ýÖiK\n¬m¹×ÍQBÚ9ýõÃ\\v*®ÇÉÀ¼rÈH¯I1×ëL>>ÙÔÍ|Øââü}Û“¿¦\\Sâ\n¥Hò‰~Î	sÊ.§&ôñ™¯#ãH²×Jê‰Ì±‡&R]¶é-øj™=÷ó+6Sï”lèâù	Ð‹]&¤H²´«a-5æ\n?˜kyÙK½‹ÞhÏ„›Œ¦ßûmÕÞðßRãÿá-ça?H²]Úô›ð¶YîÈþpô¤r91#ò©¹ÒÒA\\fËFç?xÜÀTH’pñšôÞŽ› H±|/k¡Ÿ¹CIaÐ¸pÁFør\ZVŒ>Å@è\'»A@mø§æuH4°oÎXOÊí[H®|2ÀHR7Ön]¨k(»ÛT8l;ÉÓ¾{¸ ÀÖ\0J°°OggS\0\0h±\0\0\0\0\0\0\0\0\0\0\0\0ðˆNm?3)%&%%#\'+(&-1/(.+-%#\'(\'&%$.-$\')(&)-)(\"&\')(($&#&%$%#&\'-*#)$+--,H¬£“ÐŽ»•ã¯¾<Ý3çëL%\\Õïn®Bm®?YVGÒùI	Wµü=ª§´w«ÙM`s€H§‚»V›¯$vBloèÅN?ÍÇ#ú¹Ù—~ü`z\"£q®ïÜU\ZOú’ôH}ï¥[]L?ù»Ä\ZâÛ>IkG™ÛæºÐ5V¢ˆò/þ8H8­X~™ÑíB°†-r®`œè§PXïÉ.\rô}Ê™é\Zÿ-€H8{Êæ¬ž¹U?ŠVõ®¹,£Ö‹øgåÞÞý¸ÎE/vèH7ùðÎùô«9r­èy‚c/Ù*üÒÁ´xÄãòLÿLH7L&ó5”Gú£Ôÿ¢—vÒ•¶ðÑRŒì<j‰!”8‘½GÀH677hì\ZñèŸ|¦ãH¥öÁƒ]\0wi±| óWÑ£`œ³åuhq`H2’†çÑ/1ðnM¤µ\rq¯“>e‰¥ô¡2•¥P‰¯LÐ?°•ImnUÀHÝ|ì¢VNùúÛKª\'<—ù‹¯˜¥~U‡Àl(†B_Aš6ÅÌ9Î´H2Ò[néj6»`X„8ýŽ#;RÞe_WÊÊ÷¢Ó[5û±j.±~’H‰ \0µøD`Ö|]ÂÃˆP¨!¡%(ü¢FÞÉ9aq\\â\ni]\\äÃ(³L‰¬™)HŽV/ž(	ô6ô9€¶Ž³Ù…ð<Äé·º‹VWäï×ð°A½&Œ?ùº[}À¼SN°H‘w;\\þèÏ¹ÕÐ‘?vþñ fjÔšu3’ êÑ#5?\Z qžH‘¿! å~£²¼€àHÞ1ì<âEv*qˆ±ÚÆaÖz)W|Ÿ@8\0Ÿ{*çøyþàH%kÈEV É9²‹jì‡5+=V‰q‘ÏËUówÑJ­#àpæï£=\\8pàÜHŽ™æJ)ôz<°(¥M_Öyç™–È4ìef¼Ìj_Ìš“7ªã·ÀHdŒ¶÷,†páxY‰Ï“,MË&î¨u?9PqÕÉ§’óTÐéÊDÑãÀH8$J‡N¹’bØüpOä œý=Ü8Œ«å`7çuÜPŒsùçŽðH7J‡FÐx\0ï}i=+â):¬U	€óÚ óðH2À´õcñì»/€Ê_ÅO#ÎÍ4c^afå¾ò\'ïÖ³‘Y¶9TH/@¿N-DP¸ ´	òÙÆUÑîÖdÆ dMqìôÀ¡;w\"ÛÌH.ÿº€Çõž÷›±„K†¾aúüCA\0y?ù¤‘š):öýËxš H+Â8…Oì0Èw°!K~{½¹­Ž7ÐÎÖ«¢fŽ†K>Gºû¤r\nH+ÄÛzŸwSý^¨Lê‡Áù½r]Øm½í€xùu\"”@H+.4{ÏqŸ\'*÷QK³¼ì½Åï@‚•»ª›|©ié\Z’§xH)…ÛÄ8Ü¯š­k6—ã¤±Âv’.|>òG èQUœ*(ªÃCl¯@FHT{¬TH)¹G&dOV\ZvxÎ°-`¬]!:Ç/à>=1B‘8üü“°!5ã«CŒÏPH+lÞÔà•<?Sa(ÛÙ(	ñ³ðžù2ýž„1\rjŸ=ÚÍÓH+YMlu£\ræ„8•»ó9WŽ˜Î\0¢[¢emÒ”­$r-€H)¥¦=!rt)J†ÃtÚ{ ®×Dqr(>Ê$ °â–ˆ¥±¹X¯ÈH)wÇÖŸŒé\04hÚL´`â3aZmrL†Ü­|8Ö íÜöà °³H)¥\'µ€à»¿}õ×´kKMÍã(U>‘\\‡Ö£En¬SìY0H)¤ÃÍa† ½z#æ(\'\"\"ŠAƒq\0g‚©õ0¿¾h/¤· 4¿í8ïH)¼ua¶uw«Š¶gûÑŸ3Æúv\Zo»ÜT¸K n|[é·ñ2ŒN˜c­Ø3ÓH+©ÔkË¼±¸V·&W@9´$Ç}ƒÌ¤pŒÑ¬s]A9\0}¼è%û€H-v…»	œ51RO`~. kMj²„ù\0XÞunz¯«±½•J>=ßÞH,ÜJïÒ¾sï|£d¨	÷\'*.Y^ß G¶¢ÔÏ4!ðH+làæ¯EÚºïúÛüêåmˆaB¤<è4ï7þÌ;¥JŒ‘‰!&H)ªn‰˜·xrFB\nÊÊ$ôÏÍlÒKæ=¯	Þ\ZÚq¢2ÐHzl”-8àÖCÜß3õK±åt/[PßyŽDÓzz‘rc’‘\rAH0—|ðã×˜W¿T¼€Œ÷ÍèÂ\r€Ò¢—oêbo¾±õ\0¦ßDQ‚{H+—8©”H-÷‹ücàïqqµ9*ÿ=g§.Nx=ÜÖ¦ÀH+[iSPØ—lþ\"†Õ¯~ß@\"ZØhktl;b¯“ßÓ#@H)„;ÞÔW>±=¥&¾ãŸp²¾ôáŽs‚¾ƒæú^wíV¶€Hæˆë$³\'\'BAýêSg?{ÿ<ÂByRÇ\r(/\0ñS€H\'¼hFÈYÔØ%ò©2M{<GÃÊÁŒÆ.¹¢:@Á­½7@H\'œ¢ÖÕW*Qð›A¡—B|¾Ä¨ý;pþLª±%i^¦}A€H\'íŸê.¼%aÑ@lì’q°·2E®û¥Ý±KŸr¨O“9H\'Å:>’8Oúà„»…ç !â[A€Ð†àg·¶q®àH\'Å2;\n°e“Û-¶`Â¿6&\Z¬‚I;Â£2•\0KPÁÈH\'¼Â€þáA`6bÔæ¾.]QF…\r·²;Ìe48PÇSÀàHÉÚL„£•ÑÚÄ‘VMÍšõLãæŒé@\"žs}{-Õ„(5ŠH.ŽI{‰OÆôCmWtm×ç‰ÎÕ\Zåd¤K‹¦LÊ-~JwR§Í¨ÔL0H1\'>§šÒà¦!$¸(ô¢–@O\rÂ@ùì¨A¯\\V”²,¯œ{ž H“G1¦†³\\WÐàh\r0Wózü”«!®òmœµe¡UwH)vâŽÀ2‡{Æ¯¶ƒÄ+Gœü\nKö°(YayûÓ6¦âù£*K~H)vä2c,ô(£Êk‹o^nžHs$_YËUÂÛNZ»+T^ÊIH)¥\n$åfj¯€„_\Zd/LjQ\nI@å·|15,ÿ¡6ƒ\n¼K&#†±€HõV£vSƒÀéu\0“Ï€NTjÏ‡PH\'ÑoÆ¨æØ©\\‹ˆ8\nT»X²ìÑCËä.[°º)r™Ö\\ÍCþÒ­-kGâ@H)âÁ~:_,@‚ÆÐ³óÏ\\Nú:v·«ôtq\'Æë*p%ÝsœH#|åðH+Ê³Ç…²òG‹¥Äb†”ïæ`r‹Dõµé»K®¦÷$.íˆ','achka puncha kamta man kawariua.opus'),
(19,'Nos vemos maÃ±ana','Ã‘am kauanakusunchi kaia','2022-12-0515192975612maÃ±ana.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(]\0\0\0\0\0\0\0\0\0\0\0\0M®¸\0]33/.+,1!/*\'*\'%#\"!\'(\')().1)+*$)\')*(*\'+%\'\'$\")&,/5539823*2:65343/,0.(&\'*816241*5796\'&1/2-129HäÁ6ìÅ€H€~êÏ—š-Þ©*ªÖ/°Œ0H‚.I9iº\nÂÉ6Ù«nŒ›ÉäÃB¸„ÀûÚ)õÏEÅž™85DöÂ¬”  $H„pð±öõ.¤CZxkŠNtÚáÞrÒÕIJ²y3<)”²Lœ–„] œâ÷>MH”’“N³eüÝ~rÊ€^^c“æ\Z¥vÏÖBÿPœóMDÏ;\'•X¬\rê“H“ë\n©¸ªÔ¿m([ñº¯<ID¥ ]gý‹:hý8ð¦?°pu4ÞEÍVù€H“Ëªáëk_Ú@#¸›vÖ‘c™Þ01Ä‘N¸R¹]˜õÚ¿û~H’g@®IÂzLSò¶í\0Öˆ®3ßõRU)ŒˆÖd¯kr/°ƒH‘]káƒ¹=¢ô¡«^¿ð%+ã—oßh/ÒíY]!¥Õì!¢ÔHJea2_Ø@H&]±Pm»×à³ÌRa¼â@o hGøì¼\'ëxÈ7€HŽ¢¼{ ´o‘Ù:²¬­Ld´Ñ§q&´{z3M¼\rUÉ;TŠ3NÄ¢®p2àHŽ,±¿ñüµ\nI¤L‚o‰	-\\ƒŸ˜4©á/ˆ?HPÿëA™êyÐØHŒð®,;zù#gbŽŠ®û±¦!þtó©?âùœ“ŠXœ°\n# H‚aT¬	Ãß-#ä·½£\0±<a<òxPí³jÚÙ<h¦›¦òŒ^·ÓH7SÆU¬“„ÖÓJs¶!yóN7ˆ	M£À¥^ÀœÆ‹–J¦Â³¾\0 H7\'y Úü\"¶¼:Š`§¬q8+~a9KŸB¦‘úa²šŠ<H6hÝp¸¶ùË“:C×%\ZòÛ¶üˆä×<]…?\r˜œè¸å\\H3KÒø‹¯?S¿&ïåÆK*OiÖmv‹bƒj!>£ðH2üKø?1Âg\"D˜NðÚ‚•eõÖ¿æÉá H1FïÛñüx¹§X7µÛoK²U¿j·é$y85j˜@÷MúY5š˜H1]ž¸\r×¤rd®¬­‡¦ò0ë\'éKWX×*bš»‰ZU¢–èŽ\nùì„H2ÑQ?«\\rýv5Ñ3vaªî+.ZûÒZl´ä\'×úáw¦H1\'7ÍµRr¹ ôe73$(9¤Á;R`\"ÿD ÐÞßùS¬er¢7pH/?ìa6Ìß	´õ@Êœ—ÐÛÇXl/)W—•\nöuŸúÛˆH1)@´òÖ˜0\r»’ûâ•HpZ,û™\"]¢BèGßˆ÷úm\n8úèH1!–Úù\0KÚc¬—lÍD“GWÑ•‚óÑ	íiûÝrEÊßÔÏ×´3‡~¨è®åH1ÛË¡\Z,7ÚoÛHM®&Ýàó¹ÿÿÍ‹\'eÇý«vi#ŸÞ‘F4‰£I¤¦ÀH4þGÁúÀëkzòV!Ø‚iÜ®3sóé>\'hPý@óL;•\'—WEH5†…T!ö©-Õ¹„qbÖü“p¯ínû–»²`!1\0øvF–ZÕœH6nÿiŠµVß¿qŒ>ÉåòºÆ€ônŸs›œ^ŠË`¨ØØ`ÜÅÏ¢CpHewô$ú§—zaÙßZ.—³ÒÊÊu¨d}%€+3Ùl½H4ó2PÜTéy2ÄñvBµ_Èè@*ª]í¶$(ÿßÈ!éÚóùËH5…4‰Õ‘±l?ßì¦õ»¨\"“ê‚a¢3\\Ïz‰BÀ$¶‚ã/æNH4ý)àpÉ;8åÞLe&ý^û¸: yO2/ŸÓ!á½7<É€H5ìp|Ð4âzNÕè+x{è›—V~½öaÙd¯\0ƒwoA´›DÃ– ˆH5ò8É{–,ø…Ø#Åñ¥Lšë°Q¡ï¬U3t‚– EwìéQÆÆ€H5*Î™Ãûû-x¼ü¼þàûZêÝé]º„Þ#ipŸÖT	ò@T²zÃ†H4Ü3ê¤¯Ëò\\Ãk*ä²~«Â(­rÞòƒ®X3±Äl‰GjªJåH3Ýù¥=Rpè¯‘_K0‡©˜Ò½Ö‡Œ£§M˜/Ð=%‚¸þ¾iw~TN H3:¿¬NÕÓq¬w7ùN8£ÀIåg9ðVJe²?Õø“‰Ï“¤Hž”NÉ$€~{0[g£ü:œÅud‘©0Ú)G H1\Zqµö|A\r±ûöÔŠÚà{HqY!þÌ«¾v\\ótî}\Z\Z’8H0°ž¿6I@¬C\n3z=Ës˜­u¶Kq0ð¸¡aqKcÊQ5xH1\'ŠÔ4áÛA2¢á1Ã²‹„²&Í›jÃn+¦¡¾òŽVŒÐ„H1PûµJpo ’¬Ê¾ìIr„7n,Þ|=êTÌ®Ùtˆ|H1Pû¢“”–kï›Òø@–lZáÅµŒóàß¶°}öŒˆXH1\Z^›­JÅô>gçAí¬Ù“âÇäº~ªA¸s*Ð	©†ˆú&¯dô€H1¿QèÆfÎ?“h92Eå–Î‹·Q/3‚wç\nÉ›í5¬¿H/1¡4þµ]Ý§¢N\\[>Yó^\\Öž æ!—G±s\r(ƒ0õþì§¬m—¼R¨H/¥»¡(¦Ž€uÝìÔsmÏÅ@&ùä¿e0á§ŒÚéÐ ÿk˜öõˆ¾¤á	¸U¤\\H¥`À}}!ËÖÖ™pšp^~;¿’aŸãë„Ÿ\rííãO€¤âÿ[˜pe´kVz‰pí\0°H¢žéÿñOoT‹bOö$¥­ÙGg¸äõêÄDÝî+kC3ˆCŸlÜFW†”?]€G¢¬ÀH£ð™O«÷Ê—¡+€Teâx»g„Ò€žæ8=tœ\0?Ê;Ùüá¨æÈb=øbgL´H²/ØôËSÈXTâ;Ž–?¡ˆÊ-_CÔ‹pþ\\\Zé4Et+o¿óûý˜$O*±V®¹#ü€H¶Uâ›¯­íÜ>¼[¬b÷éM36ž“ÌÍoíÓ‘ŠI½j!zïÀ1àÝ±D{Þ§f0A#0H¹å¾X8$éÜÞCi:M.Ð[™*Æ_h3Ÿ0{üV$^çÖRÜòÖÁ]æ½7pH»j\r§7­#uø3qh»{ÕŠPä@j¸ð”‹•ˆÁ¼Šã”GÌ‘$ñËš´†¸\'ÙØFÜH»s(äbg=QRKI,|ÅfÛ\Z;Å¢#Y¿ZJÚD/ÇQÁsZ%ïùÄHºZˆâõ÷ Ýè=kt Rm‚»ŸÓvã¸²jª«:ÞÖY9Ïtÿ÷èð\0ñu~‰VH¹JàZztàaº‹ÞhxsÂwÉºÃÍôëÚ„œî&òÂž>\'­ògüÐ»¢dÎËÊ:†qAGÿö\nH·q+2ÂzÕé-ã\nÑ¼ðåúxøä\nÐ\nàîž±ÅÿœÝ<˜Òçí.\\\\<f7ú>­ô>`Â¿H±tŒ•æ/…bîN°·&±Æ¶6m€ÂUùtWä‘ôa‘¹òžâD{ŒL—o¿!àW/Š-ÀH¬È­T”\"dûüŸëÄî[”¾:b¼ëzÒ\n;‚lRM¥\rNý ¡²T{žvÐÁÝÀPHª¶ßÞ7,Î,0AÆòG›f¼h„6à…µÐ\"ƒ6|¥â=W·ª®½­ÖßÍlôÐH§N%(ÞZü±ÄÁ¹Ó­‡”Ý²’tÖ|\0|svOßÒG\Zþ¯}óýˆ]¹œ››9W9.¦l¼H¤Þ›yB¦eòKóÕ\n˜lt\Z\"Ì|	ñR¥œ}WBôŠÈç\'Îƒ¡%†sªM¹H±U“‘èàœ`^Uý	‘µñ€u-)_È›±°ÀŠCGøë  µTHƒ?Dø‡Ÿ4rÏ²@±ÂzÏ§GÝ×\'“C¼\0&‡ä^’¥n³¬éšlã=,ÔI³÷ö¡8HƒÙ-ŸÐ3*õOòŸà¦FÃÇe4”×xØŽ)¼}v°Ýd·gÌRýQŒGH¶îÃ3×ßá¨›™lURxW[š…0^’38’Õg!ÓÅôû¿°Hµæ÷ækK9‚‡\0§üƒ&„Á¶`mb£Q6ë”æKÅN€H³Ï¡Ë”x¼L^RIñ+¢Œ`è[xßZQÉ”Ùˆe4Ç#-Ð`€H³/î¥ÿm\0ë%c]ÖT7ç/a£œe:9ùÔ†F¿uÙGßcºEÂî$ØH®œEKÄc9ôn¥¥ ÝwSŸ˜™ôSz”söWÔL\"±Tgt±ºee%œ±õM?H«NívôêvFcùOcW÷’˜&Ú^3¯Ý¸º)ýË”GÚN@’5gg1e+Eü†~¦H©‚®lþÑåº‡tãLÃŠÖ“L¥éÎÂ¹”fÈH÷¢Ý«XÝ^Àž’@& C¢–à%?—€Hª¿ÉWÚ¡(….ü2êVz“Åøš3°\n[G.Ý-²00nïÑIQX“¯B]¸¨>H­.7fï¢üº(_à‚6Ë[Y©¡…å\0¶8ûŠþõÿ¼DZÀ¥´årà^E|Öx¯¦ˆ¦c¸H¯3Éì(\'cf6×K.è¶Œ\n«´^\\ô_\nP½¦Ç¶„³áLÈÉT¿ÀEK°H²p‡Ê^¦\r’Xç¨<F¿zƒoŸ½àJN®bºp­®ÖõüC^ÍÔH±~Ïº}ª©JìÄ}»>lýN3˜ôÁøgƒƒÕ=Ô…ŒÓ7á=ë[¶{ö§h(]€H®…©× üð^ñ6;îŽçH-ŽqÅT¸uÊåKâdËSý¬®Y™M˜Všƒç^{¾®H®)1ÑÝä~/Ð:B!wOÌFî;÷V^×r£pØ^\0À•dÀ×í\'y¡Vx\\Ø>q_:©þÂ@H²’ÿ¢ [²ÖZ²¢ÐMz@«4lrÌ§²R¡|¢5Þí7ÚJ#¬ÞaKB²GÚÀhÍOê!ÀH³žõA?x[ˆ¼œjc¦FÝz{=o–ÌÏ&ò$C³Ìæò 0H³¹ô0y¶ŒO¸Ky0	b(8Ýøª¯Ýc’4Ã%ª]F(Ò}8H³ßFÓŽ-SjL\'\"s}iñÂ8; ø¶«¾¸	ë‚Eÿä¼¯çõìÚûG¢H§L×Êé<b*TãáÞÕ:ÞµÔmokRCÝ\n9×V­ÑÀ?ãàæ+\'zÊÙl|H£gúÉ&ºGÔ‚þHo†[utÌ0¹!Ðæ%0EDhß•õ§ç 8­Ä†É„E×°HŸ’&bî;×U[,7º8À­Qåævž½®óÒ\\0=ýÝvÄM÷–È¥CŽö´€Hžî˜Õyuÿ‡	v¾ƒí —µœk›=\n /gØ€Â›–Žn!ET¼¼ƒÉH¢feÿ?ÖÀ;«³‘IöKßùdÕkÂ¾°rô¼çM(–ƒ\"f[Â\ZßÝ8Ý\n[·ÚH¢ûÏ‹@\r®—ŠG¢îÒ#E¿‹þüB‡£-T‹š$@ã\0+¹„’[J<ÁiÏ;·©¹Óœ‰àÊÜ OggS\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0ÇÎN8/51.*-/\'+3*/1/050,-)&$\'+012+(*.9=64375712)*%#\'(&*&&,),/+$&((+---#\'.)+)5.()%H¨hú/\'îä-x>	Ž°õ—ü4S\"-üò[ž\'éFi‚-GóA”È¬¼\'O:¼CÇÇ¿I@H«fËèÑ™Ê¼ñ‘l¤.D®E¶\Z#búLReM«¨:ýÝt—%ñ×ÇõpžÜH°BgÊ¼ÕÄê&†»@1b§I¤D(5vˆTÒ[)\r©ïõ„U¨¤•wãpÜšRL@žÚ\\@<ÀH’1s.Nâš5/n\Z<3¿(\"+˜Á·ˆÐÞœ°±½jO~<ûDÓÌ?hÚ÷¾Ç;é@H’Â´enšàÌÝeLèù2Œó).]Õë®öÕ±´U6ÅDWÐIhºKÚV\rÊH“À^C^a	•&-%cýÏ6¢®˜¡=†¶]uV_Ñià—+k¡ H³<‚m/é¤¹–¤ïêë¡æÂÓÊX¶¥N­¼»£ÿ)Q£ðxž„K-®f¡€H°b×$þ\nÞåEWÏÆ	üdÊ®h×Yç¶ž¤m@ì…j¬›Ú¹:P™ó*ê>ªô€H°B‚©ÓÅ\ZFâG	ûÌEºCÂ²ÈÙ\\\'ÜJóoúGÄ&òúü­òÄH¯³<pNHR–¼%æ÷®ˆ+~}3hÖå›ezëI`ƒO¤ke\"›ÝËùÍ”VH¬[Ó¯Uqì\\YRuô4-ÙÊEÔ¸!ëþ|Nw0ËàêãL>“©¼’Qšªçl%™“&Pî€H§‰0rKwo5\ZÖLOGßˆ\'3Z2IR¤É£Mk¢}3˜lÜ¸+F¬€H¤°LÊì.ÐÓ„ºS1Ybkc„À8@ÖÁ÷ˆˆ‰(VBÃˆo¤T\nQÄÑ?H¢û[‚—¼æ¥—ÝÂ§+‹émfšjŠ`âƒo¤ýòþ6$Ð\'×}{¿prˆ—yu€Hž5JU‚£ç\"“\"È,&Ð”7¶ÊVU¾©x6›2À_F_€Àó\'éûyûVÀH‚³qÏîÅ}ÅÏ7Ä™º6Q:{BÊDÜÈøòËÀ¦\'…ôŽ¾¨ÏùSå0Þ¿jiÙH“RNåzd Nxâ¢i[éÙÚ¿|@})Ïn±’\"ÒÑ‹`ü‹Í24\'ÿª@,joAÐH”}¡¢erË†€° šY{tsæJJu‹§nÐqL:Hƒfþ¶ØÄEÛ(¨\'ÀH„„ÎJqñûB6qÑ~L {¹(Únpí0W#ø’‘.#S¤!4Å5öSH´ïù§þ¹`j’]sÅ™Cç½~eFvE°|mñÚ‡N0»`&æ´Ÿ™ÐH„/–³eÀjSÃ]z¨ÎÒ)„OîFzYÈÝE`2×7y²·‰è-ëç@H	 “Ô/ô`a\'0+ˆ	+Ã¹´8gãåYI÷b\nyÃû€H;Û•Ó=w•eVÿ,ogvÕ’\\~é(4Y1ªúaØ$çH8¨^d7‹pÛæÈ£·¦]ñ™!\"+…\r! ÉÃk¿ÈNñzžpAH‹AJ®ŒLú&ÊlhŽZ›Æ²¹r:h¸uŠÑÂ°ò™›Ù÷ÚfVúqlHƒ™¹Ýý\0kÑ¼q[ ÔdÖ\'“+2‡ØÉØ!ç•¡V<Žø–\r®eýiÊù2ÜHƒëè\"MqOÐïÞ b3S“Ä!ë=O^Ÿ˜´ÂM¤NQõE¨L®€+ªw‘	0ÛÃ%Hµ½QÊž,vÂëÛ}6\\sÌWCO¯£<Ô?S¥±\0ýü­ö-´Þ	EíÃƒï|ÃHµT7Ê@X¯»qÒF~Ù<h¤¨œ¬îº¥Æ8ÌVFTéªb$H´ÒÅÀ=À]áÑ‚6¢]%ðD¯¨±âHÖ(Øft&ƒOÿ«!¶wtH³ºÃAqI—\nÂ ÍW*cËs_\0—\ZhÜçî§\":kÓ«rçÒù€Hµ§èøbbQ0Q}Œ»ŸÊ‰‚Íkötje¡ekO‡\\aw×Ií	UN@JW®®ÀHµùÿPîåaF­½]3¹ÙôJùÂÕuc[ð¯^ÚF}Í\Z`çÒª>“ˆé\nÝõŽÁƒÓÏ˜¹PÀH¶	uñ@ÎTŽq­1Úóúr§ÇFb|„ç$8v¬}±Ú”:ˆ5pTƒT¥	jõOkêÇMÝûÆ†×ÀH¶\0¥Ú$)Ì&\'W©š/­‰MÃyÄ¬d\nC$\r[^è_z°ÙQ\r\n04úY?-0šÔþ“t$H´ï©¹£ïNÙTnkh†õ“#lmG÷aû¸Ü[&ÓïIµí™¾ÈH­Ò& MD²âó„ÀH³ŸÞ¶z3¥Ë/­+lc=¬$b)ÉEç=çxs\'TbãçãÔéƒ\'Ô.<}ËÂF=`ÀH³þx²û¦¯s¢ÃÍÕ®YFÞ€2qSög;¾œÏ„å*>s#&á(î¹¶²sòçlÌÏBHµdSØõ‰¥‚@.Ià9w…“´ÂE•àœRz[G{A¢z‘_mâ–›­AwæJ4œLàH³Ö §w5m9@\0ý}ä²‰®yÏ‚(ô¼àÚPÇ,^QKs[ºlG1\\R·ºÊœ{€H³(Ü§B¤¿´5T\'Ç˜tIÛ¯žO\nñÎ7ƒKÑ[”f£aO:j…Ñc‹§<s³ àH°à.Oñ¬ÌÇch™þ2Õ\Z›öVbW}[äUð—(oËciŠd…?“ñlÃ#QQÕÙÈÀH±ÁþU¡\Za˜&x’†½ÒWZG•§ÖÈ/ðÆqŽ{¬çä\"›±ÈAy$H° Ù=uÀ •¢¢¶ç*8xÿ¶8v$ÐCE=¹¯ $dFJwÀH²KÊóŸ_Fƒ¤ÔVjpP’î´Äd8ÆÆ­3ºoLÀH<¸1sLÙ¿&¤:›k\'«r†kdë,§£É‚á½ëhµ¤€HõÆ ñ,ªßa¹nuûqérðµv‚Ô0Àq‘p€H9ª¥öFîÚ\\ÚïÇ¢h¨]D—7ƒO¯H•8@·»\'cµ…oØ^H8Ú(ùÈÕÑVúª”å±)CPdHž±)ôf\r[rJœ•jeoÄÀH7CžJ’yÎÌ:¡´âé\\«Û‚¦¦&÷¶”M5wWñ˜žòH7Oz7¼P¯¯&>9ˆÒzp¤·H!á\0n±ÐH6<àï8\\ä±Þ‰ú²\"`¤QpÂ—ç$_>7–ÔMW™ŒCD 6_¨pH5\\[Qc„ÄÿÃâ\"kq:ïýH]š°cÂí¡ð‚ôÏŽð8–Ü€H6X³åsíi?øE(ý·7šÜ7¥\n´2q†B\r®0Úˆð~QàH3FûÀeù+]êôVj“¸`Lø®d5/Â8ÖêÌ³rëØ\\ŠbÖx²Lì\n@H4òä2S^€Ï7˜2µ^¶1\"Å®ÏçŽ·òå¤œÍP‘|´É¿ÚÈ‰ºH3AB‹?¸»+8¡õãe×Y<Ÿ*šíY/S@r†EGCÔe±>/\0²äŒH3ý¾úNEÌ°/´½MFi»>éÏ¹|ÛWó\nW?]Ø°Àø)·â{UòN—ãm× H3\n-Ï„K¼æg‘rçTúãwëQ[ÐL†V±é÷gÕÝ¦§PD\nž#8H2˜8Õ+“4æQZ–Þšæ—¤îÑ±¹ï2äJëoý‚\0àHÑ°˜Š®¶=L¡–². S‚4»—IaGž)4ˆ–ˆNðuŒýÀH1!m´%¥Ó˜ú™JÕÞ¿)ÝFÿnà¬t‘¸QÛ·\ZlH1\'¥×¾²ÞÏ/4×¶!n0¯h[ÿœ6Ž1Ô…®†*ó¿Ö¿^™™uàH0çááC¹ï-$ É\0\\\ZÖÖ·7-b—ûôÐ´{§•@_Ü”Æë@H/7Ì>Þó63ÒÛ‹íººDÚ:\"‚b·ÕÂèÒÆªïÕ*FÚÍ‰‰wNH›ª–¦\0Á‡¬yG6¾ƒK\rý3Ad±’óDiSWÄøÝÑ7Ï:SÏØH1NÇïÈØ‚qm×‡…üœÃÀdëX<ìvãhµPÀ $_‹¿…ˆªØk¿³HÖTËÁj2#[]Ð>b%Or§Fs-lgPI©Ãì\0­ÎØ4ÜH1šfõž®ÃÀš{íõû9ácÔ~œ¢rtè_H\'»+–sPH/_J0æ¯HßmüSäÚ(/™3ušÁÐÇ,kŸXÏ³Ÿ“³Mvä	øH/8øºÝF}çù€;B[\"cjx5ö\'V²]ËbUÂ6FÓ¿>Öu‡|H.Ñ‹À¤Ýwcˆ@\0³’i†9„HuK,.MÞ«Ü¦]döa›zhüõçC H.¹Æ„Üï°y	bšù‰(õÈ#®MmÄ£#ÜaëÎ~,>—\Z†‰H}Ñi«üÛ)úz\rl„çyHrØL¿WvVí,ß¥íÕ£ñ_mÅ˜þxQwó+ÀHŽ>½þ8‚±¥BÞ\ZLÁŸ¢©[I?R9Î\r;J†Ák‰Rã>öA0ñ@þmàH;6}ž†«åîíÿ¡âmÿ2 ;\rŸã.ŒÇë¥x˜˜¨±Q©\n|EH9¸0Ï4<×ƒí5òÝ¯óæ¹Z·îd2p¥}wÁ¼Ô?ËúÃ‘4P°H“—f#-êé¥UlºÄ×vzøfÁx[¦îpIÃãêåCd–€','Ã±am kauanakusunchi kaia.opus'),
(20,'Hasta la proxima','Sug urakama','2022-12-05151933127623despedida.jpeg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0dºìÅa\r.3--)-))*),+**/,0$#&&$$!$$)(+(%%\"\"\')+$%$(%#%$\"#%(.472.,16...2-.84623,,33+-8710+66342+/20++HäÁ6ìÅ€HáeaÞKuD	UH†F_	H/d_wZ„ŽOY¢z tîVü¸â²{:íúg’nä¶Š¼Òí:{ Ñ H‡Q\Z>‘¤¨y=u(üTu´B‘\04Ã-d¤\Zµd¹wŒ+@ÛZh!ÇYi¾hÔÒl^“˜H€¸êþ7‚g(a1H—\"þ¼°šn©üLDµÔéæï¤A»Qœ«hžZæH€Œ¡e[°I¥ÊJ‚f­Nök!v¥õî•;‹ëk,Ù™|IQÇv<v7ØH)„¤ÑI»¨t’$âž¸÷é¥ß6¾„d\\_ÝãËl@‚ÛEƒkPH‡ýjÊÈkK„ñÈÉW1`Ý˜ÊK*Ze‘ë2	í£Šò‡Ê§–ž2HˆcÈÅ˜Q¾~„LL÷¿6ÉIéï\"ŽûD‚\0 ¢=\r0]—ªÉ~Ï\n¥@H+o™œí$eN¢$ÕFþ^KóOÕQ€>Ðw¼#1Jä\rÍ„(èE\Zê˜H,Ã)#f|C™\"’È®Ö=ºÉ$³@ž7f‚ÙX¬ 5æ•½k¶€Hd\'Ž°\'kP³dª1ßWÝ¹‚Á„;Ý{Åf;©[ßÿþ¹[º{Ö€H-Uð)IÕiw‰Ü{NZÒ=è´8˜±åÅ.ö -™…è?¡œWøþ©\\H-UõMV›ì®á¢`3ž2#;ë¢’WØo\'HO7¶.¹€X0~\0MÄH.;jpkuÕçƒ›¯­ ÃÌ3•eÖ»‚ ñbñì0¨DÐƒ@	Ÿ1é H9ßŠ=Æ4CSÖ0…¨s¿b—•Êá¼Ú÷,ðÐ%<ÈjWd€€H;oïŽxžPÎXÞCÉä›ø±<Ì8ß·Q4ÃÌ›Û{^2U\05ç‰V‡­·ÀH<ÖZS§À+ã\0·›fžÄ~[GðèŠß·³5ÍR,c¯Ô‹õËÆÞÙ‚€HXp¦â¡|¡áTÃ:&¸;YqâîC¾ìãÿþ­pD¹¥	x‘Óµu’Æ1ÑV(H=v·Ð¹÷d‡ì.›­.s—ÒdCîP.Oç÷‹âÅÚêH=vÇ8é$.­’ûz$“½Š$ãÕîiåYBá¬lœß—f`H= ‡*õo‚†$îà(@c5õãÂ»\n³—ñ0ãòCUoÇRH<­yœ“‚¥cfDÓí²O¶ü7‚“°^Ê\rV´8˜­Ez­ÀH:e×^@è¬·p\ZÖÚ¨ ƒþF^“¸ð^ç¯ÖG©M²X\"H—gÎÅêÉŠ¬øèà…ƒÂõ3whx9qfÁ\n{aOÊktq`H7ÚƒMlÉÈìÌŽ\'&¡æ¢§¾ Z™\0öìbàHe2œ×­ñ—[¡gºYb3$%Àø¶ËŸÒPH36HM!ŠÂMòå\"ªöªçªÌ¼ý—\n¼Ú-ñ«¨H$J0ì;H2‘cn³¸ªwz—3‘h`MÌ1ŽA¼Iqž.|)Á¬íHC@ªH/@VMtD†±´ÕzŽ¹]KÙf\'. Gó§†D]9€êê*ªH1(ZÑ‡½ƒ.-;¾ã×ØŠ±ê·Ó¸cQ1¯G@Áó,I/ôÙ¿jKƒ‰H1™“Ÿ6/.Pƒ:õùþû²§¨hÙSä àÀPhòë{Åk­Ú÷LÒH6eÔç5ÉÒP{ý«¤ŠhÏþUoƒ^ö#¤[«—y–â˜H4ú‰ 5àôåo+b“k)èƒ$lóMgŸ5äËþGï H4º?ù™¥à…žfŸ\rÝ6Øøƒ2ãwËyR†0ÉlÌH2‚P€ÆÒÃ×Ó®{Pµ‡°0…\'S>Å¶¸àH1@ë¡cn~hŒlî_Þ”µXt¤4¤Š`©Î1–YÝÁ` H1­¿4³ú›ý0\Z%¾]º>ÚYÒVU¹Ä«àÊM\\H/?|U>w. ”;ÍišwÎ· F‘ê_TÊÒ\'«EðH1äuÖ¦»*r¥pfêÌÐ:+ßð\"•óÛÔ¢ª¹›g²xpä¤h¥ë§jG`HŠ×Ð³I?D ¹ªèó¥\"C§,££gÔwYùV±xZêE-·Fpî@H6T æ.w·o±å×«¯,]·¢S*AQêƒ7uº#Roáañ…ýH3)>óu»g ¹(ÕQïÀŒ¬§«hÚ&g 5j;m3Ð×=-DH1HÕ%]±VUñšK!zYƒ®‘r\"Q!8°`t¤iáràH0±’	šk(2g„ /õ<LÜo)w1Ù*¡­›š‡•ãÒg\0Ñ˜H1(X·‘†;´™Úæ/Òzöº<æ]O¸ë˜Ò&ît7S¼€H1@ƒOB=iÑÅ+…/®!dMTŠ1JýÿÄä A34ÝhwH0©Ñ­S±(óÆiå-µPº }\0_ÔÊøºúˆŠ™H/X\"At±Q¬Ð»ãQâ“l4L£F´›g¸Ò/å€ÀH/¨Åý[+öZç\0 òN ÐÍÛ±.†]“pÍ—[N-hHfÀT,sT ³¾õÕ`‘ÀG ßh]fª<–H-Â¯éH`Éb)«ùØÉ+iýwV¾+Mõa Ù÷ïë«H+n\'EÿäH,v ˆ4\r[f,P†\\´ßõ¦eIª@C™ãK}`H+.K·Ü\0iðy6¡¥»ÃOzÒÆ=N±Ö\rñŠxRc’\ZÁ‹H)„Ð½PÜ™bŒ’R-¬‡¡µ\nB½*Y#@¤¿”¸bDH*:¡û\\¢Œb‡;\nâ_¨\n •nãüÕ \ržâ8WxËÃf&µ{0\Z Höb_kÕž¤2cìÎú4·ëBJ§ô…¼f«	¯+î‹PVÂ:ÆZHŒ(À–xŽlùEÖâ°Ó8ó !.tH•òyXŠ2³¶|u*v\'¿/vÿöWªâ7ÊžYB¨€Hö4 ýÇ«áIHtÓñ)fš+§ù]Ø“ÎÄVç•Ãˆ®ÿ¿5c·Ÿ`©=Mç£}¯pH’ÃÒvÓRÒÞH_êÝÝ.=.9sD’|5ÓCÏÓ–s}`Á±vÎ\\5Ç¶\Z\'û€H”níFùåZã‘/[û©Ä`VÑä`å­~ÿ \n•±BrdÓ4:Ú 2¡`H“|jód˜\ZåØ/&A:iY¸×u…€-<|’D4Çê%¸•8î9\\Ž@û@H²ŸºI3|ÞøÙÀS-=ÍtlþMÒO¸?œ¹2ãób¼­,NL<xè8>Ÿ U Hµ\0»Ìc+8^ó˜1¼kf…k²òÕ(ê*+Í¬¬B³ãUGõ©ÈØ~µ[DG×¬ˆ†ÔH³<{­Ýä¶ ‡XüùÏÿ£Ä›ƒ†/î?-	pA£;JÉŸ8g_Ê¶÷³H²	§Tº;4äO8Ù²ºðxœ*Ç5é®ZLÍï«)\'ü}¯§ã¹úÞË@H±ä’wò†ÚFÔ70§›þ_L­OàBÖÕì&ôbRf­ê–K°d¼€o³PÀE¿H°4$p•À2ds=~\\ÓÌÇ“`®F¨Úª‰pêz÷W‹¶˜UÇf¶Å›%EH­û—DAÊd-õº›ËÕ°i\Z˜\ZÓ¾0¨\\GÐÃF5»*ç`H¨öÁu¾0*ô&Õ½MØiÎ×‹vCÛUÏø·?ÍËPþˆ,D,§ýˆLŽÄË€H¤ä“ñMo/ÕCaX´.\\vá3ž¦Ä~97¸HÇû‘ƒm4ÒU½hÊ®ªIGÛDeø )+H£ž,Ì.‚(ûÿžiää?æÄî+¦Y‡SÝôeà ™ñÙë‹¢ÍµYêþL*Îlßÿ³\ZñÆ’H¢¦ëä}«þÄr™Žª%`‡]F$Û€ÙY¹<|DÕø§44/„<Ê£`ìÔÎÉí€H¤MPJ£è˜dVˆu{P0nŠÔc©S¿K5f0Öô,´}¸=Ì\n@ôŒ…p·ò£×’PH¦%bL+Eä%*bá&s3_oâ&bkÕß*«H-­ºÆ‡urH˜ƒÇv3v÷ˆHŽ‹”9Þ¬,ÄCt½úm¶vLmªAsŸV Çx’UÎ+kë·vµväP¼‡?HŒÝƒ\"™Ù-)üJœSÚ8âNœ€[*r5–|±ß„*¨¿¤úAkU§ÀH‚ˆÛ6Ðsès&´š\r˜=š¼µ]îYqÝDºúõ¬³<÷{h¶Ý”3£ý&ÜÔòÌH”ÛFýêù`d`:zû³	®Ã[W=†âîVã¸ðóHON ‘3-YÍó›0—Vý·H“ú.¸¬ún#‘Ímë÷qÂx<n¾mM¢wMN:ÒOûD„Å0ÉÐH“9¿wtõÐnÓ}H÷Ê4\\|=òy‹5LB#[ßágÓà‚ø:Ï—ŸÀH¶ØóÌ P¹ÏÔ¿k™×Ð÷AÅXF•*v!eóÒÝÿ”WU¼õšï®a~OÑûoÊ…UH˜y£€H¶Ÿ®«#5P´ÐÂÞ°’ùhiÇ\nøê}õ%þ+UöBRí|UŠ¤÷žê€“\\EKîü“ÛÔ?*Hµé\06Æ¥†c]s\'ØÔAG‡@Î‰DzåíDÙü«5KFÔ\Z³èó˜²R¨÷ÙÉÇ2J@H³˜úÊ{a7%(….2E…ª\rÔ=ï9 H²¿Xw-BM;°¿PFÅ} 0ˆÜ û®H±ÇŽ0ï³Ñ%^¯¹\ZKÇðOw\néßÇzßº´˜hÂrµGƒñ ZþH²+¤×kÎúÔ´(¥ïxQ$g²˜èoQÖ2Îçt9·“RP\Z‰¬ÿúšo€îáÜÓH³y’ˆ$&ÿâaª^ü1ÆõƒÍ¶²‡UuÃ88ù±~¥o¨ó:,›¯uUÈºŽd$éìˆH²	Àº~?æ€.á“_ÎËý0Ìq³…éú,äÃÎ¨úÈ\":q=cWjX+$­kAŽ@H±‹,ãï˜6§ä\"åÀ¬ŸœEtœIš“jš)G7¦øÐÓ–Ë!›‹Lø½ï³@c † H®¨òKY8á27ÑJ;o´Ù¨&ò}Ã¬‰¤ji¨£Ïò¢¼¦Jò\r­¤\Z!B¯gÝ™H°[½Ù5{@\0wÜSTèUBéîÃ;f0F4zwš¤¶³ÒVÄl²AmH°i÷)1çS¬ï\'êâ©Âò:@›é\0ŽÐ |Œ¬¤u9IÏKR÷¢ßc´=-€H®¹µnÑqñBy¤ð¸RÌ;>¦-Y·P’}c#sFi=ÀÆ¦I-³ï2ôX|·˜”ÿv“@H§Dßìÿ=Õz’\"@A\ZÔ‘ÿ\'\Zìøg–ógÐÇÜðîÇñT÷Eº‡PŸûðHî‘\Z6„¿\'UÎÜ\Z¸hñk‡™ŸåßKÚiy+í‘ŸÅXëÅÿ\\%å(ÀHŒÙlËž­iI‘a5³\Zp²g¸w%ÛÑÿ™W-ÜåÎ‰[¾œöJOggS\0\0hþ\0\0\0\0\0\0\0\0\0\0\0\0 îRP\'./3,/./)2716645.,&,*##%#!$ %*),&-,*)+)%HÊø\"ø¤\rP ç.–Û^Ã:5%+Íö,õçƒhÆìgp¿hÍÖ31HƒÑ¨¦ÊÛÈQUpë,\n®yuå<±Kº¯´lv	—ÔÁÀ9zKòó,Q™Hƒôgc-ë~(a@ˆ¶øuD×E“G\"¶uc¹Ê[¥NešÆd(Hiå88ZÀR9—°H°g7YeYG®È¼‰ˆáòàIeqÌŽÝ¢îßÝÒ?ÕXÒšÆŸ]Î4«›úÎH°ž¯\ZÆ¸¦§î×\0*šë)ûI%­¡xP¿2ö&¢¥¡lP½R£w•-nž+àH²–§jïÑ¤¾b	îÕ;ª$*‰½‰9=6Ý½9IL³Á³\Z!ÃÜç§m¨H³Í‹rV¶îc©/Ç<V8„9/¬/¶\\¨þ[YHy4m8vP¯Ç¹_ŒÜí0H±Å+«mØh‡œiŸÚæò_äÊ)Ùô!\0”3D˜F$—{ã4UH®\rÜ¥³9Æ°PZ¼6:má.¬ÿÛ(Ëƒ¿¬Ú·VfÿJéÈ³Ašþ&™tÞú½xÌH©cÿ;+è&®\0žÆ€Ýžy!4cÎ’à,ƒ¢\"e\n¢Ö)ÅYÀ[$0XüÑ!µÇ”H§¶dßˆŒO$Î egÙSgD¾8Ñi5ÎžÈ„C¬Îìß‰‹³U‡HÑêòq·H¦dƒ\"ëßK7Ã×@’C˜Š-M`á?FÑº‚Ý«ÛÌdéÉ°wì]Ô-|¼¨4i ÁšÕH¦mB_½®Š¶ƒºI©õåéK ”“?~>Bü{“Ã:ÙÔŒêu	áûheÉáÔkÜzÄH©ŽBºuÐ±UÐxÉ­‡0@5”%¼à‘;Åst‹•Ÿ4Me\Zˆô\\T,›…ÝWŽ÷,H©›%oaAâùû‘Øzª„ÁùYÐÅñË	õÄã^ô Öur\næôâŒhr€&Ù]ðµÆÖH©–Õ\Z§Œù ðå\nxÝé6ìe”Û -Ï…„~ž­AÞ†Î¤»êøß0ÌæH©ŠàVJÓUñn‡ø\n)€µ†MÓœ$Ý<*(4}ÞÜýº÷ÆÞ$V¤©äšû0H©–©%¸æI5÷fp\r0*‘„Q›F|XiÍgó¿|%$^ÀH©%^\rkd«êúßéÄ5¢Â<¥\\²íâv´õY†]²ˆ¾‹åË¥µ£>¢\0H8•¦f¨K}ûL øèüš]H<~°œR¬K2„)(ñˆõ]åî ¼Ã8@H0ŽŒ¾01!È™\0\n€w–¿\n»	ÔVMÁ|v0šdãwH™[3>t$š–œmž¼b†¸\0„/¿9ñ1ÚBãÎáàH;ûtVÿ|FÂä[&ù¨RTÀ<ÍJ±I`‚ñcLs&PÄÀH8Ì1<À\\x\ZIêU;’S¯ü2E\'po\réIEºM#§ˆH8	¹dZ..² ºïçI·Ý¢a¶i6 \0jE…L H7C˜ÿ\nM4ìÞIG;s#®ó‘kÚGiÝùói²²¤×Àbú<H7O?‡È	—qÿž	¦mp›Y±Á€]þwÏðM±H¢€H79IM\Z‘QœÓ0ŠóíNh¨rsô&Ùz×ÑNÜqÕ¹ô<Hk¡œ7IÇCäé®vtrÁìFl‰’\\t%½‚ðcÜ@÷Šç¾\nu½R\rH6+MI3ÿq<qdHûgehV¿?ÁVp\'f²®“iÊ‰=ÆÉ4šH6~Öº%BSh3ê=&ÅÌNb>”å‚è ñ)ÕJ˜aûå½ûœ`iu·H6nàh·ÕVü;5q×{Cþ¶/Dnõïƒ¬²mŠQöLÍ@HŠŠM]„‡Æ½= ý0™/›*©€nâ“‹3#µz³ÏmØû¾P:ƒ—1Ï†°H)£û~ò°ÓYCdxB8_ÕêÐeá2a2/SÂxiA?o$¡jä´ÞÆ´Tœ<HŽ¢»Hf—¡HÿÂ=@¾$°\0‚8<±—MÔ¸£³lô?Oæÿ†h¬H:Kµé4’àÖëRTéÓ¾ßh,üjÚBˆO§ùƒ‹¥/ÜU‡è|É¿ÀH8ùðH®Ë™Wã\nhŽ+l=ûˆ(\ZÊ%¿€žœ®i$g4ŠZÇþÃTy€H9§örTaLGâ0ýZg/x®˜šæÚÿ7À‹G	«ª”fÈÞ¦zñÎH8ãcDqÿ6ð·o÷žž­Lw=©Gûjý=€tí°–Ýø','sug urakama.opus'),
(21,'Buena suerte','Allilla richu','2022-12-0515203075267suerte.jpg',6,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0	¡·`(),\'\'%%)*\'\'\'! \')(,(&,))&&\"#)$(%\"&\"*)(.3%-(462846873-,20,2845)*+3,78235434/-)0445,)+*(+\' %\'#\'$HäÁ6ìÅ€Hàþ!€ê¨¿Z¬ig¼æyH†—Ï™‰,±,´-Ù¦ÇåÒ 33yÖ4Å[=\r¤›{iµèH†¹b@Jô|`à‡óò6å:FxÕãtf@l¥»äÉys¬°H†ý©~RL=²ä\0œ£\'·lãWÇ„”&U‘ñ	êXÓÁh^¥uJQJ[×ŠëH‡%~á×tÛv/(“LG‡ui%=‹<5÷\0}”›Óv¦PH$ôš:‰ŸkKÈd\Z’(uOêßý0Ìœò‡ÊNk±/ì ¯äPH‡Gõ™Ÿ¦pŠ«ž5Td=w”.b§qŠË^Zx+0¡lH%;ñiÄ¶Pœà‹îƒ8HÂÅTfÏY¯¿n¼c\'R;jG›VH(©1ËâëÁßÇor~û;yÿþÝâ\Z;[›â„ð8Ö†Ë¾G©ÜXH+ÉìÛÑ4@m|œ×%]ƒ…\0*m¾B|øß·¯,å‘ÎÐ_×_ä¥½®H-³8/ÝŠãztÔQÿÏ ¢j79Œ‘AÑWÜç‰!2îˆç<8H-D58..õ¸(Ž¾óŠ!ô=ƒ3ËŸ¢…»\nÑ®ý‡c;ªÐH+..÷Y^~}&Ó$Tsbô&Æ\"v<auCµ\0eËÐT@H)¤ÃyB­ á‘FÅs&˜ÅleÜÞEXXlÏ³ÙœÈH\r£@¤B>ËV.†ý±Nˆî’%k;×KdáJ°¦¸€H)¤ÿÓWÚ÷äù¥ýÏÁs¶îp…já¬FWCc¢gê¶œ¡(Ü°€H)¤ÿüÒ{e¦-=ÔW(¤J†ªæ]¥»õÖÖ³iÿÚÇŽlîpu„þ¾ H)¿uõW–‡>J8…bq}Ú\r´ûýËbC»xŠT:\Zü$à£%äÚèH+l×Å£Æ*OÉj]Lšs¤`—Fü¡aèl16’”¥ñÞy­ 	{L\0²%IH+lØKªU¶UÙXí­d5S+‚`Ë¥Žï’ŒÎîJfI_ÜäôU«D”€H+Œ•nVG©ä\"à)_Ó—anÔ´Ýr`7º¡]¢.–‡ßUv¨TH+¿ÿµ^’¦Nj:Z(éV˜ÏŒÆ…R,þ ð+Š²ÁXôªQ“\Zû©o*A H+l¿ 3Æ™ÏÔöÕ!=ï#ú-&Y1Öa¤ê•Z˜z:+P²í@H+·&?…¶dz£åŸR%¤œŒAxh¥_Ü[«W-»;,sÇ‘cÞ€H+mJb…_`u™rwÀç¢ª³Ž»¾ªóo¦SµXs­VÇFÜò”H+—&$¿ÇaA°nwc´\0»}É¢Ìø%$‘ñƒÚ62c\n¬<ˆH+Áº0»–Žr,\'7êžÛÜ&!°ï„2LX7Pý@H+.Mµ$ù¡›®˜b¥_zXyÈ{ä¾§Úñ&¿šÏ•H)­éYTÕ½œj‰ªôÙU*(¼éIÌ»ä¹EM_C¨”–[ònÑXàH)„3èé-Ã·æZÿßËIcªÕ‘ÍÃk–{ÿCÀH)­úpåì¸è“Fg3iò\'‚Ü•Z]ìÔvqÄîoû´ÙÀ•\ZöÓH\nÞ«L1“r]DFF >©ò´$ÚB†n¥“\n_5‹öyû’PHh˜ÄÚë”´£\0±ÖÚ<Ö-Ñy…³Ðð­ dRòxYH)­ö¨³toèÚ/4’\'˜\'þÿ2XHÊ™¬\né¬HöÒC,“²ØH\'´Å\0ï¨ÜopÜ/¿¤üp§ƒ½8¿°spùÍmH(Vèð\\¥þ&@X¸ÜÇ5ËÏ0F´Ò;CF‹ØwÐ0YKþ¹´Æ¿€ŸH:x•q.»ÞHÌ~0*4Ôê¦O‡>ëJðÏ™Ýì/d¸¸H0­ü±Øe³+NÊ¨÷h²x@Ô“;zqÈÕ|Yšµ{H‰6Û“V”>œ]‘xo‚jâÀž‘Æ[r›þ>ÈqþËCP^ô°×€HÿñÐ´0V.å‡÷éø;€-{rBmôžË>‰Ç†P\'œS4‹îµ›2ãÝ  H¦æY/L>Ä0LäO˜üâÂÁäbëê”žN«T¸‡µì«bù¶š: Zq­9Òm!‰¥ H°â&nÓ¤$€¦·¹v¾Ô}) ÞzáÍLÁ6\"x‹4…ÍH²m·Ç¯Œ.‰*\'ó\Z;\n™Æ¾sÚów¼Gæ4gw6iCÊ[+ù;Ý­3ÿÀH²OHKËâ””íÉ8-{†ÅŒRÆ˜$VbÚ™&Ÿ}dÄ£·¨Z€H´IiN7™–é÷ù¤PŠØÔ{»£ú…,û[üKBD-\rÛ‰Éi4ƒ(ö#1®#ÖWwHµÿfòdG‹O„½ø@Wª6:gšC’ÔµrsÊãH¶–¾+M<S×Õêáh³\0NlîþUgw€Hµ¬ÿ\Z¾Ø„(6€R(Î„¼€ù,nOž\r¬+Q`Me¬kL”Gª—S\r7ÏÈZÙeè\n€H±ºO$\"Ú&äP¤*çFvFÀy“D%ÇŸ¢<+j¾ú°XÅÏ±æVI¼B&Û‘‰¦A~ë ‚ßÒ»ÀH®#ÓœG;¹AôYÙeí[)ß7d;§g\rž*²\09súª£LåõDúbõ\\È ÂH¯9Ÿœå{„w#£16Ê\rÝ*Pþw¨¿#Ã-ýPÿ\nîÅÑN,œ~ë\0ZŠ{l<ª\'\Z§€H²)náeµîû•	ÉE Šc±cùîÝOáìTê¦£m?^¶XWíPDb‹úó$¢kX“5þH³§Ê1ÖO>VÇ>:ª\"©á_|ÿ­Æh¦g“ü*,3pJéGb€K‹ª¿m=Q”ÓÆW`¿HµY\\-é ‹?R‘t^Žñ/ltÝ}ýGKN¢]ö¿¦)˜;qtãñê¸Û÷†iæÙJ«\\dHµ7ì”\"óXõ¯÷MÕRÕ¯ž+Ý“Üri‡²¡G™\0ßÎ©)£™Rv¦4Hµ\n@˜æä¼d\ZËË–..Ÿz|°BX)Ú‡yüiÑà0É°[_~Â5©znHµÒýYƒê\0n8Çé\"­\\Ýi:Fý`V0º£¿ÇGÒ2Ý¦åªº¤Ž`^ÞâH³‘Ü ,Ið¹4?W\"‹jN÷õêþérìæQðF¡ÙI!ÌÙ–0Èþ>¾ƒš>ÀH±uHOr²êægTnw Màªjg§ÿX­4“£ó+Ñ\\sÁZ(&·ú	€H¬i¥åQ°»rÍ`óHŸ~F‡…?®+vª$4ya«½7wú%¸ƒUÌYñMcü(H«Žt…„ôþJBã&‚í/|ú…Ó]W€!œ9¤Öã±6Îí¸Yn‰‰€×Â{åÅíªq² þ<H¯TÉIó,ß´\nš¤Ä¾i 8E¨”»˜Odé¦Y©ýLM§È¾¼Få;R¢dùŽAÀH·}.‹wvuˆ‡ ÊU¦ ÑÖøÒ–qž]×2Èd¹ü{îLé?]x+¬†\\H·À‡¬‚yL¡%ÈR\\†ÒŒH–\\>{§¼…%ÐêKGËRÕ˜1¼³7ÊÐH·´®9áNÊXºjŸ4!XÝ|Ïäo\"¶&ÁO.\r¶il›òâÕòÇL@ H¶¼µîŒ_Z¢Æü9Ë¤±HýÙ°_hH?ñÊËˆ0‚ÊÓ¹’æ0®áê€HµçVº´\ZG:NèkÐÀ·™1u·oÍ7ª[™£5ó]‰½GZGöû¬ãvØl;O«pH´Ænè†|‰ýÎnŒœ §~©m¾Ôó‡éH’c\" 3Ö<`îWÒ¶H²\r[c@2­¾äYo;®öê(X”!úüíˆÒd}ßâŠ¶á£³Bµda\"ˆ¹å6³(H³«ëºþNëˆ—ˆSÊkY½7RØ4lÉ	…sï£áÉˆ2Ä1Ç%Hpc1ÁQKöÏ¿B¸Û~çÂ¡@H²\02wó¾õ÷¢Ô\'Qƒ5\0%E† <ƒÔLjéÁ€ç½Vid‚_‚ÞüÄ¼ñ4àH±ø¶W/#A½í¦éðé\rxÌ\'ƒ!àZL5µië!³®íTblYPÿ]cŽnÿ‚n…,TH°F×¼ßdU(žqW±eE®®Bb9z?$|8œàŽ‡zåˆp¹esu®‚{ú¨ ì)zzDpH²\';Wæ„/°»Ä Ð-òI\"i\'/:{ÈžVÕ˜õä·†;¶_Ñ‘Ñ&³ro\ZÔTH³ÓÙ<U$¥a;\rF²ik´—™“ŠÓÁ\\Øu9ñ¸_Iz•ò7¨îS°Œ4/Î;ÝJ’°€H³r€¯n‹òçÈeQÔ2cøQ×ü:Š™¯ƒ„j\0ÂIžAë™¶“7wU•|¬\'¤ü¦ø{H±ÞnŒÒÜý/ÿ0È‚l!ªªyÀ†Ù_Cª»ù¾nú±\Z\0íxb>û$D€H¨=’–§,÷vý%”e¤lj¯G\\ÄªÞsÑY<Æ£cvŠ6…»}»\n @{€HŽVp¢éÍP¸­©ˆÊ!óÂ}NU+!3+ÒWÀ‹¶\Z=/¨HŒã`×7$kShG·$Qfb4Æ¦èÄØ9#D`Ýi(¡RyVƒÐáRËRÓCO€H‚´3\n¡\"h,YðÔáúÖ\'^Á¢ÇÈÄr`-6Jšñ8Êlp‘ñûù°løÜ ‘í3ÉH’3žÇ¡ý#\rÝ6áGÑ©†äô¹«©j4ÐŠå?‘þÛˆTáóŒXÄ!:%M§¬±ž\\ÀÐH”íÙ¸îã4Ûµ>4öHâ÷#J:3ž€¦æNxÅÙA¢×)€aå&z^à(H”TaQãJÞÒÛ+D•W‹?ZV¶(.	¸Wþˆ5ø©]‚à7¨yÒÌyiHÍn†”Ùìš›/b¬-?æ–F_ŸLÕ;¿oUW\"T<\\ýgŸ¬{Yp`H%¿óo„Eî—O¢ìšˆ-A¢¨§ùÿ°œY¹ ×áÀò/¶Ø”Bÿ¸ H8þûÔ•ùd§ÒÕZ0^4;MDúiQ+F6ë,¶½*Y¥Ÿ…–Ó0H}ŒÍëéÂŸ¹»7w= ?óü˜4úùÀµìdfÆb£ÉeHŒf5»¢ÏM5è£Ä8Üf(ÚÚ¹ÑS5M}<Ê ÌõÖ	Ú!m—‰^H73àþÈi×\néìfÀÒˆRûY@Ív•êCä=ge\"ií¢&ÜåHDc2ˆzífVÆxÎ>Y5ÅÉWl`ä?HcŠ\"ÅH2Ø›a\')—dòi\n\0P^\"W.½ûk4?XI§8|ÏŽ½©ÐyHH0è_¼pé·æÛ\Z…Y1iãK8¡–oÌ^H¬Ã<2¸€8\ZH/^ÿ`Z’ýóŒM}ÀÜaW²3á hì16\"ˆ@H/$8ÐVRc·!n§üuö1RPŸgˆÓzlñ¸ôuZÈ°H,Ú\n|‚jÇ9ã¢‡ž{ÔþÈ“=ÆOcÃöÌ1ƒhp—. OggS\0\0(Š\0\0\0\0\0\0\0\0\0\0\0\0€qS.	+\'#%!#$*$H+Œ\\¤võvï–ŸÌÐVý1¶@äÓØüÁ[	§´­iy1 ùcŽhS]\" H+Œ‘†À÷3Ô&îúË´Mˆ,0èÔuY ;Ö;i¼aIepºwÃµˆFÐH*ñJÔ\ZÌó\nÞ¶¿Òèêd[Aâß®Ö ¨i*HV€H)¤Ç²„÷OÒYÛ}~Ç£V½\'ìÇVf[$T\"%kaÇF@H)¤Ò÷GI¢­‹‹ïÎJyY9Ž{g \rXÂÑëœéw|H\'¼²xyÓá‹1üñÞ†c¥jÙø§4ÌMÎ¡‰ÇV”H\'¼AÀ!¤aì¤ËïXHT÷rÝÍÙNuøÏmüÐð9;áo°H)Áéî‡&xÌ¹¨ò<,/Ù!ª¨Îì»–øç¾€0?‰TeœSÐ:H*óWýÊº:Btœ\\íA¼”ó–ZŠ8Þy¯/&„8ÔÎÆ¦éô','allilla richu.opus'),
(22,'Ha sido lindo hablar contigo','Nukata sumawaska kamwa rimangapa','2022-12-0515031781817has sido lindo hablar contigo.jpeg',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\02 .’`\"&.+*($\"$)( )&(--&$)$##$*\'$# &#(\'#$$&$(+&\"%;054//+5::*+46624112\'+740981(13-44.+-)..27/4+*+38HäÁ6ìÅ€Hß¥¢yUóz@5ÁBr=@H†\Zø#Ká G¸‘Šoã×LbÎ²·-±ˆ¹ÓFNF H†à¤¿ù5#Ô-¼)—_‘•MTÉ’ðÿhÛ,’õ’\n«áT>Õ» H‡/E*.›¾&è#’&>ÐT!&ŽrrÈ&X`\rÀÊïÃ\rÒáâîmF‹™Ë@H€‚fŒ’5å,QØ-)SÊü@ùLù£ò[Zh(§PË4r;ŒE¢ˆº[ÖÀH)zËm¯ªilKÌ\0°ÓaWýî¤„”X„8ˆŽ/¡}íWMÞèí\0xÜH‡úž§öñ%)Kt8‰nãL)Bùà\r—ÒbéÓz¯6‚Q€H)›ãã¶€çzGðÿ˜ù©CƒýÀ®èijòOŠ.rl*`H)„;[\'x1ËÎqûâ\\#Ç}ó…þJ\0ŸÁáõVpH)„…EÏ´ø-¿ùXâ?;ùe…ØPºGg·ýóG^šO\'Å°H+¸I+r<£õc\'{¼qdR&\'çgL€{GT1ä\'B7\Z7á–ªÎøH.	@@Í‡ræä^7’ÏÂE…É,CjkíÚg¹»dî.7ôUd8H/*ÊW·×ïü‡<xòÊ°f‹C´íø’öûã²dsÁ#¾H,ÚÃv(Ï\0Y¬„á›83ðuó[¬ ×ÆÙD¡^2´û\\»€¶Å½¹æ$H+n=’]Æ!>Ä·S»´\'†U•‹nv”/8á¥¡˜u H+mE&ýí™`„ÂHc•ƒ»xÚòqÄÌ”Ò)89áL|ÔÜ€¹@_Ë€H+mEAN“³]¡.°±>æÀ%MV $^ôñTŸw&:MAƒ‹6{üÕà€H-m{éuù21^J%ÌÚÒRà6ZÌ”%\n–*	TÄà-.\'Äañú»„³€H¨RßVˆzV‚¯þdÖ=çÊÍðá÷#.È‰/`o˜7põóH”¡ÿíÞ¼C’ieû€–ÃªÖÄó\Z[¿Ó\0+ÃvèX(H-OÚt2Óä|¡Ç\"2Òœp©’OBh(C®¥ìŠl‚àhj=ºÃ¼8Ð€HpÕÒ§N.ûeÝ¢ž_ˆv=MZX&Ú½ý‡0B8wU“YðH0èm™Ž]ƒÙñÎÒH—I‡JTP6rj¿)wf­½©‡H/>RRS.ç–)mäôg\'4(ŠjœUÆfQÃ(PìêÍÄH/)c¾?4E‰,hÎc8«ð49axT!vÿIÂ¾7msH-«-;Î4SB&ð}¢¾,Ûºç±bfË—aÄZZ¡Òãúö*èÑ›|èH+n_Äÿ©¯:›®¾9uF7NÉLÉu~‘v²CT3=>»ª$n,>–mH,’>!¸*ë½u.UT@#õÂÊz¶oØ˜Fšž.¹zîrH+lËÙÝ§-%ô–&Q\nTkµ!HÝ|ùy\\Ä4Ò\Z¤By€H*ñEQ>@Y¦¹žf	ê¶_-ôÂ!3yPÅËléùl×H)KjÆ‘ãâ\nV„‡}@§nÞêž¥ó/ÀÚi«ƒ†å¹8+H\'³!ÜN­‹”L\\^`¾àœÏ@×BmO;ÒïøÚþÿHH\'®[ÖÑ6FB¼ìç¼¶À¶4õ„“j-\"è\'Ò²2ƒm(Y(€H\'®[s<ªÀ@—(}Z6:´&tº”tA\Z/d\0ÐËèÁi©Â3ò€H\'»çRÞCUË\\xv ÄÚÆP%Jg‘™ò©zæN@H\'œÛÜ@)ÆÁõcç{z®ðïm\Z¯3u’±á¨ïŒH\'Ãæb’*å€È¤uä½¸¼2à£‡<P>Dƒ¾”XTœM bH%*Æÿ,	Ï0aößdÁHÈ0ö™öæV«.Ù¯Ó›*\"8œÈÆH$óÑ´ò^¡0Y¢r õë#(¤F~eÁãXß¤Ú\0˜Ö|”H\'´¸]Š	ƒè\0vèµÇI%cVO„Ì j®kPH\' OX.÷¯¥€ú£Úadi€ÀíT‰e¡êìpÿ_hH%»0i2ð«Æ«/×(j[ºùù@*­¦ªãj+l4”=e›w¤D8HË‚ àiH¾«t\"½õ%Ä‚IIÃ V9õáh_Ü‡ð»2®ÙVë—¤H)¤¬âÁkQ²”lµá¦,è¦5/»Ý×¨dï ùàVÞ€’Ë´ÀH)„kÈb¹V\nÀW‚¨&Ä½±Ñ‰ÇÆþë)_¬Pd[A39ñöH)„5•{¤(:]Ê;”2Âß/ãN?îdjŠ;üH\rþÍÀH€Ò&š‘}ÍYT}´zKõÎOÄ\'j:”{q®Rª¿	^«TÝ­ã//C•|ŒºîD!ß`n“LÀHž¼¯—UQŽgÊÆ|0ù’þî(ÇhdŸO«ç‡}˜½nŽ%·ÔÈÂ[ÎÒéÖ`\0fHž¯êÈ`Ñ=Tw©pÎx\\hŸ®‘L¾òÄ8Um–µ¥?hÝÇ¸ñBœ.*ñ—\\?íùMÛÿdHžmL–€2ÉŸŽœðÒ¿l†­ÓñÊŒ;´\rÏéiÕêì¸îOyÈÇF6Ë\nð€Hœj_Üä\\Y(_09Û1Ö¥™Œ¡dêÜðf×¤Zç‘ŸçóA§Qi†)zñ´~°ÐH›—ô7\n×øý‘Ÿ71Œz§UÀîªcÿî¹\'`“>óv¹,J0©ïEQµ²qðH‰.jÁSÄÍÞ&¢Ò\\ Ö—ÓriöÄd® ×«§>·À…hOŽIB@HšæQ©³Œáh`fçLùidŒª|³½Ÿ.énÞÔö«fWö+ÏôgÀÏRcvÔhC‘üñH¨[@Êþ>¢´å‡Üú›Ï–ÇÄ9úÝ´jæpWÌW;t±z 96ëcÊqŸ \nú‹£FÀÐ²«ä!üë”H­š1ê6IÇñVÀJ¼MØL-=¼Ø\ZÒ{¾‚¡@+¡,™=[®ˆ~Â Öâ†î_âf<2.9Ð;øH³Ï¤—óÃë{êv¨µ‰ÆtÿèH{3šñ©G¥˜¾›Ôh„)Æm¤H³Êƒæ¢\nŽ††›#~e%€ùU23P¿õ®»cdÅOðïÃb_è^_£€£/H³j[¼Â¨G‚Ñ÷|Ê‘ñÃú\nž Õ«‘Àsf>ÊÕ÷f¶«Â¤\ZI×K]SM‰é½»ª¥€H§‡í­R–/tB¥£öRd¥3y*z£‚qrßÜ[å}æ¦Ü^Û&‰ö\\A÷ý’w“¯kgÙH£h¼¢®Ôž ,)<D§&EÍÉh²ÏV\\Ý\\‹˜œëÚ‡Pâ¬ªÑ­eØK=óyµVŸžÛ°HŸÆS[\';QH‰oòL(ÚwU´¡1‹_¹q£0·GÓ·ÅöÁ£·˜,Òy(Hž}ó`ðIéê“PzOÚß‹ô¿Àbp¨ÏøŒBR­õÀW¦r^J£œÞl\"Ú«!6Å£\'ìHœ‚§¢el†[Œì¶•ÎþS¯gŒ`M³Ê_‹®PÙ‚8¤÷®+¤‡/Ww¸}…ÙˆÜKhH„_Á_Æ·“]$7ÜO(3dÚ\nSp…¦Ðg©Áœ‹´\"mòôóÀ¼}A¦ŽëWdH²¸\0M©yöÅÅ*š)AÿoÊ€Å’=Œ×¬8­ô#~eÿ]\\.c{cÌQù7˜Œ6Hµu\0\Zµ.*²×î3€Ú\nÏÄ±ƒìƒA¹®Ðzîîöº| ó†	€H´ËcTí°µ#\r·õo½—¸tYS8>$œhê~óK\"áñzàüNhH±ë¿Ç\'†\Z•ý.ÄÁ<±{¿\"m6môÚ‡ëE£§÷	Êˆ7¿ÿa™…§Ÿ\0ÇyJót`¼\ZmìH±è˜öV3LJ2]-†ûPzä÷RM”ÂN¶ëoƒgqÄ¿Wô¨á8®I6MáÇBBîrÝ¢H¾ÿµÅúWyÀy–þ^ÓœÈ\0ýØ˜«k’(cîj8ü˜É¶¦}*ÉÁŠ¨âv\r¼ÀH®Žö,5â…¬òo³3EÏµ»|`-o?DûäêÒÔÂ}O•›ð¨4î¯:Ü„t&ôè–ê&Q=àH®€H¶@lñä“1­xJ÷î²6ö£±ÔîŠ(u\\š¹H¯ã y‘$«ò=ù¨q¾k¡©Ôz~H¬Ü©‹#{Q¨Õô6gãUñ—w­\ZŠÝ×Žrv4’OžÓÿ/ŒC•ÛÜˆãH¬[ ß…:ÜÅríy™¸êµ¬¼Sß–ÜëþXUä/ó©ôDPH¦&àªúfZæ‚OÒ\'ªâµ@Gn[9{åV>»¦¬íWÉó•ºFÉÜö$üÛÆøH£ÜqÇ\n¬t²öë§r|ÄùrË-–“ü|j[(ªê¢b0|ËöÈœ7~ßG3ë“H YÈH£Ä(ÕÜU±•>f)éoWÁî¶I\ZŸÙ¸dçµÃŽ½W^Mäšb€§~§AoH£òGŒüÚ\0M¨€Q·”¹vêñï6õ[}cA*Ci•Þ´ˆ‡ÕÚÿª–Ù}Á‰Â)NH¨e/î¡ˆf¹žEÃ´¤‡îõôìV„õ.Ðnf¡’>â:¢ÏIP±w¸Ñc…võçŸÁ€õåüH©vßY4lè“Ôùì´üèƒŠèØÖüE_±‹F¹Ñì\ZoP¾#(s€Uª(#ÀH©‚`(¿rœ’–vj…Î°ðû7ká©kÑ¡§ªI‹¦Ð•i×Dã\Z²iH©xU\0ïÑ¼Xn0tQêVë‡Ó¸¾Ç-¢‰[ˆª›†ÄXÍ´rÝœYQí»…wPH©d#MA›ƒº*h,T$Û¥ýkÅö–C\rï‡<œ¨…€%m³i)CÎH§NL“‚ßµt!GQÓa)‡[ú\"Û£•1=Øu(¦²ÞÌ;:.\\!¡¹ìH¤´Û{Óë6É¤½§3™Ÿ{f©’ÊÁÎ„ï}á6ƒD[á£@fø?¡ÐýîÉÐH£ÆM\rÌr{¤´¡£YÜ¯™³a¢Mƒ-‘ó¾gá·k‹‡9wšGþÎGÉ¦¨¾HH¤e  ƒ8ÿb£|»Pj¥ÁSý°8¯þ3¬p+ˆ-Î2å§P¾(U31<d©>­õl%ë—H¦ÜñGM!L¼Š¶Ëœ.ê‰ËËJ8fâàJaŒ”òÕ²‘+ÌéEþÿ~‡XH«„¸ÑùÍê’ßÎ´q1î&<ìfS¹Y à`v™¨\nfŒ,YÐct0[ˆ55éíÓ€H¯3Jn„Ü¡Pžî’yñÈVcŠ‰v­$ÏEågTøËYÀ<sñèH²L03s•Àê|0&%çÚÞ×èÕüqNtú³=“ì¢ÉN\Z,Û%H³™Æ # ÓiJÃ”¶I´/HR!:Ì2–Ç8ü1èZbç‘Bü\"îH¯´kwúm¿u{‘Ð¹˜G±K>3¢¡J“:w´kf8\ZR‹—T­¦Â½âñPÝ¸ H®í¨¬SÌÇ|“a 21¹rR£ÊFv\"í¡Ó>y”O:Ý¾m£ü¾™ÍR€\Z®õMB]ß;OggS\0\0è¹\0\0\0\0\0\0\0\0\0\0\0\0F\r¼Z//-#\",+5\'%\'-)056.1\'%(\'.-7)*&121\'\'./0<562,.642(*\'%))3148965*31(/3,0+-/0-15:01450,$#\'\"\",23*&H“³<n÷H(ÙÏ+ŽÜJMãiÑ½æ5\ZP³¶,nÕËŸütã¯­4´ H„ã%ËÅ®Gô®Ç†gbýÚ€‰uÝ4+y×p«Ï8,®ã¶Dä°Í©ZU\"¸H“àT)ñymi~]VC¤\Z¹—ý	ä*zÊ­Ï?§CÈ^¥õDƒR¨¼H<ª³G“§|î¢»…ÊF8±¡}}Û’\"±1\\çç³WàH:f›·&p–	-»ÞÅœé÷ønˆ>W†Žua)H÷aßyTô¹¹óˆ·‡¾TR¬Î`i­B\'UÈõ‘¥Ð˜ý‰/K€Hƒj{•k†\nV6àýQ¨­Œ)ë&¯)œÃÿ’ý@ðœS@Á(©<6[ÊH¦áÈ2·Q´€`Ë=WPFM±\r¥@Ã×9Ç©!è¬–ïEú©‰½f/¦Z1ýO± H³Ì¼œÍ›’UJc‹û®Rª¢_¦Íõbø³°[\Z. š¼©Ê¹âH³ºµJ€éú·ÞB»\'=ùÆÿËEIÑäT7­ówœŠàn«ØH³¹lÐ‹1çM° É»ú Ýˆ^r  V!§ž¼’Šð¼EW6,z€H³´ÀÅsØ|œn	WK`†Šÿ©E‘ŠçS¹ð¡ZZÌíReF$wÏcÈ`¿ÄðH²\Z$Û²wZK 	ñÂIÀŽÏ\nw>+¢ºÀ“cÆ0äRG\Z´\nðH°k>‚ÁK]§°Æp«YU>¦¬Reâ~/ÐDK>½8kJ†ãl±ÅÇª@m`H®Ý”ö¹ŸhäôE=•ûÔdzï‹’æßöDnW\"h‹ÿ3zþ”×+wDbµ<[ñqEThgÍHªà$H‡p%þ‘³|¾ºhwqâŸpjŠMK½I„GJ	1Åá3ìPš\n€ê*˜0¨W¾µ@H¾Q-\Z¿BüÃ6Nà\"âÙ.2NòÁáÛáþŠ€8±³á~]àR®fÙïQàH½ý$)³YAíÍcH`\n@#}ëÁù»BøŠÿÞDYk5#/Éá³!õ‘ü½¾öp¡`H6=>‚=\0?ÍŽ®±SÓ&Ý³)—ËWë··kö\'L²Cwb×XH4pBMo²6t÷\Z%t‰ý 4h8?².PW!°:_³HGH/(š6î£òò&…-Æ^þdóÛˆwi¸ ›„×Â’b£óLÆî%€Hgtsd²êÏU\0b‘µÝHfvãz1up²ŸõDr(`ZzÀHZ¥	Ò‚¦Z¸d!\"à»¤©6Pj_–ð¢+±Úeäý=\0¯}¼\nVzY“Hƒu(Â\nhrU\\W•ì·LËã\\•zÂ+xsšh=êÈÆJ[i»@x\"XH¯HPï‰«¢uó,&…)d1Ã›½u…6Ô½O`0!IúÔÚË+o\Zò#\ZPÌÿ&Gòj€H°g`yc=*­—&È)óëŒÐaÀC!€³õ”—ÌƒMÒ¦!Êç€H®bà‡Ml@üIÏim@¯ðS±`¤ö×EþUêiâ¦Ô™€l¤~u:W÷T/ÀHªüûªv®#`ËEhÁVb©Ïm¨m8äún@«`Î(ølH¨ù¬\nf–øcg)Ñg·“âtÁ¼å\n>+ŠîÄÇ@ª:ì\Z”ú–ð‘xÍeÀH¥÷Ç/^Cäü\")t¶ßqÀ›,!gæ(n8r´žîígx†7EÍdK$4H¢T^å)éýdxkú!Í9½±°-6!V4÷xD‹Šèí3#NÀ©¥Dó˜HŸúTï-ýqvp#6²à-9‰¥A@Üƒ)ü‘á×ž9@Hž¸÷|ãå8±Ü¢ê|ñ,þÿH þMsá	,3 œƒgžÀHž¨z0·ý¹Þ®Ÿl£Å£-Ó\\õ-¤JÃÿ¤ß\nM†0O[R¹%jO5ôHžF<±å?í;ÖGùÑwzÓ«gçb} þ‹p•Ä!ƒˆé•Z=8\0/Œq“\Z…ÃHœ–n»¤êáœ<ªßA“§¢—¸ÄTÓá[½\'3pÈ;g/Ñ[žæ¤ïaóHØ€O†«0ÐÎg´]×ÅÜ×•ì·w/ÜÜîÿéµ‚8\nŸéoïÊ´~¢l!4MÏ×­?Ù\r¾bÌÂ–,0H¢À<\\*¥¢\\U‘[k^H€F´áÞƒaœ Õ,ïE½Öˆ‰”oé#ë3AUhÚÌ¸©H¦È¨¾ù…÷oWWc!m“L¬ßjÚ«3?²ç\'í–w¡òÞÕv+ú¥>Ôt-ßÈÑq\\@Hªm\\3nH—ò\0ýògý¥O§$òÆ(\0\ZàÝEªîÿLÞ\r$ŠN•åwco[÷Ì¸H«\' ®ÒÛMë%ÔqÍæ—@¢ÉÌþñ¨×/Ã•µ¨ÛÄ@wÜ­\"z¬0H¬É\'ysþ˜ºÇÓ£³u‘1*ª‚Žêª¡\0BjF~ÎÎj¿¬KÐ\"¹Òá™^ÄHª–Ê`âTÇ÷¯a›™•,=2FœhEê·þÊÀr¹•›ŠÁÏWÏÇ¯ÎëŽ×‘á%‚o[¨H¾k˜ 7Ù\r#ž=œï‹DY‡fHX\ZëÙª­ööÞÅp£+ù5pê\r×U¡>VÂú¨H‚è3»_j{¬Ÿk5´ý×V¹rèLlÃ¼4\0>ÖþvïÑÔ¢æ™4SÌL	’üü&êb$€H‚e©”Ê0,5w”üìÏJ]›?²	 ð¶ÓÂ€ÿ´wRóNŒÔnÆèH7ÿ—— RÑsÓ­@X$«ì`éR¸õ)¢_ßˆ—\0F¤€(ep¬w$@H28\0ŠêŸGU•6{]D‹?‡‰Z\n€ûäÐªÚ{Æá|69ô%ìH-m3O¢ccðtú^Ö^Ñ÷\Z/9®Z§ŒuâÂ€ÌÌŒßTTH/*}©ëJ~ãf« Þß¨‘Ç’˜%XöŠKÀŒ,†» CDmjÀH-nˆZƒìª=ÏÖT¾É§>EÃh¶†hðOuh$+ÒðépH-’Ç¿^Üÿ1]èŠØxY8uãÜ{ž+Á:fÃ¯k^D‡ñ¯qyÉí—2YD=% H6½£ù¯¦\"šßÝÎ2òÖûÆ)Ù{›j*Õ†o ³{Ý\"2ˆÛ)HÕÍâ¦šsø6IÍH‚*E°Dx’Â:æ–Ÿ“&Ÿ·u!—ûa‘—[è 79¥Î=ý²ÌœëÓ‚Ô/H‚¨ÃOÿ‡N\niÇûÞÆÀ…nÖ„3®O:¥/÷è 3ƒ¬d’P9Áˆm‹]kmJ¼Ä‰	PH¥N.~ììœ¹ÕÀ9û ÞW©™ëJ{©\'Ö¢¨®0Talç+j´íÍ@£7…µ·¿C·à–D H¨eÛôÄ^<\nhëò9Ôåùc¹ÕÛÔË6øÓeµ&\r¢’ËvŽ…®Qê”à‡j–õ¸H§L6\0 þ•wM—±Žˆ¦±ƒ÷ž\0‰âM‰«eôˆw”8ôWA0 æ¨²cü$¬fî•:]mH¤óü[C§c\'e7\'b^#I_t1\'î0<Í\Z	äâšÖð´Oê€H¢þféËÁ‰Éu%Ü;:6Á\rL­a+¥`K£\"Á#ƒÍ_ËÝ0ÓŽ[ì>fôd5\n@Hž¢–O3BØ_Ð[Xöã-¼-‚Tµþh“°ÜhZs£}\"/7•S[£4F_x­Fß Hž»0ÌÁ*ˆÂªœáÉm¶F3…h‡AëÔwþoó«Wj›@=ÂtW§}HW|ŒlÏÖçKv<{ÎfõŽvˆ‚ÇÓÝ¹Kîc–ENZt»N îp¦€HŸ9<e·‹ÒzJ¬‘¶,­5¨]v|2+±«fB·¸^\Z`7PÂ®‹øEñ$í @H¦mw8—|}´¸P„†Zæ„\Z×NÀåÃÕ2¾<ŽZì§UÏ¥Z; akÈH¦mAJ¯Jª^»p!ŸŠ~)\'q4¨á’YíÀU–³ÏqàƒÅEQ~\nU„8H¦/¼¼]µêÉø¯½Ý.(ïgÑ<Ç2/ÅÃKíÉÔxŸ¼AûH{Ëã9@H¤¯â©ÀvC½Ý‰@3|Ï½†­‹‡ü135’î(–$©<ãxN»ØÀ“!Ï¤°H ÑÒ}„n)˜Æ†ø§ê:bs¬âß¢¾i¢”éYÏ¸“y\"\0®Xm¿Ö­6¦HžM!îqÿw0X|I\Z¤Æ6½#sñ§å`ƒZ» õ„»àÃë«7Ûk+«ÎPH6YXN¿…\'Â1\"¹vpZ*Ù_ž,t¤ËèÖRÉFà>–?Ý*ÑåÓ6É¨IHžT`o6åÂ\nVg¥÷øCæÜ`ŽFÊªŽÛZôFjÁR!’ËŠJÞHïlÃnñÔ´H¤¢\nŽð¿\\ö|·¦\Z ï/C`baFMÇ=k¥*Ö«¸Ç!+ÖÞ#]k¹öH·`xÆ\"†ÜH©Õµã»Ÿ§22Q¥ª€îêøQŠë€iW@ØÜ^Ú½6ðÊù½9XO–ž^³Q›ô*;3`vxH­GòÜ^ô‹XˆÝw$‚ÃÈhö +¶§çKÿæS5X•xm¬,y?”–[Ý´ËH®´}OðªöðÒ?+ô¬¼}€œd	h+;œ¥_s±¡Œ¦…âÛ7¢fû¾•‚Ã+v€H®´v.¶¦ˆµûe¿.vÞa>ˆ=•2žI³ø*Q›S—=„C§Bƒ`zK:(º2çàH­øµÒ¯*ºQ”6Ew»»uÇPÛ>ådÃ‰¦±¯ë*ÖLG{f¹MtÚ8Ñû4!lH¤§E[¾-PDØ•ï»ÇL°Vo<Ñµ[¡¦Jtžzš9N‹Ïà·»·j”ÖGHž“&Þ§gˆ\nP±~ò«®Ã¶ˆ™_Vç	EyâŽ’ôã0ÁB‡ß—®ó¼H6Y\'±µº$áÙóQÖ\'D\0LûZ´¾¥=ïÇF\'€·£aàH3\'û$ã)©:ÀäÈêÿ:øìõIWÁµ¹q™€´(H0©ÜÛÓImwÂ{ÁT	?-ùÍÂÏ†Ä²«ëdÔÕ	Û8ÖªôPø@H.ÈÃe¾ØëÈz%X‘¿YÂ©[Æ*$H\\–[j#ç3¬*H`èÎHzDGš^€ÆŽÛŒãHÏ½ÒAã3ÿw€HÝ—åô`aO0°?KÞôBk!ÖÁÿä§W×E…:°È›ñ-÷wµ\'Ü\"øìH¢iÿN$gz±ú÷ºÜö6I^â{#Kìit¢ß®Èc6”˜ƒkŽQZíšÔÈ€H¡`ECÁ\0áo¸`„O±±V€¯ã_<\nºtƒ£’}\r»hs4KA®Qï†ßô+# H‚)Ü°Þëðž/?Ýè/h¹¿àªŽÄÜec-È8,¶²ì¬rp–ÉûwHB\nn|‚\'”ƒÞ‰§9²1!ú±\Z×\ZXÚÕŠŸÍ	‘ OggS\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0-ëÙš&)#$!&#&&\"$%(*!&,\')\'\"H3\'h›Bö‚üÁb±eæ:Cªù‘ 2”ã†Øe†rÊ NèuñÔ(H1>¤”8`íƒ:t(3~[ø´\03\n5;—Ï U	®nØ\\7¼ám€H›œ x“Þ¸ºÃ0íŒ¾”ÒÇÅ²Ê \0Î¢…² H.À³e³ÃÓ\"Ÿ>Ù~Š\"Waj~z¾.‹¤‰˜þ\\ŒA{§H-ma>}ÍÄ-ÃX§îi\rÃ¬\\u¯ÔÛû¬ù ²‰¶H+„“)Àÿñß-Ð„W³ÔÜPÖi…8ˆ³àîêðÄlzï¾0 H*äôš2‹Y7A_÷8á(ãnw[&óÕ2 þd|_-€ HÒBHí`«r‡uTƒ²˜;¤“Ì^\\çéšûwY2hpÁfR H)›â¾ùÍÓ&L¹(\0÷6…Ä·uiÁº.?‹ — ßÃàH)£Àó\r—Ê„bC>	þGÔËwÂ&Ñäß{èËÐÂ.ÀH\'ºÄÓ€šq¡–Æ\nyB)ùó$Ÿ¬fð†ô?3qÞ£e¸H$ô?züÔ‡™ÁUms¨9€ŸÊò+	Ÿ-q‚Ž_Ž`H%9´g¯Ô_ƒï^RêdËiøo\r`þ¯„`ƒ-ê^øN_€H%(ô5·$(\"ôóŠ~AºlW?Óùo#\'›´Ÿ‚ˆÆ>™ŒÞåH”Ë‚§C´+ùzÈv@´\'ƒu+”Tûèð Å‹G‹¿H\'›\Zôx5+}5Læ¬….’8DÐ)OÁÝÞï±_Ç@Ó$H\'Å:Il€ãvÙÇ yÀäëcÄO<æÕB\'MMeò8ŸW´—Tº<þH(H.8ð^´HÈ\0V=`fÑ˜ŠvJšÜ´èö½¬Ú^ÃÚ·Š•›\r5äH\'›XT‹q%§o&~{c¨%-ƒ%eu.ñX™ƒòúËIÊ¡-EP¯—˜H(L92$Ž‚}™Üÿs\\î»þ…-XÎ3#[Z·°¦¤©¨_¯·†WH)ƒÜ*ˆ×ÌÕKˆu…|ý†Lúìª‡¨ÏÚØ(ê*T','nukata sumawashka kamwa rimangapa.opus'),
(23,'Bienvenido','Allilla Samushangi','2022-12-0515041128520bienvenido.jpeg',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hY\0\0\0\0\0\0\0\0\0\0\0\0I3/\\,*%\'(&\"#!(\',-*))(***,*$&)\'-/*(+131.964793<93+\'+,.5/3.14.*\'(%+,23.5:88/47/)..-)*4,//3,3,.1HäÁ6ìÅ€Hâ6Ÿ9•-ÈógªÂE0`H€Ê‹€—ÁT#xp^Ê+Ô·•5”keOsôAößwq‘ÿ¬ãH~\Z÷ðH‡ôìV„ Ô=—¢PEÍÐ èíŒLXdØ“óaþ”Óÿnj%\\dg€H†ùVnÌ\0ñÂµx€Ìj_8¼cÚY=ç`<ûâuU\\	o@9àH€RCGR=Ü¿o‰TÆ‹§°ó,Î´|(àzØò#jop„’¼H!ÑCG½ŸËNÛÜgþ¼B-¤Øª„,m­ÂmrH\"t)ª¸¹ñ|\Z†ú÷zãè0¼K4¿J¾3‘®VÂ°U¦\r\nòjn®pH%“—¤ÿ†‹·×…¯L ,ŠàÙÇ8¤°,kQ/µÎ°H%ýjP‚÷ˆ±eêà‰a;˜GßÿÒ¯-ÀÕ6£êÐàHy*¦/ñžæJ×˜1mwÎ\\&…3ju_èŸu^‰ùã¬H%8âc–ñyv±CiÝYs·Ûe$å‘«éÝ_Ë€H%‹m·°“iˆ`ë$YõX¼mÃô‘ãå\'ÉžŒío¬}c£-ÁÄgH$÷^ °Ô‰[—~Ïê£Ü£¸ÓŠø°MñÅâ±!Ñ¿›[RPNý¸äH%NRìÉY;à,4SïÊi¼hà0Ðtžõ.%h…ê“Œ=ê<;3þP€H\'ßµÕòã3\"·)»ï?¨âíßÂêÞ‹™ŸoV»üu§\'…P¿«·ýï\0Šz€H,²–)árKsn<N—Fª*0š>žÍ\'p1in!Zýó};M£÷£ãóµH+8nzX?á?$¶(ÍÌÂS±»°,i\\ˆ’#@‰þ ÚÈöñMzgeTH)—J„]ñ”ƒu„æÌjüàGœ:2ü–òÓ\\kãnÚ\rN¨\'‰÷Ïø7H+q87Û!;Íâ7c’<Ëµ*¡‰w•¿¨_gZ\ru`Ux±¦#ýÓº@H+gÔ·ï8aŒÇëÙ©¹XçÕ—Ís:›WMãÄ˜!ƒ_5`ÐýSšH-.øaën¼\'ƒÙ8¼ß¨vôv¹Ð;‹QÞ§©±š3TÛ©ºH+q»h8±øøÖª6l=Cãµÿ³ï__Iâ÷xàƒ§JØ0H+ˆÔ ¼I{¤*Øj©[(±’]@èùl¬é½\ZÿŸ¨Nôpe‰Š„TH,\ZxÆqdJ=M	¡>QÑøaŠ®ƒqË@Q…Ãße#Í²”\"Ð\0£MV€H-Z•£ú§=v¿4\0ão{ØÙû@TjGTSÈnKÔà·ké,H-0€©\0T&×R<g Sñ€ù¦±þ‘öOó3~Ü^NH+gÅÙ8nÉ5¹:‚ŽM%€+ædÿâà!Ž£äÙºïžŽ	¡\\87µH+q¼”¦É£´Y´,FÆp´5ª—ŽÆ_EÅÅ\Z6-½aSZóÙZH+R·Z0›UÄ#ä¿“¤¯1cëÿZ4›É­Ûûâ(íÕ–Ê\\rûÁ0Ú€H)!Ñî•@LJšå-^20¿QDx‰>úûòC\"ÿ¨V˜Ë$Å7–=VÅ€H)y“B`„SÂ÷b8#åö\\Q¿«^âŒÆûU$\0ÿn†×{äCptäTbH)¤´uÛ-v0ø»Þü_òf.¤-7ù\rü´YÁª•”VHH)¿±ÇoƒsÐp&&òßþƒAåoŸ›ÜÆž2\Z£Ì½È‡é:¢†XðH-¼Êö»õ·×Ûâáä°*e´W®B\rß)©Ž¤“’pšŒìí„6³æÚîi8(ôHY&Á`C¢}’©ñ`¨x=¨ûÍëÁßèo´î6WkP\\!ËÐìC\n‰Zï,QOymÞ,ˆH¦Ü)—Ó$1Õyù+Á\\á™\njnjdKY]9‰Çu¹PÄþT„Ú_ØÁG‰ž}B¢œ€H©Ó%Gmãc…UZ)ãÕàê5\nöO–ùv‘M%¦Þíèâ§dØAzXø£zIw|H«`g(ƒ×$ú‹ÏàÊrwðûÊ8(ÿJ:Áïšk¹®[Yƒ(V” m¸…Vl‡,Ã†B€H®ª­¶’så¿Â:ªlw	}ý’5¡ßEÐ¼^ßƒ4AŠÁžfHšÇ]‡2Ù%ÿª˜ÂI‚‚®ÌH®U\0ôñáî%(6@U˜Ù5¥§ ñÃ3öY0åÓ’ŒîN×5£Õ¤“‘\rŒì[ð¯ÏÃPH«5[XxŸwaû^ö5rþ¾Ñ@-dÈÉ{î³zåP»žMÍ‚üÔ\"Ùµdzˆá¸b`H©›Ýô11²£Ù}•¹ºÔQ—«™•ã\0~’\nøU`0ï}¥¿Ì¸W”mÕÕ«ËþHawH§­øû–¹HéÐN­X\Ztï¬9¥†~Òw‡‡ˆºk–¤©ýlV²{ÃÊ”E±ØH¨)}õd»„‰Žƒð6„’‘•ƒgéý”¯yWH®8ÏÔÊUR€u@‹rÉFðêwáßˆÇ\')OÀH«ÔšŠ+2&_ŒéU³áB©§¨êÎûGz‹¤|ð«•F¥¿öùÏƒu¢„Œ:uç(¢®,\Z­ìJH°+Ÿ•qŽÎ$]–Ð\r+A^# ]ºué$ò2³<ýŒŠ/-¤ùÚ‰_ËEuÑü$ø H®’ªÕ¤õ5¢3¾yÁ‘äpÙõ^¼\ZiôOÎ­`Õy–È<ª4ùÿæ´H®»S;b7¶@¤&rMAë¸`ÕF&3¢*I¼_Ž 1 ïH­¨÷\\J=xÕÙ¨Üx\rî¯>oJÚXjÍ`ÚÁ¼ %ùÓ¹°›\0{üH¬øÄœŽ>R`”tÀäOFt¾/]_oÕ[Xˆ­Öæ\0XÞ]ÿ¾ž…CH­šw¾’ö–Ñå§MàŸ¦¹ö)®B5F‚ÏSU=ëÐ§µ§î®I­•À[XªH°	Xá³âÏÐÌµBç×eÁmMËà\rÁELÉ£š±†QQL¡‡^C˜(:Ô<jt Ž›@H®`Ãç³{Šàpæ\n§î®û¯Wä˜¼ÈKŠ4˜‡ŠNˆqùŒ$‹….aXãdH¬¦«\"äÝX-Ì´ß{¢@RNœÃ+°½åÎçê-ºz˜8Õú´D¨eà5‘9ÃˆU`H«)›Ðe!‘¸ÓÉtÞÌH¹â#~þ×©¼I‘/²„µ«öÌG${¯¶!€H­‡ˆí„-9´àXmª3L\"1Ÿ÷~×)ÙU)èùqÂ„y£	m}ÝF÷ÿˆæç0¢ZŠX€H²ŸÈê¹ö,ŸAiÚïÕË‡„ÆÎšÄ›åŒÇ2.\0feE ^?=ýÇ”ÔBV¶ °H¶è®p©\'~^–&øÄêg¤7‡ìn«c÷§\rM2RÎW•U~a0M8H¶è¾µû‘Ã“±pFLâh–ÃW±èNÐ¨¸|[+“QŠ:šë¡Ë!ÓáxH¶ÕðH!éÿ\"çï’5·ÌÉH5\Z£ByÕk-\ZL^ÈK!ä]ó(H¶¿Jw³&\0š×ˆºQ«ç9«8Vý	C®‘‡ˆ^¡>¸÷e¦-r³0HµÙz_\Zo<í«2éÌ\0g³o¢ýn=ø¼¤¦Ù	èlH£¸H´þíd—F‘Ð]d£KÀ·åånËšF~Dž!`ð|á oTÅ`OEW.ØH±Ç—qyJuWeÖN·ŠÁrXØ­ÐO‹\Z$×ÌF¥;±ˆÕí0\"]€H®\"Bµ›ÑÈ¦¶Ý«öÛ6·9ñz.HÄO(/bá=µr*4†X>Yd›¼T¡ØX¨H«+Fô¶ÇÜ\Z4ï:“%€ºÉ]Ðjf@½Ø8ö±××·±m6¸ÝÚzEYXzîpH©dÚïô;ë6xíû.ë\Z·xMÇ¸FUe0©\\“›šº¦½uÌbå9ð?€H§Env—7Äí±P&Å6L2`Fvá‘\rÚS”Ë`Rj\n:V°²=ù@Þ\r­¯Û°\r™H¤ç\\%· —Eæ¬bÐô¿&°/M•“\\ò°u!ü@}»²Ób‹£P×Ux°Q	Ñê»ÜšBÜ˜ÖŒ‘H¤®ÚÇ‰‰Ì ï¯r¼³£+‰^X \rF¨r¦Èëš‘øfÑæ-ðeNÕ·Þ\0ÎÌ04Ì‰•àÉÀH¾wÅ”æ$÷ÏÉÌëŸÇWéU2K[UoY÷û¨\"Ö‘š®›Ùd<vÈžÚ+zÎ1I\nÍïžS]ÆH‘,%9ÿLÁïGµŠ»|”sÜèçgNW~ª÷Qñ×¾Ð¯h«˜¿N±_TiõØH’“ºÖuÿ“åŸmøSmYÛJzR£NäJÇ®A~ÚAtô16Aq‰~é²»\'Øy]TÆ H“#ÒªK Ÿ5ÝVRy¯.ØåËŒD·÷Bw¶®‰e1rÒFx*Â ßR³çý\Z²h6°G€H“(ššá;Uï¾UK40\nÎ‘ •µÛ¼þC½êŠGùÕêvÌ-ÇÍ$¤H„Bø1iTÅv_ó²åSÕ-­¯^«QŒ€°Kò«U²Ð€xÞ<w€H’–vUñÜJ:fô“NyCšGSL?V0IÄ›Õª+f]=´·R‘\"F´.»ÿH’˜¿ÈJ3M5Ðç+µå\0ô+²>™ˆ\"^î<¦#\"•è·{(n8r”·lQ\\ÓûÑòH’“½K|}a½h%	Ÿˆ»Ü+ýºpò¹Ã)ø.”‹%\r~2J\\ä—½‘\\ê.8¨H’ccµÎ9âŒ@P7þ…®Q­ùr_¨žŽø©›2§£¦BVZ@¶ÀH¨ã!å¶×¥+Ø_DáÚœ\\ÉÕˆ grŽI\n¤ŠÛùú’K-Á¼¥ßŒH°ž¢GpN4®v³º†ú¾–?³05ýó\róÓÿ\Zú\r°¦øçŠ&{äg©ä^Œ&óØ\\H±ïà•Tb+ôýèýË+$5ÞŒSR¢Â%\r£q#œ\\pe~^<LÙ.º`¨d€H±}®˜Öû$wV%9ÞÅÅ“û‹.dd\n¨@û`RÉ4D‘p\nDqÁiÈydì“¶¨øH¬[ûVxògÆï5èIð»šÄM}ë«º9Jí‚Õò`´Ì]p˜àTüw-E®ýÙ4H§3©u{q¿ÔZ±«ÚyÞÿvÀ=9fbd†øµ´\nK•7W[wçƒ8StVëWÂÇ‚¸H¤©ÏÙpÎ,Ö¦Tìº`»î(¾¨Þ\\¥ž Ð>ÜL\'‹\"ÔŒƒ|r¦ÜH¢LóT…iÅÄçØPh‚ý\Z3Ý—™TËX\"õì+ž5Ë`‰Ï±m%Ï¬¶³Ÿ´ZÞ0Ù—ÜHŸÙLt%\ncæ‡a‹1_q5{|9Jîä½ cÿåµFÉáN”}êì¿h@HžÈ­«²ŽeRaR|¡º\\G¦KòkëÑªêpÉN/.uá–-³~r]•8:™ØHŸðà’ÚÄ¢î^ÚWq J·_âyI3hm£ZCJ —Pø‘. þÅ‘»ÏGéèGá€OggS\0\0hX\0\0\0\0\0\0\0\0\0\0\0\0·¼™\\D)1<521+211\')+41/1-650-0..\'&#\"\"\'$#(-\'\')%-)\'+))))(\'*(,(\"%%*&\'% \"%\"\')\'&HŸùË/¿\Z­]ç—#<2fÈº‚€¢:ïƒï¬Ç7Ý¢ó¸iË¦o’H \\ƒG1Êˆ\\ûÔ™ñjÂ_µÆü»rÙÒ‰ªöñôµ	•ÎDýÀªº—ŒØlàH¤	\'€é‹ÔªVŠ)f·:z=\ZäCeÑRA¨Ÿ¯\'L\"+ÛnÉëf\Zªs\Zæ½›¤L-]ÝŸð¤«ž;n H¨i¯iVô¾˜.˜T$ŸK}&F‚ÖWDòrkˆÞ¯z‡¾ÂÉ”Ww^´?‚¹ç+¼8ë5H¾ß|À ¾á™ÌÈA-­-N¯Œ*EtyXn„XAXÿ¬ª ¨DöÔ.0¶†Á%ƒú·OÒLøH‘™ù‡ÇBÅÀÄ¢FÞz­[g0mª˜UˆhÈ±!f¬ z¥Z½–úCmkÀNÒX—PHƒ¦–)ìPÆ‡	©ÑÜ‚»½ê^¨M›pë?ƒþ«Qç}\0N-qÚt„ƒ‚ÛàH§ùb‰èª¿S.½=”Ý\Z?=\\æËbp`k¢F/´pÿ6èa7ÑGÈ­YÕ	H«ÈK_.˜u”çºša{O‰.•`:)Á#ÓÐ?¡?Ó5çONPT«Šè{›ì­¤H­|Iôô;3´€Ðä`H{»W…‰Îf¼ñkYö¯í\"´¹‹o‚àÕ±óŠÐ¶”q@H® ÏwVåpZÝ]¬Y/\'a„µªæ7ÁH4‚Käi\nI¹ÂÀH®†‡,­E\\AK\ZGUxS^¾ìÄ¬(Ò²¯þ*¦úù•~Š4ç¥íNKþH°)¡k7EAÁæol`û.5Wa-S¢2¡‘+Ï‚\'éßo;9õ•¦XH®R©$üÔQz->¢T­’Ö7ÝºÂ~íiÒŒ²¨Ø³WbDøl5<ÃH§‘ÎLyEÜã…°\Z-Okr«4g¬‰µZ9‚Ý»ØÇKT’;«ÄdfZ{ÜH¤ýÀg–º5âfU¿œ =Wám„Ë·9ÌzÊ1©P{âk˜F#Ï]\\±öûÔÈ€H£bEdýKÆ¤žyŒí•èbúÈå•ÅNI*ñt‰½šÂÏ÷QbäŒ-™Óm„‚àg<€H¡AòÃIüüzÅàíó2½`(˜+ª©|¢\n\ZgÏjf78W«>¶¬ï¥(`:øHŸ¥;Wï¯<HT¥1ÅmÊóŸ	äwð8^õÐ9‘hjêŽBÈÛeÛÜ\0Á¢ã7¡?çõÓpðH¾º×éHo²é£rBc§¼Å¨PþÀø\0ß\'!ƒÿÏÏœŠ<w?C<]P\rØn°FÎEF€H§à˜5B„3Ì¥³ÕQmxÝìj,#i‰Pí*Þ½.é©\rØÿ\')DÒ—¸k3\0ë/<hH§R6Z.ÇŒ.#vð_ÄýK¼.ö[HÑ,•ýô©;1\rU´S.<‡ˆÂH§:‚ÍÒy\Z<*ù\0°k¾´Íù7è÷œáŸ\\‡¶m-Cß2¾SAå?/®Ù„ñ`H¦TQô‚\rÈÒ±º&šøûÑÔ}ÒsV{q*zân»#N’ÁÁèG»*vÀÌuø€H£°\\:à® ×÷*ñŸn Š]ùÚŽcdxC»ZOMÄw¸åÒƒ°WƒD·´•°HÂ“a`-›õâéØR5ö6û*Â\r×¬ë¹[™ItŸŒHes²¼Ü»ˆ¨ö r{ÏIWí D£N¸Ëª5%àH5~òÃ‡ KðÉ3þ3Ç—Z~ý_ý®žYx+x£üwõ~ÀH4ã…¬Žä@Óùe´Åó/Ðh¾\ni­ûä¶GÀTžðžH39 9\0É•\nö†BœÀ«™ÂÙ,|Æïã0ˆ_`H1+K\'¡€â1~]½^„¢\0+rEôŠy\\î¶8uWaÚ¼’1H2ü8íŸ\'¼ˆšôc^*:T¥qmzÓ\\fž\\bc—¹ˆcNH1+v©3g|VžWA³zœ‰q†Y‘Ú…lÂ#<{¸UH0¤åJÀû\\‰ubÜ¿‹ôD\0A¨ÅÈ4Á˜F.17²ú•¹4˜`H/¦,H¶0ùsèÊx}ƒëf’õÁªë`Ë’rZÇ+„‡ÿXD§-2X€H1+{ÿËï\0ù¼èsèÙ9i\\§ ûJ­ìÂR4ðLðÇ`é*Ø`H1+|5òõœ¡ô¨‚_y§‹9¡ÏèàKª]T)Õ_WôÃ8¤UH0¥ÐhŒR›·Tô;Œ Û¾ú.\0d7+—¡ì•	ðûp{^w€H/_BãÇ,ïâç¥¨M	«2}$Ãžmâ{œŒþ¬¦Ü¼H/oÄÇƒÙ°éd	ý³ûE7;·žXÞ#±·bE]9Îö›¯€žœvÇÜH/8«Éë”¼prÐƒñ“çê.ÿÕçu£‰JC`¿•0ÊáîÖž¢H/,ý6@¥ÎÉŽø¹—fà¶KžJ¸³‰ÕŒaH>ŸüJºžŸ H-‡Çœ˜Ö,û™¦dÙ(ŸÅvQÊjÐ°\0>1ænDÐøÀ³m3(ö|H.	%+wù7œi\nŠßweÛ®û¢ˆgµ£¬¡U*[½ªHwO”H/_D))Â˜Äi)¨›|uÄ2v{†¢~}þO+OrÌ{!%¨“ãb-àH/BÚ®zÑ*è“¶×¢“ïÜ\ngÏÛ$„«¡:Ga3ÊÇDÁWØ?ŒãH/^“FÊ4U¢lö°yõ²sûÐ´D»§,€5=èí>ÇŽùÁj H/8¤8å·tâ$‡qýŒIÿøäRrûÏR_Iîe½ÕÂ”ˆÝV€H.Ñ‡ZQÎZÂh†Å=CEêßÿ(Ê6_f(bë\\y¶Ú…¡ç3ŸH/5Í¨Mn’RVÙÐ’ÀØÃÉºI¨ážè¨\0â†Ö=ô:S5ì”äiØ€H-v„)èî£\\šˆª:Îñï’t‘÷K½sƒ1¦=èûræZ!©ˆ<H-uQæ@ÊÅ/ØE¶Û0­|J„Ês1Ø²²7¼	­ÂÐ¢¤˜óoÙgÐHx!5ñGC¸©^2ÎûH0ÃoM[^ãí\'+ZÃw—³SFáòƒM6¿TH/1ÞWwCCÂôJL¾ÐªÁM…ôÔg%<)§uL„Íö6L®`H//ôŽ÷ê{ÁpƒÁ¥åˆç_Ï¡&À¿eÍ“˜{›4/Ø`H-L,ÊÂ+Õ[Ôü}ˆ-Ú÷šDªQÝdwY0™o\\\\z\nH)¤ÈÙ:Ú.u\rÛÞ§§±›×žW›ñëIÓdQÐ·4¢¾#ë¢KF¢H)OJbŠõÖ7Ý2·ÌGrð‹«g¥ý—Œ@‘Øy–±µAõ\"ˆ€H\'œ+å«Ë…ÐóÓàé§?.Ãrò–v\\ÿ*]¢Ú©çÈ.žHÁÆtõzÒûYÓööxA@?\no¸C=å¸¦E2ÿ\'ƒ@H\'¼»ò„™™š4²ˆ€ŒÎ_Ï¿Fw&†fÒä¨HX‰{¾L$HÝðØ€0yˆ$ThÑ>M6G¼ðí5<qÞH$ô‹²¬\ZQW@¢ßŠGºúUîZOá\'cùè(õG&ëäF×­ HqY\ròðPŠ¥)ºU©Bý\"M7‚»-Ç´òB(H%*d¿°pÌ©›†ã•’\r$$Ü	¬x_œSý^îjB](¦ë¨H%*cóxcÄO]ž2ŸÞ˜ˆ÷zÈ²XŒ>º]Yœ7ëí«çUù8H$ôMœÒ@xÈßÛÞ“Sš:3-÷ª½ÛK®¶¡‘ÙzÔ\r^õ°AH%N“ò¿¬]Guš¸ÿÉ`0[7T\"ˆdÛà\"\\*}NSÄ¸','allilla Samushangi.opus'),
(24,'Estoy bien, gracias','Allillan kani, pai.','2022-12-06115358787162022-12-051514952405estoy bien, gracias.jpg',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hw\0\0\0\0\0\0\0\0\0\0\0\06¸ª>d\'*+++%1%%\'%#!%\'*&$\")\'#%\"\"\'$$ &-%+\'**(&(#&\'%&+&\"$#%\"()#()\"$\"%)!*\"*62596755777344434$\'\'01-03-.856+HäÁ6ìÅ€HßÑž>O\'Æ\"Û snk†Ò§€H†•ÿŽl¢ —mpà®9A_—ébj‹…R®¥«&ð;°ï€H†¸Œv¹O\0š×‹—F(]b»§øob “V¬:±%|ÊTÏedª#:pH‡IÅ=»BŒ5¦ŠÜíìgØ\r  Æš¤Üygý³Ÿ^UCÚ1ašÄÅH‡J…‹£Óy<äsÄÎnˆ•ù9_Ñ¬\"7L‚íÒ`ÈÑÌÏ¯ÉÊÂ`¸H&øCŠ€	qÌZ„îX,˜ý/·©\nˆ¡w‡q0-“ååp¶nâ6®.@H€‚U‚³\Z²@Áÿ@æcšj¡rD@ùnC{ì.bLtkÑ€H€°n…Rtú^7:d¼<yQ@ÄTGn0ZùIöÏOcÿ»–O°´QáÎ° Õ™œ@H‚@_õ»Ð¸šRx/¢Êå.­ì:b‘¼Atb æ¹HH0òF¸àXT	ñìa¬¡‡PÀ;¼‰µšù/%ü}ºm~fƒªàH/hr¹tšœ¦R˜<Ú„vŠ§Æ=ÛÅ¹,Ü$‡o|Ásy”fäH/hrF¬çÖð¼¼ýsíX{ö“èÖ\'ñ6âËâáƒ°w…™ÎH-VU;\'({±sÆ<ù—höÌjV\Züm¸a¡33áïÁ»aH-v,2æWä¡N•Š¡bP”àÑ}\'šyyjÍ\0©\"­±H-uK€à¶v\'ÊÏsÑû£¤Vó$èn&]w£žŠŒøÏ¬ëëøH-~Ô{¸–ô‘=÷DôÎ¬Ñ@Øàd1H¾ô>ÿ{ÊHI©n¦½›þHw^\\@x?¸®ùOô!lþèÆíNžy/vujÉ\\å”›O]wp´H¦õLDwrgó&é]y\0J{Ç(WØŸ|2M34^óáà-0Høöcjç\Z¹[!Ç–.íIüÏDµÆG[rk³„GUi€H+hêá\Z$IÄÑÇM$È)7’{8a%BV­ùûŒ\Z6|H+lÂC§Nqˆ†¦qÀ$±úÜé’4þJ‚>‹,Žÿú	åå Â@H|2×Ï<.ÀOP~Ä=R=DS2€1eZŒ’VV„K-[	j®ÊH-éð\\¶.a ¤çÍÞŽ):ç¾ýË²Á€;Ò]ä¤àH\0¥‚Œtx­ñŽxËø1¨-b<laÁæ|E+\"28VŒH+æ:¥§•½øyÌÿcM…GWÕ}—€Ì‚É‰øÝH+3ÊÜ{¨‘‹ŒVÒ’ˆ¸s\\Ý[U¼ÄˆGÍU5l°´hH)ƒÓc\0[szÈ7Ò,¨È	œÄâoww…´æ©*YÉ„BÒÕHõQÈBéç+¹9â*†)¿£\rns>C×ƒ‹®N}k]û¹Y;ØH)„kÊf‘y¿œ3&¼kÉÓQGð!ˆ 	“´s»|õdsP£@H)—#ýC—ž	@i^m^OgdøTÎ™ûóµSòH)Ech—@œÙ˜œÑ/èÙÝº„¯;&žwë?Ái\n;÷‘®ª}€H\'®[õ÷ÈÞ×Ü2Ø—Yÿ·ÔþUÃ8G­~ÍW°)÷òèÌXÂ‰ôúº7Ùñ\"¨H)ƒÓ±ieÄlä€¿Ôu›íSœDñi¤ÓW-05ÄëL£åÁrÌH)º…[Ñ\nE5íƒZñN=-XÊ“ïOc’Ÿ¢™>áßHã©µa”ø@À“¨€H+–ÁPºã¶ÅúZËž\\ÕStÞ’øLkÎ<q¿õòŸÐ†l6y$ H,Ûì¸ïORó]SÑxï\n¶óu†ª›ÔenÓ³q] `\nv¹¢þH-¹u‚IÏ„{9Úz‹Ä7î6kßUµ´~®~ª¹Ýe¾ÑÕúb‹&UÕ7?‰H.ÿà€]2}PÔPPÎ÷ñ	Ê|‰ÂÜ6Ðo´\\H-v-”éí.kÕeZ1ƒà.³!HT6Ë¶ªì`Iäû¿ÑåˆVjH-oØtðØúZnlr¢ÍBÃ…âyËaVx_§½Y–Tª‘Éo°H-U|&±ÙL+ÕÅðS0\\ø¶sEÈÛ´Àà’ó<i-qVv«y.H+¬øj_¿ßóÙ@Ù‚z+\'^KQíÈ$ÐeSÓ!ôrÜ;ÀH+†D†þeþy–éçÚ(¦ãÆ€ö\nó!·B0 0!ÊÍø÷\\H+„¡=«öˆ2F÷A2ª„úÛ6Œ‘ó5Ø–ÜÊi:„ë×³§\Z`²w€H+†8¹3[–Ã\npßŠ<<á.n´çôŠ;’„lÝ+`\\¿ìH+lÁ¼XdƒÑ˜w8™}Îº>É‘õ½Ï| ÷)¸ôúIfœH-¹sù9¿ùÔm¦Ý‡Ð®¼BÖ$=¸=œyþöà#&@fìžœè7Àj€H/>ÞIï¦>{˜l_ž.–÷öJØ­íøÉ+—Í+¶€§ƒÈH/>BPõÔšŸÆ 	®eý,*ÚÕšô9»X­WôGÕH.»à´ÑH+çÛW‘ì¬	°àí%…>¬‚9­4ZÂ÷Õ¿H-:klœg·S°ÔN\0ƒÍ…EF¬`$š<2P\0ðûðH+W(1kC¿0Ý†#€vôä‡±À ‡d°ÐJƒœjçñg˜H)—$ûaÂŸš_>ÈžÑkm‰gÝ-ÈgË2áwúû\nª°H)›ÙºCyMœ<;çý¥îØûKÝ9â¹öÍ·½x `H\'›­}BKp÷”ò`PpÐuÑeo.uujh¾i—À»6Hy9øH\'ýÂbüÙ{ %ž†;Ô™n¥l´Õò¨mk¤1Šßû»È¹!¹yW(Hü¬1ÍHû2a0ß\\4@Ì¥²²Ùð›6Ûýª¥m‘‘Ôß\\BH2Xùn@Ì–UåŠ‡”s8à¡¯Øf@ðß³î¶àYÂ™²ë)cÕøŽ“@HRêðc\\„&ïf°y×áìYÖÁW©«b8ã[º—ØpN„Á\0ß|ÓH,Ä³Î§± »ÓUº@:f¿o%”iÁurOÒdú½^hH)›Ò·µ°œ­Ýæ€wÁrh¸#ÑœÜÌkÝ‘w¤Û¶Ò|€H)¹dÌiÖ¶Zú®¨*ü\0â&™;Ð×½RU{œÔH)2ä›ƒë‡IrŒØ›²•mðiŠ6ã¯í ‡­-¡54HJ›È*ºÈA€X…±À%ÃÊyk“ÖtÊ”I6èJi-Vø,øH2P×äQMïýmïx&”VÝ»[[‡È1¢.*BàôH,¢¨ãôxð–	ù±\nÑ¹ƒ}Oè8À×V·_,>äJrªq»;«làHgha!ÎR\"\r‹ë†àp˜þ-áUAÉÄ·—ÐçlõdlLÄHwôŒòe§êLûi5w‡Ðô¦s\"ú	i™›õ×JÑÜ]twå7^H¦,UÃ,W†–?M&•ÌsÔºŠ³.yêß„:˜EŒt‘ú\në¨mÇÀˆ›“Dó5Öúc H¥ÌeºÆk¦ˆŽ2éUª–ff\ZÄöµUÊ(e¸õ#Ëù³‘@U÷vfáÄYÀH¦È]A¤1\n*g\\ŽÝëµZÀ8·) þ[FÆè[Ò]=Ò’bˆYUBH\\\ryu&^ÐO¬H©]K/à«ïT–Ê¾òŸ7§¦ë;Õ\nÈÿ,L úÉôñö>ŠÄ$çò,bÄûì[8‹§¹gszH¦ZŒHÍ8ÑGžü˜žNþ@ƒ»,Š+/†X)(ðâ`¥×EîÝþFÞ$qD¤Ðç‘PxX1ÀH¥,J½Üõ‘Ïå³ÙÚÉbªmñF+ÔLXàn¢â¢È4fdæ—ÁœuO4RßY¯EÞ®ËÕ­H¥VÏ|ŽÎOka¸B4Y›ÔÁ.îE0T}lAÛ—–Í\'Ó¢F¤µË4âà¾-‘—ÀH¨mØD\'‡ÄØîZÔås¿¯²Êyÿt{êîoî$¾-®bˆlrÝÊË&·úF]5‹¼ÄH­xç™s¢éŸžŠV1-Ì”‰³Órj4’ã ov°WrEÍƒ:ý›¾;##äHHû3\rBI@sö€H®«©ñ¶âVHŒwöòHAÇ¼öbBÓn«g¾RÝZÍí«	=šZ˜~d«¤«1{h©í1VH®¿q5i«GTæ4‘<.’mBS]û§7ˆ;vw7{`§ms*-ö„ý±\n»Ð1¶úH˜´H®«|–ÓÌêw\'@5‹vlç[.K8Húe3”\n§ý¶USçÆœ†è0òHÖØÀyÙë=j˜H®fBñNždnŠlQ6ÍPÌ}Sd/ºÆrºuœ³ŽmÆÊ™éÜ%N‡<5«\r H¬ÜOqÐÍù¡ÛùÓö&Â<H#¶Ó|íÐ¹ÒB“áËŠÞîhÜ¹Þöîmº˜PH­ˆâAnÞ™´Jdtß=&ÒØfÂVQ9iSÂ\'ÒJZ²‹8þV‹û9Á¶D‹Žî(IH´Rˆ]®0³*¿­ú¿\Z!ªNz-g÷Â?T¹N\ZÀýckxþ‹%zIb6“ù—”H·÷Û!øÎ7¤ß’ñ9ÈŒg¤zÒS?ëÑÝÂ’J›ÕþÆÓýtòº¤¬Ra4bH·ÂÓ9øL¬tõ„<ÿØ…{ïAû\\Å5ˆ`2ØqíásDH¶Ÿ…Ôï…Jí:Fþ•¶¤§\0šý‘ÙÿžwÌëƒH4êñÚuÎ@Hµ²g” ú™‰º›þ&çf]È–ì”Ía›US8BžB¹»WÊ6ð©±ÐH³&Õ5\nÞOKÏ²Óg+¢\"7…t!8ã­é ª\'˜ƒ•ýõ§°µ5a2;L2Ð@H®ûd2…<÷*e^¤Y÷9øHæåpüî)œ†*\0âÐµE‚éé‘´!Úëù¼H¨ùšr=—\"©~>xd¼\n—“RÕÚXÂÌ»Í‘jý‚ª\ZÓÍJ_F¡×µH¥÷n…å;)0ÞE ]¶û£#ªó”‚Þ\'£9Bj`×Šû\"òª%f¯ë¦õUL,ÄcH à˜ß\nQ©dì¼ìÐ¦_”Õs»$(;’Ãï-ÖêÀÈÍú…VVMª™Qe}”•ü‡\\HžŸÐgy®sLÇºGhge®|Ò2²Î@ó¼^:Ç1 Fs\Zh òÏ×áÐ±„HžB\'tvTÅÛèem»ñ‘t{¥{> ÀB_ùÊ·#´wJt•„äC‘eæ™ºÃ4H¾íŒäéMœ°„–§[C|í‘R–—@(§hˆ$ÑóªG‰(Íooý– ¬ç8¨§‘ô\"\ZrÏH©à\0¤¿5Jmâ•y>ÖCÆëÓøÕf•SjùÝOÊàU=?\"¡	~çdÚ~1ðZHÁ}ÀÀHµQ‚/Fþhî~!ì^ æ$#œªŒbs¹Šûû°#h3nƒ²I\'ziÆÔmr]Á\"ùKëíHµ:÷—§:á‚TøoQ6j ýÔç±F?ÜšâùÌÂ£9¼\\ª;ä£–U€OggS\0\0¨®\0\0\0\0\0\0\0\0\0\0\0\0¡:îêS+&,146@8.34,0(++$)\'1))$!*!$% &\"\",271.092:74733-.))-&\'$$&%$$\'\'++++,\'\'.\'$%(( $&$#\'%H¶G¯Gp\Z¿Ç\ZÔú¦ç0åƒ¯¦—‰nˆçj>•ÙËhäÐ¼ÊHµèÊó £Oßò#•3¿)Øb·ZopÄ¸²¶Hµöër	q…Ô`BhýA+êùçª ç5TæW•©?ý	 H³&þŠµó5ÄB„×.:ù;Q‹ÝúgWl£yQ¦R‰šôjmD`ÙAüH­ù¬‡r¥¾IºQ7‚/¥ 3¶Â‰í²âÇ, mŒ“sá°þª¸µé§¨ì H©“Àëá\"ªîÏ0…eº¥Y^º\ZÝNH ‘z%4V-›nP8ÛïœI\0d›Ûö?ABûq2€H§Ñû‡„ý‘qUÓ*\'“@¬½–$ é¦_QßoøÃ†ùÆÉŽÊpzt›€ÙÌŠbúèjT/€Hª1ê†þ*\r7f1»¨,LƒáqM?J\n{v°Œ¼e?\rÿ\'\n4•Ùk¼»\ZšÕ°{ñ++öF¿oQ{ÞmÉKH¯Ï>¢Úu|9ðÚà\Z%®mî#ÜÙ­i1«0Gò³_wR×·¾Ý2$”ZÞv;  šðé\\8º€H¬¡upúÑ$Û¸&WµaŠyOuÝ‘\0½¨W™^¼„ãtlš!ŸàDß°Ñ`H¨ôÂN›Úï ¡í]C¶~rø5ÙêÝfÀ4â¸dL»;ù´p9žš¾|ÈÌ¥ H¤çZÍ­•®÷$Bú~(±½¡Y\'÷eùKÖêÞ8{Iª~¢þ½÷7Si”¡\'G/ŽÉmx»€H¢M¡ážÎuqŒhÄLc°õYÖ,(¾«9ÃÏéÕ8$?€¢O¼ÞºãšÂu€HŸ—Å‘ó!@ÌƒïÑysÄIœ¡† ó¶jªQxŒm[†:Þè°H‹Lsœv3’É¨—ª#Åðû‹ÍU¸;Úº¿Ÿ—Ã‹Ñß\"ü¾4æHŠhR%*Üy8ß—{	$ï\0¯ˆv´\r\nr¥tïâØêÜ¥KÁ·zT\n¸\'ˆå[€HŠS2¸ÝÓß€ôØ4¢’¶Žü¾64\ZJt’¯c&ðçq	º¶À•€H0«JÔßtÍïs\0ÈŽu‡÷/ÈÿµînŠ{$gN?+…¤ÀH¦Y‚«â9‰á—Œ2\nA-}×‘Kx`ÊhÕÞÄöê§3§Ô:f5/ H1kåfa:oÓÇ–Ûš\r(•!Z*úDt¹ƒµc\\ûÝb—øeœÕ¦H—š¤0;¥È[×Êçg¾¾`_«Ò¸œe²=$j9ÝtZáŸ²èè–“ã¬µ\rT€HŒãpHûÿèÜ«j]6©qW·äûµØ\"Ùp``÷\'áýÏ°6÷û˜H‹çù$ù gùÉ0Í,€­µ¥1]žøž´´…¼¬b^Ñ)P	x@H‹7‡û\"CØ×pƒ¦H4úœhAÞÒS~c°X˜ÿ·üH.ÂÉƒ«ÑUî/eì<\06<Ýƒš,@ö7o8»5¶+‚¤H-vn)²~m1ŸòÔV„ÿf‰H™´ZC™“jb)\0w›X1€HaÜW¦QüÈ!â¡w*ž2é`Ú„ü¹RJ>¿ks—[^H+B‹óc¤3M¨¸ÀyÍåïŒ#Þ Ñ0Ç~g--•	å°H+†OŒè2ŸCQˆi²É¶`æúÿV•zKl¿òµ¢?¯}ÌH½•H\0²‰Â-“^Â4¯=åXn†š±ÿý£=H)T¬|X­Ü\nS /iá‡|QJ±Õ0>·ÇráD• ÖÍH\'›µE¹ò”ÕC¯\"Ä|QìÒÒ$Qký7žïYÜ*&¡|H·\Zîý@¶SòzíOm.b¡…T/ŸòVîi­‹€XíÀH€mÊ÷W7Á\Z«‡B*ÂzØ²â¦8Ú¨Ð‰†Ÿ-dq÷/c¨Ä,a2(üH‚*¦]¡ƒ\'W\Z¤q˜«øJs2TÉÎSIïªé6¤>ùó1’WˆEÀãWæÿí3ÅLøH¨ËF8¥ ­Ó	!o’µíš‡ÿB¼Q`–.¯í•ª;Wtì8Û†\rç‘öñà´¶¤“H«6]„®Â’Š‡óÍù®ú«ÜêÚµ[Qmnîq³\'toïÈÂÒ<Í‚.T®÷³GµÀH­%l\'Dx<±ú‹>êà„ TN[°ê[”\rîzÙ:¡ÄáMO…ÉÛGöäJH®*ŸjR†ŽmÄž™íEÀßøZöºxÎ=jnx -º¿gngÄæÐË2‹rsã 2€H¯1\'UÈ•³	ÎÂ`>`tAm4¨qHzÙçÚ¿8·ˆ3\'­jCc°ŸOÑÔ•üÁ½Cœ­ãži4PH°;oÍj&‘²P²|\09é·8\\à—`¼’¸Û\"âg¤TÍslÀ¤O¢{ áÅPH±ð„OX¿úåØXVß•òïD1X¸<º|2êø ~b\r-Euà–­«p›7éF·z2£&M H³«œ¥Ê¹7…44ÑT›žRG³•7³2BwiI‹Àxwæ¢òe¶\0ØQ1ª³Gr•ÙÐBŠÖ°H±åQÌÃY6î´ZDuüFŒÚ\Zrv^íÎqÊ0vš¦™¸zî»€-®\ró)9•„FÒëÝŽ¼H®xì‚4ïNaqdiìV\\ý¨ö&?ó¸i¾G’ÎÓ2|uù´ä%ã­]Úç<IçFÚlv\\Ë°H¬ŸæúO¥€Yoø€g2<¶òª/Un’ÈˆQÕûØf	ô¯±6Â6Õ¸ëÕ ‡FãH¦gIö½§\rèE?°›Ç}ÉÐ~¨šÄ{{D`D4o7ìŽ‡\'ï÷gN§’°×„Ì¯H‚uìdXòôŽûÍ‹Û ì\'4øúZ>@)ãÍÈQ¼Íp!¯«ì;Ê]NOÀHŒüØy­c¾”Û{üßí ‰8Òú–¦F6¯ àR² uá˜U‘^Vâçuwµ|Hàk•€ÚZzR2¯§ã\"Uà2õì)[ e«/î¿õG<í¹ôgH|´H¯/añ¡”fô¥§;Ð!Â’íÃ¥ÒäR4N\\ƒ¡œšÉÿ©Sü·^¿eH‰Ü‰ìÅ™&øÀÍô«­$Šo˜¯Fg¼Ó×0 …­í` ˜‘Æ¿ó’tû€H‰0+0ÃÀxÒ¦[ÍÇg&ž<ŸÏ¹ø¾ˆ˜o-Uò“‰•€H‰%\"…÷ÑÙ*/ZÏ$$Û>¯³œnÑ 3Á™³Û§rõ\nêDù€H-myÐn€ì\Z÷«Üc€þ<™¢›\'÷+÷G´&“4YëHU âH_Eâœ¸÷ýùz\rŒ-´¹‡:Œ,Ûãë‘¶[ÁäH+„™ºSIâê™ÐB7áÐ¸_ÅÏ×,Ö—]â÷DAð–iEüµCH+„òÙ«y¸/}=´ŽÉ¸wzë¿ç2îÌ”älàH*ñIY¤J\n±a#n(ã[.¢ò!ÆÑ¬•XœÇWÌ¶=¬“ÂHúÁjä¿Ö‰a¬¶\n¢®¿aC±;§65²ÇÓdïŸ¨/d€H*7–ÂŸ6åªC6&¾«„˜$ØAš‡ýÈ–¥VW_ûFuK‚vþwÀH)¤Êaùòôyë¤{OY^EöWCØ˜–-wPi. –9»j—ZJH)¤Çíœ˜ºz$6ïöÆê-èàu®WW\"¨õ¿×àæ/hO?ænàH)¤Âð¾VÍ¼vÙÁh«¹Bª®0²ÿÚÈÿDÌ.ÀWˆ Œ»1EgÅe€H)¤5<Ðæ¤I§çÀŠ³A‰qfãŸG\'|¥÷‹ZÙ\0’AèƒjÊ¶èH)£¿Ò*hu7–#:ƒ°yÈC\rF2 ¯ÕÝE°6à]®]EflPÁÆ_>H*5ùWð¥lÆ¿3\"\r©®#°og2‡ËëPþ[1ý0DrÙ¸²¿½ÅF‹H*órÓÊ4Àiµ>£s?{D\rAíuÖ›ðHÍãØ¹«s”îYÔHùL§(ÙÞÉ»&VŽ/—ïú‰B_Ò[~5™õä»ÓšæØ\"©¡¨Ò|H)¤Ãès|ÜŠ>RÃÙML/›È|dGó¶S¼zŠ‰½•´\\k$öi±@H)C0ojâTIÅ­7‘$C\\¢“_\'Äö²›x%l H)ƒÙ½6ÇA=†°1#¨N#\\^G«²©Œã”Òº—:ªÌH)hÎ ÊœQ»Q»€‹ed@acJñt|”^Q+ˆÆƒr}v€H\'›;Í‚®÷Ü€áj³KË\ZaX†ã©jNÿí¾xó©™a%kDPæ°H\'Ä‚¨n«HÊ1\\&0\0LÞï6’‹%àJSÆt_)X;QX H\'œçìœðN»L¼¸œcØ^4”þh»¨Ožéx`H\'bJ·¦ÓåÁ=iB±¤¢q¦²[3¿,ÝNíÿªH$öï¾OqÊ°·’é)™§ê;\nÚíê€]äF+¥8\\U~¨½UÐH%žÛú·‚,k¡Èã¥iO/pmzEÁzÊePs5¼y;$Nj×ØH%*Š·f…©À b<Z`3ŽQ2µÕD*ò3Á‹³è-ÀH%Dé†\'„˜‘[§±ô:U_0ÿäŠŠnðËÑ-Gë(@H%)\\Ìý6ZÌx| «úÎuóßlÍàØ°6\'YVT5AQñºIÅHH%0ü\nÏGñG¨Žî(FãèM¢™Mnï”þ\0­P¸ó¦dŒ','Allillan kani, pai.opus'),
(25,'Todo bien','Tukuy allÃ­','2022-12-0515129964251Todo bien.jpeg',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hY\0\0\0\0\0\0\0\0\0\0\0\0úˆù\\%%(&()\'*\' \"$&%($(0.+*&.-++(,&&,)&,(\'(4532762;/256830)0251582-$0-\"31-..,3.0144<:/6102.-2/HäÁ6ìÅ€HÛ—ÒH•\Zý ¼È‰÷0ñUzôàH\n×»ääÂH¸Ó• e¡0¤`\0½ä¹Ì¶‚±ôàH†jŸÚÚlÐ+ØŒTP7diŒ¯ïl>Ô	Q	õæÞWyZ H†Ò‘þ‰2þµ:»„¸Ágê2“Ô³îê‡ÇÙ]€×À†iH»ÓZ•dñ?\ZÐ^póÿþùçVH\r“!Rðb6·”¹7’uHJœ9„çEž‡\n^aa=HŽýDÄ(Ùš„áhòÂI±×\'€H‡\0âC·Qœq³Šõ\0éˆ6O´{hp)*-íÖ½‘PÞâÛoå×H!ÏŽß Àã0\'0SßÕ`Û­·xù¶AiràÉ!íEŠ7tÖ/O8ÊH\"c÷ºÛÊÂb7¬.‘f³#PõS%ÚHÒ\\É\\ØjbºUò@H!ù’4Ü‰õ¶{9$©¸ì@ùÆÞ!R¦ŠrîyUbMSÝ†P.4 H\"{-ÓB&#ÛndIâå˜šùä.¸W,±«÷×y!ÕøÒ‹–^ÙH\'ÃÚ\ratZ°´²7øžÛð>¤Yª§¬´¹©’ÀF0H$¥(´“èJ{kÈ‚Ò­Ð¢{³F¹,7ÿA$²W3`ŽøH$¶æLNÝ¿7áZ‘ëaÞÜËje[ÌQ»&?_v~-°ðŒÇ(H(ôí+‹OGèž`\'sƒUÕXzbyµçì+ØÀtùÈ˜&H$õišZÏ|ð}oþ‹3fÜ\\Ï%..¥tïø4xlË¯4Ø§€H%*d!TµšÜŸ7ŸÇA3cÊÏ\n°÷g>«|Kæø÷v~í˜u<@H$šf±Ë706œÝì»¿ÌÿoêË2³›wïGJƒzì:²äH&õ*°z1}e5*;`~×õ\"­AßÚìÎ¿’kãª‰”£ü%ö`H\'ØSùÜj Dù}û¡‘:w@Õõ\nîAvÝq[vÍâ·ÀâÀÃèRØÂÿŠ6ï€Hõm\r‘P‚ådNYŒ.ûyÍÏ&ä¥é\ritþþñâãØBó7šgjÊi\"#%PH)\'Öàÿ×ÈÝŸ{xÂ:Îæc\\*Ø‚CŸIýN\r^M}/À¥¦—ž>¥<`H)Á J…áðóy1`:Jûí˜ÿú,é¿›YéuZz\'8jÖYp~±w@H+l·loÚœ÷öYÖÛç‹*‰ù7ò2n3t&”m’H+hNÈü+HK«®Mƒ&ÈƒÊWš\nFÖ\"­‡F©~X`ëûxLH)‰Ê{•P½ÇgÛêCt3+ÿ«&°bæè- sõ1ëÂÛ`ãTÜÂÒft¸?Ü H)„ô…ÄÚgS²c¹X+4@r‹$Ú}«n¬A]^TÌ.°r’ßWÙ\rLAýHH)„™\"U_YÀNÙ«{¾Î†ŸäY×“YÌÁÚq²J_¦ã”ó«mddH)â¾§äÞËÅiGýÀÏp©Ûz£‡TìaÚO#iW¬P^Å¡H+¯—â×b5ÝÛ“Lc™G`KEÐ&þÁ\\Ç´Æ×Äw\r[h=0H+Ô¯ey”UÿûØÇ¼ëÚp1uõ×;÷/39™®ÊÊ¸â\'Q{­Ú›€H/!Ã‚à^èä™î‰`/‰DNkH(ÿßF¶iÄºÇË,¡ËH+líYíæiO8í°& °‰ˆˆ”lÃ‘êè×ù.´®NÑ@H+gFQ\Z§ëÁü¼«µb¨Mhét^Pð!Áá+€âšïçoz¢¡µ9ÏÁ©œHo­¯s™ü¶Ï´6MH/¾é³NlÊêÁO|k1<c.ßG H2h”<îgÒ–AÓ\Zì$Iß¦Òà_K|…ëþq2øs`|\r‰›LH/_\ru– -\rJ®A\00kj{c¥zÐH€7ÏÖ’)Ò‰=dàB‡h#CH/?ÝúàôC›2)R—M?øÖ\\‹”ÎUM#æâŽêÔyß¡·–¯Z†õH/¥ŸÉœ8ro´Ò1ge!í“\\°Ä-²jÕ]C>hzÕÿó¥¡:H‚á_•±úÐp®SÓ’1&\n&\02#nãÒPç˜äçO^jod^q€Hƒ<°EÅÄÅ¿ßË\n9…\'Þ\\@ó\"øÓ Â!x€\"É\\qûe@Iá¤v¡z½;žWÂ¦ìXH«> 0ôsiü”„ŠKiÏ¶i—ÀÝ8IÆÜþä\\‡b˜ièA\"@Pè,ÙÊðOõÆE_¥1¸ÀHªûÊ_êßæ\0¬¸‡ïùphS€ô—_®Ö·¡¯pCÃíÃ•\0[ž;þªB“þŒîM¿vÒ\nH©\0ëC	žMì´ÿ³Ž‡›nþhdt)Ìç„óúÉ[ûAë˜Ñ&†ïçª“§ò H¥öœ{×À	RŸÿ½„\r¥*(ÐåÄèZàLv¹¸NJ¨NOCçþÎG;DÈøO¿k€H à&$¿VóÿðùÇèn®EËõWÀg{rbD£X•~Î8¢–}·Ý/P­‰°È!y†L€Hžºñà¶	IQÚ¸Õ±\Z²wIQ¿øœ½(j²2ÏqüSšä©@]ü·W{ÅŸ·vˆr@HrÍcÀ.Bf‹Ý66c]³5YÒ¬XÒãË¢%^nYæÈñ\0¼¤ýxœN¢b\rŠ6ÍÌN·¡>tø¦#\nraH5®c¸üNÜ’µúR`JZgÑ_³6‰Í›%ÛŸ7Ê±êÑC®PÏ¬ñ†ƒ	 Hœq¿Â2pÄ_ˆËÎÛ\Zo{¢\"ÛÈKÔv€²q:¥+cBÚ…\n®‰¿,t]¹‹\\y€H¥iÍÐòM”Vùã.[s<ÛN%Ñþb´Ôp´:»¯JÚüða,—Ü[üÊiZý‘”tRT\\H¤˜X­¸B0‰üµŸw®÷voE¡´ìâÁ	ÚdU7AÿÖwßý”¦Meòº¾=Ô¿L1‹¡H¢ùßU™¢™)¤”¥5ÛÃï§wXèÇÒª-÷º6¾ÐüÅá¹ù#Áá ƒýO•«ÛNÐÆH¦ÒÁL¡®|;ìJÜQ–¤é\\{©¸Jú~ˆì?[u·`ñº¿ÚM]xû+Þ`°Ä¦Ê;¨HªÌo-¬ü>ŽLS£žÄç¨Ø¡QsD±¿=uñhûqËëS,Ráey	|Ï@H¬ýa·ù‚*…¬âmÁä	úEhÙÙŽÑ•¦àŠŠ$¦â]ú5índH­†˜æÆQBüO®“ît vIÀjùG1\0¹x¢Šàñ¦¶÷1íÿÌA·ÝQ¬‡H°ú¹–G¸Xûÿf­zäNŒÈ€îÌÎÁ§m8œ¸\n„ RÏ\"úååM	D2[`H³‘:Îør9-mvËÞ¤‘¨‘Í‡n…KŽŽ“úå$6/-Øó\"Óò¬ ó3ôE£9T¹°H±a@:?+I>¯y…ò ­ÇìçéITÃ	¾¼‡x4*jÒ½ä1+âµÊ÷´H¬i´†/HUjb¡ã8áÈåë™DnU_ØÉÃ\ZóD£A3t¼1©#eß^ˆ\"\"òùYïãËHª—ô·=o×µ×Â}\\Ê@DêA|GzÆ!ìßu|ŠfÊ?Ûõ€ÔI–µÇkvžŽ¾åõ,;ºñÙÞ×€H¤”ÜÅ”†6 NèÓéñE\'4US*;=Tuÿ™*jå€—\ZM%ì:¯þå<H½ëÈTÈù;=äÕúÊ\0ú(iÔ%KÉ¨á êLa™ë÷u4Ïæ]@SŸÂ6¾Ç$pHŠàñËšOãg@ªôáÐa&ÅB%A”]ýx{ðªiNþmhŽZHŠÄD€IE_Å3?â+x—¯læ€^§ÖmÏyb‹cJ°ßÞ~È/ §—d4°i˜Í\r H‰ï*|[HGÎó1C!wB=WBL&fM¤Ü,\\!‡8ò.\n:µP‡8H6ZÍ­æx?`—óšµhå¢Oí½O9sþ@ùDU›\0#zH{R´Gq¬,do!ÔÃ„Z!ÝßUðlá¹“éìH¨‰ƒ½ˆ<GVÖJÒò;\râé,pHŽÞ”V>˜/Ósx×–Lþ€S£ù‡€c@wø†ðv”Ö)öÈÅ@:rkT »¸uH„#ÅZ|WžO‹:™}¨—É±bu]\\](: $…*?ÜÙÚ)jÂVV¾f:àH¶4Ìãtvƒ1€í-²Ý©¯\'ˆè¤p×w×ú+< ‚¬üã–ÝR;g)ö@A€H¶ÇÖ(2r‚Ñ_8ßr\rwÉ9Ug¦…¡Imeam?×}á,¬hã¾ƒÁ)0Hµï“ý\\\02ÉÑÄìÌ©z‡7Îys†Dø½Éd0ã;!Ts\"IƒEŽ3câÅHµð<d­·»—ÖÎÈù-µ†œ6ºóE\"¸GsŽÏˆ\\ÒÊò˜3\\v³?\0\0§æä`ÔH¶á!$„­Ô£¤0¨ÿguì,AÌ‰¯¢øFýfŸ¾ÒÆŒÕ/\rã6Ór€H¶ƒf)äÅ‘Å7)M¹c!Ì+<7RNéÒ‹çžß×/ªŸÄ£o¾ÖøØ,<²H°f_pÄ–=óëó”¡’Ò±~î}7AéÔ‹~aÉúz,R¬a¹ˆf¸Ié‹ÂÍf H°+³õUÓ‘Û‚ÛFˆ×|ZÉ4UÀÃ}i“p±uÒ³[;áØÕL\Z¬…|?U†¶?¼q H®rL1Hþ3RxÄv¶ïŸ7íÉb@`ôØrŒ‹˜šÐu;(í7/îFµM\r†˜LH¯IÑšÊï/œ-IÕëæ€¨½L5¡ü	pC„“ã;‹Wh\"YLÎ¨`jStsÚ´HA,’¹»Å¤	0H³Þkëa ërW	ß]tœÊîçô7îìÖxÃ(Ä€ÔJP––	f²Hµ%!Àƒ?—ª?˜¹@H´ñ È+Â²hÐ(‚U¸O4\"¾b\"íÔîýaàÖ€k´‘VŽª]YÆükpH³ÃÀSj¬QÒYa%Triá)7íEùª˜¿ ^Am¦G¶*ÊÇF6FÓ1.¥iù\ZÞ H³›ƒØóø‰ù=|qz¶Gë‹up¸€l¨f€Ök½7¸ê6@õï|ü„hÛÔ H±w¼¶ã ÎMÎ1	–9ÊÄD~\'§Ï’Ví`$põuo*g{9–£økér8{PH¬eÿÿS4t0%}®­ìÆU&áKàèÉ_;ó\n]pØ,f=0&ÝsTã?“èÝ¤±ã(H©\nÑ¹Þ§Þ\rY¾Œ×ß÷\0Èã1+u‰læ2Ã¡p80jwTÑT»i’;øH¥T¬;{ïœ‡\0jEŠð$àrÎ=ûPhÊî±úqÓíƒXŽô”……Y`H à%«½HXôÅûoßH9»ü‘-Kõ?yûZÞ+³Žu¸õ›ŽšÊÂ]0¯io…¥ÔH½ç\røÈ Š\\dÍ\\7OæD¿à?	Þ¢ËLvG¹r)õ#\r1V™s*èÀOggS\0\0¨¾\0\0\0\0\0\0\0\0\0\0\0\0@v‘&$!&\'--&%##%&&\'$%\'$$&%\"\'\'(+H6~é‚$lÞ©¾jç’EA%L	ŒzæÈ>„´K»ómæ_.äbçÀHlñ1í¸(©7F5ö½Ê‘ÁUQWøNŸþÃEUô3fM\r„H6~Ó¶#CzýŒ8‚å$§fÇ¿€ú7¢1dP*ÒßUV‰•H6‚Ýò…}0×î&šŽ\0ýQýž|á“«xACâtÝ§¦—ª„:W$LH6iÒV0+\rJ„LŒ\n/ïk6rï”.ç…ZÊ¸ÑEàï°í?À¹XqH3Í3ÁôÉâï\'`êY½˜7h˜l•-e×õv(ß¤Ä<r„ÉiàH‹×Í°d§IjLü–Ç_/GiÖ.0®(Ü|†-–¤×v„²=&»-iPH‹Ût2rÛõihU¹È´kì÷ø\'.)x’^ðº…CKšä¿b¦8~H‹=>]z±õ3ã¸kßdZ«áT«ö|Ú±ð8w¾™7Â˜ H4vŒ!¿´J/^`#Áç•ê4Ž¹Ä*?sw2>HKY€H1%©˜\"ðôkß@CŸ!˜ÀÏl`Î>+õ˜4™°ç\nG€H0è FZÔã;¹uÍ{jÿ·þ»Ðr“µÓ³0¶6>\n”ÿëÊ”ïØŸH-ýàóy…ÉÖÔŒõbVôˆÊÔàõà†X.(Ö€at«H)~_?ø\'Š¤É«¦Çz(8)›KK:l±º*Çk@Äˆ•CH\'œÕ¼¡þ½®ÏWô*ú[s2¬4‹\"ø—	\Z=i†°¢ÆWZ€H\'»‚¿•^qï¤Ø±†£gŠÄÔû@ƒ2±Î•K-/H\'bJ¸ßÖ•}\\>ar>ˆz.Pó¦xHªvž(ÂúÓF;Å¦×s°H&i¿¾*F­}£/Ë„\ZÍy±E×hFHÝ\"ª¸V@H\'›H°\'¶Iƒ†ì@Þh/X˜WX9 aÐ…ñ8=Pç	+ÎH$ÇÂVóÏw]IäYBhK7Í= V•NìÿÍc=¶…ù·H!ÏŒƒqÃœˆOÈ\\}ÈƒÞQmîS<|[\Zþá¸9Š*$í§HB!OßvÉ©œKJ‡¶èÈ¾÷÷vË¥¨N‘-lòÔ“‚\0„V`H¯<þº0º\0Ò¶xf}³gq’\ra\"æo+‹ÿœî.0®H$f€ÛDµhÑ3‘W|µÂ¢j–Ïœqª·,s›‘©ïõH!ù”ŸGrío5s»”1Æ¹Ò·¦ à’È¯ÆË@ëç“z´ëäUØH!ù”fr~áüi[^L£é¸b¸/wo™`3âwú‡‚GøÎ‚\\f/ŸDH!ù¡Ç´·öcÆ9ÀQ£PÎÞ+_l]êQÒ4›ç• TÓ6—,€','tukuy allÃ­.opus'),
(26,'Todo va muy bien','Tukuy riku allilla','2022-12-0515144634844todo bien.jpg',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0vG`Ïa\'\'+\'/&$ &%$!%**%&%#%!*&#\"\'#(\'\'))\'*!!&\',\"$+$+#%$%41334955416<40,(+/50@<6.4,3;.()/32/-7193)\'*HäÁ6ìÅ€Há<,r?±[˜±„ðÜH€¿1çkøà­1Ðøÿy¬IòŽZDæŠW’ØÐäH‡f;\néïmrX1¸ù›é¸Kï´¬<túX³lyÒØ·’\"gèzðH‡ ¥Ö@ë-7¬—ôõblÞÂ‚ý…U´Æ”gÁõ¨¢.ég’Ä´ôˆH‡.çÿÏÓf0=ìèåå¯I/\\;Z\'Œ¨ÐzÉa¾W„J6#ý|ç ÀH&/ƒw¤æ\"ÖMœÇEì©åŸ_EjÑi»ýð¤v‰6]ü²XHˆåÔéÉ¯”s¯oÎ‰í…Ê€È]ý–p4ÆŸ› 57\ZÕ¤q2pØmò—-XhH€þ¸‹œœaìÕF†×¥ä	¼={î€è«\rr&p×ç‰yýH.\0ÓÝFæÓµ&õE%>Àd]Í¬„6%²YIüž“Õæc_ã H/i6»X\nöËTûr%ÜˆŠVT}i `ƒ\"Ä\n\"lH§qeö­â®\\•/ÕVMP€Ã1¥œm´½FBcf8ÁÖ³	ŒH.øÁÀ(dP•?MÙ&þÏl¹$ž+zôK‹)sº|	r€(égî€H+NL/(`)/â${õÕå”süÏAlÃZ=žë4oÞH)Lë¦`*?:þsAGÐOPbÇþ(Åñþø8H\'Üa7l¡EÍŸžõw¼âi’ÍnLRãg5®6Òþ73Ë`HHö,)8Â›í¤[Ð\0\r+åïÿ1G„Ô[5ðH\'›H¦«ç\röÈ,ÊªxaÜRln»Ëø¢TÅ7_„Œ!¨·í0™KÆH\'¼0ˆV˜<hƒÑUá¡‰Ã\\ut>”­o~Ãî1õ´9vÙ x…ë§Ñ§>H\'•5¯xJñ«¤_µMäðf»/jr5Ût\r`å9!ß˜H\'¼0@â˜é†§9Yolô’ã,“\'qñÔ§¾Š½ºwç÷+,#`H\'›:Ì>úƒŒqYˆEÙ¡ 8Etçº\nZNO)=\\&¨ú{ŒH\'›>Çkk¹NøÒSË0ú¥’7ì˜|©¾›Ü”uJ±D\n¤H\'›@4îÔ$óƒ§q„~§× ö³W¸U5 LH&ùÎY\rFn!ÖjF£ôòpöÌ­ßqÎo½Ñ¾2—˜Ó>1ì	ÈH$ôÿ™bàÅ®Q^¤¬³DcQQ\náfÁÀ¥¸ôœ¶HH%*Ñ²ótM%ëÛîTïéuÙsº…¯e$Ÿ~a9FÍ?_0UÓ¨’šÜH%ô=†ê±¾ì÷Â™ÿPÁ=oMiÍxGÕ›³»ZôaÚ½Ô^:8HtêÝ¦ËäÕ|Îÿ˜º²<ˆ91ùT¾Z¬AÎÝá’ª›ª‘ÌH$ô†6lÍTÝ ´Éžw«R9J6ä\rvwÕÀ|aUŸ/.ÀHw§×HvÄÙ<Åƒ/³Æ#òuèMæÓ·™¨ì\Z¸Ë²J	WàH%ïÇÌÇ±¥Î¢á*pc÷í]\"ÔËÓõÕ™jÛ.q§ÇÕH$õîÞú›øe]+üÆÏé\'£ˆæw8Š’ÌÈ´‚ÍõÅ\ZÌ#Ö€H%ÁþÛA—¿~@ð| †‰ß` =î©/±™ÓÙúÅ‡²q«Ì€H%ˆ¸	8§óŽÅ¯—mçö‹rpIÒ%8©t\'ïæw`H$ôhú;C·¸ó“!ÍPñã›WŽÿ\";i\'\0É)Ôº8àá/qHH%ŠºÌk÷;ù¼ˆNŠ¦¶éw6U(:N^Êç]Ñ)KzÓúü–p˜H$ôM\ZÞ	wÀlîMžÞÊ¢µÙ²yF¾yuØ0C¢>|œÐU0H%9®«Â/ûŽpz¡Á¿[“}8Á	¥Ïn}û÷³¬òã»&~6{Z H$ô“&\n„È«ßÙì\'–FÄ$\'‡1Í¤pÇÚ[Þw@H%›—PCÜ;ï9¿“ÛØ¨§tø/tU¬…«–H¬”°’ˆH%NxÙÑ‰ô= ’ix„y‹&ã’O‘9X¿ú3Ô#ªØ\"¡ H\'›>ÑÏNLqíž¥È+]M¥`qŸ¿ázH%ž	i¯}®ŠÇU2£Ú¦÷ƒ½\"E4¶ôòíô£ÏùbhKªgÇ†GHH%žêƒä÷.¤\"	8ky^ÅÏC_niÀq3JZ€ÊÒgtÚ-b¥Y%&ãH\'Å:6¹+aÙ:¬zÆ…×ü3„ÕvBág…Ê$u¶M€H\'»\0Ø|MhóèXù÷I‡<„)çÁçè0T_ª×+ý’RÃH(\0¥”#-N”²€ë¼Î\\ ãDq“i¨3lÛV*bão©¹“?Ç_VPa€H)sÿ6|}f¤lCsõ<,Ö–¸,§½[Åzy¼*ÐH\'›6eÈGH!=r+Ë“\Z¥‡y7YvÅ‘…ŠµcÆÓÏ>0XW4†PH\'³#ßÌ}¥î­E€Wxy¬œ_@îÁöïñ®HSJŽ+GN­CH\'›-á†EÍà2(Àmpe5Í±Ñ®ÇiÔmÉ8¬Ñ¸™äH\'›Ío§Q\0;mP¾*„F;žeéÚÒ¯n³V±þ‘‰ðHÌ«Û–•¿”ûcÒD¿á¡}öC@Ü„ü5#ùòž$§Š`“Ï@H‚ï„Q,©GÑ‘@˜ŸQ{Ì<8Cr‡ s?¯=Ñ\nœÓ];\n‹r9ÕÃñ »ðÈ6T>$DCÀH§[¡Á‚Þ·‚;t&ÇäÍîÖåq®®üÚ†>YY§U`Ž=`í£¶­y4?«Û0H¦k2Ö¹¾ïïØF_vŠ ÝÔØ©‹êwŒ/[,ÛÈ\"wCã\"/,ŸëÌ:íò‘\\H¦RIî†ûô,r45ÿÒíƒÌ`>%l\\#<[¾}Z#ì)S¢´?¼¶ –é­°~?%l3–pH¤Ý\r!˜³_ùj Â¨&}yw;â›r]!Q2¼¾tûmP²h#?nb¡;H¨H¢\"0tœ[FK…*r½PH}•¤°š\\ÓT¨zÌÄ‘ V\'Eaß &Ó¼lÒT<rÄ.M H ÁnÖyÅï±ÂÒzý’)õM[);ê³±Mô²n£Kºf\'û\'”WËùckšY‘k)—ÇpHƒ²þš>2„ó\r‘òw%;ÑÀŽ78™^aÝýÐÂÄíqÄ¾€ð³‰îH›õ%!GKïwÛêÛ\r+4†ÜðHq;;ê/—|Œl3­¼ÝƒwNƒdŒ±è{„5£Ó€H›»µ$‡Cà%äYåMK	ùÀªq9OJê ˆ½go¦5·o©ò-…âì±(0ÀH£FK}\'«›ÑÌÓKÝ£õ¡&0Ì‘£M×ý`ê4÷LQ˜	F³	T°µ3æ5õŠX#©àH /«á\n“§öôÐcå°ˆYv¦­—¤	±½w¬å$³©–VÔc_¡$ä‘Õ¼i•Es¸•»Ô§\\lHPóÌH¢ôÀä\ZQ ^&ƒ\\á›Ç©I],¥Uáþ\0£à“H¤åÓÑ©{!¶‰,m}Ã“ÔN¸€H¥Q‹2›:uR~DŒ¸kº«óƒæÿÇgkjÐ-œÕ¶‘¿ÏzÚTzsl H§çþ·ðVBq>Š‡Ó÷š\'[°ÿèe)ê’P.OG¼²Ö•Þi™¡èH¨eíU­6~ß\0 _škŠ‘%ãû§ß×€Ÿb\r?8dÆN	\\ŸPXH©neX±šÇÅÚå÷ÎÈ3š$“Ôïð˜âÕ»äÖwÇ@¢”Äyx“¯H©‹EžSXžì)áÈÇfˆç•hHÍ“ÂƒR\rßC\nr”Ï¯b¼íÇpgõôOÞU€H«)µ´ü•eèL9â	¬ÕOÒ6³0—\\%Y  YÐbè[5Cí6Ku êäSË Å@Hªú‘¸Qf³¾ÁñhÉÅ®Ò+XÃ§KÍ¼ŸíŽŠ…þyÍ‡\'išZÕâCËô]€H©ÑÇ?ðcøv$¸]Zrìðší#ÍB$#ÚÊš5º`Í\"eË©·`¤®öN‘ðÀµ§  ËÇb7@$ÊSŠå€H«\\Õ{M\"Û!BíH<µØ|ÐÀ_?r\0Õ	ƒ‚\\Î<ÚŸû³ÏñíÙÚ“Ý^0õbï}žDgÒ„Pü¤€H­†ßüõ²áØ‘!KNb`$þ»3´™¢ËŠI\0ÿÜÉ?9üR€³3EOÚYš.l(¯mXòÉ@H°a;ÍsBZÅXóx†˜¨­ÕµçœiF¾‰ß›|@ÕoéÍµ‘DiŽ	×çª$H®	é¯L¬ œó²Ÿ€ê¾ï†“ý”ŸÓöM»qéeªõuÓé`í&E§¾BÚTvƒÂÆ@H®«®dm~òT%îÝB¶]$öú6SÝ¯TÁ”»q€¸Œ—$ÛãÅ°@H¯\"­wÿWag„0`gÃç3~½,WËqæ\rUg4¢ÓØ\0Å\0”Ç(ï‡ü¦’:ÆjÙ@H°=jmÜÂÐ*º‚H¿ñ–Q‡£loJ³Èªþ5ŸªÂ¸]¹–¢³€9çOaÎÈq¬yèªŽ—€H²Ÿrÿ2%Îpkwãas·ÓwApô!H’èö!©Á£/ (§µàÉ\"}àHµ!£å,>I$_u\rg–UiÊ¿æž²dÓh ù–Ô¡=%@®ôˆ÷ƒÀÓH´ê/UÒÀœè[Is—7àSr›òyJLdâ’|ÉBN¢¸w’åoåÆäH®_Bh‹åä„é!oæ®X‘®‚£F3ûrõÁ8`s\\=tÍ€©«imxH§2¹Çl8Êç¸7Yö\"	ÂËs»Œ0­›¶õ¤\'ôÀ2ªs?Ëåð·)\r‡\\WË\0ò¯ÀH£•wm—ÔefFaªÍÂt4%¿@ãZÓ“(€ÞötåýyÁr¥«+Vl­’3qu‚:H½ÿé›U#†}å»~,ÙbJ´|ýÛIý‡SÁáÿ„Ž ¶H<‚áñ~é©\' SÄH½éy*bœŸw•<07®ÃQÃá®/?¶\0½ì™fw§Nçn,ŽNM{õÓ©ØH¤;ô¨“uf‹\n¾•ªœ\\ú¸­5ËÎÁWîµZÆÿo…Œç›Ø©ÛTí°¡wË]\'7\ný`H¾\'1?kÒÐéßM(hŒn†èVC7w@T»FaT¹,9kƒË5Œ@‘]v›=H¡Z6›™R0/¢µ¸üä¥}\\Ìº¥èyé†¸¶2ò¾™ÛšY„éQmŸí‰´}yëüôH£Ú[ž7ÿ\rqf0b½ÚòZ¥]¢­5ÐqÚŸ×kfºßKÖy$Þº¤ñ£\ZÏsžò@H£p{4OD4Í¶=Q¬<›|ø\0´ˆêm_@$N0\Z¯ñ¿86/ëµŒH¢ŽŸ|¡Ð|_ûü–c\"§gAÒUã¡C¨£uZ}+{\ZÃNÑm›IrH¢y\ZyzSæTJ\rÐ;µŠÍ@×{ëç]ñ‰Â\nŠnF[ìûóÐH¯[OggS\0\0(/\0\0\0\0\0\0\0\0\0\0\0\0ÚVr4652197/00\'.\',//9.644)\"-12510335:2-0\'!\"!$&(+-+&\"\"(*#H£ÆKž(“>j±	õíWt6Ô?{ÎÂŠÆ.FáÂÊ›Á„9I»–Î\rÎ½?¢A†otmcH¢L‡Þí†¾ôTÊã´œ€¹Àö˜Xí³‰‰+P–:oÂ-Óq!’¶À¶á¥×¯Í“€H \\	faq0BDâi§Ÿ1;ÉBH0¯sô^°®+´ŽäàI›·41¼ËŽ´,-wø^D~kHŸÚU\\j·sç~aeQ‚òW÷A±OFþc,ÿ°ïa?\Z™‚Á§‘÷æ°‰ª§æHžåF®R¾×Òß_›1Æþ—\n<2ÊášL]	/Œ„[£N(Ù=6?I—s8[áÃzù9¿ƒ’[æ\"H ^ô8ùÂU,Î›ŠYñu`?ÂOád=¥TmøJÜú™îâd˜ÛôäÃ-Ý«ñÿ@Ú£`H½øã|4,¼…®ô`««ËÄ°ä‰‡÷Ý”TMâ Ä=ŸS^ÈïüœÆxä#‡\\YãÀH½ä€9\"ægZé_{e€jñ|ˆ#Ë?eMó»µÔ‘C¾ÿUc$…qØÀHŒ(Ó7™uzðGÄ½‹£óœè9§Vü¿VDÁ«,Àr>vsVÀ…;tÝÌ¨Hƒ’#ûÆ:rnîHñÁBvNá}ÈZÜÊ•¨¼Íi`Í^?‚„€H¬èy4îÐY‘?*\'sóÃg¹”\\™ÑHf²žÐbbz‘Ãu/üÏço^ôjŽ<Öo¢H­-^Šº6óÓ°¡ÿçÉˆ·ƒ+dYN”œ™µð‹\'H\nF8H­àBäå# ×±Éê¨ÑEžÍ™I³X·èŽº!©YS±Ä\"ZœM§Z÷FH¬×\\Ä@¼;ÚfK$ÓxMæ´^Nþ¤¼‹‚±dÇB‹ÕëÁ3TmÛÑ6àH¬–¤Lƒ‚Åj=3’Ú>bàFÑ-¦xgTÍËGì÷‰	G€º­GíÈc>oåH§»Vçqµ’È®Ïo,IÓætî8ß¢®/U$Uh%†Ã;e¿š“4‘t\0æ×$tùˆ€ìÀH§èH\ZÃÉxÉµ\"9H§Ì–L<WÙ²Þiöd­ÏgGŠ.ŸÂÿQ+¾=&H¨^ªD~™;ë¢ÂXØÑv	.†€_;jÆ¾\0“@&ìºÅ÷nkw¶ÄÚÜFV÷‡ã\'Š#H­µKœ)Göx‹1c=&¹£9ê4\'L±¯ñs£í{K¿u?®cþ|Öå«¿óÏ@ H²+­DÀå¿:Kz1¾âLë±™Í”ˆ÷EÐ8Áq¦ž/š™ˆ†ö¦ ¯ûåóCºH³§’ßêÕ¬·ÌBEð\\Ž¢m_Õ¶Y’½ÝI6fúû\'Ï1”œ H³Ð¸ËÌ±Iù5n$3BÕCÿ×Æ2=¼$r4\\óñï°H³ž®nË<!EÍTP\Z˜êÛ2ƒ<¹”bÙ	{žGfß¹ˆ†\\Ð¾\'%\"€H´éÃa6òãÂ%l,„$Ó[›Ý«|™º}\r:$\"ž}í¢gA½÷Ä¨F;Mâ@H¯ÄŠº² wÕZ¥_äx}ž°f•ô	Ž™iËd¥ˆ±jhãM«7Ý›»hñ’¯Ûm«FHH«Eç¢›TÝ$fž\rE\npSà¸*–rŒº·jYß\n&‘[‡Â@1C„Ö`ï´š—8p¡hH«J©»´3À®uNÎºý:fîÚ½ó\ru>äùó):@\'=CÆIhªÌÂ±H«ÒÂåßÑdÇ¢ß¢ú„CŽR\"¶kŒÑç	.0YUòvÏO(ø‚qñää„¨>ƒ RH¯2UôCææ-®\",\nîc\00SÍ/ì[ð¶á«WLÒpæòÏËµÙ.±‚q\'¨0H°xû9‰ó·NHà”¡¯mÝ.Ï|L•\r|™BA…P8*bU³Rº[gÂÇH±ø“óß–±:\nî@óH{sÓ‹eÿ“Äò½‹!Ò˜_FqlkÿsÛ4y˜øv@DäYB+´H±Ø‡¶Ø”6ðœ‚!·ÉoÇ4ŽAh«,PK‘É~Æ\n´l¢ãt+ÿnÚÁ¨&CN¬¨ÒXàH®ZÀlæz~ˆ’D:6tÈ«zx,ðL5ÑùAÍ‹E É\ZŠŸ‚ûZg‘„®ThDHª±4Œ°ó¥¤q\0†ÛXÃ¤«q€‰(±ûŠb$P6#æ{Õ2ÕÂÝ1S;‰H§å„þ9]\Z;Œ„µ}†]¯À_÷cc¿<ÓGÃzÃtÈ\0\Z(‡ëã]ñDG48H‚Íõ¥~8uô¦}*ÿtrœ‚aÏœD\'ÝN“Ñ“›HZYdüãÑ0ÀHÝMYö<]’ŽGVq.Ðàì–„î˜©„i{†Ž9¿€H7C“>´ÿ¼)›—2çýÌ\'Ú”nW²,²Hl³þQÌE0—°VÉWnÚ´è—èª.@¯lªÇy¹È”³H3\Z€À©ÉS×/B¸U{ÚŒ?W4 1½Ã_î\\.ŸHûÄz;ªzµi¢=ºzÝ£ÓŒûIÅFÄt¬SìLèuÞ°H1+xFB…Û}®Ž²7º&Y®A†‹1âÅø§ŽÊ?Ôý H1FÑZa¯šzÑúï–\"˜æ~œœ…¥pk‚‘kÂ/›ÓäH39–¯m}Rp·% NÓ‹ø_¶øç²Œ{käCAçæÆ–FÏ€HŠ/Y²Í3‚×i™¿3æÁ	¶°Lò÷¤1råN±K¡f\'üË™!g‡ðHŠ`õr´)¨&Q<ú&<VžŽ¬ƒ,|Š_JâfšQÇ¥]`µY³ï?ÚÏH4òºþëÓ¯/xÅ†zÓœiP¹¼–ý;æ‚ð;zZYÎ‰qdÀH5\"ëõVAR&J©Å!mÁ‚˜1ÆbºÝ	$ã³9¡&å€H4ø ž]\\\rKÈÀ@úûwž[9•ToE™ØxÒ·ÍÀH4³ŒÙAhû6ä2æ*°ÞêV4¡éçE3PsB°\n‡×õ$f¤€H1\'!¡¿q#’öÂÕÞI\\iuÒ¢)\rÑ»3p¦ÞÓ^®´DHÛÙÇrVH1\'!žœuÃ‚Ï‰æË\0Goà¦[“D3\nD~»Ü7Wqe ','tukuy riku allilla.opus'),
(27,'Asi es','Chasamka','2022-12-0515217779580asi es.webp',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\0ÚnÄc*.,(\'$*($%\'&!(  !%$!%\'\'&\"##&!&(&\'1.=//\"#)168;/*3)-////2*340-/#\"7(<40/24++*&))*%&+()!%&\"#\'\'&),&$\ZHäÁ6ìÅ€Hâ^\rí»¡w¬Â¬›„ÂÀH†$MrÆzþýSXŽïcH”XÊñ?t–¤õØ@»ÈC‘–Ó8H‡y;˜àänûpò,ºj%Ü‚Ï™bÜy¨wSÿs\'â{Ÿþ‹05äIÒªÈçæîH‡VW0ÚkxÈŠkòrº[k )å¼Þ€ûáà•_º±È²¿‡áÆv%à€H‡îŠul‹çÓªš\ræcòá2‰œ~>[6ÅáÎ§ž»—ª°ïÆ«H+rP\nw£cÕ£m´º{® ,1B¯Z—šþ\"sôï‚Ã<æa HˆMü-u\'=Wxt<•œqQådê¾ÎwœÊ3%cumP@\\H)®2+m’\')[ÝcEÖ  XcôÙåCÓ¾é4VR:qÿža4Ìø\ZH)®Ý!±‡%êëë‚“”úØç~0õÃBÁØ€ÌÍºáôëQî–êH+–Ø±ï×Fš©UÜ£í0¸&ÔÝsô¿r«B×Sä,H, ~OÐ‰™ügCd%\\WiÇ»ªöb{Žr;0\'>OáH-²£(ïþ­fc¨ª pæˆ…5ˆ¾íô_ÖÕ9Q˜ÐçkIÄH/1Èˆ¤âk…!iýô¾s%G˜;o‹+í,¬íe²RŽçud€H/0mÊkÑÖB]n¦zUÑf@l/ûÛƒ/®Üp¨Ë×¼é H-²õÊn;Ví(,2×‡ûÂ]Q‘`Ø£gÌkFGcš€‹ëtä6äÁH-žÊ®ÐqK&hò\r²_üŸßÿ6‚²„ävÀùH-²±qž%PÁïåÈ9.3i>½ŠLç$h3\Zw6Hm8€H-vn.ÕKýNÚú—È6QÕU\0\rAˆÄ¼ÄEôk¦_ùH-vHÛZÓd¹Â\náç)F(\\Öæ øÊ\Zgò[ÊÃ›q#¯éG/0H-x——„óÖ}Î¦~öÌ×´¤|z\"i?ÌƒŒÑYÀHV3˜µàG¦‰U^øÏD¹;¤{½¹ýÜ4ì„ù÷›Åa H+–í£+9\"N	ËÔßŒVäÖðŽÙ=â®:PI*å@`ƒÇV¢H+–ÂM‘o˜§Ûú°ŽÎî˜,…\0~Ã Ù*ú³¹_º±¥9|vÁpH+—ŽÔÆUÐÒE¹\0X×n),<û=3MN*”äà<Ïk(ú\nhÖH, `OÏ9s  ;”ý\0­¹>nçú³|;(\\úiÕsž4\"JäH-™/\rñèàß»jN±9Ä–r+5wÝ¶¤ö€H-‚M=T>€@i»\nêî58øñÜ ±žæbÎt¦pgŠÜH-²°Ãú=>2¶îaÄÈ ,²”é\nV–ˆ5D\0¥ôØ/Âþ H-‚MÀ»Åkç«Vmw\"b6¦WÕöU· ß¦^…Wç*›H-²¯¢yœÃÇ6mSó”Þ½2	L¬å·MýP`nüH-	@åz;ºœÕ\n•Ï±êõMÑØ¬ m†\'ýu©²±œá¢ø8H)„Õ3*Äjºå–ƒ{5…FW5x9lÏ¿bÅ~¯B×Ì÷€H)­÷Ž—e¤pÏ¤öRà ÆœW·ñ<çòk+4­gÝR[˜^„,_€H¶ÒoGTî ý‰“½gT*«a\0)M4™øÎZÔ½;ÒÀH„”ÛÈ¸c*\\»YS:”gvèÜÉô¨ë&°ëM¤­ª¼·0hR\\ïë}‹ù®˜H„£ÂÑ¬3÷^\'‡ÑW²NWKIeËzÉ JÐŠ\'¡CB×\';¹6þYÅÀH·+˜ñ\näNÀ3Ò\0L\"¾Á;ž%à¶“KúmlXÓmãÌV`†k_ñµÓ}Nt \rGùµ=¹Ñ^+øÖJ±hH·ÑeCÀ7@†ºR›îƒ\\Ñr;áÍô6æ2Gm+QçþªŸ3µ–~™Ïí†ðÞ‘€H·Ñe‡\"v ÀÇµ€³ \"\\œ>šoÎ©ôº´{\0Ôï	øò]î;As“¬zÄÊE¶H¸‰!Ø\0ŠÿSyïÆ/N_™Ûù¥d.=xä.(H¸¡×èuÊ$³JîÍ\rt9‚«é§ý&±Û”zÐD*2‰¡ H¸¾Vº@Þœ€\0¬ÀÔoÒ2^©Æ˜Àm‹û4ºñåºz/-È\0)s³€H¸Vÿn§	·ÙCíÇ²4ó†BÓ#ïºŽDL\ZÓ´yõd-(âÇZ’a³T;dH·+…¡Œ‘¦ÎàåäjÐ/°ìŠÉ§Û¡6¼Ê¶ŒŒVÏ˜t©á5ÆçÎ’]Ef[és\n|†H¿Šù°ÇÒ0„žSõY/|¬Ö~8ÿ¯Zi8Hg5A‘\\RiVþãs•Ê“ëu6bºÛºÙ¤€H¿~a„<­·¬¯V–¤ì°¡ÊÑ“ÎÕ ¤â]ÔÒß‘µU>+©Ceï‘õ[)ÊU]1¹V) ðH”nïóžõ>™µ§•ÅFR7Y%Æ<õÕB§ôê iÑ:‘%FÇÅ4ìÍ¤€H„ýG­s†7·~€*L»¡L¸ž+Œu>s~ã´ÉñP¹ßÐ(¯çT2j||H„‘ƒŽ{‹­(£Q\Z!}®R¡:ø±¤\\úu²™–—÷hU/ZjiCÊ”“?î$N¯«b`HµþB1uchRØÑv\"dò\n\ncZ•©\nVÅÌ!†Åê¥SÈÝÙbH´ÉíãMóh‰³«—ë<{ÝÑpŒ·?R·ÆM…wiÊô¸Sï‚=Vlë6æ˜vÐH¯¿ÀÆXE:XP\ZÛ¢oˆ§úQpYO\n$ÈQ®1[?¥)1²Æ‘ãMzÞ\nHd´H«\'…õ…çvŸÉuÜ#X«*ŠJüë^eY\'ÙÎN(ùr:­ÏÖÃ7À7[[ó³,ÔpH©¬ìÑsÉO5¶cÉ9‹Ö\0µÌÕQù\'Ç=\r§‡è™¹jBÏ…ý†Òƒ“@H§Ä[PûÛÝu6îpH ØÛ€®ØC<eŽäâaB1ËÅÆcasïÞH§ŽzZHaÎƒQ@Df¤¹¢ŒcÓ¼ïÆ‘GœxÏ%#ßýÄ!\"(dY]§*ã‘˜H¦cŒ¯ÇÖ’œ˜$rÅ¹Ù˜«ÇÈ§ ×º‡ÆÓ^\\àä€¦³{òÀH¦+[Èº»7íRUH^d±.€Cð*Õ•‘`TÁ¸ŸLCb}Ã‹ø>ÌqÉ^ãå#Æ¼@€H£°[•R˜d;%g­4nÅæv‰æ×?‰ä®ú8ã[ígÑ#I È\'6z¦T÷ t\0ê¿xH ßQ-mµñûÉÐå÷kUƒ—IL($©là-¿1—´5Y÷ÚÃwÍ->:”HžjkÍª7€šx7M9`¤W®´Ó›X#&c[·¾u#jÞåˆÍ”L¡\'L4VH½¿øÅPˆ–ïÝÓ“ËRÙÁÛU¨kÕÆ¯ÚpLà=ì¤ˆ;Xß¬Î8î–IÆŠH4Á‹Ó{“·mÌUð/6H65$~Ñy».7¤	Õ\\0M´H1P·Úœrò“à¬z#ÓÇ#Ùñ½…|„z†îçñÏ/À€H8ËG1ª;8æ²é½—´UhpAÐÃ™„×Gmˆ•Ç·>Û™¦kLVÕÈŸiÕ\0;?Ì~>€(!ÀHƒÚz+ÞÏÖrîéÕˆËÙ¨àN}?ý#0^*šU9=@™%û H­4Ëú«(L­ûÏÓúaùé9galÌŠ0RÙQiw\r b·…ÈÄ<¿þÓmc×ÍTuRhŽØ\0ê„ÿÜH¯1C]QÐæÐ_2Jç—qÃ¤ê½äÁÄézçmÙaÅ®á¶++ÕyÞŸÁ‘u»ÙeÉïytèH°<s¨þÑ5Ã$OJG\')»Ààh	µ‡‹ŽXŽœZfÓl÷×~½D}æò/KzÏH­¸ÞOÑ?Å½–ÃDÑÅZ~õåéù\"™PšbªyÆõÞUDïBW=,ÏÝ`H¬XrÔgÚ¡á›æBé=¨U{v7ËßÂŠl\nðÃûî^­…rýû	5\'Û§Œ‰—àH¾ƒ¡X:Î‚Ê±Æ¡v²xŸ¨×©ÙÊ“…°¹âóÖÈej]JxR[ÚuH²f¢‰ØH‚½;ëv­þ‹Êÿv\rÎŒ-ap<‰èÀ<Àñ*âQ™T–C\\f‡›H@IHŒÓõzÜ¾¡^5öª!êÅAYnF…_Î–ÿŽ—vB*˜ûc³Ey8¬€H79eDŸ•ºÑÉA­ôð¾6u´ªŒÏ©4€]ÏÖª•À»·FÓü€H6/}?<}J@²“¦A³šÅTƒ’þ\'¶ìêºè³º›HH6<›ÇàÁ=l@ù˜AQaI5YƒÌûní$zÊÎX^\nï3\'h{+¾ìH5Å‰*ŽÜt©|•)\\{¡‘#í^\r¡ïñ\Zj‚Mœ!qŠù)lH5!ìpÿv0àˆQmMl	M}ö8q‘r\\Qö>!|›…-{ý”\')ÀH43æ_H±åí§j\0eÌ™\ZW,4“b¶,}©Gv7ðæàH48Üý†D=ð/çjÊ°4]àÿ5wÀÞ³S÷š½•žä=Èu$H39òºë1AÁ™åO›à3àõu_[hÜeÌQÿÛ\\_N¦=F•ÜR¬H3©t$df’PÞ–l˜â(†û½>/5;G\Z³Ëxs{VksØÀH3Ã‚Ú™Ú»D·‚:Ô-mª­åEx¢‰‰‡‹\"[@Kü`Ñc~M7`H39ðñÇ!cßù|[†¬z7˜¢MhéC•ÊÛŽýAY¥-vHžø˜ªÜÉŽO¯øŸˆ²Ô\Zlú†qZË|šÈ>H1QQÀõâõ@¹¶ožæÀÈU[&oq³—è´.\'JMAÍ<É H0òd*¾mã›­¸aæ„\"ÌIŸ¨e™¾;ÚaË¿Ž`ïZ£àH/i.ã¦hAÂ\r°†ljÝð™-*3\'³N‰›! Þãå6ÌH/h—:`®xc\nÉØ½kC_ÏñoæÊƒJ?ËÙ£{æšÌŒ`H.ÄßÓìw!ôÔÊ&..€eãÃ¼Ã\nà§Œµ2«‰f¨\'™VYŒH-ÿ©n”ÑTñ YuiÌ…+yVÔoòçZŠ\"L`á§»Ò#H-7ö„F7ÓÉPýz`5!›@½ªþUµj¶îˆ¯¢È¿K/5 H+bÏ.c]\"±n»\\kîH,T¥®_ÝOÒ%y“\0“×„”|€H+—®æ¬ Õ{T«Ö ¹ÇF¥/Â8W7¼õZL:âHÁúÉ¼ÈŸ·æ±8 küH+—®çÊïhsèí¯z~(ÎZ…§]XŸTÞð—(f4,xÈzpÊH+–RÄ¶O“AÅ‚ë§‰Î^Íú|§Ã#·ðÿôIÃñTQPH1lÓÛò’-™kD?í‚Ë#³í¢NV4Í>','chasamka.opus'),
(28,'Un gusto conocerte','Aliachiwa kantaÂ rigsingamanda','2022-12-0515235618179un gusto conocerte.jpeg',4,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0èo\0\0\0\0\0\0\0\0\0\0\0\0`R.b!*)(%+*$%$**(\'((&(!&* %! &&\'\"##&&#$&$ ###$$!%&-.-./584374231-51/2221)4231369650,)(+1*372*$\"*##4HäÁ6ìÅ€Há‡2!ÓnµÜKsAŠ W˜tYH†$Mµmm<-}ƒôrÑc•b¥«Øƒb,Vò\\÷…i«H‡/@ÂÏæCa\nIu½±úÈMì^54ÆY=)8|tþÍ\rLå€H‡—øy†þöU¼Æ’¥}ŒÃÎ%R¡}cJ£Kéá†„Ñ¢E¥ËH€ä7b]µ<eíðÿÝl«©µ00‰\'JãƒûRð–qIôV¶²H.n¹¾ÇJ`Ù\'ñT³`êN´ÏlOJÞ*?ñ:K<G×gJàH‰ÚHÝƒ¯¾–G¿\'öbvº\\L½e\";Rú+ýÄJ‘?;Ñôï‘É1ÒÜH?¦7Ð)½¤Ðc”Ÿ0v==½újßJŒÄ?L£díÆ\Z%7˜H6=¢5Ë»+¨÷Ïð29üaü=Ä¿<Å°GÌ%JSxºÂQH4Ú\"{Aýj‰ºÞ¦‹±iˆi’„9—×ôÃYz*–ê[‹H2lÛmNDû²ÔúÕí¿è õñ´÷Dy™g+ÕTˆ§Y€H/v´4K‡M¬øz¸JÁ«@h/*ˆ>×fÀ:_Éo¢{|‚<Ÿé;hH3˜¨‡4î\Zæ ážŸé×\réö þŠgx†\'X›)0\\üø<@H3lü­è:72kII ^UZÆµ5­[Õ¤?,<1/”<5¤6ÙzH4ï/ô¶©+ ¸F~ÖhÌŸDƒŸ\\ÚÂž@6‹€]ÝY(bÿ§è?H5¬?ß„øIò\0Êˆ¥ÇW•¾Í¨×à(C`w„Zìv5õ(Œ³]ØH4rIú\\ÙDÉ”±kºÅ ø#þ).nÁþ(ù§V_ÞÀÎÚB2@H2Û/R¤8\"=…\nÆ|ZÝ§mcWž­çî±Ò%º¬*ÆŠEpJàH1Ç6Ç¢î€J¦Ø`Pô¸>Å“”I¸Êo*MUhdþò/ïu´¤H×.Líö±zÒýÎ¤fÐ’å.HÎºµ\\¬Ø™§\"ÏH1Ž‰\'Ãx¹ÙÜ»}²‰8°=¬	içÉ”n€`2LÙ)~0s† ˆHå±µ7jBÍâ¸=mÿR¾2\r¨–T9JiH…ÐùbéE‘QxRC3\\šªqv±ª§9xó¦‡ QßØz¯»@H6ú âæÂM°ÙNæø#pÑµÏúfœóÇ>J¡H2”nË®PvÜÚYÛ™¨*Þ¿ã¹þUyVè)Š5‚GYÆH0‰Oó»A‚M1“LuýÈ[.‹K–\nGž9ÊëÎSXH-U‚B0„Ø °aB\råqÁ³¡Éß¬‰MþO0oTW H+lÂ<¿¥\\½M*Ñ{Ìoç áÜ°\"–:¥Íx“¼ìÿª6ªH, g+˜UªgGð~T\n«CrÀnq&èË~r¯¯SHcäu‚…–…Í#\\Ÿ\\¢Éé?á°‚ÜXˆsÔì{ÌÇ‚Õw(H-U³—vœ 14Oœi~;ÇiäæÌŸÿ\ZëÆ)Ú6H}~Gmí]d¯0	ë\'\\ÄYkŒØ–è)ÿ\'Yô0<€ŒHÉPÃ7çÃô\niQ®¿Âˆ™T¯Cì—WXCÑZ¢ÅÁÀ H-V¢ŒŒ	›Y;ÔRÒ¬üvCL7Î¤á-G™œDå¸ô²ó€HÉ\r²%Â¨Ý:u<Ï$NøÔîkžýÍDÏ±‘nb!0’`H+n;fåT: ZXßÈR$K¬%Z$©éÁ¦Å‚ˆøÑCH+4+C9§y¿F¡Þä¹‰‰yRíÍ0œÕï™Ò\'«É¨B\nàH)¾tk{Ð˜Ç\'Ì†ÓùäÛ	d)ød0F·pš”%|–Kgèñ€HÈD„ÎG8æ†YÍrÅûfàa€¡ÿÌ%iOø”ÍÅÞpÞ€Hè^*÷•‡Ê¨ri–FLÚsç·eåŒpË™1Hz3fûßÅÈp±Ž¦k1ÀcâÍRlHôu\\NÚð	gH.›Z©uLªi‰ÏsÖKrú\rp	ÚmÑ8$û3·—ÎO.6Š`HZÐ¹ž*!U‡ðKø#\'ŒÉk <N®Bš™å¡£tÀH’µìù_jÇ‚À|œ½Í‚¿8Ê¹/ ñ´¦¿žúíZP¥z H*éPGn@^ë\rjè‡3Mâ ßÌ\0|0¤¦Û7JÝ9œH)mK$:ï^†y“³‰\'óGžÂ—L7|¨f¿tåå1H\'›BAÏ¡mnƒRþ`årµÚa¬W†‰5Â»#oÞ|²Ð0w{¹H\'œ”AÇrÃBáäÕ·ž¡ då]žæ­Ç—¿³°9µÚ½i›ZdH)Àƒ†&ñåœd<’~*FS/†<ª=2¾Þ	DIqÍåWW£\rŽCTŒw¦üH,*Cpøj6›3Y†#^n:o‘@ÃHåíâœ—{e°8Žû½¡ír+¯*ÑÃ6]H{VNý—çS¾÷U?ß¼zf\0ç\Z¸¹· GÓ€‡c`ªTD}Í/¨†ÕpH«‚%¥\rˆíY·ÝïxZ1mìaü5,ÛíE†n°Ž/å!×æ²`BvøH¯1û¨ê¼·•„­ê?žò716£Ïb$ÔÐyxg»Âtæº†¯ÇñuªrH²Q¢¤Çh¿®:ÎÏH‹›pH0Ùq(÷ô’hú¼üÃÝüm±Ü³ãK~UÅÞÃÄ8*H³(Çr$·.2ÝS¹—Žo	KíÚf7ÙÅŽÏ	TFœ‹¿^>QŸ¼Z0DÕFC-	0£SN­mH°B3v!L´´3ûWõ&¤nRJÅ·}Üïç¦iàW©fÿŽC[Œ«Å‹Œ‡úÂK@H®\\0É,î§…-™È…Ù±>\n>C~¸€c¢wÞþõ®WÖa¾‹‰Ãnî€H­“z;%€#˜p\rÎ6*ëáÝÞ±˜Aþ’ƒó’»#]Zz\ZÞzV¥ixÚž`Ì¯œ²UàH±øi÷“Ð©‰\rÞäžì{è\\ë´½Ï/¡p‡ö€P4ê2pY\nÛ4UiÜÂñqÀ_8ðºa_ŒH³«þýáãep\n>4ò8ÅqÔ}èB[¬5ÆñÊ±ëÆ±¡Þ%`¯Š„þWŸß„<`H³á	Âöq¤X\\e1d>D±ùt\Zv½kmÏØYþ®ÂÈîS»#Gü¤E(Ô	\'_‘@Hµ8%ž=¡1.ë!¨”æÓÞ<©ƒ0YA`2• Nƒ{¬`î]±¦aÊéÿü&ÉÕBÁéàHµïç8[]~—jë¨¤vo”&Œ×.kÑFþ‰`ŠXÀ‚ó€Öô(Úx(ÀHµªÎÁ4“˜pÕŒ:Q\0S4žž\\­žH<ÃQ¾vLÕYÂi0R8øà©ñ>Z\rÜÏÈ€H§D¿ˆš×Œ›K…‡»íèYƒ©5ó¼’éü`Q\'¦i×_•Ôhdn¤hZØ£—>wHœ×¬¤Kƒm:ä/Æ|áŽÁ4“\ZÓEµqViÛ¢C1\\æ\r#‰[Æqìp€Hƒy2îdžñ˜çýÌõî;Â“Üã0Þ£\\›Aãbš§ÒÆ÷ì9‹;Æ#p©ê°jó³H“9}<>½K¹\'éb:l/-nI§´Ù,n\0°sÂäŠšð!Ã®ÇFb/¨N™€H„½{l–óG•Ês]zX‚z‰1pævë¯¥ /s¯±÷Ga³Wb®a»¯îH”Ûœ¿5sOéM‘ko6žëŠ6›Þ­Í“¶u¼Yòm€ûù= œJ‡«ÉÚH“uùù_]¢z…¶vû1j-+dÇÕgŸOÝ/s\nc\\4Åû–IH®’Œ¤™]O€bCø#\0±œ\n!\ZC!OéW¹ô!¶m[\ry¦Deús]]œú™×¬ªoŒH®Kží†ç‚s$½ë…ÛOÞd»Wþí¦ñ(±ŠçJ—@4&sìm7»Š_ycNÊa`¦5êHª©›ÓP_àìlˆ!™f×d-A2!fÊÞ¨“‹˜³t.DÊõºcJ70OÏCtåA-H¤ÝŠ4Yåü]Óçd4ª‰“´%\\®®Ÿ\Z·°»\ZT\nµîø0â=).ñ8ŸrÙ²x×ÁÀH¢‘¦Ý„eé’›¡f%gôë-ç:Y½õV§óz¬%m…“^*xi¨jr­ZCA	e)”QH¡ZïÚ\r{p”­x4N.YûV)dÓ6ê¸yýùëôìQÆ†üÉæzn÷Êþ¼õ¢«7=©°ôH¢õR^&Y/,ËM1ô˜\0à´‰1_šÉüÖ½AnBôzÀ¡§±¤ÜD”ûÜ?N;’&ÀH¦”ñö—_Oá¦\r<PÔ^	hÒ8ÈbS&\\¥§5°8Eö‡³ir=¤»‡Û}Â\'ÌFñù³ñ¼Hª\"6(d+²È¬†¥sú+C•\"oÙMFÓ÷5yH|‡ÚZ>ü…7ÊTIýš™K÷6úNÜXH¯9!nEe[jž‡»V[*ySœ¹«T¶ö${Êhkó~×â5ŸƒŠÓÊ€H³ÂHMSR±¡ZÚ²!PÂc«ÙKÕ¥È·/Q½ö2¾]]êin@H³®\'2ŽîèŒ/Û–ìyª™`êzú„¢—¨Ø»x„‚Lˆ:L˜·º]+ H´­{OmŽú5ðí™‚ïÓÏAm8ck`JFðÚD	ÅÉo·H³yª£pD§î;&OÊôÅÙo7€%ó:õü$FXðË½y«l\0¢AÛFWµÙÀH±ï¨Û˜kŸýù¥–}îXÇ4Ý$½r9Rýk¨TáÓL‚iW…Þùä•¨,ËÇ H±{í¶LõYnÐ2<a©^¼¤ãAÝtXKS%^,\rkG¼ðin¬ø÷Cr|H«5ÎpÈC64É¶†„k,N˜ãîE·B¨v¦¶ËÐÜåqÀù{òZ†:Ñ\n²6ù§é“»£€Hªºé”DQ»{=˜p#æ³ôbÜŒHËýPƒÁoSç#À mm|ªsW)éÒµFuBÝH§‡úÑ9¬ÕgS›ÝY)ó¾DÜr\'’L_Yäqk*Ò‹Æ… ‡ƒöý`p¥VŽ#@4²H¾%èälß™JGö´ÑéhØ2Ä*yM¾FÐî¯NõôÑíÛ§â	üH6PÆˆ¨ûïŸÉ[Ø€®ûf˜ýÝw[ZÉµ\ZÑQ!€H2Ì\Z”pºë}rRU/à±¿–×Ã(ÿ’1ñ\\Fy–§mz²H/Vú®kd~ÉÏ~FÄŽ£!Ì$¨øWb™hfõ<;º{òÜZbGØ€H/V\\ma·TÞ¹Ö^xŒûv	:6Šíg¤¿°a`¹Q|gDH²ç}Ï)‘v~f£NÊù)-¯ÈÃÇ¿<!YR¹eUØxžH›A°\r/Ó,OHõ¾œãÁÏ©‘£Jçæ;è¯TMÎþ…è%ß7ž…þ\'ç§Ü„OggS\0\0¨®\0\0\0\0\0\0\0\0\0\0\0\0ßTOSU+9,\'+,10/,5*\'--/32$\")1/67564:80.3:.+.1&20-1-90,00/2334,(303/.,10&0/1+*\"$)\"%$#\"-&,,&$$H„.Gk®§~(€wPÆ”l‡B£-II#K›<~¨›û]PmX’¥%ÅžH«â%ì™åJAý¨Wß­‡¥õ\"è¹çGAÝ¹Jº®¥Û^iù‰	’“k›ûŠúaÔ¨\'Á[PåÔ½d€H®›ÞNF²Ž9Ò] 8U®uFï«cjØ`¾#9Æv»íòýI£³r0„H®Þ°6—h`)`.}÷˜‰¬©¾\ZhÙ Q¹;lžcø€¯ˆËÚ6ÀH«ÃðN½õ\'>ËNN¾ZŸd’¸Úã$wÿLD¯Zæl<|#¶mÜâH©:±*¤í „Ù­R°œŠ»çÍÇ‹øÊO§ÍÅgÔ7NÞ.l®äAèÄ7\Z/H¢j|Êò¿{ˆš¯ŒŸ\\s¢5o¡¾kc{Ï¼¬àá…š<ËWh)°m@j]È°(…?ÀHŸð¨|¸»_Ò½ÚÏ[ÏLAžè7©Ï++e®T\Z:r¿A‰¥ö8ËŠÑ¬>PCÛª\rF0HŸò×EY~¸À~óÀ¥Cq†{žHMçÒº05¥iÅpÔ;{ÞuÑˆ,.\"´‡a0Hžyœœo?p÷ÏíèªS©÷õ­(>V˜2\rW¶á·Ž ¨ˆo„bæ»1$ðØHœ•Ë€|²¿­ØÈåMl+å$ý	‘ÿÒp\\DJéêô0u™“ðËˆP}Py±EnH½»èA´0—ÇÒÒJ7@û³éHd‡T¶qCl^{£$Žýeøˆá‚ÄïH1H‹,ì¤–3Uÿ¾8sF\Z1:Í=ÏuÆ±Š>à M‡ƒ®:H7LOåÙ½\0PžÃEn…X¼÷®Ccx$GtT¢€ø®öÜ(…í[€$BH.ŽëÞ”Eâ.Øw`E~Ç<€&5îdæô]ù·à:`u2fÀ ÌÜÆ9;ØH›	&„4‘pò{EzÆò¤áG@º}4­ë±9©ÌÊª±ƒÞ‹sä(o{öH³¼•*—)žÕlòÉÊ7³£Ú”íSðkôš3á«y\"ç~Àv|q‹CLçÝ¸Ý™€H¯\0¡{¤žëªÎ äØõrèÛ…Ûv£·§µe¬L#ŠkÌ¦©1mùÞ •N\n¿¾\"@H±¼\0>K›ÄäƒrÜœ+Òå³Æ0Ý>é‡h¾¶EgÚË3H¬ÎZœ|¬/ª%2àíºsÓy-´‡­4QÝê¦8ë\\Hª³zMà\0ödŸTü^9}Ñ”Êò‚Ó?Ø…Ž£Jxë;XÌ÷ë€‰6\ZxH§Âˆ¥_VäŒrE×ª¥_\\Ñ»f9Ó\r~^6-V_VÁä&KwQ­ H¦oÄk¡ràk„ùÌ\"r‰¿S¢} ¥’&óí!ŠbØ¼‹{Ÿ°þª‹¹/ÑèÀH¥9—†›§äiƒV :{¾.SÂþ•€ábCƒc¤,?M?ºù™}\'Þ€Ã-Dq¤tÕœð H¥l…Ë=iÙ²º–Ø1€I\nDW­Ú!å˜Ê	“©ßm`ç1Y	Ê¼>„†Éæ™ÄV>- H¦_jv¹í-~;ú7\"\0Çå£ÿ¬ˆ©”QÁ	\r—ß2÷}bIÍiý¥yº‚°nˆ H¦e€¸Æ.{Õ}#Ç¬Í“•©ÈâØ¼çk&|€“fØ\\d^lzÝÃ¼ÇßèâŠ4O.°H§eBïqøA9š\n,û02èa_)hÕ¾¿t>ïËr¶ÈÛŠˆ¿Z\r\0ºÀë´…és€H¦Ó?Àf³ñ÷ôb} [vV8S34ß†‡ÜÁŒEýPU‰íâàM|í`Ø™¢’–ÐH®Á¸®]å«ÊzYIkoª?ˆÍÎ.‚TSêûTÛ…Óèi™U´ÿ„¡ÆY ¡35x£ÿâÍ0H„S$¥hv­2Åc÷7…2îšÒHk\'óõ¹þKö mKJýqVÙ+6”+èÃH’ê16‘3’+¨¨¸\'†K~YLž?MÓY\naRxX†S~z)ÆŒ£ù¨„H1ƒž8H’=áu\Ze¦e\n}OáVf‡‡ô¶|”q_\nJÚà—ŽÆ9]Œ8rÍ„\rJïŒe/XÙ@H„xY¨U;CèwÌC“–¤.^lã÷,:ALë…ÆŒñ.iÆ.ªl*|ä]·¤/ß/lÜt:Œ!øH’võ˜nôx#½îúkIÚxq!½Š]}æÌžäòsßKÉÐ Ûú†\0@H˜z†%úð[\"\0üL#·DUf¨·UÖOX¾Î Ùl™ù+g\Zyš/ÀzH¨^*Nåa)‡o›ƒõAìoŒCÊsHò‘’‘+³I¯a«üæh4ñ‘·\\„€H§®±^ñ¹HÝ(^<Í‰Z¥§5ËIè9£¿z°‘½,><mŒõévÔ‰ÙµaÝ€H¤Ý!a˜09å™wÌDw$·›odÑ„E+§Ý²K¾¾”eæ8›¨„H¢\'µ—0u†mñ¾D °ÅK5y»°9ýs©}—çzVú±–°à\rW_‰—bãšØH¡=-¾eÊŠ°sàÂèmRi6ë£¥–Â\0•z¹Ðoþí‘CS—--£8ðúg1½¸H Zf×Dî‡³Ñ0á‘üù;/ ø?CMîþ3dÇ\ZsxµC:æ™ð„fO†HŸÿÏò>çÈÿg3î•yÇ«ŒP³á·¯ªQF\'æ¦äa’ƒb”IÉƒ-•„ì„HŸù¶W¶Óûj»hˆQ=œÈv”Ê\r;æÊ˜US±RjÂfg–D\0•ctH¤[‚n….Ïg\ZpFdÊÐËMUbçÂ¬¦ÊoªÕ¼ùˆh¸ \n¹‚Ú¹>-ê&’÷ŸŒêÍ¹y@H«Us_²èRËQ`ùJß$ÌàRgÌŒ;OfTÐD@4‹¹¶šyþèëõªÿuÓ0Hªºa\0EÉ¤º@tØÔÐFTí”ŒsbM®!]²ènut³~.•¾¬UÃ5ÂhH¨ø4l¥ŸÂ—‡‡*¸c[A§TBukþ’W\\o‡i½/¤À`˜}£RON@H£ž(Lï90UGÎãŸŸéýçJQüÍûÇRó^ñëpí¼,4³IR$Œ×ƒ›žH¢&CF\Zµ~•‡5‹KIñ^M¾&åBžmµS}®­`4[(—£†DNÿNâ†²€H£œ¶%µÎ„E~iqR¥T8+ð0{ßhcŽ*¡•žP°üÖ/—Aù³,iaÉ–bºG½ÐH¢Šq¿ä©ï{Æ,¼8^µ±6Ñˆí`-bƒhýÑWvËL3D_ËtÕÙ\'”\'—„ƒé€H¤VE´Ünw)jË×1yÃ@š\Zy¡¯¯_Wj¥û:(¹ÓÅ¢áEû½ya›5ÎåL¸H©ÑÌ Î8B[zkw5?‰oŠGž\n–,1\'ÓÔAñèžK^Ç¥Ü5(x‚Tf•u´ÀH«ƒÉïZ‡êìêá\"}R™åo<\n‰Çm•y3‰öšÔÚŒ]Þl•“S€H¬è\r^|½6?àÉ~FUé4O~“Äœ©ã|Æ0KåJY$Å÷#ãDH¬¾ÍÍâ\0)!X\"Ç37ç@7ÿè|v+Å^)Mëu}¼®‹°ÁTy:HÊ5Z›ŸfüÅ H¦E<é‡!@Šæ“Y	¨.-VIÔSØFLÄþï3³WR~_ÛDJcì¤²H¥IT«&ä\Z8ås &ÌXÎš_†Src&\nE*ìž#·Å#J€¶ªk½D«¹oÆKöBÔH¤µcœNœ#õê>ÚËèØòË†U)¸Ø	\Z´]î*Ñ(Îéþæ”(3ÒêwûihH£jr7¯\"TFTMF\'\0ËÄDî.Uºgz¿ÇÐªŒŸ½º†5ìÆn|H¡<=Dél	I|^÷@Iü€­±ö]m¹´ûòŽí‹\"••Ö:Þ.¬PÌ¥F™¦HŸÝ„Èaí¢„;m§[±èEº%•<óÞy‚Mdû/~¦}Ã‹ðFðƒ‹ß·†\\Q@Hž·m/bö‰§PžŽAÕR_˜ÀP!7+[Oïöß½?lJæ’ÍWn6y¯¤°û6€H‹kBÏrá\0î;Œ—´ös=“‰‚ÔÈã[ó&È¦K€ÉUt¤HÔ#…©Xì¨%p7‰@)BF+wc)LxzÓž¼ã—€é¹Ã›â1Så8ôäpHƒ¦S,÷—mpÃ´ït3c¶Xy¾MpÌÜhv¿Ü½ñÑ—k´,Îwä³`Þ_I¬Hƒ1…Fezü5d˜C¨ëªØdÓ˜saÕvoJ÷ÞÁÞºýåíÉùnÄÞ;¤õŠàHŽÚ0œ\"²Ö6ûXÒœ¼–$¦Ï-žQ<½ô‚º\'ÍÃiµ,T)T¥H‚m5–-í–Óƒ]‚3îNTìtÏ~:¸,µ\']KÏ|+Ñpÿ²¬ôV€H®ÜM˜”ªÒß\0›‘ù6xÆ7ãÚØª“¡„H4ÁdÙ\"–’\\vî8™Æ©ëõS7;ì`ê¢gMiE°‡ã…ˆH39$rì¹;¢MI²+¾T_ý…Ùü(?Í°2°¶ÓkPA?`NµÅ€H2þÄ.ÆR‹Xð€E™¥Ò‚VûsŠá-Ažh“¢Á¼Â@Hä«QÌ\'i{\0}ÿìsc´mÖÃÚjl=Óy8ÀÃpkÂÚl´H›Ÿ+GÇPÃ}g–Ëÿ‹\r„Œ™Å™\\“?±ûe!Û¬¤û{ H/hBbBñ…tòƒ²°¸ÿ^u(»¡(ù8ŽµÈLÝ]‚ÚìH/gà\"Àã¥P0‚;®pövÄO¯Ö+ôâIôdœKH1\'$«jtìnáôEéÕS	gƒh&†\n5ƒ†¬%è3¿#š%7o$uœhÒ…Ñ€H1by¼ÜgUTn¬]õZCúi*µUÃà„”<`åÔG|[½“H3Zß©í¼ÑH}ó1bDcÂ\0‹_f—Ó•`Ù`£YÒwK>~…:u£‰è’´±H3/¯ïTwÏÆc0\nzÈáº$í9§Ø¿áÒØî0q\n©It­*H5\"YJ±´yØ3Ï“—€ê\"¼W›bÿ.\nï5,â|[Xò7/8H5\"Tt`j-™Ù2Æ|ƒöV|\\{5Drôz{rÓÓö H4xbÂXzqê‰À[¼>vÙƒžcŒäˆV\"œ(YŠ8vï-[0','aliachiwa kantaÂ rigsingamanda.opus'),
(29,'Bebidas','Upiadirukuna','2022-12-0514514767524bebidas.webp',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hY\0\0\0\0\0\0\0\0\0\0\0\0:\0}\\-/./+-,&\'##%*(&#+ #!$+\"&)%((%-+*:0?812262--+6,)644&52\'$26;9.(\"),;3667/78.#&(.92060818-86HäÁ6ìÅ€Há[~uO<ISõYxýäH†$Mmü%œI‚\nk»)mƒÀ{IC¥\\¸yZw	Ø\0~e†×Å#*PâlH‡W\"S\"æöJ²^\nß›ºä&÷´˜ÞËœJ¥fÿ…D6²\"ËWù[rªæ® H‰Q¬éejójX”Ôñ˜›˜Ïqý’»Éè^Òçþ.~óÕTóÓ«d‘€¡(OäÀHŠi¤er”¶ÒÌçt!‹R•\rÕåƒóvT\"3%¾¢¼t•¦Û‚W$GHµÔHŠYä»\nÝ™Ç<!u¾ÍÊ¯D³õºâ]o‚¹Ÿ¡c‰ˆz\'ñnÇ÷«hO H‰¼”3’·7åPí\\NUSud$JÇçYã¨×*á$Õ” 4~âV‹›+–_©ª–€H‰ýÅ#Ø#þâÞn¡ðžDúUØ2y-ÙçãË%ÈXÓáŠteªØ€Ho©cQŸL?ñ²F:\Z7t•é±©pˆ­š¹c÷;‚D%öH2[Ñš‰ßÿCjÉ›¿©k{¢·]‘Ÿ”`ô§ÁdíèûRÆ·H,Ò±E›¹†©Õ¼?„!X¢7ZCßR<çDúFúïDåüdH+_Øs‚QÍ3ñŠïÄ`W€¶k\nËœ‰œÚFÌÎG€H+lÓyh(Þâö\0ú¾È,n|fœþX]ðûÉ–öL©Šø\Zè§±b H3OQ”ÉðaM_’O¨…ã¨“ësÃÍ•÷+¢\0ýDò\"ƒoÃ»-ó´H,Ò°¼Z>‡´E[	¡š×å&g\0ÆÛm\\Šqût£ FY– ù¨EH-Výzwù;•€¼Î÷.’°1\r h7‘}Ð@d¾-‚É±m(ÖÑ2hH-U‚Stéºç5ƒ´MŽP|ÒAÜl9—Eó•Ëì¿UqÜ@HpäøZevP¢9Í]’ÇË›Eü-`Æ _3^s&ÄrSï]æ:ú\"@HÀF¸)”s¢öò…xšöš_B‰q\'÷jI†¸3VøH1Î€i¸;C¤m=â²•„ùÿc¾1Lr½\\&. HŒ?ç` 3l»´ÙŠîÊª—Ð—Ú™40¯céóóë²ÜH-#m1ßBýÚ@\nžŽ‰…¬÷0.ý¯4z±ýÙ3¹Aï˜H9šEÿv…Š¦æKL\'lÁWhî*ð¿úK¥àãÚ ©$ýÔ+ßÄ¥b>¦H/#\ZXàï‘°:H|vC¢üW1Ke3ú5ƒ\rîŸdz7€H,Ü3äÃöÊv!‚ËÒiÜÑ’Oç—!Þu|<,#Í‘èH+lÂŸØîlCöø›­gYéÐ}ç¦Š*‚(ï³W‘J²Z °p€H+–ó/*åûÿÓ…î‡Mi<qÆ@DúÚ¸/x´Æ[Ç=OÀH,7­J¡ÆUˆíÅO^Ò/ýlÅ\"ŒíïŸ±gh²<{·\'Ï\"iÐqH-²G‘ì¢^2Çó\0èU(Ñ´¢ÇÓd…¹þb¡`\nðÅužRÀH-Œÿ³,/¿ý—­ìõÝžD«Ñ&5{Yh±QH-Gx«\">+j+Ó@O»X!bÔž%A‘‡Šo¾X[^^Ô¹—€HˆÐ.Tn]\"4ˆ3|ZZÇS-%v­kÎòÒ€IR.ãCÆ.ý‡Xhz^ºT„€HŠ>.cÀaZ¤ëÁaÎŽÔ 	Ìçý%\\Ò&¶¾Ù£Ç¿Y:dc^A!@H1d-´hÐ©JÉrwAÃ¡\'Çþz9:BÌ—ÿ¤Ñ¼ÎFð~ÓRºˆ HŠ!ÓÜþø;ŠÅø«\"]ç‰1XÂ#†bK¶8û)åêb×dŸÒØ¨)à)\r\n§É5èbU}Ujº€H‹Ë\0Ì`Æ]õ‚ÒŽa*5ÛFŽ¾2¸/Ñ†5­9}Ù×ò,óˆRK0Ü^ükþ8-ÍH v¾Båhý‚FˆÓâNÃñ´-0C^gbFjUZYÔˆý§*–~³·EVü‚d‹U”·tNÊS–5¬“±KƒKpH£º‚¨ËÔ…oEß£Ns=ö|Ô0\n“[Lé@×jçÈkÁ³a« í^¨æOçJìu5`®´LÎ€H£Ü´æ~KúT»2ª@é\\£6¾‘~D·šYŸÞ-ì«4Â•§4)D’Íè³ª°H£ÜµÞ‹Ï |0L‹áJ4ëOÞe2ŽÂöñF(cØtþÙôÒ	ñ¦†¯­.jìH£Ú[ÌfyŸ©®{	&;@+åÕ8éRí–ú”»$ÌL¢ƒÇ‰ÖÎ¹rý¯\n6H£bF£Ç€–-‘ÅU+Bê¼òƒÑ\'L«ÏFö	àb¥é,#—û=Æ1§Nã(	45g<Úª@H ÄT”¸îX´Pe~5\"u!g©™z¾nº?<\'®Cœ²;›ú°¡çêžŽètóûpHo!àgˆÒÕ¤þÛÖk¥zmjVÿ\'%ögf¿êÁ|Ã·mÊä˜ì½HàHL	ëÅ\ZÁÿ>ÃEÁüBŒo²ù,ÏKÍÆÊƒþVºV{mõx-8v¢cœHœoeíÝ?ö>ÕßbZ`3q?[Y‡K¢>µí_GuŽa:t”§áÍgYÀH›¥Mvî.½|0‘í8ƒ\"®Ñ¯ý\0›k8ëý¥šÛŸòi$S:P‘9Ù\0‰Ë<ñm•1ðH›œƒÝcí´b(a[\nrdëå^+(ˆÖ‡KÖ“`–}Ö<cáš?ÃùH›^Ru=ü`8aÏ×râw5¯´.täú£”©Ú™5#ßßƒàHƒÓËÀ¶†ÈSø¿0/3¶\0¹,JD5ÝÞÉs1š™²Q‡¨ÍžÂHÆ_EGúc3‘+) `H´ÉÐ¬ÍÍuÓ¢1¹O¡å‡³’ Ô«8bÑb‰©Ù“`/*oPx®Uù&ÞD—´ÿO@Hµ8KŒ\'kÒè¦ßïL†Í½#Ê^V~¤}ÇŽL“4?!<\'¼`Kg;œÒÖ1úö¤Ö™a¾ˆH¶6gµ!šc\naÚd\nÄOG¤¢E\"/äOú¼¿sÓ”§5H·íå-–¤O/|®O,>ï¢ºùr•^z~<£­“É®ØåiÚžÔøÜÏ\nkŠ \ZÊ4@o¥²E°H¸©M¹ì­zN…¢2²I¼Žþ`Ju¤@q%ÿ{â7ÊÌÄ=ÉþÃûöOAqÀH·¼QÊ%z«â;6feˆ¦å°O‚i+Õ#ˆ’Ó(«ŸÁêMmiÙ¸ÜH·§nBaGŽDB½Æ°É¿½¶GlRºúƒ±û¸u]ÙŸPH¶”¶gÁ]å:WÉ6óIq¥ŽWÉnçÒ1\r.€»ÅG hû*ÉK)Ìl¾š‚ÑŽ&ÀH³ã	®%î¢ÿ µ¥Qm(t)<X•±\\wO¦°õ{Q[|Á–«ÆDæ©\Z€Z£ñ4ÅHª\ZóÇv2iÏ©šLùŠ)_µ˜ŒñWêeœŒ±è6•ˆD£´î¤0@–ÆÃ¯òƒçÖ“ªhH°íþnJ³…tü<ãøSmó0øýo‚hß‡`(39rXO§L€¶Ú¡ûŠÇÐ¦—¬sLeTÙ8óØHµ;¼2\\ŽÁã„L6©Ç•ÝDò¥b—4;‚?:ÿÊ5’¶ËŠ™Íà¼—×èHµÓ;¯”Š~2Uil`þÔïÕêÃš =XÃOÕÚ€§\rúÿVÛŽs‰H³rˆš;óçpåªÑgcŠÎÈkkÄŸóü·ª÷Ì­R2H±ørRí™UtMF2ŠMtAŽú»÷Æ›1ëµÙ¤c;_fiÀoÕXH±|åžDÏÅ§#³vbüÿ†c¤º£M\'ÚÓHB½ª&ï5îˆ6s‘c€H®Æü:¯E1\\RuCiÄW­ã×Bqz2Q,]I“‡-¹E‹|ò=&è¬€/êo!BÝF•,ÍeüÿeH¯°~†.êÚÒÔƒŠØ7G¼pE©þ¦o·µÊGf=PÙåÄóÝÄÂá½Ê+0r°fúàH®#Ô°íóÚ³³F¿„{ÉqÚ ðŒÕ‰[»’üTŠúû;¤Ý…¿†8¯¶åc/&Äˆ°H¬Ü´l¶\0¯ÕÞÝ?c5‹ÒØ–Sy¢8óó7¯rwþ‹–9óÐ(öo%ÝÝQªûÞ&,änÃ€H®^ï™Pi<~ŸF&Ëýï¬áÎîŠhAEq~\nóçJ…¦Ö3ƒ£Uc…%\ZVA;h†|U„R± H¬?ÇÞßyË>Nñ}ÈoÚ9ƒ†™‚Djå’ÅYCwåßDgZ~Cs-#©%ž0H§åšÊ‚V‰QÒ›W½’9ÉÀ¶ÉAÝ]Tc×<G}{×Ø,s¤W‰·¼ñÖHbž‘5k;+ôH¥ßkÆ(	ž·âúáÌÏÝS!º†õŽþ&FØyÐ·$¾ó•FÔ‚ôÿýÙIÝœÆâá6ºÑ€Hž@Ú=\0Ëûœä,}9ÐÎ	2â€.và‡™˜€¸“\Z!¯*\',¶ÞÖ„€H1|^L¢Rÿ=©!šCE\'Ær>,JÎ^)†\"š2ðH1jçAT¯ÿbIcûAÖ=š ×˜HŠ(…6eÖœZº€€H‰%<?ÚriX˜Fs\"ˆF‘Í^åGŽ0qúe3§iôýxA„³\'H€íì=YR‰¶\'¸¬ÀÒ)!¥XŠñ—¨3ˆÒ–”Sêð =:·)€H‚”€\nRgŸVº&5NÕmÛþÎÜ²¹Ì\\5¬’ñ¢FÚxöÔ5Âãžë„ÍÑH VU„øb\nŒ¢kÜhRÊˆàžZ˜Wut|¤®jÙŒo¨´2)¼°6®ñ¹-&Ý·ˆ`m\\ÜôÈH¢ß#‘ýœáðØU¿Ig¶‡!d­~\Z÷4\\.·4À¯ü*Êê®Öä.`p \'àÞH¤	(Æ[D›’âb1|\'¯õvoÌ•êí`ÍÛƒõ´QÈ€b½õìÅ4½e¦‹ÇÀH¦kZ[9Ípø\ZêŽÖkØ<µí \r¡ÙžZA—øë¬Ãú\'Wˆ)VýÄ{WHkIVvR`H¦Ë„a²EûCöoÔ©dF0éØÄÿ ¿û4^aÆ÷õ\'žˆlyD9 Hª úŠ³ÿ.ë4ˆ¥}á¤÷zcòð˜ƒÈ´9£½÷LžÜ¥»2¨Ó:”åK“ø8ÿgX´gzä{THª¿}\nM\\wª4»ãÀŸÔ `jÙ7‹Rg±ôšo?¥ïU¢\r1 ¶b&Š|H§íã#Ê­íQÎ¿AºEp‹ª”=Â+ž:’~²<b£aÖ®öïæ’qkìáTêÇÍ›²Ø¤À”^žèH§èPJ	¼8e1JšÆ;yú6ng*ûÏ\rïžÉ²íI)Ê¶l™ÞU¤Hª<²+ì°¤Ý–ÈÏÅóî«{¯=ÒºS¬»h!˜Ú²‘Ê1o[°OE±:Ó>[ºH²Q%Ath_’P¯¦\"˜êv’ß¦×e?ºÂÞª“ÌO¤dgkaê!oÎ-}†ó´@OggS\0\0¨¯\0\0\0\0\0\0\0\0\0\0\0\0þ;°384)\'#$) %\"%%& &%(,.\'%&H³t]¿.•½ì.§êÈþw…ƒD”æF¶&á#e©^²Ô›mƒvýÂlê±.t€H¿L> YE=­¾º—@‹o ÊSKÂ¯Ð3úÃ»‰ÂN0ø2šÈL¦äôn–P@q-”v³€H¾ž”f\Z\nhòÓPa²_ÙwDæFê-,5:no»Tèh}\ZÇw—–’e³Þænê›1xH‚ò»´44.UˆááÜÍÆ/]^»uÊ°±¬†0¦¦^3vi›ä¶^HŒîíÚ§d…).¨W5eñÑ>’\"zÞg«£ÛS7´¥9 ÜqßìààH7ØVÆ°žD†U[‰ùä«ÙÖ¤v¹ïÒ\Z}úÞý¤¢ÊYüH4¿ŒåW)%¯ÃPua<ò\\)ò™ÕÎ™dË‚ýÃª=NH2ÌòF§âe9ÿ3ú“ËUïÏAùõ©³È”“\0Ý<8h¸øHKàHž·+Àh¯ÉÎUUÜ×GéaRz Æ¡ DRÔ€H/*—ƒ_ÓeQAÄŠÈ3Yn³`kš¸Á™Œà†™¦¾…DH”ÙD×(Ÿ7Ò\'¥\0-Ÿñeå˜Äž{Š\r²Lk†<ãô‚H-’Òu…¹\'ç}Ü†ôZc³|E÷#âÒ±ÉQÚÔä—ë(HŒ\\÷Íß44	×j-¥fŽ—Ý¸/Bƒ’CôûÃr>7Ø\ZH/;©L)—^vËHú§à}\Z(šðE°òÁGºÏþ÷\"™„@H/&F|ÖÍõY°Ã{ÌÂ&ÝsdÓgÆÀ9ÒÀH0ì÷¦ÆÎ>\\ã\0C²\"È‰ÂÜ-X!s\'ÛÅ]ÂtÅKÖ][ûH+Œ§&¾Ñc˜¢Ãã½_(&=1œ¤™/›.½f¥:¢ßuvH,\ZdñêA“ÄìObOn/\'OlS$+`HŒÏæ\Z—Æh-Òª\Z{èH-YËúá>¼L\'ðnÇsÅ¢Z¦vüFé ¥	hLè¡b$³ïN•m*â«H-Št°auØdžÉ–ªÐ~.š_ˆ	EÑŒGæi‡ŸÅnS¶ŠiÿD–SH/Z:X–Xí£Ù™RNbÄ\0›ÀØðÝ[5¨ññíPa)­…ç#XÀH/hä#ÅØð¾Ž€°üZâÛÑë›b«èíl¼­ÿ5\0Ð’- H-uRë…ýkys!	\r/€Õ×llM $\Z¤nBªµAXþ6à','upiadirukuna.opus'),
(30,'Bebida no alcohÃ³licas','Upiadiru man machadirukuna','2022-12-0514523762531bebidas no alcoholicas.jpeg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0ÿW[Ñ`65.--,\'$##!\"\"\'&$!\"%!%%/)($%*\'$,#$)/)\'(%&&\'$*\"%(\"$(\"!&<86/36;10.,;;5:/&,0<=9+\'/20+544/,2.,2/03/HäÁ6ìÅ€Hóùüø<ã[hç\\‹”x”Ñ4‹³‹%ÅA€H‡2¾<„Ó¼<þÆ™„Þï|pkaÛ3à„õ4¹×Ž’-5ï™êàph/:Œ´ÆhFì4H‹9MÖ£6®Þ•x \"Óû3–­ÅUž…ÛF.€¿¦íH]Ç|Œê„ ŒS ¸½õ$H‚©(Õ¹­Lþ¼£àz‡ZÊ–ÌØÁ@.WSX[¹{ý¹9Ô}\"¿X\nÐ	¶HŽœÒ­»‚¯[m^cÆ¾Ùok`\r0J–rpýb­—$£bÒSo1Ú~¨HŽ^pw`ZA[Ç\'èòkàMø|ö1°àTq¢X.êu™|oGª‰|uö€HŽ^oéˆFn»É¦Ô³°úä^®k—9!àZ´5eA<“XUlÏøÐHŽ^äØÌ˜Qó+ÀøüýïL¤ ¼	¯Ô”{ÓÃ“ºšjNÒ€H;=]²³û,oÙ]Ì/³d6ùI¥ ü\0ö=„<\0(¿i^ÆgH:g¦½Æ4ï¹l\Zê$Øÿûµ{fëoE€D*hJµpH8ÌªkºXUî[äü÷¸¼Ï’PpÌd#ßka19ÝZ§Ý$€H7%JPýÖV3¢— «›MkH¥1”U~~—mÉî6&ÀH0òA>iuçøp/o<©_¿Ö›“äž¼aÎÉ‰‘¾ú€H.Äô—eÁ©BÞ¨¨£N£¨þN†v€?ñ©CÏ#÷ÀH-vÁÃék»ËÜ4pgðR‰W³YûCoábsœH-~ÊÒ_­…m€oV•¶ÖJRÉ,O”™ ÀÅt‘¦à¯uàH+l}šCí%‚JÙÌD<ÚìYˆÞù‰ãEºû§Æáü­E€H+l“µn¡‰­•VÎû\rÇþôÏ÷n:Ht¨m „÷)H+mE#\0@¿ÞxSx\Z×qæ®U9(oC×J÷ªëX1µÖH{{º&aÑ9\n:²ºç%»~ÖJÁAsÚGÅwü‹Ù;gë¢ÀH¡÷Ëœ Š­:[ªç›føkÄ}3{\'H²š¢W7f×`HØC¬Å­¡>‰_MŽÙÎ~f|{–(Hi·Ð°ºQvà)HôU.·8½\"Éu°W“9…ZP,F‡T¦nGDÚþwT‚°“a@H8!CYãÖ:v+¹U-ÀBI$¸Ek%Å®­¾Îc}µ:LtàûQŠþsÌçñPH7öéØ›jå‘¨ûƒÕ»lf›opÇŒòyqaºÛéx.ÓS—ß7.\\å`HŠë¾LLö¨|Ozùïy0]æM”¢”?\"ý_8ÀW$¼¹pÊÀ©hH7\rgnÀÐÝ2WWØÅTpÛwøûHÑ“U&ÄŸÏîÆ±|$@H@ÔÒÃ‚Íþ\"äÂvo+:gN`°{#ò1¥¹€H5npÃ~ÀÅÚ)ûs(\\\0ì¢2«oßHTez¨5æidáF ›LH4ú;î±ŸÕl«È?•x$¦†”oEá¼\ZáWAÃÞiG H1FE!âzø`oqÓÛ¥:oÊCE®Îöæoî–æò”($@HÙxëÞ\Z²X+K“sÌ`˜Ç|¶Ò|ÿ£Aý•Oýþ½+IÈ=‡€A½ H1Fj‚j)Ñ>™Í!Æ@ü€7RäÑhR²ƒ¯£ña2u,ÊH1H^ÞˆQ}XšS\'K±Þf4*Žë% \rª§5`Þõ—Vu`H1ŠÑ€’%”Þ¸Aõ¼UÄd€7 Lth©óX«ø#_ûÕ$OìdË H/8Ê„s2Íb®—GcÉ‡É©±&(ý¬\ru9¬È\r,&¥z8È2‡/á?“>)àH/8Ê„r¢dM0½èXö=ã}6ú×ÈnO\'ò¨`È8ÑÙØ/¦¨áhèH/8©RÁ\\ï\r‡ß0qvÄF½ï8Ï&\rPªä4^N^2#ª.H/>QÕÀ¤G¹¾[ÃO-¯&yÁÜŠŸh~ãk/¨ B•8(Tª€H/?húžÍŠ/àæÞ]@3´ü7›R%á¥ØãÐlí:€H.»\Zu™•mèñ‡BùzhË:òn§aCòjðîRT\'×>&í‡åÀH-Ujs‚ÏA\nyóÓý5ÌþPPð@NÏÁ^¼IÉÍêÖÚŠGÂŽH-þi­ëãln.å´c”Ú6èO¦m¦ž1!ì†G«Aÿ§8Ïwgb“DH+.`XþpåMþ8i¢â;mìÈ—ø$çè3uO¹âvU`H)‰Ä}&{Þ\"·P9š0ÒÕ¼:Éw\"Ã›ßb<qs/ÏE³%½>¯àH)„ÔÂ(ßF@cuó€}-TÃh°ÎÅÚN][hst$ÀH)…S»é­*¼¼2xúÞ*Y}ðýŒ7aÅß;çÃ¹n©ÀH\'œ‘D&`ô×LÉ@Ì\ZBÔ2½ÍCÑ:µpÎ~;H¹[\0P—/Ó½ïÔäH)E g¡( ¼f×9.ó} `ºŸ a·F}—›\\–X H\'ÅAÇëŒ]Ñ J5E7KvÏ@‹äQæÜìZfóÕ§;ô¡è€H\'›AžßY,pòb\'×[ˆø†bÚàê{hcÞ»!æAZªú‹hxH)„S{~7ÝbéÚÔâÊ\níåžMïN/Ç¡J:½®s¥pH)Tö\06Å9˜À•Ñ¸uYpø}ã^¸Pîw\'©ÃÄÓÞ”Û1HD¼bLf<r!fRPò’€%ðrúäºf¤VÊÅÍþÉ[>æ¢hH›Ì(\0Aí»W^Fçª¨ÅjñØk2Ù³ÊZª\'quû×óNo‰Úw%ÛRô,It¼FqÖ~R#ˆ9\nPÞHŸ ô]olá±¯šÞ~‰F¨µ¡Y@K”\0Ž$&õëªr[àT@Ÿ÷ÇzxáD’Ðé©„e×=åH£ÚiÃ\0ÍÝÑý$g#¤NÈ´äÂ×m4Rµ7üå½pcG\0ü}U‘®õz5šºõH7ï–Þ@H¥(×jŽA‡4èÕ3ÏäØf¡ò48…ž·#úê)(Ä 	Ë»jÓ¥=g¥ñÁˆH¥7‘%ÅPb¼—f†–^\'&B 4MT	Æ1M£¾>#Â±™\0{œ>s\n•Q²[t‘(0î*€H§ˆ·†I\\òù7ÀEáÛ(ÓÈ0M÷øû-«C_ÂÊ™]öá(«9èÂ&„Â1ËÍwùdäšH£RKÞì#p^­ïï|±3}»Ð®Ë~Ež€ƒ)ürTxüXè·å;Æß>–ÿØ Ðy/ yÙ»¹iÀHŸÆÊØRMò*vbÊ Fuh•ˆùT‹q+³® î*	Áô¢Z=ÝÏnnô€¼Ú)SýHž>ãW™6ò²6µ\'L‡¥ŠŠWÿŽlV@qöŒ‚CïÍ°ñ™LÁ!>^Ì0¤ûwjHœin37]go‰à™1mºÂÉXÃ7%åOözsVPZXR4ÖUê„­H‰îžÿ¥Z¢\0jx¹IAtt_Ó-y¾ÐŸC†ß„šW%‘€|q±@HœÈ®ì,ÌÏ³†YN_ÊÞyšá²ˆ<«%¦õèÓðŽ9$}âø–\Z™$¡%±U0yTÂàe>ô@H².,Š¡˜§F¯lNê—9ÄVNÄMŸòKòøðì=ïzêT¶ž	++…é¤)*¿e~¾”2,àžÛ	D‡ H´L•Q†LOP›Uã£9áåKÝ•Lû¨|ïG<LXP0’»©^?î8{Dð²Èª‹W‰HH¹Mã™\r_¹Œ†ˆ•É$’ˆ¿[Ï®`Û‡Z¦Fe£×‰¡Bö·Ÿ?àã’~ûy–sJ¨a3)oA H¹Q÷—7ëÅþ$ o½›\"2Žàdqê€¹T¸ˆÃ¬tôŠƒI·YGsŸ•H·ÂÛÉ4äËcž¢†DQBÙ·¼*À››eÌ(ÿìøŒø†âPàH¶¸Ãªâ¤9ü(úÇK‚z\nõ«o(«‹ŒÁGº| ¸\"µ!OoJÀH³ªD«îóe%ƒ)‡â+\"\nÀVºêfÛjøZ&’mÔßIOµJq>%ä°èH®íW¹5ºHnO\"·§\"4y®ŸQË˜`lõ«Uñb A¢7PªNOñO…g„Æl³áïÖÄ{H²©JNvõ°âK(Ó)º l`”zìX=9½ªDšË”¦¼§Ì~ÿé›ÑŒãÊ„¦8Þí8â%vHµ\nª6%ø=¬ÊC2‚0ú£›‹Â>%Á8ñ¨:{·á°ÍÀJo”­ø·o<ÎY)ås)ê\ZHµ\n\0‚Ë~BÒÓ´,5×ÁŸ.ÍA¡‚ß®ÿùý&pøÓª*lf8f†!2ÀHµø“?6(^‰ïùã© ÔcÁ¨4\\™ƒxš¹«ÿ¤0§þA¶øàH´ÊTž©S‰Ò†Øed˜½„O±Öt\'$! \0ì¤ÛÀÎ®‚æÔô	á¥#ÁÜe@H²	[64£ª.Gf(ù¤º@FÝjãéR@þ¥÷Ì\'C•_9à]~™vëÊô’´¼;H±Ã»G[¢R7AbRU(—ïÆ7I7ž<õzQu³©£xd×Bo?÷užÀH°‰øSGyÝ„*;Ô*u!8„è©CØød|\rØu\0è°ÎÜð€H®æ‚eº¹ðÓ”-}Ú_­®Å‹´Âaö™@3P9¬áiN:n×fmã„b¦ÿ#õ)`H±èÖ©·bšklú[É<»øýäEä]>(?:Ô&p¶ÙôWq$àgdêhu\\`H°AÓî¶Ì;˜Þ×p¨y\'2…zFzTw5žÆ×5‰|=¬n&TÔhg[q°:&N œÈH°3ÀRÑÅq#Ä]zË	ÍÊ†¥>SŒÒ×mã7Ñó<®ÔQ4—|C\\îï©\r€H®[3*UøzJòß‘ÝÝ+”åé²–ê•ûæ\\Jø\0½ÄÀjÛ>H©Ï“ö<3AŸÜƒ9R…„Å+zÜú»´(S±,¼µ0Z}ob§Xh‚fôð…éµ5\naÀHªö»|-Cƒˆ3ƒæ1ûH	ædö¬ç þ3qD\"Nraèž9îÉ’6æ#nI\"\rwH§åòú[;-Œ\nµÁþPºæ¤\0pÞÿüœG³Ü4¯í˜ÈùÜŒRÆ@H§èL}7C·ƒsÆnFÃJ¿Â\\ãõˆ`$f\n÷øhÇÉÄaá§&»íãã¯9ƒ®ðH§è§E‚\rÁ‹<qošh$@ŸÚ¥G!Ã[ÁwP&ŸS UoÚ -¡h( -ÎÎH§ÄVÆŠ#h4&6Ô#¶Âêið8â.Áxÿ¬44ÅR¦‡:CýÆ-,¤ç€H§è£ \n¶q¢DAæÕ Óð@â·aÈ\'O;KÕ»¦†¸äÚæÊÖð@u\\9ÒŸ7rÕÿH§ÏåˆÊfU´ƒ=&¦Œ\ZäJý1=?íg[£\Z†‘sfMãñ$ir•ÿ8OggS\0\0¨Ÿ\0\0\0\0\0\0\0\0\0\0\0\0Ü°\\S8532.01420++62+/-*+0,/)00*.300**-43/4-/1,#\"$%/;531250216.-11,\'#%$-\"%/$(&#*\"&)*#%\'/*Hª<H\\È,ì42r¨ðëç\Z1ä\'Ç¢‘K{7¦0B¬„‹)E©DëmP©J>³Ó™:Ü› H³ÿ²\0£´Xê…õ\0¢³éákÛvÅV¶èeºT—ïDÓCŒ.Änš\Zç¶ÇÅ°H¶A¦å\0ÁÑš=ú¢Ãsw+Ø{Ùþ\ZÉsÈ¼å(sÅÝY†VhSé?ÛÃðÝ@aãPH¶ê\"ºeþ¦NŸ3¬½\rëmMq‰´M^ú‚Æ¶ÓàxÛ…½€¡+„$ÕÌËíP† H¶Þ«X6npœa_’ÃÔ3-¯9yûÓX„[9ºƒ\'¬Î]óœ*xN”‘F	•Ä`H¶˜;ôH‡WºZÖÃÔ7,uNLŠ”Ypè­î)²ÚX‹d	¬ú¢qA5Ä·»=«(H±^|YzÿE¦Ë½œ=ê\ZèV6¹!/XàxP\"óÃžõ\0?^R¼q¨»°HªûF¸kí½D¶¾6ŒÕn¡¦€I|ðú`¢ñÍ8_Xç	ðúš]Çz‚XÖsažŠÂÈH©EGhiRÀè½‰‚»Ú,Åª\nü*` ?›ºº›Ag0³mAÆEÎ¨6\"ÀùàH§àaÓ\ZÐ“™è˜¾œ=–C9à	Ïs«çõá)\'c¼Æªîž~T?¯0Š¾ë5H§åkÇÍ×éE®YÐ.Õ=†ï\0<7¤qN×ñ¸~”³%t‚(QÖû@H§Õ¤*éïÎ¤Ž;XÜ‰W-0†EÄ:¶œl4%òçÎ¾H• §†í¬H§÷9Æ)}¶•FÐ¥Æõô˜£»Æª2`ÅË¹62T§Ä–»7FÏ…#M„(3²q‹Ù•ÿ#\r‚îìH­™È¹Slvö|Émnì#*mrUôÙãUi)„[Þp¤(îlik*´Ë\0¨Hµ_µñ\\­\'XÐ\Z’€n¯Û c«žnsúö(úõÚ¡/Nw‰6oA[‘ZH¶!ôòNú)RÊ˜YÚ- ·á-jµ¥”½Y¡ä¾Ùzob¨G„:=ÉL H¶™¬¯8ŠºAœ;¬°gOçˆBÚqZÆnò”CÉøì-º}ý·;Ò¢/$‘ØH­å¡è—šg»¼í>Aÿ&öÛå~²Š¡Ÿ°¹JQx…ððb\r®:‰ìÂH¤~/*qIÊ‰Øuß{5yGófz½c[z(9=fÙZÌµ yrJ H¤NÖMJKÀ³s	|•–~…q|§Qµ$¼¬Þ„FLje9âÃÿö]k’Ó‘ß©ÄH„\'qmn_\ZÙd?Þë_9Ñ©Tm’©(Ë¾K¦Gž_`À;¾¦øäH–pu6èùã§@¥–¿9M1Ù ´„3Ì_}ñpÈ~ªoDÇe<,îUÅÔŽ H„¥üÕ†¹æ,úÿÒVéäÓ¸P4ìôœô«™Þ=2\Z¿y	IDEP@æ`H³ÞîAQ‹n|ºøÄ¡«2ë\0£µ„Õº¿/}MÉ‡¥ï&Fr¬šÐž=zx§¶ðHµ8vÇËhXrvCšç:azgÒEkñÜe‡QI4+Ùî‰ÏµÊ8éë H³6\nÙÄÈäÔ¤£Ò—ò12êÉã>]$ñ”‘övˆ¢wq=¹ˆ}?¦š,H°%šbˆ¾¨>ÿ¹g’l‚*çã×üšç6ŽE\nÂÓG[²fZx€€>î?p] H«Z¿&±ö2O]S–[+GÞòµ‰P|sÝÆ(YÎ§1I&r%\Z¡ÔxŸE#\\H¬×³¼YÁìuH›âù†6B#©jeyõ¨€Ï£þ|YHôN{6ý’½ùµöÉDH®È¸žó™¢r¨ÛÇ®sí(¦´O‰Ñ(o¥þ®3 ~\\ZI~ÓÛìþþõ}|,H°{ƒ#ãq\'œ!ž¸t%}.²É=å8\'®uÕ\\¾=¶h\n–œÔ²‘H±ã0ÆKzl°\n¶#ÓV!W²lÎùõjA`à»:aˆßÁÃ—§§˜`H°VN·Y½±·ÑD6h‰mžê\nÑæ·­²çDþh¤ñhàdº¢D\0{:\rWü H°E…°äH~²›ã@]\'õžK=eK|ðe´È™S”×XcÏÑ\'I.KC»ø™i:(Œ­Wœ?H°ü//Ìü¬ôÁÕÑsß7ÿáI=ÔþPLîoƒ‰#,‘‡‰ëU*¨BjA^M³˜‰4ØÓH³/tœy€š‘3Œw¢dô!L£`ÚžG¨N\Zr+¡FÉñ¾fk¬RÀ™@ö2ÀH°^Y\'ƒ®·ó+4ü\r‘;®c/RIÊ•L*]ð\0ekâFòÑB¹ÍÀoÍî¢†íÔRN\0H®H°9Z˜ý\r»§ÒÅ}\r‰Èmy&NÅã±|qv”ÇµPdDIÞA<ÅXH§N¾º_æb´È\nÈPê±ˆÚ«<m\"A`Úp5ÝE„6ÏA]’uÜîuÑ)\'¸H¤¨?\\gˆ}\rsðÄbèÄ}ñI)«ªŠPƒl|›‚i‚ƒ¯Ž0^×‡ödô÷ü8Ü  PH‹Æ~)šÜêdVõ\r²ßó-]°QDÃÔ¿ºÛ¾@·h\rq•ß ñM?-eÚH6<“Äí Œ’×œLù\ZjŸ²ù.^dõ(0¦‹øÁH[DíHÛÂùµ³!éYý =!3ã«?Nvó.Ä.¢H0î¸¤Nô¨r­€™H*9‰ú2Sä&áïwpHsËÕ!´H€í`¤õë*#k½mái–1\rï.Å•,u4Ï\r«Ð\'Èä¾ã`H‚TçÎ0x©íÐ)QP´ý€mFKÂPwŸ¡	Q/ ”úá%,}ÇO¬)uH ”ÔÑ2¸¦„‡¿Ýê÷†¹QcekO~Äï;·xE-ÛÐ™!•WsB|÷\0‚UA­ZªÄP@H¡xh¾Ðyò‹WöPkÁ±þ4.%¯œiÂ^¦s¡¬ô²:ÌÑak¨1.Y£×‘Uô~{ÀH¤•BF5ö~\næ+WË¾E7Ž¿¾˜êø³S“(30¤KD;á³´8à¸ù«(H§æ\n)|Çä¬ù£™=ÝcLo‘¥1È”\" kAå¾^«}8PïiƒúîšOF€H©}i{±s!Äx¬Ø›Œ¸¹½ÃÞ5XEúùêÙñ^lg=ÿªáØE_O®_ÕH©›d`­|²|e0ÇïØJ4™M]‰ETzhbþE÷:	P‡ö6I:ûŸÏ’¾ºUxq˜OPXH©hsKSMˆBðGËv¡Û:µáµ,^aÏ½@UÀ¹ôv±©ñºÊ·4¿ù\Z0`¬9êH§ÏÔ·™G“mš%¹ðCœÊ°ñž½[lÌ~òUëGg62œ¸ÎD./Ä55»Vß``H¦m2à¼Ó±\"j5Ã™³Sëå&MÒ)GÐzŒ<¦†:¨*\n²¶–Pq½_ÀH¥Œ½OÔòÃò!ïÑP^uRý%Ý\\FïZÎóynÇ?ïr)`Äwéžñk×64É8œÀH²\0Þ`£Íè“G”qèPÛ™áû³íÀ\'×á	†ý\n~l}<ÊÔ.ã,Íðln€H±ÇkÅ\\âL€C´`~ObVÕt@¸sVRÕ—„òyÚ²éé×Êßí}Ñ|dÔH®\\J«~šrâuà%^ä…&Ö^\nÓ#Dƒ]Öà€VJÔ§«xµ0—ÀH¬r$…®!åx5¤Aˆ¢vÅ–(¸®$º­¯N:iKª¶=&õ™H¡}`/.‡M€Hª’~;¦ tuN\ZXr8=šðõw…~YÏ2ÅúÀ=u‰€€è«\0¸€H‚l¿ƒ’i¡‘&w™¾ÆZC°HðÌ©øi“LZ¬}O‚\"óãÿH“‘Ã©€{…Ì»ïâhÌ)Wj\nÚ•\\d†Þ|ë 60“4¯ÄH6{[JÌ_û¸èL€·MÅ’S:/ã:ÔþE›[¼J‘H\"›/HhÂI–d•Þ\"—ŒªÎrS¶ÃxÄsJjyþ|æÇ[¼\0ÄVXH5oa]dEd>Î2:»SWhQñÊ}Èc)‹²n\rËÊëx}}?ÍùJÀH5¬“¼R;?Àêˆø‹‰%^Ö&Ò«3.›½é6DTH4ÞR?ºf›•9`¢NHCŒ*hÆVïL–Ö@¯«DpH3\nˆ>#\rÐC¼€×Á–”Ò;\"²ä¸[OvR+‰Û(öW½ÕïãKâOn¢r€H4üÊ‹ÈcŸ®þ”º)†½³1HI‹ùS•w†	kýK;‘êª÷=H4ü&³0þ—6m\' æÿ\0Y¢Šj0Á °Fb`Æ&â5_ô—. H4üÅîë-¿¢ÈÃKF±{¥årC©™:1SÙ,ñ4ºMîãÃðH4vYo14:E{S‹xý¯¤¹øÜ\ZwX:ÄÀ~sÇ?U¶KdH3/’Œ\'BÕyP³2IšH˜ÀPGÂ`Ê@ß«wcÎÚ¶o8€H39N¶Etüƒ§CŽ‰Ù5oŒœ¥!:zÿç—ÿr0àH39DÑV€î”m¦ˆ[€]°fqÈ£–ß{v(©4óˆÇ/Œ(BH3>@{†ø¬àJ‹\"!_Ò+\\u™¨3™°Bþ9Š£ä8º\\è×ŽH4vl’ÖÞ#ù!I5%fY˜1wç’Í\0ðÛ# ÈDÁãz*\"D5‘¥ä H30Ü#J^…†,ÄÜî_í j\r‡}˜Iq§‘,…H30\'¿ä\ZáÜfX‚Çqi¢zPÎÿS¬Ý	þ½§TÙŒ’w\'H1\'!mëÞ~N’ºÔi¨YÍX‰<ÉÜC@æÇÁÂrßó H1VÞ®è;ª¾59þ³>»¦òÕö·7°{?|«÷J›Êï‡\\ºÜv¹€H/_D¶YçÆÂ™Ž¢OâÍû:ÿ»ÄÜ%YßîBÄ»þ÷àyŒù†','upiadiru man machadirukuna.opus'),
(31,'Plato principal','Atun kallana miski','2022-12-051452302954313platoprincipal.jpg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\0ªiEBc#/+\'-+%##)+,&\'%$$)\'++%$),%#)0,$-!%*!\'##$+#\',%&&(\"%&$%$$(*(!\'0=7747:/1./(0021522/--+.4/1/2728/.HäÁ6ìÅ€HàÀmƒS°ù{&®N•Ú67H†\rîE\\ç²¸bPøfo[›ÿH¶>îGá²yp°H†©DÍ.P>ÌÖÄµ0{h^ÑF¿`ï=Ç«ôZKñ2á~–ï_ŸŸã¬H†¹Ã©ÀS3~ÏDÁšá*ê_kñBPãÃ=a#[•”:àÆéìLuÕ\"LáiH«óžª¼Å-Òý†$A‚gÜ*KÍBK{‹?6r\r¡‡H\"1Ò2!@ÉŸM×·È½FÁBæ­uâGÅzê¶šIª0˜r~â¤à~¬¬@H‡–\Z™»š¨œgâå4b®SÙü)ŸtêËkkx1MPhþ¢Üš[¼H‡úkr)+‡´Ó¾÷/†øÆ\\Òu§.²’ˆôÝŠ_øæ™HH¾iöä[4º«È–VàÃ’d.×ê&ü±éZ<m_¨÷ÀH\'Å:6œÆ\n[°ÇBÄbÐüÿÙaë®¾	áéªëóLH\'ØSBÌÉ/%/ÁÅ »mI|Ð2¶ÿ­z¨—ÅÌ#¨áJÎ?¬H)„…†c›tÖŒSSÚ·[ŽkÑm‚ƒ¿H4ý‘ý6y\rC{DBáÀH+–ò·Wc2zõÎ:.—-G}¬.<—J>æô\0²éÇu°‘°ÔHŒ³B€H-K€U;÷ÖëgYñ\0Gu‡Ç(i„‰«gæ³f-ïÁ\02ö –LH±¾‹.r\rD\nuâDdî\0D Qôw2ôTs\'èËXOMÚzESa`H/>Å\Zù¤tåR6i	úì¹®ÏK€P\Z†ãÔˆ?ðÍ:ÛnC˜H-V\n>Gú¿|eÐ<‰5‘­PoF?!sì·–“t3¹H,Ã­¥d„íþÈÓGüœ§ÿ1®bË£ö¦uA£¤yý?ÕwÈH)„Á	Õ4Nñ›VÇÆv¯ø@¸R ‚:\ZôuÙO<.tí&Z7v½>ë€H)æÅl&_£AkßUËD§Kã¹´ßwÉw­œVrk&PH+„[ŽÀ—ïS›“>¹õªón#Šw‡ä³cldÝü	¾1DÈðCUHD91²çÔ¡ðMÂG— ’tª\"Ó‹Òû©…mËŠÃ¨táÄß,]ÌµàH.ºþø KìE  ZuÚe/–uýº£ÿDÿ5æÏ•Ñs¿bõf‰H-H*êúBƒ÷®÷O×%µ‹ž¹&·ÙêÜèrJ0ðB€H-‰ãð§–iþ°ôfYB=JpF²×[W‡¸zÛÆæY³g¥[‡1PH3:ß¢ytèY÷¨šbž§“\"þkbdÖ¤®*r7Õ\Z\'|bD÷ŠHT™º´á¤\"úUÃÓÔ½¤±–ªmv/ýTx3jËYµ¯9€Hëà¯DhV»Aà,|Ñ7ÇæÜªÒA g\03ØîKõ€H7\\^\\µ1¨p%ŽAt½§Lû‘ÏŸS}È0mh†‹:C·4%Ç€HŒë¬Rë„šÚ¸õn˜“¢j×GA,H\rð’õ°÷AÐ¾ñ‰ŽåÖß> – –ãÔã$àH‹è\ržŒ°¨SÍ%ë…¨ù} ÐÎÀy+þlÇðB…Óz;\"ÊÕÉç+²8Î. Hýªì5\'Z#2…¯jFäiùñçÆ½É¬q7dÛç‰6ŒŒH€í‚-6M¨´™(ç;X¶:òMV>5Xì\n±¢LêúoÃ ¾à›ù(@a‡vV@H-Hø8C~‚!€u†ÄU¥»z+mcL•‚ÁR:rˆdH*æX–\0sDRf!nh|½w;¥—¼f\0M³ø±vÊ×Á(H€ªK]gÌLT\njÄv?«‡›†2[ÄÙwÈo1à`u×c·>D;FH7À]d›Ä=”Çt{³mýa«Zšµ|è.Ž+Á‰HÙpÝ‚’.r­`£>ø¬åFy/ }éô„\nEmµ@7B H2œE„¹±ù¬» TwÚÒ;0÷\0‰ý‚hU˜¥é2RðA5ÛxñàH‘*ÑôÚyñr\"|õ’Ýà\niåÉˆ¾7}6É*éë‘!HÀ½ ÀJ’™V\'Ê‰9:e`·/¥‹m\"ZÇã1×%rGHµèm\Zá×YVj?)7.µ}Ž/Ù6¶§aY>õt<ÐpH7Ÿ ra˜9tÕ†Ó—Ž\04=ÍAOS\rÏLµ§ìHÞ7üZXÎP-³êÔ- ÁãCßÑsÀbJ²DÌ^ž/¬%ÝP»°¢²H2mß²Ì×Ðñˆ9„A	w†¥ç7hÐÈê,ii&Ì\"ƒâŸ:Hb–\'~¹3éñfÞ¼åP¡^}â,Aô£\nq²y3Kà·È™%\n H°ªrÙÇÄþè©ãÐ ºÆ4+1	?)ÏêêM¢\nGŸˆì+Ô«ÍŠÊäF HÃOeáS,ò¡>	ÿ‡ã¦ÿD¯þñ(ôÏ ±DH¢,Ì ³‘Ún½…½\r»™û]2ïd‚>¸{umer ŒH2…†^•›ï\0/žnv&BüŽ3üMq”„à”û“2íêC\"H/«C{±à÷2íŸ÷~†w“L/e¥ ý¿]®*ðpùM>Üs,H-v=8BjL\n:Ãb›1ÈË.l³	œÓë@GÚUüÌE¿|ÙìÍ H-Aüx™zììNFÖþàã!ŠË•¦ŸIª\"Ih	>›ÔH+lËÛßž¸­2w[\0–U;Z(ŽE„L&±S7›¥°H*éëŒ©ñ\Z¤ˆ²€G}kVáZ\n³h2Â/ÔÌP1+7„#€H)x¼rßîÄˆj“XÀÏ†[Aéuô3/×=éå.\"ìÃvZH)­ö¯· eÃÊCñ˜ƒËýz Ro£[åÜÃË’#—C}q\nH)‹@ÝÛ	y¯•\\Åð÷J1¨s†¹WZÎ¢ì4ÀoÈH)ƒúg4D-æË‚ÂžI%kJ6ÚÈÑl1Á»W2 ¹ü—H\'´Å±Ñ·§¦Î§Ö˜ÏÞ’Ž)&=çüí¬BÿYX1Ÿ€‡klÎß×ÐH\'Å.?w°àÕIzÎð®.]ÖÈ£Ö=ë}X‰¸¦SÔ.¿“|Qž®ô×H\'ß¶l’—œcOŸ•sV›1œ3™s1p0èÈò2\\@ÅBHÚ	jáH,Ü+ßZo}îò²ô c®ÊAKæ(Í¹þYýï> N#€H+ß. ï4À¼¤–«öÿÿZgÜßü0du”*–áÛ#lã‹Vf{âHykŽæ\\«øq^,N–J`§ŒúO2&Ú—ecº·Án}·QÚç°#•¦Ó@O8£åàH¦šOËÚk9aÕ#<ÌØÑµÄògÓjZR|ñ>r,?ÛŽû=»P(é)Ï>kù‡8œy\\¿\Zß˜äH«ˆç-ß¼ê\Zë_-bõªÏ‰õÈzÓRïáz8Ü²N÷b„x:¼}Sa‡äQõ’ç^€H¯3r\"ÚkvÉ»…Çƒ¼w: #\Z$Ÿòv.y>ô ÁkÊË*HËî¼–ZæïÀL·ÜPH³ÉÃR]m‚¬MÝmŸIQŸ•24Ú!PáVl õÕ¨K¬5ˆd­gæd\0™›E‹H´æ­ð×™²‚øõ\\\"VDFa×ïÙ©,´ž^\"dvð„÷€6ÈÉj‘›5Ço‰»	‹¦Ž^ûs@H±IõÛ»iö‘\0qó<¨xÕ6C&»Kû‚«šYAîPØ8ÇÄG¡>Öã´¤îÊWsÑTräH¤±3	ú–æiÃÚØEyO¼ºïÝÑÿ\0•u\Z]ïâ;bÆÉ/ºµx³HtN€H¢2|µPÿÅ__Ffü7$2WUŽw\ZzO4“ÄQ’”ä=.GÄá(µHž?ò©Á5aÐ7ž|ìeNþg¤([Mð‚-Aq~”ˆë?”’ÿñ¢…Ãh°hHœná=wÿ¡ûçrÊ%ëcÿN!Ø3BÅp»qÎ×ü¡/W©µ¶ÊF™·Q‘„H‰Þ¹šG–«76¦{ÿtØ¨DPéÇm¹¤òEJgd-›ö!4­4sHˆÈmFbCÌ§ç7wØÃ`dMØ^j$»¬ú‹i„,ßGòT³ü½àxëhlƒRTH¨f«8\rp\'˜±ÏÂá\rùC§ÍhQíÿHJå â…yþb$kº\\‘µ5‹úà–H¬ûþÆB%þáµ|\Zê¿4°â§…¡â<ž®ïÙUõüu\'Wé÷)3­Íâ9yVH¬Ç±UÑQ_þÎx)ò|DB`fnnŠ0ŒÇ³¹Ã*¹ãºCø<­ø5„Ž\0éúœH«)Ø	ÎU]KJÐñï~\"}×4;¦½>@\"v­+Äà‘ðÝ*\nß‹”yód˜ËH«N%t\råJ„¿ ävÜìñem£\r&#N?§™¦ØÎ)}.Ðpó‘—!ðÛfU’HªüÈ}þb…‰}Ãì€E3)SfÉ˜þ2HŠr”¬ý˜jïFž\'ˆ¬Åsè%uAPH©üÁjž,ùY‰úÐ~ØÿäÅ.í8ÅþI%C\'++Ä¾¿Uj1WV¦qH§´ˆþEÜ7^c«+Í“$1÷êÚÌ˜§nCLBö†)(ŠƒQ.ò¿3”¿<UH¦/»ôoMZ×ò&Éò)ä‚åê®Wñ•ý­€×v‰²swúH<MÞÎüH¤ç[B)•W©¥M¼9(¦ûöÏJqæVŒy&¥>í¥ÿÃÁO\0Nz”H¢nl5E2aEOG®å\\ûÑ”y†dÞQL&/}\0*v½C tÏ÷æñõÍ€HŸ‡ùÕlÔm;ôgÎ¨3 ê\\GE\"ÏRU×Ž˜c#\"aåëW6[J$j\"Ø¼XUK^åHx[|Hœj8ö£1”nZh_´³xáÿœÃ…3ÝŽµXìò@9\r/nÍÏutÏ+•	bÅœ* H›~`b@F#c~ë¼DN—\"“®K„Jâ¨mØº%Ð†oÔiõ~ô„s£IÔ³Uƒ,H› ™mHÕ Ä\\\\YÁüO <\0—ÖŠ¦ºÆ©å…t1öŒê¿[B)÷Nb¦Dµ9ÖHšŽ„<\'YÒO€´±aI\\qy†53G5ÿm\\hXîð9oè ”Ñ÷aûTçA]Hšo	³R+èbÅRo0Oåà¿–ºˆ²Ö 8W1±L$Â§Íhê)RÙ}È¹w\0&Ô{lTH±Kdê­ØÔJõTÁõ}\nv{ö÷q²Y4ää8§Ç:]Â4%ˆýÙI\\R€B=r|ðH´Q‡¤ã#›“Û:ƒ_»BH„\\•l7ŽMf9%\'¡~ñ#aÆ6\nÓÛ~\0àOSlV>S©ÌÄÌÖV@Hµ¸OóPkÈÏq¶^ãè ³ï*2øì#áö†»ƒ§s4ow³CòÍ´#TßxjÀHµ`#þuu\\¡öå8NL¬JWÓ¨âºßgªµ•¶Ð;N_’7K\\N°Ð OggS\0\0hv\0\0\0\0\0\0\0\0\0\0\0\0àûáE7.2/33)/$&\'2+372152/93/61.-632*/\'2)\'\"(),033032(#&*()\"\'&%\'+$(.&),(*&#$Hµ«o‹ûÁ\nU`úö‹Ôë¥‚÷¿mù\ZªQRÑR(¦ÝÉÍ¯–./ã×±Ì¼Vøt}xW\'‡ H®pÛÞ–Ñ©#û,0sóûFã^¹Æ(ÑÀ!Gšž³ºÝnm7‚h+”}Î‚H®4•ÒHç€{y&µÔk\ZAÐËˆg² GLÃ¾ØXÔDÖÓ¢6•ÐÊnõÏúÆ¡˜H«Å¤ÊcgEÇw?–Á«Ì÷«’>Ê6 rdCS”>–	!Î´ÜCÝpˆ[”€yH­ÑÎ2œ¢]­Àü´và„T;A)òx«ùÂy¯Î½Ç*f–<?>ÙYFhiýb„ÿ&H²Z< ’7áå#{HÃG÷v3x»ÅÃX¸#¢öQ¦£¸éI@‚)ÇïÜËK’sI(HµôJ÷æ•„äÞ›‡<\\ÆòËi¹Fî·–Ó5wøDÖÙXH¶‘VnXÁÔªý—xb”G³ß†M5­™6[4bRwyH°w\"´ =€Hµëù$ìïáU…¨ü-;E0}Ù»Ú¡z°:ó úLÜtTÿè€N€H´ÿ½K[	®4i^:qºh±2ÝÎˆÙG6Ï§¾0\" Èâa\"¨H³’Ftÿ?4²ßSÞ/7ê¶Úq-–ç`½yëHG¾&g1]ª²ÌH±\\¨zgÂØÍ xÃW\'Ï`Ú¸7‹(<¨Œú:zå3û7xg’\0ƒ-_°^®õÝ€UH¦\\®§“Lõf›tfÔ×Éa.?78“E6×¨~×.í,]35K™U×l H¥ýÅUÂYžB1\Zí‘¹£¯äý”Pk|ˆªƒ4ûòW\0œìÁÙÙç>*?¥ŒZ‰÷q(H¥9§sS,Àdu%àÙ\0”Øèè?s¾ÊÍ¨¨2éMô¢‹ùï‡±½¹ÃU“(ì‡·qÂH® Äœäuœ¤M¦;ó¨:2S5ºÜQ˜Øb¯ŒusK·µ½æXU J‚Y©æé;5^€H°S„œhÞÛèÛ<,ì¹qØ;\ZhðšÔÉS‡:Ø·¶h¥?~ÈöÆtpßªŽ‡ÆÂDZH°f/j}ŸÜÅŒ>¹}‘•V``ë5\Zêì‘ûX®Ñ]¦âLÉ¡uÃÍëËE’ƒÀH®Idÿ´oz;‹G§~ƒ@µäÄ”\Z$œÈÓ@ù6–^ƒø{Þ/©Ü°L¢çC–±¾H¨ø.³ì0*\'¬˜¨Ý‘rú±øæ>EXT#§oÔæ£–åKÆÉãt‚™\n­5)°h%H¥@Ú~ç™ÅˆI*[;·Ô/ËeUæ­dgASm­Á2Û*1D¹JjÃª0ÃÇ<20<d:¥©È@H¥€­.C¼‹\Z|äç¡`»ùé8±Ù»Ðœo@­<Î2×Ô	a•éMNÅ¬\\…X$âðj€H§Øn\'V$m RkÅ¨1ËTÏî$ {j~=Ð<ª4ìÎç[?3FU€i§J(H©Öíˆ€:˜­P¥ëFïe¤Ò¢&ÆÑ\0j%í*âìU2ò;r‰xï\"RÀ8éœÖÆ›Œ¿ˆšH±ôÎ2DëmÚÔ—ñ.­ÍÓ†ÇúÀ×eä½\rÑÎÒ”ôQ¢÷q=/ÍžzÆP³WGpH±ø¦ð\Z§š˜ŒwÏô^œŒžÁŠ¾ãMè«‚NQvÿùÖ¥_Jþôü—¼H±ôÎ2Ñùô7½ô	m‡qÉä4nÕ™3Ž¨~º‘^ýs-Üæd_ø¸–žþ˜H² Ï(Š÷	(ûC)-»’ÌTÔgz÷-®¶)‹+8g,€’’á£”Ì#ïG’6ìj/x_9lÀH³§•S©Ñ?õ¬$·/·Ê7qK“3é=˜•ÀžÖ`’äÔâík¹ÑµèÀl·Ô	4€H„všD¯æz%xÑµŽµÕÈÜw:%wRc÷1ØüRÛ1>,\"T.‰ßnÌ\"v9ñH„‰•>ÆÐýUGÚd434‹¥tFšB¨æ{SÆ¡ë¹\"sÝ Mv!£@H“‘I8O·ù(Ígœk_²dWÛ×§1@Çïó‡÷,ÎÔµcg`È<»4ì\' H“)k,5·§ÿ(B†0I5@CV¤Y¥—ÆÏe½¼µìuärH“¢¡çñü–³g¶û‰`½/Í .Él»ÐãÏFŽTõ\0ûJ$ˆòáßÏï©¯ÌsY-¸H‘Ã6áöèÊËöN-œÂ!²F¿p¡X”íä¯nÚ¹ô­¾Æé[\rëHŽu”?)@ð$ÝaâuVõùí7iY%\'ëËl(¢o¶€ÌÊqLH9t3t£Þ6!i­ÂU¡•iª ™cdå3â²h–B?H¯Å™Bå¼ú@š±ÿR>^÷i–²Ç|ó)J›–BûúÞ½^Ç€äHƒ¦FåÜ+¸é‹lÇÂZž—¶áz*æq…ÚÅ%u¦ÊîÚæ¡Kç|H‚ï†@f#¸E¢~³Ž™%\r.Ý±]‡¬@í[jUÈ\Zš»)pE¼YÈïv®ZH©w´Áz±KœGZƒ!¤ó–ìA‘!ýùð€BE/„˜³pRÝ0“oÔ4MÂH©‚Ðq¹ƒäÜ\'ocÍn¢ÈÚ){xÁÝžp=>AP–‰UçŒWø÷½„5õB5Ô\'@H©\0€ÄâíáqGAº¡4îÕÒ:ýYÛyÊ­\'z†ÜøÐk=„]¨ƒÆ0æÀãH¦}CîRnX­³=Š´ZR›k¹™¢šÌ?Þé\\m\'[áb\0š=ˆ\Z4Ú&· €H§0;¯kH\Z{\rCÅ^¯ò°Í!½|à¹9ØƒÀbzî»	Ñ†Ë`Ø/¯¾ªÜ€,H¢+˜QW÷ãõ>éM›t7j’—¢Žcd ¨bÊx§ºm†ÑÏ¤†Ý×Ê·$ @6H‹RŒÁú)îÈrV‘@,Á6ð“ªÛL‰öNÏ®†x:¨©íPd	ÜDH6hÔï×Ç¾Iø¢>§”½âüÀzÐõþ®×-1‘—-€HU&§^Hcº” Ñ\rêßô,äÎ²ßŸ¹0”²ç.èþƒÿ€H6s€ó¥Þb}ªY|èŒJÉøaÙØ¡·Ù);ÌÂþú™FJªâ†á}PH6‚ÏÏ?E’ÈÄ7-T¨£QÂØFÛ¸*WÒ}La$ñ¢‚LÆH6sÂq{VüÿB±=ø)E‰þ½:Dšë¸’ID³~fM€×4lpH6W²y@ËdIgEÿêðqë•G-›B<G8½¾|¤+àÍ0H4ºù.@s˜q³k!7­éJÒžß!aqF¤èd,]–ïPåðH2™Ô\ZX4 &xÍOå¿,õ4Gì1fY(;‰Í?‰Ý|Þr	¦H0­È²;wrŒŽl¾\nã‘yvå[Œƒ±ÀŒéd÷–\'íÝÜH/^‹N^L\"n;¿÷‚dÓ¶ûìc’½^†e@A…d4£6ÛH/>bÍ…§Z®ÕÎaèå\r!‡´‡?ªeÜÓRˆ[¿†œPô%þs#}çA&€H/hŠñzFÖ£ÚhwNhl¼l#²ý‚¤öá—mt²Ì·#®H/^\'Ð¨ãçéd›õ²X{?í	²¾&òÞ^–)š&ë[§•˜™ÀH.ÂËÅ¸?R±,¢’4„\\-ËÛ0õ»­ð/IpÖÀ¡žÓ´•ÝPÇÄ-ÙiH-U\\NÑn´€­êŽ-¥¿ûO0Ìû¤}£“ãÁ»ÁÚÕó;kªUXH-uB]€¢‹ õñn^¢òœ‹XXÛ¾J3Y“be’&–\0Ð–ÄA€H-uB`˜§ Ø÷uäÕî5õm°\rM]¬·Ð ¢Å¾ë¨»W%pþêI&%[ElH/#Æ\"Á,]°jD¼*r³Cã²¡è¼›ly{E(õÒG€Ö¬Üš€H-G~ëÈÿÓ‘áŸok<‰U´àE©[8¼þ\0Dj§Øi4GÂÀH-Y­…ç/¹[_vš#Ï_!UŠ%úš‚>9yaˆr\"Š®:²ÝÐ@H-vÓ…+</jwiÛk«wê«ìö?i÷DŠ@mž˜¹ì H-dgÕ˜×õZ’Æ_ÓðW†§N—±_8Ûçd‚`î·o€','atun kallana miski.opus'),
(32,'Â¿QuÃ© me recomienda?','Â¿Imatak niuagi mikungapa?','2022-12-0514525913136que me recomeinda.jpeg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0è–×a*,)(.-073+.\')!%##\'%&$# %)&\"(+$%,*)++*#&$ &$!%%$)#\" !&&\" )\')633154140;)-70/-/7<5)-2535.65:06/-9HäÁ6ìÅ€HáÇfá»2Çeï:\Zg[ŠÞÈH†a—Ží(vL˜H™‚)YÓ11ùŒ¨#EQmUUwKÔS-ÀH†ÚLŸÔ|ýáš[I’K{6_Õ%5S¹5Ð’õg§Ž6T™l®‹zÂÑ)qH‡/’DMoû|XÒÇTËÖé4°v2³žÀL†Ø™cæ ûÞãà$y˜vH€Wñ¨æ\\Ö <t+F¹Ó\" Õ´1„—Àõn#ãˆé`HŠiâ03dK\\Àô*×EØ­Š{²?%bQ£Ñn¸îö>Æ§ÍMíÔÐžmÃO(€Hz%_Óè„ùÚžW<Ónàa°¾§mûC3plP—•‚¤;&b«Ý£YìT•°H‚¿¾¿¥ÉG+Ûƒë‰yŽ®©OµŸ›}Ý1Ž2à`8fR^¢ÿÀŒ©‹ü¿RHH¢úŒ$ŒYd|ö\"šBƒ‘Ç„˜ J\rÈé¶åP†byJö²‘¤F)º+¨Q+™W#ZrH‚¥Œ˜a Ü†|¬&eF2V\"^1¾‹Ùt¯3ùðÉ{Í¸hòŠ.ÿ©ÈBìL¢Rõ×H‚ßnP‡G¸\0Rß6ž¦Ï !GEŠSœõv%>5Í…mEYD3øHƒh¼¨9ê§úk„xîÁãK¹0j¯UÐ¬Ó¨šÝÊk#´(kó]Ï\"½p\nxoHŽ‚CåëÍEU îåI!…ª\"¶ÎIÞE¼v:ÈtÅõè˜bøHŒCÂF%ôu<ãÔ;‰J‰þø,7nE;þïv´hYwä€›;¤6‡ZHä©\"OFGê±¸qw¬‡Õ¿’Ð–à°Â÷¡ŒŠXH.Â«·Ò­¬Ú÷žË¢@“Bå?Ð§B\rMÜ‘4Áe¡úðCW• H+l¶“ü÷üøÒ$ÊWYø(eœ˜Åiêêöî€S@B&qb H,’Ÿû÷›Æõ÷~uð´\Z¯Gû¨¤jY›‚o\0™¢ H+xZ±ƒ÷žîµ‹†SGŸÄ.!vFâÜUÓ.\n”»–I-H+©Ò»5Êç½z0Û[¿ün”næˆiË0}]=ü‚ŽPAH- ËTÿ^6LR½ü\'9•;‹¹(] Ã;gL¿¡KçÞt°ÔH7T_OÕb§mŠ+¢çm\0Ä!dÚ®p·Y,1)6dH]ÜÇ–|Åçwˆ–Ÿ–)ÿ¿®wžVŠZ!AWR©ÛÓ,¾µH+mE-)îÙ‰ÖlyûsþtYSœûâ˜¦ð\Z¶ÞÄ¶vH+m”Bu«›ÐrÕ¬÷ù„+÷áÔ˜V›|¶–û8ý¹‡ò\r\\H)­ô©¼“’aºþð“½žåðóù©6Iƒõøk£\0ÃÌ4(?_™H)­ö$Jö-IàË”\Z„e8ôÁU.Îƒ×¹€L\'Âö¯ì@H)hþ3>§+°gê8Â:ê6;Ô×AG_xZJ[þæê‡X€H\'ØWßµµï·RÏ¦2Pcz›3¯ÍëøÌ³f›¯\nLßßù»±¿£Ä€H)E ã \"~­»&)„±3eÉ—à1ü+ñp+µ³HÅ{nJ¹ã¶¨Z5s?,I¤Œù-ÅX÷Më	þx‡»Wd«9al5Rð€H*ñS‡\\õæHQßÎúUç!Wq¯‰qp9•ÛsÀ¬Ú¯é?H*7 cA¡ÒúC\'÷á †j&¾©q˜êZbN¹ßqÎj.¤6ùH+–¼÷>«}óÌçÕ|‰Ñ	ÔÅw)+Æ;ÇJpžÑûÕ5O|à0,àÇÀH, x*¿Yºé\rîYIá‚tCº`Aùu·´üF:>w¦ŠÍT1`0Å÷ÐH-€JçµÇŒ4|ë5ZÇX{¤ÔIþ<Û«[±Q‹)œ&bzmÐ¿àH-€K\rkì}y-›¡\0EÅZt‹©i\0©¡=`ËÜÇYiÿäpsv#\"d@H-P•/ä3¨ë^‡Mñ*æÕ9Ëîóá5A»G\"¡,Ë­zï’„—%–ç³¬H-wëÖ$?a7~Ç§¶úJ03qŸwÍs›à»4g¾âê€¦‚ª<°H-VýÞbåL0 ‰‰O±9Umæ©Ò\rªé³ÛBÁ1—ropH-»Çƒ‰œŒZ–6/[@Ua2b¬´0iqzã  ÝµÌîò†éH/h4¥¼×\'\Z@Ù\"úV*«þõ\n(—ðÀRðö\\+I\\n>sÚH\ZÊVÞø©÷Æž—ì·43zSñ“cØ²“ÈH-w|ŠCAíØ‹ž™p„)5ÉV,s¹5ŠHÝ‚º‹˜ø³¦H-vxGm?ä¼’”õ3ê«W\"ÓUúw*Å.©ŠŸìè/\rçäH-tG+ù<‡ÝEçÉG’æþ²7ÂðOŒÅoZÜÁ(ÐHcáq{þu!­õ\'rgÜ½A0˜	¹×«¹äÍ”ŒB`9òŒH-VXWü;=¶£+T\n×Ó=« gÐ>½U²\'ˆ~07æG H-’OzwÝ!´\r~Ç·¼EcX[OøòßË$WYäßÄ£H@H)­òíÎë»×™‘¤h+£ÎüÀ1„¥š=Gð9r23Ë3;ÙSÓ8i|cÿ¸Hû|BœÔDëv\Z¡/®û<¶¤ªè{É@ôïæe†H*åŠUï<óŒ\\{èKÙX->¬@÷ÆöwN=¤ê³PH\'»ë03‹ù§}±¥ŸšKª%²hGÐÑž =ÛÉùKÂH\'Å2èGMÆÑ„íž%0‡ÁæÅ<@‹£ƒ=øZ(+àu»RH\'¼¿ž;ú¾T\r„×ÒçŽ’áÚL¸ƒôêdö’Bö¹y!»(·@HÂå\\núª[|ã¼¶ÐU{¦àåAeÂpÀ0ä¼w*/Å¤µx‰HH\'›BI?ûä·Ÿ|,f\'[vÆ5¦é*K,´°¯®©iø \r€H\'»#qg@€* ;oÌ\\Ô‘2DVIÒPòÙmVÇH\'Å;°$\\j	†ØÀ5Jp!lÃh`¦~‘íCC8ø¨Ê`\Z­¶8H*A§á\n{…Â…ô¸o%z‹37eügÝ¸f³êš]ª\"ÛáHç•v°²Q>¨9ãG‹ìËqÞäš…~‡à.–QóAÿ;F(L~,H†À=u^\\;ËãŸÕ‰‰¿6»œ*„»BJXoz‚7B‹¢®ò÷i½t\Z÷IOœ·RÚÀH­;îqöxìøe:ÿXt™‚C5øã<á“Ÿt’¬\'vÕõÃù+˜fwnV¦}—H°åÜz dUÏXâGÊ°­\\ÔàMwãKãßHßâ­\ro\nîÊËy_{ßù®›‰ù†Ã%e*oH³Ówti£Ö‚§1lAÓ[ÊÈÁH¯ÄÊU*Ô¾Õ´Ï.öðTY?ñ.‹n¢sJýðDœH³lp2?ÑzÏJ•’Ã$4©¤psA É’‰ÎþC›«D7^+Xø¦‚£{;4€Z;ÈH­ûi¦FLò_+DÌÝõu!XÖ[\0ŠRáßßÚêÊ2ù5Î–¼¶‚+d¡a\Z:Ïè—ÀH©\\ìà”à ÄõCZÔÁ0—``¬‚\0cý+‰¸lsMr	Æ§¶3ÒÍAb¼ô£	@H§¶\\ê;7kvÄ§>1ö²Éˆ	*•<™¡EcO~ôŠRoefG›æIe‘îíçLV,Ù!w\ZH¦#E$Ñ•™d@¸—Ó›ÊŠÓ)IÍî\0}U¹Â¥mC”(Îê:qŸYH­¡Îœ2iFêO—c¡ê3bÇŽÎ}:=dòŽ:.­t{atœ®5O‰6do.ºÛ0Z7ƒþêŠ+U²H³È·ÄêÊ%	ÆÍ…æñ•R$Iüù,¿¢§•±Ñ–â¤;€H³ÉHó÷!Á´ï¯id_ñ˜¬CÍÏ9‰õñ%„“DÐµªUJÁ·ÐH³Ã·S[Õ)Ã‘­g9ÕJH˜If>Á?©‚ó+™H{ü’m™fù¸N€^k¹iõ¤è$Q¯H¥àx5\0‰”x£.ùíù÷PØaPVSÛÄóÅ:³æœê5»‚%bl\Zþ&lôLòH ÑÒ¨§krƒÅŒ­ÿp„Ý[ÀÜ\ZÜÖ,\'ž>eõFÑ¸ªp6êëÇ6f\"–~Hž@n¬§èëªöØá‡/•)‘g7\nF‚v3ÚÞ“æÑ˜x¢\n‡Ìƒ»6àHœj\\.Äm¸nˆî?Ò¼‡zRŠªH;Œþ«êw[UT¸çTf©Ñ¦µ˜Çë!\\ñQ@H›]~‘è¶DB>ƒÝ@sBê3ƒiÁÅð’¹ÛæËq¶ßn§É6Î@˜ïi3ý¿ÜTáIÏN¿;H³#² Œ©çXOÇ]òB‚ˆYZHµ_3Ýª8àÝ?Z[»¨û€T½½=ÖúB¤ku/rtÌQÕDVX4Ì@H³¤#^‡	(nÀ¼u\n+N9O¶³M¶¦šhà†ÄÕÊ%]ñ{[Þkí‚¾#f«\"“€H³Ç®.‰ª¶ªVã\"£[?þ\rÕÈ7®…DA$€/ú|q;·s˜ÛÔ¿ôHµ÷9GZ„Ï¥:ä¢ü_[Yâvænì`h\0A:,â™šæ3£ŠñA>ê¦ÑH´í‰~ûÕÀ*\\¥Ì€èbÆ{¢.@·jÔ`ßŒeQ…æ4Uñ<;JB0xl“áîþH¯¾Æ ¹Òw\\ŒäÜ¶:r±º•/ö;GRÿT!u‡c4Næ€«f_‹Êb—¥ÏÀ™Ž.H¤šýZe\rÖÀ³ãêziÙTß7Ì”9‡½­ù§œüQ0KŠÖJ{\\°\"\nD³ƒÕH¡Kíìª´ðka\Z/èaŽtÙ«öÑñkžÎÁI•wlâOÛäL^|Üsµíck?ÌR€HŸù¶\0+,Ž‡µUï…Vïv‡‰vWÂåàœ:g¬è4‡VV†Czí^@¬ä€HŸðß÷‚tÀ\Z‡âKW{ôˆ}}„\Z›»Íî‰m·9S®¬è¸Éý†UÆô¬Ðÿ9¬åÀHž•L	kÊTÓôÇ]÷ÍvÊêÚ]ŠÚ7tsjAn–“\Z[©oÈ£A“…á%ÓÀHž—zînï{ÂJæµ¸¶Þr·õ‰™cæY³ÓUÛ6É´Ö÷uíU\r…	ò¼CÿÖsåþœf€HŸ½â\r-§µ–boer‹@¨\0V+\\qÄ#R:Š•`¿–RÖ½V_%óqô@HžÅÕÙ\"ïÍa\ZÂz»5¿:šè@<KMˆÜù´IWn\'-±ÄXæ`‹ê¡^ŸÖ4+We·„‹fH -œç±•½bÞMÓ†ßv»óG=\nÂ.‘Öö¡Mœž7‡rÁqL>0A H¢r)Ž2Æ<:Œ<òVæÁzhÆqñ‘+x„\ZèÅ„‚50\rTBo®w\nH¥£XBïâ¢4òËžõ¼p ¦EÎŠ+<z£2UÒì²s‘[89Ô‰`ˆ…y”ÊëÑ5_Hks3OggS\0\0h²\0\0\0\0\0\0\0\0\0\0\0\0®w+2W\'$)(,0867/3+0)(/284(.14*./11,,*001.++&%\':62)))12*) &-8:07335\'\'&)\'))($)#53,*&$&&.)*$+\"$$H°ÝÜõ€åŒgÞõ­ÒªÑnR;ûr$2<+½€fÔ¿…ÇJ\n/%˜H±ôœÀTµ7‹õÇdðe—ç9çqxÅçq¬,*æë®¢pH±å,(’u¶6/!ñC‹¬iv†;„šÄ³†·$F¤y,z5„#MY ¸éÀ€H®qÆ\ZMÖìÆMžÑwÓÏûœçJÃåL¼oU2#’ƒn\\ŸìGnHH§µ¾³Áh&CêL1ýç“³WØ‚3¢Â‹ªOÍîšgD<u,4U#HpH¤ª´¶8.ª¢™*Ïgaè«ià7ž\00·C.JÚ)&À*ÿmG†{3sƒCÄÅ/H¢”U²Ç1±dóèI¹JÓ!ÊwLaY,0 ÷í¾TUP\0\r5ð54Ål+–ý ŒÂ58Â–sORÙRÕ°H¤N9û«I^Óq§Ú!^\\õ¢’°ç¬»½F€:fÂ\ZäÑÎÝÕ Ë™ÀP€Û™ÿîlË_	KHª#VgåÙ)x]fôÁhô†n®‰p\0´4þ¸fHÉÀ˜ÌÉ+œ¿êàÌ6+h®ZJHH°Mòx“µMA\\ÿÏEX3^JyÕ`—rúÅ“‡8$¡O°ðE`Oo Ÿ@H°MûÜÍª>¹ä$ƒÎÚ\0Á&{eÞ§–kòžÉ„øt\'ÝGy9ñáûZ;Âå¨GL@H²z­5wÝçÁ{ ”R0aágQVe1{.Jr´S 4ËÇ··\ZØ÷.ÀH±wK¦ò C?HãE½!(­IË\r»¹Ðœ*oWi$KÁ™zLñß¦ÓÃLmÖ’¤H®`ÒS_”·vâ6ÁS·ÒKõ×þUœÉZ- YÀžÔj‰îîz<ÐHª²QÃŠ(ÐàÔÀŒ-ž‰ü¬x<ª¦®7Qæ|o,Ø,ÑÂ½÷ŒH§LÑÂ\råkwæÈPÒE~€•‰^±	ÇÂDvžLAÆÀdb¯\r—››r„pH£Œu>ü¾‹ÌvˆõùæÎÊ…Î&l\\n\0Ùeòþ¨¿ÓV\0àbÿM†ifö©_EH ‰—R/•Âfá‰`×»êÙ§†þÀ­\'m‘ÆnM‚ok{ûwšõÈÅÆ’÷ke1àH³žšÎ.>VxÒÍˆ¬‚Ô&Wµ-qËj×\rÂ<kä·)o€T¦ŸT¿Ýwf0øg×ž\'.ÀH³§Éÿeª§ò0ØúÇE˜Q´èRP±0µÐðþ <Ï¥üÊbßgH³jAT,Ý„ÂY³x^|ž%W.<ék…<SÌ&oÑämû±ƒb}¿O%ºÜ€Hª–O“vBˆwHG„ØýK\Z—!˜³ë-yvîÃ+kL~­:Ûü´U!u/(Ùq–,ú°H¦R#jÖh‚ÊªøAùÁÎ™lûG(9%\'-\n½èóÊê¦^ÈAí¦ýV7&Úÿó¦6mx`H¦R\0	Ý}ûøÐŒ“Úó: ÎËõ¢ô~¨4Ìª­\0BÅPÓÎ~ûôlH¦ÔïÄ¹;ŒhZØbŽNâ7\r—÷aóp¦ä Ë×øÀÌ²³QÿëtsBÂž,‘ØH°^e^DÏ\\Æpßæ;øÀ Â­&9ìP»,úˆñt\0a‹Ë©þn}Òr%?H°6W	É7@Áé´´\'—¿OÊö…»3·`Gº9‰k/$ë³G‡@èÀg¦‚\'H¿2Û^“L±¢°¡Wn¼Aš9–†˜s ˆ¾XxøµtI¦]‘(áé—ÇQóƒm¼ýmœH¾Q‹©f‹EŠže²øåOêDCÄGÀàö&Ó.—\Z~ö[nkÖª™‹ÅïDeH¾d&²:9–‰`®ïµ³½Ð[Ú‹e§JÇÜ×nB+°ø1Rik$~ª°vHœŸ¾áÚø%\"|’÷¯ËwÛ—únö	ùfÂºöŠy¹¼­FŒñ óˆƒ)`HƒnŠîµÇ±?ªk:[›~ð•ZôfÏóGœÈ$Äæ5¢¼ºØöu£Ì¼‰EˆDH‚mOÊÖP¨Šï/Ü•‡¸È›Å©(šõÐ¿B)?žç»îKâ/3“1M.» H¢Æ!XjúÝÔWlò\0§€Æ&ºìqh9OÃ9ÕÝ…Ó‘ vóÅ™ä0˜xùÀH¤¸È¹	–nŠ,&65±œƒøœdëAoNÁÆaÏ0ŽyJÙü*~ºu\\!!m›<WßH£º‚£`nËf’€œÉ<ˆJ1›ß„YwÃ¾\0p#h=š5æQ=tdöò±(H£ëB«\r\'¶Ž³/€ìßÔ3ï¾¼íZ×§¾ù’Œrèš`ÙŠŽK…ÑØH¥\"¹}%+³Æ\\³ch5‘ áðbìç•›S”é€—þ±Ž-ÒàH£Úm’m¬«:Ø\0ÞSö¤z†Ì²*âûE\nÆÌìÚŒÔ^§€H£¢yPÖ“÷cPÐ¨XØ›žÅoF¨{V-¨Ö5ìcÁ\\n@HªÅÒì‹`üpÆùnb™gáV<¤âtŸ€dÝð×Áz?¨á‡å3ØS/Rsg²91@V-Wêh9¸H¯4Ñ³\"Y±ê£˜ÍAšœÇA‚Æs‰ðp^;6)®g³øîhpS³ƒ¨¸HŸºàe˜H³àºè¡¨¿Åô±º8³ó¤xîŸ`\068–B©³»¢’½z…‰iD‹ô¸:IBödàHµRB+Ô„RF¹Œÿ7ÿÖûD›VdjR{Gn–Êïß±øÂèÅJ¡£H³:èÕ_ï~ìcæ¨êßØÄåP\nåEÌÐ»Ê?cc7¿:]xÕ<åFÐH°kÐx”ªÆxCÜ¥”Â…Ð•>-V¡ˆÛ3¥`,;ÓÄ‚·à€H®H6\0Û+G}	-jü¡Yªdq=<$øH¼Y6i“¨Í:K÷¼\nê\nZÙƒ.`H¤ªQ“#½\\‰Ccù7qü²KFT4x`à²t«À×²÷ðFðVíKìôŠèZH¾&\r?„\'ú.úœ¶ê¬ÔÚ”ñfØ¿«¸°pV7Ci/æÄÇjHžt\"­Ÿ§¶ë\"{ç®#´¸òÏGY2\Z%´Z€Æ`ÎK§ÔIRœŒÖH6Xû£pAÓsÎ‰ŽÌÙ¥ÈíåIxÿ»àµÝßç_ÜH3\'õ¦2}`ID\0Ñg­ÅM\Zç‰XôCv‘Ó‰`&€Y:¹1¼@H9{o¢u¹Xûô‹=­:3ö®¨¤Zá`J²Þˆ¥¯G<pVªÜVvDH«Î;„å¡œ°+ëÜòn!gÖùù÷ìv}WDÅ·°J(®,eóvAYŒðÐˆu#üì¾$£ùnC0H®›×†Srà£grÚ}à“™·K)¤É®DµuêbkrE.I‰ \"îŸWÂpÐ¢ãG®»hAÈ\n ÌH°›b‘Ò„–Çù	n#/ÞÓŽÊÞxZTd‰’L¼Øö0=?&E Å—_ÍÜ‰,òH²Mé†ðÛ1K<\\„xè²Ë{™^\'ÅM]ŽŠu]XÌ`(b;½ˆ(\Z‘s/«×òÈt­êzïïL¨H³‰Â\\ÝI2<@Mw…-à@£WÈ°í´\nù\'ö„´6¨\nÒ<‚zÅPS8DSìê!¢ýè€H°/ÉøÎˆ—Ò“t³©9jsš‹pm$æ×—?[Ö<Ø…™]‡ã%`¸oFº×nŽlŠHª¯¦JJå$I€°Þ\0êâEÃ½Láj‹Àœßa\rÚ‹nÉ]È€Npß®†Ä\"V]ÀHè•R¦\"ZÕb„\r¿NèfÎÃ¨§óZùê{#”ÖÞHŒN Ê†€ÖæD7\rárÏŒ¨ LTX°iæñ ÝÄü¤êƒ­Œ¾S$H|³¶OãÒ×Ñœn¬š°Ái…n–r/À°N™ÚÄ·g’ÿðH6=K©›ÐKQE(	,võ$ò„E|kVØÆ¢Ã)àÎ$(z\"Èœ€H4µÄ„}©žÙËþŸ’¸|õh#§¨K}åK×}Y-•xHÆH0©hØ†¹¦ü_~¤Ý™q›qÌeJbùÿFa9$¾ôqÌ›Ë!	€H/UóÅÔe!Ì•ˆÍ¾¹\\¹N7\'Où1íyˆÎ=,$ç—ýÖ0=4H/—´ô’©¿ˆVQÖÎÔVp\Z¤3rEæ/fýCôÝ9!@JnT4H*ïhÖC”V—oCÈ(¥:ÁÙ\"I]÷o³FÔê¹ïþÚàH)æ€œŠPÍÈ°‰JxyýÔ„ÿX?%ª©vg‹ýÀµ1Gf¶\0\rt…ðH+5Ïômø{´ŽýÆµÝÖ;0¾e5h×Û§·±)Š°’¦BH™éê!kjQñbá-Ép_[\nu«¦Ú&údþ§[ë+À^d*?wY+¨¥%¯ä=7Ÿ¯:í@{H±I£oöØUAÕÂ³25*“äÑ:qZÕŒÈ×BÛÀ#C«…y©·ÖÀgœwqebö¢$HŠŸ‹$…Ôò8nÇ˜	öNH_&‡Ÿ®)l4¿¾gÎ8µHŒÑ™5ö¿ äèŒ:ž9Á”5ŒÔ÷Ñ_m{àƒìÁjY)¥çð,@HŠà¨©.O8úyìTŸÌ‡À¸$îµ[3’=•Y¨ða„\n“(H6=‰‰¬ì`®·cvÃmi“1¼(ëÐe´¥¨Y-/éí‹¥€H30yTŽ/25K;{ÕË~š]F/‹4^¤aû÷MÐ$ëÐ:—†H30–ÙÅ:b!®´Ð®±²cßy\"!.wÛm°HV	ØÊòñ+§ÇXHŠ!¥Ô!‘0Ù”¥–­¾‰$àQàw9[=Œ,X œ\'WÈeï‘y‘ÙÉ@HszáG™ÀÍéQ²©ú²q‘\"‰Ë´÷,ÖÉ|†ïã{æLH2¤:øè·„\"bqígÅ	û™©RBCæI†>¼ƒd,GÌÊ_ÆÜvH1GÐô–(“wò– “…ÒŠ	Ï(Õ»Îì%ÜwÛ{Ò=ÂŠÔHÖ—ñ®ä!Î7ú´¤`NCKÐTBEK»J–5ðQkñ+ji?€H1Ha2Î¾Ú û	™Y²P¦ŸMûmIˆ#ÕñB~Ü·hH1‰Úo³Q+Í„€°œÏìT¾èdèË™o«h(&QÕ2ìH.ÂËÅ}³`Î—A‘¢‰\Zà¯o³Xd¸q’Uà<üú ','imatak niuagi mikungapa.opus'),
(33,'Â¿quiere algo para beber?','Â¿Imatak munagi upianga?','2022-12-05145323581738quiere algo para beber.jpeg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0ãY¬a*,-/(0)\'\"%!*\"(,#*#(\"\",(1,.-,/\"$\"%$. )!!#($\'&+-*&-,(+*+&$&\'+!%!$$%+)/E:0,340274**15/6%470.3344:9HäÁ6ìÅ€HáNZ‚º­®+›ÓÈå H†$L9±±}\r&{XÇa÷[õˆâš•x=âZ/å4´Î¼çu„âÛWÉÀH†ü³›+ß•O_–$}Jñšoë°?ß”Ä:uÝ~Xé°såEÂ4\\â×¦0H†ü¤±ñÉ¾âX\"œÁ7±$/‚dðAšÃ&ÎžÂ…XH7K58Ž»˜ÀH‡ƒl™·àåOLÄt¯Àe`×¬|®ëÂhØŒE#€îÍ—+xõT¾ÐÇ\n@H(m^ÙùgŠP\rÒŸCL1åúS™IG’x=€j„+p· H‰µåtfÃh j_H»1+AÁ×ûÎÓ©YNš,Ãé‡²(Ž©ÖXvgMä~üH4ï\n),mñý)Hî™X­r‰×Ó[‹ `F˜›K2š+¨ýf[EvÞ¾ÑH4`½þiaA/\\åé«OŒh<ù“iŽW„{»b»\Zë8ç!ÿßÄH+–òð´âA‹Yqz§ªtX m²¨ö2AzÓ6K™åžÍ@H)®¡\'ªð`6ÑZÄœorŸYÉÖ[÷³NÀd¸ÊG·ô²‡<Æ@H)hþ:Ö0ž*xúÏƒs‰:ÏñwÛ0AõK6\Z¼ÐH\'´¿ ¶Cù|\nr4ïñWž^«†µªªV—”4q\"}FqSYÊUøpH\'Å;b¥ŽW~N»`è¶~´ß¨?zÔr/A\nUZ ÉöHH\'»óJ“ô_Z2r×Eï;±žJ´Ë¦®ÜŒ/æî¿Æ…‹óHÞYï¯„ÜßGô6£òmÕT|½Þ¼Eº@×n¶]AµY¼L SŽæ—„H*éÎ²õ$bvZÃ¨î–‘vÊ|fðŒ\"J}W¨½¿¡ÞàH)¥G…œì\në\"t­Oª4×½È6ù\"|ÜìEü_ Ì;ŒŸá¢óQƒÀH)„ñŽâ•ûˆºÅFÆdÐðuä`%—\ZH€æ\Z?=„8H)ºˆ1iè¨ŸRlî\rÑ«ŒXŽ§óYM7u3¶ðò™õæ)fPH*éÉÆÂž8—é{H2QÄ§ü¦hÃ©†Ø<ÆXUä·H)¿§Çd—6þsÉË%	¦À×«ÞDwBÌ×UH€²R9¯P¬,V¢} Š§ÿ>ÎÊ¢K>Âø|8í­ç¢ƒ ¯zuq÷ö€HƒK Òj¥St\ríŠÕP€›€Ê\0©ñ^rmÇ¢\r\Z­°µ54Nn@HK ;lÉùÿ!«ïS°À§·À­ÿ°¦½âDEÌñ“—lrf|z_üü³®»ÀH‚ø¿5ÕºHD ¡vJ©1(¼.½Ã¶|I1Ú2Nh‘su·˜‡µ—©}8PHŽ|‰kC“ßCP7c¡]×õè²Œã’,·¥¿\\SÈ&èƒ©ª-³ÅGPÐ\"ÄH‚ºÙ™¾KS[µËúà¨ÖBq:”¹_Ó€îÛ¸F=é\'¸>1¸ÅåðC“ HŒø$B›Ó·ÝnµÄw¢ÔnHf“%@tvÚú2L<”-.[GÙ\"~ýL¬}XHÒX#:^úñ¼Y¬/$\'%†pÄ\0U¨NN&VØWýp÷dæ§—_ðCÓOsH@DˆTHŽ¿LÄ³²î\r.ë3ä=­¬ná´FtBO_öœ¢H1G«5õâû\"ì÷\\ï¹ï÷zq\'wÌìÐc€¯¤·„þ«ÖÀH­üÚ>Íé-!fjJŒR#¾ÐOç&çÈ¡wãœÛ§œH-U?Ú¹_ÔA0H´2Ö% ¡¸úu¦a,Ö£Ì§Ú:R|qSÖH1< èËYñZ®¢h—x´“Hô-ñäÝ®Ùž Åð<np™„»H1LëkaÕbp¬àöYDg?ümóœôÉÃéy\rqš\r˜Ïë9(ŸOÞO~¨H+lérÂwj/Ï;ò‹$ÑÛrÀÈ­û€MçPUŽ˜H€®¡y‚äÓRâ+>0Ž«¼*\"ý“³îÏdåI\0HâGKõx”—€H66›{9*ßÚœ#É3¼ù;›”vÊŠþg>¡òX#E5H3\n\"„Þ¤óÏAbàÞhyRüªªÜ\"Á”©DDùË¨§)ãH3š\ZÿÇzÔá\'r\"g™v,xHP,&«8F¢QSFÅËHohêŒwTFsgaÖÏJ©o¤È.ßD&&]Ó`\rÎî3 H4ü±¤÷x(dé!ÏÜl¤Ò¯ºø\Zs]IìWüáèÓH4ó-šENJmŠêpÌ!­AW®H¢ö\"“\nÎÿ•-FÇß ™*H4ø¸üÏ›\0Dž:»8˜UÆ¾™¡À2OK5:\\œ\ni×ÈëFH5q—\\…fN«d•â&@:ˆö•ÏµŒÕŽ—~²tïÜTJ×B3ÓÌS€H5ìUÑ\0å/ýiõ˜åv‹s>­¶§ì\\Vs˜½(cW7C?!QàCpH5\\‰4™‡­ŽE+~`œc”gK?d\rDLqœÎäßhN–þí™c²oxH6i¥m®{nýÛ‰-©bé( žbÊàÇÉÝ…£÷28?ðz€H5ë.¬jÍ›I‹ç;F„ È‘o6ž§ÈuµÙÿœsIPÍS‘…{¡á§1i&™H4ú’­ðF}yôB©‹Jœ”VCŸr-§òûöá–¯`Ø%rÚ¹âg3åO HEœ“çU¢“aÖJ®ˆK0œeJçU.®~²MO´5à&tÞ¨€H5ëÃ)ÛÄ&›!Üë”åDAÂ6Pzï‰a‡Â—Â\\c2Bt6î“€H5*·€Õ\"ñ®ðï“(µ¹½Ýuü&¥êE¿.Z‹ó˜XŸ™”\r1X¯¤H6…}qºF«*ÇÚ™oÙ?…ì©‘±­4\nÂÐ0vù«<Ÿj…uWÞ˜<£¥PH6ƒjg°y–­Ä¾Q	}BYìà33>OòÉ§ ®‡ä:œH5èj#Hµ²û9„åÐãfÐ’¿£28>è	!õÊFI€H4Án.iF}ÅüCÜ\r.Þ–eµY˜i¤A5÷rµ-85_i×éî·€H2Ô9béæÕáú\'-N¥R•þZ–ÉF&·t¶ÀfuNÌËS;ÀH1\'IQðï\r\nl€œ0 ’°ñ“5ÿ1ëÈf<ƒákêI8ðq¬ˆøH0ðG‡‹¶LÇ4k¶nPY üx“×uPëjU«ÀH.û\r´´Ø )àÂ½ö+\"?¹Ð[¡Sv°Êh	;äµý+£ÉH+lÞ¡>6,ÂÝ§Jfïu4ËíL²Øâóµ]&¬Êwl³H+–ºÑ,‘‚žûø…-Dp†ò\ry<üÅ^b»Ž%òi`«jH+n=§kÛðàÃFHÖI–D÷ãt+>s6aŸÍô¢ºš»þH+ˆÚ;¯F(4·™Èšß-;v·ò°jî½{¦‚Ã¶|è†t`H+£/²ãkj«Ô\r¸cŽë`ÿƒm·éC{—·7ö£ýA	wDþ„õ3¾ H.î$^Û@)>ß<º\"\0U`ÐjÊ¬\"\Z6d>9¥ñáû90‘¨HVA\'å[äVžI\0ŠÀž÷ÕÜ„\0óÆ`†§6È ÛØÉSû£ñÁ» ´H¡ÀJM˜ù”FÒÌ¡cÔ¡ÜQP5ëì\0šHF%ëÎ\rÁÙžåõÞ‚­Üo	že0¥Ãþò¨ý©±çÜ¿Ÿ¹ŠY&±ÉäH²²“$g\"u3\'“¼¡Ë—aŸ;ÒòK½bGÓ\\•ÀÔ3	1¤ÍÎÚ‰Í@H@1\\dçÓÆHH·×@\ná’98v{ÒÀÊ“®;”m‘õ…÷ÄÝ¨÷Ù&l²QŠ¸\0àbóXåµ®H·×:g¢y4)å:Î D´-L¶°®<F\'oÀ8h`VM›†œ®&Ú!íºH·€à÷,ÒçØƒé\røN¶;Üo`“‰›gŸ{ªÚCæó‡/mIÆú[–‰ÕYª*=fÁt€H³\'?¤\Z$1ˆõ ¡WG¼Ší•±¨à3Ôšl\'ºÌ¨Ô_ð½NŠñÅHN¹©À´ºïH°þåûÑ¼fò“7´M)~ÔZŠüÈj6ˆÈ,[Öè)kCÚil¶ìƒ>jðH¬Æ1ž+—Ææ€Ïñ*e7*Ÿƒ\"ä]/ñ~X¢¾cÍändùmŽ®;VDöXÂýµ¡pH«–ñpòýƒFýYÀ6ÿ\"ù\0iëÙ+Qv†¯ä¢®CÔê\Z\ZN­ßv@`™‰6á¥,]\nH¸b*›Ž‚ïÝã°#û4QÕeO:Ãó§•©>$SW­_.YÀ’(=Á0ö?öæY€H¸Áè	P\r–¹P¬6Î5Öˆ¾0×%JOy^=[§…Gû³P¶õ¢:	˜°H¹~ÿ„n¶Ógr”¤eD¥\n{‡oœ§ì·3Ë‡²WÆÌÎÖ:¨ÄíþàHµ–co=š|0ûMÃ #¬Lc\'ßFâ¨Ýƒ5k’gÞ´‚0ý;¦&P‚ì›q· —Ÿ»àH§‚ÁnÚ”6s?û˜DtPjL\\ÒÙõ‡ºvÚß\' écê}•‚@}Ö¸hjc±Ëyù£;Ê›¸H£•˜_êØèÖ‡0ø_ô!Í‰Üm\\´|v¦.ö;µªþ[f{Ù¸c“¦ûž¶\0î°H Ñƒ)Þ\'š–.@´5ŸªºõöY~Šg5*o²4†¼äXI0¹üiòeóŽò4m÷d°N¢Y€Ho@¢ç\0’2LÓƒ˜\'y{MôÙDÇ¦dOÏ}å®9¤`4\rõH¨›»bÕ>\rÀ¨ŠhíõFíÍ%WÉÎ¾µm	¥V½@\0ä+ïØe‚CSÔ¥~ƒæL\0ré¾apH²º¨iš…FŠ\"Ó¢7Ká8zyÅù‡Ä§\\éHÖ•RcµuüÒQ>4~’Òmš¬YÀ)øÓ˜H¸ÄÅ¬/Æjpr}D‚…8	8“ææÔ…¬0÷wD\'p¿&—}òe[ì¿¦:…ðê†ÀH¸›íóŸ<¡Õ X}ÑÎ¯ú‘Ð2m6ÂÑœ{HÙ>Æ™¨F•GGÜ]­ú9ý#(H·£ïò5\rù8þT\\ýÐª!€v½†sÍmQ×µÂx“0\\bäsó_\Z}> qT²×&9 H¶‡àlÄšà\0õ¦i>}MüÏ’È8 \ZÏ“\'•4ê\0D·èƒ_„‚ËÑº!5¸çþÊVzH¨þ\ZéÐbŒâ¸|’¯ó‰þÍøØsÃ¤ŒƒzTeycbž(i` ö$7 H¤¹T{{¬2>eÔ<Æe*ÔüçÔez!Wá\\ÛIŸ4¦%Á¯¯ò=EÝËÏÃJ¢ÝÒÀH£êÁ¢³yKà7Ä˜å‘—iLzK?Fý9býLæmµ´ä¸^\Z†¯Â:°¡N™ÝŽAÒÓÎTé uÚÀH¥Y¾¤6\Z¸O\nŸÒ¿–II¬!’Ñ“H®{}8GK£aÂÁÚÅ‚m>l¼7NœFš*kÓ[òOggS\0\0hÐ\0\0\0\0\0\0\0\0\0\0\0\0J.G_4).,+.314;71+.-0/-1162\'02+3117442:1-&+.+*,55243130)$\"% #$\"%%#\'\'(##%)(\'\'&$$%&).+**%&##$\'&\'\'&%(,(H¦“‡»Ì“©\Z¯öë#™íô™­¿ÉŽn¡QŸßvº˜ÝtÌz†§[¯^ø+¢[ˆ86ÀH§èœêÈÚ!²öòaø]üŠ±/^¡Ò‹Tùug·S6	<]û‹>×Ç‚úH¨e3ÇžòˆKJ€!z8š\'úÌ\"CÜ”?JŸ¾Ic#µrªWÛëÅ/xë<H©‡ë,qÈõ¼^ ðP ?yv‡7>¬F…)Jù™º¥rCÁx%?‡eÎH©˜]1‰Ý­ól:®1&Ã¿,Áär>\"ÃÝ‡?«˜&|Bžqs@H©˜;hÝOÑìgF)’wªO%¢°!ŽÊöÝø_Pí¨#5Ríâ H§è^“x}ºÿ>	ó:ä´¦EÀZ1{rÕ7Dæ0W}âo/4»IËMAº<8*˜w@H¨Y	žªÎÍ	\rm#ˆã¿oŒHÆýLUüß¾$`]‹‰ˆM/7¾Si½uª H©Ö(Q·÷‡aûT-¡‘‘åßÄg^žµ”\00¶ð¢¼!rNÓúKþÒ–Õ×Fõ\r`ÝBç%H¯:]Ã­xo“žeyôx¨Ãn6nb¹#UNgêj\\èX4I¼µ-ºî¾yÂ:À©¤’’5@ÉÉZŒä…PH¶ì\ZN¶Ú†Šn©u \Zgâ.ýiÎfÿ-Xô÷°]êOû\"ÏEù¸«€\Z³™ïq§\n‹5œhbùíµ€H¶åTÍS1Æ\"ÄH3þ2ý¬9·L€¸&ú(òƒ±¬åcÕ‰´Ù(ö{Ê¬&H¶ë’ˆC“+;ý%ª>éã„ÐC>ds§Pé«Ø‘nsèå\r+`LÐPÑÞH¶å¥×%VNz=ñæ?®ü>èò».+—YzŒŸýPE¦/ùoÇþöPH¶œó%bS%û\0/+Rd5ã*\\\\}_¶wBŽH¯“wÏBK”$·BHµÑí`À ¸Ñ»ä“*õ@WFÎJÍcÆ²ï`Gx·:\'0<|\"ÇÐb6¶.-3]QÿH³#ÖÛÙ¾y¦¨«L¢VDkÕŸyvÝVGãv<%åÐËº‡;\Zx—_ÐHª±³dé–wO)Ê©gV§´•åpež\Z;S‚jP6xNQ1¾iïÇÑT‘@H§Ä[”AÝ»ª([Ì\'ýtrÒŠBÐ©³9žRFÜã˜{_#ªÔBô•\\,JcPH§j#\\±FjDƒíM˜ù2Ùà\\‚wë:”<’>´—aæº‡¬þÔx°%Uü©˜JÂ‚ÀH°êõÒBþÿºrŒü†uÊ¤lÍôC(ýYé@#¸\'ôÔÛüý“ŠzqpÍ…å¶Ò€H±ÉLžpüŒØ#—úsM––“£®¸äou§u|©ÙÞƒ[ÏÉìf‰í‚²s‰ƒuè€@H°,oà“+ºõCpÓØC‚+¶¸Å}<t{ùÆåù;BÖÍtRDh²pH® Àþz~Qy¶zÃÆPß¤è€n“m¬U*ö#_¡Ùþ5ýˆîîFmÑ“¨ûH¬\\\\\ral\nAMVOÊhH‘Ö\rN£K‘Ša;–(©¼OsŒ\'j£¿‚hpSèt.Î¹½$H¥îÚƒzÑÿjñçŒµÁpxeï ˆãÃò;’ìgc\0 §˜eZOk HŸÆPí—Ú²‰´a*Ýøc–$ã|a¶ÕWÃké)ìÿ”S< 9‡q}H€\ZçË¥zRÿÐµHœûõAØÁ¯<HcxØBõ¯Ô\"¹ú¿÷m™S[ØyH$îM¦  Ùœ¹l@H›©=6«m§ý®ƒM	Çµ‘;Yh×RßÆO‡Ô‡3Q›vÁ+ÂÑ`hPr>¬Zí8æH›ÓdõE\'˜ÑŠ+ºb~(TÅ\\Þ†Š\'KÜ_-9AcúXâ%l¢ g,B–Zñ`H¥×(ÓeJ«á®e)¢÷ó\0&Bà<UxÃØ´;û‰ôA\"ñ£\0´n–­*áØƒû¨H«äÓ÷¶•r“,3È}ŠŒ&æ¯AL4M “ôG&œ©Œ\r«z·åsÁ´`£•ê\r õÅ\r`H´S~£é·HC°¯\0	}·àå ÂY†£ï§2Õ]vçÐimõùƒ6*}\'(ñˆ*cÝ\rH·òƒ\"íþ]¹l}ƒÔØ5€™xÑî¢[ÍZ£Çã€Ùõrj’ð¡c-´çe‚LK‹\nkgÚ`ZÈ@H¹J¶°6™—§ö	\0&®þ¦¹†dÒQÀÆ,}Ðª|Ö;N{ j©\0¼Ü¡tH· Äž°\'ž»Bò@&š2í¸Y_Õˆzª‰·Î)N8ZÅÍÅæMP|:HµÑ¡I,]xˆZ 6T&¯Wœ°¡zr„ô€Ã0ÒÛ|šgÚ@H³/t\r<˜é¬P¡	-ž/}FËý	üM#iÕÿ˜¡slOdúzòcCDH®“y%ö4Ç¹€,àæ4öVƒ¨i¥ùñ8	°9P†ùê¾Ø¿È®ÆPo¸|H©F¯/A›Â÷ìíÛ•FÏwweÎ1&•/S,ºL±­È›¤oéÐØ…xÁâH§L3q‘Ô‡äVyÊ¹\n¼žë&¶\ZžÖË³œLÏ˜q E¼9‘hÜÑ@H¤æÄ­‡›”Á~?\"Ïü\"Ò¨‹^¥wøg]f1É€†¯ëÄ	CÇ½³ˆH¥©)z–_m©Œ jR»…¹Š1}å\0Šavîê«6“Ì•bÀ“×»ž“Ífù”J¸qVH®ÂHy{¢]ê¸Åqâ)Š0pûæéÚ¶vW­K©pžêùˆŽÚsyØ×däyHAT6€H²™_ˆeUôè!D>n›€¨Çè&*Ìn\'æc¶ˆ%ÿ¥¡¼£NvD\r/\"ÈÙßÞ=ûþHµ]v´¸´Ï	ù1l F]é_x?	O‘ ¨Rµ…Ä™#-^|Åé@µÂ¼˜È´ŠáH¶ÞÚc®Œ«íý‡d÷Õ\0Q%<°™/³,¼?,q|uARu¹Ê.IÊ;—³6L…ž Û®\nHµ­	áB¨\nYvW°·o^Ÿ­CRA«s3Kvdšp¶ùN¾›Tþm\0úÏ³4H¯Ê ­²ùÅÜ–=tC¸:GÕÿ«©Çª:IÿÐšŽ£\\™öÈKøàÀšþ3ŒÅ$³€Hª°5X‹V¶?ä)ú·É“å\03´ÔÛi~I±ƒØöçÃ±†ua„w\n¡»)­ÑÀH‚6š›¿÷€çsÇ[;ß/ÊñA”è¤\ZÖ09öhÎŽÑn¯HŒNàbOú’÷i¶P&’Â?[ý1ÞÆRçËÓxd-‚àH7#Ù°ÓÐIrVj€¥Jö2¼¿ràŸ£Í&(Tµl«H6h	måÅ49iNèyw2öÄ`¼\n/ƒ !wëJgÌ¤ÔÉ[;NH4Ã9,ÅsG?tý¿ñ£u*×1Niò(vþE)#¼¸H2”“…9=F°–ifÜ4´œzt’ÃÜ%ÁdýHÀõû#èH0Ÿ;±÷Çì¦å\ZËfÒíAòuµs©„¨‰_½×ã+7ÔàH3üvéŸ2ÙîFþ—òã`é:YGð”ÂhA€HUÖN]æbôSÁ`/bhæF\'kò=ùñJøÁ\';íÓã´ot H*ñ\nÃ<îƒ^£¬C†IÌayŠ]…\Z÷Eü\\…M”gâñ¡BH)­E Žãš*ñiÊõ±¾|”Ìrì_çŠÉ¤/ÏHˆèÏöúëÜPtRNUÄÍ‚Ûïð­ßÚ™‹™Ç±ð™WÀH+¨3\\B\"3{Ï.ÿK¬ˆ+C#$ÜÎ°ùãùá\r»Üé\0Yë_Jí H-†ýVšŒõÐcÄ.ÐMúSJrö=Îž\\IB°Ý¦x?îú@J‰³ÐH-ºÒö\rÿ\"újó8ù¶[SýØÄÒ·´W¬FqæMg@H/h—Å¨êMcò]òzYÝv*L[žU6Ÿ¡GR\0Š\'¼H/_Fyµ{G˜‡ù%)Šñ‡Nø0ëqpkV\ZõÓWëåàHxbÍ\\&C4~gs9ÊÈ¬3ñ}}<r$å/ñÃ›@;l³xH‰˜åVçÍ¼î£dH)¨||ÏTR¶Ì™YÅƒ$¦Íß\r*haL×|€H0¬ ÃšàÒ$ŒÃ)iÐn€\nwñøÜð/–©ƒ18^Ûv@d4ùqàH/BâúBSTZ¬Žä½²ŽÄLŠ,‘ !¡÷ÅG•ú¥	‰Ê·6H/h¯À\nþŒúB/—{]=Àâ7\"95áÕ_Jÿ»3?õ\rfNH/Bã¦ÇÀ1ô…\'Úˆ[bi\'\r¿¡‡r€ðÎÙPµGK`(H.ÂÎ*”Ÿ&«iË¿Ø,uËMU./x\Z¸b|àXÈ@H-VýLªW~fÊ¾ˆdšI™5ÄG—È\rŽogì¯ë¨ H+/®.jIÞ¹‘ád—×A—¼bv0i×£g	ÂkïõÃoÂ.¨äH+—§9cm¼‚„Ûµ$²ÛÀÈX»\n©ÔêX‡¹çYš” ×2˜·ÍæH+yµ©˜°­6©l)³˜àØèä¦šŸEe>å\"”¦Z–ß×î«“>jH+g%^ˆß&ê\n‡h&ñi(Ìó·0×q„hFðáÔbcq¢8>€H+£÷ÂZ%ƒvÄÏ›)“q§ÊŒ{Ýi\\w-ù“1ñoŒÊaÄÙš&H-vLþ§§¦ ¨šæg-SM²+:YºQY¦¢£rËˆƒgëêÐH-‡g~f‚Íˆ\'ä k“Î°Z\ZnÍY1ôB1\0(¿¦c´†< H-‡¤¡Röh½°“Üûåþ×»­õ	î ä14SAQ¹^àÍ…)àH-uÌV¢Úç@œˆÏÒ²äoP—™°p—c˜ŽØ²`ù2°HqIäµˆû»%h4Z¼½ÄC¯¥Å©b‰¢k–9^±,PH/*¨[\',˜Ègä…>ïÞ°™pÈóZ:fb\rŠpH-U@ï\rßVo ø_rë:7¦1Õ„ÒÁìÐ›òí„¿<óG€H-U\\Ò0òâÆ­ºð§D$¶þãi¯Éƒ´ãö\"Œ%;U4°!˜H-öH?‘ñÄp.rL|PDØ€®¦ÀÙ Ý­ÏãR¦fšƒ×L€H+l‚äƒ›Á)\nå]ûQzC2˜sÎ‰¡5â˜û,¼¿‹pH+lâÀ›U]¾CäµÔ4²-‹Í‰ü<ªÁÛ0Æ¦år31/ÐÀH+Œ’¤¦ÓGI]ENÁö¿L®\"KÏïÇWà°ÀyB¬+±ÀH+†FôÏýÆØÏ•œÏnXñG”²ãÆÞŒ^§«#.Zr}YâŒ`H+ÅûüKpêšl£¼*Õ8j f ‚ãpûL„ßÒÖ™¹¯î¯\r´<¸ø’=±ÒH+lã(„©Í0UÿI·ÐL»j·qú²û4šwdzÖÒRðOggS\0\0hÀ\0\0\0\0\0\0\0\0\0\0\0\0f¤Q@)&%(()\'()$,#!\'\'#(&*).++,.\'$\'%$0$/\"\'%.)##%(&\'\'#\'*)+\'%\"$)\'\'%%\"-%&%H+Ë}Œæ~$¯Õ­àÅUMA›hù¸ÚÞ.Îþe½ZºÍB/‡T a€H-DVoOŸÎƒFÖ)l¯—bu%%¹Çd;‰\\á-ï©ÛH+Ð‡æÒQÙ÷M‘gÉuUÍ+\rà}Æ¤xàãs1ŒºI§çzªLH-Z¸ÀxçØ>ÇUïN`ôô‘KSzÙ!èÇñðZªFÖk€ÀH+lâÍðÜOiÌº×u1TÊi{©N›K%ãÅ0ÈÜFüOUŒH, eÀ:‚³%6ø¼Ë%vl–:‘?AcÒ–jû+ðLoR½dÞû	`H,ÜH½£û±æÐäEE<\0òÉ°¤¦1°á]†^»vÀûj›pH,–MÀÒf)îF\r_.q½Nm´’íÉð>ì®P¨ïò‰}iHH+–¼!È€ì#}0H¨-ÌA\n»«rzW9¥dJÓ5N³47¼\Z8œ‚ÌH+^M~¸,×XÛWþ®7^íÐôóñÒXq‚Ÿ5a†_½€H+Œ“šB°þéb„v¬q~ÏÒM8G¡ÙIÚoŒ¸ÑæeÖáTU7i1’(H+mT¾(b©`’ÃPëŽ*§Ó†ê—Ïc,;jË×8ÏÇË\\H1[RåL±Ø_{ì)ù™å	|i,P)™í_õêÄŠô€H+žC‡}H_æ@ÅpÇqmYý¾,×¥.(e££³Ð?\n»0H+Ò6ÌÉÖkï0ŽíÀ³ÆÐ)Žáƒ	ÞV[)è[\0JuýÉH- á¹\'÷pSz;˜o‰mÇjÞAœ³Ôa\'Žß.\nà@H+Õš0˜j› ¤ª’;UL\0Ã²ã¢¤ºéE’¤Yã-ŸR_œìõÏÿH0 óþ‰Ö-´=\n01&-‰»˜Ç3„•-F¬½³Þ½ÿ7h2Ñ„˜H.ÂËq!q„I“ö¡5\\e#Gƒô¦y\\µ6h[«žhºFó›\0$õ`H-®ö¶ŒÓ¡¼c•A¼¯AÙ&Ó\nú@x&“oõ¢ã H+“¼*ŽÍ˜6ñ7¾ìÅ´ŠûD©Øº\rÐd…\"Ü1­g“hêAü€H2¹3<LëFC÷CëÕU’7êU&˜ë™¶—–;>ÙTñ;˜U_Ÿµ€Hhœnàg3õHJ:eCªRÏP£5`K	2àìV¨ ©3+ñ	Nø‚€H-IQÍ#aÄCOüS‰ªVLp|s2¦ÿ)ÚjÔ*¯@º’öklô[ H-HÈªZÔ\Z\0BìÒý£–ïÂæ4T-”=[1w¹ª²<vu\rLè¨ÿŸº‘â—H/8ÓæL*_Ò3Êë_5ÂÚPghâÚÐ€Qûð@	Ò©‹³.2H.»\'Ê%Š#XLFG‘ËÞ\"ê´ô´…ºw÷¼4ÌlžG¸7ÞH+mT„Ucb´YßÞÒFÇãÑçŒîñô(45ÇA˜ÀH+QŒ˜=”_¿üÓO©Ùá—j\Z.þÛB#\rºB:TB(¥µ½ôH)º`DióŽÓÔÆ	ÄÏÑC·‰>>íç¯ÃŸæÝ©˜€H€Ì.‰¢ï>ãºÖC³8F´ó˜.´ÎV.µÿOûO÷jì½Ã•ý·Ë?cí#Ô€H‚4\0®a*ß¿¼{Y…J\r·äà†3å’ÑtÎ6µ¶ŒHˆÁ0?µ]ûïÃâI³Ø3Òoˆ¯fjíIî\"ÛÃ³RBåeåXìQ4†u¸\0¨HˆÊUDQúI,a^¾üß\0D\Zè6õû(û8s\0¥ËÞÆqÂHˆ>vËÝÎ•lÜ*tkü;üó\nF-Ÿ^}žòR,ØïŒ7†K¸È«H)ìÕ‰£ëÿ»žfªñiwß¦uhÓîyñ­Ô\"xœ‡¥£8·ÄîH‰¹¡ï;\'ÿÄT*‚S©FÝ”g¼¬­S˜bÌÀõhì‚¸1‹e‘QÇ-¦žðHŠR›o¥ö¨BÚŸÀã4\Z\naŸAâµ°½iÜc‘mÖ\\[ˆ*Œc÷jÀH)…J9ææn¿Òúˆ{NH£…ñRitçÚIá¶Ž’–`y@H\'®[Õæ.kêñ©ûõhCa.‘wŠôAM7ÒÂˆÖ6zJÐ0H\'œ	my{¼Ñ[ì²í\0û¡¾Ì8¼é¾D_èžŽ“QÐH\'´·Ùt™Ä‘ÙÊb3{;€I©3É>%#ð²+¶¤,C€H\'»òpSw`²Cø´š:	²ÅHižÙ\n¿Ü2¶ú9”Nçw”ÖH\'´ŠÐ¹Lž«ÿ$§$ f“>ãóXOñNN[ô‡Pé<.™g·o@H\'ºÿ²Ác\rÎªr‡ aì4g¡-(%zØ…¯à»«Ð‹@H\'´½UÛ§\0Ù`F\'ðÕ5Á!úè±³m¿çuv£)F‘H\'œœ4ÉŽ’kš6®…Ú€äïü¢\"Üí\0(Ù $=ËiÂuõÔå‰€H\'œ-Å;Ö«ÀX>ÏëÙ£ÎCÚ$8ý†yc\0«Ýßš*ßöfH(5ê—?˜•­ÏDñ÷.F:«gbÎ¢f_,›¨1†ÔµwÔQ¿£º[H1[Ð‡^¥§~hø_xÍ·?ñôã}kdþÌ×S}om–S¹\0Œ»nŒyé,H3eºíÈæBÜg²”ŒxŒfY1ýsykr|Qvõá:*ªåj6T’âH39òªg\rmÇ_©ã	YK‡Ã¯(*4€C&©+~Å£yùH0å‘Å6•h#Á¥¬¦Jå<ÃgÉj@÷­ íŒ|´˜H.üÑÔ›u_²>…K§\"us]¾§§alÞ+kê3¿ò×Ýôb4H+88cM~Vóåå#ÚŒÁæÂÖ˜êÿ+”YOö²Ö5œÅº÷³@H)…}”<+¢\ZÑ¹\n½û”7¢ù€!3^¼Uñ-ÁKÛµ\'<ÑbÐH)…{È	«óÒý=Dˆœ@­SÔ¯/9\ZDCCnF¯š_mH|JÛÎàH)IëN!Wý£þÜ(¯çfà“hF-å¬Ps¶Š)Âg³èÖùW[H€²7j+n½_Û¯%k;à·¸iP¾š8Ví-\0Rã—Æ/63H€0±ÖUJ tÂÛý¸04«¼éÒ)yhÑ%{ÜàHŠŸØcÃñ¬Š\'çÑç>XÚï3ÒlucnþèÐñÓ!¸ì£*.´Ö€H2ÊËe&¶CŸ¹;`,f&SBi	™i«[y5¨2ÿ\\¾\rH,Ü1¬ú%£L7ÎÜˆ/\n5ƒT%$Å!;·¬‹ÄbX5«í-TH+mDÉá3¨¯Ä)Ž]ýŠ¬\"`¦GQ.ŽbšU^ÃÓ©¹vÙTd0','imatak munagi upianga.opus'),
(34,'SÃ­, quiero agua, por favor','Ari munani  iaku dius manda.','2022-12-05145336886005si, quiero agua,, porfavor.jpeg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\0þA,lc#+-&&(($(\"\'\"&#$)%((!()$)-)\')%%#$$*%$(!)\'0(\"$&$#&&(/5;66:404175747324412**\'(\")\"\'&%#$\"%\"\"&(2-2//89HäÁ6ìÅ€HßiY¹ù€¯ì›#PH†\rfÈ“æñË(–éÙ‡R“Üv•}ÑôØ–~çH†àfs!–W !œÑ\\*¾#Æ|§ÎÔxZàÔq¢24È;«¨T\"ÎÑ¼ŠÄH†þ.\Z§4þj™]ØÙHJÄé-O£sV|’;*¯™\ZÚ·£¾=(ÝÆ7HH‡(½ÀæúÞ6Y‡í•‚W=bNWãe¨¦¨\\MÓÎu;ûLö†H\'Å8(Ñ¦+ž nÛwß9Ê÷däg~b¥tq\0ˆ–h\0­hH‡’[ É\nmb‹BÆ±v™[D(Ë/G¼ð6„#`ú_ \"7¼0H\'ÅmÐ·ŽV7ëf3º¾°$ÖULÆ™\nÎÛ•úŒì<”ªyÏ×ÞH\'Årñú)j¶1ÊHQörúÁ¬JÒv÷´Ï×W‡>ïÎÓ“àH\'ÅBM{]•”ÒI%mÄÃ\nNÛoJø²PÌuke’‰2üì°Ä]œ°H)¤ó]Þspv0È¦kJ5ƒ/z¨UÊ¼žEX[\rÀH)ó\\ôÆ\\ƒWVÉê’&)ü7>´ŸáB~®o\n³%@K¸ó¨êàH-²ñ´Ç¶³«÷ü4Ëhárjù!®Áf¦œµ¤Ù­äH+–¿|xä´\ZÈšÁ4E—Þ6’Ìð\Z©ðìµ_‡[­‚)úWëhfH1RÓ’Þ¶õÝ\rÞrÂ¤$©äo­²— \r/Œ™ñâ¨HH+[hWÈ@Ý!ë7ËJvc“f¢ñHeÞ·È}ånO½‹\Z§€H)„…*ä\')cæ@¯’EM´U“´~‹Æ·[¿TQi]òŒs\';ðHú(õ¦†%¤ª÷Ø”\0^Ô­äÜJ˜|q\0 æÏo±NœPH)…}Ã±y§ÂFãŽIÙ_ó£ßÇãÕ€n\"Õ[ ÏTsŒ:%rkT H1gÛS.ûÄíxß¸ôSqF2¡A)ë*Åñü²Ï;o9\"ßçæDzá`H)¤½9î5ý?#·,Ù/#oºÂ’¼Ùõ)¢7(ÇdWôú@H)­ž5±SAÛ\0èe_·¿ûI02všß¶}oØå¹¡{IfÎŒkFI•€Hø40´r³J`øvÖ™ØK\'Zj%Öö¥vG¿¦q¬7Wj¹³«0HH)M+2Oc{B¯¬¸J‹Ô¼HÇWß4öC½r•OØétæd×÷HÒ8C„Ç†{„	liOê8u1-‰ÛÍzc°iÃþÆ`yRm«èH*@m­pè¼Îh$è\'¸|„*ÝžÐß¤MLÅ‰AaL,t!KFÓÃÁ H.¨zÚæB”ÕþÁ ²êÌ7Gèaÿi—{u¼º7[Qs,ÑPkH.·² Ã5ñU¯Ë@(+Õ•íµx:±$x”‡7åƒõÊÉ€H-HÞÖ”UÁE™³QÅhþn7gi†Q^ŽÁ¨›àÎ”1ËõZ.LÀH-x•1, VEGô\rNî§f\r¡DbÕý²Ã¹-csÚA}nH,ÚzÐCñ¾r)Ï‡\Z÷ÝÕ=Š£Ud\n³ç„’“Â‡9°ÀH+lóµë4ØÎXÛùaæcøÅ­Îz–x/¼€€H+–¶’±ÛHÑè\n{ÂÅ öjxËÞIAJ–Þ|“XvÚõ€H1P†ðÇ„J^×)ÅÃ©ÅJTŒç‡xÈµ ÃÃf!’óžpH+–ÂÂlH“!›ËEÐ@ËÂ^ù]î¥n%<iîÛüÊÃž¥Ð=¦¨8Z€H+Õ0éâð :’vLºXÐúGÌzÇmÿê—µÕŽ Þè¹VH- ÉÈ¼+Å+Ëìä 1\ZR+º‚‚jr¡û¿ð·¥Ÿ÷zC@H+©Ýhê_0oÅl¤RSNX<þ¸© ödkó€¯Amø\nù0z^Ë—€H-³,ó{È\n‘Û¼¥.Õ½RðÕ{ˆ—8ëéMÎdH-µäýv‹\nÜ<ðÞØæsæº²½™©cx35ÖÎ÷œ_ÏäQ:a¹ÒH-€¨¿¯6—KwAPpéš\'žèâÒÇP¨Q;{ùÈ–¡³ÀH-€qÝ²¬JewÌk¼\Z%ø&)~¡PN¼|}¦hv~õr£DŠªÒÜ\rª·“ØH-€oCÿ~È$—fÖXã`BË¼fƒ6ˆøEØm!ì|´™CösfKpH-³m.ïˆI¨|Ž€öº~ÀpÀ\r¿°+ù\rô¨.\\Hh—_cÏp¦µMÃÍ\\²ž‘æ’ÈVÌ•›^–È„=0H+—®Ü^ÅKxÆ‡uyK²\r\Zu3È ¯Mm§nÚ›&Ó«Ø¡è@H+–òó\\j[f)”5Çº‰µöºN÷¹\'AäßréIùÙ,H+–ój˜ùÛ\n×®É›6é0j\0¬²üˆiA¬@Rf+_¼H)­UÍ²ÏSMêIÐƒÚJg­ƒ#‡OOòr%/0Ë\"nË$H)­ôd=ÇÛ¾—ÚÈ.Ö±ÃCÊcR¹¬F­2õ£ƒLu$ËQî€H)­òÀF^‘:¹Z£lÑV6 N\"ÞÐ4î?a—HÔÃÚõ0*­îçkHB,e¶úT›ƒÐ÷Ž&Ö8wÙ)©q\r,MIÐ‰fëO5fÙp[	H6Í°ö+º Ð~BÈM\0­zî<?ªÑÄµ²ƒÅM´ûÞ¶øírÌÇ¾ÈåÍ•>kÓËnÐH¥Q\r{m+—EÌ˜uŽ¶)œêA-‰‡>‚GÏ´§Å}YxÊ¿4ÍÿDAÚ©YWÜ©I9uÀ-‡™VÒH­”Èóh\\l+Ñ‰n×ÙÑÄç ±~¶$Ô6ê‹3­Ìc¡;lqn–Vñn1i–f\Z‰\rJH´Lòr¼l½œ|;•0Ù.2ÛÙÕÏÑ¦¯ö3ér‚uR…7™aöëà¨5PyŠûKT­ÿq¼cH·	ˆ`+…v˜,~r”{zt#üÆuŽ¯ÈÛÒ´Õ¦É–ÇÓaÊN;È£É Âò¡3³]ºH¹¢6Æ>@h=¥(úÿŒh¡´î]{¢(ük¶ø«}a\0­ûô7™¼UBŸo˜H¹oµûÉøLí‚0\'‘j±ÜÐ.\r- º[#êFÉàžmÿw¢(y[æK=½†¦ßðH·oÂíÑ´³ŠKD3Þ¢š½‚²,4AÚ@\r¸a¢|ŒasjN6¯ªŠ^UÓ€8SEï¯¬H³wYÓ.väÿÆ“Œ•³ó5€d¿¿&^ÃÅ?ö[8yšˆ8,œT‡ö¨	ñ’ƒªÛj¨H±ëÝ°*O(ŠÛ³zyyÁ±ºßj]¸5m`‚`9˜%?:ûÛñfœëQ|ôˆX†ÿ®f€H¯ÁTïåwÐ?êž8ÓpKØÝÌTë•÷ÚV´?2ñ+›_Ž\'‰ÿâÛ½ÝI©¬Yà†sH«5¾*Žg½\'6„l\rY2`ÖRF,tSr¥h¾ªãøüÛSCG±;u¼IÒ¡î• H«Ë[ä.95FìÀn[­TöŸLrª9rÇ!rb™.cYø»qã\0Íà)!˜½~ñ9€H¬àñƒRU¯@«õÏáØn\"¼Ö‚\\XÔ7ý,wA}Ÿ|±ØÄÂxk¤B*ùq‘G‘€H®å~q£sYÍô®ää¨RÈ\rñ·¤Ü¼Ë‹îzìë2»2s½áA½}Ì‰ðwÕ§î˜H®YwZ¼b:\nM4äÛÌ4±…-ð F0ÑÞ³Ô¬ÿ0´ž<CŽvÜÃðpêo;PHª¦ÎPÉ‰’gXí\Zñ†½§;ƒ•Z1ÌÛ´:ïXÉJ×=e8œªtðÄðgJõ~á–`H¤®)UÚé—]¡`3‘áâË?\Z	‘\0ÙßS„Öe…ãŸ‰œÂdÒ:ƒ¼£VdÙŸˆæá·€HŸ–ðèëÓÊÏþ‡Bœ±ÈŠ@œ‘\nA8¹y®Ü\"¼«Mä¶£Íž\ZÊ©cŽH¢ÐS¸•Rœ­Ü-ï_+)í†Qå\ZîTÐ¡ú[v	øÂÔOÆðõ¿ÅÿÈ“PH½Ã¹ÝE‘A \\¡;ÁËÃÚâ”s€ó<òºè)\0ûÝÐŸq9Ã”œ0H,¤<ÒéºíN)1tEè¨ïb…®ÚyBÂ„OyÑMw™g•ðÌ#uõ`ÉHAO<!½Ùqç^šNG†Â¨în¢;sZÿ®‘ˆÀ«ó˜!ËâH‰•é\"´Ö\ZhÔ¡s„èDBCNg,3äK{]áM$ÑkÆÉ3‡¼Ž €HˆÈ^º\\82¿°“mså¯šÈ ¶ñ•Œæ¢ÿ´N5PH€Ð5¯=Ÿ§;~c‘t¿cÌ‡0?ö‹PÊc{ríXÜy^·<]VH,ÍE„wÎ	{óÿÚþ•h‘=®¦Ã[êD®Cú5¦‚hyHè\nJ> p¯¡•ø>}ŸÌóvüãKüª*‰e H)Oª¯HêI€cA¥ÔÀ`mšíl¿ùøY“oÄæÈ1É#H\'ºû15ixhÏYÁ9FÛõKŽKd\r@âŠ(n6Wßˆþx+Ü`H\'¼ÁµœáSg•+G–;,îF(ÃI„Ícúç^rru„„µÂH\'d#“…/ìÿ·T€ZMÝ](ó\"íƒ,sÙHRªÄÒdÒf H%8™	ÐëÒâêcI¬ÞÆýXì’•VûùN<C-7Á„ñPH$)3¯Ë¹.(§u·Û2´ï¨¸¶F‹ÉFˆ99Z€H\"¬Ù‡k•Nåìz‘Ï†Œ=z§ðû_¦ù7€s”I\0á97xH$3î4P½Ò›D¢ï/?\'ì)¤ýªNÍ~{+Ÿu²@Hö l}wZÕ#æqa_4¼0cóªípÈñµ5\nÆÀH|´‡šÁ¤Ô™¯÷èœæ`S£nV~gÙÈ:[™QŠè™°H\'j¤o³,UL,,1(hvošIš0—²è“L*šólÊÐñ/LFÈH€É’3HF†+à»Èê{h8àê¼Ö]¯–—.`W$½å2²ˆÞ³‹ã‚®?HšØëÑÜá“·ºz|³ãæ>º×!õM¨É—VcÃk‚ïÑ¡\ZÝç:4Ç„!MH›.V—¥ÿpº&#Ô÷Ïá<é‹>/=“n–®Q»‘cŽ§÷1\Zïÿñ‚¹«}©š9H ~z@õÕCòe,ÈÉÔƒÁO§]XIªnÄZxÃ}TÐù<kéÚß\\áupHž·‹%ô§¿‘Þ“*\ZoNvb£F%yièõ\0Ü==jš±ÀÃzŠZ€HžâEvü»è)5a\ZÜ$4ŒAØ¾0+z†¶Ôê›n×,©ëÉ˜ñ°r•ŒZÓèƒ²|¾3èH à&bÈåQ//‚ÛƒÄ¶þ2?iïâº©¼zÙB/œÅ¢ˆeÔ9¸†D¯ËÏÊXiï‘s¾VñpOggS\0\0hÐ\0\0\0\0\0\0\0\0\0\0\0\0÷_½—]330:691175*/63*2/8913450+135-21,3-..0(-22.-! !! $%\' $# )!%&\'& #%)\'%&#\"(% ##%!&(3052;3*29461/H \'@\n5+Ä†}ËË»·\\0—Sšg~éŠ‘ §BE“Ün\n×Uó«A‰*Ì÷`º@HŸáP‚¥OQEÓSìEü8¥ùÃê?Î‘k3Vâá×“¸>†+ú©š7Bù‡lî0ƒ(HŸõ=cä7¢ÇÙžÒ­M®Àêƒ_”rÁ´ˆ`\Z2_.ôESŠî!©pI¨àH¡Æ\np¯Ä)ep„÷EŠÂ4qØ+æÐ¬?âä”nÀru#¾!øÉ~“É={\'õœü€^}+éø9H­†èüIP¸°þF¹£èêCIYùõäÙŽ:`˜ÿÙ8i³K½úš§ÅUÊ¼µTÔÿN€H°šG€[œÈ_bÜ¼^\\Kè©7 Â	öÎ‡ÀüWDÜ)‰ªc?!;ñãdëøM†Û¼,­(‡£æ€H³þ€Ró¬ÅU*édÝÙà\'ssÏé\ZÖAïBj7³1Îañú®Œ£Û—î–M?\\ Hµ“JãŒÐŽ™.•oÇ×ƒ;\0ùÎ>²?åÁ¸ážp¬1	Éªtò›ô^úO`¼lH´üN/4¯¸ùV%1™K~Ìs\"N\"¼|FXÜ­15q~‹­q!0Ë5‰ãÄ(õ×ÇõHC^z€H®\n±ŒÆ²CdžhÚ‡]ˆÒ,Ú+žl«XDµPWúÛîÈ¬ÿ‘7¨þ>É\nµpýßUØH©ŽäÒŽ†=QéÏðõº\nßÄ…Ì‹k6³4­”ðAážtWðŸfü@H©4èrôÉÓWyQ[-÷aÅ\'²({³³_wÓ®“a\'ÐgZÃ™4(÷ò*F=´\ZÂH¦¡bú{É\nøÒdì$¢;{*?÷Z\n}8}ý‰‚¸®…ËÔ¼¿âzÎÊ\rºÙ#%‰à€H²™‰Vµ–¥’Ï¯íå{Ve†·¹ùqj¾±Ú9)‹\0Ø?E¢§¤oïÉYvïnèH´íÞae—&­àÑÒÄãl$,*.+UýTÄ´6è\nÕ þè³ŒÖã\'<Hµ\nB¹=©î=åÒÊXûÓ­»Ø4îKyw6ÃYª¼2Ú12T×xFÍ2Yå	€Hµ kÝK!¸7ÁQ)„²N¯¦íHmhú<•	4bÑÒ8)\"ÏsÊ£Åd€H³4ž4ÒÆ×«ñ<î‹R·,HZq—Ð¦{DV»‹ÑrÜÔî·Xý›]ÿ|Ä½9˜ÜP]k:<PH²ô(©µ6o«gºš¯N}‚e\'…ú ÓáÍ `—ùìÆHãšvúÕ2› È‘¿}3+ê4ïé¯´àH²Oˆ(\'€dw[¾Úusf÷ODƒ÷ß8¼Ð…©¾YŒŠ0 ÂLÃ\r	N¶ÊSH¶!©œð×{vÌw›.À°î¿(eR’,iý†]ŽmÞ2æŒ¢6SÏ	—·<ßuH·-þw°øÆÀ£µñBÌêá‚¼ä\\} âõ¦¾§èòÕ®\ngv`]¡ržëþøØ\ZÀ\0LÎ¤H·Ô‡.eÐíÚu¼±bÕS)æ8mÃçP1¾@;Ã˜F½ÓÇMŠ\"F¨‹wU<S¿rõÅ_\rH¸ªC21¸¨~zU`¢J^†®]¬aØèòGÆ¶£d„sÀ¹lÑmd4›zÔH¸ gØ®Zj¤0k¢ÁlaòpðEêæ%ÿ€ëî¶5ýíTú~JÔg`H·‡©--“@ZÁÐ|+åJøáÃIY‘“h\nK¼îPH‡|;Š ÅÉ‡ˆ\"6ÜFNxH¶—ÞQÒØ:$/>¥Ÿ½õ\Z÷jmy´¶9®xÐ5Œ=´¸¡}Sq@\nVÉrÇ8ˆbJwàH­ø••TJ\\bÅ ¼J~¼×å”\\_+•€8{íÏ£1\Zà“+›ñ–&ý3ß²¢u¡@H¥óù@8ÿv/bÀu]ŠÛº€jÇÚ6™‹}ÈG¿ÔT„×{T’Íö>[÷ÀH¨ùQ*ÂPÎ×%!‘oÐrÀMd’ôÖUÆÂ„N½øT§shEÔ¥X3*Lkßr H¤šS\Z¶%RÏqý²§5.É®½ß:„·\\Ýo\ZCUcçLá¶±ÏUþ×1Œ4]f,I°H ÝàöÒ`$C¨ŠN¡*óÔö²²¡T‘¾\nËÊ%JnÒãØ}`69•(¯RïHžÊ/ê\0êS“94|9‹BÂ6Ýã¼Åm‘ÄgÔG´Q\Z›†”“xäÓ¡sYŽ\06çPHžâïÝ3ZxÈ¥ŽX!ø…WNoÿ¦x¥¶ëÔµ)ãEˆ\089°±ŽðH8Sî7@|-ŽUIÚ\rþÉÙœ’¾·K‰þOå‡\'šÞl¾ÀOó\"n­GzÓ…ÖHœóÍ§²PÂ¿íÛR%5?{çeI¹¯Q¦cNùXÆÅ6“÷E~ÖñgF°Hž|É\Z¸¨ACõŒ6â•\'Ÿ_žu±6fóÂs8þQÏ¨LA#]çj÷™¾ÜHœ$:÷kù¨\n«<ýRy¿üÍeà™oZm†¢gåíQ¯ýN*kpHœä=ÑXÊvuï›$åR‡õ\\ù§è›ŸBvÃ©3­ø~—N¦C†¿ï“úþã Hœ± â¼ËxÎÒÇ}Éà=\rLí\ZîÌpÇq²¨g	m96ù‡Œ;®.RˆÚp€H›—óî¡ì¤&›õÖ*y¯¹Ý—÷ôyEã¡6‰zÜºEi÷&ýÓ¶þ+5kóoîH€H›\0dü™ÄÚÐbó˜Š7•ôÔ[]J™O¡×p¿,YoŽ•$k\r¡OÚ^# \ZH½¥‘r|E»o?ô÷š«ûé÷•Ò\"ìnƒ„Àfz–ÂÖ¨,Ðö¥¬ÏôË¥àH-ÿH Ÿ}XEw\0\'ÖÚ¦Hr¾éÉ6xô­8ÕÀH+Œè@“åxF‚Ê\\Pa%©¶ë†üú[ ½]>BK@H)\0ÍN:>c×InTv¸»]ƒªkSj^–°zÂ®â#ÚH\'ºønÀ}ñUo\'¼<JŒ,	êiÀêXñ¸›¯ˆUÚH\'X\nââÒÝç!‰àÛ´ÆÉáXˆ$Ç€+UxœÝÌã0H\"až#¨“3ÍÔnŸRôR—e‹Gsë/mŽ	(îMnðH\"ÕýEãµÝ¬Ìp#ú/Œ\0ÜØo{§‰à[.p4ÞÊãƒU­\ZH!öÎj¬\Z¿®boÐb	~bRôÒ×ä4‡¼\Zp±«þ—²Ùb7þH\"µþCéÊ\'zD«Ã4b(ë*f‚®¼\0ö†¿Åj\\H€_jD\"çð>¸ñkÒÃ×µÁ³MÁ\'ºCïV“ýC£ÞÎ¡H€×ŒA&@‹Î×\r¦1È¶ŸðÎüG–Ëžç/•Èê\\qH\"ôÔÁ.Ë0«Ž¾ÒÆ—VÌC]ðQ¹gþ\rŽÆH€T)W‘n¹cúÔ§%îºšüBu\ZüÑn•Ùj¿p£¤»þê!@HŠ;ÓØ«­5|é …r;4èò¾i\"­ï[“IA H/>cæñV½ÌNô¾7n¶4Øâ=Ñv1dc\rôs\\H/ ÖI¿ìr`7R®Á%ð®>Ú!AøÈ¾˜ÞL6é;âCÊ¸9:€H+lÎ_‘ñƒÏb¡º¸™ïä(2´i`Ùé‹6þYm—Bq3ànýH)1C¿„š‹f /^Á[–v·¹×Tí„2‡ôó÷:EŽ‘WÝH¾w,ŸkAÁ\Z–sÎ\\‚mÊÞ•¼ƒ3ú\\`•¨H%9­ï\ZùÉìqâ?&¼î\\ak¥ˆœÀLòìÂ‹ÁøÊHä¶zx\'ÕŸ¿&=L1âp>`hŠ÷ÓLš×{DPH\")/¾¨ˆo|«”ù½¨ eKØõ¡ž±V€¥\0¢m/@ÔâíBœH³/±53â\'¿:2ð6§Ê°fsv^³¦Xðhï÷\0{YDfH\'‡Èçñ>›ô |&¯ê×\Z£1õßÍèYÈà?ªÒZ@}`H$¼8\\Ý •Z_ã`ô©¾÷o‚}›#4HU2Þ\nf›¦Rm¨H)Ìlòæˆ¢NÒrƒrªm-îxŠíe>Ø8•6}“ÝgbÎH%9µ×XsiWA^—}ËlK¨fÆ\0\0,–à«úÄ*‘^ ÐH$ÛEÅ(Ñè(dè©[¡×+ÃQª“‚4HTLo4”\\çb4˜H!Ïš8`—Æ¾/=QJ×æ%çc3²ß6!88Ë´…màH!ï°Ï‚ß×‘Ð«ªZô{ÑÕªl\'ÎFÁ¹nt¤HK`zÇéò¥~÷«î\0{75²Uˆ¡ÜLÛÕHŠ–åãZ:#áÎ|ß\\GÞ\0ƒyím7:ûU¤žðš@H\'f‰ÉMžÇ•;»š‚!Aù@ ¨è0·ÕÙ™€°P.î—H$)#fô¼El\036%–ƒ mQ™§Z6ë[vš9\0©YËA—€Hÿ\\«¹ªcp¢ÑÑk]!ÕÓóüq\0\Z$©ÜºqàHï­ã>lÞy»\r!ðò>Œ^±ózcØ`ßvq…P°FgLó–PGõ€HªšaDÖ	ÇmØÕYÆóE¦V\Z­xƒà¥»žý;ÓÍ¾’gÛõY€Hâ®î8=ÚrÆ=* Ù]ß¨Ø=Ê_TUÐÃŸeT‹öò÷¾&®­mry[\ZK¡ÈH€„ WÓdlV¿¼×ghÇm8Kf¨äÆ\Z.U}ùæè[—`¼\07åVjÀH‚ð^¥)ý)}Øg ö©kñ¶šŽY@ÉÉx’t<û8¸JÍë@Ð·GØòøÊI{ã H¦skãp\'2&µ½5§Ä„_½G\Ze÷áœ½Ëm³r+š»×Ë%¬neÛøC­-ŸêZäH§ùæ@ó\\žÑ—~Õ0†%(_¢9€†˜]Ÿ´dzÊ¨àïÖÔÔÈBüq),Í<ëgÐ:KÆïÙý€H©ZÕÖSª¼9\0mPÕôªìž34ÜI^²2¸Ç\ZÎß”+š\0ÇÑl\nš4d)IÿÃH§£ö‘•ÑíZŽïõh)ëüìù¬œJk2Ž¯e/„ód(€H¥4çç&&h\rHè{+=¾ý?rä	µ¢\'+ž„<e5ãl\r•¼ò—¶3óo’$Hª •/&ÚÎÕ<S£h…é0Ógð3D”Õ†qßáðE i]UŽ€`Å¨ØOdæÐ–w¬’+pH­ËÎbEªÃ÷‚ìˆ7^h’ýª\\jƒmÒ½ÒÂÄa=÷J\'uŽ®«\r,\\÷7­©*É£H¬–{öˆsáØl.!%óQ®N°ï¿ßt‰·6¨:ì,£ìG	€»C=ÏQÎÎÁ…žvåÞH¤°kÁèãd06Òáˆš\0i¹cm¾³Õ\0ÞhUôÕéŸO“0‘±#Yaë¾Î€#ÀH¢”‡ž*}Œ«µÎ#:¼¥é}*v%SgÏ[üÊðíA©Øêfðy5&—ÓÝ6o0 OggS\0\0è\0\0\0\0\0\0\0\0\0\0\0\0)¹JV36:20%)1207041:7430.-\'-*,)! %&)+##&(\')*\'%#%))+%$.((\'\'&))\'(&%%&\'$\'\'\"\'$)*\'*&!&%\'$++#)(#H ÝÞ˜ƒ:™m²:ã©ã›TîCÍÎØêu[µû™£D>¦M[ÃË„­íQ\"ÀH 0¡;ÇTÛ·ÑB¹R=¾&\nQ)¡N2	¤ND¸U¤r%^CaìŽ›³þNxßHwm›’œHªŸ=ôÓIÇT¼÷|YÑ©Y\"ý¦¡®`ÀÞÏß\rµ¹ÃÉR\r>mœ¬\0s·Éå¿pÐaud~ìHª!4Ã™ÃÙÄotÉæ¬X©>‰v&E¥š×­\n+D±½þ.?cA†ÝMÈ\'è\ZýH­:úÒ\'Ëë=–€ð-Ç·\r0lm¶göÌP p¿ý4¢ŠÎBãzkøžÆ?Ý§ìH°âûU5(F“/í»t$šØ	ŠÌ­,t\'Z,E&VH±ú{—åkm*”RÜ·—›Ç^ŠúËÄ’:N<‚õJíhZs¢øH±ëE8š‹•8ó\Z¢þ°R€“¹EeÇfÑƒ”éØGòaký©kMC%íR¨&R:èH¬e»z—§ŽKf5Ê#mÑ±rC jzÛ©XšãàmzÞdØ©ÐÃ§	Ž\"àtH©àmëD¸o@»!*Mä.Çžm‚ˆë´âøjíG}@˜Vß¦yôE7ã`H¦lÞ¤ª\0=7ÒÕÇeLæÈ×k¶!i…l\r…’ðœ°ãnfg`ÄvÞª)›€–2ÿ•{L‹øŒ¸”H¦\'Ãs” hÖ0œ Tv<à$¬Í_GƒºŒÊê$¿p\0uH¨QTÈ¢À‹e\0§Ÿ‹H¥!PzoãºAMòjJx8ocø’ß?XÍ\\:ýŸ®€#†VA«~ª®R­½Å²b`SçH¤þI“Á?H[’¿‰Œ¨VRÙa2IA5£d˜§sÔ»ñàï­*Ðç¬Âj}Uv˜H¢ÑZŸ,%Wn;ºÀøÞçZAAI]äÌæ]ëÂ]L¡Ë`mGÒ¯îé¶O#Õ(ÅCºÝ W¨H¬Ä.\\øàóKà’m¿hûwš#±Tð=þ„Ò›ŠìÛhïz¬T¼h#Æö|Æ)§Ö;ŒèàH«ËDí-ó0\"|ÎDðê×˜TÝ!íå‹$ÎÂñ”‡ÌÇ‹sÿvH»éG®+Ëñ·)‰å,Hª¼là^»²Ã­dÕ9#«o`9ó3Èt8Á´Š„G«¶vk˜áuF}ÐÉçá\'©\n¶ýH§EnyÙ™d\"àY({—²Ùß5jNú¢+õ3~¢<åÈÉOðò6 MPðf²-ÐH¢L¹%LÏP}`Æ¶0ÍwwÑ)1KÀå“ø†UB¡`«ˆÝVH‹ÝP¹c7÷m	*I©rl×\\_QÎ>=vr-Øgc¹\\ãR×\'bÈHŠ®…gè>jb,Jþë·npé«g„6¤&‚Èv^hCúÕB‘YdXH‰šC½ÂÌc)}óâ,¯té3«Oím¢N<jùUH•õ3µŸ¡vüÌ¡t[À¨HŠ\03±T‘ÇÅrq´ÈôQ{b’j}po2Ÿ%.¯†)i$×œ4˜!„HŠ;”sØFe’#ÜÖŸÆ«\rºÓ5}jÉE‚s3ÝW®Í\0ÊYÞþ©€H‰õ·ã¢×‹ŽRQì8_ÚŠ^†°XÓv |Ô(›ßŸ+¶µfc\'pH+6vµV{jÙi“ƒ&ÂxFÇ\niš7A¸±vH1|ì»:fºEX¡Rç\n“Ëï2cõÓE´þLýH/h:ÀŒ£-g€Lîº(A‚ˆ8Î›¨W§\n•YÇµðH-ÔâqÎÇ¿oÙø¹}MBA¿	(.wÉ:\nÜå>”0H-µ‰‡¹½bÅ¸à2Îî%ÞPiœþ°ú¨Þ¬ª÷,7-H-~úƒ¬v-·ˆ­xñH`C@Ýl+ò|¨ >F/}tV¼ÚmPCL˜ÆH-ÖÙÅõ¯Øi»mB@†4¹0¥*SªÓî™øÅ©$ÍŒ\\<¼îH.	\"¾BKj_R6ð4|:z¶Y˜ówÅyqAš­’‹£\r÷PH/3ø—)iïy2áûw\nÄÀö)_þãP‰2éûiäé3€H/1ÉLþYQ›é¤ÇEý. 5H,ÓNÿ|©«éë:‘b€7‡RÐH/gÄ˜£»ËßË e›UÁö¨¬ÒÈÌÿ:o°4s]w»¤‚!UVPHŸÄêä´¿–A¹£å¿©åí“o´A\"$[\Z;kÊN+tQ\"ÂKä™H/^ú+ ü\rsØ«·ß~&>‚ÿ‰Žƒ,p³¡aÙ•\'Á9¤H0å8H\rCÈŸí79°­‡5K—ßµ=%¶ˆ{;\n]v*X4j†I\rËtH/h–ˆðÚm÷ø, ËáZá&\0fëMFäÃÒñ‹‰,ÇO)ž?!ö`H/h”Ý×uQi€ôî¡\"É¾,†%Í¿oéÇêŠŠ¶¬ÚSÂ¬PH/K3@1ÝUÖ\"¤Áÿí\r‹7`&¢ú!=ì°Å-JÿXH-ÊÑvDi£C—1r~pÿ (d%ba„2—?\'Üc;5¨$°H-ÔÁs\'Õ…îÛã}Rz²;ïùú*\Z,‘Vßœ…v]M«O\nŠÃ€H-vM\'íýVÎÑ@jVÅsJÃ!´Z¢ÐÝ4@‡!</^OÙ/›°¤Tó°Hgˆ}òžës5„Èi3O,çÜ’Ÿéê\'=åºY$±HÕd~Ap¾bH-ZË¼øob¼UâÖ}¢SI!¡„’K3xOH½)Ìª#µpH`Ã(Žë¿±À–±~ºYÑUÀÂ38@¼Š’¢<ÛªR@H€Ë{n¸ivs¬”pÔ××l¤Ÿ§„Œ8)Ùzùý¢ŒMz°¦ªšë/ïªH‚;eÉÖ£¦½òf+cÜn^–öµ–»-Áfb˜šë‡¢b½ÙšaH.ÀžHàw:9Pžú¢Žˆoý5ÒÓ ›Ì] FÚøó_\"#ÀÛH-UB3ˆ¸qÇîe8ªf)½Þ`ûÍµc 1s(;¿vD€¹ÑH,à¬à¥]¸\\Ôøñ³Ë\'ñhŠè¿÷K.Äñ¿\ZqÎ\"pÅb–èHbk}^­Ú›#eëûò»>Ú¬¨Ñ¤Î²ÊîA÷AŸ¨î0«Q‘H. /­)S‚9@ª†D‘Ñr²ªrH6 N÷.¢¶rzÞ87W½šÐFå\\€H+¹Vò%ó£Øœ@ŸŽÐQÄ\\¿]”êQ?Îë²äèÜÎ×ðU–Ÿ?m+H+5¬Ç|ìuCÓç3½\ZƒUùÑ¬öÑ‰4$‹‰ˆ”>•Ã­Î,H)£Î\n¯ÇïÃð#«Ý†@e.î¨O½«É\'s›Ì½Y3+1¨ú1ðH)…ëÒqD4™ÂäpÓŽÂ—úÞž@Etˆ3…9¹bÃTW;Í|H)„Gÿ‡[kÆýLÕl¯ÉtBY#ëæß-þ•“…ªÚ-|xH)­öÇ°‡Îô÷÷–M2RgsPÂ)÷0üWEØ«‡Áz´‡}†øH)£ÌÅêíx–;ãü±¸ŠêÔÅá.ERˆRÅë7¾èØkÓ&cKH)„H¯ÿüÆ½³K,HâFÍfyÅbÑ™		cuF ¤U\0ÚH)„°Ú„TbZ…ü½8dÙ©ð8úúö²ÿ2¹¤ÀWýÔH)„,ºúðâð<‰ 1OUz–lcÈ+/gòŠn:ÜMÛ`H)„ù´U¦R_Bå¥n¥Gy¬2€õjñIâšï\n÷ŠnH)i;•±Y—N1îJ®¡ƒÃô*ÁÎ643•÷gýòÖÆïH\'›HZÀ>nâ5òQ;8Pæð3-¼§:‚¾kïNYiÒ\Z-ö6_H\'›:ƒƒ(÷»”Ù&€•=·YI{²¤3=åz—5˜uÏ1.H\'›±;Iu¶þ|o»&ð\0a‚D¡âñ+¨V´_‰J)ö«¹Æ`2ïpH\'Å:>¸É§x·V-°¹ÓÙjMîg#Góœ„bB\nž\n\ZNgQ­ïÈnLH\'Å;b/%Qö¿ÒåŠöYµøG¼ïµ™0òUr70B\n=@H\'ØYýR–“ŸŒEOp‚WVÎüýŽ‡èÓ(UÕ›:S¨ÃÝì-²­T“2H)­øáø|>¼Ukõl:É¿?E`‡{PI)¢£	¿õ€H)„)HVù‡»&®”ÈDOÇ‡up²´ÀH)EnúVöõ4º\'BfŒŒª›Ê–}2dRôE›\\¦µ¼ÎàŸøH\'œï®l1ª¼ÞñªÔ“`¿¯=uÒ¬Zº/ó÷c°¯ ®Â”H\'wxRÉUÉóŽàjÿk§ÀWì¬4ÊEYŠ6l×¸ÀÄ¸€H%9´QX¶BöÖ—Gàt?ùÂ…œìq²³Hî”ðh_øÔ˜(H$õì$]û`CÇ?¶¬T\\@Çn€ùÖ…ræY¥ÿÁ8ìÍÉz(]8ðH‡Mú lŒ`s^i™µ´ðê¿Kd¹Hò÷bSµˆ\n5¡éKeKnŠ H‚»\0È™êF¯e*qÖ[Øý´²Èª1W{ú¾tz|û4ÈH€¢Ý“ùð–ã/¦\' lIíŠøwè¦\ZHTo|ˆiÞdQª-Ú×ñ9ì°H)ƒÓ±Ê¥	@Êf˜hñž¹·ƒ;aÖé*ðS+×§G™706HÀH)EdµRÿ‹áÚ»öŽÔC\\ß:g‰eíR¼ç \ZmÆÛ™-','ari munani iaku dius manda.opus'),
(35,'Esta sopa esta demasiado caliente','Kai api ka ajai rupa','2022-12-05145351977887la sopaesta demasiado caliente.jpg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è~\0\0\0\0\0\0\0\0\0\0\0\0Œ95f**--*/-0)!!&%#&)#&&$!$\'&*$&##&%+,&#$++(#\"$##&%\"&\"&+)#&&#&#%(((&*+\'*)(*$%$#(\"()(#208450*01937766<610/HäÁ6ìÅ€HáRÄÿ°¬Ä)Xü9@‰44vi6H†$Mcl¥\0W%ØÆ¹Ó4íí@Xm6q=ÐŠ€[ÿE·0™íO`‹”`H‡nçìëyepgvS*ÿÈ»ØMM¸z¯ŸÂ•F•½ËKA{ÖQ/]ùÂ(H‡(ãË«[agî¦uÍäú@<ä†0ÍÐW[£{¥µ¼gYV‹OY\\kkØH‡VW3Ny	‘´_Ÿ’úßAtG+h²<ÉçºBûgÀ]i¥ú¤ßžñ`H(Nà[Uª§×^4X6ÐSiª™ÿŸ÷ºŽàè²A vCÄ~\r¾ÿ›V@¡,€H€Ñ”yq®wÜŸBs)‹¬Qú9WÑŸ¾a3 ¢ˆG£Ó¬5ü–ˆ¼…Ü1H‹ÃIpz2²:Nlû/¦aEÆäácÒóU²ümu“wLú…gbÒçùHŠnŽXLfáMrÍ …/÷PY^\0ërÎ?²TþÆTÊÝy:´\'IIiÇ¶`H6š’MsT®IÍÐ?‚©N#ïÅF¼qÂ)àÌS\Z“$\nHU¼‘H6# Þ‡ Uj|\0öHÒ}šÎ\n3wîOn»ŠH.ÂÅ²y¯”ñøP\n@ÎñX×&YT|D¹¸Þa$ÈH+—ŒùÑiû\0Iàò¢våÃÖ¨¯BŒ_|\0ä4¹õßQ•¯äú€H+¦üÃõöãÃ53K\'yÖD—ð<\\rê¨{ºå`Þþ†kdH\'[ñÊ-¾ûÚß\nÖZòÅÕ”(*w‚TÔ §›\0@H0×—¶ŸTc¾°ua1Ãè‘ÖÈ/QøµÄÊVUœx\"b`XH,ÒXTámÄQã8ó‰aMœÂ½ ‡a3-\0À·˜3^ìØA‘Ø¬Æ4ÀH+®0h)…Š“äR×±N5xÄDî‘ä³Ó*Ë€Xó8H+–»)khAŠ#ÏþÄrË˜Ä°c‡èý!°±¹W¿P6ƒ#ÑVàH+n>îÇýï^W„¬t¦XI€TqqR’‹±}™ØT _é‡Âx€H+n=Âcú\n)ÚZ†´ÛjÏYr‡\\¥´^U™ˆõ‡µäH*ñQ×WŒ]§¶†Ïäme-úñä(c\0š#n5èhH)…|8ÂCl‡SÛ2ÕïË¿Ì8Y»çÝÏ&kTäB¦!€H)Á5 x…ÚÌÞ’ß«­Xz”±?Šß0µò¶nâMë\Z³ä >ï H+lÈcìª4>FÙ 8Î^ˆ%ØK}²+RY!™ú$}\Z*æ×²H+Ð†ÒS•×czÔPm€ÿiY¥ÔF–…J`^¡¬Å1·6Î¿>†Ì„´¼gH-Výxs9F+É±ˆÝÜÇ6À‰V= G…=Ã(¾Ð–ÞUwòk H+m\r`•ø—±òUï.j‰øu¢SÀÛI{u}|å¼cê(?·H+¦Ûöü–Ñ£€\"¼Úa!\Z~‹EØATÇ|šŠY…ø~°ÀH*é˜@‚ëÛdŽ\'&­º°ö»ãµ¶]Âäœzë¥Ú#­Ì)íH)EÂäÄW\Z,„Qñ^\rz˜?ynØ!yÃfŸ]âß‹L!€H\'›BAÈ5RTuëWÐyô-LNP{áÿG\rB\Z™õ žmÝ˜‚ÀH)¥Gœ?$	„Z<?¯én_a™ï9GIy[|}ö9²¤n‚+@–H)…~ê†¬~«;ÿrËÕ;ØiØ&y8#\nÊ—a\'Ø)¡\\‘±3[:H±¦H)¤²Dþ4øgÝŸé´ÑÊ±Æß?ŽŠè¢âB]ÈîŠ%…=\rU\"@ïEH)º{{°zVnGÛ•Ðle„–m÷;O=Ç9²y˜#wŽH+—qx/ÿõz@7‰=uìBt–æXá =½¨^f_¨H,*G¿—êuÅLÎÄ…AãFï8@gñ d­ÝÜÃ°èÒ5N^øA×\\H1QöÍÈH¡Y»–|Žwu¦Ì;wIê7¾]³Ä—\'vd”®6Ü¡æƒH1Qñ£—Ê†8Èy!Jº\'\rZêâjéê+âJ„m£Ä—tAŠhk¦H0ò†·Ë²Ô]k~#ªâ@³GO¹ÈE¥áëø½sÍ®DH.Å\0â«X”Ç?¶‡W6ãÜÜà>bm]ÏÛ^=P)—=H,Ü3”|ÑZõQ§E*ü“r›B]ê,\"þE’îW³éÛ9$BXH+8	ÉæƒùWEþbÞÒµÝêÎV\0k3uO‡_%3üÜHú†et‘&´Ì-¾X ;Óã’È]pG9Šìb×U\0+ç³H)¤î/ßë7Èw¯£„ue¦Ùµ\"f2ŽúÚU§>\'#W.-û0Y°H)®ÌöŸ>«4‰40Cƒ§bâ6ÿ\n1<Â…¿ù.’… Í©nH+–ó)Ô¶-+_R]Á«ævbc¬³\nZ0ˆ:4‡O+7ÀH+m•8¬8ùK÷röÉ>ÜwÑf•ÓØ¼îuÒ*iK‹¯+I€H+–¼“YT4ý”’g6kYKri5ñ?q˜!”ÖC~0™›êH,4t#ÛkìWÒÎ@Ñ+ßÏ\n»F\0ØíCþ<O¦DØ?†í“/ß°H+–¼)fˆ£bæáÖ‰œÃ%1€¬<”ï(¹HY€¹4Û©¿\04€H, wÅ5rkèQ»¥LKÕ1‹A‚OifÐs2fÛªŽuG’aô©LH-ÝûÇkƒE8ð\"¸­íµ:©­\'”ñà®uØW\0Ç‚H-H°°§Ã<V×ù-æ€ÃÍÛloN‘þèý_ù£©êÅ»´ù?aÒH-K‰t¹Å§Z**’›:ùÎ¾+\rOÉ(%•~¥+ž¿ûå¶Ã´ÀH-x•0æf~8<DØnöÏ©¼Bbnbt1Öy³é\\”&õ«¤|H-‚j—Ý¾æçOm\"Ë\"rÌdìV1Ÿ•¤:6ÄHÝ™5>„H-³+¤02|D6¡^\"~xA¯5†ÂXº{šÚ·2 H+—ƒ‡E\r\0ÚIdòÝ|\\G¦^\n$m«ŸÕþUƒ\n9W¹’i`H+ÒLá%×‚ÄèÎbèwÒ´‚Ý°Êª$‘†%x¨x{\"Œh¡‹ÀH-²÷g†0·|¤«ö™@¼ËäUõ4÷ÃFêkËœ}‹Ãe$rÀH*ñLFÝ©Jõ¯îåÝoã_WÊ3–“>ì¨Ã7¡ÿ«{GõÙPH)„¿•5g¼?/¹\rP’ô/Wâ´fSjÝÄ[±‰s8xÒQA¶ç`H)„YKúØ›ˆ‡†¨YŸØ.Ó‰‚ásq„JóÒ« ¬<?¹ƒa¼y€H)¤¸ŸAŸŠ<á–AÛPÎg±<ž9z¨Æ~2v®É÷3552Ì&Æ}H)­÷ØsõÓî™9Í™›Õ½õ×—<&=˜Âœ]ÀEÂÈ`à^Æ”ÌH)„Õ%Þ¤Þ1”ÅWBþtšE-zB¥\rc’µtURùïÈœ­Ïœ¿ H)ìt$/•\\†—ñ²ž-ìÎƒkn>¶.¾^¯ibÜíÍ€•†¯rüH*ó¿::ë>®¦VZ*pšiîŽQ“÷, 3•–EE™e‰ µÀ|€HÍqi»µO„îÿB+ØÜ,îó¬‰îRxÊ¤Ýµ’Y|”}@H2ZÜ$ÓD¹öëËÿÈD—Ç´ï82w©ð-róÊq–ê¬H9Ø/ï’I¿6I–¯#ùû`\"YYÓ‘˜\0¬Ï»–ŒÑfH­P˜ÓOíá7Zs»ÑMç˜>’\r&ž}zfî*`gôX!½¨H+m•2SÎ2‹qvŸ]]¬0YxKc¨¥tz,Nµº!íH-ü…£	°—¡7õDìÞ7±£NHO?—ôë-VŽÙsƒ0¬½r-|²üHëœ|¬ø[÷È…Ì°J›vg-_o<Fåp²ÒÏrH)KU{\"›ytšmŽ@PÞ˜ü®9àÉªx‹\rÜÀµ¤œìP6á^èH\'Å2ÀFµƒ—XÝ‡»FÐ8X¹r™ç‚\Z_T¨b½·^…gcwšº„JH\'ÑÈ5óûD{Õé€aá\n]¸t¬Žd—ž)~\ZøwgÒ‘YHzô¬†\\¹g‹óuKþ+Ÿçò¯çžzò\0->”À(¯BùHƒ—àT*ršL9iÓX&ûÏ³ùáþQsry6\ZÒW­Rë/Éýzù#(wF\Z:¸Gž›PHƒþne?ÛÙëŸ¾H3íÉ¾CÐ#ðÅ»wkº8€E!³§>ãC=Ô·˜>uè’Hµ`5ŸøíÌª¤6Žh*ü	‚yIì\ny«©’!ko\n‰a8¼iü!‰\r¹ž]Y^-WñOÈ0H·ÑÌC=$zžË}	pì©w:¢ë\"A¡Óqt|0)`û\rioš}Üð5úùlßVH·ñE‡fQ„&ÿ=âÖhç4N\\ä«6©¦%^“çM—Õt/´tj¾HÕÏ/y_}lZ H¸½ŠhES\0\0e”zO–ÂCS’YÏsO®’ñbgËœ\Z—ïÔ¿î²ºü¹„înFã€H¸ª+ÜÍ\"Ê¶ÇÛ†c‰À·œì§JaßÛc\rÝêXnìt‰îõæ$s„H¸£Õ©ÂãŠÛ‰‰|¿4P«{–\'ó3³¸ÓI#FÍSrªUwvÏ²_„x¶JÓŒH¸¢¯ö\ræZè–¼Éuºâ\"…‰#¿£ÅCoˆ—ÆÎ¨Ì\npÛÉÆ[!¿]¹ù¡/BH¸‡¸{@9¡rBÑ±VW¯³Eè†Ü°IªNÏÜÃSø2”¦jjIg-[Àà{&[©OÉ-¡¿•®xHµÓ¬pp9(‚,”Ù\"I1TÚwËÁ{(î¡Ýr1T’[©ç Å{úkgÈ¾\n€³$•ÉðH³‰Ì¯î+’Ìà¡ÖoFišÓdúî°D2Èô˜ˆI§Šœ&Swc6‰[B¦mFµ’öÌH°$Ló\'H/‚\'6I*‚÷Ò)îæGqóÌ7aAAV!=u`Ù‰¬-nëÞ]X[\'rS]iSËH·²€H¬­qÝ«ÎÖõ)Á°¤ëhŒº\rËƒ<zØ*5_#GÊfâoÛ+ò9’HŸÐ¥:ú:¼NtH©NÏ½zc¦Š{®ª{˜6*8Þb§ôX\Z&ù\r!ñ}LUb:\Zhd6¿Xöô|yÃK²9ãÐ\rH©ß:w—ü8&wh.šÃ õ~:>‰˜h;óœìÂj5Mq+ÜnñÓæd9~–M±Žþ¿–b¯\ZÏM¨Œ HªìÀýÈ~éNûµ1+œçÌ¤°jÅÐÌ´R:0ÏÌåŽª>òŽK0QFú2[Oa ¡I¤H¾};wÑa.èµ#Áh9Qèr®]Eéæq²˜¸¾\röœoÖÍÅåŠG<¤Ï T^Û,pH¾$xêë “§B›&ñ¸Q2\'„ÖÐ)À@Ç7þä‡ë=ÇÁ™&ü$þOzìdô¸HžÏòÕ«	 ñ™%§Ñï	ˆÈ@eÉ=íhÞä\n\'¨¨ë(“@!irm«{„W®°OggS\0\0èÈ\0\0\0\0\0\0\0\0\0\0\0\0ÆlÆX9062(%-3-314+)*/763,(($\'1/5224667(&\"./21,*\"%%*\'512*,*+**8./131057/3/04&%0-.4272679401,,/H§G{U‚jQr;n¨Ê‡ xžÛ`+²j›*\'ÛP¡A–Åó°³f’Í‘·4»mêˆàã0H¾/•Õ>S\'/=ø4’‡¦µ&ºþ|ø5ˆwÈ{€ážYD ÃK¶zªs»ÅpH«ÖäùÎž:Šën¤Ø«äÎfƒ¬4¿jî\ZDBÊ°M0Ùü…šäV5zCàö*âåHµ^qiîU×«žÿæ8þã>ó\ngØÃl{xr£y8² ÇsGG3âï;Så0®:Hµú¤úyè\Z ü+3…TŒFØ6°Žâ’’Ú÷ \r|s¹50R¡]Hµ²§Áo(ßèélŽ³dÌ3ŸM\rã¹t.8r ‹WÌŒ-ïHµÚü+\'H8uto›&®\\´”G\nîª|¾•1ýé67ãÞåIxqîØ,Hµ76àO­/-zÒ[¦U+6Åå`E)8\ršÓ¤œf:,5´\rÑBY¶ÔcJïµb@Hµø*ÙIXxjióVì E8øQŸø.3€Vá·	æiAô‚jŠµqRHµ«g(½´Éo¯KþQ‚\rËVA‰Ø[1HÚ”Î‹~ÙÝ>˜`ûy5É´Â~Ñ8»5î	àHª©K;#’U‘ov{´‹,[ÔPo¡w[¡Õ­™á_¤æÊ8ÑŠ¸! QÅV@€H¥ñ#òð­®þ	SžVô!ÇQ-j¦Øg³D+js1\n’~†ææÿtTäv¦ˆMiånH¢Þ3¸°eI²tšóü*·jöÊ¤aœ~¤ÿûEoòêaãþÍR@Hž’ÿðG©\'6\ZÐ*ÃÌ¯Ç‚Má= ÝË)Ë¸c^KUÑ¿ÇÞ,H\'%š­q5Û8I’e˜óþÃÜ´SÜŽ\"hS{öçœüÐ/L’[€H½Ä‰zú0”ð6iÓ\nÕÈ3‘@Ú*à“¬ŠÜ{’`$¶dù€pûCþ‡F£86€H›EÏmm’JŽÄ˜ç8Éjù^!â¡†[¬®íüå‚œ~[§Ì×Ò\'Äô„Õ`ø ií€H­™ÇjžðFì‘&fÂBñç•#‡q6£Aöc¢{Óö_Õ¶ÐÇþšÚ|*ÞB?\n¼H³Út¥K¤ê‡%Èw%%¥}R»À“^²^úa§P 6‹¥±m©;kåQ ò·ŠèŸ H´ÆfÜ…x_rËÜ¢ûö‚€O\0=Vˆæ?R‡&›CÑEFÉ²teûÜ—hH±¹°5ÉJŽ®Ü6A?RPKß¹Q€~§·TÏúnîL\Zu\Z•¨}À0H®cÒ O4Ûaö~ˆZô\'½™óaÑ¹–#pS|W8!À½ñOLH¬Ü.¢Òý™EQz|W8½\'äcpÇf|X‘rÕ;‘×î?H¬ÌË”Æiçˆlô\ZhÙÖ¦{%J³µŸ¼ôj²Z°¤àäÉ¢7pH©\nÑÑ:3 úGË×«BÖ‚åSuMïae:g‡ß®u|Œ3ƒµÔ:¤ùiÎÐ-˜¨H¤°dü\"+þ+-bL|5EvoZ<*ÂyÑ§”Í«òÖc,M§i‰É\'ÚÝµø H¡jy@ì4e¾FO,ÞS}WxEd/øñ9º§ÔÄç§‡\rÒhxR\r·þØM%Ê·i“HŸ‡Ò} &8Gˆ¥Nphûa½QI7eXd˜òp¼É2³àà	ž¡ðg‘PHW~•\"´ÞN¿5ÊÅs`‹IÝ‹\"~å•¦ñ§\n:ôÇžÊnlw\0\0øÜu5÷ñÈ£a=Hœøƒ³×;vïòý;BÇú,Ìb	£4ùÃž\"©ZÆø¼DA±.Øþµf—%I&”ÔHœp¢	Cº\'k¦þþ=ècüãxë:!å’Ý`OæhþVû¶ûY›(i›¬¨R@éH½É£¯Q¤õÍ&¬wóE)(0jAi\\d²‹aø¹fd¨N¬ùT¦1ŠJˆ¦KÔÀH¾@žœygM¥Á4ŒÏ)Ì†é¹ÚÃÝH•»ÍYáàk[ðØùêzQ™Œ;\nÀC­™\Z­÷ðÿ¾ˆH½âd²æ¸‚íÔ:Þô»3½üÅIàÊñÓµ›¼X˜ª¹ï$(s@#¨H2¥;€!Fšo•ß«¤áB?®[šÑíÌ÷6ìÛ&‹T¬J`H-DD|¿·ÅpsÅÐÑqÝ³€ÏB	\'\ZƒèWH°pH€Ô ¢¨ãÎ$ˆrnˆN”nÔû1A`²°µq‘‰Ÿ8co‚–Lé ƒÅÀH¶”e{›,ÈŠèñ¿h\\´ß´tZúÐ31†~[y`1ÃÆÔÐˆøu£˜o>ÀH‚ÞÂjÝù¼îTÈbd€YßK¦0EDªGÆ§…=©ã£ùl»J,„(O†*áõ@:H´ÌýËÞ¨\0xk\nÙ2Šj^‡’È“¸î·ôS¨‰ùò½Q¤k8ßÈðŽ¾P˜#Ýó@H³Â³mÓŸJ-â—€ç]]ˆ\Zê-;‚)bíVæðÈ•dqá)<ÐjÐH³­¢<œücùÞ)UDíŽÅÓáŠQïŠ#Ù¥d³f¯´¾k?éñ»ÐH³ÉÈôñÓ~DcrHa$ ;\'_KPÞ&\"àGÃÖã&\\H³<¼Î1ôlþ[{ÆÕ×’q¤sj¥Õ•½`>–¾h²G(©±H²t³¿ÒN[–sK6íÀ0\0¨Xv€Ï2àÛ²¯m+\\ë™9c	xH±í8·	åeôúOJuS)ÜÌa=“n©sœžµzŒ•qBKó/“HH±äÆ1úŠ‰~Õ!o¹rL’•e\\;kùR8n_2ø@´¨Øo¨øH°ßáß§3.1\Z,Å>=üë0§G™8_[È .ðJà”{“ç\rÆÑ\rWtX¾f(&.{t38H±\\«ðjD¸‚O¸$ÅöÑL>^šà–ZÅ¥á ˆ FäŸñG™3_\\ê…AcºH§·†¡X[®‹}hre5Íà\'h¼ñ-H÷/µ/Â’¾YujùÈD2¸¾Zátî€HŽtãÚXÑžµs—Úùô¤¿Óˆ‚ 4…ÿ«h	€´aÝú5®J¼-@Hdg›wMùŸÌIäµ²·2Ék=ˆ=‘‘î˜1-êÊ`ûs“ŽLí‹ÀHŒTÁÇÌžŸ´\0Ý½A^™À:¸`a¾ub:ecûf\\í\\ÇºøH‹ÉXÌ¥4Rm f¹_Òßµ$¦ŒD´©ÉäY¿ÌM°«Þë¤Hm ¦Ó£3H‹iMa`g¹½ßÏò7¹Øž\']Ê©BB–³•²ÁÃ{Õ•ŠpH6›P0fØÂLÉ= ¡Ú¡ˆ5Ø¾Þèð`v°Àb3v]Gs€k˜§9×øH‹ÿða3ÿ:<ÁZ$î¦ÕÔhƒÒ¥5*ˆ$¿‰ñŸì	Mm‘éEF­yÄtç\\[Þ¼U4ÅÂ€HƒwŽKK•nÐ`–ËhR`£ž—’TèËtöÝ8}Ü,žu8òUæÉ˜iãH°<H*uÀ­ëë:—ÑÕVâñêóÓŸ\'…\"·h’ ´ñX÷õ<ØÓxCu<H®©ç²ÒÒÛw	á9‘_C€ò\0Rö~sŠd°ìÿF¸am÷‹ýO¡^têSNHÚGüÛH®Åål)=+”ëg€yj=½MÜ±¹;¡®vNUÎà?Ü­Å”*Þž1mQusDw‚H±ýjKQõÀ¥#è,¦\0‰kç~“Mò+]F\r÷NfäááÜ£i-ºÔ‹µé®…xH±Ø××‘)MË[bR©4BºýqÔ\"FÛ?x–‚w@Ñ>ýŒQ°“–w+¾aG»¼èRH«5uì|¦YŸç#ó[x9ët_\Zd9ã ÙêÂhŒ(Üà£o´ó×hzâá2³9µ¥\ri€H¾Í\'RÚYÏèˆQW?ä¬eþï\ZÍ:_Ä¼ç º{n0Ÿ¨Lún¡‹B(3y*—Vtu3Pª Hƒ[‡I9/(„—G}<@¨v@¥:HEeõ\Zß$TKÃjÀ²·“ã``8¦¾^”ÎH_íù@Ô £äíb‘©ùå0ÄX«¯j˜€‚­V?Úh^pÉÔÊk™¹£„©\ZÉ|J@HÕv¢m.Y½™v&]@í*—Ä¼ƒñÅÃ„$@è·5ïjä<û¥y}@™Øy.S3€H_ÝŸJ]5®˜QUv}nxÄ\Z”° |¥•€\'Fà‚Kçãˆ…HÙXH²µØ\\›8]ÝªÜšýÝ&5Q†Ñ rœ`1Á™Sãn••ÄdLÝì_Ý\0¿nOùÿúhHµ\rJàc(¦ôàù‰©EY<lúq\nÐåò>^à‘Z”8}sM§Œ<HµL(Ãö3ïs¥\0$ˆÌŒkHn‡ÕIý_èßâO·æHµ$£¨G\rrÚrYŸ¨s¥ëÑ™©¢Ž>·žNíñõš³º[ì^lù¯lOWàHµïœŠâ×ŒªSÜN>5ŠVxg·Ð=‚üLÑ;wé{¨Ô{+kk\"|k6 tH¶xÂÉz1 ¡ÂÝÛ3!Im¿­ÖEØdá¾õùô	—$#fõîhUãpH¶\0ÜÛ²ö×’¡¯*_”JsôÏ\0\"E_`µ2¶G“éˆGj-á—¾ü^h3%[9Ø\\HµØFÜ*ìjÝÊË=€P®cŠ¨KçwHò*Ü×…\nTIbÑ«-®y¥2Õô—¦pø½€H³(D´vî!@		\ZjýdiíÄ~¿däþ<¢MAáa`ñ~´{êÍïŒÑ@ùJìò)——øÊ0H±¿¹ð˜XÃðç}1ÑÓÍØ†\Z¸‹}ÉË&ç’å\\8œñÌôuz‹Ou;h jÔ\\È«&ÄH±ôÏÙä—õµˆua¤±»Î·Ilo&A­Í•GmvŸ&œ0îÝè&ßI$º¬?’b¹,@H±¿Ò	‹IgÉ§÷8àÑ×‰tø:\"r2Œc&ð ½ßÈéÊ‰þ*Ü ¡Á¨ò±÷]™¹pH°”–XÄ£§fâ\Z»oúó+‘3ý>ý2òˆñoæHñLL‹Wª~Ò5ÂÙùÂÛàhEÆdÏH² à[¢qm]u)yüsÃÜlÌa*’Q~Ÿ@P÷Ö—mMoŸ´#çê-jë5ÁUhý@H±¹7áySb\ro ’‹’6ô¸Þã6«¤ùÏÁR;±)AîTÕÂñQŽ!aÜ„>H®é0á1=ëz}tŒ•IQi¤L½ôJ˜{‹ýG!ï7¨úåÁþG¦zwH«PfEšß]ìdkÎÆ—d­âúVfˆ£EÑüÞÿÔTj]+óemã³hH¨÷“Ueóyöœ¼f	ú‘ložÁ?+]LªyuÄhKK†d*~L€€;m€H¦¶(¥á¨pÓÇ¹¡Èu;ñá^Ä6¸»)¶ŠcõUÆH2_ ˜1î¨–PëÁ¦dOggS\0\0è\"\0\0\0\0\0\0\0\0\0\0\0\0Ð\"T/1,,(.+(64244/\")(#( )%\'H£™¾¯® ¯~F–T¾q`D3	‹ðê3QÝ¦ç#“¹ß}«÷ŒŽw]nÆ]ÔH ¾Æ‡_ì2ø†¦ÀÐi³‰A|ß³Ýì|Záãÿ}YyÓ˜£²’±®ÈûùfbR€Hj`ý	&ÁÏæ\rºŸG¸#BØË|nnÙ¡xlÐJG™§ä]ødõ°HL7HùPŠ)âbPÚSö™»KúSaæÒÕ«Ÿ{æ#ÿ³µXý¤Ùëˆ*%¸ÀH‰þŠ2ˆÖŽ:©íéuD›[ÃÊ.2\0ÊŒšZûê>°d\ríH›£4ú8y¸b“¸c¢ÂBóÐÎqkGLbÀÞ¦ÃåI?÷]AÛ£˜Þ@HÕòrtØœî\0f;1o±ŽÁ:Óþ¡dØÈœ­ïzOóŠdc¿® H8jbŽaÆƒ šþ†M3sAž¢TïcŸžæcGpçš‹6TÈx.H¤Dx;Í•-o6¶›²¼JJz»[æ™˜rð©hÂydŸu7ÈXªÖmV öÙ\\éA H«Pœ1ÊîÏ\Z]o Jˆ~]BjÎ9”c„„ÔTÿO°•i¦Ü³D+ŸSJ˜Â±ßÀH« D2Ú¯&oC™‰S·bÏ V H¯¯’Ä‘Ínê“‚&“Ì Ât¶Ç?}>.ˆ´N¾H¨ý\ZŽÁPE˜¥{²’@²!‚•Š¿ù?j>\Z›ÝÜ€Ì÷¼ÒÕI&ÛâüTPå0H¤ú¿~ßýN®œW¥694”üÆ±ë†\'¿1î *öÓî¡<œZ0‘‰°\\\0Ê‰´¼¨`™Hc]c>˜Êóó\n (9®Ú©£pàS6ÜXq”FG	GÈ•ø¾T\0(ýÝH78z™gûjE¥æcô–ßú>X8­ç¯B™—TD¬¦ÔH6*IŒ¶ªÓEl0·ß¾–H×öîv!1?ƒŒÆP¹ŒÑ¨_Ü‡¸éœH3\'ŒFKt%hËñªÌ2»p¯8KWÌVLùšÙhldš{\0!ï£9ÐH2‡„¶ÔŠªÎZ,7ø—Ý¹uá|`SÎÊo<ýïpÝ³iÞtàHyœ¬„†ÝëMVÁ–oöj[éáGöJÂÑv—ÝB‡[Þ?†Æäé\rÀH1?8Å‰Vp“–ñjUø¯3\n®¬`=nô@Hh|b±âÅ”«\r6‚s/´ð·)9G —$%BöÀàH.ú*\"ç†²ä®TšÕñè’t†îùÇ‚°Û\\%­}†þ*÷“1T€H1Pö’Ê²‘ya£$ïiõwªl§2õ#4ëP00H/h.plÿ\néœÉÐ†y:q†Dqà*ø4›Çw—eÈ´÷SzÜní¼','kai api ka ajai rupa.opus'),
(36,'Mi carne esta cruda. Â¿me puede traer otro, por favor?','Â¿Nukapa aicha kachawa ,dius manda apamuai ikuti sug?','2022-12-0514547962614carne cruda.webp',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0({\0\0\0\0\0\0\0\0\0\0\0\0óÝpe0-\'+.-2&*(\'\"#$\"&$# !\'%\')*()\'\"%$))\'##\'$%(()&$+&,%%%&%+$($&*#&\"!##+%&+*>89/1524.4;4.%611.*043*&,%\"%HäÁ6ìÅ€HóºN…Û²ra‡˜ ùbòa~6ãÿ¦ØH†¼Î$k_ÚÙ?oêóLÕ´`YÓæm¦ wA4 uÍ3¢~Û¸„Ã^HGZ·$§F‹½0H‰,%E÷MVäž7Hïwå|z‹¶OFc8\\Q”paŸ¿Ä‚$P¯óž0ÜŒH‰$îì±¾£76p‘ŠØ“n(wÔx¾ÆYðþcžYŸqÒ¦ðU§1Hˆlãì•1?sØÀ	º/ÒÝXq¨Þµž;lWžXÉ’qà†a€:J|\nH‰&tJ½ï‰#êàïQe~²~ßhëeîÁSÒ4_^RØÿèqý% ”kpH‰B·×\"ªÿÿ·£\'½@J—Kþqù;·rÕ^ÿJ÷¿›Ik!*™™‡„&ÃÞ€H‰¹²n\'¢·àz;ò^tî•n¶ÊˆÏ/û?)h–‡·Ú½âš÷ðÿbÍ¿hhnWö³xH6ºX\0ƒýmò³ÛmYÛ™˜«ŸpHó€Fbº<ú¦ƒÖÛoªªâH7=ádÝ~üÃVPE¬xÍÅ³OD‚©gF|uíú°»Ïäše1Ö½•€H7X= ¨L,Òæìÿð“Lª”„ÁáÊìñî)‘ì~D¨×H7Ó‰+í#ÎƒYg¯Øy3l>O­V!Ü„òq‰L¯¡¡¨õ7YÀH0­´kI¸æáZ”tî´®([\\ø>Ã?^Ox£ÏÎÐnt|H/,ç¢âª)‹æIôø)#\rH:qTô¿§²|vd;|€H-Hc5IL[r¶‘üRKÏãk=Š3×ò/¨9¥\n8H-Aÿ3¤p³\ZÒñex×i¾ ¹ŽEÕ{¸÷ðá…Æ½lH+lÂ;1½Š²Ú½ù5\r®ÕC@U–ÙÒ™ŠWÚ .lgî H+—…,½6Ü„Y”Ú÷Î	Ùm”ËK\ZF’òÞˆ2ík§Aéãó$H+Ëz1d	\rìÑkÉlØ óÓÔ·»„ŠÐ>˜‚•ýbä’C)•àH-t#5—iAöŒá‹ö¯¨E\rqòÍ¼JáyÊQ¦H-vxH9‰3àDO”Bï…Í*w‘“[—ŠÒœšÍ:H-Už¡ZŠ†ÎÜ‹©Jcwç¾•gßDµiŸèÑðã½˜H0Ú¯‚O+ðç;Ýjp0G™b‡ÌþlöŒÑJç*º¬aæ\\Ã{H+8	¨¹þx¤˜¼©2øÊ|7	‚åZÔßÕêá¡$¬H)­ú[#ºH!XRcˆž§]ÿW„£ƒ>¬°w»Šüd[]¼ \\H)ƒÓË¦jñ©õš1ò¨œ1«èÔC½;þ^é›{hJÒ\'í`|€H)¤î-©5/Ó±¶Ü•lA;uƒýN¶¬«Ÿ\'û\0qJq¾»%D@H)­Bü¾\\’Ýå:<\0æQ¸úmˆ:0\'¼Ò6?4uüÊÕ—ƒ	wH+ËŸ-Ø_¶¸’6):o„º¢4Ù°R\r	KáRÐó-îH-²¼âô€ûàU9z²:F’Ñ¾y~ûPfW^ØÊÚUBêßðH-~ìç¤ÿ½píN.@?FÀTŸºG7ÔIÆšV)óR¯¶àH-²ô`ŒqãOÖeµ¯‡,3µ	J¯ÔUçN½²…ìÙàH-uLïfQ^ˆ®Æ³Ãð,4œ—ihE–ZP¡”N1dîQ°H-´:0úÁˆIxš´Ú¨<ìn™Ð1+Â…·˜68¬uè—·ãdH/{X÷ëe¾­ÇÖå´r³Ç‚ìÎ…I{œ‰á†ÔbO·†ùõ‹ÔH1ao“¶$¢q@\"9)\"tiœ2ý\rídíg` æ÷y½zúH1P’Õ¤0løÑ|þ¯W·\'}Úè­¡èÐŒ¤ÐŸî+ðÆHå¦8×^LÚÚÆ(3½F½	È9ûV»ÞYn?„ÈHÆÂZ^/ñîž´ðîVëô‹MH-Ïz\'Ó¹ÂaÅ)`ãþÃÀSðHjú¤ƒ(<¶Š”ÏâME”°âlfV\0n‡UL{.ð]€H4ï¡»þ»o=†#Äë«0a€ÆÏm7ág\ZÙ`y(sQcÿ.CÒàH3d‚Z×ÖK›>“v–Æ•™Y~¶äRŠúÿ\\T!Èåñ1ú)Òº)H2Œ¤Ì&r}HL-5|UÜ[6×¨C®8Fk9þÂEå¸J¶•î´ `H1\'9²€”Æ‡¿ˆº#SÔ‡ñËº·Þ	”ù‡‡CM·C5çôuöH1\'#¤bk¿á ¹?MÉÇ·}û\0ãBt·ëR]>Öí…·ÀH1G½Öáè$‚°€ ðØÅ3S…ÞCú<ˆ÷v³úÝsçÕŒH1Q_CûGPóÈQ©õ®êµ˜ÚõQ8·ÕT\rI“™PŽ-ÚÐNùwø» H1\'\r‡‡\0šõÓ÷ÞÖ{<CT#i(Ñˆ?Ö±©¸\\HÅ÷ä¾ôdFÛsoŸ…–ä-wá†aììŽæ$q{·ítØçêéW‹	rØHH/7ÂQ²W“Ø&ëu°1û+BŽ&UáA‹–Æ²Å@	i®¢n<sÄH-V 	í5Tr0ß\\nŠùBEðœµ\n mNÖÕŠ@ûöh7QñŒ H-Bø6Æ\r²-·^Qé’è<Å¾‚ÔOÜ6·úT|dê÷´@H+m`±¦:ÈóË–Â‡Õr‹“H÷¤Œ1”#nJµYª¡ûUµv€H+Ò$†»ÛA†ª¼›ø5+@ð´÷·Ò.´	zƒ{z‚7â{ÕKàH+¨f!_,t	ij<\r{†Ì¯Ñï¦s7IvûÝ´x*ädÙÍ’&ªÒ:Â8ðHh—Â=>lò± 0ÕÖù¯¸Ë8ÕMÅÏa3·ÿ±s6S8PH-®\0méÞEá7ü.ŒE§^J„ˆß»$$±5øBçÏqo)4H+–¸PUü¥ßºžü>A¨þš®¥±«t9Eñ¡KˆöTi0H+lÂR;ÈqB0ÃA½5M `ãÆqF†Fñ\0³ä½“?O@H+_oIlrÿê17ó”ž®óÏUå§?í$Ë°ž6¢n[0\Z\0$\\\Zw Z€H+lÂI@QR2\">Ÿ·šÊï Ì¦¡R²)êˆ	›BèVlÛàH4G§öÎÂçÊ÷-?¿±üpYûŸ ]¦î¥ «ÒôéÓâg1LH.š•t|žÕß2Ù:§Ò8ƒ²[wXå{þqã H)—$û[È>“æ„žê”ŒÚ\\wV0·¾˜`H)ƒôcªqò p;\0å€£k.—Z÷3ã›^6‘x·nWTøH\'Å@Æ2ƒðž˜0Æ5¹Uã2ïGñ:\Zš7´•\rf6;H\'ú\r#Hƒ¿fZø~¤€Ð€ÝøVßó^V5-	ñd5‘¨Ô®Kæ€±H)v¦É^:8D¦0„#ð)+gÈ0„Gá·U§\\•¹]ð\\ŸWH)OKb*:AÈ€›ë÷Oª#4ËïŒØa“âoÕšà ¬Èîø*`H\'Ñ¦·\"Do@\"Öe³Íª÷hùSÙ¦xQÉ¤‘;w+zß!h°ÂõòGðH*A¿¾#çmFÞ„Îi¡^$	¸ñÝs±Á¬Ä	c‰€±Î†,ã !ÙeGóHÙ¬É¹ÜÕ¢…Y˜iG— 5lÊIP4´oøë¦ïD£\\³ÿXv5¡õœm.Ã¹™‚G@È.`~ï×tH¤š^#¶r¾´ÝÄ•éÐpŒË²Ö~zTÙÅ¡ˆ&TWGb Æ}Þ)ï@úñ»”Ôˆ³R+c¹:èH§Ü-©ä\Z¸×\n½ll\"´VFDIJÇ÷ˆ–‘1±|_Ô)ž)ðn¨TàÇµ\'5ü\"ò)]ˆ-YH§°²6î^uôy·KaFˆûpŠm’±+f\nX¨íEº¦ã)Zò©ŠîTž±¤=—^`H¦W¦}nÈ$¼nJ†_T1/8,Î»LÅßuhÙ-Š\0úRœöË#ÜÈ\r‘ãïF9? H¤˜¡¬lãàš»¶‚Åk^í„ÝµG6HÚŽ	Ùc=IÖ*8žØˆÕ\'Q1à„bž(Hžy&üOÝè™¥ÜÎ«ÍßÀI1·\ZìûÛõ\r¿¥+ïk\"øZ#wGi¥çŸ.êËƒ$ãHœnðèz¼á“²Š¤Œãp7–:cÐ2‡ÐO r£š)Ú2¡µ…¥sð~ª‚žoŽHœ¼ái1]{»èÛã}I’ª…_ÚÇ,¤÷´ =\0ÆP‹§¯\'Â„ Kï‡’ù(H›¾=Ê8ì\n..Sñ„0qg	€-œŽ\'£¬*ê;ô_* e–‡ž³ðf§®€Hµ¢bó¾\Z»y|H¼æA`Š&§·UMFZr!x³;rÐ÷ºa}~¿Y7ÅM¶¹Û$•ã§›ìòH¸¥>{”§~F?0>Ò‰T^PœÀoÅø²]?¢oMÀwæ{\"R™ºR[Í²2ÏkH¸¥M^ý7­û«d‹Q¨#!¯Ì{{æVsötÐƒ½}÷úïš% ž¥‰½0H¸j8\r´ËånMùûÈë…â1Pú{#µŸ…¶ )Ï´Ð»£0ÒH¶¼ýßš„™²!ÑÜVmº£á×G¾#øõ³‘PH´´ˆ4:`tžŽÖ$e9eâ…\"\nr<M¸&ýÝ)L3÷/¦1=zPY—ØÖ+xÜlB2Öb‘(H¥òk	¯ÑT”	Wý&Á—pÕœSˆq˜\"í\nêÕL>K75\0Dˆ!NqÔËëppÿõH¢L¼¬ñÞ_°i72|ÌÐG`2q‚é[o[¦cWeµ‘bsâ§GèÚ‡Ž HŸ¼=}‹V+˜á—Ù)Â\nç…Ë’¦pÌÝZ“€<l£}m*ç”G“M€Hœý¥ÿŠ‚1Nf{*¤ãÇæfµ>|ðæ&?šµ8ÿÛ£ì\0‡Õ_ÔH›—ô#7b4]~°rM0*‘fâ9®®~= 5ïª}±±ŸpØ(îMñ{€H¦ñVbA¾ÝHÃ‘Øê;ÊvIÌZI+¨“xôŒ•X+›‹ý»´wxmò¿ñßC7ó;Å¶¶Hµ*–P?å›SåjHØB<­Fm&†#èïÍ”¥¹x&yÎý\n°G4€»õÝÝ>Å®ª\'H¶îe__qPHó”€$â­Ózz:,]]cºä/œ<Ø7¼i¯HÍ:wÜ%€HµØ=gú.Å#™ÚE¼ë#TÐ®g×¡O¾m£°—ÐÐf2Ó‚Hµö¿°f=øoF«ƒsËÆšCÄÁÏ/ œX‰M7×Ú¶8‰Ó™¼Êc%HµD›!(“:Ø»¼Ý¼*˜ê\0}0èñÿnzœ”äúú˜cHµíþ\"·Öž0kÝ7f%¡–Ä\\oÂŠ8ÀÎg³ÝW”Hµæ‚œ B‰kOåûÂ €§WSÏ“3ùu¡[†;B)ÃŽOggS\0\0è×\0\0\0\0\0\0\0\0\0\0\0\0w¢¯]42629:4201/91162&-532,\'8012)4463/15*,3*$(&3547=:<8:14,3,#!&&$##&$%&$#%#%\"#\"\"!$(\"&$$(%$. \'Hµ<aÌÎ•6iu?+ê`ñ·™GÃ¹+Ê5„ß‘wàú_÷?¶W­C5ÐøÚÍÍ½t“žÐH¶ôòÏÅ?‚dørtüç‚-x$áAŸ™6\rÛÂÀÌ¡Ž]ßw·&ÏpJ´c“\nê>6H·Íñ&Å$9)áÞßÙsµ©‹?ôÖ•RŠ—Y£÷ªß!€¢·£‚%:½ÞïB’º\".H¸¥Dƒ‰—qvæ³‘2:-¨3Ã™	æûÎú,·ö½ÁWXpˆ``œï¤qÄ0€H¸°•ðb€FüUÄ$1-œõ¶_ú1½Ò¶`0tÜÙÃ4;k™Þ¤¥†êUÝ£ÿ#ÚBÉ3Q5oêH¸‰\\óòš¡¶*žŸ\0{®i³\\íŒ\'Ãr$Ø*ob‡À»üB*Eƒ&é0P@¨þz%·‰/WAéŽH·¹‰ˆëœç›ÞÞëÍYWøûÂ6Z„k­/1°ŠãsÖâ L[Oþž\'„,P†€$%S£l„H¶“óxùÎi\'$ž$€\0JnjÊ%fNGôIyé6šêÌ¦†jÃ¶û\nT(ýt€H®`H‡òT*I[ì{ÕÑd}‚ž9©-]î¢õÎza4áËƒOu·ªí<8Ø(™ H¦.X¤ƒ<!kì¾6ø5£èÇ­§SIìF1#V+{*_Qã<*ù,ü>NÚ»Žz€H£bvÿÍG<»Jÿ$á—ÁcÑx¨\'ËPþ–:¯L™ØO(LÝúR7¾Öö\rÀH¾ ­c­“É.Cë6“+	ç4Ý¯Z¢ÉùsäŠ×pC¹Šgÿ?b‰‰Ö_pÃ‰ÀxìLÚ¢×ÆH”ŸÝI\Z³ÜñÀŒD÷iD\"ŸXwî4píàŒÐ=VQ•ÿŠ¯ð2ÖkÝmØÆfH•<×P6c­’p˜0ß¢:ÜJú?»Áþå7~½È†³ñ²\\Û½›6ÈðêƒY’!í·FëlH„QÐèG@ó,cgèá£Ñ8{¥wä”J)Ÿ‹¯Gaét>›^Wd© ZÄµrˆ|ÆdÆ<Òµ8H·Æ\\Ÿ¤qsþ†nØûJšzìšà e/Pº_üŽ~À”H‹Æ5Yr“+&uÂX5H·†ýå5lFI¿UX»æ¡HÀýÄTdÎZÏó‹¨º\n¢Æê$Ü¡ÐHµÒ!¢GÝf³‹=Oxcu]È—4]ØÂçtHAB«IËü3ý}=]V¸H³ÆØ\'<¶ÚÓI€¦š¸Ï\r\nª$Zy)Z*8¸sêvÂÛôòNùÁHòÇÿwìJEðíðH§AM/×°Â!*ˆel:L„Ÿ™Î‹ðïof–¨Š³rK7þ‡š;(!­ï¾b3Ó8º¶géèH£`ØôÐØ\Z<²MI)‰×zL¾È–É$¶Ü½R|þê7Žðd_.°þ HžsEqÒãKèù~nÇ¥	È|€’CÅÒSHþ\0¶óuæu÷¼ÇäËÈÿ4HœkéÁpUR^Ü•AÉÜŽ:®*·›ÎàNƒ5Ë`D£ÚüÛŒs²çH½¹ëÖ+Ã†ó}îôÿËn\n²*œHÁ‡F^­Å†Q¦ÐåeøßfQÁ(òóüž5ËÒÏf:=)H®6cã”	Å|hò¿¶e€©G+§WJs‰WŽ%¹¢œ“	-ˆj\rK¶BY^@H·Õ\ZösŒüºtEAŽå@„p}Ô,[õˆÝÛ6³6«TøtÚ¬Y^y›…¥@˜H·…½cáˆO¾FÙÝ\ZÓ%~Êð1Z}$Ê\".=µè%D—^ñ~õzµ„j1;l8H¶ß£|Æ«‘’”Q×v%k_s›µ+ÛAÛª½Š¥$o¾(ËÖ××éeH¶’jª@|;Ð²*(È^¹Å«bg9@Ãì³ÿ\0›ªÕÌÒ¦ô&¿[Õ1÷ºH(H¨æhÝÉEH¤ûËThÇº¬3^xs/†‚õ¤\"ïÂÔ^>Ð:u¬ÎÊ$h÷€R¦Ð^H¤¨…wìÍ.cÍ>¿P_×¶¨ÊíÝV¶×—%l¦yÜ²Ùºãr_Âc,¬³ºrþÞ	—8H¾c§Ð,Ó_¥ÇÎ)¯@†QmY:×B«LyÇë¦%Æ¢¨´äo\r¢ô3ùjá6¨H÷L¦\"¼ãC:5b¯øƒcÓ\'(Ø_½SƒÖætk(²%5&–e8?=%·>°KHƒmÀe¨týâ-Ä\'ÃÖü…„ÔQV•›2=,S&y{CW>+;·x¾©í{…²€H„¾[+²¹v:©®.}/qßJ‹ì¤$S]ó íIÍëWœ”(n{¬Ö:¸0Å”hÀH•¬TYd-ä¡¹¿\no–áLK”ø²+à-OF³&çYQ6Ú¼Ø+.I8H„‰DÙº­ÓÔÞÁú¨«ÝÕÊˆø/2¾I`!bŒ æTï¹æ´ÐœÚ@H·	•íà[#6µÃ‹Y…ª‰/ø#Vl˜è\'8Bn––P€è;¬Iâý¸¸M<Ó¶þÀ H·Ò\Z¤(ó\nWøé¤Hæ8Ä¯¶\0Ý€Uù(¬°‹‰Ù6ï>~‡¤0 H¶ì{Êê¹8ŒH	¤;ç/|¸ÜßOÝYXi:Íßá™Q|H¶™õŽ}È›ÐpÕ¢È65hÆ=’¹X€ë\"ÀHµíioÝ\'Ï+-Ênÿ>KÕì†)Ý²Þ£Wk¤ï)HµÖ`·f¾9®*)xç¸`‡‘¥Òöý}zéìs€_Þ\nSJ	@™ÍF×H´ÆÝ‡óÀ÷?Á¿¸8õÈýyFâÃrV›­—Ng 5Ô_‹´H±¸õ©e„|—Þ*N^³ÌåŸ=<!ÈBoa.†Q/‘QÛøÌ.J+¾X°ð®¬f+¡kHª©‹Ä»d`½ŸÁk$3Š`ß\"gi]žð™«°æmSÆi<žUÌBÐÝCöH4£¼#C»ÔJckH¥òPùT\";|€œf–Y+‹VÐ¸üÖsÎ)£¶Ê5¨×~UFä šo»é~#$ìD¾FKÀH¢nÓÍ.éRÍ.€<…sŒ‰ûm¶W‰Ò°–Xía59T2áìÞƒË¡dzäsªPšÁã©D€H¡ª0,ð9.Sì\nÕü‚Øå~ïÙÜ^Ý—\0’‚\'Íå3Bþ\Z÷Çð&,he:ÌñŽÃ(õWÑíðH¤Å4âf>uå;b(Åògß$1\0±ÍT^äRÚž‚YB–	<è;UÝL*`€g{qHZr˜âáH¦w‚LÏ¦K½¿ÃdÔA–C9˜È•œùÞ:!¿ÁeœTàÐÞ·1d¢he²ÏN,á¹KÔ?\0ïÅ\ZÙÚH©ËõæUÊ7ˆ~9–ÑaeÄr—M@$\ZüV™½Õ+€ôÁUzSc¤Ð\n !È÷y	Wi¬FnÚ0H«‘5¨ÖA¹±˜)-€F(py$M˜²Ríñÿ¦z`;`FNÒþÌco¨—JBÚ\"Åb;Ëf£Í`H¬Ë£–4ü˜4þDvI,\r‡‚œcò)H~h,:Á~MË¡ÌZ”ëØz&iÉq\r×6ñ€H©3=Œ–\0C<Ø\"|V-¶åÅ*iÞýÛh*rÑIªÞ.¿ñäÇàeE á_MP1€¦ë5¤ÿÕH¤°MÚ•ëÝÁó•¾+pF”sî±ÿ7uNZë{~¤ý‘¦ÿ—@Š=‡]ûR€H ÐÍ˜3´hä\\ü[®(,.}?oÄ-¹Ï‹n4CZ”ÖÏÃ°\rUdÁN>j)maÐòÀH½ÐÕÀYÚšpVËL¤ò‚¯ôuþ\r¼½~–•ceG^H5žRj1þìH\r3èžª—î î&V¦¤‹œË°‰ðr¥îCOìrT”2åpH2”)tF,FÖA½ÚëÓÍØ„oDØÄ¥:u¶ûàn€H1GÖûú°} ?É	¿-}E|†Â„³èâ.™vä±ÚræàH1ŠÒýÜ,q¹V}¯–PÿL`ÞÍê=ýi&;•§P†ûw«9kê³0H3/Ù@“-ù	®~«±g³i\'XŠÖáú#‘lŸQèº¿¬h¦H3KA—òš\rxaÃã3šYñ­ý|w‡Ð¥È’1MÂKyg¢ØH>–ý!89%^\ZÑ]’ j÷u²ˆÚš¹p°•(¤ÅÄ¥ ÀH39:ù‰^êv€a¯ÀU Ê¨?†:Ø)§&žsã¹†™§<\r0H1Q%ðFsÄ;‹$3&Y)á¢¬¡þë¨k§Ãb´E¥eƒn->@H1¹Àïæä¡ˆ¡}8Ù€‘*Mñ`’mëúù;IBàE½ö—ÀH/,ÜU¯a–\Z%qúºà=ôŠbiò/ëZdH-še‰cûIR³Yá™Î©}GÀ}9ØÊí€t‹$à9.£AçQ@H,ÜI\rÊX?V0+š…dRª)Ô¯åzá %ýkHx€H+ž…nA¢@û]W¿ÝÍr!Lý©¨dí²hÒâH)¥w€2v”ó»b‡sËg—õv^µS:·ù¸Ni7I¯ëHH)£Á¾|ëåéörQèG;*Ñ_;û½Ê°ûÌ¬Ü_¹ VH)O,-Êœy.¡¨¯¯¶Åz+4œ/œÇÕ/˜Ku#S\Zi¨†àH\'»6–ZŠŸ9öb)oÌµ#kýó¡{ºQŸ¥w§ü\Z6H\'Ål™Ê«»ãè\Zˆ©WyÃFÞâ˜pÇ÷ÒfÝÐò¦¶ H\'!ëkó”GkY¬‡Õ|\ZË»ˆ—1™ï®k>g´Wvù<%ÏH%(ãÉaãÎ¤\nÃiYæš4å$ÉGáZ3WÊ	y‹~PH*Æ^Õv ñºÓO§ý{ß-¹w÷!wF@B H!NäµR¨ùûZüÔÐ¹	bšœx,ðƒ Š O˜ŸWHÞôh¾5Á%¨ŽzðƒÈUº95J-Ž¹}‘õ=¸Â¸~qQHQ—[„¡Þ¯†iÛãì=s¯lUdtå)¤} ”Ð_¡d:ˆ£çH!æa›äâç}-G=™=ˆmÛ¡K\rj	u¡ëÁG H\"·-K’pPÛ@.‡\"±&^:!¹çº{>K[9“ùYzI²ÜÀH,²À9ô¸»¿Ý76Þ¤ÓÇN~¶ç®·U+ÿô“ÿô—À¸0H.€¸œ&)VÂa|ËQ.+¢ý»gÃ7f‹”w^h–;‹€HÀê(}Dö3EECÆÁû/ìê;Ó_ï\ZôßÌ•ˆÀÃþå€H%9Á AûU@‘TÊÕ31uY©_ë’%ï†eaäNUQ\'àH%9ÁÞžB‰‹è—€¶Ò¾ÞGÀ@’4€Ž/ÓÚ…4AwàH% 7\"¨¤8IŒ¬à:±G‹¥ÖÇJbwðóåOÆ”+ƒá½[Ó-F H)9ß@\"ã¢ž ¥Jàì9IÙÛ9¢Ø¸éA˜ÄH\'›L`e—CTÃ—¡ç‹ŸÙ±{þŒbÒ[‚¯«H7î/æT@OggS\0\0(-\0\0\0\0\0\0\0\0\0\0\0\0¶‡jÌ[\'*,\'+#%%&\'&(%*\"*%&( !$(%%$&)(7/8425,7=4/324/-1/1501+;:452241820/,1--(*)2/,03/+%+315563/00.H¾Ôs¢j¢Ôÿ^˜ÌÊ¼†?U\'ñlò+c*Ã—x·Ut&ˆÀH\'¼2ñ)ä­ä3¸X÷úº‘K#ÅšÔÎx~ïèýVæÕ:~ÚªgTH)…¢G\nšhò…é+èŠä´®ïïÆI8ua¤|(á\0ÙÉwÌì$whOˆH)~“Ñ Ò¢¿ ¿‘¥‹ˆÙÅhÈõ ô„tŒ=4)>&š¥ÀH£YNy¾zö‰¢µ½º3G„Éó`¢`\0™ö_ò¤PF:ÎJaêñ@H]Ý#Åš\n’£4x”#–“ã	6\\©vÎê<‘éw,_#`H+—àð”¥¶€Û| vâ4fðÎæE¿¥À&·¿oÅl_:¬^ÆH+`xð®(ÃNþû|4µDy~(…·ÁDD!D%ƒs+	–_RøH~giž8Zë,³œ=ýWÞ\\Rš´Ô‰C	/çM¡µö}©%ÕPH0 û´P´6¦®ûÏS­#ÝC¯:ÛðP¸÷ï5NíÊ>%˜º=¦àH-‚³ÅÍòˆ\"d§\0l0;6(#ñÓ¨C»î—Á_ÑˆúEõ/=H+5íA·o<ÌGKä…¿lÑi^	@…êœ61¾|hp,â€H)®E‘óÈÛÛ`\0|]7Ò²„„®„/¬²ÏÝ)5:¼œ€H)”¥‘~¶ÂÁÍ“¸X½‡¬\'(ŒcŸÙöa-L#H·¦Udp¬ßÐH\'Y±Û×’6>ì°öûB’õkAÔÕP²ËºµDm%H%;êã<HHZa MÉß¯¼+Ñ¥u»—g¿ŠA)Ë_£®udþ£»É>6@H$õ|d¼îmCT»q‹8_Xÿ”Å–»Z°Ü¹Úë¯Ûv€H$ô«]œDéM„9[N&M%—Iè„ò6¿D#óeNDOš™C¥PHˆ@Ûá]¤ã¾¨cäÕ\Z0™H\ZžSäk®þ´P27~°h¡Æ‚áHO8Ö±Áã¾àz\ZoiøÙ=”¨òÌ£¬¶ó7\0ø¯°H$)7ºìÍdKTEíaý9\ZÑŸÐª¦£IÊ{ó4¡‹H\"ã¡R910ã5ÿÇ‹9\"U˜¶8Ë…OÞ,G×äçþ+¤H!ÏšP%¶#a\\…v•buÍe¥”ÂçYÿ¬|:dha>¦&˜óW6H\"k˜þ\"ÂåŒ]CB Xa<žTGJøÏC™ôŠ#iªáà|Ê :H$ô™sàçwKÀ=†NÐ|$°¤˜Ñ°ÆrÒIµäèš­üF„H$#ø5½®ÐÐ)ù½EÓY²Æ ÜDC“§•z®&Ì„H!ÐðH/GH\r-¢žW}ã].³Ÿˆ¡³µD	‰X) ¬	 ë:SvH\"´^Úd-½8y?±†hè\\zÁ§7j»sSæÁÚ“exã&jj:€H@køÇ¤j@šÎ¼HJbtÆþi.ád*I{µA®ž|¥–”¯ZPH+l™¥n]¹3N¿Á^‹AF=ëµˆƒ9mq›é\ZÅÈHšcùU†ˆq”~ÛOåÇÜâ¦Z6™ìË¡‹5ÀøGÎË´qÅAs…åxõàH›7:ngÐm×ý\nTÉ¼;oü.\nNõ(…*ƒSåyVâz¤ÓlÁä\0Í¥3½(CÈH¬Ü-ø¦°Æ!xÈ)‡:Ÿ\ZT*!/•{|z´ÒwqŽ”RUHæÂãé˜”öhdàKMøáê˜ŽH« ¾‹ÇŸÁ^à§PŠŠìpÌ>ù0¦Cp@{‰È\0‘yjÜã«ˆíÇ’Þ<{¶€H«=ûaˆ›WÛÆ”º°œË‘·Ú}­nt9ÉÝÖ„}:K¤ðî:;[X“·Î‚ H«ƒNfŽjÒåŽ¾^Zq7œ’6áF+²}äûZAÖ(¾¥»×¤ÖÓæ‘!¢3¨ØH®îkRÀŸ7Ðô±ònÒÛjÇŽ“E¿°µÕ¯î\nA0³N7i4h)î>¢H²!!Öú‚£‚r\Z¼¬“ìFl˜`9¶œõ¢L¯e!£û¦‹aÖç+¹|¤#nm©ˆ¼z’œãxH²—¢4°œê«Ï·ßƒ\ZÜé·09Ð5±OD*à6Ò…ùå£”¹1­ð‰Ïºê~í%^ý ý#9oPH³Rcd¯ÚT´©˜ÛqÏÓÕØ>8¿¬ÆNÞ-Íä!£×Ê4DfV`:DÌÏöˆå|×&ÀHªªITý>mç˜Üb°GóŸ.ŒáÒÏ}±ÊgóHU‡úÕ’áïë9 ö¬pw†H§åƒ¯ –«Õ ;išS	òå>ÂKeä</|l$ÈhÍÜ,KÒ¯µ3ïýœ”ÛH§Ä\"‡ê”ä<Ï¾ þ•ýPØØ~%X1<\Z“W‹ÑŸˆw‹ç€¼/£(/Ê«AÞ¸H¨‰Å\n¾Š½ÁG\n8Îâbû½É\\©ã¤û¨s~\\NV¼çŽ-ß[•,/ä cÆMéìqH²˜É%¤¸áÇáËx”~|¿ú¥¯gÐû |ØêÄ—mDîÆ[6L¶pëdÄHµ7„ÁÁ[$õÏ$I\'€ß5(ÂŒpS™6f×ìÔ¬Æ_9z#å¶D®yH·.òÃõî¥W²\nYM>ÿ6å¶ŸŸPfnUÍÝ˜à¾8“ÔmÎLlˆÛºÇ;©¿Ã H·Öì?dJ¥z†ú^eFEFüÿ¨l\nãì’9Û±ÒÀJ\\´)Ö\n–/þ*àH¸Ÿ«œ‡ñ\"uD-hÿÒ+È=qyy¤ çñÿW\' £ƒ‚’&ßÄò,§éŸJ­àHµ ¯Ù¹ÙÙÓ#8 „’’ŒÆ1€þD\\>FÖ5%Ë?~Ö5šˆRÙ˜Ä«ÚÛŒã#žÒ<@H®ÈœÓtÏA4Ò\rÏò¨FÌJM¾ež~RÂŽ¿Ÿá†¶¥ß«h˜ÎÈ_üH¬i¢×&˜MÆí\'œµúë‘Æ“Õ­«^Ž.³J-ÐlŸœ‡yýpùì¾’’ºÀH¨ùbç7Ú—jë‰’®>ˆá´Œp²òÒ•™@‘d•Ö3ÚíÓã3D‰rp/H¥:ÆèFµ®7â!òÖ©˜Ðˆ2–nÀŠªn^\\ÍÆ×ëN^î×€ì2‡¹«î††ZŽVX%‡è™€H²²pêôú·B²ðÒžÂ6Ö ¤ê™&6†`®×hÍ·\ZÌ#èÏkŽES»ãñr*Ë~#.5HÖDŠH¶ÎFîä1€²ž·•r‚æ–ì‹BkSV—‘6¶ƒBãkû©œáØo¡ÞIå¶øH¶ÝI¡whÊŠ¤¤¢UÒHVhsfPˆŒýïæi1=:®\nt;»”ŒZu™ÓºK_xH´ÐTùAóUH@ã¥æÏ‡n•æ[Ï\Z/òéÉ÷zx)‹éT0`O×:7°H³o½óšâ>IÂKŠ´wä/b~-›»×»6¢çs[¥âc<_&A%gƒdDo‰Õ³¬H¯½’£éRFÀ@é5ŒLÑÿ¶ÊÆ~w/•S5#ÿ>f!íÈî0å£Û\r,\nuÛKSYåKHª	?$ÊWæ»JuñÒ“Ÿï­W`»ðÈÍeèô²Œo¼LÐN›Í¯iƒç¦‰(Ð€hH¨#š©Ä€Š™¶TYô²De(wß\\^S5ŒìÒIÕ+Ýx*LïFƒïõ-I×gö¹›ðëK\rj`H®èFÔKªyÓ2Åý¢æÞ8–BžÎÏ|™sôŽêgàÏù9—m ëèô!ýCþ¯wšÀH°à\n©žðx³\"MˆèY©õ—oÅ$Õt £Ž¾0›s¿)Œ~]£/\rF1AM0H®|ãRR’æ0ÚJpËQéƒ¤’õOÆryŽ¦à¯ˆ1€¼P´¯ŠóÒ–Ê¥šH¬èzÿ¬¬ÄÌ1qãn\"¡Šv‘Vž;87¨g‡—iÞôÆùµPH¨òkü&àÂêÛû´ÑU­ÅÖE„üŒÃ?”å oü¶dŽf;FÅDßÈØo¦cHŸ­]ÒÀE]¨}Ã3?ß*<Æ1Yé¡x1¼£Ïž0XðÊZ÷órQà  Hž2ƒ^Cf|	¨íâ©ÚíåžRvÑ‘kõìTgâ‡Šk…3®þË³x¬7Î‘àHœE³\\Óþ¦;g‡¸|È&˜YâÓC»\rU*©¬ø³÷€j.H›*×U­Rœ¥3´zá€;qîEÒ…y¨á‹2ç1\n•áZŽ{ºr\rm$Ÿ@H›		f¾oí’ÿß\Z—p%8œF{«L#y\"«ÕæVÕ`H¬5x´±ç9Yrl†¶×¾ºšDÖ°ÞêX»–­:N§£§È7un±÷µgÒKaÏŽö…áaÀH§5ÇkÆ:Þ*“÷¬N€ÒQŠƒ‰¹•ƒ¢lNUÒHÊPËýü±Lô!?$f0 H¥ñúï½@¦kÅ9žÁ®²Þ£eVU¬YN[•ßÄæa¹Ç‘Ôw›í˜YH£Î€õ«¹dòrŒRø¸ß„øï’§ÕÝ£\')Ðƒ8Ì§sËpBô²\\@„>šV°H¢”›WJWR·´aR™W½5­$¡–(ÄýpIw	ªf++ÏŒçÒ’7[\\íÍÅéñ™­€H¢VF\Zc¨”œÑ£ˆ@Wb\rc^ÀïB·Ãµ/ÀØW[-Šcx$@H¡F?¡q‡žƒ¾kÙü™t V:1‘píb€#«Ö\rMsi¨ÚYè1\Zà@H¡0¹Ôz˜ŒÙ”¹æ\nX&¡ÿÈ (LåÃåè³[(Ïx¸°H¤J÷e¤´%î(fO:ÛDzè®\n\\«=ö–-®,l¢œo÷2êø}KÑ>H¥O?Ò<ˆ?º[\0ÙèöÔÀ™¿xœÜø\Z¡î“¸F;ÍÀ=mêók’£j{è„×äÙ H¦™‹/ž„†Ûb‡û~\"‰=ÏÈðíX$ß[âü\"LI|##g_~ÉÅ×h±ú@H©ÏBïòA5«›h^íW°güÅîsQø£¥ÔºµÜDTn2Dþ»à\"f“d¦/±ngÝH¯9!ŠL|/±Ç«*ÜÛd%“¥Až(­åòŒž–Lê žž!O p‹žîó!®·th WHµ\'±²ÝfW?ª¸±ù(“\0*\nb^.…>×ØgÄgTbú­(Ö®œ³>Âá¤ÞÞ½LJH·	¼¬¥‰åÃÐ#F%êqäy‘ì¿tÏÖ	S–­‹Cz°èÈ”y³Œ!É€½lÖ½M°H·¿úÃÉ;ÇúïjôA5\Zrr\n÷Û”ñwÝ)b\rdzq…OŽ)_»f;[/\nh`H·›Gàí÷yj­•GI±\\Å²5ö¹lcø¥ûbº\0þº¤0¡“­ÇUóHƒ¨H´Ê8…88#€q¸ø©\"d\ZXàÔrà£±#žºð‰x›N¡Ÿ—ôaY\rñs1+hH²äËà|8ƒÔû†ã.ÉR“i±“âþõ¬ú\n5¼}3hÅ¯Û¡2ÌGÙOggS\0\0(ÿ\0\0\0\0\0\0\0\0\0\0\0\0å·_à83/64012+-+/50),0+1,21045),.5-$.1/+0+:322+-/.++(-\'\"&&%#\"H³Š‡$2«€4ödyUL¡ÀÝË*äÜÚ‚„±·äµ@#A6aŠcoO=`íK–kH®&Ê6ˆUÊîb¡EŒÚjÒàû»0aèÁj>à¯½…sßŽ7Œ´Å§ýH®Á°·a¯2•|ùÕr\"ž¬œ9Ò³¶‚.!:{×v6«dR”µ\rÿ ¤øÿ³B©´tH°^4<móe¦´¥	5Tl\'»Už’VZ*è!«%;¡LU‚yPŸ@ ’Ñ¶@oL=”ïÙ—H®YxŒ5l\\C^¹6Þ‡¦[Ú8F¶BõîøBÑA^’‹ç\Zã8Å½3H¬u‰Š”N¬¥ÛbšÃ„„\Z\'Aï¬føOR%Õ¤m¦í‡5\rv*$`Ç›¹)èHà¢H­î?Þí,[Õ!RäÁ¬ÙIô\"r¬h!M¥Ké?\'š%‰Ã\"ÓÊÝ>ÉJXr•\\ð H ÐY˜>8<Î©žXHŒÛàgØÅRz•ËÐþ7/ †À4®¨\r¶ª•%ÎÌðH½å+Çâv[Bá#}^Ÿ\rÊ…Ý¥ìŽ	’kíS‹ñ¹IîdãÉùÊƒ˜FêB^ŒH½Ä28‰TÁgÏòa‰t÷¢XðkŒH‰[tQí/ØNú¥\Z°!@H¦ØéÃºâ»\" Û€*˜=ÇhdB¹b\"Â–X1?Ót¿VáÉ’al^½©âœ-H ä¢óÉþú!ß,vâ«•<xdÑJ³3NŠuî1!–/k©	¥´°Gwëö\\í¨`}H¤Aò£€nµ„‚²Š€…¾ÆÀw)Ú†n®¨\n”¶e¦Z`iœU!jMò¹>èH¦ynOY.f\"é&ö²_óÕÇÍ-˜ƒ&ýˆxã\nó¤ew¬îüN³X|`H¨Ö2\'M«½ÿÅ]Ù:>ã¨7ÛÁ÷´#¨ Óü‘l†ànGÞïâO8H£`cV`öDAhÐKŠ“.GÇ&ÕË;~Ei…$Û;‰Ï”1m›§+Y4àŒ+´€Ho	Pµ³qöljcÓ¡5C<“3ðÚÒº¿!ROè@-ï¾¯@Hœ]ÃV,„*O©hß·ÁqÒôt¸ƒÛ®ú½£`Ãpë,Zfcå›ªH›¥J ­“”t“ü¤‡x2ÝUï92Sº—ð¢\'Ùi¼®Û žl`H›¾jx§Ú<ù¨J¼P	¯¯LÀÒvˆ}cÂ¬ºö”Bþ ùôyûŠ¾Y[	ßï°HµžvÓzõlØ1zD7ŠÒ=A@£ñ:hXx!‡C`š³9ök¤j#C®1“¨ècoÔH³«0ÌÜ¬¦š\ZRE´ÿ_´ï‚Ow<ê¤œ]f~pý˜?æå¡FŠÞKÈM;‹´H³»Ú6`‚€TÀ·¤uï±`räÿŒ—ÍŽi_Z^X£]Ã|9eMç_(](eo\\‡ySü‡/€HµaÚ[l?ºÓÄ~D¢Á9£Å\"ô{l7zzMr´Q‰eµë;ýùlYäþF»2l\ZÅDH„¦ˆÿÂÅDœóù)Æ;À¾!³üÌV®C>‰[è\n±´£-m=; H“0¹ÂD_þ¶ÒñR­‰ÿõ„$âî9ÔÙÉîòMdŒ‰ {\\SpH“,Gs%åÚï‚/.ÒS<­N}®A†=h?SÌñìÀy35¥šžUü[ÁÄJÐH”jÙ#»kÆéÍá-¢P¾†iGc\Z¬ûrçÝ¤\'îãó¯Å’kâï\rUóq@L^ŽÅìœH”O~ƒQ¨#ýyëûÎ¹Vì1›¹[n‰Þ·Î¨%îL4|ô•–»jî½o€Hƒæ\"k„SRb“ “gê¹k/ ÃA¹>Ìíˆ˜Ë‚X›Ó|H®^2\nnÈ·¡6/è˜š—ŸídòLšŽ¹ÿö\\é‰‰yQ—%æâ§›ýdùLÀH¬vå9×7TÛ¦PÐº:‘üÛö^:(/6å@M“Eó¨æ<™§ô<º\ZÞd¶-c¢#H¬ds‘UÝ¦§2V\n>•Mm»#)ßÕu|FYçüLª!´ ßÌw£Í“ûäåH§åƒ\0Ã±/b.ÙÆû	ë¾ƒ.¯OÑ\0	ÓÂÝœÒÜNf+½‰†ÐÀH§OZÎõ¶l®ÂÍâ+›÷†þ¼³ãþ¬èÀáKz…ëÇÇpZ/-ÖEŒR›gŸãÄÌc„H¦q-#\0Žy8é~·±¢ÎÂQŒš§î¢z7©È½U³‰s¯n³0H¦q,¡üâá»-d©\'ÿ¥òÑ¹È¿fRÊILpS³µ…ê©úeñóœ›âÎó}…È4o¹ñCÐH¦HmtC@ˆF\r¡xåpðúnX:Ù»»æ`Ê˜Eáà vðJTŸQ%*‘ÝI\no¡; H¤¦óÊÓ§ß¼¯ÙßÁªå—·Õš‡”ù0—ÍKÇñ=¾PZéKa(‰B²ÿdiâôÚåt H¡*\0ó$i²9^Áv¡hÏöÎ½HV+“…ª}¸€â:Äñ“Ú¬öðLéC×¨Ó*HHŸ½ÍSªX ÚIùõu•˜ýß†Y[,ùåøôrÒ™Ì\\Í%Ž4É^ÒHH½ÆØæ¯Úú©öÉRŸÄ¬°–99	;ü=X¹¹°´)‹JVË€\r¤~—ro€H½¾Ÿ¾\nÎÿp\"”q@­mdxþ9:£Éi`ˆ£¼6â£†hÈÇ˜)ý<^ÚH½Á)\0ŒjE÷›:žiÔ¶\nl‚nOQ£/Û4÷Â)Ð¾ò§[ÏkaaJEîHŠB“–!HY¬ûËR——Ï/ÊÊÊjIH…34NëÁ.©KXq/âøÐ3H‰’Nä×q\n`\ZÛ¿j´éìÇ:tgï¯PÂRóÒ#_¨r»¡	(…à€H‰n	‹\"TH‰}1’{;€G¤¤P|“J¡9èªOÿ\0ïð0ðtËõAHˆÂE¥Øî€Yø¹£ßi)Þˆ8Ôu£ÿàäå¤>-!‹	Z–ßc*øNéœÙBH-CüÜ8Qf÷~‘õP.6›\\&p…1#@¡Æú_Û?‚]fÌH+Œx“SÌ¬3ì…¥1Ñ‰ë-+œÙ×Ë§×ºã‚dH+„¡:å\rÝ¶^Qûù&‘·7üØ±I§œ	 ‰+w#Þ/“Vx€H+qP(\\2dv©áXjéÏ¦%ÓêçK¦–D\'³šä\níègÐH+\0ÉæÌHrÄ^h$k©«Ù9ÈÍGŠôw#Îµ¶ž	Ë9>ÀH+W\'×^’1Ü>“ï@OÊF[{«‘ß[k½¤ôhH\'$\0éÀH)¤ª±×«žï¸xÀš?q iˆ6\Zn|=\0|ýO\Z:H)›ã¯®¿ µìuö€—¤Ü*&ÏŠ¬iOq´ÝÛÉ a‡À','Nukapa aicha kachawa ,dius manda apamuai ikuti sug.opus'),
(37,'Quiero un vaso de cafÃ©','Sug wisinga cafe munani','2022-12-05145424982569vaso de cafe.JPG',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\0—¶c+.\'+1,,,)$#%$ # ###%%-\'\'\"%$ )-&#\"0 %(.%&##\'%#()#&(&&,-*!*-)\"(%\'#*$+($-53676373401/445:2442555-5HäÁ6ìÅ€HóÓo º0qä­âQ^à1÷H€V“ÀK#Î/þh¹/ÈˆœT]ÛÈ0‡Ô$\\V‡Ù?^—¹~=ë<“P¡H\0ÆÍ:å\0™¨Aêw™	¤=zVÐ–žÓ¬ˆºþ9•_[\\¦6üà´u°õZ€H‡’ÖnÄã¸\\»^`þ¡ö³V‹V0¡ÁÅvÃˆàü)w­%6AÆÈH‡±RËàPMC9M3Ê‡ 4¸qßÌú¶5UÆ0ÆžFwí!¹å_LÞšHˆç„æ}£ÛÑjë@c°%KÊâ?mKd¨úm{L™Úgä(i†5êJ‚Ç¢»tXäèH‰2eð‹ì;/Ve‰º—„Ê%Pc•ƒ2ã–eÐmuåÓAjáîyu_hîÀH‰2eôçC“U\Z\'b†‹D/:±ò˜×\'› ARŽû+o¹4ó¿m5pßOWH‰!ÝíÖ¯~â¬‚¢M!OlÝ¥ÜçÆ ^ŽT¸sSHP/òÃpGöÞ2\nn°H+—|ýÐ§\n×jtÈUzúŠ‡\rÍ‹ÖmåÇF@\0]fªù9ô•ƒÀ®’×šH+Òç·ëq$ÝdrÂ9ÔäÊ²ÛÀalg‰Nµ]*k>h¹.`H- ÑfA»¥±=HaîÞjŽÂÞûKa¦ÔœÑËõ(m^ÃÉ´Hœ’ÍF¡|Í’D?:Óº³wò—ó¤×@iPïR¹-e®©úH)ƒÓŸ‚‹˜ºè‰¾0+Í£¡M,>-jãO%¥È6Ö_©0@H)„kÈYà÷Ãæ†A&qé;0ÌÙ•=ßm—¬üøþ H)¤«¤he’ÄO.u\ZÈ47á·H±›—M7¬`«êcÞðH)¤ªFeu5÷˜£žXWÎcUˆéªˆ£=ŠÙnpH)—UV,ÁÄÍúqÖsÛü¦¥ïÂ€‰ÑhøÔ“æèÊÁxH)¤«n‘ÿ’WøÁ3P´Ê4™\'¾³ó¬D­IÌþ¬§HõM\\;\rv¥›çÑ\\É%x.Ð…Á-&œÕ~³lJÚoôH)„ÕšC¸¢˜™ÁŸò¨X÷èxºMÇl˜ÅÁœõŸX=¤ÀH)—$þ.\\Q½}-UÙ§ö4„î’a}ÆSRu/`šPM¢¸ºæÀH)vl»óü_–ÓìÔ4„[¾ÝGk\nÃn£<²§\"…M³ÅDyMA—¿»8µèH)¸O#«ØÕpÍn.=âô>àÌ’{tùùkøÄâ‘\n¨mVÜ”|´Hˆ^°¶\Z³ôÒè¡jR»öóÎ»Bí”êM•›lø×òÝkjH+Y8rgËhîŸ¡¡ÄÐ:\"w®e}½ž¥šHKäl	“ôH)ƒÓ³vNUXÚ¼´IÁÖÊª¥F0ò¤k\0òËàVÊlÕ5€HõM\\?è“^…éiPu˜}çœCsWyÝ[TiU£Ah$ÀH)ƒÓ¯Âàç}ÈÆ|],\0ûÄ–ÝfR¨\0’¬ï;0ÔH*:¢®Ï‚Ë\"Ž¾›„—•WQ‚éÎÐå\'ö–“±:+=¾³˜ûH/ëähM%©ö„…ÎŒ4!÷j+?P¤¢W\0JÄ¸’ÅEjS±Ó;Ðåñ€8H0­ÃTF…¼¢\"dkN«/|î`vÚÄ[ß¾Ý¨\\ñ$OLïh¶PH/	iW„^Ït¥¯ó¬WFÂ\ræÏsµo1u±*ÍZ¢à+#JçH-‚Mvyç;i\rÚ~áll¿ÑKRç1ÐH-™eœÐ×§ò‰nL‚\\?öª6žÄö3p3H-:L±´lf^?ðiëÝ2\"ù¢ü§óÜÍuL²ÊîÎ=øH€±¢.×ŒŠH‚þœëÎÄJD	(Ô€O¯A{®€ªÌÂ>B\0¤ÕòoDliG£(´H/	˜¯ãnRÖ•$R¹jm‚Ãé2a•W ÷Ç‡*KH-GÄ7eç*7¡FÌô‡·Â»(éËeÚþ+ÏN(œj€H/{]É±ß°ž(¯+Ušïó:­li‚USJ\'h»`è	«ºlô¹¿!@H0º¶ù¥EÜM(Ô§áúG«éH’ãè@S0K/~•âˆ$¸`\\æ$šmUH7Å$=w¡ôÃ£­Wƒ:‹RK¸	snWBN“q ;;~6b†l€aHWe£YÍ·u³rÛïpø\0$ÐŠþY4zŸŠs0_I\"Â®µÜH4Mq!œÎ•°?HJ&kòIÔ£·æ”—÷DeçÃèzl0H3À¸Rã/##ëëäHúîŸŸ»6ò¾6ò~‘æ—§Ï\n@H‚Yž;±‚ñ§˜]‰ò˜„*ê/eÀ)¯F¾´ìÔf1íÿ,Ëalç6ÈH6ûß;²ãù„\ZâôK	ãžd©.ÖÀ&­Œh¸àÕ‘ëœ‚JH3÷ŠÆ3EŒÎ\Z`0å$´îvQMŠ{éäÉ!GÌˆÇôH>\nC-6ˆÆ×å6*]ÔéÞ‡\'¶ª;AÔdx<\'ßúhó±%bP|ðH1Q^KÒ|Z_Ç-ÄJâ‘Y²íÊTŠÃ(ËjÎ~ýÚ\nJ´Òk ¤ÀH1dO\\fŒF,\r¾\\ñÁˆ{Åù—]8&n£J±§Ôº’	H2lÝŽœÓžæå\\ÛžhÓlñRñ¥\ZPí@qýÝJÉâpZâ³ÑH¯0ÂÐ³èŠÏi×Û4@ÍSú–Î¼à ŒmŒú>µûZ–Mvñã„HÅ<mIÂO±ÇÐŽlç¡µ‰Wñßúò88j`]ÿÑ-\\z2;>ÀHk¦UmÍ\\Åu.9¹©J\"ò;×q!géÇcžF€ÏØ\rhH¥sÂÌÉh}jÈ5R,?oz<¢HìäÌžmü‚{(Ä@ã¹ÀH/^ýƒªŽÑGJ\r¼wLÊ›;8?„û‚Ã\\u¶mCD€¼Õˆ~AEH/1Ô¦ØwÅ¬é]B‡·Ñ»ëìÑØV¾ýÀdÛ8Q±\\°¦Q\'J`H™ˆ´\"Ø4Y(f‚œþÑFœI‘ôü\"ãôP9’>‡iúxH/>ˆódË§Xð@¼ç{$%£e|îœ/ë³Òä‹Ç&\"‰|ƒèHgH/f½yÄ\rò¡ÛpŠaÛ½º=s©.ç‚À8Ÿž“ygnÐBKÓ%|Mà¯}ä`ÐH/9M+Hvn©ç(¿Îgœ²MØžd˜‰ôVçþPçlYêlÐ!ée H/8¶×>+ÛH‹¼u(LÔ¢< Rïûä\"h³‹‘Ð@H/?\'¡Ä­2dŸÖ\ZÄ§CÛ­k~ì\"Ò†Ûîé#uñ¢R‹Š»ÚCJH.þa DgÓE…UêáhØÄ	›ÏÞ]Ë“¦¥ó·“·o†ÄÎ¨H-v;Î§B™²KõÓëÇÄŒÒé™§¬D¶½(L£&ýžs^9|H-D(¦U#Ø¸.ÂåüH¡ëÖJä¼^&•ø”¯â)\'‘Ö H)æ„ÆQ~2”pýŽ‘óRKÓ©î4’NU¶÷øR8ä`UW\"˜†(ý@H+7àºÎô‡@wÝ`·Öaã)—¨gˆµÂˆª\\3#ðëƒ*àHùýSŠL¸»¥Ô;–7=Ä‘qÔgrzÖ6U…§=è[z†0¿MÁŒÕ€H)ìo­L½ýeRˆ^<ËlF·1üWºžy=Û{]¥«<žûGŸÒ)H*é˜-²ÌuÈ7\"(ûø‚B¸n\"†lws$Ç,EþÏc(ÍH*CûðO®åy¿q™5ŠÆ}5]r	‚	ÀÚ‡ÆQQ3·®q”¢1]LÓxhHŒ(÷¶	q¾21ÈD^$2ƒªqzp\ZSæ„7<(Q\'Aü¥<Evw`ÿéµ‰Þb»Ã|_I-pH‚Öy”v¹óúN+RÐüMýõ˜Nf}=5z„áŽ8UÿÚMhoô÷\\ XeüæâÏ$éØHÜ¿ZßU³‹~z§	ÄiÕåŽô|.ÚzÚÛæêð&—Ò½jk^ø¶)«ÝWÁBks	gé`Hƒ‹ßZ²ÓGôßƒïE7\'\'®¾N~÷¯¯9«e,3\0åÅ²!\"ÿ*Çà7<$<9á=¯d¥>+€HƒÈJ¬K_(Æ\"Þc½çkgDp­ï…BÎ½Î]­Œˆ.|ÕR\\¥¼×0ÄTEáòS Ö H“¤\"ÃB;Ö¸‰WKÁÛccBÅdîgèÌõÊ/Ë|îd–Î}c3¯‚HÒKûxÒÕ0H³vq‹ãEÑ¬ZæŸð°Qo)é¥œ*ö×ª\Zß³\" gXŽiàt0àù%|’¹5­TÕvýÀH³ÈÈ>³ÒÚ=¡-¦L˜~öÍt$~Ì4ôÒìp´¡³zÖ\"H¶!ä Ñiçobü}Q‰MH±~‡ÇEGî°†(p×Íù»=pÈ’Gó­ ý~q¼+•K€jœ.åØÒ¼Y«ûÃ|‰H®°šÞi_#s†ñ/n¼Ô²›gÊ¨*¯Ž‚•K²G²È~‘Ù~Ò¨hIïëe«68 H®$FGc54\'Ê(zV\Zq\'LÍìóúÈmG‹‘²DCá<@%Ã}k]í“ˆ:ÀHª´Ú—ÃÈÙ’qž7a•QÞ~¢mÞvÕF+jÆ{­³ir*Ê6¼S\nõHDÙÌDH©\rärÎ+ŒÉØ0ˆÀU\n—â[ƒ€ñ¢É*=z‡#jm¹³Ô·5vV®Ãlœ$zKä–¢¹€H¥ñ·uRf\\éfaÓ0DHwÊÚ»mß’nûçcô<0ýÜnûùøL’-ËbödH£“t{eC5ÂZTz{(¡4¾Ë}Þ/¬wX²Ì!íâ¤=Þë~%Y\\TMÈq€H )+Pc58VŽÒÞ€2¦Ìxld:JÊô`Äÿr\nä¬gt\\¦*x€\0èE™ÊÍ¡¸HŸx‘—êÑZf\0¾òÍÁ\rúUoìDThk4Uƒ›º=µ¬,Ra®ÜG9ð±s™ÏúHœ$Þ¹ñ„pOÕ¿Xæ³€6VJVb”!ßÈ¨—èá	7Îò´ðo.+6ÛY¤ð	e’%\0¤Hœ—+GáŽñó+~æÑúÊ·üí\'vHUJ=ÓQ üZËLXRøwÍ˜Š«È$ò6ßÍ‰HœºqµqE:2ª9SZÕ3I_v\0™ZcÉ8.¦€Wg !.ÓÇ¹s²[ÚóH iF*+ìY Îc&ŽÁã¼Æàwæ]ó9Y¶@ÈÞI²â–ÁxÙ~bqïMž˜¡ðH¤	¶^nÃZWGÉ®)‚A:ßÔÏ\n\Z4ÛÚr.Ãiþê\0òEæÕ…ˆùˆŒéýÇk€H«‰¹Àè]%J\n‹>V1P¶luÖ=Øœ2–ž¦¸ºCG%?¦|ælGö·Ïœòƒ4¹sÇÔH²\'¾F^†u~}M,w%ãGB,/?PæÄ©&·ûbâæhÓ~lµH´ínv©5ø¾O³ßŠ¨ýÓx·ñGç³ªm³É¯ÞB+ãQíoÍê§|ÿ}úi¸{ë„Ag OggS\0\0hÐ\0\0\0\0\0\0\0\0\0\0\0\0é\\Œl]*(-183/..+\'+*,3-267)%%\'17,+(8$/..-120712\'!,23-*++2,((.60)%\"#8572<73/.4& %(##(%%&**,. \'%%&%\"#$H±»hîy¶Z™…=(Ä€@CÞ‚6=ê,!õ[ ÀeZ€ìJ`›ØÛìH‘HeiF!+øÛM¬/ñ2›òb>9Ëµ5+Ïƒ@0Me¯Ùo„ÉÀHîÇyþrD¸<\nmÝDo`»ä\rÍ*>±šÚ¥gµ(‹õ{õ]Œ7¾ž”y|‰ÊñH’\r‡àô;[ŽVüÃ3àê4^­Ü‹¥“#M^Oò€Øô€QÇkvÿE4Úkˆð¨H’”r™xGç9yÈUÚŸ(<—ï–0+: XÛz<Á´ÛZ„N[g\Zè]~š\\š\nÑ§;2…÷]Y€H° Qè××µ!u{±9*fÊüçÊv:ÉH/·>}ÈYàÑ¸káèDé·\rÂÞæ…ýÈ6ÀH³Ó€ø¥$e‰BÕ¡2ð¬žaCè)^zbHkk–>ÿ¯\ZÍwøF¬¢ÓèÓÕf€Hµ½*x?zÉXtwJ·b«ÒE&•6/0;ÑhÅ?©7æÙ·Å¦R‡¤?¬H³|\rzôn°@¥½•»jÔeÃn³”nýÑŠS:.õ±^G\\>P!Tds#H±ôÕ~Ç©Ú¢wU4WÝ½¹]®:ãƒ!oL¶;ÖÃÝÍvø*µVg^Ê\rFïé€H±ÅŽ²©PÀ©¥žë×K|?ënh9RÔiàrÂBžœ‰F¡yðH®.«ø„,®Ë4Bá.\ZX F¡—þ´MßäÃ±£\"7$»œ\nÿpHª§[ˆÕ×=åÖœ{øÊ¬¢§ÿ•~YDê;±±tH»xêW¹öó±-ˆH¦G}º%rÙÎ¸Ht©”b\Z•yOèw\00NpL¹èÔÐ÷×…b\'ÆXH¤ø»OÕlÇ‰hìÚ6ÈÙ4á;¿þç¶r”(´Z>P$Ï¬d@WeðÂ`–dz«ƒMü;¸H£•Í#3·ƒûl„ï\nÍ@‡ÞJaø™ˆÚë]Þ7³·çB‹Rjzx6°©MòH¡mü_K¼Ý”—«R³ÙB»kÚýHÐÃè-d¾‡&L1Y¶–C]d§\r`h€‘°H«ãï.ž s‹ÖÀÙP§Àýqü%îî=•½ôÈ˜O¨ŸLiR„$zh~É½š_…è2¯Ã7pH²¡\0%:Ü¯Øh¶ñYÌi’Dºp¨vhó¿\ZA}>Hq—\ZÉ>ñ®ÇKcÝFêK®N¦#GqõZ¯PH¶…QN’ßÍCÌôö^^ƒÛÎìwâ±Ç6åá4¸Y`Až¦‘0 H¶¹’±VÂd Æ0GºÐz¶Ü\\µ™O7Ð÷éâõØ:P)gM©H³s`MÄ‰ß>îÀ“ï‹Y‚÷ƒ–+\n éM»î¨H±Ú¤æO\ZÕ¼ä¯/òí‚=çª<ÿº|á!TûŒõ×Y\"˜H®GßeÚët>³‚6È†Ö’›.Giç¿=\Z§œFm¾ûS­ŸBû¿Ú‰=„ø”`H¢\"[®¯ø*¶	÷‡;ü¡I8B–=O}LY+«Äô×Ö6MIÄô‚,È—\\îŽ0?’ÖPb@HžO{]‘•:-åmDãqj·ÉZœ<åÊeú£áüd\\Ã}(RW€Hœ€›˜åñ©:µRÆJûowL™¸|V·©¤ü·q¡í*oÄ}£7ŒH›†xcZŒV>)L-Å\\wŸDn :©sdê­Œ«ýPJ)xH½õªçÚ°š:p~UK%†6x7Tñž9Ã›ÿƒdüA}t{Ù‘_ÆRóDAC|zÅûß@H‚¾Š—Þ¸£ÚÐŸÙ¿èoÖGçãÆÊw˜Ù×yøÖF6ñÐH®êCµp0C\ZE~¬ãG\0|›.è`†]Ù\ZsÆõ­;µ¿þ7–÷l»½úH°\\o¹vÝ1Ó„\0ÝNm9±\"OQ?ÜAÍp‡×˜»p>F?¼<-éa½«Ç …ÈH°5åÀNLíçuñÛ»N.–²Û4Êq!°R‡ñ€SXvÍpV[$i¼‘Çþ\\H¬©èéð€Ã™CÛi\"+âÐ;Mtb÷ºE¢	Æ ×:°ï‹}×°ÐÐúbâÆHª’WÀ‚ÿör…_`Ê¼V´kÉÂa‘Ð\08˜BM/!«‹¬pù¼xú‹é°©$H¥M”ëÐdéÒIÔ1=Ä87¢zû´ªE\rU$ù|ÍŠˆrÂ„. ëxÁ†…àH¥!%Að´ôš»‰\"ô¤‡†¢øz/Å)’”p•m}8 ŠBT”¢ ò¿í…8àH¦ßO+ÉcMqÔŠj®tYÈ§Žt”z¹¨â®®ÕewvŽ˜¤<`’ï;•WI»²[÷šÓ5s€H­™GØ;çüæÉÎGTîeQ¥Ùéµ\nã7ªôªF2\\zËZV~ÅY7µ+÷ÖœfˆH³þ‰é=[¶~g’Ãë¼_é‡µp¸«6QŸÍ°Nk{\"—FP·DòLò™O\0çÄ Hµ\r	–{f}¤Õöû4&LÝ×ü\0û4äØ{n|¼¸±•8\\tH³/žyèÏ_Vdt¨íE\nu\Z$†D¢®ÈüÔ\r4š@H®öÒàïô!Â\'pe!ïø.ÕSã-µå1ªrcž?	¿×šÖ.Ù„óª*¡ÀH§Yè~™íùfs^â²UoOêØF+†ãrGúf1‰ZÖ«Û@ùç2òý½ˆ@ÉøéòÌH¥!UgMY`£++ºaéþAVª@§/(F£P	x±gý\ZX N¤2ÐUÛyúž‰z@À”‚H¥\"Oû§öÂ,Á\0°—+±¹\Zô?Di:Nßy%Âezmý¹‘’tK×þ¥ÐN¢VH£hð?Xk‚ømPAßãmèA<âk…á—ørzJœù¸@D\rZhæ H¢¦ÂoFÞöµ\nKqœbŽžÈcây\nFW¯®Ú›€Ù_¸WjdKØH¤èW}qá¯fÑª»&²Æ\"±ÀÅ¨ÎêP°7×Ÿþ\nÆ\'Jº€H¤8_–ç|\'Óhxá­IGÙÈ&•Ÿ	{åeŒªa<]5C~ª‡Á_|àI*·@e H¥(™°Ìö9›«ãL:ùÁ>îú|ÔŠçHÛ×TÂmpk~²«³ck*•ˆH£žzú´=œ’Â³©•ã¨-¥¯ÿ»)x²¼¿B‡‹ýôyVîãH¢…€\'KüH\Z.9Nï•*®žõmIÔPõ¦Y&$’ËçË{W‡äáH¤	ý{,P€âœ”ußá]õ‚ÕðÛ(âz¬˜b–Ú¯1‹eWOi€™I øƒü`H°w7´/%¤1Ñ¢¯»ÌB\n‘ŠÔ3O¯Ëþ þý©÷,@MWÊN?˜¸x@ØxßCÎkc+Z—MÇ°H²‘e½T óþô‹1ÍKéê2\0bÙÓ¯ºŸç\n‡|²_d,Ïñ {l¢ôlµBH´Hpa[J4»PŠÅ@j´§/i²sÀÎ¬³@Ì…•ß÷¸¸Ð3ýL“®Hµ\"\Z\0±;Å·ÀgkbiÏçÙGpjþ\":zk9a‡€Hµc6œuNÐd~”.£`ü±{)È‰\"»/¬ö:ÖBH´ý$;HWQ\"Vxß]ôÅ$-Cû´½Ñj8še®H³×Ý?ø=¤\0˜‘-\Z¿Âôã&Ã8ˆ½¢3¶®kL—Ô™½5‰Ù”/ÐV¿&œaZŠ+òùH©‚—MÞ|3”üé,‹2*×AêZ¥)aþEDhn´‘’Ôç\nâ£ˆw	¾~ˆXulI\n‡ìÀH©GÙY›!Ö¯¤Ðú\\	-Ö\nvž\nå;tÜ.É*26@Ÿ“;ë:ª»Â¸ìÒCn,­¥.üH§’d¿+¾.ñþøâ6íhp›‚Ž•¼Á[Žöj2ýqœx6±dFL}\r,lÈH¨‚BaO{G{<9uXm)7_†vÉ“üâNÒØl¥ô@ðIfyH“LÌG`ÐÕ9d®Óó¬ºÙ±H¯Ù‚ˆÎ€\r—ð¥€šÝLb­²†Ð†$ß#@€>PzMöƒÔØTú\'#ÁáþÓ1-ÐH¬ÌÉøþÃ|iµm,˜b^d¹eóÿ× w{³yû¬ñ¬Íj±3ÕÐÿwáè\nò÷ÆFH©I©ÕEŸ[æ	opˆñveV§^MÁ….˜­ïýÈ{JYoÓœ|öò@H§AÛ€ßT³%[Û’`1Î_rŒJùÈ\"b@¥íCÁûlÓ±ý]ôï©%7¾Œ€H¾Uó\\`žZ˜ÛÐK¹,àJó,e,Ez‡{*SµÆ<ƒ÷ý˜ž¿á‘ƒ<{…Ê?,N\'H“ýðA´	L¸`5<k»x‰·ƒ°ŸÔÜa#È+í\"½úYJH4ü× IŸ-6vš¶>ÇîÅxHZJéFL–ÝÒ¼µH2ˆ[‚D#o¼ÆyS\'žVÑL·Ý¿žò-.“=PYa²Hw2‚Œœìôª\'À[|ßÈ‚ÿ\"ÿ<ôqym³’Wéù‘¿øÇ°H…/€ô?0,*‡*/J±Þ¨·Â=«&òšÈïvnöH;\rÒ,«g$¹ÓÚÊ<›ÆH–•O…)d¯œß™‘¾	*«xàH7õ‡jÜl_ÉÚÛ\0ÚŸÀÕ¦j{²äÚ|ôªÄìe‘}$nN=ú$€H63©êËáTý©Ça-Ý4iZ‰YÍ¶)(2\0‹öÛoU‘Ï(ŸH/WW\')6TÃÄ|€Çöi™v1;¬aâ\0°Ø–n~ª|XH/Vó]Kkž)ºR·ŽÅs/á=»û}2®û[±Ç!~Ù(™„1H/_¸ê\'‹þÒ=+!q_Ã¨1Û\r‰èõå¤3ýú #&>.Ùº°H/g†~ÉurM#,¾ùƒËÏEã€éN¨2\n9«à§pi.ÆÓö€xH/^‹›Åzª¥µJ÷é9 ôŽC9­ö^vÂ–QŽd	SýÌ[)D^)ðH/yÉÒt0¯z\\ô]/—‘e=_X÷Bv‰a“Oë‰²t°d-^¶dX/¦±Ï@H0«½AŽõzÏ-ä÷wÉÐ?]ôïÈï1ÊÚšS`tH/^ŒXþ†‘`\'Ï«Ó<Hj…šê‡C™‹ b1U$¦q8šŠb³-$H¨ÁI$º7Úë¶êKÑ.{a;{˜3¾Æv–þ³ H6ïì%˜S,	[Þ`ßî85ÄïÈd\\–‚h¡PÑSE[>H/BnŸyXìÉÚÓâÉÖ¾ÚÊ‚I@°=Ñw‚Q“†^‹Jd°H/^Œ/upr¬.›Úç‰ÑZ+çtò“ú•y 4Ûä>|«4ÀH/8¤gù_€øOo <GZç­¢ˆŠÉ^Rj÷wÖH/_D\Z&Í¶ƒÿ—ŸK0/¸rÞÀ¥æ^£Ü ³;Wþü°H-Kÿ„¢Í½ak3	\ZŽ•šé¦nMpÒgl_—','sug wisinga cafe munani.opus'),
(38,'Quiero un','Munani sug','2022-12-051455669854810quieroun.jpg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0qËÄ\Z^#**-*0+ \'-%%!-),)*&)&%(%&\"*,%,%*$+,$&##(-71,5130.295-1\'(\'44,350-)$48435-.12/52003,076:72.,#)HäÁ6ìÅ€HàÀé(ñ”ò•5/`GËTf€H†\Z÷m/„\nQÛÜ­¨{~|SÇ\nøP¾{²êÍ^RÌH†’„Då±îHd±xþ@4â¿…BFæ›Mïª%ËüUizM¼saH†àf?îSŽÄŒ5O2Éuö\'ÒÕ‹¾®Ê$3p!Jfs&¿Pßl|-\ncPH‡!ŽuúF\nº¹<áðã6nyÒù)´³&®Ö8÷k:—¡€Kýx™ @H\"1‚ µb¥\0,B¤é\0H&ç+M\'l^p€yTþÙéybÓ|–°8HH‡X”nf”—°sbÊQ\Zõ\rÇú”$˜aJVÃÏþ§hë¡Áé ŸÕN•ÏAàHˆnB\'3ãÖ§‚E\0ƒpU«îGô•GO\'¶VìS:ø¿‹ç:x¢rùPH,Ü/þOÄ1‰°}™úÛ‚Ñ[°ðˆËÙ8òxTÏºO H)­JæA‰7*Ë´¬à$Ç\'©®1\"Êà€b9kÖù~LÔöH)­Cû:¦{cÄ2UŒGâ«Õ93iU{xvëýë\"íÖ`Šx‘WM“(\r¢ÀH)£¼ÎebæE¼5:l8tû7¿yÀRª>“¦—¨-¯§:H\'Å6×Ì¤4iùÅÙˆ‡j=ÆâÂ\0«ÕÆ¸H\ZŒ[Q§ä!H\'›0Õiˆ¬æ\'òfé,¯*2·àš¥åQˆ×1#žH\'Òq´Y¤JnÂèßë˜ÂÌðV“§,Ék7³OÛª¹îK¨ó‚|a[z¥àH)ˆuY86¤Ng^þ²y¤De—kÌDÑª¯V>Õ†\'6gB»>¨äû@H)~yÞ9„j]4w\rû´­”hIdâ\r:`ÐÓÕÎ^d\rçeºí¼ìx	‚á0H)~UV$\\WÞ*v7‰¢;áo„‡“fŒÌbøEýXaRÃÐ\0òî:¹ÈH)‰Ž%ó\nª²«Ë%Ç×côvNÔ£¿C9$Û°z8¡³Ï Åå€H)ƒÐµéÖ7¤»g¢’).P”j%’+ÆSªÑûP!ã¯ì`Úå°H)œÞ»Rô“3Š¶àz5PuŒÝÄz6qè¬Â@ò×¸Ô±yW¦<˜ÀH)žeS¾Kziµ©fãqü2G„œØç_CIâ^ò°­?ïß°#àH)M<+åX¯ÝñaÝ4›Úî\'3.S¾ ½/(BåçWöÀH\'µ¼ ´RÔl%–VàAœ6ç÷PS\\	ÀuE(‡g˜ñ=b€H\'»í“”Z<¯×ÔÀ§jDÚæ\rÁ*Và¬ê@PÏuú¼N)i3ÆH\'Å=j7ñ†ÑnK¤’9£rºXÐgß`~FÏŠ¸­p\rØõ) H\'…õF†í7;vUY»8ÃjîÃØY@èsÛÈ_Õ$¤Þh‰H\'¼0–qx×q~º–Œ>H¬mÖØ»K}ŽÙLGx‘#ÖX8]—ë—­Çƒ€H\'µªp´§¯ŽOŠqíåÜÓãõÅÜ‰»hø\n¬ÍnÎÀÑåaÐH	‘Ëén=\0Fyï>ˆ×‡Ä}gu…œ+L«%+a´ýKÿ¹ÍDH)µ—ƒc]ùÓ®glïõ…ƒa²	åÔ\'É<bP°¹—$ê·1Ú~€Hõk\ZéÚ\0ˆb#Ç›ý,Ç{ž­D0çÖ’Š\n®Þ÷Ï”óàH)„2ßèü@àXF‚9=\\£`R¬»Œ=özø´Âò}fÎK|®3DpŒ`Hõå‚^šY_A_wÈÏQîdñ$k´`\\ïFAG/Äžƒ\rhàH)š¥V/$XNSv&Ó3 5y6NÀ.5‡€ê§˜œýó‚V•ø7äpH)N–“áí±d¦“’¬°rdÔ&]—]š4Vâð$“aSm²lÃtÊCP€H)M+¨’Ú=‚¦n`«Ëa™c;	d+•ÇsXâ>´C°æH\'»ôuæòJŸEâä,%ØLèkïÊUGšK\"øëX³kj°HÀó‘1m6·óÙ]¶{?•ñnþ¦EVÎÇ9rÃ(:„ßÃ¢`H\'´C ƒAö¥Ë$¢6„ãvåª–\Z®ì•«xº]sÃúè×\\H\'ÐÅ¡ÂàxÐ`~#v;±Í?sØø	¡î\Z5œxdo\0ë­±H)ë{ H-&vzÜ¤x¶#Á¹ç\"–Yjðµˆ>\rSË˜òä¸bü|½ûH7I[v‚Bˆ—¹KíZÐ,ÖÓÖ¼!ñº@E÷¸k1I>_âøEæqÀá	ª%n1ìPÁÚ¥· Hž™¡å>Ñ§£ñ¨b€DøQW¯”W&vkæ©_]‰`\Z>ÿ†ãštÌ·YþHžºñ³¡·\"Úuë6ãþ8^EÑ©¸#+»VV^AÓ²´yÞ?‡PâäŠ€VHžÊ0Â`Ç›ÀwŽó—¢ŒK,¢ŒBšˆÏ®­ðANŽ•_kyûæõ°^\n‚Ë-3HzX¡ãœÄH a¿ó¿öZÉ.`RO4n\"1¤×G™9™jÜ@gµg¥ŒH–-KqË7òÍ/i H¢ù’6¨ŸÌ\rŽ÷†\'º\"[à¨©Ÿ:ü\0­ÀÃ¹:øNðº£‘@œÏR>lÂ\"²° H¥$Óàeò4\rtÍQ çz¬ÅéR!WOÜW…Î‰€(€‘ uÙÎ{\'—£ùû¿ÚH¤¹Iûø]ÊéQ-çˆË‰ÕlMõW-Qˆ$ÕTGÓ6”2_£|?]>:\"p H¤;I\Z†/õF#†ˆØéû%Þ2Ò´Oî8ùo-Ê Ï•¶©ë\nÑÛÎF¬Ÿ=â\'ÏYÛÀH¥Œdñ˜d34mæÜœ%x=ÊñS-Â9i“.Ðºüõ[à#Œµy—½vˆ†~Š÷„Þü‡±7¤èH¯9z¨²™É`®:Ô¦bšƒ7\'G×öàw ¨$PåtÓ~&Ð=S¯oëL>‰yN[A¿…¨`H³³NŠÎÆ[‹ïªo.Sø«ˆ…t!Þå·F¤Œ‰XT¶ 0ïC[ HµáF¾W=Ö`KŠñ\\È÷p¿µiPëËƒ1 WZŠÛyjóþYÝDp01`Hµ-3ÃŽÞïþè[¹ô¸`òœjrÛ5°ñ¿lµûo0–UŽ-õHµÊ×DÎ„|¶©x™yÈõ\Z.zò/¯Ù\n½è§¶9V#îN7¢|e´H´ðwžpJ Ã¼îk\\L	”8&Ïº§AU |…t¸\"¢´t\nöÁÜH³&uè\'Å€}ó6\00üèî¤Â˜7¢‰:gí_>ª&°ç@jŽ‚ûhpVÒ´SHªú›~XºÝ5§ÒºÞêüWì¸á0T«œ„‹e”Š¼Ã“[!3Re\ZÜ9:ÞÎCê	\ZÍž`H§è<\ry	‡¤ì\r—á8Œöx€4’·1WÕš#ÏÍ3Öá™pÈÞC`H¦£™3(ôyZ¨@<í2š£[¹6Ð³&Ò÷Ó‘]ÐŒ¢Û’ùÍÈ²òY¿Ô[ðð8Æ©H­“wüwøÙ€…ö®2Ã92@QÎ²ë+[$Ä\\8ÌÎÆÖŽ?ˆ™¹ÈCñŠ%#iåZCpH°\0J‡¦ÊÍ¯‘×Àƒ*´YÛË*Ácœ)K¸;ƒ\0!¼eH\0MðOK›‡ H¬ýµxÞ âTZÏ±bC5¬šiC‘ÿð£g¢»…ÅÐ‚¥O]@GÆâ¢7yH¬ÓyŸsªþû“¾ä7%j\0¼Áz³\'åÆõ’–YUàh´ÛýH¬¦žÐÍ5­&ÿê’J­ÏUÎ	zßóe(§ù2¦Pðv³„G+@H©2B:v«\". O³©ÆG–\ryÁöå÷üªW~áÿ±¶jò£f©ŠG1m\ZzxÄ&ºH¦&¼/yíE3Š;†G¯¨kÀª$+B‹ë_MfrÚ(dzÆáî‰zIõ\\5Ô#¯{žýžH£“rN¤óG1Ÿ‚YHg/Œo‘‘x¥“0&“á`ëïÆ«?ëßÂ{\\û¿PWOQøª‹[¯å:HŸ×\'ôÜ¤íá/òÔG)™ìÑßQ#ìš²¬>Ïâ<~žnÔ×9OhN¥¤ÅE^Pª9H½çþè·åQI[‰m-ßçO}}5Å8ç°q,9Xª7»Ò0å6{±n¦aÌ¡g\Z\'ÌH7jeý’ÜÀ÷\"7-àÉ²š§©ûøíûWù-i-f*@LÎÜ=¡ÏdG@ª@HŒ­CasÙß&	©›§+–JnxUœã±õ˜êÀg^³¸Aâ@òâÈ’¿Ý@HŽJcìÔR°b¿}ë5Ò;³GüíÔŠ©ß\0~ÂóÙG[oÜ=È¶ñù¤–®¹4HŽ«OùZe°WØ„f‰j¦f‹ÑšS¼G”\0 Sàr•Äöš°õJ9C‰ud#&âÔcÚ°€HŽ£åËÃt\rÛƒ4\nþ ßœ´]1Éý»0ÉÂI•¾…üÀm–÷5\'+ÜvÔËðHŽÕs^XÏm‡]Û ò‡.9ÛÚÁ\'øA¸½ƒ¨æxXïª£	`Ð×@ûj¦—@›!ÿ\"$½™Hƒ,oþdúþ\r&ýÍ/V™Ø•ÐõZ6ÂhäÍC¦ÂäÿRI\Z/3žÂÇœ² ‚L\nM\"Ÿ Hƒ,\"òd˜Q7XÕ%Ì|°œ×dâ”4Ô;´£e|yÄ5ÀGÂ-6»À&Ð±­%² Hª‰àŸðÁ÷Çl–œ<U$³Ðþ´¹Ò9ˆñøÒ´À™MFPf¦oò*:´FH§ØŸò¸7Æ>Ü˜Štê÷Ý\':«ÒžÉ¥J¤dOB§¿£q<<XSÑ§_:ïbH§Rù³ŒWaøŒd?€›ÁcWÔèa€!š*è+ÑÜÐ\"u£û‘\r@¦åÓ?H¦m?]c·ö–Ì.H½öÊÆâ}×Kéà[{ò·wÞ»ODT0IÇØØSbäH¤¨»Õ\0Åa­:#\"!œšø6©ëMÍ’iXŸ¾õØ©DWù(e#ãÈ#ÒlU‰Œ±RÒùƒ?Ú6H¡ Áÿ€ù%‚\0Á](d…_Š²ÔµEXcLP‹L°‹|\"HBãÑFãe0D½ZÞoøý\\H ;%qþì~Ddeh}ÕØRÅp˜£Ð‡³Ìüu.\"¡’NhÂjÔ¤?×ýõ|NØ/ÌgêþÉ±þÍèHž¸Û-©–ŠA§O0VóÎ˜’Ÿïñˆ®ÆïDèxÈDu_Bœ(xÆ\'ŸøiFŸÜSâä€Hž@11Ü„3EÖÊfð\Z¥g…k!<cù€jÄ«X¦gëI±c(éëNi°M+_1€Hœ}$+*&”^¹Hë,¬0±`¾Ô{¿5ÔÞ€ž<h2Ì_°Ãžêž§k=$âPIX:H½¶n{\r~Æ¾QQ”¦£]‡HÔ)°„BßÙ2,E§\'gÿËøyÏ£õêÚH*t¦ˆ&B¥À«GÛ¤Ã—_™¾7>Y\\á2õˆ‡PH‰’e’ïæXÛAèA~ q520HÛïüf6pÉ¿ãÇ’Ü§`OggS\0\0èç\0\0\0\0\0\0\0\0\0\0\0\0¬îb$\'*&#%%$\" \'\'++,#\"!\"#$+%\"&%#\"&$\'\"(H$ŒØH0—ØËŽï¿;PÓb@s=¬kiY…á$YÙ*m0H/^±  ¸$v–žÙ›úfMÁÊá$Xó‘óœ{eÍmvnÚ[Ü-AÛÀH¢ò†Ž²àp†0éºSä€¦Q¯xï»2äš^YÕQ+¿CMH6#QÙçs	À>1Xu÷ë‹0d‡\\‹Q$Kr½tð0–nÁàH,Ùö–RÍ@%+ øzsdTt#A›¤ì7f\\­W»’§ž«€H+„Üï\"«8˜*.pæAÖ~™P3`ƒ(è\"]«Ë(ï¨H*ïr.ýSÝëIWÒ°`Í_É×3ç;œwÂ““qæ­’œ+hH)¬­ñ3ÖÙ½¥Ð³:µú\'X.q’Ì°¥<Ù€H\'b’Ê’_\'X\"ç ðuP@qOwf?ÿ0hw›Üo`H$—>ágnÀ{©±Ç»Î¢?üh¯ÝêqÄœw¯’ÔH!øå=+ûÑØ.ø¾³—¸KßŒlŒ¢ýqíj½¹ˆ H!qÆw’v›é¶‡îBû‘±™Ðää*­;}ÕKAf¹à‚>hpgÓ(°HªJ\ZÆ¼¤0Š6][\Zt{GÉh>•ÂUòw8ŒÅ]GÃ]¾„ÏÀHÍøš;Þâb&¿1*ŽÒð¬ä\"ILki•Ð•Ÿ3°èPÔ±Ù˜^@HÔ”ŸÍ\nÞž_Èž|M‹GDþ¥‘‰~RÂiZ¥õ=ÂYSÏ#åOn:ØäH\nÅÓ9õllåÂ­};y«¨«ïZ”Y%v€ñ¼EÏ­—Ÿux\r“Õ•€H!öî-ûÜý‹k§ù\\Ž8mñ`Fû£6RŸÏh»YW¼ÁH!Ðèå±„W³|û`†›“^ÓIrÚRÔ	ÌÜÂa~›H!øðR`…Csö*­‘ÁþØQ ¦{òºÔ³uÓ>î™„@H¾éIOÀÊk€0‹Ö»§=Ï$žUÇés³²·Ü‰Å¨ H«â0{x\r÷;Â¾|\"„×¨{”ò¸Ü¡ÿ9wR«CŸZH\nÐÞ»L€äÍà:$i¸>wW%Ï‹ÿG5:ÎQáÌ2 H!Ðërr>BµŠÎÚm¶ ƒru1uã5¦}fa®H!ÑæÉ PK¼°:gßã\r{²/úâB^Ü®sÃq¥K×“×Vé²6óOµC€H!öï×ûMB8Un™\'i?®múQj±”¤ƒ&e•IªÏ‘H!øý##Zkw0B’á[—9‡\nØçëüsë°þ\n–ŸH!Ñä¶V…OZ \nÙåGÔõÞ]3CÍZ	š*êLdµä-~´ÐH!ÐêèÍrâ8\rÕææýlÛÍ@;g¯	‡‹…H*ìçÛq‹&Ó‹;ŒÁf¹>V_ÎPG– —¹_²¶ÉgûcŒH!Ê2¢ÌÛ ÔõË9À+A1¤L¦šõî@i~n¢m‚óH¬ðÅîs‰mw\"	ÔCG<©aJœ‹\r9x“LP\\$QHªM?­ëb_©†+G«[wá¼šiµ„º¶X¯ý59¤,#,çë€Hª†¾íÃtU’‡œ:\ZÁåR´ÎxœƒÐü`o~ôÇê N8,Hª—E‹å–IVÌ4n†–7+¼°*C(«*mæøåÆÜ\"ÄÞ¬H«óyý¬\'­˜&6·ÕtN\0Áêµv+í³+ûaÑ‹H«lÐ¡ÓÆ«Â=^?L3]™\0ŒÔÖ-,rHP{wšÙ­æ#ð¾ä­','munani sug.opus'),
(39,'Gracias','Pai','2022-12-0514552026742711gracias.jpg',3,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\0¤«Àc\"(&+#\')\'\'(&#!$((\"$\"##\' %))!\"!%($%\'%) \"&!&#%%:5*&)48:6457342-,--\'&$()( (%# (#$$(%)&*(((\'%\"%*$$HäÁ6ìÅ€HÞ°Ëˆ>£Ÿdæìµ+¹iH†m@’r^!0)­ _ª’ë\"£ŸÛ£¨ ¯’\0Û`H†‹FlÝö9òØ·R¥µ‡Åúý¨¦}]ú]ê}8ë$à\'ú\rœ_ì€H†²‘)TÕm™õ¥§Lšµh!¿»k u¥5³ß‚@\"\\ø[ÝcºHßhS\'Ýwø&IkQ\'à)j—D4\0J4ÿß,çª›\"XÓœïß¸°pàH¬æ_ÐòïÞ›±í­·_|ë‚¥Ñ÷0CwÉdÐ™ÁbÀH‡!2}”é›)ô)¦Àk¥w®,\Zød”Žl¨ìtÂ^\nkˆlÒ¿Ñ¯€H!øýXT¸{ ä{²éýøÚÓÕG9ç˜E±™WUp»K5Á\\)…µ©TH\"³ì¸cÆ$¾\r Ðd…öLlo<Øv¨RíÊÃéu¥ˆÐH\"ÛXR\"ñýÛAfQjªz‡ÊÁ¼Ø{U¤ü^Ï…¢ÿ³ÇQ@H\">KaÂ™üÔëû¼*?8=1&»‚LŒ¸^˜ºt°ÍÎŒÚá™Œ_ðH(ß¶_ä´ð nQúÚ­UU=šÔ¥¯ä%L3`âI‰¤îš²­H$÷jï0?f\nw˜Væˆ?6×\\e­c[J2”êœŠ`H%AAÛÀÂ(-TF1|J¬¶Ü££[1®’¥:óý…H%09¦1!‡ÆÐQŠh@‡~MßëžuèÑ9i\\š,\nÇôÁH$ô6wD]Ï\\˜Ê	–Ÿt zÓÏÑ{W‚Œ·ÌæåÓM\"u,¹õCPH%Tr“àÑ«\0b\ZÂÀY¦8ÎÝ0ÉYrƒ	yæÓ­´RrPHÀô\nñâ!—ï4À|7ž§øXï‘\ZNól\\†þ+ÒˆH\'œ¡ó¦?ÂÑ5ãPåûõ\"oJ´è¡\\<WOSéí#’H\'œ§‘Ç€Gi€Ò/Õ~9m~2H  c9ÒÞ­ü$hŸ H\'†\ni]k‡ÀíÔßÚWa¡.Ìn‚7ÁŒ»Å¾2”¤ÖH&a«ªê†’8\rÈ`ó48Ú[ZÊP)†„ø¥l¦…†îHÂÐb\'°ª^ßnPø¾™!èâ‹ú¡ãXH\'¯äàBzËF:ËâÒ.FÒcÛj©C\"‘G>žgÍàÎ1\ZÞÄ\Z@H\'›8„äC´&‡Ab:\\q_Ùß;›WS«í»~ˆH\'œŒ¢7=VsuÜ%Ÿ˜Xw¨ÙNEBø¹³dE€H\'¼,ýj%šn€·htaÁì¹a°ÊÎàŸ°~F7Ã1úà30H(L#¿ƒ‡„Ó¯zûkNÙÌíìø·jíÀïP¦m*Ô9B²€Hû~À>†Ý7büHc}ÈÒØÓâH°\'ºÁ·[YS·èHd ½*06Lxl/B ‚¨\"Ëf÷xÈ0§C7˜H›¥¯îS ÏKX…\\Ö™–¨ŒKºû­Q^A;\n¿¼&H/$>ŽÿÑOa%K{6Š3’Hà†–®D˜¯gê9·Êw›ÌH-hÊ„rd7cê÷eíéµ>-yjP›¥ßMÏ·áIe¼V¦¤LîÒ4¨H-WƒšGœrJ2TÍ€‰ø¢áDÃ1rƒ£U¸¨œ4öiEeH-sc™\Z`Œ\nÉ=÷øF\"ý¸4°Ûew>:;Ž>£0.H+–´Ø…{ `Hîï Ò‘ª^ª9–ŠäTô]Ýµ½ËWh¤›€H+.f8$yŽ©˜Rt|\\‡¥»÷uM‡ê¾þ¢Š?dPGÛ}ÀH\nÔÔz°sGP4ÆÔÒ•Év/›þM[T\0^þÌ›ŒªÆ¬Ë7QÓí\"H)¤«iq´º¶ÉËÌRc“òÍjÍ–¿mEKa3Y°H\'´Å><E$,‹	@_ô­«ú.RæÌ<LÏéüÕŒH\'´¾0¾.wXÀÐU·Íè\0Ö~\'þõƒ¦œ:ª†…òiÉäaÄ6©H\'œ¤U\"—ØOt_ü“-Ë@’©*è¾ˆŽ˜ØÒt‡WêÄœH\'œ%Kxšå*û]Ü;¸øïþ®ü:±x<é´K´ô +ð»k4H\'€±ËF@à(õõ&iöÖTžÁ-× È=ÍÛ£à¯“*H\'dZ†å3/l·ÞÑUi:¥êÃDiîŠ9žìº€Xh®¬JÐ› H€p™…TLg|&ÛE³KÆŠ¹Ó×n†›˜ë<½Ýßc¯€H¥£µÍ¤Í)¼‰.›ê \06HWéiŸ7vïpç­Ä°zÆ‚ÝûÀ]Ôqs¿¯|\Zífš@ž?9PH°ãù0uÁÛõ!Ä­ªìõ\0æiÞh8x~q»¼’F³é„ò`4¸ê¶U`mD“jèCYì€H²˜ñšÁŸ¿yr?¢Q%T‡•Ñ±á”µ\r—›Þ¨XudIÛ½¼Ç²Hµì_žjH%¨Á„ýK–5i–w}†¸ÕJ©¨I6ðï¡¢É€HµzÂM2jQÑ.¾‚åµý_ßM;Í5eÑ|¼áë—MÂŒ‰²<òþºHµ:<{VHÐNk(@[cï_2,0Ö›¶:\n`‡‘cÅ¼‘*Y¤ºúBŠ:H¶ÖÛš±!þµ™ö}|ÿÔ«¨b½5°5\0‡ä†]Uzýl\r«3ª=œL\0[Š9­(úNÃÂdÀH¶Ö_©´{! EòÞH»ÝžÍ©WäðVk [x×j@á¡çß»dídLrCm§¼Îoâåç€H¶è\nH¶[Â×?#M.Pi¼3¯ššE©”êµ$uQJ:ÅîD9g\'b†˜Ãó»!U¥MP€H¶¡+,ù»n%ùï+\'Ø]Ã!	`ÊU¯üæ³¢šÀ.laºò¹\ná‡ûOe\Z×9ZF0H´ÊÒÁY*óFŒÞ8î6*ÆÝ‹\Z8Å¡Ù_ÄÈ‘±_¶°N\'-ZR—ø2±$ºûÐ©Y«²¸ÐH®ÅÂ!Ùå»,™Ž§Ì¡ß{bY!9©—W*{Ü°Ò›cÜ‡‹í©³àÛªMž-•šêÚàHª±²³&v(hÔ\r©\'æT°5w#è\"OÑÐÑÔ½Ú€ kÁ-™ÂH\rp‰–%(•ÀH§Cÿs’´3 µš³H´ ‰£öÎ´3÷õù¡ƒ}£ûsJ¸0°^øOøŠBÀÛPÂ€H£«Z`Ãž§Q\nwÙ#M‡ÚU\Z»-çc.‰ž¹ZQ½¶–	½ip@Öèâ8Y€HŒ§OK¿ªâj±]¿0@g„åÌq³}I¿-æ­%˜aûÂ¨çûzÔ€H‹Ä¥wãf–»{n‹¼*ò[ž€@bëF¾…Â+<í<\ZNŸÌú7\ZL€HŠD®ÍQàÀÊN³}ËíI¢kB¨_ïµ,d¥²ç!¸žóúÃB©\'vGG¡M›_iÀH‰…B\\êâµ)3MôKð;î(•±%bæ¬Üö;cŠroÔá÷¾=INàH‰\nŒ›:Q©ó<\"Yãb¶öÃú¸K~\0!®_£ùfø‚ˆà§ê›ÝH+„Š·°„\nó\rvÞå¬D©ˆÞ¥®av0N…[×¢™ÐH)›ù}v•‡Ø—_”pùœZH¾Ý„cíyìq0Vh¬H\'»gÆ÷ÓFy*hÉ$;Rdrs³÷]h\\ñÖtîÞÛÝ1ÙxF ¼HH\'³Ð—\ZÁM—CKz˜.þ|\\Õ‡?Iz³Ó±Ìu¤/ù´n°D&B H\'³!3ýŸRëþ¡¼ªÆL¸RU1\"ãÒ²ôDÑ,|.áì4šÖH\'³!hþ¶<YW¤,.ózì6UåcýG²sARŒ;åTH\'´Öw”µ\\‘‡4h\0Ç²ƒ6³ã÷YÍ{³¤ÕH%‹m†õ€f[QŠ$¢uŽhäÉ+0„5°’Ì¸zìÃö	á[0rNH%ì¬¨=Gø3\r$m]Ù˜™Ÿäºh‹_-›FK&ÊÆ¼K[H$Ô©\Z`¾üo-ÕëÖMyà;5Ïäò“8IÇ£BH\"/Å¾02°Bß`cé¡\"0þ¥\"”ÛEÊ–üJ2(© H$&jådøÙã xHSÁa}üjdßpMæºH\"ÑQçÉFºšŽ¸éÑ¬ñG+‰/¸RëÝ\r§-#\\œ\\èˆ¿\0œChH*¦1ÌTÌ}éå“ªi,ÝsØ/Vn/ƒß³Ú“6YŸH!ù“mnô1$ûQ:Õ #Îs¥êxý#aý@ËrË@^pHoU…Ë¯Wþõª*@Ï ½é±Í“kÂ:™F‚’\n\0Y· }H!Ï¬Mè¤³—CQ÷H„·¿‹ž14…kƒK56¸@3¨?ÂÝ‹€Hrí¤Jsæå!M€šÉ*nuôâeptâEØœwû`XH!ÐñsŽí”\nVØšº,u:<2¦$šù$lNå×)­‡	”[ïýŒ€H!Ï€Ô£šfc‘ÚÝ@‹!X:£šÞþ~œÝìO Hy‰¹:¼þ«H\"cvØœ2ùkLI´ú\ròê¨ú¬2(«¹êùÝT[ikÇ;ÃZä’ÀH!ù„þI“æcæÃÍØXáüp‘îÁS1ÿú`e˜nT’äˆùtDOUÜÀH!ù•%S-F{êïW\0?y5Ej ¯û6x^ðä ?´†˜mv¦îàH!ù”ŸÞu~<†ØöYÑÌãiñ2@_Òr$Ö9i:™Œ:Ì6±H!ù”Œ†´âÈT¦w|ÚáœãAÐÝˆŒÑ“2AÊíK`$ÑÑÓ€H!ù”3»ß–¥ø}zøº	Ï™\rEPðñ\r¥fwµþ–ƒlÊz¯`H!ª0YN¼JT°k…Ë¾KKK3¶¯6ŽôIO|Ê˜¡àHÊ=±Õü:›dbTFŸà¢ñæã†¥ãD¢>ÓÀÈ59â HÔŠŸƒþ.i¶Ób£õT	õ¯õ$ær>M}v-\'òZ+†J]¼c÷îOAÀHÇ`3¥#Ñ›vßžÔS³Hƒf¸ð—•iH<rÉûb\'¬ÈÐH!Ð‡ŠS K>Ìw)jˆËØÕ;G¹Á/?†m2H!ùrHM9Æô[ÕÊÊzŠõã‹ç\Zw[Òëk©\'¶èÉ*€','Pai.opus'),
(40,'Â¿puedo ir a baÃ±o?','Â¿Sakiwangi ringapa ispadiruma?','2022-12-051445429342231baÃ±o.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0({\0\0\0\0\0\0\0\0\0\0\0\0ôÝ{e#)(&#$%\'\"*\" &%\"#&\"%\" $)\"%!&$!#\' \'#\'% \'%#$\"\'\" \'(\'$#!&46.2)9.131*+,74-231272+//356363/*/1713.0*HäÁ6ìÅ€HÚ|øÇ\0l€fuI´¨õvpH\n×;°ëFdÍAyå\rÔõ[£7?PÓ<]Œ7Äd½ðÎ H†deú„ès:c¡/Ò:yy¤ZÂØË0òd¼»§«ðé\0„PáŠw’H†ª âØ\'Ô$¹”y“¶ŽÚÊ¨¢ülD)þž$!>ZÃ,H…Oæ‰ÿRÎ…žß7•®ñìÍÁwmË$Ì2×Í»ëFäëßàH»wy%)zÑºÙ0âq¹¸x¯ØŠãÿ®ÑÙ6ZÒ7õÎHå·Å$ôùòM³(çÓZZe£PÃqÝkS\"›ãjVLÛ`HÊTñh÷ù#!“Âàa¢WÑV“^¹+%2:Åá—®hþÓa€HàeZÈGëäJÔ¨˜¤bxº™;¦›§\ræ¿p_‹Å/8„½-HÊÉ¶[ŽšŠHÒñ\0ÖªÝBÖ-¥›K®ÄXƒH	1Í{X?+$CÑd7ïçY81Bð”»É\'Ca15žtòS¯G€H!ï³†É‚U@š†j$ÿrÅè(;Mt$0„ß`×>@2€H!ïÉÀÆN¥ ló\'Ó7Úá\"{Âì…z}rB«H!ÐgiYÀ0…‡ggàÇÏÁ\ZÊ7†è–DQî‹ybÚAi6ß·ô€H!öërÄã|fL›³~%Ø5ûëÆDf¢¬ƒ·¥[Œ°¯æH!ÏXª@‚\0©\'ý²ðöî3P)¸íÝ¼,&ä¡¡xàƒÀH!ÐÄe[RËÜ¦„b²\0ü®(e-îC\'5ûÌÂ?ÊÿïÔ™ˆèHŸñõIÔß8‚ý¹|h&3yç–<¨.!6H\"b÷ Xla2öy‘£ è-Òà}þQkzö‚mÒ\ZÃ2	u H\"aƒ¯¸7~yâàØCá£/¶+áxhŸa2)åådH!öïgDþýiÆÚ£Ä/Ñž-ÄÎyÆüãÇOƒëkñš \Z(gH\"e¨²–Y©g„F¶E–ÀÑ˜¡Ñn!\n€H\"ñd‰äâP´ŸTÜ©Djð£©¼MvY¤á!8û@H%(ð› øž.€iÑGGúÄÍNO ¢7?Ó	ó€H$ôMW¼\0&ƒ$nc!n)k7`Ú›ŠX¶I5u*_³“MÃ H%ÌZ\"-|<ï=Å“?×;¬KDWôÊ&‚L©`y‰ûêÁŠË5Ÿ|ãÎH%*e¡ÌgU˜’‡¤ù@æØÃµö‰R‚ÙÖ>LôÐ3`H’Ê¼\'pmN‹ëþ.f*H‘õWÊk9À Tü´ür€H\'ÅLEÁ<8i¤hj3ór]d~—Ò€ŒŸ¬HH\'‡¸eïâjð÷ñÙ¤Ö‘\'$ËŠ,0Ú®ÞdH$š)àgªy0} £ówëÄw<ªèå‘Y<or¸XH!ÏL,ÖD%;Ó¡%.‰‰€÷•q$¤•Th$(Á¹LiuH„< ÿ7×£UÉ¾€´¹ì®	ôìì:°w¢Û<ˆ8ŽAò$QHZ,êiêÁÉH[dËq-Kün‹èŠ3Wî¥i¾æôŠH¸‰;Õ¸m¶B¿¶ñ.\ZI¡\\\0ð*ÇŽoõ¢rÜwPH$ôM™ÏV~þ	¹•1K­vWÆ/ù•žüžÍ>z•¯q0Ãß°ÁîCðH%|jÒï¥ÒÂÖ‚Ñ2JMmâ8=oüÀ×”d7pH¾¡ˆ™	!ÐY¨1ZW°ÁU`ÖËw`ƒÍ~¤Br	í‚¬Q0H\'›6’ëôt‹#y¶Âbg\0ÑÑ…\0ÏZƒ…nÿ·;ÿíLH\'d`1Íoü}Ë,ì.Y÷(Ùï™˜°ÉJ¿ûCM\Z:eÔKaÊX€H%ïÎH‚«¼pÚßgd-ôÿ2ºVqI„†Ëì¶–vD!ìAÀHî?ÀhK‘Œ`›¾DÒÀ‚Ãá…ªMÜ]^»HHC\0P*_‹£jæ><6\";%Ô®3NsŒÐDÿcÈ–bÑ®	ùH%9­o©k…û­Ÿãe“Ú•%ÌˆuÃ‰2!bWÝ©×F¶/H„ÙlÝÅ„6U<»¦4¿àXÑ‚ Žøëü¤ßª	\\í€HÇÁÓaa¸Óñ‘4ÓÑ|ªµµzp­îÙÂ­4ñ¦YŒä¥ŒH\'‰ç\r¡á÷0ó„ž2_“ñ(ß+£ãnD€A*@cz±úH$ô)4<J¤ókEýdHöeH—ã$ô§9`Ä6< }”NìShH%*bõ>[‘ëLôuÁÿÕÂ¤wÜH‰È†:2*§Úæ4¯TÆH$ÔWË²P,Vn¨{_jã‰=ÅßBÅ\\Ê€H!ï¼àø™åÂ¶ÎVL+¼¦ Ž¶–~n`°çÄ­71$¤Y2\nLH\"1¯ØUŠËn¦4Â¿Ë7ñdú`(„þ Ê¯çm˜í{H?My]ÃH$ôM	ü;6-ý^w¼Â«”Ÿ·¦b÷1Ù>²ŽüÝ•·7:èµ¯l>ˆH%(Ü^iÕ/Ó/õÝuáó<oºÜœi­1?Y¥Z6ì:²H%ë•ù×1æ6±}Á‚z/é!ììŸ,æ…®]<d8PH%*aÎ›Ío£HYÛè:^ÌííKHèÊ®iøÁ;X´H%Î9|üQ@ rö?†ý«:‰ui¶²ÒÁæÿ\rv©(TH%³=±Øt …g]L«áPKRœ¤œÚhG÷¨,Áw€H%Œ•Á|Ü¡³î@!×µ^‰­ÁÓ¹”$)AL-^rÆˆoZ³  Hˆî :ó™âúåâ×ÖXy¡Š){uGg%eöA¤f\rA>+³QµÑ]ªœd¢K23>£ƒ`H‹þh›ç”…Òlqå÷…XÇË°XÐ&FÍ,1<ëßTÑ_½—’\rìþJ>5k`¹ƒ²ï° H9½®w	þO!»ü\"{Åû2± ÷­@Çå—ë×›žþ0ü/K_¢|M%°H87Á .Œïƒa‘Pï˜aS2`Á°øl]ôš\'Â¥ô-–Îš–éŸ¬c!ÅÙŠ‹ÛÀH‚¾1^GÚlHoïÚuÎÃûÕdìà1.!¯\0žšºìŠô?;rÜHªö@ã±r„À™Où1Ûö”6™:ºqÀªIyZ Ë)É) óbÛjè™(*¦¶ÝJŒÌ¬\nÌŠ1H©ÓR°aKØ[¾~‚\0uÐB@AÍ}²û[@ûHq¦b­xnþ¥náqCÜXuH¬Ÿ¶œÀ„Œß†¯§HÃ¼ã½•¯hwí/[\Z¦ÒÄ\0+”†IrU¼Ýµ9ôå¹»(H£N¬ox‡æH-¦O¨«ò‘²É·ñxœø§–ç<ÎÒüÏ-Ž+ë—Íôòà5•Or»[@Hœjq0`Úi~†žlƒªFr¤]\Z}Û/ÇŸD”[\"¼:¢:8&é!ò¶±ý®œ€H‰tYÒuMüN2`Kaõ‰5;1OM0(òÂ¨º›S»z\\!ˆ2¥hŽ£1ÀHˆ·ˆ›eÄü¾M­\nnyè6¬tÄf~õçÜûf®YF;!\ra9¸ôÑøH‚ê\'Nv»Zf3|ÀîoO;£äÊ]GkÕ=Tú†®2ƒîSÿÉÖ;	Á¢«ðHƒVMÍ A™†¶—=ËoñHI¬F…yýˆp·M*úYÍê.½Bc(ÿ­£tàë†\0\\ä)S›¿«û€H§‰5k´’ÓVê<r¢«üŽKì È­P4æ-—–ubt/þ/Ö†‡/”öÉtÎl›®Û¹÷€H£Àû9ÒwJ¼¡ƒÿjºé~‹,\'>·¨<îc›Uñ†Ý(³¦‘Ú)Î˜€H¢PÓ††ŒC¤T®>:vÅT.IhjŒ¯…ƒ…º~¿qÍdúŸ[²´æŠŸ|€HŸ‰9q½K«Z€wz5}×@Œ\r»vÇÃ™~·Pìñ¾u\rvŒvÊ¦=q_’›-Á?Hœ‘úÏÌ\"²¢÷œ|m>[¡#Õ­\'Yá\ZQr““uî¼à -èvõ»?¾£ÂHœ©ü¡v£|îì=¯Ë&±Ä\n4MÈ=?ÅÍîA&¿þb»9÷ŽŠ_ÌfÿL=â°H¢ú\ZÈ!I§]nþ€a>,NöïgÜ¾\"i¯etz”]ÏPym¥=\'%Úé×¥tmŽ€÷6cdýÎ<H¨nH¡¾êÒÑs‘&ý«¡™:;ÂZºU…mŸÿð”½Ñ?)÷×“_Ów÷?¡)½øH«]ÖA¶Ð¾7sÚØV>kv@aJñŒíã?¼L	 SÏa¶Àzm¹¬yX¶LH®°÷)‚CQDÙËYˆnÞÐŒ™†ªQ±±¹±1^Í	0]põ\Z®†ûÌ{zH®a·œeZ`XóX‘h°-ñ;2Ã•‰r®ÁJ®í¤`re-PöbŠZ\'|â•‘€Hª¦D5Œ±F@pçÆÒn°R›ÊÎQ·Òføª¦^ù\Z¤ó|tû°Gžæ?Uöo½õÜH¢(–ùpyIEÚN3úL[°á*‘pÝÜO”[tæØêŠRò‘¤A4\0èNiŸ?MH¡9×\'h\'ÁCÓ{ªä?üX(Ab£WÛLõUÚ”ræ™ŒOÆ˜T—†ÓðüöŸWYåÌxH ÒéhyÄùùƒbv¨}÷£ªq—¢ þ,7:ÚÏÐµð¢Z¼î0xÉ& Ã6FfAH©\\gÌ™LüùinÓ’’¦äµ»u à†ê+ï§âéÃüâƒõÑÝg6at×¬À^Î(ÚÕÊa·°H¦Óöüt’µe0:kHºE9`ÃÍO%È›àV:HóÓd-œ&	6b¾Ò¥p+‹ß¤\0çTH«\\c8ÝŸI%M™²ôwé¬¤FÒÑïÅù\n?¨qŸ5¯h¶Ò;Ñj·r^1‰0ï¢ÁH¬¤º_U¿È/¾Ä‘ë¯G?\\»’?Ù-¿Tb‹˜S¤ µÖÔ`1Ò`Hª¬\'*>T^ó—@ûùû ^×¿‹¶gªÖ	§Éã”Mïû€\rk˜›kÖK¢@H©›LMÃÊÁÔ5æª,t?O¸ë}K¶dÕÅ¦­¸¹C*MàB¥*\Z{–lNž­åéÍHª\'.&šò9Ñ3Óäôµ“ù’»<†#O=£Z7›î,O™	¼9—>völ.à|&øH«u°ês•š.‡öû7Y_Ê\Z›M’TFŒwµl=¥.GœÄª	ûíSv´H¦_4îÉ‡ÇpK0¼K¼ˆÔ°î:µ1où›óÙø›Z¶GeWÒ|õn®^ÌRÍÞ~H¦U)!•TY“I­+H§.á”sñ9“Vï¤*–8ëb?‚XÒ›ÌúåÒ¦ÃH¨bo¤•}üãÈw½2¤s-_¯Ÿ²ãµ‡ÿACÖÇP+X”\'¡¶K©y_Ä¤k¨_€H©cjÜ’•eikè©ˆŸ¢t®i\0p¥¤šÍ„Q¶v€*À0iœe`OggS\0\0è×\0\0\0\0\0\0\0\0\0\0\0\0óŽ]0-03:6-1*-00.($\"/1-)-292,.-+27;+++!!123.46:,!.+5.75262*+,)+-166448$$%\"!$\"($)\'-\'(\'%)\"$$*%\"%(H¥ñ·”ÇU¸;i{t[RÈ_Ø‚pç’xÉ«9\'¹RetxÜEEÇ%Äò²EÐH¢\"WáÇVÌ4àvLÙè“—Ö8w\0ñV·YS†O¬X¯JoÒ.m•€H Ð²å#Ÿ:ÍõB`\0÷4<¡¬ÈÊN@=V¿Œkã™2æFD‘ªÖwý¸TÞH¬÷kE®Wog2Ì7=‚¼1åÐy[ô1=_–.oßÊÏÏêm¶†»yCì¥g@ H£íBÇ¢ßŒæÄ<.23uW{ÙÎ£íJð3‘Î6ä+y¥ ‚Ò;»¼ŽâÄ„6aúquþd6ÄH«ïŽÆ0ù19€ëÖVÈ‹ôÜ_eþÖ¨,–U¶–ÅÕv—b`\\-uî¥‹ Oñ¹œ\"½OZHµãàÎU¼¿§þ™—±M_žy\ZëHœ`¤æqÂ÷…ùÿˆßi\\ H³=lÏ*ó|ÿª…˜a½Ckí­p…yú#³€ÿQßæÏUa\'lVÅC£\"ìT¢ð•º,@H±ÁçÄéŒ\\	Ü_WZÕ‚dc\néIP×ã‹‡V“:ÏÌ¡ÀÐöHH¯­à7Wò_‡ç´P1qÑ6âá(0ü¼ãì ýºØ—)DXýÏa?2H¥Ø£Ä¡§±ÿØW=™ÄvÑÚ¥Ó|6ëÿÄEÖ,ÌÕ8¼¢-äâY9Gr÷HnjNAÑ€g‘£U„ZC|I*Cè¾	mDŠ«\n¯¹„¶dòy<Øô>4VBi€H›ô«¥ZàJ+ÓYßòHMzzeáðsÒ!<œï5Ž¨¼íæÛ”ÈësîƒèÌzù%H‰.Çºaòø9l«ê(äÜ¾m‡`\'dfrLƒ!yû~®üIH,Ø]\"úy½«þ•é¹©œž†á«øó~\0ZÚNRw8n —MÐH+±ë[Æ:Šêªbäh8˜–ØfÐXÂº÷$Õ”3=ÿ­(H‚•S÷X1ÈÃ¬ü‘ÄÞ©„‹,ð½µø#NõÏ~œHaÔ˜½€’¸‘H¥1LuÌTöç¸”±–ï`J«!š‡žÚä$»¹NîŸ7YxûKDk*ƒªÖƒ®¡{„H¦eûg)+ðÆU5$üj40K}¦þ>LèôÌôôûKäÏ·­fÌ±ÔTH¦kÙ\\v/¢Õ—çâ•$UR,.\'ÿœI­Î–\\6s^‚\0¹aïƒ×H¦kÓepî6»qGi}\"šåzýxÅTO½šå£<žE•û­Ä›µà\rÞeÓõïH§Õ4a_\0õ«mÅºÑù	3Yc à×•$¡ÁF¼KB¾†ÞÂ\"lµËÚšÏm;VH¥ú¯‡sG¹¡´bîàÑS›³ÿ/³ø¾‡íLR<b>ÆäÆÂW·Yÿé:8ò:_–í\\”J‹ÆH¾m~\'õžD€ŸËñ—©ãå EÈèM,öÞŒì+:žQç…Ül-ÀpÒ¨°Oš€Hƒ§:‹ÀR:n~PÐ~y¾¿Û¢¶D\n³ZÍ«©]‘üK»& -yäH‚Flñ“‘¸0Ó¯iv8tÉ>8(—èdU°¥P91F<í6Ô´L\"\\ZÐõéŠ`H‚‚÷]£GvÁœÅT´ÂÎ\'Ö\Zï¤ºg0„M;§¬™5®Óª”Ã½¼‹PH¤øÃ„µJ©71ÿœlMÄ#:Svõ©¹-AšXƒÂ¶Qm!e»|ðàH¢žôæ3à\\Ï‹a˜|Î*2W=Ûg—r­iD¶4Ø\ra¡É™¨A¸ä€T:£ëá`H¥‰¯}B„gòÔ¾ÿJç AFY~É­ÚŸ,‡¨ÒÒzMšº´³IŸÀAíÿcRQ9Æ+-ˆH¨oQaì!+1F<J»Moì´jGqôåNáMU,D»|…LËŽ#1{\0§žT»Ãz	ðž¢mWð¶\\ç4¤Hƒã{Ã·2Š#L0Ä+ýe@Iïëæ0ØýPÍ~«®õ§;aíèž€H’\n«uv[~iÆ\\5uÓ‰µbZ_g¸\\:ú	véF\\öÆEÃø€H¤G¡ž@™MÉäÿ°	DA}£“-ü„i±çea°v h¬5\n’0q5ÀH7Óu¯®Që­ºïÁ³WÃïÄa8Ò¨ë\ZÍýÀH(€Hú:\0$å/×Hcc7Ë¼ù‰cËªõÿ÷i0H-5ëf\ZrÑÞ4µÔ^8yÁõ^ÞôŒ\rŸ{‰lH)Èu(åÜ9ÿJ,ÿ€qTÀ\'û–82É»0H‚l$\Z^Óƒ\nB%\\ÓßîBñuÍo\ro7naîò&-%líl¾…ýÛh°`8=@H£ßfåÕ ey0\Z‚ÏPò¸Éâ€:Á¢ÿ‡ë ðó¸k>5¬¡Ï-ŒG_ L H¤B¬8‘*‡cˆ±lÍ[÷ž…)n|‡©Ë”’çüdv¨²l¦{7·TbÝû²ÅJ­H¦ÌBM¡ØôÅƒžÀ&=è2`\nÙ³äÛÿ¿sÆ5Ž\"w¥Ã÷wdÕ \'“]3àH§‰_¤‘RnšlÖgŒV|«Õ[÷ŽLŒvÛO6+³èô¤à`âÀkX¬\rëµ’2hpH¤±b\\ç )†ÊòÁS]„†€¡ºÌŒÔœ>ÿ†Ô¿uÌŽx¾´³-(-ÂåPü6ÑvF@H¤BI\0óAøý™¸·úöaéIÕ’ S¶Û7êù}(‹N€\nR%bÏjsŠ³š\nß$=fEPÿ5³Ð‡ú4H©wPÑÏfË\rÞ{ê×JîˆEÛ¬C…ˆ¦h`:¤D½b5Ž…o¼øu$H©a™•H\\†«¦­<HÆT\\f ÖSƒÔM¶>&·÷S H§V1Î”¨u·\nÝëÎ“î€‘Ô¥ŠÙÐÊyd8‘Ü	~rka~LbÓÜ`ÈH¥\"ÈÝ\nn¿Y²q¯äzÈ‘	Öfå¸Ö¸n]Î°ûþ>ã‡—@3H¥Qr$\'€_ì%X>c˜Òülª}°\0(Å#õ,–..ˆs¨3½8âD-\nG›Ð›J¤Ìó@H§DØ*þ‡Ë‘Ç€•ˆ+˜ïPeéÞR³¼úŒÙÿYK,³®ó>\"Ý…ÅQvèH£Á¹Dô­ÒÈ1ËíÄ€¹VmGæ[Êþ¢\'êìJøX€¶j¯Ÿß†ƒ˜œä·å®ÏøÌH¤ÿ–OŸÐ—¼óú´%;&6Æh”D?ç0ØùÑý2æN}S‚ëÃøé¬r$5ºôÕxkaÊ@H£b’ÕoÌ)øK@m&€«Teà‹¸›oö×áP_+çJã S™¥RÛÜ«%ÜoÊœ<H¡Z‘¥56íòŒ%§«*Ç8S0\0HáY¯wý¿”4^9$õõ—À¥\rgÚÔ…Ìšâ‹b52ìH¢E¯\"áEÏBÓ9(P¤G0=\0‹ê~G &Uë&Â€=­[¨0ã¦v5É©€Öqgg%Hž·û£nÓõÔZ¼Ma°óc#‡ù7Êê\0”ì3¨	#øtd(îøTHi¦Ôp\0ºÖZ £²ö­’ÃtKîzøËÔôuš†ù¥U%¤Év{GÝÅ7ÃÕØHo\r9•\Z#2¸f«$êq\Z¹åÝKv·b¼Í¸ÅÓSMÏœÓ™Ììþ9ÞH`%•>ÖÝ*îì­B†íTg›/DSêUw?T3%šRÛ“pñ¦à¯Hœ“ºné°ñxHþw.˜ÜÉ¿Ñ\0:Óöª!¤$º‚ÓØ•èÂSA6{“$•½PÀHœ»DÕ¢õwÓàþø“Øh˜\ZáL2îæ’QîÅ%£¸oøP†P;t‡XH¨á|•žT[Ë¤’‘Ý€A.T«¯¡~!¢»ªÎÖÓÊ]‚S³„Ö¥Úôóg5àÀH¥3½¢ú$™Ìþbœ4Æ–Óì©×6ÓJ×	ª§hÚ¿ü·ËS|ê”UßçwNíwqºjHñH¦”Fƒ?àâÔ¡Qf:ï3ÏbõFÑjOZÝË_ƒ$m#s’­Š$jtlSR~FèÁë,H©Ê2ã|ö¾½p¿·LuþÉÁ%<rBý,„|J‰­prøŽ)\Z†kñ[«E2ƒ?@H§.O½ßˆ5wG@q¨4bÌlµÂ]I~7‡÷íøRÕÐ(´|wÿ¢Óï4â2È\"F€H¢Mr¦—ÒøoTÖVH*7&¤·”¼ªÇ&>q*¬Ë{2º€Ÿg&†¼º«¡ËðHŠUÞé‡{™‘m:~¦SQàŠ!Ú”,w»f#uÄ_x]H¿ÀkÌ_sŠô8<&ÑRËÊ{6ù”Ív€6¶3¢eT*¥H*ï7ã—.žÿµ…_©¬èµ\0ËJ¬èp×ÅƒQkIp wá”H$õUÃ5“³æ;™IKÐ¨@½PÓºª-p\Zƒ“/çCJ£w/H%v¶‹ÒÖO!\0-ÚIÉñˆ[ìÅ»¹.>h[H$µóÙôµ¨¨Ú« 8>>ET ×.`&Q»ä¶c¯ˆH!ïø	Õç¡ð”2÷œÈ‰×ÄÏà[÷‹jÐ)¨H!öÝñ3s‘`=ÈèÍÎäãu®r¸	½P2„õIÚ‘í\ZÊàHéJ½ÿ$Á–Åç¸.em‰Ó‚àW8Wvé‡L\\B´H\"t\'ÿ½m†eÄW—|ŸÓoäNë7ÑYApO)¡tÅYØš·L\Z×aH%VÀy­49b_*¼¥>­{;}WwÑÓ»~n½?Š\'#|vºHH\'ØA\'ŸØåó9}íjLT<¢ã7¯Zîeó¯ý€¤þ­–½:Kð3PS½ò4ÆH)vÅå\"ÅåYU$…½f8çL \'\0ÒæyGk¯`ƒö›À9ÇE8(€H)¿œ¿Óã‹ü—)+%-Øær4žä›7-´†ÊƒÓÏ«žÔ¡ìÝÍñ(pH+–RÅágý1$!iïd´ñÇ–p+¡½Ÿžq9„¥ ‘ê/¥H@á2MHC¹öeðI§§‰	Üž0\r.ë-T\0<pH+É<™u™šÛÜdrEdÈ0Tã#æ\Z‘gšŒ¶-iš²×=Ô90H-G*-øWÓÓzfNúg\\£A¸ü@gŒ4“Mv(8H-uÉÈ…z×ô»EÎŒ·.Î3ç;c)áš¦ÒM–zoÅÃÐH-~íEôT=&!_ixOãìÍ\nÖz©\rf±€YÀÜG\"ZeôH-Oãå—h]RaÐ	<-kî5t¦÷Êªr?Ž”AnÖy½ú\0·XŽ£õŸH-è}ÛK¶Ë“bG‹ç\0Fõ}W{âB+x›oÞÍ* É»Y&€Hh…x6Ù¿Ø”@ pˆ‘¯ $QïX¦`b±H-bbj­²`ÊÌ´%OÑ0Ò<›<€åÝøZ©œÈÁ‚óH-éJIïçé~­Œ5É¥ëK!¡\0=«Äžs=Ã‰-¯V\ZŽ“5æK3OggS\0\0(ò\0\0\0\0\0\0\0\0\0\0\0\0kY}&\'$\'&\'&H-JÞÑ>B—Ê­‰‚m„“c4üvecßw&°Úrq´à¼H-v,hg¤¿|\r°òáåF®\0>-ûÇÉØÊç5à•°œ…Éñ­H-~Ä+I:?Áà\Záÿ0ô[üÜ\\B¢r}²ÜnÄfk H-g¾z˜[:84ONCcV©¬ä5f…7ä8á´m\Z¿\\e€H+ƒíÎ‘côG2üŸJ¤pŽ§eôäQP½×Ï^¥ä~’H+–¸~(/ç§ë36\nQðha¨oNŽ›û½½ÌÙ—½!,v@H+¾¸HÞ„¹\0ÔŒœæ³²Ø©#\\è}ÓÎ;ÚÿáAßóÊë×','sakiwangi ringapa ispadiruma.opus'),
(41,'Â¿puedes repetirlo porfavor?','Â¿Munangi ikuti ninga dius manda?','2022-12-051445533927142repetir.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0({\0\0\0\0\0\0\0\0\0\0\0\0ã@]Üe%$\'%\'((#$\"#$\")%*1\'+%$#$(%$\"(%($)(\"+$\'&((\")))&\'%\'&\'&&$\"%\'\"#%&++)$&&-*-*86.09.054512,.0:-((+356762.HäÁ6ìÅ€HÛ~œˆ5z[:õ†Ò›0H\nÖµ€¨Þ;ˆÝÁ+	6&Û† ¥¼ó÷H†`Ï£ªüƒA\Z³¹­°Û|ú¥L•ïLÙÃ‰pW¡«+üŒ]´€H†‹1kÏôèî¨þHÙ1ÓB˜ªGÀŒÄZK–kÖvcVt©y¾€H}W2?ÎèÀ* TRŸrÐ¤«a6µ®Ž\nè£Y\"Ï”šlþH»eLg\Z…Ù–kÍÍÕ•$\rŸ¹³ÝÎbã–í…Æ|ÊýÄOÀH†àEi²\0]ßèU®­žpgo½ÏN@‚ãÒ“_è$^ù±<CUHÞÕ¼]ÂÑ¥ã©¡¹éKd<ì:µýÌ73§ß¦FŠ›6k,lÖôHÆë§íçL0.îžå@MŽS¢T‰ÚÞ	šô‚%ßÞneÙ¦¿èH\"ÖŠF0œHÒ­WX˜=	jp\0a+VRÿF+`_j1\0âH!öÞ]ô¼s°qâ]Î9ð¿YÆØÏ˜Qí\"ábÄi››½0H!Ï(…Íë¤¡`ƒû™Ã$z!7nƒ¶Ÿ·Zµ¯‚ÐpH$)3›Âƒ‡%ÎÜËç¾VìÌ¸Au$„R»=çO¶q¥øH!ÏF‰Ò¶=õÔDØ/7+åÚMwZ°›>*‰‡pYcïäH6‹¶ö»\\ið  ¢kEÐë©F„àúR8ÛX—ÀH%“,&ë[÷µ·«c* ªêÒ®j«/—œÌkÓ×\ZW´ H(§§ic`Û‡nó°ÿ‚¥¦ÐRkl„H\n=%„5dK!$H)Æ´Ø=k ¢uòã9‚†·ÿŸî^ŸVn‹Y¡.B[¤”]*Ÿ°JHÉóßõ4U,ÂJh=œžSê?ãý/}—ñ>×Ž	ùÌ]6)5ÜîeÝÒ-lRÕ+² H*ï\"8ØkwÏ\rÇöLRn«Ôðvsù¤&¢_ŠÉ[®l[¨YÙäH)›æ¨BÄúŒsr`»6·­c­	;# ›1_ )h[¶™vP›Î àH)›æ©¤&¥LƒÂ_èSóu(“S¢Þ„	Âõ4:„g:”H)¥6OaâÎg2`&,ò†ÜIt÷C@Ûû8(+ÑSÊÇH\'­v‚Ñöp›‹Jj•ó­ÜÅ,é\n ïæÅ*Å¾àz½<ÁH%½Ú¯Iü7Äùy”–&5çéFûòï»wf‹ÕÇ„—ßÍÿ9H%)H0îÉ»ZÞå	a=°·äŠÊ†Oš÷R“¾ÖÂ°9(\0*}Î¢H\'šú‡ÏÚÇM´”Õ£dnÑü½Ì²}°\ZÒðH\'»áã‚Ôóœ?{»Sòv>%XŽwí~6¼V(8¬‚Î†5kàH\'€À¥-É<ò}\Z†¾~‹76½æ•™‘…¥òWð¯€y£¸H%9´^2å˜4¢ØajÆâ‡xÒ<•MöØÙØãwž.4H%ìzÚwÏNNsWèr|ËSUL„<|¦º$ \\)e‡T’ªX½0H%*aƒ‘ÁZh¦MÐ‹ûÁ”³BT1QjÂ©åbùú\\J H%»*ñáÁË7ªöçÝP<â•í8Ëˆ\nØ‰Ä	á”´\0©ÆH$ôjƒ¥“›í³¡ô`Ø¬™ñkØW8MÈ1à€ŒÅ€H$ôM@ÛUFž*½x{ŒÍ!¬Õbn¾PÀè¢b§m’T¶ûpzQï-‚v0H%‹k1ÁëŒÞ¸Æ»¯‘À9#ÊjÈ–…à_1F€ší)uÇœÈCœøH%(ÖÌÏÂû²¬,kDÑ›N®™€iQ¡‰[¡¹§FÕ…ÀH$ô…îaqÇ—t‚ÀÞvOƒ_[GaÈ!ë-X^·ù²Î­\"A\"@H%*d ¼‰{ryl8–æÆ6{ÞšýáÞÂ•ŒS¿ë$„õ°H$ô&ßÝÎ¯A\Z*Ó§ê!p¤×Mlƒ8g åÇF“}P®ù}@H%ë‘ø[ˆiŸÎ\rC0M„lQ Ö+Ð\"ß4þ6k@.eâ·¦`H%S1×RZÊ)¿¨y‡×¬„9+6¡Û;¨·ˆ—¼õ°yn+³)8H\'Õrõ>¡O ’Ð+Oó°*;-â‰x€{ƒÞ1;Yq£àÍð@H\'dZŒ+@ò.9L(·[Ðj[ÎJ7Ý÷$xl»-ŒPH%8E¬Î/qËØI`úiº#Ûßiƒ\\£±úœZ~òfÌåºÚ©rs.H%9ž+]\nÖ¤T£Â×ôâÝ#j- qj1õÐ1üi˜}(½òš!  H$õGtŸlû„«Lk”Od«Â€ÐÞO±`JÓ#X`±0W(Ü.QæP… H$ôJ‘¡úî‚,á°‚ô©?¨Õ÷*t2+VÔÛÜPÌ^’»î5¤H%8‡.\r€ßœ\rH\\yC>¦{CçÁ°zéÔ@š‘ì ¥¥3ëD2¶STH%ÂS´³-‡´òµ?cZü‚7¥3n×»(ãSPÑùLª_H%9³ìi`Ç­SÀ€1Î¾\"¡kÁ½y\n#a4]2/ÕÙíG~5¡@H$ôŠÈ&Ç9‡q16Þ«õGÁÍ¥gÂ»æc¥ß:Ž\0\Z{Ó(æVNH$ôIVÉ6X¸ù\ZÔ‚€HÑhàÂwo{[¸†ü¿‰(‚Dû]H&¥ü\0´ðÇF›¿rÓ¹žÀ¦®\'Œ‹¸s[aÖÎ	U¨­j¦ÞH(CÕ¦@ ê(dÊåK$}ôíqñ„\nãF–§í\ráÝØ‡$9Î$ðH\'»øzÏVyÖU¶–x^äw‹÷˜É6`LèÕ¶˜ûû°H(EO†ÓS}?Òù£GNÁ¸N…é\n	âAÃË¹hH\'›8ƒ¬9ð§ñ¶Brƒ8ì¨¿w`,–Mš«+ôˆÁŠ (H\'³\"ØìÂáâ#•Üy/K®]¿³Zî??ÿ·‡/öldò¢· H\'›AfýëZgurŠÌQS¨=?¸·kðË^Ò“ð@§§ðH\'bJ;~¨7{2ú\0xÙõVÞäëþsÙ”<˜ðGn|VH$ôy_Í`AúŸb £_dR2|’s½¼ÌéŠPÑŒ˜à(`H%–Ö¾ðñk]ÊkA^ˆ‹xõÍ’?ô*ô¬šE8,Û‡àH\'»Â_†*ÞrÒxÂWÿ Ä›w*©CmªÅuÐ‡¦¤³ŒÁ<lñ+Áå H\'ÖØöò±iÝð-ŽƒÕ+—\"Pá7qÌ<Ž:æIÿÈ‡ºXÊ.E‘ßÄ¦H)éO2EYÎW»^ãQLÅ¬Î–šg%{à;ñãqÐ,kÖUeÆAEîH+\'ÈŽLš…ò±EW>¥F]PKRê³ã)Ý‡•¬˜‡ã-¸H(M5¸¨:&ux·®ë(K6åš\\1Ðÿ5Q–õ§i0lÓ¸€H)ƒå¶ÜÀÚ§‚Vbîsù‘ë‚ZÝãH&X÷šÉè†!ŠæäÀHDQ¨7Os\n¦GÚÆ4+9ì?ëå=ÙÎÑ_âÛáM|R+Snâ\0ÝÕ-pÁ\"HMÍ’Õ2²ªciÍ`sssŽZšKÞš¾YË¥>¨zõoZÔaûÚµSªâH93b]ªw@K’D›0Àó«ê5£y@õ¡·9lrÔh9–c¸§f&dz«¶`H;¬M’GºÍèVÆv+›`kï\"\r&¥ît5A˜ëËêK¾gi­¤‚œHÜŠ!â›\0ÈwWLs0ºû@Ÿ‹xÇ~dÌ§f<ßcf_szGïm‹øËÊtŽ`F±2šs¿°HlŽÝ¦Øõ?©ã&¼;uNaªÙÓÁV†œ†°áŠ;\\¡~àò›ŒÅx8¼îÃ÷ó~ÿƒH‘BoÄhŸ3Õ¶2:ÕþM=èÏtéuðÙ1è4×…@nMF¿,}¼Giu‰C€âH:CÊföÎ©‚°.ï‘oóP:¿›¹†-G±§÷\'9Î´Ê-ÓUF/Xy$ˆþÕ|HƒQ‚²ŠMùïPfˆ*·³l³mí9Ð,âbŒ}R\0µk	øE@|%¸Tñ¾z’SmÅYVdØ0H³¢ ˜\'AãíáJJ\\‰æÄðà£™šX˜Ã2ÇÓ•eö`ÜÌ°§z›nsH³”­áœý›îGæû Ò<õðG	½Ó„Éê½ÿRïðÑç#Ý‹Ä$ªRÚ’úH±íA¶ÏGr¨ï¿Ûfg¹xuRe¿#^kmg0Z$Ø¾#–â(RÔU/ðí.YÒ²%}½C½H±\\¥zÊ±¸X×Cmä(ÆfSêw*fåŽ9£Ù;LW)ˆã­ÞVzåoç²:?^›ÆgÛ`H£`a~x­¥€’jš%)Øý\"½Ú«n J,š”£Ïún^xjVá_ó­p‡AæcóŒHžFG/VÕ“DR•=K.x^ëŸK•#*~Î¤Z4&°àÖìmÃ’©õK}7¤Hœnïƒ;– 3íw•\'†šù\nv^Ë…÷\'	ô2·Á%ˆåcµT\Z5UV†‚«ˆH‰ƒ\0Üó(û—\0¨XDlÂ!êÑ\rxÝÉ•”1Cú`pÆÓãÂšÄ>pH€íÜíçJÊw}þ9¤–»JÑ!.B\Z¿’2o#}‹Î¶žd)h›	›ÒOöþ²Hƒ(˜ÿáÉuÁpq\r È‘™;:Ã±;ÀûŽÞï¦™Ú>Å®d³^Ý©-¿íAèH©w‚g@ Ù.œ¸Ì‚ý0SUØ2¸qˆ~ÍäÝU”jœ\\±ç¾óõ?\\ÎÌ“™kÂõÙ»Y@H«VZs>]«\Zå:º‚qÍ’vsáUX•lšò;]«G\nóW“´1­¨«OÜH«Ì¦/,6i½†*:!¬h½Vi»ƒšŒC« ¯aÝ¦Š‹ˆ¬”@ê@H¬ÆUÞ¯!MõªSìšC.<ÝA)ÛŽÖš]ÑýXÄ€\n8˜\"¼ƒH©=…qˆŠ¾æà„›g3ÎŒ p†2&Ú.ü˜Íe6$î!ßdIá×H¥ßs˜TpùðÅ¸T4>Vï[¡ñæÖh|§ÚG^‹„áû›$4;yJ÷ç?ß»nuÒ½HŸŽï>WÂÙŸZBN…k£d\nÝ|ò{^É*ÛÏ\rígV¥½ <Q³ÀÈº\\Ô„•übÓPH`èÂvÃtC‰)KˆœÝ¹´hùsK0ä)L¨ü·£Å¿¥¼¹ª±8¡ô°·öÞPg°HæZp#u^9èì@ëã\r@1;qCš\'¾Ê,C7(†ÖJB[Êç\n\r’(þïåEøP¹Y+ŸÈH¥Š°6Cråˆkœ9VÀR#,é®/,HÖ¼xZùMß\'´•{Å\rqÑß§Å¯¨¿¨H«Ó ðž‡¸[/ 8ªtÜˆl2\\ÚÃ-ÕÈb<Eàgê9”QË#£ë^yþy!CH®çUØ—‚Z‘»au¥×wP+Aw±A«oâ - ·ªŽÐ¢kæú{ä(„:ËOggS\0\0èÈ\0\0\0\0\0\0\0\0\0\0\0\0Þã9DY,,0,//1075.*$)(-3-1#%$7<90\"#20/6/10)\'#)7/.#).<<84/+751/(442224.4,86\'*,*100.\'*(192/%2,++&H°Q?¨*\'kËUR8L²ˆýûðœ\nßçÓðøYÏœVTì=åÄÂ0‘ _UÜH°7»+zóôfp|‚ÿÐ²w6cg?»`åmŒØWyã~Eá@RàæapH°9äÒÖÑôÈáš,SG˜ëÓ–®\n?|5óq.AL0iŠ\' hîCˆB?Òx³€H°i	¾€Î£¦T•îZb<b!1Ó/¹Ë¤\'‚b¤•á´ªµ?±ÇQ°”zH¨øß·š8Û«Ž@ë³øV¨±1p¬4‹Âù«Ù×C~oMÄ³`ªÔŽ=a—O,¥‰H¦«q™“¹¢CÈX)ÇÃ]:å“Éë¡×5„õÎö	ÝîÃUÒaÁSCbH¤ª	^ÇÜˆš“{°÷y`\n`ÕÂ^â\\Ã1~=¼:‡ª±,Ø·&‹;”•q3@Z€H¢øI^Ø‹H3kâ§˜_Ó!×¿EÕÃ&øt¿„J)ø¬GÑ…bPBö‚€H¤Yé;L+-~ƒ!„±ñ9AÂ)u”¼ªk°^æ“x¯²In¼æìYsáÙ>Øh¿:ªWÈH­4Ìq·#‡ŸðÒùK‹…|úË,Í®“\r\0€Kr™|(~õæ‘\Z&úÏxå\Z6U­­€H¯0Üg3$Ú¦õ|í7b§S5d”60Š_S}d«\ZìûI«¹XB¼Ñoô¿¸€H°`çf?Þ¡ü‘E\nCYInžïµm˜Ý{0÷ßSÑF6,Áµ®µ‘Rª¬ H°B™°<I%Þæ4zR 7ž\nPƒ²Ð_ØÄ©AC”Ja0ÀH°2W›0†rT†F4FjüŒãèÉÊÏÌ\nVÅvó“ýüR@ØH®«…³Àƒ:ÙƒcoÓkùÖ¼-mH\\‚ÈsUùÐªRÕ¡î¾¿ÂLH¬­b2!¾¼wòëm 52`Ð•(ÉB>6Ì1P]ïiÓ¨½&ôÐ®cÞiæHªîµ&q2Ý©Ì‡nhù¿F~A¬ã¼bi4Ø±•³—ªpÔ×RÏ¢<à`GÎøH¤ ;àÿŒ”„ áùq\'PNhÜÚ\"Uë,ñ*—úóèýï ÕY@p0Òem^Hœj_dc…\'ÒÍ#Ûp-d|6­k—Èœó6×Á§C#hhÚa3Hb¾5Y×l–úÐHÂß@Vÿ†Y°btTå$‘U?ž’ÝZuÃ?M\\¯H+Z—;íRžR¡µ³Ãp—›~Š°JVþªWÔ€ÒU’ä‹­ÐH)Ny„´ÿöØ`êÔµþÂ¬š1:Òé.¥] 6\reÔÐë‰ÀH™kñLó?ö>ÏÍ¯~b0YåžÃj3m¯p«ø@”œozßš†^Ö^»WqÙš!h€H¾ƒŒ,¦¡-”ÖŒÛÜÔºgBº»Gãw”Z3*¥K\0ó·À1–á=åƒ\"«ôÃðm.Z³.”jY%]ßî HªEš\\2LÃ\Z7\0ÁÑ*Õ¯/à‚%û†¦Ž~Â3½µiIå\nz}xÎ„v³úÔÜçà\Zjí]táD‹ôH³·ž$Ž­ô]Ø8\02clh+L]6Á›äÿ‰bD–ÅxÝÌvÈÙ”f}gðH³´åÇ:˜aáë•{ë8€DÚ\"£¦.ê}äc\nï@H³ºµdj)4®¢—»º‡…ÿÂ?FX½%¢î#mgÖ€H³´äåŽix~ÁL¼H¦%* T®UnWÅïmP² dœ”uÅ+” 9¼Ü¶	kÀHµ™´O4Âƒtƒt õ¾6cºÊ5»ôŠð¼ûBH«»\Z Þìô\0Þ“ás¬NH´ê¼ž¾CÑ,é÷%E\'È™Õ™ÇjyWž	ŸÈœÓØÝuV[i9è\'ù£ëJàH±¾ÜvrÏLÝ~í¬ëæ‘ÄU×*Üd›êÕŽµ6¡I|œñÌÂ)´pQ2‚Ä¹Äfž¨H¬[Ò9¢‡¢¥IL²•µÊ~qìé$¸+É’_ÍàaªaN‡Þ+ö«¹¬G%fä˜H£Ozêu˜g\n`–P;ô³ÄÔ˜ŒZÞ¨EyW`Œéù\'¸À–HþB¦ÄÅ¬àH$Wþ• \\W‚³~1JI²7\'NGëÞý-Ç÷ç§D^Ãái»„ ÈQ„“O<H›{]y$9öôdŒNï^á°!¹Š·A%Ç¹0B¢”Íù²CÑÐƒ`H/V7]äÊ…ÿl4¼\0	áæ<¤FI4æ¾OãFxfkzàH.®2Áíf:Ë[´§”Û¾ÂDÏ*÷êØ?&Æ !@>•¼€H€¦RFÀƒ›*MÇþ\\ð{¨v7º(þ’¼+Iêõ$ÙmÓ×QŠ„zó¹ÁH‚Óhó)Ü1´r¦¹paœ\'Ïø‚Ü?ˆUS\0†°þ… aÝt’ÊC—nÄVõbT7^:ÐH°Ùè‘´=Õ\'~\\Æúž­›x¡¥Ê	É–+Á;\râéø%á>ÝD¦PH¬×^Æü X0ŠÒG\næM•½ïêúÿÁžN– X‡Ú4 gÊ‡ïîŠ<ï\Z~H¬é¿Óö\rÆ›I—3Ë;$?ƒAþªù¦A¿dQ,:ÃH¬Ò.ßð•û‰Y;ÀQ¬qÍçPÆŸøw³èÏÞdè­ÆÇz²a¿¬N;€H¬ª®úßà$MHov»8ùUî\"X¥Å$åYK¹ö¸/Ê§K¿Þ§j!x¢]µº|\rH­9OÍÎÕè	ZÎôè;‘WtM|.83Ô¬: @¥êï?ûG/ZpuTÿ@~¢~kë†«Eø¼×O€H®	òº‚Óú5[íaH<ïµ¢6è|Š…´¡‹¸Q<vü<·iSÚž‡Mˆ¿Âõ„.ÇfÐÔzH¾¢¼Jdéç¶i\\ŽÓòG¤iµ—…V‚bõûFQù×^A¤)?\0„5¢-‹\'\0%dQË©”NÖ\'º H¾›76]Ï3”sš×Ð8§âöIÍØª¿aB¦>ªÅð“Òê FwVNˆl|ãÿ9Mc‘@Hyô¦ç>2VôºM)À[Ývwî2oÂûêîk¤é¼õyy[)8¡Ÿ\Z\'¸æ[\Z—{H‹ÖBQÈ°^XŽ¨ä•üði=LˆÓù:™7hÄØ¬8qšáf‡–¸É€H‹˜¥>o^îRó?5ë·‹¡«ÞÐ X|3Ñ4&	Vx	T ÊA«M³¨ð™;ä‹?–;¨H‚³[]´úC7ºÀƒ÷z€!À+¿KXöW]7ÍÌ;ÛÈÿd¡%^ÌÏ9ðj#‹úÀH« M©âPV®ç÷ÆƒQÒ¾	`\"–ŠÿüÝô^\'YÚgää´E`¥·7ØxTûÕpH« bÑxlO˜Œ5á+”x”ßbÖRUDsdsB˜Õžª}ë-ñP®\\ƒy¸H«:‰û.gÙ%@ð@v\'©\0y½°Çû0Ðù£žiºû[ö_ß÷.KàH¨öR\0ì|øv¿<¥ÓÊ§FV°5ˆeÔyb|›q‰âÒâÑ›·µ%!nÌ­ää¥€H¢UÈ\ZÚ·«üâpFXMÄWÿæèl^º1½aXì˜r‰H™ÎCöú`µŠÉ×ÎêØk\"L H¡\r^˜êÇ|LEÃ\ZwË^Ÿ”Ú#ÓÛK÷#Û>ß\Z‚t”Õ‹Y\Z]µÚ¹—.€HŸ„Ôé–$d¢TF~šn®;_l£øöÎ\rÍPaVv3-£‚ÅbÑ<\"U\"ç³ñ’Å(H¦:Ž!O=þ©ÃyxJoKÝ]æ¯ñmÅ/Õ$Jà\"ÿÐ›Øs*U¬¯’©‘¹(ŒØgPH’\ZÙ‚—#‚ïûCobÞAÑš“¢}û¤úp´\nR†!H†²;àÕbÝq^Ê<µ CH’èsƒ@Â	Y™—RëeLx]èIšˆI¯:|Dyi> (.8ŒZ`Hª¿ÿÃñÙ»3¬=²+VM1ù„;¹ ûà¥ì±°c\\M÷áÓ¤¾Ð4	m÷U$^€H§Më™é 3P–çâRwëLf€X?Ž»Œ\'Ö›Æ¶1ô1ß¥gH¥U=¤sìVØ‹V×†—é,±ÿ¨ƒCšgk–«P£qöð,­Ñ¹Þšš0¿šãÝÞÛ¶ÛÚIžH¤Š%â²Ê²³€šTõo®¯~6³b†*h¿MÂ¾Àš2d¶’qâÓ\ZMˆÒŸ¹)›3Úõ&>»˜H6NÉD˜×ã_¾S7¹Ð~§7c‡¤ñÎu.g™¶l‡ÝH]U²um^›ärºkÃ:ÔªûÐ MƒTˆ}|ÔÚ“¤F(‘\rLÇÐHƒ=%k²ÈlÁG#ŠòìJa_xx´u®ü®fFqw*R2¡É08H’{\ZÒÌ¿	<)IÅ5I\\R±ëh½ð3ÞŒtËsxw¼­W4f[Ç>2Hƒ‰®¡á€I¿d\0\"aÇ*çúÑÂhÂ+ãû 9clàC«.Ä—ÁŠ^×{*3è€H«lÏ°žWöv»h+¿|ŽÄô}½=ÔÏsn=WE¨Z£È\'û;È>G.øH¨ô\r§êí^ø•kóŸ`?Æ±Oz—%¤zÕi›¤kñIƒ-šºI^{BóôðH¤™Ó%ë^&Yåšn\n‹;…>œl¥? vÂ[ðxÛ€ûs¿vÅ9ŠBGbµÙ`HŸ‘PTÊä`©5qç—kA‘}AÊ³Œª\r‘˜)êT9´Ø÷Út[4Hž|Ÿ»¼„†þ‰{¥VRCm_¿’†\\Vb”šâo3UÑþ¡=ýgV‡0Ho2ŽZx	dÌôH)\r,|¦oŽÓ=9.¤…²ÌÙÌ<`ä6ƒ¸³·XH«©ÞZ?ëÏ¿¨Ú¿Ä’í¡0Ýò•ÝÊÜ¶rD¶ÚòÄâTÂ’JëËûœÑf[/@H¥™Ý«ã~ñçU¢~?óÈëCTZ2óI—·QžSq2M<½íüÔ´Ú3)xì!ÝU•&àH°dÿ	ˆ\rÏ¨Æ¤uË•])	ÝÂƒL{˜¡ÀÕ:†²úÆtDÞB»X‚›>Ûé§fMG¦H°RSÚP}ˆÅƒ	Û0\\©jia5PÑ¶Ó÷DŠ2‘ã-ìýjâ^å÷:jø ‡H°h:*.Õ`v!øEº¬0@Þ>²@½ûËm&„Š¤¢ÓrŒH¯Ì>^[],ë™1ÒÑ]Åþ#¸ÓBƒU–ˆDJÒHª’ö÷éÉŽ‘ri{Ò\Zsÿs«¥…º˜4¦¡°ëÍ„æª\"%`®Ý’çþbH Ïd¢ÕA,8ƒ!¹Ït\n¡©dˆNIëfŸ\\ÝãÙ±9[áŸAK:HœlD<¦¹Ï%>lXjk‹h¾ÝÁÃxJi×]Ö–´\"T7	êÖ¤^íÊAH›{Åœue­ð›4jZïFº¸ä©…Æ–d|¨Ú&§ƒLn5aLÖÐ÷û¬H-@Qp†ž,ò÷ôžxç†¦Žù™ ?Qˆ‡’¯u+E¨(ÌOggS\0\0èO\0\0\0\0\0\0\0\0\0\0\0\0ñ7{Œ$8-7564-+%\"\"\'\"% (\"),,)()+)$(,(\'\"#())H4·2WRÐ&_H–.–)ñþ…u¾kOÈãˆX H‚~:{Ç¦üäU$Ø!›(æ¨ªeX ÔoËWptÅ&¼|Ieó#-ÀŠš2¬#ŽÉ8H¦d®Üþµ“=µôKri†ÄeC	Ì¥`¯ÝÅÔæ)_Ð5_?‰LvÆuálnKuH¦™qJ™ŒNô$&>4ím%Ó|—Ìª”a\Z¼oÖzÊÍlÌrÑx‚°`ú³Ì-kÖÿíe€Hª¶•ÈÒ›FÀWå.Œ!%66¦ä;ÙÊÖ‡{óç\Z 6¦Cì¾”øë\nà¹™Ze°©Hª«=§^ÝM¥„ëÍ.yãô\04;·S¡#Ô“%«²žuó”=Ì§¶ä+ ¦ÝD7yWÐH¥ðò·õ\'£Ý–Í±÷tT—ûBeˆ&žèÌ_lÖá7èš*§_Q\'uƒ¤¼o›pHŒ×±¹€¬’cÕA¢ÓiÛP†ÎúïŸeÇÀ4ó -×í&p„Ý\0À* •`H4dÑÏ­·¢1îH¦È$çÒ?ß%ð\'{=)#È®‹GËÌRMûºáÆ H-âÕltäÖQoÔã”eö©W(dRî6ÛôJçŸbB\'ZGðH*Ü>5¹D6{~~oÈ`X€¶Nz£ÞVþ8Åÿ–9ƒH\'b€®’›§#7§(yI!ôâŠdè&ZKjÍTÃÀ¥H%Å|Ikÿi	:íÒEFŠóP½žñ†¤ 8Z‚ŠŽÜëÝ„€­$€H!öÄîÐ4°sÂøPÁ±&›yC\rî+¤Ü»J\'ÄÀH!2ê\"É‡ÁñBnr´ÙÛ3±ô…*çÁÉRNKÀ7Y÷bHéBÂ«>müI8üWQÞÒ\Zqc>Q‡ì²«YÅ@H\"8gNÀ `Ù\"ó¥ÔS©9øBâEî`Ú®Ñ,×5lM7`!Ï¼ò€H$%Í´’¾kK±¤›ú?U¨3F	ž\\žz§Oòp´3»‡!4H\"ç× ¼ãžp²nˆOû3:‘¥Ô<¥z²Û½¨5îqý%Íâ,ðH\"!\0Õ¨e”ˆzsèšbÛã<El/{@£×énx˜ÜàjÍ‘òf¾9dÓJ\\H%9¶ÊÓö8›”äçMv³V  ¦|3Æw åƒ2!R×çŒÛÂÞ?¢\Z€H%VÅ¯K÷5b´A°ôˆ£ô$¨	÷¼ƒ«ãP_S|ø˜Y mÕ¹ðI¬H\'Å8Šé©ôxñ¦I>Ž@Ýps²\'§XPÑô	‰¾2òt˜ °H\'»6\\j7jFÕ„~0FÐ—Ó_0V~^¬ÛÎ€0aÌýªß*´¯ËuüH(H#ébÊï81iÐXü^:[w¢³ŸH¶žÖ°å§ýw+ñsXø0©RHú“|ëdÿÅelÃöíhÕyg¯”n|µ8ý¨b¡zC‘©Šu3n,H)­û`\\Kzýûi3V}†Ü\"Z‡/-Y“Ó£\\5±èyåËH)®-¤Œª`d÷s\0ü–Óhä¬0&¼z×sèX—ù)AyQq\"ö—€H)ç¿ºX€‡65m[€)¼õºÔGHEÉ.%\\F[†Å¥#zŽ‰±$ÎÖI@H+—ÿÞ¦!;Â¦.Ä?ìtí‰d¬žêO‡{,]äöž€½æ<`H+–ò ]P~WÝñn÷43øqÓ/œù¼w¸ ©å(ù¸ÞmªÐH+–m21âšÂR—²È,K¿Â|XP¨<h¾{šÐIŠàH+–pòx„†\\€ÔTÕ¼‚½$ïJ*‹ˆHð˜³+\'Ç`H)ƒÛ”¯¬8ÛwÝwisFþýý+ó†._ÛØç[Xi¹:¸H)ˆ|\0AÐÆg\'í…1íj¶Ì ß˜sD§48ê\n»Aë0J€;áÌÐ H)¿uõø³ lZÓbRPöqkOk¼ÉÚ€Œ“£˜ætà‘4\nåŸkä','munangi ikuti ninga dius manda.opus'),
(42,'Â¿puedo borrar esto?','Â¿Sakiwangi kaita anchuchingapa?','2022-12-051446118417493borrar.jpg',2,8,'si',NULL,NULL),
(43,'No puedo escuchar','Man uiariwa','2022-12-051446245539324noescuchar.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0?ßaa$)+/#0(\'$\'$(#(\"($*%#++)&!)$&+*\'*%)%%!(#()#%%)!%\"%)9170631)(*:17352--!&&$4;<2781/.2,/)1/:69;/+&HäÁ6ìÅ€Hà,DÂ­É,NU¼ÀH†—ÎÌæuî»õ*G,Ä¹‰?Õ€Îäðy8Žu‚Läén“0H†ý©?Äº¯wt²”kZ DÇ´wH›\"þq¡ºÜ)GÎa1c¸H‡/˜”an6#òé’»ejÂIoI}ýþ•‰†™MOŠ€¢›ÌÅ€ÕH‡J…‹€§óºªÈ:nH1nfÄsºmŒ½[|!Å‚\']ÎúRfÜ	ÿð$*˜}“PHÂÐâ°IÓèÊÃ6^ím‡úÞŒ~¥µzO\0Þi>7@H‡’!4cÛRžT«ÿ@Šõ1oô÷¬\'ûz~äGØw*]Š§è)2â\nû,O€H\'ÅBMz%$ºQeÏ\"V3R,ZFpw¼6úwÀp¼^)´ÂÓ@H\'›¯ÚÃy|P@ôÀ…‘hr_u 9¼0lêàDöÇÒ,jšâ-Þ H\'›–†¿2>‡d;Ìµ°	aÓ³ý0*¸:ºy|Ã	¶²HÕýß\0<—Eo+ƒ¨ðê~Æ÷½*Ê8^W	§7õÝ’å81sj¨H2RŒJºãp^S*‡1qÃi80Ù;j=Ìì£‡Ö{×È|.`H+míjêµ0Õ\ræ,è&­†àq¥<Ó\nd]EÉÛ±X{ºR àÜ¨ßH+4+œ†ï—ô-ÙcZ²¬—»Òk‡ŽœÐ–¯a”ê2VpH)Íry6:ôÑî½ô\\jip·ÒüüYc÷¸‘Ù´æGå¼á¢Î“·X€HðyÃ\0vyû†\Z‚Å¨¶Lêïsu &“ðaŽ H2ñy\\†ŒMjÃ?¤Ù•ÊDñ„¬X¹GÚ/¡ÌªÂ¸:¤×øÀÏâÃH.´Î[¶e°Ý­$I›ïºÂZÄ_oèwJ’_ïˆXH+—ŸšáCøafUpFžUm¸­ˆÁ¨¤òÐbö“’­	þÂ¿žH+lËÅ9½²é+ÿ*bÎ´m\0TÓ8¢hÕmeBø©[Ô£Ö¨ÛH*ó^°“¥€ZÉ-ÝeªéÑÐmÔÿzl¤³]7£»O”H)­Š×tI\0«¢½Vœ7²¸!¦â™ÂÜ´6Œ:¾zºPwj»½ßžàH)­ö¨ÄZš½ûCl† zC5‡†‹Ñ<ý-©È q‹3£KP¼Ô ¦èyÞÝH+®ÙÌ¯M;)m\"Ñ¦œjç(J8iøEýZó¬Äd“±L×¤\">¦ÚH/*¼~BÛú¤\n\\Ü§Ê(‡+\n´¡§ßÿ•yeà%Ê¼¿#ò¸H-:Yêk¡4HŠ½d¤áfù:éQöE4=_Ú•K¦TH+–¶›¾4\nÂ9¥µx‰M\\}.èIŽ•išu8^â€uƒ¥Ö‚c.Þ`H+m^Ë,€3NŸeK¥Èº:gÍkÙáP:Í”\\jýü0àRÎpH*èEDŠ-½)JµvG®ê5%™iƒYÑiÙæŒGq¾ÿi19g“pH)¾3]&ÄlZöûUÌLR°©3Ü¾V ßËCTWÑŸk’8Ö‘Xânš„|ÏH8Y4ìÃpû‘7çõ8,L‚::–M$vÅCÃ«¦ÞûeƒÛù@H+`¸‡D-’/%,=‚«F¯Çò_?‡7·VVÚ½I€(B¶ŽfÍµlH+ŒŽé0‹\'¨)i&{®áb‚Ýs~‰*hHYb)FcVXÅf\\E%k`H+lÑ«¸¼ŒÖÚ;©»TÂˆùXã¦ÅIŽ¯vÏŠÊ+@H+©Ý!&.\0žÏ÷™½ŽþäÚ¼¹q`¦ÏH/ê£^EÐž¸dºHHÿíˆ@ÅMøíV(j’¨ÿU-ïîÇ´™Hš§52\\³Ì°)5€H+g4sä™¹Pû}Ð¨F$8¡è\"éØgI&ŸbFµÐV úH+5ì1=X¥±Ð7/8f¥¢‹z0KÍn“°H)¤Ç Aé°lw+˜…Ž+~€U}J%š^\0îWbP6(&‡UfõH)h½s›ç\0Ûa ÆÕyZ\'cŸ	ä„Rfï¸Cº>4Ÿ\"ìP¼H\'›QIQä©aWçïðˆ¥ã ½WÖýZJÃ S²€=CÕß’—‚ŒLH\'¼6®“¶vd•Ý›ßºTc”ŽàÂ%´Ær	8’í@œÚP˜&@H\'…¨)¥e\r{\\?jÂF#¹2ÇpZ}CzËíòD[G“qdH$ôMŸŸ[ÓÝX¾t…š‰>ñgïäðGíÙðLJ-…FÊ@H$ôM™WpÛ†–?¯ãO~bæOCç‚¢LÄÔm¾ÙÇÖóü=ÀH%*e[•0\ZHÜ7ûè³ÙØˆÎOã·ùöJ,\0t¸\Z––UÒw«Øz H%*p\0µžgk_6Õ»Þ$H”ä/\n­8ã‚ú‰fmØ H$ôWj,@m¹º7hq˜+MW›Û…Œj€‡ÍñÃ]^ïH$õiê[á½*C4Iví	ÓÀFÿ›úò=Ü<VÎ¸­\0€H%*fR	oŠýgQòÅ†Þ2aÂ¥õ.e¤”$É6ä… H%9y%êÙ£,y†Ñ¤¹.XŠ/††jo#Í	ÞfßòÁš\'ŠýUl†ÊH™wóg¢¸*æ!Çý]ea­õdÝÐñütÄ’Œ\Z‹º0Yj¬´-™ú#Öw²½8åÓÒ+º\" –q¼€Hœ/,W§§‰ò¤Ú©Ô~FT\\ü}F„œÝ©K“ôäøWÇç;êéçƒÕÚJ;	$H¡Ê\ZuoÎ‰]}ÚSî–üÇDàªÝt€,Æ”Ê8\'2†kÝ|P±ûCMaïrKáy`H²Ÿ­t¢&Œ‚ó:NCçœ£1Í¨\\\"b¦Ñè%ß\nDSLLw^=ñH·0S¨+Òú¦ï6ç¶1ït‹´«ƒÿh&$\"í‘yé¿‡©Xµdññ‘s Xñ{ÁŠPH¸Ä·­gŸÆëJ&‰|#jÐ(ˆ/N¹ãrgFƒÝcuÉ|ÓbY¡é±ÄÒ«.ÀÑp~Ñ{þPH¹¤â4&ãˆíEŒ÷Lè©5i…ë0=%=™ÈÕÔê¸gPØâÖñivà‰=&n7€H¹ˆýÐ‹õ©ê•çG09ÓJ.SÖ÷–áEzw}õ\r˜\ZíÈXÙAK­è…€H¹¤†ô\\y;¼»­öOe¼·Nú¶>=£ËõýuÅGéz7H4­BðÀH¹n´m	ôI£«Êìü¹5JÍòbw®Í·£ò!Œg­Ä Ç²{\0Þ¬H¶‚ìV(<iÍ¤Žˆb~çéIÅÅ©NIÐ¶H¾fR-:æ%N4½Úè-Çc% t¿×3îœ\'ß.°H§Cºá\"€§¤um	E\n4:³ê4ÝLå;ÒÁ‚ öŸ9bŒ}™¶¼tRêwöåŽH£Á³¾ëe•g$¯‰¿Å+<U³$Ÿ·Œ†Ýè¦+OQT¯Z§5åá+|SõYN\'õÌYÁdH¢jm!0&\nª‰\nÃù_Î®Êß\'U ïXIð­&PïKU ‚ºÚp,Þ’7Ëw>HŸýŽw2ã%å4Ó¢ùÈ=|· Fˆ$¹5L1´Û³º J`–ý/OÈ8¦Mûƒ\r½†)tH½ù•ÕT\ZÃz	¡qRÚÌxhLËB]x1-Z!§ÖØ›äÄqæÝö9cQ>-­`HŠa?˜€\nÌéìÕzÆkŒ°Œ¤>­6HÄÿû\ZbxZ÷‚Ú£Jžý—HŠ<ÔzOÂaítÍ=h@sîVgRƒ_¿âcÖ=ù¶€â/¹­&C-†§¯`H)K:]bÃ»6Jcrä©oVô&?ÁÞù¿7=\0êHg®š\\qtû?ÜMŒ8ô6õ`¤.z©€›ÓvÇœ.õ[Qù¨H$&l‡R•NxÐë²U%RÚòúcí3ôª¿žþQÎž5H):šRøÆ\\ˆØ]RäjHcÒ‘a/ªÏÒÞ¢ÜÂd¶3©H!3È…Õ…)ÐQ¾¸FÕnM@’‘†Ãñˆ€Ù¨Ä=Kn?üsH€SÛœÏ6w\'¡ÈŒÅ‹õhwödãgáA”ýý^“·ýñ\0€bîlH#ˆ1LBb0H‰§‰sãºH•ÆÙ H~DU›vpÃ€sÿÁ±Î.Œ\ruÕƒOˆw6]e\0¡‚­–¹/ÅL:ª!“ðHŸ r\ngeò®à}Æ-ñ@8…joˆ$FRYƒï–Z¯/B¸Y´ÙKUx}”¬€\'~ò´¢áH¢¾	Šªâ—KQÁÙ¨Ç”\nÊ>”µöÂ…`./¹Ñß¦õƒX\nIþj¨X‡¾øÕ€H¤B`Qš÷cgòå)5À–H7ìÎõ–Õî/Õn”ÉC‹§ YC\"õ‹Ñ+VõúÂ˜!9ÒàH¨nDüx_€;<D\\tÔ„Ã±=ë»¼ŽCçÝ,0_ÚBs²¿ç	åþÖi§¯Ð8çà¾yl³ðH­xä\rÐB‰_JøØLåýdâaZétn[ó‹o›Ýõ5wmRzÇKô†ï\ZQH®ì˜¾®CÇˆ)Ç_ö2ÞžÓ£“¯#–üŽðb3Ó…-C÷ýM¿lÁH²T/Ëjiç^´c’{®»FÍ@4gìmIq±ÐêõÃZql|7šRîHµ_ŠŽK?ý›ëx3-œçÏïEï—?…¸½MïyŠ£å¡\"b¾ÑŒ¥{[Œ%ñH¶ñ×A…]`²¢ýR¸Â€²ý¨ò=~‚a\'	m=k¶‹ôù,Ä H¶ë2—ê“†J@:+ìT‚e	§^L€³ðOç¢Û‰Þ[ÓÈeæ\"çµŠ‡‹µÔ´H¶»‘BõØdØç30)©\'›&	b9,\0S¿Â‹Z4-·†ÿá^²HµËÜ‡.†Mµ\"§\rk4š5Õ2áá·c.°(œçÁ¬ZP\0àÉ/²‰$Pã€H¯Ä·®äLOÉ;	Bøæu}ò]ŠÆ|½gâ{‡>(øX¸ß°þUž16»3ÀH­6ËjÄ³`„ó…†ì{Pê<{ûí†q«ÝÆC>¬n$Ü÷_J\rFû…gU\\\"0êOùh(FˆU³°8H°[CûaÅáu×¹Òk|d™þ®cIû<Ð³:q—…8J&\\;Œ´[+àUJ¥s“äméXwCH°Bîƒß;´¢‚)æ	S#çàj’«,ÂÂa‡àƒÝ²)çlzÇNü)‰”½œ­ã°Û>ýô=/5t¨H°ÊY»Á:«ó_¤ãN3Ýœ\0ÁžJ“¯áñç¥þåËu;€¼æ‡±f*I@á6ÜÆ\\¾ÕÓ¡&ØH¬õ­s•óû£ÿaÛ€RÈ-ý|î\r¼»¤“y‡‘9_áÊù\rûµ©„Øf%LH¬ËMxÆ¹ØwÄUCˆ­Çú×4Ïäí¶=ZN[û0	‚Ö3`Bã²ÀH©<$>+H˜C¤º:7§9…‰¨®¡dcÚ%«{RVƒQ­®á¿êÀOggS\0\0¨ú\0\0\0\0\0\0\0\0\0\0\0\0_I&\'..67337110..1/2/$&  )#*$\"%$$%#$*\"#%H¥ò0e·3ÊHÀ–;rnµ;¢@%¿e{?ŽÃ6t«Qo#ê\Z‘ŸH¢ÚœLIÊJîÿ‹Þ¡Àm¾’‚ç™×æ29S«ÄxŒ®%«ö%‚p~çCÁ(HŸ—ÕôK=¥·ÿ¼:Ú3ü˜/3‡¼ñ{4Î¶€Û»®ÃÓ\0y\'èŸ³©Z€HŸâ-ˆ°Q6¾Aß·Œj/¤ãëµ –˜:Rf7p.é‘‚I™4\'\'‘”ÃT$÷|jYJH£×\'þÇ“ƒnAtÿ<õšmŸØ6\0É†¥?$méˆ¹Oå©¹¢ó\rO…®b€Ú	oE€H«ˆB61Ð\'û,ô|?ßõð\rdæ¹sNÈ$v;RÃÝ+rí¬9J %;*>õóùó	iŽH°wE¨rzÖryÊæð`î9·~þ´E¼Š¨†Eµ_š{Ì/ˆš²ŽNç>l“Èú|H²Qk‡±†Õi˜~fÌ»q—p‘h°u8?¿IÌ,Q–âšuâ›í\'â«¼ýqT¤É³nö<€J&H³úÃÂÔlø›ù**¸(ãÜ5†/ÎW\":Z€0y‰\'´g‘(,<ª9µ|Û{ùòH³š3-1šÌ¸¤jòIFQÿûU|©Áëû^\Zwi¥¶Ñ–…\"Xí‹pn0#¬&@H±ÁŠ.\0¦‹€¿ô{bž`U;—éÐƒ^ ùY’’O~ú ú9Žôç“²H®\\$€Fû»¶NËÖ²ÎKõ­¼;­÷Æ‡J÷ãlöžP£XIsÔÛ0x‚˜ØH¬Fn$Ÿñ«ŽR;—!\rwƒ£‰0=>³¬“‹j!¨w8Œy;V§Pèsž¥™Ù€H§çÅ;ÙÌÙúrz\\¢Þ˜ÃQGpõÌ?H|²O@¿B5×·Éæ• ¡æKÇDˆÝH¦2E]EsÎ•V…! ¸îÐêXT$	ã@Gòn©—\\7\nårSÛo,c„,ØH¾;$­‰§¥\rË!6­œw2i}/æ»º³bùãÉýCdYŽ~? 7íÊœô6\rªH½ø«üýx×\0k[VÎ^€‡à˜j	þÚîêD–úžÚ( Âé°vª™æ’¤€H4o0˜vò-” ¾ù®ìb75ßœóCu™Ï—ÇÉÙH.¶tD‹^¡áp1Z(/ :äL47~>£H)K	Ù£rû÷…òâñýœf3“<º·%O]òf@æÞÓjŽH\'\nµÓÃö*Ï+ª,ãR|qàãh\"ãòÍ´?¬°H ÷†BÓ®ŒD3…m‰K.$ Š¢šáú:´ßÛÏÝÈHKšÉ{f2¸ÑíwwRHïà•–æOjæO¥Á®™/Mß+ð·¸H!ÏMŸL¼F.7ÐGÏôMzn‚ aé]ëKO vÜüH\"…‹XØM¹Q£9ŸzÜ_þ{¯ñ%JB\'Ô<<tE»—>Y7œLH%9hç?%f.Ìá>ØF:l/NMŒ,¿¨Ô¹+™¼ß„¾†H&2Û>S@’«Ã\\]ƒÈ„‘Ì«K~29\'Ï/;´ÃápH\'Åg&GêŠûK×¦óð REÎzaËƒ±\"ª5«ƒ½H H\'Å7‘·W‘j,\rhvÀÝÙ‚tRIež`%2AÊ•¾¥1ÖppH\'Ål’=:f±HøÕ¿6jÛƒr–WœB”ª²Î*WcìBx\n˜ H\'Å_§ív„Œ¿\nÊlz—ê1€ìÛ(Yjû ¯·°›×˜H’¡\"ÀH¾#+rZñÀ¿6 é\\<Ÿ\nàç;.×)büßz`¾pH\'Åeø6z\\ùMz–¿¸°ŠðS5å¯É`[~\0G1úÂŽÐH\'ÄÄå¯ïô¸QÅ8ÓNŒ¶Àóï*PNØTb>S%ÍY®J­3d\"\Z‹p(H\'f‰‹]€\ZÇÁÿÜPwËßüT´Fž:áÏCŠ×Œ¸§dH%(ãÖ*±Ñm,ïôzaÓOÊØ†ÖTd†Yè/s\'Gyá¸ÚHX\\6pƒ	À!IÓ°Ú]ÍšÔwtÍ~•1Ýñ¨H\"µÞÒfÐ\rŒÊÁàà%€þá²úˆ›Ò	Oƒ\nõÜ(ßì€','man uiariwa.opus'),
(44,'Una vez mÃ¡s','Ikuti sug','2022-12-051446378066395unavezmas.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\04a!$&$*%+.<7/11-.,/.0;192352.&(0<&%$&)5/366321.2.92*&,1450/%+#%(\'\')%\'(%%&%\"\'\'$&)&#$!$$$$##$&&(\'#HäÁ6ìÅ€Hà@	@2ºˆ5X\\€þg\\ H\n×éóá½æûî¿ŒØsfA0gý\Zó\0}=”H†dfto’¬	çÀHP9*÷Œt\'EçÂ¬nå«h\nš¥é‰”ÃH†­Eæîˆ¾Ì84çÍ©IP`ÄrXÕÉ»%¶ßâgf¥î5r¥H†Ô•%š}²/Ê1¡FQÑ\03ÅrëÏ…Ê3¢ºàåý0H*(C6XŠ}³”Ào‘F¨†“coÌ0¼¡ZvÑÂA-°³À¸õŸ™y\\TH‡”à¢¶jb\\äÖ¾*ié×„i÷	`¸üØ_\\j¿X½wÙ€H€oH£¬‹ï°fÄ\'QÎk¸ÓÏqŒ\"bâ›â)ŠV<A;”frÛ´WîH/û oKÿÒùs\0Þ*…,rô\'¦•Q/CL³¡°z_ÓPk6*Uñ ÐØB9:HHÓÂ÷yÎ¸bIý·$upðCïQVFÓ^ëGÞîÍm;\\fÊ$–\'	Ö2kO›À†fÚ=€H§È¥P1½÷_\0#)1£\0­7Z§•§Mu:Ø—Q\ZGQDLßÌ§œ¤“þÔËî:pH©wƒŠýxÞLdâ³Ó‰šYsIq­åÊãŸª[ˆ/›…}­³œÑFßí!_ØH«Á_O÷Ft€§›%Þ‡p	ô\ZHÎÖÞ2²2uÇ±Ä{p8œe¾H^>m\r…c½ÞfÈH¨Ì‡\ZjF ¢‚_ëíù%—‚~:aA.Òˆ¦úÚÁ}J­Ù™õEè2ˆµJ÷<eYòãH‹/[†.n¡;²q»\Zd³…á×)býéZÏm,½ŸïV¸ßõÈ<¶PNËH‰ÕCcünX®lÃøüÞš?ŠùøðÕ»hÓ6gÓ÷1\"I•0H€ÊJØ+‹L\0·%M/#Í\0I\"ªh“RzÄ-÷îaòãÇ_sÌµ½XHƒ\r:9­çoÇRÎ¸ƒOA@cªŠW¦ÿæNt£=EdQš‚ê˜¼éÀqLu€H‚!•]N_Ù\\Ì6Zs+Ìdƒ“«?¢îm©UaÖP’¢5Œ(¿Bv`k(éHýiÍk6`Yª“±ô=’b£®µPP^@ËRM,Ç}6\Z	WµÃ\\®Å­˜H¤Ìºµm\rd}¬ðÉïiŒ*=*\n^K×ÿ«º#³skÚÜŒr¦«Aèá\Zñ¬ûv°=+Òj=ûN|H¨#hÿz¿âé~‚!ÖÓdoÎF*DEŸ&ÏcHÐ<M¬qJ=°÷ØÇÝâi–ËåH«Îw¤ÃB„\0!DK©»(Ø@pü]^|Ö ÚØ\\¿å0|O|N÷¼eEJ.èíÚs(b€H²,ñézKzëþ¢ÃO³½iQ“¥É” ˜súšCzš€¸KžWiUÊ®wt07ð¬±€Hµ¸Ínä!oÕUÁgÁåºqË\"…ˆƒ—I‚°µÊYA‹ýaæßK¤zk‡]äX;Ù]H¬1ƒQNý&GÎv©lŽÖ>;wdÍoÌ#Yq\n¥Â´¬DÃ›p^ÃÊ§ÈûO×HŸ³I2˜–oz’º±ÙD|ü§P)Æ%©5ÿ¶À»èŒ@ø\"Ï÷Ž>g8‚“³Å`HœluÏ^,S!•Y‰eB.± \n\'ùR}Q#ó\\ð&Øé\Zé(càïï€H0•ËJn7œê±\'kWg^ÿiÖW”ä¯É‘&òÞÅ!\0+êH-?êê±k›à¢	XoûcÙ™8QÎzù7³Iæ5µ•Ä¬H€Ô™6º[ŒŒ\0%ùÖDÌíßHä+Q,Ýç•š„rÒ!\n=-À:ƒÅtÌ»ywËH²]”Ú7Þ[+gµ?å‰¡M)Êþ´“+xçÍºÀ¬°šœ8_*†šÉŠ Õ^_(ÀH¶ð7ªu[”EôÆžŸ{o%Ñ^U\Zá$0.ÅÀÀ>þH8MpHµü-÷-ì×~îYxY÷œc1šOI»ìbFëOmv\0\'†`H´êÖ¿ë&ÃÂÒ[r‚F5¸3dÄšÃ;kM0ã+)pþjH±õÍi,c&þ‡º\0‰þÂþ²=)€¸ê¯7èÿ0Ú\"äŽ¹aÞoH±|ÀÛ›^©;ëšï­,I€„Ô„`¨\nðºÜ\nxÍ,1#ºÎvl¼\rO‘H­ýx#éèþ6†Ž¸aZzfMñY¿bt\\$‡lé“\nÚ/}op:f®kŸTÓÑÒ(Ú(é \núH©_R úæ&ú›¹3¡>p9u@×\"ïÔÃ¤AÀ¼‰–Ûûó½¿9º¶Ô`î@H§QdN‘‚ù^r·lyçM;‡€\'¯ÖžüiôœiIú|¼ÊÔ&›ÖNˆõä†.€ÚgøH¦QìSò03T#e¥6,Z`†Š{Þô\0-y”]ñðÎÅsàPÔ2w›š¼u%z^*¦’2”H¾w´ï[´Âÿª¨Ê¾ýÉ:‡þ7§ç¾%r×ªÁ‘EŽˆ)X\0½QWpý–Ê\ZdeyR<AÌ9H‚}Ðjäb.cJr²ñô&	½¡ÒÙG×ÏÐÛì¬Êß¨&y¦ø#–i0{ÚFHûJt&ð“¬\0æ;ƒ\0Ý°Þz«3uã~ô²2DOå6ÔžA”X³8ŽÁÚÞÀ§`H’00o¾UœI.Øù)xµK©B/´•ÿu–ÄpËc’@ZÉ-á0¤a-Ro®ÒH’Âá]‚\'P©ëÄi‰«žj*Ãôsÿ+“‹¬É\'«SžÜ—™ó{éFÙÉH”7Ç÷¸\n°=A÷2wŒ5qËy†ž÷ÿMB:B·Ã»ïC\"”ç 7íbëàH”Á_ç”?´äw›Ä¸øe‚ÅQ‡ðE‚W™Ñ`ÔÿÁSœ´Z¡\nÇ@H²ŸÞÈ~µ!E\0_xïIÌ3û€Ä°x\0\"º÷B46[\'šésšühéù	´¦\"\"S<—8H²Pé£fuœo‹Š3–Eÿû±:6¢6;ûZ9Q<ƒhx2ÛÔÛLXÊxÄpí°§°H±‚¯kÅa®J\nŠ8Hl;»ÑïÒ*¬rîÞÛE•ÚÏ&\"Ö\0Æî0ÄNH®¸“(Üÿô¥êk`¤{’ƒ\'^Eá‘Ž”|0´é“ÿ+O3„H®\r¯ÛÈx‡ÙÝu\r³ÅEæfeZÞ©\"çÂeÐ*ëQúRÝˆ©HiéH«Sí5¦&úBÇŽwu\nûà\'Etàš´0ÝS»5Vk¦ŒbØ ¦Y}Úàã©§`Hª³Ó”,Ä\"Ëåd–ÜS—¦|ç‚ß\Z)®S‹h”\Z§ÜvÍoMÞdã¯LâÒ\\Nò@H§ŠZçï­KØ—©dL*Ê	èœÔU+‡˜y.õ¡ŠzÏî€<hjQ„¨ÑËq;C†¤¤7t• H¤žzÖ°ïñzkÖÂ§¬Ô¾ÝµªFfðÛ¡/»Æêz•ùIJžÕm~á!îH¾N¸0+LÔ¡QX<Ô=ä\"Bâ—¶eq|•<Dº7}-ÁÕÎ96Ï	”-P‚5H9Ä/ëDþh0I¿.\0ç?i„ðåÉ¿*ã²—ÂD•N HŒÛ¼—Ì…Ê@ ’æjg¾¤Äøë;‹ý~¿½G°¥^ML«ž)H8#RWH¶Ô‹ul³ø\nsË‘Æ‚½ÄZRÚ´J¶ÇUðH7õ®Ã\r\r“³ÛLÀÁÑœ¸ô6»*àrôÌKCÓ¡ü˜v;øøH6‚pE:vvÜ“12¹¡•ßngÊPÐ‘cËÁë•²T3?¨H5 Ç©ªiÅ•ØÎ®K|.\'fA%ÕVmrýÓsù6ÄXçŠŽºH4~`ø\"8Ø¶XÀüªÈõ–Q¾tG?“A\"£†Ÿ«¡Øjä}˜H	\ns–,@ü¬€vÚnMUfb©ª_ê\n*\Zå;)·6aå¦ÐH1#¸åW4Ê/NÅÓV0Ñ >qg’åÉH•=þb_h#C˜ã¿wH/døáÐ¤…Ë¢\\ŽÅiJ|÷FõÀÀ‘ÆJ& P†âÏp6y•Œ›šðH-:u*}|ÖDhÛ‘¨:ù1Å /öœ€ŠETL¡mr\nªGé²˜H*ïŸ>írP³Œ,ÍVhw¢£ÈCŽ4t<*2šM?0çhH)·îrh†]UÝß9ð_ËRšpÉNÀ˜\nhà;ã\0´¯wÏ¹€H\'¼fßIHhæ8UÄò“Ú«Ð—4e#f@\Z*?Çy©RÈ‰xH\'´ÕÇCòÍ8ff‡…ÎìÛýC‡Ëg‰}TÂ¨D¹¡˜–ÀH¾(i,vùwMÉ\"A^ú¶êºf0…áXFI’Hîí ªûóó­…õî\néþ{Æ_¿\Z2lÄE/y–€H\'áà~\0¨*b{³D”÷;Ž&…†+°»ô\",°yÊãçw€H%óìÉ† ŽFK1 ˜*Fþ£§½l±QEýg“*sœw9_LÝ¢»>ºH%»‚¤àÁ½@\\£òk×j¦±•©`Þ³·¾%&uÌ0HY*r‚VAõ]ð3\\9öF\\W_¦£ƒ;”±Å`{ƒŒH!ø½N7¤r€:\\ôj/·ÿãé\nòÒGm±\0uöº@Ÿ¬>V\0‚oT@H\"kÍ¹@€ø>÷-v^cà¨OŒ@¬¨™OÆÿ6`K‘n¦ÉH$%°iè\rÈMì=è(Ž/šè^æG¡_€pkè,H!ù‰1ÿw¼ÈIc©É¦®$íªø°ÏÃËÏˆv\\ÚˆÓÌ*ÔH\"/Ý¼3\"Ÿ\\àÚš®hQäT¼Ís²…·KÛÝ¥\\…ÀH‘~Ûë¢ÏYjE>ÈezÝ¿ù†RC‹Ö’„*_H!ù‰}3\n.9T^B‚¾t¸t#¿Håš_ú÷§ötXHX$¢Kº^¤rT(¶‚3ìYÒd7¨“.UÞÉµ›á†\Z@H!£7Ý3šÚ²ÓPè¹ 1àö¦žTj—d%àO3=äHªoXÞ9êûK,C\' ??¶ïNuñrIiåÅß–aa½H¿IfÜ´9Cb´SÑ]:1×µ€@,wÎl¸?ìTãôHÊþý+ÔÏþð¾ñnðùG2ò1b8-IbîµõàD¸jH»ÑµxéCÁœÏœÏóaÊÎDÔ…^6%ó\0^Ü	îåÀH¯‰š°Æ…ÓÙCén1øR’RÎ_\Zaû.uÄy)î²¨H¬ÔñŸNX;ô‘0kgöáp¿PHœv¿UNÊÖ/éæÂ›ŒBfÌÐH…yÙWLÖJô&tÜF\0A$o§Á÷ü\0æ¨°\0¾špqšœ6cH†X/¡›•¸“ýÂ9†d}òåÛÿF`YB!º{Y|L¨POggS\0\0èo\0\0\0\0\0\0\0\0\0\0\0\0\\§l$H¥éú-àîNE.ÄÆ£èƒa}#{\rF%ìŽ»Æ©*¼ŠÀ','ikuti sug.opus'),
(45,'Â¿Entiendes','Â¿Iuiangi?','2022-12-05144652363666entiendes.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0({\0\0\0\0\0\0\0\0\0\0\0\0Ä˜4:e&!()%$%\"\'#!\'+/.-*!*&$%\'% #& !(\'02<;4+*4474560)-%%\'\',/.+3:96)5770*&*&\"&\"\'(#!\'\"%(&)+\'&$($!$&\"\'%)&#\"+HäÁ6ìÅ€Há«£Æ1Û9[‘PÛ¹¹H€[­3=]r¯AÁâjœ\"Ö¤–¿–Â÷„\ZbˆšÖP^J\'ÔH†ÕS÷$\'¯­ë¾1ôÕ{»x&°=º/\"«ýÿ4ÌMH†ªµ#›kj–?[xk4N§NÃ\'$tNt.­Ã-Wùú±»ï,€H€<%*Ðø\n°\"\\\0\nQ26&õÒH!l±ý\Z9+Óu}ºJõÈH‡b²_AÀ†OmÁ¡™“\0”ÆðµóÙh,¨‚%î‹57ËEHªMS:2È—.9¶É	¾¼ê×£«©ž}@&Ù¦(” @HsÚ52LPeE~(.(*úŒ•Q_P…giÖ¾¹Z—ò\0¸H;ût€Fwž¨~£ñ4ßŽ±÷‡…e·x÷k›P¢Åy8H*·×¢ØPdY9O©¬JzI-Ž\n‚èkãçMßÁÙ½ÖÉé€HNÇ­~„*ýìVŠ3S?6»‚Z{mp@ä4ä©Zò‚Ôç4Hy‘çÊqÍî=?UÙÂ¦ïwø~U?Z™lM]ºH\'œÜõø#šÜù·5Y,Ž\nŽ§ÛœùGc–ÓX¾EÕ—Z˜ûFH*1\"«ÁÐK2U>ú£µ›# ÿÆéÜvh¥ã”[­®ÝHË%H+n°ªw‡g½©Ž»H´2ý£	Ör\"l›Áí$óœõ•¾×­„Pý¦zÌ•€H,\"ê!X¸9â‚šýÏÛÌZT*ªFü[)ÑZAÊmìËµ+p¢ŠpbHH/W·ØáÈÛ@Ÿýó¶Ý¶MÒ_mÏçÒê4ÓÁéôÏû•Ü0>Öë‹ ŽH1\ZDÝ¢\r`ê¦ºUCâZ6ŸÉ@‡«HÄÑ{ßQ‘Û^ÐK@›µáeHCT€HËJÅ9Ž—êŽ˜»A1ý¾Lm—2ê*Þ”ó¬oâ«H/?¢µÈûqYô®h ¼ìÝ¨ç‡™ O(ÏôØ°\0è\r„5^l:c,@H.»\Zpà,CÛk\'IcDØ:Ž?;cnþ9\réî…ž1¢ôÍ¶VH-?Cjòj8í½ÜÕ‚êŽJ|3Á¿b¡Ó+=¾Ò_…JH*èEF;¤]ý`&ì,Dì	ç>Åƒ°³>‹–7ï·i¤³ÕÔH)‰o?‘[ß¹˜Ù=‡ot´·¾`*—Ê`+€\0È~høñ H)’eŸw˜0×pÚƒt,ÖŠß±»ˆDm!	V“ýWÂö¶8H)EŒ„]\\¨	ÉÂõû~Ÿ·6%;)\rœÊ›®¥`H\'€\'·mÖ.F\'¬…%ç‘DUi¿ìýßT¡Ì@cöº`H$ôMb…ÆMûS°\'Ï0‰ê.CŒr‡åjûPÌQ	¦÷ÿ[|ðH%*a·0öÈ·ãqÜ\\óÍ8ZA¶™dÇ‹H%9­ïyÊÞ«&fàX¤Ò{ÉÈ„ÿþ[U\'–v5H$ôMŸhÞÅß8 Ü¹;cvèG˜¨~’ˆ\\t†Å`H%*Ê|„}	Ý#ê[:X4†Ú,,¤Üö¼”§C¯9ø,Çê\rïi`óèHË4)Ô1³\"ÍAIdÖèß±™Õh£Öb&€HÇm”XÆ‰yô— H‰?¦ÁÝ+}êÍ³vr>ËŠõ+Y5@Z–aGx.-î]?+IÙâ\"ëÉX\rñHH‹\r¿É«?ETmþlp¥%ÂZòÃ¶ê?Á?²ä7ˆX±° ^aP3¼¡ÛìH¡­É¯ÿ\"}o4G-o¾	Å\'»\0¦{‹n~ËØ ÞhsjDãì?Ì}j>W·ë£és\'(š&¯H¦ÇªtÔÕ©ö?q-ÙlëoÕ&ô¬TÇ±Sú¢àÀé@¤ñÿ2õAÀ‘ê•iø‹¥Ï˜•H©ÍÖŽre!PúòÉ<mew´?`·:bI]	wGÝŠÄÊŠÍrø8ÄÔ±v€cê+«¨¨4H«-\'îüî™ÚR”ûÁŒ.e…#ÑÃCC£lZ¸8›Ùì.ólá¤G‚>È‘m·…H«-hæ+>|(sB2š¿BØë‹~\rÃéª.Å¶F…ƒS”ÃöËH«-S‚ß»ù#Îá5°GÑaY·ø.ëtÐ¡2Eß\Z3e”Á¸ï!úLŸ	¾x9OÆ5 H«)Ôg¢W²¼l,bã®Ä=Miô¯fˆ©,88ƒ¸Ôò`¬#žy#>ÔËg^…P¶@]»ÀH«J5¦\"_ó¤ýjþ}eŠß#¥ô#DÆè•m½Ö}C¸½ÁöèÝŒ\ZIòû!êWY©hŸ°H­‡1¤‡tBzYíÜ¸uÇÁ6ÅÐÄÀöâõ0vCÓl•¥äZÀEèæŒ^W}¡nˆ°H²ŸžÜ/BFÕÀ¡`¯ƒñ ©R\";†#µqÃ‚,RH˜àzÇQB½ZÉú¶Sïæÿu!”å2H·íå@ä75I-¾MÜ„ÅiVæT:i‡£g.Þ½(–‘\'»¢…TÓ]7:/ÍIøOÙM¡AKh\ZH¹va\0\'‘ÈKÙ“ëÉó0»YÎ]ê8,ÝÚ(gÕä¸ÓŸ¿ _-6`ð$7ë€H¸¸¡Å¿ÂY´ydÇ‘3“Ûyi(ÿþ“hDÿý!¼/âðÓs*—H¸h:æóÞûÜlãÅÜÂD&T€KQxïº h@‘,}Ô«ÕZtÁÍóq÷`H¶¿ù_s¬4Ftƒ ©‘ãZíé€Ìš`ïtöppó•²¾ŽôH´ñÛ×þþÕø:WNð\\™ŒM<oÑ>V#V·´âcº-[ì+\r° H³1¾½imÏi^}~ç˜õ[ç;Ê·›<‹ò‘XyQ±\nåØH°\rBQ³\nA‹FC4Tv‰¾­¼MX¸¾ÜQyú¸úˆoâ®€H¬ö“¨Œ–Ç×qñç&ŽÚû¸WÙ|‘Yý\0_ä!ÀýfæÈ/[M»„ØÀBêc€H¬\\LÛæFæ#´7¨ƒý8z •FªîÕ!7¿\Z+ì«S\rß\"LÖ–Ü	Þ—{ÉÀH¥ãJ;‘¬²‡>á¦vàDf¢èÄñL¸M[>×Ré¾‘C¤ðee]p=0*È:H£µ`Æqä”LŸ¨ø¾6%¡\\…©Ë7Òn#„ÉºÕ~¾vÜøVºÿz5pH¢«ÇvŽÇ´çjÇ+Ju]ƒñ*°îQèçÐe1Œæ¬­ò¹wöM$áºë™2‘pH¥¢¾§ÄÃû§L¹S¬Ö»åDÖvÌSMÀÊÙØçóH‹›\"ÿdŽµ]}Phâ±Ò¡zo“0w(H«c1ä­¼ê\nŸ«¹ta‰E›ÐW@Ngþn—ÇßµvOPd‡é@¾j2æá¥ûÔ\nÀBÛ€H®îhû5JP™ÜmÉ·þMB·ïSú×K˜ït/°½ƒx÷ÐV^	E)•O\"_»WºÖ#VŒ¹@H²#ª\\Ù=‡€•<ëŒ¾—Ù~3¡9²ß çüÙ—¯>—]m¨2ÞÐ·½H±ôÊ)S8]u5÷·j¼Œ\nnYáb¼Ñà1 Ä¯Hõµ¬yºzùÿMÐA#ÕÃh>H±u_	7É}‡SU ·ÍLF=òê²ø‹D¯þ<G\0ÐÇVå\0RÝžúâÕjTs&åþh„…fˆH®Lí£Msxžm•WYj÷“\r™DÁ|Q¹å¢bèyúëÌ¼D\Z‘îÈy ô–§v“5oÐ¬ÆH§~=œà[ÉÏToÌ÷ª\"c‰œéoÝô]cTƒ”*ˆgýûç¥‚œÏà4´T°ÏäH¡ÿÍ‚sìwBŒ&²h?ÆúxIÕþœcözqzZ/üDY ïÆÅˆH0”–£\nÖÉ³_AÙ—{PˆË´hOŠìÄbYG´!ý%¾¤‘H*èÿ;áZ—-â‹b°t[Ž\'ãý«I¬åo(tukÿ-™Ö£`É=ÛˆH\'»h½%\0üœ‰˜L`•%\nyÂÛŒ,å­´Äc†š?ú‰Zˆ H\'±i€iË(ÏÓ’\nL/‘ÒFÒ²/7JuÝ±Sà	°H$TažÏ](2àŒôó¡ÑŽ=Ù-Ð9X•0ô…×Ò2M’ÆHï}	iDÔ\réW$ÈÃäSÌCÔ¶<-p`Mòd\\ÀHÑà\'š½Q-ÓSØæÛgZÖ8ûe(z­ t‚\r±).ß™m@Hª)ùÃ¨¤§Àæ±yð?–ÅZoÝüºk®@\n^Á‰Ú0Hî‚U9ËÖJ¿Ü`ô¬Ð31=ë¡M‘’¹gnW7Ï©#HÁo¿&h3Ê.¬¾ï‹FqÀñwÛøT¼ôçýŠä€Hàoðx}VÈ{ƒ×ÎÁiO‚\rdâ=_B£Æê9’w8¢ÛÞ HÑß2Æï(èRk`Ód\r}¾“¾TGrÛ6óµð~«c Hï®Ôg‡\Z›ÃbÈJŸwSº5¦ÌœIƒþ…o÷¥u4àHÇW10|1!ÊÙy„HúÄfH¨`Ò¤’3¡\\‡ÔàÈÄ”uöø\0~H%9Ç”a’\'ÇÉ{½ZpH¥Zå;u½îB;IÛâ´_\ZLž$[îH%8œjúcš3S5Ž6¯4\'ÂEMçZ±ï˜9b]j×™%¬?L)¶àXH%9Ç”Û”iä¿vSž§\\	2#æ[h3f#·[ô:‘áÀôVŽ™Ö H\'¼\nxDO$mÞ¯uä½»Ÿ’)m_íêˆÝHtÖüä?»ç€H\'ÅD÷eu©#YntdÐ»/BÑ”ª€ËçûQ>U]˜H\'ÅDògÁ,½Sš’›ŠQôÌi–<ƒ	,ÝÓ1xèH\'¼ÛmWÇ×w‚w§=m”b32èØPr‚Õ ¤¹iÎðO*yðH\'¼²>Û×\"©uaM¸yÞK™¯Íi†r°&tYÃ!b•†<—àH\'ÄÌau‰wîKÖ}hÒá­Öœz”Éa§@—X)~H\'Å”:o(xgFÝŒÉ)ƒM~ƒnÐÜ–x`A‰\'‰ý7³@H\'¼=¶|5†ž\n+ÐrÌgªw~•„Pl\"Äì9ÏìVÐH\'ÅBQûÇ½Áëª·Ä\\ÅïW*ÓˆhSjÁbrŠxxH\' `£3éL¼OÔ’å\ZgCSYÄ!¢—ƒï,$¬ßRæýRÑF0HÁ¶\\­eáô_/6‹ëC† ] ’$\Zø“¯ë½Sÿ~3¶ÂH\'Lp_Ò[»öwÜ–—–þ9®Ý\\Å³kàþ`DÿùˆCèì9H(MIp¢Ærj#î”-ê~…O, .¶Bçèü«/û‰êã?R€H)¤Êð•«ŠáEÖä¸rV¨×Þ£ðòïYð`Z‚[GTzåH)p\\aY£´# ¥wùýrÑÞ0ñ­CEªEAåjàH\'»0\n.f˜‹c–]â÷„f7A?Î§ÇÁËÕ=ÀQÆ¬9íT@OggS\0\0(·\0\0\0\0\0\0\0\0\0\0\0\0>|é“(\"$*(\'++)\'&(\"*&&H\'¼\njLp°ŽÃ	%j{gBl4±Õ_\\ÏŸ<ÉÌ±°Ë†uß=HÁÆŠ”Ò´¸MGö·ù!xú‹£¦TÈ¡ˆøµßgoÑ^d H\'fA4“¹[¸[â²¥©ì†sDjÄ–Ï#ê]vNJ7\"üÒe€H%›š=0Ó‹˜gYjèÂ7¯º‡âÞÇ€îå¸Ò(s*-ÔY:Gv_À@H\'»óIþg\'§Sˆ|ö4Þ¢Ö 9–UQ‘Þ(7Áï•”`cÌ˜ôH\'ÅBM^€¢Ô^Xv%-a¢g:<tÆÏö\'7§˜ŒS×ìœÒ£k„ùH\'8>	á¡I«6?ºrÒAbßm=ýTô)k^ÉøËzêÈï/Oñ“¹]Ñ@H\'ÖÞ\\žó* I¬gÒDŸ™Ï¦‹5¨ëå°)nÂüjÆ&}ñÚºoÁÀHúë9ý\\ê,ŒŸ_		èâedóò)ƒ;fYiJ¿ƒÞ—)i4DÞ½iÜ€H)¤ÈÚR“Ïì¬fÃ<[NNjÎ	€Æ‚Çú–Î]šTž@H)¤Êiöoñö7©VŠäeWw§<€a¥õöT-–6!«wGxH)¤Êx4€öe¦ÐBºØZ¥ªÑ@cÍ¶ë“úskñ„®^•K1‚«.H)®\0e|˜õpÚµZ”˜V€‹D\rb\"F¦¹ýGQ®pÈH)OLb,]é‚4s•¥kDm)Þ:(ß\"9äE‚&¯|g+¶ÓÂZo H\'›Ô›É4ÁmãD¡;q]Fµ	c?…F|+|ÍÑùkÔ5ËäTÈ.ˆH\'¼\nj\r¨\"lV²P!æ¢p0ÎOõÀ¨ˆÊ*¿Öl’\Z,š€','iuiangi.opus'),
(46,'No entiendo','Mam iuiani','2022-12-05144729584467noentiendo.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0)ªÕ8`\',+2,3\',\",.)(-).)(+#)%+$&)&&$&!\'*#\"  \" %#)*)\')!#&\')$626://%-+.0+.-6:6*,(3@5@97.0*!\'1.644/4.00HäÁ6ìÅ€Hß{|/]#ˆ‚G”rx@H†\Z÷lç²[Ìn‰—LB­_èWu³ž\\t*=Ö:Cß|é³…þÀH†¹? úµ¥^Yñ 3øüååÕ5ƒfE¶<¡yŽòˆÙ»»Cð\0`+„áˆÈH‡%r–êkÐ*>jÙÆ0W7¶X+v2†¶rÜ°ƒÔuá‡÷ÝtwT H‡P\0Î\'€…Yb{š\n¢x\r<ÐÃõbŽ‰éËžNYø„ïµãmÕõLQjw¡€å-H(\06å’;ªm‹ËÓÌæ¥…ºÏŽ<º¾ŽaÄ,Â¥\'{\'\neí“A²€H‡üÛÕ^­Óq¥É7ÑÏàð¢Wƒ\rzñ:%ú\Zè¾¡\0òá°ÓÏ‡åB|\\‚Dó}‹†HˆVNb9\0õæ¼;Òç‘{ÙpçæºlIÞRÑüøÎðXÒ	ðHˆ]ÿQ±,‡’Áài	J#~­ô<(Ãõþf4Äb¥Ú>í6—ùErÀDX0H+.(ãå×tü|*P2duJî$ úæ«*0	\0^Ò\\ŸtH)…À·¤²¶)(Û<¶ZZÞ†{wÊþ—§KØã´Cà´º…]WÙËû8H)£ê4ì•§€Ñ“8$LBÌ¸,Ó¤w w{\"~ÿñ5™¥m}m„á«k¤Wl0H*/Ú•wÂO¹ÎCSyûkäŸzAZEÄÚv³=ªÍÙòw¾FH+“³í:]È-XÝÀ\Z:2)­ÐÅ>uÑ‘QhÈë»Ž«õ¤Î½‘ñ˜H-P…ÀV)Ä&þÛ‰ÐZ°Ê+¸VvÌ·¿\rdŠ‰4qáÐzÑ&/Üæw\'H-küZŽ­œ\'Ä™àY‚ÔÝ[ê$ç2\Zu³Ò(£9éHc‡AýE­šâ”H-Z™_ñ0A°íR®5ÙÏiÌÅ+šU\0\'ñÇÙND#_qiRE¼Å¿6Ä°£•H-‹âŽˆ…öþ.}Ç¯ˆv)( (o”Äëý4£Oã¶˜ñý>ŽÚ H/!¹yèïÌîà{§Á§Ÿ¥ù‡½ôCðXkïà¨\'Šuÿ¤\Z5ÎKŽbH-H+õO”\no·y½Ø¡pçÄºüæi!)À™D‹L\"qƒžH-o\0”rê5¢y\n¼¶‘¹V±H/×î³ñÆ8ºÐl 9%#`H-o«#°‰Çþxö«èøM¯¹q|\'‘%Ä[ Ÿ­LùQ5ôUH+417|ÍQÛ}štÄŽ«ó4;˜\r²™äáïvã<èO©ŽbðH)„Cˆò|Ï3œ¥õ¢lì~x¼…Âu¦^\")HÄé@ì*boËEBB/H)œül€YÚ°N‡ÏœÆ”š¤?\"79+z¶g¾›«Ø±ÞP~Hé‹‘Êƒ>%&F•Žæ±ÁÎü³×_1ML\0ôüþ	ó»hH\'³&hrËo!dð³ñÑí ƒç´Øþ›-P2}RÉíõ~Å³gH$õõÃìYŒ´Ö3#DÍ‘üÝÍQº÷Áñ–•¦öl¬÷ø€H%•šKõìël,×Þæ¼‹(>W.Ë|³õKA«k÷Ñl\n°H%É¦\Zù·ED,%‰³R$Á˜‹‹h-b<G«µ\ZÐH&·›’ÎWÊq(k€ êdAãTïæº™+.Å©BÏýH\'	kôvi¦[—(”Z¹\"3ü`óT·¨Nª±‚lÙ€H\"‹ä²Ltx½¿w…¿Ë÷C+cÁÈBØ¡ªg¼}uIA(H\"d+Äã¥ªEÂ^È/_w’å¶2ãšÏVóreîû721GjV—FÃ$u€H\"òê‰\\Zé2—Ÿš?·ÒüNZEøBh\Z½\\r=W,H$ôMŸµ_€ö=º³–”\"ÚCQªôøÿ¹”˜Ø€H%Â7$u\r	åÍ˜˜Á‡Ï“RëÁÚ3}Á¾ÄtSòÞEòH%*f\\É)Î«¦lkƒ¦êò°ûv\\¸àýÑeåaDH%*e¦Ü’k(LS21¨½ŠÙÇskåG¤é38÷\0üC_H%ë•t-2}LQó?¦à¹ãó‚VB\"–ëœQ´‘9¸ÀH%*e¶iÞnm,[,xïüøµ@˜Ý§}ïÑÒˆ©õãöúB/‘H%*d+¢ûYÙ¬þLÈö)F\"ó}‹íÒ{x¡J…±(!þ?Ø[ˆH%’0Ü¯Ê0uø×“fü$Ê\"¿h>q2Ä’2 H%+èè.fšG³ê­ùó_G·\ZJâ‘¬]…„¥ªd|¹€H% z=â :dfÒ–s³9è·83QË÷àF{³m£Ö™Êî|€H%†ôãÕF¹w¸]+3vÙ4Q\'‚¢®4t*CO€ÁF–õI@+ÀH$õGòÚ˜±àª#ÌÙ÷bâ€*µq:HÀHx˜[Ç…fÕº\'þVÕ7‡H%*fÅu`ñX!ZmTëp:4õQÐ}ŽØ­¶ÛŠ\rét©¹–Øßx> Hqs8‡gQr?äŽ™íþ€()ç-sÅqÀßý¹9ÛEÐH$õqˆYÖ¥húXVf#³’#’Ž¦\'ŠèFuá,ùªndH%*fg%…Ä¶ P`…ý„¦Œ¡Ž\Zº*eÕÔ|¸,|ZùF H%9x£\Zq´Ín¯‚\Z1q×œñT¶cM‰^kßÉìÈ!–9èH&òuRCUÔ\'Z/yš§Ö–ÒšëK±ñ%„	”Aª’»°?)%¸‚ÀH)­é5¢âÛè=&Åæ›ØFÅ¶	Ü¦uˆâÚ{®ÖÀH€¯Í°“]¶¡LâÂÏõáÂ€V‡ð¬b\\Ú­&Õââýñ.³”Š‚=ÈœuõP—ÊÉÛˆHœ§mÍ6ñ>øáº|[A/‚Š›/nÆä!ÒGk°\r‡¶Vr]y³“˜ÏæÈ$¦gÝ¤H¤^(‰N\r‰:êÇ™œÎÿÒòâ}ÊÙµS„|…n¨ÙÖA1`q¹ºN|GìëƒmP¯O²:€Hª#‡Ã®¨qƒÜqàSy~#««Öôz~¹N	Ž|áj£-aµ\0½çäÙ´ž®ª;¨¿8+>ö|:É¤ H²Tz¸¯L›?1ú`P\nw]êOž£}gŽ­?\\Î¨UD@ÿÑQÓÒ`Ó¥Hµõºý>›)zPn®©OCž#RAÐ­fAòŽ&EƒJØH\0H‘úËK1†€}`H·	ˆLüÛ´€¢wPÖ$«µ¿B¿ ‰)>ŠìÇÜ7aÎÐÀH·Ë ™\rŸù›ÓÛÑÉÎM#\rU{dª·<5|ó,ÛžA7¶¯mô“mQº`H·§Ò§c÷Þ÷Û.\0™)\rÎ@Påâ£ž\rPàêx5pUÁ†Ðî0Ä°¢$H¶”WdÚÓ}²¥³tñY:í¢8¯n…w{¹G·é›-ñš@S“rHMåE¯=›H±qŽ³Õñ.FîtÚÑ1Z„¥ôƒ¹¸Ð“¼¾ê”Îj¿‡vèè’+HÙoI_@H§F#x´Lüôµ]NKdÁË.Kg ´ŸŒ FýH ¿þg9í·¸ô«A@H¤ß\\Å0ÍM|1oà£>Ú‚1*àø\nÕ2¾+e»P~0^›9Mú$zá²eÉ@H£o‚êÜÏ{Fiã‘`ÞgãÈ\n	\nAÜlÎL¥yi£]¢UNˆê%!ã÷H¢¿ê|Œ£w²¤gæ\nAŠR9è[k½º\r¤0Iq“T®‚ùl5™ÜÐÈ&TþøÍPäá—€H¦Óþd{ªa{å)¥/Rd Pé&°ïLXð®ƒ\nRù\0d ”X‡3pÃ‡ZËiëÕ¤ Z’dH«-€Â&Ü²Æžo¢:ö|¸nl¨;þÒÙÊtÊTÏ,çÁ8[,m_2JZ]ê\"«I`H©ef3M­F-¸áD–÷\Z!ôN½Jž¹\'ÙHäïÈ—ÛQmó°.¸ÇŽH§®³;j±¨6¹gkYÞc†Q«.ùD*u˜›ª’h%Æ_Ÿ×Ëyy`H¦T¨œl\0ß|þûœ×¿ø€¯cß%#£Ù²MEûlå‘ßlÚÆ¤H¥û×&Ó#Ãè”ÐIbÔÐ_O vÀ˜çSZåÞImtâÈ–?„½b‹¼t*gµ\"¦H¦RNU%·%rÿÀg>œtöå’¨­\\ªw†Ü¸Pð\'ûýŒ,ôû¥¸NÔgØ\\âF-³Aÿyiÿµ¨H¦.S£ì(S¹ŸÙ	\'(o¹-eÐƒ¼{å8áæ¡8š—…¬ÕÚÌnl)pš!!Ô–þàH¥‹Ù=¬.E’YúÓ%;ÂIÈötÕxW$Y3·¯9©>åÈ¹„‘8ç7ð.ïÉ\0Õ›+ßiî€ûhô>£S{¬€H¯4=ÐÎ¦B2¾zºÀQ1À„4(s³©Cy;G¤çløÍ;HÝ¶RMPRÕ-ÁÝÏË‘ßpH´Q-YÃÝ‘ÛëÙ•É êv™ÑñŠT ªN‚rËBd·Ëß\rsïý‘Îbcã¥},¢ÇtHµô«ä\0#i¢ÃUËF/¨B)»ú3Õû\'ç:é\':<Ò\"éÆõÎƒ	ÇÝ78Hµô¬‘Âoåöó§Ÿã7¦²ãË³‹Ÿ!î1&„ž/5È»	ó\'ç­å¯ö¯ê#€Hµÿ“Å{øàòåîÆÃÃ	P«{?8÷Ý%ŽZ³\"<`qý\r¹ùHµ·#ªŒÍ±`§:™þ¨(õ*¯—ÂRœ0Ö.jùÝ[Ï@H´\'b|žñUzÀx\Z|Ãf·\nò†Fß)ôHHåx¬ôµ<	†Úó9&Hµ;ºãÊ”6|ƒJ,^ôÄÄË`¨ÏÂÃæT£õöZ™—¸OJêwéB´HŠìÀH±p |qž—*Åhù$€¸‚ðË\n¾W@ö\'yÇ©¤ú!ŒíŽº2µyµÄÎH¦%ƒTø¢ybGµÊ4²G<Ôßyó;p1é„!\'ì½ìîE DH!»ížl½+!HE.XŽ	€H¤4§¢ùóoœ`/éˆ%ã5ÉÌJoH\"µÁ<{ÑÛ·Ó«à—\Zµ”Ö-%»¢ƒ´’«z•H£lƒ¯c{±«O\"Öúµ×akBÅÀUÆ@^í7$JÐ˜°Žø%ú,z¬¦pE|fvèH¢(…Svd8²ù,kP[ž{ Âà½¥†§‰¸Å+ÍÖ¡f¡À8ÒnkÉÄ¬H¡ÃyòAþêøèÌ¦¾‚–xs’aÈ\Z6¿™âIÊ;R6ÐHO#\r#¼QQ)6úa\\›àH¥‚³åS\\Â—ïFZ‡¾°çPŠmð²áƒØ‚$Òéšï­ªb÷qÿÊôVn[X(H¦.Wi\n±îhÿåxzPú´¶»vb&µO­Šé#û(¹|<XÊ]<E®€}`ëZöÀH¤Þ(ÃY÷aú¾%J@>·—^ªÞ»nÖ÷¬?Oÿ‡´¼Rò\"®b/Hm	ó&B8OggS\0\0¨¾\0\0\0\0\0\0\0\0\0\0\0\0(\\ëÿ-.-*,\'\'$#(!*&!(((#*++%\'H¢P#ŒËr·¡Îíµ.»¦!\\õ(ƒòD©¾‡®’»x qtHŸÅÇŸ¦òY¯\\úVW¤“­¾ÕÏê7ƒµ’¤ŸjLŒàÞõ±Ý)a.”˜¡ËHœ}Bš®úçüÚ¿$±ª±ÐªEiRÛ¸uW·Ì0c+CYÛìÆf–›\r³9\r@H½­kg¼§ú=õDûæT‚gÔ%Ý?¡8ê&áŽ+K;«(…n¢@òƒ#H-~˜™Ï¥YO#;C’­|Š¯íÞÑžl>\"|è?ÿÖþÃñ¥–- ýO,€H/	`¯9 ÐGFóÍ°D™X#Ž½­Z‡R|ûÉ‡àÂ H+Œ,xÜ°æ	V•d‰g‹Zpi¯i%‚é·Ê;#½ÜÚpm\0€H*ñK Ûj?.öÃæ+š2‰ ŒiãMFWmL°:¦ÑIi€H)£ÁXz	*r\"I·‡Ë÷øÄGƒGŽ‹…0é³ÈH`ÀH*ñIŒÝ¤9\"?\ra;­TúäWqŸúU>’x	 ÉìiUHµ#áàHçœâú¬TgÂ‚ä7ÁÝ5óûg4s“?.î_®H\'ºÿ–îýN’ÒÜË77•LñÌèŽ3êyÊŽ¥\Zçë\0½<Ì¬ ÀH\'»=‰\\@IP/¶=z>‡›2Ýÿ¶Î\0k‡ ù¹¡m¥E@H\'Å7ÒQƒZü4îZsDq:¿r«ý‰°vÕl!Ë°ïÛ€H\'»¢Ñõö¼iÍ,¡¢§`Ÿ{ñÕ\\ˆ¤uÓp|i9ãÙ¾HH\'ÅfñZ±Év!2Ð‰H t4?ö½ê s«|DMRÛi@Fn‹¼¾H)uá*ÀtOˆ·8Ç©á¹¯W×‘ßf=$é+ÿ`Yöd ØÆP€H)£ÁÃøpOŽÀÃ<Ò›a3CÊ:ï*‹ÎR÷®U2åœ\néÀH)­¿õó¡j%k¹p=Kò-MëTG¿€€‚:ª~N@ñ\n±Âèi“±H)®3w)(rÔèÍãG½ÅŠk™ó¤[^Št¼z˜‘´Ö€H)£ÐA&µEç1Xûnð‹Ç~ÒŒù4ië¦ë4´É6Öë¸ÔÛY¡àH)®Jj›„HápJUC6Î¿R˜õRM…)úê&[ÕÌ°eöiÞH)¤ÿTU›-4rÔÁË,ŸÏnÖ–ñJ·qñjýpÈ¢žÛ0ax','mam iuiani.opus'),
(47,'CÃ³mo se dice','Imasatak nidiru ka','2022-12-051447151151288comosedice.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0ÑZWh`$\')+-(*$\')!&& ! %#\"#\'\'\"%((\'&%\'#%)(!)$\'(,/6444631181%$)/D:,40+-/.&\',7))3191;;73-1-6+&-2338,-HäÁ6ìÅ€HßÍìOÌ?k²êŠÃÚU€H†\ZÈ°{ØáŒ©ÓE­)\Z©÷‹½+P>ãÁ	0¯(AH†ŠòÉC!dÂ)§QŽ\\€GBkØãä)	Ì§-[ah)æ|4ØH†¸àc‰WŽNäŸŠç|égyN\ræ…©£ô”QrÈgb?s<‰ÚH†øÐfGäpµ™ÌaÃ¤Ù6>îÿa?Ñp6ËP îvà(]¤òºl­ê•ƒH\"Šº…éãr{8ËÚîxNÙv£Ê?ã9ú/?¿Žò+Žaçhžü\\H!Ï‹É_ØÜUþ%Hº½QPåö8M¶ \"G<q5óZî)­ó—€H%N.©î1ÏfEªÅCÌÝÔwqc–þ8â½Eãë‘f±Ìð\r}eÊ[`H\'›:¿üÎ†nl¡ÇçØ™é2ZÉl+	šš¹E(p.€H$ôŽçp.±¨Cçw¡*àù7ÄCúg¨Ô`½—ìGÆòðî‹\Z\\H%îÆg?êî§ŒÜ\\Td×ËwªŸ¼FË¸UXxc 6¡pâÁ H%8!L`fÁ¡f®QÀúw…‰}Ä&úoGBÂCé³¼H$ô†ïab··àI°öõÿ°c‚‘>ŒÍ\n@/åû;Tš‘ÝðH%ïÈ2«Úê·_aîa˜R\\IÓ1ñR¨Š¥Ö‘­=@A \Z€H%D±þDÑ¦vË¿€=N›ãËa—^ÈŒdvo[ H$õqÍ±HÉyŽ¯ëÿE\nï@¬@­H/¿ÒxFˆH%ÎdËa§Äú\\bƒ²,\"7õ°úï°J·¦¬M¦Ê@H$ôJØ>Âõ­Ò³TÚ:ŒeŽQe€V§û@@è]Ööóœp—WÓH$¤æd×7œ¬‚¼@Ã:ÚÕ!PÁž_2“;îˆ¨ZÇ€H·Ý»qÿe\nú~ðd\'r®K+Ðw¹™¦v›—ñÕ¦ÈH$,ËÔA1ÌJLðAý!c)W^\r\r„ƒ˜ÿiB;H!Ðõ®UÎ ÞaáSâ1¬¿Šj&••nDm±é´\nË“ñ…§Gï‰H\"1¿¡¨*ä¨Ç¦á?Ýu5FªûÖ „Ë=^j¹)wD\0\Zò<iøH%Ê `ˆ<HYµ¾«e¤¥@Ho¹Óò³þÃ±G^â¥€H$# äA¤žèå?qî·’@ˆÞ#olxxI€HO(ºÜW¶«yH’hU×ü}\n\0¦”«›JÏƒÄñ„¶™€H!öÞlþSš…“ÞÂ©_/›Ü{®Ž¡¸Pm˜âb:Èãß}ˆŠp`H!ÏM£{*ë±15—gBô—UfêþlÏ3pÔŠæ\".8gÄ®ÇŸhH!ÏM™Ë\nr*êÛÆGºô)ƒÄâÆç^?…\r²ˆuÞ„aÌÃ|±sH!íªü¨GH*Œî7ôÁ30gÞ8Êê”\nq=‹åM=ñéùsj”ÀðH\"eG(([ðeÙWŠ6z„}˜ø^ë+!–Ð,\'LÔ\rç€H!ÏM>\rq—0>˜lê°?°ã‹†sw*ƒ“ÇË×êï„XŽzýnŽóH!ögZÁ%æmÏi[»ö?O¶Ð#¬ûþÒÅÃ¸®b…T²@H\"Žy,q¨fÎ!šPæŸ¤­„yã.>:úÛFq³9Þ­:ˆ½H!ÏM fmE{ž©—Ð×~#tÐ£G06‰»¦øÐt±v‚g[ÅþÒH\"‹â[máÝ—ÇEø”Gkì£‹+?yhÒ‘ü<n3¦7Õê´ôØH$”ìß¬„LÔˆ_@V¿uÐòŸ\n/(\0ÒàGbY0 ÀH\"e¸ÂoQ}±¬Ÿo-Íš™|>¸O¢H˜À@SÛçAµ×ÑHT×-àH!Ð`5[U@$4Þ¢R1+!ŸhKÏ0÷W¹¼†É˜þ÷Î™€H\"ìW2$¦þ´ÔoÂªf/I¹ÜW›Î­9ª/ªæÛ-Ó¼Î>Ð*Œ#H%(ÜÃaeIB(+ž! ·ò·1‹â*HDumoÒ¿_qH%V¿âZ~]u§ÓÆÖ5%·]e<óáÑÎAÍÌHÀŽ=-MÎ{õ17€HÓ~\r\r¥+Æšý%[32~¤`VÖ2äÇŒÁK—¹Âä‡Úw$ÃD¤aca‡@Hût5³`íZ]Ñ¿zó¤…„´¡=\Z\'/Í_Ù€	‰ü+ü€£Ò£\'If0[\r¼H¢õ+ðGn£[ÝZ£¡ãoéA‹ël_ÒÛ®ÏKÅEõ­ÆcÔ¦]Tã$×yUðþ¦2ü\nÀÇà¨H¥Š¨“÷	ß}«Øsë#‚49ë6™\n=¦í96kÀ&‡~5ÒñÞ¯‰÷n7BŽF*H©¨7úùDà)a|=¼jÅ’=Ô(M%^©fhmlÙÆ0ãn\"Ñž?á~ŒI«`YEƒJ€H«áf³ÜÕw\ZoB4MÈ÷È©jÊÌ=ÄwÎ7ç’ô =­XðcÉ~À5†Ôj%ŠÅ¬H¥ß²\nQ\Z?#JI\rk®ÄïË8…?›ªK±\'uçYcuÈq!Î*´Û6:ÂÐ@ ž*¾H¡H+]2IòôÒ„m=û ï˜º ×!í7¨äá{fZÚ§“¸Äß]ßôL]ô{ÆÍ•Oä›H¡uró[wÂ$lÄÒ’ªc¾qa	.c.Q¸«ª-®‚Œ1[Â&Ç¥²­qû.éH¢©±þKÇ¦pèËÛúÕ×‡{7@½+»Ìöå×²Ä~oÚÔ%\"·Ý¼\n|8iH¯3t#\0àºÐ…7æ€ÒŒëƒ	ÔÊg«¤\nð¸´#¸ôü01ŽR8¶ãþ6IqºŽç˜öüH´Cš§ç¯s}’»Û†\0ª‹8…SàìÖ•1ÕHì\"æ\ráÊâ_¨Ò&]°<6ÿ%´_2H¶CÄãÄ7>Î“Uðu:,/9IëqQ÷Ëqâ~ï\'¢ò}æH¶ÎDÄëj„ˆÍç¿—_ÓÁ¾Q§g2}z,†ž:ëH¡„HµE\n]-!ÐG˜¨¼©—’|yB÷=›%P¥Zþæh€ð,¦é6:	†H´Î„ß©­ÞôûÒ´Óõ·cÜà2B¨å	\'¬/à\raR3BžDƒœ°d¯®¯”ÐHµ\Z†ßxò¥2)p.ïWôŠ2À¦V†b’=ŠwÏ˜>¡`-¨9¦ù‡öCêk†XºíNønOmübä_¹’-ÒH¿s’ xÞPýF,ä¦¡ï¥RÛa((®·õdG*µ6á»\r6Ú;\"\\¦šk*¡X,iPH„ÉíîE[‡ù„I™FkÃ5uÓ…Ï’ÖoC\0!ÚýñÙ`ñõÑçàH³{ï­žÓÊp°\Zí›¹C!fJ„ƒÕUoÛQ“c÷î]ŽÕz<Û£hfìÝË¡qÊåôÙÅH² Š¹¾Â^„µÃÂ^£º‰û¬wßaµ÷È­A\Z—4>12Æyhe1`Š0H°5^>äHihLõqjT®Ä æGØ†V¶Þ.ÎÁhI/i§#DAb`WåÑ€H¬;s»½·ËUè<gèÊØcÐ’8r5Ìde­0M3šwÔT>Fò¹—ÊH.©6h‘;M)	TlŠ€ö{ÊÄh„ô”èÑF~7[Ù&M}#­¹\0ð`²àH›òô…Œ6ÖCêôZÖæþ@Ê;°]ç“;ÌÊ™›õmð–E¼~ÄŠÞËpHsNÍÎGojÅõÝ\'çŠŠ?Ë@\'þÒ©<LeÚ?IÒº[èH*ñ=¶K¢\0~Xð©:F§ÿ3\ZœñA\r7Ý,ÐI…9Õm/z‰<@H9”…¦©ÚìS¸ÀpÄ_ËÔ‘\'›¹qM%ÀÆ\"7ä`fRóœH°à±NaaÑin‘Ö:\rx„V\'¦ïKqS©“Ðr´4Šz(Åÿ:]«¸q›2=DU¼Q¿P‰ H±ñôOðï Í½j5«á†ºzÞû\ZÔŽÃJOÍÕoüC¨¥`?)ß“:PH²Í\0áU¢«[Ô2ÔÃì	\nì‘Ú¤É\n½Ú›™x=hºÉ³æf>•”Ö€H±á|EÿFß÷e,]uõöÃB¤/oÈA¢\Z7¾ü};MÓ©ÓÃ¼»ÖÞ¹ÊæH®È_×`d6‡ö9(ÂR/ý¥ãSà‘ìbòÆ˜¯äë>ÁFxªÚï«ëOöˆd¾ûqÝH¤Ýû¾d—:l}òBW¥Ñfßë‡C5–BÞ@‰v{³”œb¹óœV®æ]:&*2øT²$àH3¸c;Æ›ôüß[‰ÈÏåÁ#[vP–N›”ñ*ìÄi]Ü¶Çù%ð®B{;@HWb.¾óükG–ò«Ë|äkL5A`m“ÃªŽÙÓÈ½ïÁdªÊ»Kæ“0îú\rE°]$aNYOHo#šÛ‹W˜ãéÁJV»ßTzTsm§)N6ÕÃÊ)G‰FW·«´×Ô<È¿¤ƒ¤Î|Š|Ÿ¬xHžç/’gÖÖ“/ÏE©ø}¶Zˆ_Ïs³~áLD¬Q\0)“ðkà„êÅÞ}Ø ö.Uû_ñÏÜ.K²H£Á]ÛÄ„li=sòˆ+•ø´8‘¦«Ï¡nËP*ÜóºUÓÒžx­ÔðR¶\'ôÄYe4t$H£ÁÔ¢Q:›àô•×y‰æè–Ù.yéí&ÿ{-ãdü©‚ÁåCgH£Á™©èbÃK¦}^Ùòü”Žœ‰’ìˆÊÏ6¢\n £—èB[•âÇSHÞ\\uSFXH£º^È^›bhH˜Ì­Ûd\"ý\rÓ+öj»óÍå¯Dì×\\­Àä’jÿ€H¥žû †-$ÒÍ*.x#[nl\"*ÈråÍi>ú¨%~Êâ¼}Ä] )üýEFJI(H«ˆZ < ûw¾‡«U©»Q$ï†Ø+e¤Ã8¯Ÿa5¡Ôø¤àH®Ú7oyé½$˜\".>ÒìùôµÌˆ”ÂÜÑ²@H®}8Y5É–mcg.×çVá´!ðÑ¦\0ÁMäÑP¡³{Y\r†$H®“nz¬XbÞ\\\rÞcÑÒwíWÊ-<,úXÙ6\\²“k‚éëÄE¢Ú@¦€H®T7íð¬åõNN(U£°7‘z·õPj˜¨0xÞò±ð½éY@Õ>W½§¨!=€H«-_I =–¿cyc»04´­°H÷ÛB3} ^uµÈõ6gEµ=ç9)EÒƒ›ÛPH«-ƒ~€–ë©[Åêb%º¸É„.[Åºf¥tÄ¶ºCÖ£úâú{¿æ‚ov0H­2Î½G”¼!Ä~=‹ú¬ÇÖPËÖÿ-Åå1=qú¦`ôˆsðj,ºÚòÎMjµæü€H®ä$5M8ï=W[2‹‹×w1± `ðø/dxÚ{±ª[Q$ráqÕdø@H°{ˆEÅ¡„ýÆU\\\'„,XÍxT¿²ÛÛ›ÆøG tnO‡úñr¹5ûæOggS\0\0è_\0\0\0\0\0\0\0\0\0\0\0\0¦(B4./377-45/0\"\"!-370/\"#+343)%(!&#&%!!&%)\'#$*\'#\'%\',%#(\"&(#!($ !\"(\'&H±ùyE\0=çäÖk³ÑþÂœíã\nç´ö<ê—þ£òHÍ hÄ@(qú.u/ïTG\ZEœH±ºÒ7lP”V^ó¤_!þ£Z—ÄÞx!÷ê~Ù,bÖ}ÜDžwt–uáÇØ…HH®^8’]@t¤ÉJJPCËÁbÖª¶ìÕßÜ¡Évã5&tÑÄÅm¦Ð4ôÂ&H®“·_’ggÄ Å½\rõr9 ÞÔÌYé™q&þ\nš†p‘ãt3¡fbû;½|ðPl©0áH°Zï,r$Å¸¶I@‚S—Á¢ˆ(ì^ùì`š\\Ûy<^ñi‡¾ä¯h…ÒÁ<ÊSUßCDP?¨H°z0nõEªVã¶ý(áÛï1sžõ_\'Z‡\r¹z´\'¾ÃÉ…=#·1æhqçŠÀVÀ\n¤3äI°H±uRekÃ*A¥h@Ýc¯N8ÉßÖl¤ñ=ª‘\r	¾‘“þ´¼ï\0Ëgp‹H¬_1®©sþ½hšîñx“DÄh7ï)s•ç¥-º}(G74•ÂµNrŽpfrêH¦“õœ”ˆÛñ…—þúô—¨¢yU/,~La€ñHquåÅtrè\Z8¢gìîH½Î\n›mÿ–±8H§-¸n)Ëœækë—›>Q€ÔxÓÂHÝà÷¦Mw‹IõúÂÓdAÚÑ&è+%µH ÏD÷©ÛXB¨°#«Ó‘9t7±ò¸ËoE/ÆC”V~ƒ½RzÃ¤äÒÏÉØ€H06Gþ®F“zæ‚¤KóÕÍõØú×ÁÂ’±úŽS½ë¡HŒáhûn€‚ú$´¾ÝÊ½VR½]`ÐRáÖïî›L²€H)þ~\0äœ¦ÄúSc€\nÎ\'‡)n:PñÁóóHëpH¨ÄTúÇFüZÈ&ÇÖÑa‚\rÈ9š§ùõáæ—µË£Õjú‘\0¿GE2 ÀH‚¼À}Ñ”\\½OÍM]Y_ö8Ðx;Ï‘{’ñŽÓÁk³!{Œ?Ž-²ÎÀJ¢]I¢«¢H«Æ|@ŸBoÄŠóqYNßli0`¶\Zñr#ƒVÅþe¬h+Ü¾¶eõ$ ‡ŠfØ\0^	ë7þ‰>ù@H­UúËÅgânã\r\réÀ{²Þ	çN1)þŠô\\Ü°Pv>›†×w©v$¡y@H°hýW`ä\r”¤zd4TŒú‰5,†÷eí‡mcä«ÓÑ‡ßë|ÅÄ5DòH°ãuï¦\ZýXÂ]ÿò™ôÆú?{¤uÓâ#¼Y+w€ú#H±¼¢’»V¯2¹p”ÇÁš\\žîýgDEÑuüz;Tîœ¶•H¯Ì4+C;]€©°1ò‰~”´ÓnþéÔoc³“ï£8Ÿ9§ûï8ó¢‘zH¬ Â˜ŽÞU£—Beé¡wÎJŠFXÉ¶ŽÔ£¸ôÕÕºk \r³7ÛÅo©þ‡Šg¨”H¤Óá‰<š_‰×q–œ|¼rþEZ¶‡6<jÑ@^óJC\n0Å^ !ÝYût‰ty¶àHŸ‡IÒF+ø?Xn[ìÁ4z…Ù^Ãaò6y²\'Ï3€Êùãæm¯vò—‚])«­J@H4ho­¡TqW×v_â›wý¢û„÷šd5áúæç20Ü6™b4÷ŸHÌKøÐ7÷Õìkò\'<Ó„¦fÍÚ¥ÿú·ô8Ž”øŸYH.¶G2ÖFJù·KŸ~*¸—Ê‹\"f¡Š_Í,–eto©\'ã€H)KH|Â*UO%GüÆ¤Óëó¡ò£;‡²üF*ÔÌÇH²ºÓÜc³;þe\ZôÝ…ã­°9J#Ôð	ßæÞ¬S H\'\nÊqõ9Ò¥]Qó²Û€Æß˜È	û?û>k~\\zH\Zýdz—ïœàCïÃY¡£e,—\"\'À;e„\nÜÖËYÒÆ@Í`H!\0Æ‘Œý˜1âbŠµSo<ïK£¶•\\¦J±*žß»éU±Œ Hmg\n\Z¨gôø\rJ»°:U~þS´t£´8ù£ì_æ¿^æðH«UämP§å®îeí~LØr­Ü1ÁoºQeù{ÔŽHàŠòÿÔSvâv¾äbe½–,ü÷gª¥,ä˜Ù@HÔ1ÒkR\nÕ>kAFHÉc£¿-‹üªcŽû{çÇ{þŽÍ:ºH!Ïš6²píùt9)#¾ûM°–¸/Åöl® ®ÿVûÃ¾Ú”H\"Ç:ùüv“‰Í:j<î”]Ó?éXI}Â³P>32Ñ’Ô0H!Ï,ýÝzÜÐ•šn\"s\0ê.Ñâ\Z³¨š{ËIÆÁ5\'÷ì-ñ\rA€H7„›²÷˜`»#ÖŽ:D\'5 K2&ÜvÒÀJX\"	:ŠH%*–éž»Î{4}mÚ²f1ŠÞD8á¥8Âö…\n\'UÖ[H%›—¯™	j¨6T6ô‹ßÝÂ®mX5ÉTÌÀÛ!«§†ùgK»Úu4!€H\'§ðHVÍ“Ü»ˆzž\'¼ºçBi¹m8“±›ß+V„Tø.û÷Hy*ôÿ\\fš¾i×QCŸÂôÅ.ÉÅ•G–m8™*Î‘†o¾ÀH%*!K®\06žGú­‰… îÀõÌL;­ªçsº›]“·»S‹€H%9¶¸].Ã8—¨qïwÓÜQ±£ð°¥õBô(ñ%ìxH%‹|ã0@W‘>Ö¼Væé€\'Ï}°˜™BƒÁ.o¦¿w|xÞÌ`H%)ž—…ZOíõïûoÏ4¹§8#,™¯Ëå·\r†º\rûÚÛÔßâøm µ¨ H%:ËVH[‚qd+\'Ä¦ÒØ	Ñmb|H.Üz’p¼>«µ~(H$ëNkxqù˜Qó8ëä(ƒéÇ6ƒr‰ö>Ò¥ŸJUæ)@H%*‹=š!µe¥Úpæ=—ûÄ\\½~ùt´Î‘\Zâ-Ypïpr‘3ðH%*–&Hý\rãäBÉ” òÕc×.¸çG64ÜØu1„H%9½js#ÙŽuX!¼qèýVxVžC}4œÝiC/®óÔ\'Ž¤H%8EÝ¶Š¯}±’ˆ@\0ŸŽ€§éG\rÃ6,¼Á?ìa-§o,žå?€H$õr3Úû–®€^™µˆ©ÁŸ¡MÝCWhh ))Ú\n\Zl€H$,ÆÈÇ5`ã)Ì‰|o‡ö;.b¥î¸\0¥nàÇH\"dµ Ðkpú,,n.öÐK&ÊZ ›ÂE¯9¸g4Eá\Z3SgH\"•¹‚¬‹i&ÜÝÅùüÒN]Qúuj§’1·ø\ZÀH\"ã¡uõ¶ñ^Çñ‹Üb˜UØc¸Ó&ö–Ãÿ?ÑœpH!ÏMoHÂž¨+zµ,ïšmÊðuâˆ¡{Î««Ã\"(£ H\"e7ÅË±\n˜]W´ mø-»äÙÝ0¨ìHªšYì7¦Ü?8‘îêgz9ªe`È/É64yÏ’HÊMµI˜ï*Wáƒ˜wrî°µùnÛ »\0tÙíg¹ÂÒpVÊùdH!3q³šÌ\'IìwoiÀ8J8¹öË1í<^ž¢K23\'Î[€HÌYcÐÉ3KCå1¾ÙÙ´CQHžD´¦¡L£îQÕõQÇ€','imasatak nidiru ka.opus'),
(48,'Â¿Que significa?','Â¿Imatak rigcha?','2022-12-05144749387918que significa.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0î“5a!))#\'(%,& \"#\')**$\'&(*%% $\'   ! \"!#&(.:=6:5-1.26-%051+,,6/$,+4449<86*/2369\'#&.+-7\'-&\"&0644.%%#HäÁ6ìÅ€HÞ‡ß‘T\0Dz–ÈY-wný\\H†Wm-;‰$êŒ¬_ç îíŸ’âÞá¼xôÛ÷ÛÖÄé H†d\rÛNó‘¹=éòŽm¢2Þ­²h§„\"¬³©Uê_óƒ*¥	¤¸H†‹^$îa˜˜‚U¾ôÛà™°…Mîx¾¹üÍMîAjRžyˆH¥B„»á@ThÝ£J<…«Y/¿ •¤=M\\Ää—Ê4H¬ìW¸Ç¢v°¡¯]3³7³GÇ_ÇJ€_>æB¤ýøi_’·*m H†Ô®8²\r“4]iÀVU\"õÜƒÂHsÿëy›Tæ©ûžŽ#Ð<HªòG;Úï¸«ù½²ME¯(mÏHÓpÎ1,s2œ·ð&¸èHàf!ˆqx™†ð®Û° PcúŽ6ÅÄå™SdãNK?@Ý7øêk¦€H\"1¿§Óá’t4/ÚÃüÁî\nh°süqåå9|I?Ô7bbÐH$õi}Vô¤&3ÜY]ö5?™Ä‹\rPã=¡¹á½ûH™bDüÐÓUÖ…EùßÃ¦dm½k=ù—ô`vþˆ›	qH%9ž)öÎëÂ`Fø4Cj´¥—z ·ÔÆÜ)³ÅH%ì°Ú?»&´\'÷S>E­†Ñ\"\nëž‘Ö‰\rŠ7Å0­ÃF­fH%ƒh}\\\ZÆvÑG&Éi+éIR9ÈÛ=d^äŠ5ÖyêøW€H\'›LQ-Û:ö‘Lu‹Â0È-,ù—uÜ?«ã…P³„àÞ¹>ý—%jH(d¸©üÞI#Ü0–·6¥¼i3DØ’,L|–Š	#-Qå§\"S\rÛ£ÐH¾Á/@y(çÆY)˜5¥øç(†CŸÐaâRJƒ¨À|AhH)£½ú#Ð°„I‚v¥âuÜœS¹£ŒÎLë·é%:¥W\'ÈH)­ö¯à:Ï²hµ<ß›wÉíLûÓ¦LEiÏí›ßðëO/àK@H)„T|þ3§Ô:õÓ.;”ŽA½u„ÒV8¹¬3ë¤ÂH)¤²ly·]ó>O nè†æjäŽf×Ó¤6°¿^ ÷ûÄJT^H)£ÌËjÿéŠ\'ú9=S#¥¿o†s}Ãßˆª‚$ò]îå#7¤Hõå÷ÎÞüâ÷÷d‡$^–Û›Apr£ãÍ¥XâµŽÍ»›Š®}H)­ö¨CWá÷[ö*§~¯N{5Á§i){ˆCR‘ã„H)OIVµÑ÷¿#ŽŽðVÝ§KØËœìÂ»›p°›5µTH\'³\"¾S¤€6Žb?¾§ý“&¡÷¯Fr§(Ð;P,ºÄÀH\'\\ÌÀÑÞ!ÃSüX2Ô§ZŽa‹GaÎ{9ÐŒH%„`QºK\'ˆÙ”Dm`×ŒØa%Ã×§+ª}×ª€H$ô)ø¼WØg(K[oYØ!\"È„oÃQ|ð[;„9 H%*f\\¤Þk»Ü»³¤ðøÇcé­V\'v|Å¬jŒèýÃ@H$ôM™†y¥Œ<Ë„L>q\0¶LÖµ¾Ú9ÂPè€H%ìyþXÉö<Õùº¦­f_†G5=Á€Ñ#)´-VH%*f¡‰q2öµCê®6ì|c£aU£=l¡Ešfmã	%H$õò<Fu oõÆ2o¸O^qÜXóÿ9»ÝÒÊ!@H%OŸb1çâ®[ed‹\ZLÆC\nç /Ã£aOÌm<àH$w‚Èfoyº^ù²E#ÔÞ¯pAÍ{a}wH\"fîÉ€T\"¢áÜ	Ò”†¸ëÅÁ\0Koƒsóûû9*<¢ùu2ZH% ¢4çóêzÂ……!Dž“«¯Œ£¥Pï¢‚}!š8;!¬æ¬ÆÝ`Hˆ€ªµÕ7û¢Úvdú³œ…¥b{‰åêÐ.©± ^~3ŽèÕ˜hL¦	¦HHŸ9D›¶0h5ûNÒ aFe ¸~]#¯´½òj[+Î”h>Sf`I„)\0^wÁ¡«°§Jñå\"ù€H©vÉ×÷N8ªcñl#¢o\\ä}•®f™¤\0k)VñrnæîDºZG3þÄ Ó‰¨)DW|\'¶°H©Õ\r§Öƒ*Ã{ ÁûÇM8ºdÆB¥ž8›]‹vdñ€ÁçÁèÊ†hóÉN¬¤/­e>`H­\r„:„Žš…B­yîœnØ-~%“P¥dµDW8Œ‡ò;<ªB‘|ˆ„Ç³4A¯Òmý<ÈØ7PH®ëUY0«+~%MBº¢%iØJÓ?sàÉ÷ˆ2+Â»‹Ã(^·>±RÐS^´C_ËLÈH±­«Tü3Ö	}ý¸yíR ÿÂ­1«âœ4PD<æÅ©©\"væÖ{%`R@H§.¬‰ÝÓu+ßYn:DÀí‚tï…›è´yiµ2¹€ª2I(…wP$Þèd`ßH¢”vóÚy°\rÓ?]æ5®£éŒÆCs¸<jlÉPŽ6Y_NF¹ßÔ H¢ÁWjB–=Ûíu¡ïBZÀZÉ¹à\n¸ÑêJGÀ4&ýy\"çJ$T»	Ò“Ó~’Hª#pq“ì‰ûß~°˜a+q–¦L”5äz¸Ö%€Ý{p•—jóB’GðÉóu}%®H²ÇÇÌ™ÖhÉXÒJËÒüg$iB¬µ“ºE\0l^ˆL½£ËžZÉJ¥H´z0ÄÐÇËü<Ÿ[ÀZºÕ\r%’aO€×½:ÜÂd5éžÄH´ÄRš.k1›½©ú»OyÛž*¢õ	×¥¸ÔYò!IÐ[-ó,\"íð`™(…°H¥ß™!ÑB€tsÃaÄ‡Zr1VßhT‹ÁËè²<\ZU‹Â°æü”¯\0E\"YJKÖ*B1¤Æ¡ÔH½ä>;ón½³cÚå×¿^ƒpQ#M>FQ %î¨·;bÀÄ?¨¯.“Ç.GvÒÕ(H½¼¯@,	àÓÙ—lØX’CÇ£2`\n?ÐúT×ßNXåÊƒB!ª>ÐÛîH‰\ZfÍÖŸ ÿ=AÃŸÅð\ZÅù,[xâX;}|¼s &Š3páH€¦7m«-ÅÂc\0Èpo\"°ÎQ\'nÄ`\Zëý–_/mJ®ä+\nâ0H„1ñè~Á:L¹ÛÊAi¨?Ñ`L?¼ù8ÏdY¾¢Ô\Z¡=¢sªzwÆÈõ@ÛÿÅC«F€Hµ¹ê9$ñšyëñÛQpDD‡õÓ8§¦·m§£bZ\\MT«3PVä—òä1Hµðõü¾Söùd;¶ÉÌ´bÉÝs‚uæÖ¨=K®ÎS›ÿ·/H³Íd„614êØ×ÇÈ0Ä/~0þ·W»Fû…6¡†ê®Ä	¬OÓH³Ê|¸wÊæ¥½vñA„ðQ<Z×íOÌÿð;ÙYûà¿J‰˜ o¤©=@H±ÄNú)xƒ—| +„1I²®•,ãÔËÞÊÔŸâ*êìð”˜–a¶Ï\0{‹1…>jQSS@H¬Eò·6!¢òf_ÏÃ€\\E™ŠM4Ý»‘½4ìÂÅpµƒùáô¸Yã’ØdQ¹lšðH¤¸ƒÎ\nù,\nj«Ô‚~w×TôpU	U&>³±bl‹áWô·…w§`T¸±v¹jf@H¥QNß\Z©ÏÔuqW£3Ÿì$¬öá5â‚¤ºóJ=ç¾{r}Òµ‹!‹N%áxGdñŒR\n­H©©€ªÉûÜJc#¯ZÿG¾ w¬°sLß’Ò‘LÔÏñAÉkž©BJÈtñå” Y²DÉðKxÙ@H®Îx>{šš‡â‚a®üÉ‘L÷tÿ„ŽhÉ„™TbŸ*®bý™=‰³}‘CçvNÂ;Œ` ‡¬èÅ™±H³c4y³UØ”<=Ñªv¢¿°ä÷IÖ÷œ“c8lT°Q˜,ª4ÐÔ©!ªÒw”¼áÑ7¤p‰H¯Ï,™oÝ©uIÚõ˜Ë¿»wØø‚ÃaŸˆüÿß4‡ò÷Ó^~‡»H¬[à Gh¹*øþ´Mfc•ðæz!äÄ;‘µ|zbÃ!•ö,²¾ò˜Ü@ÕÍî§°H¥à®qû¼ôÒ†îú?÷cÙèŸv6	«\\¨¥¡ue*Ï¦Ãx-îÏþõ±ñ,Hž>q¬h8õÆd6ÝJó£ÒŸº3yNdzòåÕ^ö»é‘9$áë¿¦,Ë¨k\ZL;`HœK«Š`é‘`Ý	»î\01t=àÇ¨7›yrxÛB´‡—¹,±}ØÌÌ°(‹¤¼ãÉÄ/ H¾²FxÇ£{Uî ÈéîÈ—ÚëUç°²\'ÍËM‡sL7åwÁpqÅ{;õ¥ù(¡‡·cùˆÖH„-€R‚. Ù‘IÜ*ôgóéŒ÷Ž—‚q|Ì:8_ü‘[C€H7È#ìsÀEÿ\Z†µB´+9f‡ÓÍôƒ8,Ì°]¶<u‚€H6¾_”•\n€m0è4¶ãÉ¢hšTnÅƒu\Zá¾³Â æð×§fôHƒ¦âæŠAÏüŠÓ×ý.Ý¨]r‚³#¸l¬8y\Z‘´û±>Ê´èÒÕã Ã%H”r],æi‰ÓTüiÂrî[M•¾,\"0¨$e…[Å§2zMsàâ{Ç9\\H“ç¤)’4µÁû5§5®©Ád³ç¯‡—§PþºæÓãºèÛKimS*)q	âH­IIv%ƒ4žmuc\\ÛoôØj½?ÜO8Z”­`lZ{ï)våKÿ°3eÇ>Rö‡|­	†òÌH³3áK/7žŸ7.¦çÐvô@œhq	œsOÞTkývùÔ·aòÇ{.@H±u	±B>ÂWŽÈ·aïb!¹¯$£/?€ˆÌídkupwÅE¬€H°gúõ<èì¢?¨é8`1GbäZ‡Lsp‘	V7YuˆôD8¯DH°\rÿp¸jÅç»Ùž?Ž¥D÷;üqIHµàdù §—Ó\ZàH®;<>Lùê¯k‚¿é’/9‘xã}™ý?“2/PÏsˆµ0H®%8LáLŽû9‰Èb¡Ð·b•Mu6¦–ÏŒ+iªþÿøQ 	`\\Âä/‡¼H¬À‹5­‚ù‹‰#ãŠŽ^| «?«ÿ­nâØÆ{\'Ç¡æ¿R‡´yxõePûñ€feä8H¨àlÿ©^SÍö{KÜ‰¢3›	ÐPÏÓŒké7t„8$…“!òCÔT[èÃ`ƒ±d®H£N«Ê‚¿‚a¡\nÆÊglDúSç#ñ)4ÌóK!¦¼ƒ:a.qBÖd~TVr³ÿ€HŠoJ‹•¿b‚ \"[Å\nVOèóšõ«g¦\ZoúìøS¥ÝcLê¢ñã&H‰t]RrH­QŸv.È’ƒ(C‰.ƒbÍQ§Õdúó [^ÎÞ0H-4m)^êÚv<…†Vó¤iO-Lô5&¾4-º–llÁé<H)nbìrnÓ•ä=Õ}FgYÀ½¬avçA\\FÇ\rf{g€OggS\0\0èº\0\0\0\0\0\0\0\0\0\0\0\0¨™óZ###%$* \',),-++(+*),((H%¢Å5UÒÌ}ŠÖÞUXµ£vŸÎÖ–—¬åÃfOs(«H$–ÅŸp×{Á\'Öª„,ÞY—afV0ç5%ž÷¢È@hæÀH!ÐX/®)?\nf 30¡tÄhç­IÉ?ô§-œ«õ¯zo»­H!øÂ&ªF…  Ýt¢ú\rkïàÈPÇÍøgÖbðáÃÚY[”î´HÑíµÃÇÖQá“ÏiäA>üCO\r*ž-¨m+£þ!*[84HªIŸêä¸ô¾Zy.8ÂªÔ‡t‰„Î0R¼‹¨˜öç¿‚¬KHØÇ»¬#H%*eŸ`tõøÊÜòü¨pÁâøÇ·§$‚˜vöÝæìH%(ã×$’*\n”ÜÓHö¼ò¨é$kú•œµ€’‹\r{XÒ­Òö@H%YöÁ£7Äôî*Hwÿw=³“sš ìT¹FÈ‰ö¨£çµÊ\"ˆš2\r®€H\'Å”6Ì||°ØÝØä1+mÖâ¢‡Ywä??P6½CJë$¨~(H)¿²êtõpÌ•làßýŒ(ãTY÷µ/ácc&&´Ï,Ð5©óÚs;5ÀH+ÐË²¥€ãíÞP¦ð%\nþŽßÑµ\'‚æ™˜B­~X¤üüÏ§ÓÏ™,tH-wy£ý‡…êó4ÒööŸ1ðÒYxÃ~¿†ÿ Œg_²NcÇ]º}x¤†NåH.ÐHI“Ù\0wY;»æ>F¼ƒtÆ{Ê\"z7­\"›óßàRwEåóÔH.üaTTÆ®4ìÇ_å\' )O®\ZkQ´Ý$ºMÑ7+€›YwkwÐH-vÐ\\[è,µºÕ˜‡É­Þ¡é¥µ[Šº*íŽîþ~Y‚\\fËXH-x“]îqÿ˜7À®ß\\Qª?ñvYçÇ|jœpaÆ¡ÿT·Ã´€H,Ð\\ÙôŒ òÊ¸ìdÄeh>bšýÐûç{«ÀbOlHºH;†&Ý”2¦¼H-K†Ä©÷O`Èóø!¬`ðÌ`”\'£‘ Ù:»Ò†=k\"°ö0îÞŽÏ|ªŒ”@H-³7×Z@ÿICÖû¼Ÿ…÷qæ´M[ó‚ƒ’ÿÛ×‹Ÿ1ÈpHc0€%àýàâL¸Â7‹4¹°·k¬w¯›Nw6dT°×ñ8Ü¾Ë^À','imatak rigcha .opus'),
(49,'Necesito ayuda','Aidai ministiwakum','2022-12-0514481034349210necesitoayuda.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0gœ³¬a%($###(%$)%%%!\'(# !\"%&&*!!$$)!%$\"$$%(),315873-,1397;#(\'&1*7;877/5\'#!%\"$4:815-8503.0/141658/+HäÁ6ìÅ€HßsËïs\"ÃÐíüH\nÖ»“.OÔï“^T5uÊŽe½X¾]¢Eü¨fÁ6!H†cðÕLMJË©“[`õ©u¦ßLÒ=ÉÃ\0ž…,˜æ 0vp´¬H†ˆ>_BjW½?O@Y«=b±jh[ÑÑXIÉ\r@¶aè†dý¢ï0HÀÃ°GÎ=ZfÒûXÓƒ.¿6wO\ZqjØŠwDþ¥5]0ø!ÐH®ÁÅ‡¾è^¼ŒÄ‡i€$µ@>ìû!|óvÓ?Ù\nó“H†ÙÑlŽfc®H,q”z¿@c}„ëÕ±ƒÅ}~ÀnpHªK¥[Že¢9ÿðLˆ2ž6¼j‡ö¶éª‚\'äo{@Hàd!Ó€÷®Ô	’6¯ú~˜ŒÎÝø¬¶ù/C„’ýêÈÈ€HÊ¼ïq\"UsûÉVº@ëÑÛqG6{H‡>TzŒ·}cƒaHªj-¬rnä¶bÚU—~é*moÍë†ÁváƒQ;=¡£HÏòä5~¯uBD±;±‡.½þ²È3½Ç‘•¥LjÝ\0>òþ¼¥H!ø c¿\n2×³Wp	b7ñ™Ÿ!“¤íÇ?”H!ÏL\"ÛÖ 3iËÓ™+Šœ7qû5ã£QBB)t<\nË¤“H!ïC¨—dU*xÐpf³}7â¯÷yÀd\Z6ØPÈÕKÐm&34H!ï	—rÖÁG©¡³™(NÏžº?Y·cíúùŠÚôÔH\"ÇŠ“LÉäÜÙÃcŠC¿L ÔªÜõ\0´ëH!ïyG\"Ý×ci{‡XÏ’I¾Eð*ã”Fu=KdH!ï;çÿnT¹L³öNˆA¼7L²<C[ËT»Ö¼*ËhèJ;H\"´_üã>¼–²#´‘Ç³ÎÔru\\@±Iè%†‘fü¾IæH!Ï•¸­¸ûPŽçá˜åÎéöˆ¢]}9Ì’ê:6â.:H!ÏL_X¡¦fž7N´…*áaY>º%¿*åVÈbö<H\"d º8°ž’NÊ ïqÛÙŸŸ•²³†æH!ÐGCüþ_ûá]šŠÒEÂó¹%XÖŸ\"RêÅÞf\r„H\"cûr·§ †<&èâØ Ô¦P«¾3>tŸkwZÅUàÂ@HQëÓàÐ·$÷€ôÄ€5=Ì2ò|óÀ5øx¹X;:G€H\";s†mh”„x_\"-Óä¶Àî´¨ôà<r®F»ÛyNcü»)¨H!ïº¤Ëúûm{œ\r‚™‡`ø{ù¡=¼˜Æî¼Æn…u ÙÒ”@H!öìy»NP-*»ÊPý½;Æ{Pý	kO¶µW[›Ú&¥H\"d(MŒƒ}»’¦`ÛÀò	>…ôë\\5ª?çëh’@H!ÏJ¯Oksr6Û6âã“	wcŠ_ %ß\Zñ§ÿÚøH!øí·ã’ÅT mù«÷¸W@Ü/È;‚ƒTmeË<9L\"éèH!ÏLpœ×;¿£{¶\\ÊçÎu½é2²&Žæq/ºtvïÒ>øò\rfI H!ÏMœ™’¥Õq¬_7˜ânÃ^¢|zÀ–Ù<ôH–}9Ê\Z7—R;ùKÆæZµ0R–!Y?(£Å\0\'^ç/ƒQ§\"ýH\"À_Aˆy—\Z³~i] ;¢÷ªò¿íYÑ]“ž+Ž´fp°€H!öÅsÓi”u«éd†Õ!0ï~­”B‘:„èj<€ÈÉâù€H\"aÑ©†AÒ¸¼Óâ}™[~YüÅï–+Žã¢žÑµ³,«èH\"|$7Zé6+hÒ£èe9ÄìÙ­§û2n$ÇÖm#ÕH!ÏyÌá\\:fø\"¦Ç•X|ä+¯Ãµ¹2àÅ`näœuÒ€H\"1¿†‘b÷ d.Pã\nÓfŒ‚ËÐm&\']þ$î s?í¼J¿ŒpH& oØ»¦šqAÐwUÓ	›³N‚ÛÂŠ‚\'D4qc©n¿´îÆnH€Ò)\"[ªykðÿ·¯“}Ô³§7ë¤òÉ*ò< qh…,,I³n¯9/%„+’\ZH¡Åò´2§½Z¡l!cNÈÎCàâ0¶¨ÎHê‚Ýq/;çB)X?\\(¯Nu„ÀqÒH©ÕÉ|ŸãÝ]1¹#?ý•.FlgàE±oˆ.¾Ìïø–uO¶{1›…ŸN/¢³ý†ÚœH¯9LP;ŽÃzŒß:ºž(Ç%R7ã0 ­1þ‰¤zÀ€|(¿ýÖu³0#$GH²–§[ç\'ÿ[ê\"sPæ}8¹ô: ¬ísÆvhhá[e\0ûŠßöK´¦«^†\'tžqÍ\Z®ópH³·ŠÒ8|	¿=ïVMØRÉr.*„]²˜Èíî²°,ZSÎœP.÷ÃíË&§C¨Ô¶‡tÏU ¸H³ÌªÀòon%¡áZ1g×<~léœp¯Zw~ŒP„/¯“TŒÑõ„êE±ðLô¡R3H³;k¨à®oômÒÆ|êÞXT÷­ÒU‡àB³q˜¸ÔöñEJgèiâ¨î¡H±»®|ôWAŸÛ÷ºñLj<ƒÆ-Ñ!ã¦^ÜT>ŸmµÚýÎÚ7%1H®R§¸&l¹1Ââ½\nÀ÷nÇXä°?™€lzŽøºæÉ¸€1çÁGõ|ò´HH§‰/8â3DøX”\rþršœt\'h¢®œ¬	¢Ù6WLÆ_y;®ñ‡#±T†S|ß\ZL.bH¦Â¦<75Ýà\'áu{Å=M´ýf/¿Û\nÍàd°$0m°ÕA¼^Ãs<Ô¨tä|ý¡µÔï@xH¨#ñà[¿‘x…]À¶ã;€#y¼[WäÚÁÈx®%\nÓ;™F\"¨fßaóiãvÒXi  H´eTÀeÉ!”µšæ¯U¹u/h¸ìã&sÅNÕBÿúÝ}Ò’Ý+9t•ÑX½{åñ.³ÿ\nßO³ÅÙàH¸±NÑá3+}\n[¤.¡ÆóÁû–=|˜¾9ætöÉ‘°tdH·ÊüŽ™5/ëòëú|–fß›AC*HèßØi õÖäþãÝ^sH·¼bøññêpÎà4»|=F /q=>´¸AqŸ¦€œT±áX\\H·ÔÎt)oDrŸR?:Z¥£”A½|9^\0Öf1ÔP[ýn(€H¸›AFQX¸ÛY¥Ptq¡2ýlR\"ç­tüÊR\"I:xŸ¤ûËW€Eu\rODõçC¡€H¶Àºef²+”!tÞ€\rÌ{UF÷Ô÷ù2t §žàŒ÷>w‹ÑûHµ­¥`H²…‘Lß.Ë\rƒt¬Ÿ5ÏÉ§^+óg;÷;%d|\nÄRCs±²‚ x53ö=€H²$Â³Eà/Œ ÅU)çºñ™øî¬º×-æ\rÎ•x:äWä1¡ç³‰p\0Ì: H¯Ëþ‹s„	¨àKýT ˆG†éÅ}¼èYÈ–IE2’­,,ÒXÞ2H\0v¼Cû¡!Hª¬Q«ÍufIA½—ÕÙ:‘\0rH×E‘µÙìêì¼°DèËô]<Úía­@ï[[-^E\0¢H§­ñX({?PÜûÿŽ¿’	¤ãd±¼ÜŸQù—AxÚ¯\n\n\0{Ô¢x¦6QK»“Õ…H¤²æÌ—ËGˆˆÌýfŒˆ9€£O˜b³q\0Ø÷¨d_™Ç°JòFac^ä\\!ÀH¾:\0ibÅ|¬Ú(£ð}³XuÖÑéÐñ]æ¥ÿÈLêâ©v˜9øù“Üë”sS¦¶³œ HŠZ!*yeYø·¬Û/5äRßw‹ÉæpÿÕ–ÑOjOíÄðRøìH1VäkÕðt[ŸŸm”æñÖ_æÐè©1\0)ª`¼kž\\ÙÐH-mvT”\0±oÓô0bGÛ{ßK>¹sˆ³tÑè¥#`@H+„{q ežè)¨>t&*ÄE~š…à±ÑWW)òg·-¿ÄúH€¢â„À@®©÷ƒÀøêý›-:ÇXß¥–ïR÷m’¸ÐH)š@÷˜%©l­‹eFæ\'TÙ_;4Ÿ\nô!«7×1>Hˆæ¯Ï½¤k!Fúî`µ˜žQîQ˜ßE1Ü\"`È[@!.*ÐTfEGÌæGï<JáÄP@H›-Š°ã6àP“æ²ò^á—W^QÐW[•Wa¼‚g$è¨\"û/;Õ•‘Þ¾\"¿úÙ`&ý H›Q±\nWé3nî`ñF_ïÔë(Q§SXK·Ù)Äk>ìEcx9eú¨\ZÂ†²É)ü\ne;†ÔòÒ€Hœ-Â‹Ôgê@Â‡Ó„£°7FÝ\ZoÓ9=ƒà\'â“™M½ˆ ÆÖÉmk%~ìM@ Hœ¼@K)‚Õ‰–c¢JøäëE]oˆîgÊã„ÍGÃîÌÜíI«91z#E×O	âF5shE=Î:8Hž¸y©H¬ÑíßKfE¤º~{©À\Zàg1Œ+1„ƒ6!ËžîSN˜¶Ž»H ¾ˆÆûu»Ïý÷­–ëÔÁ#ˆ#Š¾ºÕV‰È´»ìðN6ºÌ³\r›¶|NÞ”H¤C!}`ÒÕin<]aŒºh`ï|Ò&ÍµÑ6¦»Ì¹6†+‹ñ±¹pJ÷ Þ>úá‹òB0H§ãøŠÉh²¹ÏÜE9Q3ÿŽoH{	mXµz¿FwþmÖU· (ägÓ•p©Ã_eH©‡£í<‰Ñ¾»\\c„s3Oöï´?zŽ0ÜjÄ˜§·P¶ZŸÜß´Fcm\0ˆq­¯úÄ/¤H©®™c¦bXñ ZU´wÐ4Uu7\r.²ð6FöÿêQE¥‹5–$;¼(!Sp9ÏÜHª‰º¾	¢eNLº<ÞUÓNJ/ÙãÃ¥ˆœˆµFgÆ\\fB¡7›®ÐÖ‘lH¤¸iÑú+cŽø¼tOÿ£­qýw\n[pí¸l‘¬¹|Ç©‡s†.ó{\"*¦I@H¢R¸;9BqÀ°ïj5ë%÷yÑ¥«×“…~õ<þž4ã‰\'Ó w¿<WSx\n6¬“9LBôH¡¿|uqp1~`™‘³îóìz‡|-‚ºÝdoH›ÍUÆ=±¢1ü€6›Á]Ðð»ñÁôH©Ö®Ü¥qÇ›vºF•§\0KÒµò5áç6.Þ^QOï(”pY{Ïg”º×†T§ù%@H­÷þx/œ,Ê\Zîôä‰v	XáSMÚÏpûM‚ëK×àW›RÌKC¶«ÈñfõvöH®å˜„¦¦ýæß_u¨´Œˆ—´ÐíÊñjw`{ía¤éŠ†ÊK2¯ÛŽo¼öfÌlžYØH±ôgl\nºG¶™¬ 9ekj3BCíô&òhb+½®§›*¸R½•Í^[hA¨ßÉYI| Žñå9²gH„jcØoJY3MÌŽiröÞ\'÷}S¶i\"`V4‹s]-××¯Ñ‹¾t—f”€H“ŒËôöoPÖx„§¬¬‡ø·¹oœ¾yyŸçÅIý	5“7¡‹&ô¡,OggS\0\0h:\0\0\0\0\0\0\0\0\0\0\0\0ƒ‹þ^7-)%\'.,5++4*.9:5*54/)&%34/,0,21.,),+$%# %\" \"\'\')&+\'$#%(&H‘@K[5«îVDR&åƒ„TèyD^\Z§K²$ålaä~ØC?¯\nd¾Ÿ¨/©ˆHb~¥£@FêÁ×ÙO˜x\'Í0õ\'&¸ŸŽÀÈ9¸(5e&RMfqpH‹8QzsÝ—ý1°Ð\'~7Ñš´b=.îç•Â2Ï8vB‰‰€H1	ð Óç«° —º«ÅGTÁŠžK«§Û1,títn(Þ*ÆGH€õIER~—g¾\r$ì7€—£\ZDp€ÏÑšeè¿¦Däñ;ö6\0\Z:tåžHŽ¤E^î	4UûÞSÏ^÷8»0Ñ\'=YqˆÕL†UGa÷‰ö‹ÙæjÀH¨|ÎV¾µ\0)X(ÔÔL×@˜ÌÚ!TŒë	ÐÆ¡Š¯d×[$VÊÛ-­ í´€™|\\H«hÄÑ¨f‘Ñ^â_ãÞTkØàw8Ùk|ÞˆnEG‘üOÒÖ,^^MH§-œkósö2ÿ{¯	þ´Ú¾æ2P	Ñ óÃ:‘Û_!A“\"üäþ¦~7¤H ÄTügD¦¯§uÎÇkÄ„!²ÓÝœ7zû2{£/¶‹¬A{ÛX€éë.fáV(ÛÓüH5‘¸]CŽY´Þú¾-É©)Ú‡>_ÊêC\n9S>k.TƒZê”Í DHœ–\0\rIRÆ¹¿&ÂÝä\\í&ü2d2Å®%‰ëŠÃ³…«·\'O€,½ó„HŸ ËÒôö~Ó|çÌZENÌ™#E*Ë¯¾¦\"µXzáok½Q÷MŒ>$¬¨‰=®U1¦Â@H¥……™LÏl¼~ÙîuŸ¨iÛ\ZPcŸ¨µjÑP‡0Ó(üå®iXOI4‹£p4skNõXÂ’bäQ‰1 H©ptÅùÒ&Ý•óI‹¢Üí;g_ã—ƒ´ÒCõt$¨s­ íû¶:ûÇx(Ó‚(œD•1Žd8H©0H2G¬&$¸%È~Ù\\w¾-ãê ¯c\\a”\'8’‡T&—÷×Oê4H¤—¬s<`€@$û%ñâUíí6Np–!‡¹êÀSä\"ÏI²YL¯FO±iÙ¦8¸%%ÐHœi–k…\06˜#fÉŽ˜üóÆÁ›À˜RnavvëîŒ±áný½Ÿ\0§iÉº H½¦N‘Kû¡(Yåý£@r¤iÚxûdü<\'RY1ÔPÄ¯åŠ+æ>þH€H€ÚÂ?\rë£\",Õ±\'‚€Àéæ0»ðkõn4ûúñ¹«šÍû¢È@ÞHÞ\\©èþs\rK;õBvBPÌm‰¥g¸\\Ìd˜ÈiŒ·­-v*‰Hø¶è³bÀÁ·•„ù¡VVá#ÇªX0“oU‹ú0Ÿ©@H€ÊîðÍ·kJÜE!V¸ƒæ›FÂ¨qJÁ4¹,:c×q?\rû_¿‡\\­Ý-\"Ÿƒ¹Hœ“—Ss´o{£le8ÎMÎYqóAÝ´ˆ\\ºŽØ—ò¶Ži|s%°2¯Òú[@º’mbHœ¥‰Í?^ru7üP`&U?n¼x–º§\\yÑeˆM€ ¯«,ùI¤£ƒêý£ŽlHXB(..&èæ[$ª?ë¾˜©ø\"êþÿq%´Þ]+ááÊ[Ã`Hdˆm^Wx_?í(\'!œèœB¯ÖÖ¾h¨Ú¡0¿­Ó¹ÙÖE–§	½¼dH~Ì‘y|‘$ýÆÍ®OBŠ¡[ÐÏÙ`7È>x˜‰².-Ó\ZC4aoØ*~ÛHž¸ÅÑ…5‘ÊÔölÿPz9k…ªiylÉ=žº=+”zåðç›ðA™˜Œô#¡t*\ZHžŸl¢‹	gK¹égâQO–Ì/úAp¦á‘ñàa`\n;‹™³À—äŒ\0·dÖöà´)vôVHžN†¾5ã¸kd™ôºFïfÇ­ÄâjÃž•áEóR3®Ñ*ÿSÜu~H Hœý¢BhÃpäõV²nët ÇœÉ‚>’Ï^õ6WÚÁ¡,†\"¨×iïÿyDª@H›öïçàðœ£§§º™k£pÞ‚ÆªÂj§KXÛ¥‘@0²CöH›Âºx*Dd[èí€0E°b“‡­Ôä[ùvì¤6„õ;û“®ÿô,H› 6NÃ#–H&j0ãûó:‚ËŸD7wÊðøGSóPØÒ—hç·˜#H-uDDÒ?rØ9ª)Üi^Ô‘M.çV„Q\'ò} 	S¿àH-~”Õ<M¿ÖÃ4ºsX\'{ÅCì¾r,ÎÛ)p˜¾{3Úé1Ä\'¨H*Ý,•\0³åT¸ãf^eÜO¹‚í¾ˆn¯¹ÛÙÉXH\'ºÿ¿‡‚)K¬añ†=T‚]~Ä¸‰d5h*Ê H\'›ˆ…qê]Y€j\nÚ~¤›çuÁH©$~M	­âVàM5Ó€H\'¼Eèî·ÚØC¶´\rg˜AŸ…Âƒô3°_·ß’\"°H%ïÂÌ¸@\'É.è™K¼+¿ö0º„ÚkÉà@H%*~œAÅ¥–m9Á Á !ô¶æ\\iuvuž\Z†hl_€‚H%*  o$øŠ€Á³¢Ëºåª×^„·é(nªj¹oá;º±Y)I¤H%8§iÆ¨¶@a‹ÜÆÕL§OõØ!ˆIð~ak˜2çH\'»Â—M‰ùåbM@ö¿7—\"Ø‘SŸß^žšÖðs±×ÀþÜ÷èäH\'ÅNˆñYÇt€n½ß˜÷õî½‘ÊÌ+áÐA¡¹­_‰Êï`H\'Å8¨ñeïB‘\\ÞºT–“ýå°œ™l¦˜ÈÂ?ÀÇ5\\,ä3¸ÂH)¤Ãès9sµÿov	ðê|Ø³*S]Ïç…ä©CëHÎI±c\\D´H)­û®QºŸÜ	w	£šHI˜I´ëF¹á%µ\"hÓ²H)¤ÈÛH¯…ÏIÏ`Ný³.p¤?Ø·[‘””Ãø˜*7€˜: Húß‹©ãˆ\nÐIÓ}?áfíFã3-ç‹û–H)\n²Ô¯,Ê²T×%~¡yô‚:˜Ÿ›M+Þë[ç¤§eDoH\'Å30V€sj8:îæHòPš*‰8/!ûô\n@««Çe}#¬¥ÚEåYH\'¼³@ÿú=).Ú%tTjý`‚X—{	Yè)®{CðÒÛ²¤','aidai ministiwakum.opus'),
(50,'Â¿Tenemos tarea?','Â¿Ima rurangapa iukanchi?','2022-12-0514482644160711tenemostarea.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0SÍ¦X`!%\' &(+\'!#\" \"% \'$&&$*&)$\"&\"(!\"%*)81-5/3303+0%4.$(&*5;;;651-14:826:+2/.*4*84731--2/,*!#(0-(( +HäÁ6ìÅ€HÞ¬;­¨©9‰j|}PöÖÀH†W_wTÃä©Ã7ž²cv˜hZŸÏ{×væÉ£Í H†d\r×i¤x/ý½Ò\r]74Å9q ¯hÎ•¼•¬§Ø×g,H†‹E¢:uÅ®ü•L¥·Ãc©´\\¨ÂÑfÐš_ÜŽG4:Ü9\Z4H€D·kåî¸Ãúâ;ˆxiÙ{×\"ÜªÏÐ¼s\\H­`¯õ$ˆÞT½1(A@¤\r	Í^¾G›¢ÌÝ˜½Êe©Íý	ÊpH†û08¼I–UWKž	ßâátÈ×S%t4Ÿ\r\'Ü16_ë4EÚ0.RH\nrlÆ]DVuÐL®DŠPÄ®<›ISQÚ¶9+4Ê.;Ä€H!ÐlGZËUÄs¼ÿk_\'RFÝ‡—&Úëº’†êb±3H\"kºiñ¡)À|}Så‘È˜hJ(×¤TÄç|kµ ¡ÈH%*ÚŠsØ´%FG_Ü‚ëYÅyÐ©Ù>´/¯ ½ùH%(ôOŽ–âÂ2%¾3EÔz©à;‚Z{-Ck6lÀH%í±¸CÝKïþ§œC•ïä\r¤”V¹0¾¬—ÿÔ€H%*oÁ³~³ÞBZòso	Ÿ_½7¿\"`»ð!½ºññÉ H$—Oòk©]µ6uŒîêãQºx«˜Åt‡7é÷2ŠÿjåH!ù7¦­®–®w~ËÑ´‘Fe2¹\"«¤&ð¡±»H!öÎFMã\Z‘¸\0]Ï([/!N5¢¸ò61®1u•J¿kgÉkš«€H\"c÷$<g‚Ü+ÆšZñØ0”û‰š?¯ô–¥ìàÏÅK—°H!ïµßÞ[bŒoby<fÓ%Áÿóñ8eõÁn\r°·ÄÑÐ9d‹¤`H!öê­+®ž¬a[XhgIÔ-4Ì»j4ôærøìÝøhÀH!ïCÖjÒÊQÔ™¹r\\ï/sÄÌk,Øºø	Øø’¦áH\"d%\"âñÒ,×Ÿ3,*W‚kü,ØÉ”m£ƒK­²Øé£­ÕêÐ‚=’ÀH!ï\nÅ,ÚÒíIÑÙøâ~žAµŒŸÛõ²ÄØ\rtèÇÂLrRPH\"aºýhË–}-|Â/@e.>º!w¯íÐçókc_¾Ð…?Sr@H!ÏL^@tD¦¹ðG]pß$g­.8×:‹NOÃb¢<^¢‰H!ù(•ÈM39E/QŒ9¸‹íuv2ÝmJGHI™ÓöH!ÏL»#NSñ‰@ûÌ\\†Gú¤²®}“û)vJíÕ\Z”Ê€H\"d$·,YxÈûÃoÃ†ù}5`;$XKÄ5M\Z\nàH!ÏH8áì…¿à$OS!«NûVw9ËÓqÅnÙÉ¢¯í³^ø9\\PH!ù(<¢ã¤ÐºCFNÌÁ8âÛÅgLÍÌBaÞ8z¡H!ï@o\\òM¼Ô¾´•óZÀÍÞË\rÿ*#ü…ßÛÔpH!ÐÜŽñýW%kÿ‹|¿\'ÓD®¿ Q0Æ•o–{[Õ9ÎpH\"ú¬Ö;Œ#±4;ó]‹Sr%2«?ObGØêƒ¾“Ÿ[+™óÚ&hH(¼7´kÖÕÍûu½—V3<ÊðÐŸ#ÚOI0ËrÛB`4`D¡2¡&H[Ã<ë´)(k Ò[Q}®þ˜M¦œ‘>Móú¼Üú£VYªå0ùãŒéïº×aæ	´i\rÏÃ´H¡qœÑ”IŠ„Cp²šY--ÖEdY\ZöUVL’SQÄè»/H?øâ_M•OH¢À ^2±³^ü‚Ã pÅ„/€E³ÔèïŠ¦pµ˜~jFW½4¶´¿H¦ÒGÕ¦q‡ÉÐîšwMÔÏ q,ÝøË*÷LÄÅ£1œe*ÌÞ{mÝàîtçÚ¥¹‘Þ²€HªYK·¬ÚÁ\r¼î£¸–YÄ­*·¾q¥ü®¨×ÑØOd’YÙ¶ž°p¸›£,~`Hª½©¾ìÀƒ©™;gœçdløWCÏÝ–2-NÛÚÔ\0+UíÇý&—Ì…8~ª™âæPH©0‚ºŽþ7ªõIõÍäÇÐxÏœùš…×=<Í9.Ò“=«® ÒÌúÖÀ)¡—U±\Z`H¤©W•õ Ð>0ÐT“ÛÝñR£$ÌöÈºòÒ\ZFT%ZëÀ$àH\\¨g\"¯»òyXH¢\ZNC)ù²€<|Ép‰ƒ\rý—Ó€*œ,ŸŽ;Ž‰!ìQÂ©J$åƒ³näHèš\nHŸçåW,m;‡*í»ÄýïÕJ§p[)_ï§a#è•	¯äy¹ÄcžnÑ@H \0ÒÅwXùÑßq;>»hS¤É.5ÒWœ¢¼¸e’ôÆ’±¹£–sáTy‘€HŸçåWž¹‡¤KØWIÜ°»˜;‘a_„Mc~ÁŸqƒü/¥êH¤\\äó¦‰õû(×hÅú>3}Š¸~Wƒà8û}Øˆ}áž_:mkDiØ\'U‡ñ5àH­{/ÚŠ=••ç½ÇµTÄºðÔŸoB&«JÔ;¬\rqy-Ð”´N¬ëÕ§HH®ÆÑg6qÏä—1l«ö©Hé\r‰ŠO–Ê~*›ØŠ<Íò)¸H²·Ó(ZoD‘iÌ(6Ö^û¯žš)´Ÿ‹¦pH±ê{e•D&ˆñ=X/Œe“/‡VáðÛ4!Î\ZöºÍïKöîÜ5jTH±öœæg2‹#±y«ØQ\0{«ÖØäºFTnÉ®$4SÓ\0´H±èB¨bLÜ\'*C§.¸ÍaàÆ«9Ž/-5â+O\"›šù)üx×À|í`H®¬bo5.lKÛr2wmóçÇn›<Oc/ü¾[>÷RAˆ[FY=C÷+îDaW“0%ÜH©ƒ•Yhs­-ÝA„–MƒÄ_ÚY‰ð^>HåbÆlñNnÚ\'=ñS\'Öi,xf¬àSÔÃ³U	 ÇüäBHª«´»@Yc^_Öˆ§›°V¾™gµ2KÏ§ÕSTžéLã\"S¥ÅŸ±NÏäý#·,¦¶-iÛ;nžH«N-p;ÉËÁäf2)êÂÄàcÈWuš˜¼c%ÊÙ{}$ÃÜeyõ\Zo+ûç³ñÕQPï€H¬Ó¿7j$Cæçn{o®Ö¿MB«¤q‰]8­7#}ÔÄ %xD#ÌE­¸@Ë%7cÕ5I˜H­ÍUrºœU¬,#ØUAÎ.·‹tUa—Ûëb˜§6—(µÑ‹©¨3y×PŽÛðØHª¬Z^PFØÙ|fK¬™=ÉU\n&Ù]Ì®yŸ˜½µG•MO½Æöf©ŽZ¿ìk†ÑPH¦•\Zxu09ïÎâ,¦ÓÜÜMMîÕ§`»@GÝËš9ïK±­u¨”TH¥%@ÁøÖs]E7æ½åš×ýsNÑ‡Î!.×Ñ¤{.ÜkL¥¢| Zë”&óxH¦Ì¯¾ëå³Í¾ØRzï¸(<É:Na £\rdÿUàc\"å\0É­¹4\\ÁihÓÌËÉÀH¨#JŒE*´lëÈ¬‚\rúKà¡Éc;}È6ëoÿPÜI}ç|°ó®²ë¶Oy®<.÷² QbÈH©›èe˜@žbf¤guÌ¦¾Ny?Ž^Âw•Êw ¥•o¢Æû0¹Ps¸dÛ!Ô“ì‘Iù«àH®Zx¥wÝœ¡Pw‹Ü)k¦6ìm¨6s£SÀµÏ¥sî´¤ÍH	ÎB¼µK‘Ã¢¨HªûÛyM1F\\ÁÃR_d\'dOÄ&‹+¼¶$ì|ó¬C±ÃÁÓL6&ï=Ë—‹\"9{øûHª#MÄ*ß\\÷Î*¢qªð råŸ€Nß°¸Á¬õüWÍFL•ð1ø¶@pïˆH&Ëä%ºtä>ÖbÐšðH®³ª‡¯WÅÔ!f—ör«k˜\0<¾ÝõAÂ…»ôÜ£æñúòÉŠcŽPH­þl¢V£ž õß¦aèJaŽS¿w:‘5ï×~5D°òÌIÙ\\dyÂÐô¸«Ý‚DË|Hª³å´ÊÙ\0Sƒý\Z”vï–E§G‹JþÅNºÊªN#³\në&˜Ö&ÃÊ†ã:ðH¥ò/1àÉ‚”ë\ZTRB#=\\ô­WÞGy}˜Kªa\'ó<·ÞíÐºè\'ýWaÌ‹K„H¢iûLx@T0ÛÒñþ/àŽÆ/K/¡*OI@D+˜w–\'—AC H¡\rlü;Ùæ?[Ð4ŽAœIç½Ÿú0¢GZlþÿ0\0X„šbÙänÙÿçuvñ©Ì,HŸ›WÿÕµv¤Gæ.e’¶9jþÿ\'¿æ¹Çðj†¡‹[6pø`a\nBH¤¢X^V¥a9ÌÐÿ®i@ì(¢ÿr^s{_<X!•¦ìHè›yÆ/ViÄ.)€v>lé}ë2÷€H¯:=’Zã\nÐß;‘°Ûí]6êm}Cá9â³€Ê´çÕ1ôuésuI¬ðÉ¦]¤H´Lpt¦ãú¥$¯ï§2‹±¶b‹:»¬ \0ñ>»®ÞšMŠü6%ºbdÊ]¾üJ¿¸“9¤É“¢`H¶\"d®©}iÊ–˜ûölÂ!á÷Â§&ëQ³C~å`ðµÃàs#[î$·xŸ¨ø²~€H¶½ŒZ®-G©N×¡Äß– üœPGfÛ5øM¾‚Áäïµýã€{l?7®¼dHµçeÙ}‚qAÓU6a™d8S¶›žá×/0æñÃA$î/	…\Z>cõF×~H³&¡h“½×¶DÛù‚ÔåCyÙ¾WÃ=_P@Cšk\"MìÕAaÎù›bH¨ÌÉœŠ·ùœ[^ì€,Ý=´\0²¤§æ[¿“–6¼5@ë‚*ÏèiQ±¦H ÁJ4˜÷°â€×áQS±øL/û¥¢žâK‡*œø?àp˜‘ß¶ÍñÝô^@Hœl„ýâ˜~u§§*sßÊÌšØãt’÷¶ðvâòŽZz(-\rnRî™ÄáH1@¢âc.Ý>ÎäFìÓe–»\nwç©Ø7Œb¶Òëc¿,	—X€H0­;¿d“o°×FsÆÀó5LªÈúÚM?7rí^ÐÃ…GˆH-nÒú9.Ú3ìœ\0ùËÇ>‡ƒ¤ÉUM\rH)’•ÝÝHˆi9—³@‚óú)7—eE\ršëÆ($öûXf¶´\ZçBõ™`Hƒ¢³Ú¢SI1ê`]Y¬Ð]ÿ3ä¿˜r€ÑÄ@þg—›t¢ÐIªœgÃGE´Ë,®¦H¬Ï‹+ø\"Â™6DËÖÁÈÎ€Ò]î·TÇu\'ö=yü™û»~RV%Ý•>&óSßÌH«D8ˆ$²T›pÍNŽ“$u‚áZýÜ†R»…¿Oš\'\04,¡µF¤/gH«D?ÁÝ\"yŠ˜2ÜáRº{—Öµ”´~£)#Ï³.­oTf™0n<À6H«+\\ùŽ‹Wñ\n@FJtIÝ#âªæÎœ®ð?8=@H«:¢Š²÷D“‘:¬ ç²™¦\r¸_dï+g*%bÿ\'7?¯QHt$ŒH€OggS\0\0èÈ\0\0\0\0\0\0\0\0\0\0\0\0pÖ*ð^040-+)*&%\"%(\'#\"!##&($(56:;1174614.42/)\'.34/+\Z)1402440/1/;045..-&()$ $##\'&-).+-*-)$&#(*&\'%+H«L	\'ÿŠ³ã8YBôÌ“\Z}sí¼Í’!)­róÂ‡Åÿèn‚\Z\'Pcñ‡rxH«ÈI=FãFÐ±3<’´ò¦ÑÖÐ³Õ8jùÖçÔ£í›@ÍzÙªä÷‚œD³íHÀH¬|í˜Æ0·ä:ì¡#uX.k‘VO3·îmüÏà Ù†lðd<Ò½Å—îò¹‰ Hƒ+7mM)opTã“ùùs.?ö™^õêå4&üÖzp™úýª<‘XÐôHƒÍV7!Nt5Pˆ¶¯«‡\nŠµ§\'\Z!úO7¾Ž†ò:Í¨üâs²‡HŒN T‡ìš†ö8ßÃ³=ÎE¿¯‹æ5™R…*ò–—vq‰HÏé\rÙHŠ¬ßZØTðÍÙ¤¾Î¸/<á25£%YË¨ÄÌ	RŒöV›g¬L²VÄäHÛðk{ˆà‹ÜÄrÞÓlŽï.\ZRÍLV—h£+@GPüÌÌÉõ@H,Å\rKŽ„hÑs²ÿ€g[’±¤óYàÝÝùQˆ`¶[9¥/QðH¼!»1QÌ¹Ã%£6¼¾Þ42›EjAxÖ}xH!ï›ä†.pyÕ	]oBÍ’eG°aZîµæ²›’xÖB~H!q½r‡¡¦\rì^¯g…ŒØ9\'R½)çÆ|–IÉÊèQ×ž€HÓ¢©ä¡s‰x¿¢þ<˜Uí»ÐÃPè¹m³—„ëhÚ]¢{X€Hëœ:¡´\\¶èHäªšœìo†ê›ÊVKóÃ¼…ÜÝ\\PHÔ,ŽŒÔe¶õRuOÖ£Q­:+D†Æ[ç‚Ý‡ô\ZŒöTHÊCf¨Gà2#fIÚ‚Q9ñY’¦ÑK@fšc‚üñHÓÂ+PI†‘Fcüa¢ØI;ïp \rŠ>r/rÍU HÔ‰ã‹AµC×¨$©zzºÜŽñ¡?Î§¨!C\rélS€HO\'ÑF¶p\\® éJ»¯x|àGÆžË§ï÷šP§a>$HsDí(5òšeú¯6åhë­:hùwä?ù]H\"dß…x(ò¬³JÀêý¡:FfßøOËWjø¦õ¡;\rßØÿ–H\"ìWQùŠ9•((º¤a5ôÕá™:SbNe Q};>…ÜšŒÕw€HpLn5L;í½‚[a­Oz#¤Ìž±.…Ü¬¢\0Ú„|š0HÕ#;„A·4xP¶™xëoÎìE0•¾½Ö¤¡ëËØÅ¸–âíØPHˆ…nd\nsøò\rTN‡qTSž¢ÔŒ~–Žß¦ö\0ò–D¢Id„FK$“7.U¿Êÿ\ZHxG>Vl—¨û:[Åz\nà~þ¢­Tlæ¶Q8¤Oß)¥z·xïœª	0TA=î)ã(œ€H¡qšý·çìÑ)ý³à1L×%¾­\\$º.Žÿ+“›tü”Â(^·_j2\0wUŠ\\ËQ.ÞLåýî×€H¢Mm=™¸LrV¤Ëª’­˜ŽT{(ÀÂÆ6©éû5\\Ð³$ê´/N±‚P,6TÖ´®ÆƒüÝOÀn HŸçÖÚ‡fW\nÜƒ_µŽu¬á€¶È¸þÈÖÆO¼LÙ[ëúàg6ùêwF‚ruQaÚH¡E¼Î7^§!Ãë(ÏRY=aëš\Z³1I&¯ÿŸß=Ö\")3º$„-ƒ’éìj¤H¤É](›öi5!>Þ›Ç@Uå½‹8i‚>XQÉ³9E_ü\Z7ô¾vu…ŠŽ›õl­ÍÎBR;§ H¤³tÒf\\*ŠJ¢v<‰Ú6ÎÍõéÜJ£…%ÄÅ…òÕn‹<@ˆH¥:yH£Ã·=<m†\0*G¶gÐ®Wå6\r²À´RÌ˜9ª”Ìg *æ\\2©¨“ö0ô]÷µ-[Úz¨ˆH¢{ÃÜÐÄU8°0wkµ‡\Z>gU€ÿÜö_n”Qÿ€ÜUYQÐÎ*ÝU Œv\nãºàH¦ÛS»®[ØVå4ªß.…]þõÐêÅ\ZŠbPäõ1©„ñîÎÃÀF©f—‡,TÀH¥\0ý{†–F)ú+·\0±’Ë×ZIÁâpžàgA§ñÖÑÔ3XãÔM²50¸H£`oÉþÁÙo\rÖÓ\Z}â  ”»A€~¹ë˜I9ãl-w§ýÕ¤’¤Ñ†zó¡÷àU™ÜÁ@Hž>ˆ†ÐNe“½´pÓ ³;6‡Í]–\Zéª—åIxºí÷ÓâÇpÊY^¦[°eTø`H›{ÎÐÄ¬D‰nqt X‰¨îÚ·É3Ñ*‹[Ck.N\rO&pw«è4ûä€HˆJä1Ç¿7mõ¡]ÒžA˜§XÂ\ZÜØä|#&*¾wy `«Öâ¦¼H\'€$oÿÌ;ÁYÆ€é[»\'‹ôÝá«Îî‚	ûÜH%*dÙþ®¨W&F,-ÃÒ_<,¯fÁlê`”%$hou»¹óå@H{›\\bÜ™D1@f=‰¥:äŸé\nT±EÚ~\Z²!lòí.r# g‘Ä H‚‘ŠÜêäö·ÎùÍ<IØŸxÖè/ÀÓ)@%4Õ½á{	e`ÈØ1Xé–ÝãH®Â­RŠgî\',ÛË’¸™\rß©\"Šê½+Ñ-ù~Ö[8£ÔÑÀ Ñbÿ˜[w¬ÿƒÕ˜H°k°Ã]:@âr5ZIAÁë[hC$½	d·Gø–§kÇßñýLQ¿±®+œïH²ä%ú.ALZÅA¥’ñƒ¯’Ñ½è;Gì“Ugïd‘z\'¤÷H	aúøO@H±êÜ	µÄ>z¦Îðõß%\nî|Ûû\'% øpH°½êwDt\"ÒPIèœ(&%Å&íÚ*Ê\0â–\nÆáÞk|#”H®K…Î:$ÏkiU~Mi!™–JÄ\Zº¦G(â¬§Xe^n«åÉ¹“–KcìõÍ@H¨ßJÕKx!Ñ%3¸W4úL]ÄÝ\r¤N¤JÕO»D=¢®iÍoãR:ÕÊtÎDÜUÖÙˆH¡	ÙqrÍ2È»|f9ÞÎ»Ë\\ÃuA6±¿f´dþH_wHA×­)îMx>\'»†=àHŸ¼Ï\n•,Ýý³ÇÃiÑÒc0? 3ß)ºðÊá‰†Ýêå!=/­Z²Ñ4\ZÞ€H9IŽ³ÚƒP˜ÀY@:B¢7;´Dæ€KWÐ¢›4Qú\r`º¥ÜÌ*^\\ÞçÞ!RH¾\'äÎVòÓùS×,Î¡Qpù›ŒúÒ¾ƒ±+Mo;RA½ŠthónqßRëH‘¸šÓ`¦d‰«ZßK	iå†y¾ÿ\râàÂâ,Éq ¦:n6tó4ZPH”â+Iù!ÔLè¢ÍF\"\Z(0FdÙ\0`àÅaÙ?¯.¤æ¨¨ÈŽ.`H”}ª°gÈö\0wt©¬º¤ Lv«jÙ,3¾´_ô‹º”¸»pÖXïz@Â‰Ä@H“~Dj{Bÿtéó4‹7|ë“>´ß¸LîöíTLµ_š-¨Lq†,`»c.¸äH®)V¦^É­9Ÿ½³³ÒY¾ú9Î\ZFþV-Dóp<x¯<¹&Åð„udƒmŒT¦Q¿¬õ,/ÊbH®U‰¬\"µ+®Æ DuLœûjÃ:‚ˆbÞ6éùÌSé+Œõyk”Ýœ©ÐH¬à_…©7}[ŠðœÔ( ñ/Î‘âŸÔ«ñÁÖ–Ð\"öÙ«Ñüë‚¸RßÄ¯£upu†î Hª”¯*V]ÏÎ³À%§Á“n=èýZñ•«¡–´.@?·Ú	E32mö¾ÇÙd™Pƒ VðH¤¨h¨©Â\"jÕ,IhŸÅsÐ£Ø@E¹9>Râ‹~Ç\\‰¢4XšÅnHŸ‡;v@Ônò\n!\'J©\"ÿëb/¦Õq«Å¿ƒ¾’æœšÊãÀAqüß†­ÈHb:äùZ–â_ùš}I47Úv+€gsúf¾·(^OoÐ„éÀ§Ìøÿ€8\\‰ƒH‰rœc•:êÉyŽãÐ¶”‡µÆ8Çã†›Åø]ìÆ òÓñ4°AHˆ½qlÇ¤M›g%µH;­ÚÆ´X‘ &u+J\\ÍÁ+GM=‰olÍðH€ºWQ§“ÑÒÀ_¤í1mka\'$®Ý¼Õš8aãÆßæ¯C=|ùÔ*ÀHø*áKüf$X¤ÁL›^û…?M\r!Ç|“í}Äè·BüÞH)›æ¦„Žl]­%°[îÈ >ý‹9tŠ’ vkƒœU HÁÖ;ï¦^”fËÃb%p½ËQÚáÎß\rÔD|ªƒ¼JI’?è¸H\'…Ú–$Á)‚§S¤\Z>ë,iç0A	`&h:œYàH%œVÍæH¬0JÁå‡7†G×Õe\\I—Gð.®šc‡µxH$ôyƒø|É.//ÀO,•Ž;²œARY¨Ùæ‹QòQÀH%*d%%B–—Hjž¡·jïÏ«fÅL´ÇØ¦õBŽ3”ˆH%ŽW×»ê¼z®.Ç/‹d)#úâK©TUiÞ|Žbðª¹u$H(§[SÛâ\nž?ß•Gì	Ñ^¶öåúfÕÀå¥eE¹CÏ¿èÌï ³}ØH€Änö×t“ìyUÎ¢6÷Ò…äxè8at kÏÚ;eG÷ŠòÔêúH€Îí	Î½ó¼«óÕ§‰>¼œÏM«$2ÈßÙëˆMÆ-¸Î¸né½%Ô	ß±´H‰(	:Kl@à28f£zÝ‹\nÚÈpÇ2<ÆxÆð# »2ÃSxH‰)Õý(#{þý‰\Z¼Ýç7Ì–Të-PÞ{ûðö¨uâÍl„ŽNÔŽ€€H/R¶Á¯ž\n\\hÃšþ$U¨ã”-+7\Z±hGß=aFï‰ò»LØH/7ÓÙKo¹vŽÛ÷#?U.ä/hDêÙ’=4H“ýôJî_#ü!·ÒêR²ÖH/=ÖëŸ%îFÉæe§}é1fŠhp¥t+<b	š¦(Hšà Èç„pû\\ÊEÓ¶èÚ.€­½\rrÝ&ƒ`¼ïÎŽ‹H/_èî«Ââ¤bpf×Ã·œ£x»tÜ<Í¶g:ˆâïæ\0àH™¤àÐ2	T*ÞÃŽôn”õøÿÃ’ÍÅ ÆæÂkÿa.jÔlH.ÂÉ¨È¤ç5P[„O-J¢MÌh!ÑÃºbAöÍF*w‹L\ZH-´î—ó¡·úFpÀY]!#²ŸOËòðˆ+0LMÊ‰§RÇQj8ÌeH.»ðôŽ-Yš}—¥Ñð3ÿêQ<],\0Å—ºfGÜ6<{i¬H/0ëk=ë›_‚¯°9bi–µ½ní¿ç0èºq½¼ðéšÐõ7é§ŸH/h·°à1Lù¢I¨Ýëîž†¿õMV$\\e»Çá3üH/SCR­ö‹’”†½Þ1\"«Z^ºDbÏn’È¯Ú\0+õ§ktîË8÷ˆ','ima rurangapa iukanchi.opus'),
(51,'Â¿Tienes una pluma / bolÃ­grafo?','Â¿Sug kilkadiru iukangi?','2022-12-0514484059160712boligrafo.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hw\0\0\0\0\0\0\0\0\0\0\0\0ñM!d\"\"*%*\"  #%\"$!\"(&()%\'&\'\" \"*$!$$)$$%\'#&\" #!!($/-.042.3--.--44,0)\'!\'00<..0525/2*%#%2@1\"#)667>5\'*+,)HäÁ6ìÅ€HÞ§i{÷J\rÙ4˜Íš@+H\nÖ½Hà=V¹óøÅéÊ´fEõ#k¼\"™Zq	ÃƒU H†Cö¼ Ö{g4‚V{Á9âžÔ ý¥Å:¶Iµ)LžCH†j°/–n‡¡‚¢ Ò¦º‘&fÆôZŠµñÊ2¥9÷wôï»`B€Hüº¦\Z•dåŸ¬=Ê%Ó‡Œ¡ËkÜ»Ø©â8Ò¢~#r¯+½H…LoI¡á@»L€Þ¸ó]ƒÅÅ8ÙMàFâà«´Ï”¢2~…0XH†Ùý×wŸH´±¹—^¹¾ÀÚ-Y1LŽ5òÁ+ñi°œHàdÒ;À>¯>1{°a\\Yrm •Ï·ÖxÙ6HÑÎÅ¿¸œ‹,G™T`7xµèÙÑ¶Bz„í,õ H«WØ‘ºIŸ1K^¶»tŽf\"8³„Frê‹›8yš^THÏòäÛ4,¾5³ÛdòiÎµƒÿ/sÏÍ\"ë­±Nm®r@H!ÐW„Hè(šF&£|·wÄX—ôo†	>dîæ“JØJ­H!ÏL\ré¤™õñM’u@Ô]*FwöhÚ²!§X\ZnOöf€H!ï	ÆsÍ±MªÊFuLgÃr‚Im¼&Û$pr H\"d$|ˆLjOèy6‘<¡°¥ÃØÁÀP7Á^%awèF€H!ù’ÆE—„vV´ö—‹éY½‚™pä((M%ÀóF	z\n{³*ìH!Ï—kQ/KµØ¿«&}Ö¢•@‡0T5æðï˜a\rÓb†ê@H!ÏyDÄ”ûqwá-[HZJ3™™sà„’F4Žw‘Z¨%ŒdqH!Ðlh»#ÖÝ·†ïÉUõ/ÃI6h“õÄ^ûÕ´þ®2§¾fßH\"c3k&É5æ#äÊ\'Lû¦ïWlÍV÷Þ@´Hu*ß´ýH\"d“|¨zSR‚ø¦6øÇ/wŠ\n¸ÂZø…Ç0q0u.§€H\"d!Þ!Ñ¼LÒ¶‘ÃTùM\"ÓMïL78|8» À‚’	€H\" @5á\rÎqbPeh½´(`˜]û%Ãÿ¸GH; æ„Óu¼K€H\"kŒ\ZZÃß³_.°KSäV¬àó(-Ö<H–ÿšÖH$Ðþgd“ÌØvp?Ñ©lBib;3¶2¤3… H!ÐµEÃ)ûf_¾[I›$˜ä‡nþÝëmÀH!ù’#”@¨@òRDünŠv„QE6DRYJµŸwñ·ÌàÉ/›†Ç±€H\"1¿1Ïã#Þ¤™Ês¶á0û5ûÕý1MñicìéE\Z]72H¶ÿ–Ã=Ù›‚Ð\na¼¯}L0œÈX]Ž%:-ƒx@+ÈH%ïÍ­½~z%+€XCËaÔXhK¡DÑR¦	C˜f“ÀH$ôK†º0ZØÇ…xQÇ	I<#-]ÕÒÔIÊˆR{€H%ìª|Ï¨ŒÈÖ…VÎ:\nÏ$È8×ì±èÈn–\r›¯GéëÍŒÐH$õêÓIS0ïªtJŒgë\0òZ¦†&›cûU±ä—ò9ºM8ÀHwo}¸ò‰4Y}[KØòë}÷¹!™Ñ`¸¾5™íŽ–1Í€í*H$ô(]ãkLÖ~à‹Ô`—¨±zÁÓÄ•|¿ívÚ\nå®õÌsH$ô”É_Hþ*SõÊnöâ»ÙVQ—ð€IÿÞy\0y_ ØaIvwtŒH%›h\"‰#žÙD(8Â_õÞ;õ¢×0®âÛ•6ÐH\'³!ÞÈ¬Ax¹Ò9ãuŒñÛØ¿&¹?ØQ¡M7óú¥%ª»JY@H\'\\Ìh¿FéHíž¹Á´¤Í)úX\ZŠeòwÏývê­áÞH%˜sT‚Pöâ¨cýx­‹;	áüî;NE-ÉƒH%*c÷¢È*”Ðh+âr­«NgÛéÅà}³\0ßõå©ëŸ HZR&ƒÚ)«B7€,Š{ éá—{Šrr“Ä{}à°H!ÏI¤ýè!ÖöÔ»#¹°MÁÄlt\n:\\˜êåáH\"d%#@< *Ì?5œ}•=\'s¦X:5\0ìl¾\r{#L«ÂïCH\"<Ô{+„/I_Åhód2R¢´X¢€4k+±=/tH\"d âî¬Kqôœ«Ø¦ªy\'OykI\'¢dÆÞV¹ H(vè©ÔUsœ…éþýÓW] 9-7¦y½C:øIïúT=ÈCóa6JüÀp©rãAHtŽž8S²óX“þ“±YEŸ¸¡Ï¦¤$9Œ1\rÎ\"Eöp5U›ÐH9Ì ÑäK?,,ÌéK¶Õ(\\\0*AîO@DÜ±jC¹Hâ.Ÿ\r<ŠmÈHÂ÷»Ýxk¥o¹ú\0ß³qc/¼MƒN¥ÐÊâpÒº§ÎÅ—fÇ`¢XVyàHmMˆè0\"¨@¤ƒâœ´mÌy!ç¹¾Fü¶WähµÍ¶\nÍPðòË&\Zœ\04HH“-½D–ðKÆK8ÇcÙ“è|*-Û žm³®Tµ`h~¾!–BØªØaðqR{«”Ç-Â+ôH’ï7¡q>ÛUÁN“;\0”Øá]~“ýþè³Ò–Í=÷–ê—2ƒ–%ã8Hª³‡{©Eþœ vªa¹Òé+‹Ÿ×§ìÿÓøeu— €Ví4õ\r¯=\"¹\'(=ŸÆõ	H§Åv‡¢Mög`ª;yU; 6<jT=b¹-&äÂ\09\"¸02%±óøÐa¯‚€H§Ä\\\rê’Þ”£œ6O—žÛb¥„Ìr{|e¤Ð‚‘ã\'â‰çj!÷P8tÖá\'àH§µÚ?!pNßý%Y¯Ü™vhe]ªb2_ÏÕï4ã0žž¯ËŸ X3PH¦/AZi½Òü«ÃõÑ=ÇEë¿äðÚxUÒÔ6C©>¾DH8Ó0â†	\'(H£°hÆÁ|‘ËÙØ@ç+§™âéµ[Ÿ©­Üµ3/k1;Ñ^	´ŸSœ©pH¢#S©º÷Hþw[ü\'a`†Á„9Àë…(Cë›ø£ˆG{¬£|õÔ)*‡}ú HŸÒ? -›%/F8ƒN—& P\rït«ÝØ#fºðïûkj‡{YËÄFìºþ\0ßÌ,†€H£}ý$ìðÖmä¹šo€ß4:ÒÌVr>ibBÌ“47Ð\"j~+ÍœH6\"6¾zå<§Ž/	!»åÒ(ÒhYÚ·õk±]i=¡ŒÿØrùéïôXUi)H© Hˆ:l³°Ž(þÐû—¥vtþ©lº”hpb-ñ³eïoÿ‘|*uùHH\'lÊ\'–\Zs”£H\Z@ö¸²ñz0i:$h\04J·§rÑÎÉðÒH†[=]wWCÐ!€iU,©\0 ,šÝ²enÞ<E\"RH$õDN\"<¡‡¥¼Tw(€2qKrUÞ×Poô®Ûkò6\Z2~ÂH‚.ÅYÔP}ö6»—Ä2—Ÿk]‹´ß ÆKd9ÿ*&«4#þZ|„?£\ZÉlHƒÄË\0Ôq ‡:Â©µ„˜[sDƒº \r˜ÍèxìÇ×ì&€iùêˆLcü!Ò v\"™0H«Eé*Ãiä×Â¼A‹»]–Pr05»%œ±ìÓ¥¡Ñ®€ì§Î*\Z¸\0R9&µíãÏí¬©ÂÃG«6H«-+¼ÐŽØB,Ì.$ô,MuÐDŠ õ½îÚ$Ì|#Ô¸ë#£Ü‡úüWAH­2Ø)K„Ò~t·ôï¶æYur1²¡ñgñÞZ=’h(h‹†Þ¹%ãÏ€H°AÜëÙf¯aÇw¤§ù,»\0¯\0¬`ÐtðqÔŽ1‹ïe”:£0o‹ù@.`H°c8«\rðùW!7ãÚYíêQðxoa¨®¡Ãcåë’àƒT\"`œKt^5L”s.B–	}¬H®M(ÅæØÛUT‰Ãožã-ž§nHxƒ$n#Í°QŽP%È‡ *°üÔ!à,XØH©°r¡›Œ?Û\r¶Ðo÷ÑÛ|Êøð–üù›†…Èà”k!ûþ|3f=Žâ›.`YŽ™H«t÷\Z|åÌ÷\0qWM*³Xrì½ÌëÜÔ¾ì¾Œƒ;‘ÝAm£—\0FÆâ–€H«M!€	E>‰[îØ-‚Gy1	Ãüˆ>šÐ8r\'Ö™Ùù«HŽJcŽ¡Ý†ÝØ€H‚é,äs+ˆ<e¿ßN”ôZ}Ä/…Æ–ç©NAoÌ¯Eþ×._¤LtH03Ô®/£DÝñ1±¯ãÓ eÅ-\"Òtè§q\\H*ñ%ïÅY	§qqR×¯\'³ï¼÷‚-ì\'‚Ì¾E›€16dH)i_FàH—¼ïVíÓ-ÙL|4›>x6;øCùòMê£HšH€®‘í7?%lÖ!k\\\\\nªí)\n]™ðè×*”A<.ô ‚üxHƒ¬3§Mœ=ìÓÎÐï,ûw\0ë(»‹µÁÛºc}…\"¦³Œ×oLÆË[>Q5ŒÙH¥™hV.Ç §4îÞos©ü¢\n¯^ËŸ˜­ä3+Òêoï…]L¾_êÃ#W¤Ú@.2û˜S‘Pã9Éïü þNÐH²Q;›ÙÓd:ßÍ×‚›ÿnìïéiqGþó†œšxñ›Q™W¸:à¼ç$Ô	\\Ç[\n½€H³Íhû•\"2vPò½\'Ï®6fŠNK¥b»þ@Ãôä H±î,•*è0óW‡4ÛÇYÑµ‚÷ÂIƒùÞ.åý H±ÜÛè*#2Ué±¬V<œ®0ìxñ]ÖÞÇËDŸ‹íÃ÷~YN<¼l?ú4H¯úã\" <ô“H.üéºí7¹¸×ž&}÷ñF7OåÉÅÐcSdA¢¿“GóßÕFD*Ë½°H§ºÂ@»«Ç3ò›ÔÀˆ—c™Œ7ë•zù¹aYŸæi\0°ž~¸ŽÚ0¡8®zñ£ÂÄ[6¼H§»Yih²o?‘\rÖZó•Ô@¶.Ïež·¢å–R†=Æuqcm£\Zî¾xb£È¨BôTZýè¾lWÕH«ÍeÓÅH<ZŸ~Áx-Ü°BàØp˜>ÿ1ê«RÔ?Û#×Î[ËVz¨Üàdª¶w7\'6n•¶ñ¯‹ÜÖH®¼ƒ’Pú7Å_·¦³Î¹=%—¦tJºÚ[½åÏŽýµÜ÷ÓVfü}úk·H:‚™tÒ€H®„h½¢?·åu¾KRx7TÈÒ³\">î|N»Í±B¸p)fH®Ø¦5Ì¡›#HÍ–S°^Vù¦$&ûæòP×Ý¶EŠ·’™ÀH®z\r\'žzNô\0F°}‡2ìž<$¸<—Q´©ÆeY15ü8í“„€H¬ÇJ®iÈæ>vä#;S´·Ïu]gRXT…(1àBÀÒw :*òýhH«>:‘Þ|¾,fD²|‰­çÒP½\næ™ÛF‘–ä”æ*¥GØØ	‡ëÐmr OggS\0\0(§\0\0\0\0\0\0\0\0\0\0\0\0gC™Q5:865311.1,4/=4270-31/.(2/+\"\Z),9##*&&*0+/5534/727,/&\'#!\"\"\'\'$&&\")&(%((-,($\')###\"%HªÄ\n’¯ÈÛr¤s—³X×%§§÷ï¨1?)°YÂ	jLô£â¬k=­Hê<XeÛVPA·¾H®iE>Tr¿vKÆnø[Ô;nLçUõ}ô¿ìÒŽ¶	3V7òù@dÞCJÎoê]4ÐyPâN ’Ötž€H­8 ‡É¹&.½Öm¢î˜„Ù¥öÑB=å<³O¶HOH$9ž·Ö{jÑg_íûä$ƒuÊ$3‡ôÙòH®ßÛ‚T›}Ê®LoA›è±S¤àTžôÊeŒEÖ‚¥÷_€aª†Ü)j›lO¦–H®^5âÎ…LA¶dŽ›1YA\0WöS´æ§i00Ã•¡‘m¥Ð’ÞÊknbCûÔð(åÂwHªðÖ¨Hó›lÌVD*é›ò4 cçQvÙù¹G:t	\'0ëÿ&àxÕ	–a$›T˜þÐH¦W\Z\r£éêBÇøú‰”ï7ÏêKã$·„†©(f\r¦š)ŠkÉÕ²ËyBH¦WÚäá¬˜®’IØçRÈyÅÇoZG>34Ã\0©FRHÀEÿb>Ÿt´`+R¯oH¦cîH÷¾ÑZ=Œ>yü+ø A«¯B³ét¢úÏeìØŒUëWoÙÀÍªÃ\\ÔH¤þ¤˜Ó™ÈÂ’€H0·ìÀÙG‚~„ðÌÛXRkû›<¡³ñ\\áq0‹«§—§™”€H¢PG-Í…wü_“àrM™dvWáÍzuéJXš‰W×ËX{Ž”¨’á‚ ÇpH¡Wö’j g{}çh	³0èÕ\"ê€»(\0UáPÝ÷îM÷oZyû‡HYG¾Ü£­ØÆ€Ý	@H¢QrT²GG}Î™Ñv5OÝ\\BzŸmåYÜŽg\0@‹Êþ Ä\n‡Ž\\Ì­Åà òH¾l¿4ã£ûéyì5)ó‚÷ÜþZÆá…Ð RÌMûøy{Øs(„ŒØPte`Ò÷‚\"rÂM=\';œÉDþH‚:-ûM„õCûWºï…í·åt\0¡…ý½]QÃê›Dš²õ\0_’à}¤V§¼H‚ZZ&vÐËÜ ý+\'<A«YyëÏ\"U¯·:HU£0¯ùä9´u{f­Ööck´@H‚ i—­ÏäÞ{ÕŽÒAr-QdÚØ£ôËV¹µ»ëå±ŒŠ³ýitaè(g=ßhüØ›¼üÀH¤³x×¦8GuL¢)Ôj[âÓÍ0KvÉ$FkƒÆÍils·‘\Z£42Î©eH£çF	Ã«ïg!H_ïA½yÒ05¨¡µéç´Ä0÷Án±Ë«Àöùd]ûHH¦™Îâ•’T#íÜÌYHhÂõÙ\\Žúýj¬>çùgî9\'}žÒUÈ\rn)T•QÊ	?b@H©zk¥Åüi¶ê-$\nëJþ>”ü\">egpýµ·ÝøL\'r¡›oã´vþ6ß»ñØ~¦öH«-*L4¢ºf%H\'~4hí fOD´÷ˆG+ª~ÞcÜRóIJìÒ‰ú3»LlH¬ðÈ^øs¨k8ÔÄî°)îì\"eí\ZŠ:¶{ÞÖÙÇ¨ðÐ‚\Z\"¼e°ƒ3–k°H¬•òÁ.$‡0nXB½f<É÷yT`âX¯ðél\"pØa±\\£GhöÀH§-wééî,î5T#±G“ægò•¦‡ÂÈC—¬åiäÍÅSaé?çhÛä¼·LAÏdHŸ„øímšöŽ«:ž¤ÿžc¸*’›†÷pÃð%„‚\\Y*ƒù§ÅÐðÌHœ\nžž:TËÍªTkí‹²&Q}@íÏ™§2|œjçy)ë²¤ZH.ñ$ê4l`Ús×ƒÆ“TäòÊ$à\Zõm\n¶?8«´ÏAÑH)KŽÉë0=´\\îÈ¿ørÎi‹ ŽöH€¢Jôê2]iè¯¡¾Oû1Eº®V+\r^Eoïß÷Kþñš\nµŸ‹˜ÁH‚¼ {ëÈ¥µóqKßüeéIŸ(óªzÝ©ü¼‹=Èmð–‹ÈÕŠ²Ÿ[5O!€Hª@úÁiƒÅC4öç†fïõìì[­ŸaÅÙëy‰™jáüâ„Ú‘?\nkÚìèžÙ2%kKëp€H²z¡ŽãØšÿa`vuµqƒÒ±\0¤²óüh¡Œ>ÝwH²ÁÖ¤|ö¸öQÌ#ì@ˆàãm/ìû°@=uÖ}H°kªÜbüËrÚ›ÒÕ\r£ÁËCzâí\"HDÛZðú¾u\rs	uý²@H°cÅ26òu&lOÇà“D‘ëÃâllŸ<zœH°,¬ª¡ŸI»´ì™ˆs·ÓáiVQúnÈkî…;r)%Ç*,H®xç^ó0Ñ˜û\nÞqB4ÜgÓ ÞÆ…c¯Š¶V<)^\n<H¬YY-®i¬Â*VGM’µ·7XŠ¶_4ö;ù(©òŸÛ,\\o\'ÿ‰D\"H¤›{Rë’Zæ.¶)\\œX–õºáË`W\\õEÈ­M8_æÒQjlÔ’ÈØ5/[EàH¢hùP¬ZÙþ?Ûé¡šçÎ€J¬˜”ýñJ“eýÄ\0¬Xk´HŸèh:ª’ÁjXÈß¾ÄóhØËPBÌÛ/	‡œ›T¹Û\ZMoK}3t¹°-EƒéHžs!f\\k®PÝ†”¯gÿoU\\\"ú†ƒÔ±Z¾<‰˜ïÒ¡¡õ§|lNÿ»ªèñ¢5ÈH¾bó¼ÿ©,®G9M“Ê%—ÀS¼ÐÔs›|m¾¹!_(v8AeìéÜx0‘/YH©(0H¦glïEÔ²2Àüíð|4å’>¯\r×ŸmÔ¶âJXúkÜ§áN2)´t*RoGùIþîdH§à†¥ÚúQ”ˆïÓäq0˜|‰RåeO½Žäò×`i±\r.ýÌl·L<Ás\noË>PÀH§»>™Û­ð.«&nVæ\n¯Bh\\°ïÝÜ1d4(¥¼Ÿ$ñ£l4‹Çe0Ù\'è¥H¨ghEYêh)Zà @=cZJý!VhÎù)M=¤BÈöÔË‹tºä!à‚¢9¡>êóØÂÕ`Hªú³…¥ëú;r=«ó ûë4ðÌÇÍ!Ì^½Ë½Mj/lm¯”|% ˆ^_ÉH§D§Ì%„?EöÌÒwã§ê±>{VÝƒîíÔcdªKðãºòâ¶,~U,5ª†kXžu(JH¢\'5ýU«¡0päosïâœ=%7mªû¶1R”D\"qGÀù“ÉÝnÚàæcAHŸ‰º¢4¥jèÝÐ´¨M~˜WyKå‘ãH°Ã™*4’ªãÅ¢­ ëj}±Ë~»\"íH1\'bû fþCEneS¿÷z/„Í5FÚÏ‘ûãessËáM†H*å\0[Ævhþµ»hŸ×žIšõÞlÖ¼Ë¢ÈòmyU¯n»Õ% H\'d!— °7+!/þFšØ°uƒTMáÙõ½c~©:€H%ÔÖ5É¾á\n *+™\"86ãÃ’DSø–ËƒmÈÓLWH$šQyÝ–m­¦P\ZµqD±me1Ë¦ÙêÆ©ŒœäàH!u+jßÎ³¸é9&§xq‡gç9­M~ô5÷~QE6àHÔ)‰“¯¦ÊžúÉ?’~].º).\0„\\\n—”3`!`è\0ÀHßvÝ«…¢ç. $’íôI¡\\ð{üË!ûã\'»÷\n¶¡~áÒ“€H«ç\nLf«\00\n¤C½ýò„ï¶‹\rZJgÉŸ»N³µ4ŠXHÏÙ«wôÅC§ƒ¿OÍ‹9¤pˆ	X{5Ì1*7þñK;Ÿ…€HÞÖÓãèJªE&+d¯ÿ,Y¡³Fô÷œÿò½–`HÑk&ëy3ñ;RZÀYÔƒÜ+‡-ÎR8°Vñ£§HàeVÉGÜdàÑ\0DûeÂÉ;‚nuîØÄu»IÍ½È’¿†<BHM%&ø‚%éje†vJ\\¨¶—03\\=(Ì%‡$KËŠ»¼Ñ…ÆôH\"  ´Ý\\>³¡=dè4xÀÂ‹%cåTªÓwÿèmž;ÆžÀH\"÷aÙ^ö8L-¿éhh8LØ<}§}FÌK\ZnÃ£QiÆè|ÑØH\'Å4,ˆVðžŒY\'Ñõ…Æ¹ZLŠë\"`¾>ÖhÕ¦“ãÏG©ñ#ŽH\'¼¡„Ó§fÞØÛRÕOC+ð\'Ø•_ˆ+sîÕ–1ÿ4»ªB@H\'¼³™_µßŒgdÓ÷àhÒ{i2Î„2ðÅŒÿ\':Ö‡Q\r®ä¹”¼H)XRÛSË<.4‘ý—n!&,G¼dFåëî¥Õäí¡Æ¡¨E‰ÉÎ÷.H)Á9ì¯›–VU)U´ý½ÖŠ‘AêGéÇË°ð„I[‹8D”èØH*óˆ‘°3K(£;–$@AZ#œdÖµê¶¸ò  ÍŠ	ßâÙH)ç×—\"mÚÀ\Z’S­¼\'¶ã5½º®>ûT¨6ð¡Ê¬Uú\\˜º\\ÀHÇ£mÇ\n¿ y/pDåÑH p+ÿ¼^(ç_P\0ã}çáÊ°FE«H+Y?4sŒ?&ê•_[•ÎÞ½3è”6>©y’Ò§#‹Høëç…ä±aîñâL÷?„o×<×òZÅc;€H)­÷\nàðŽßK`Ñú®\nº2ì¨“I-aÍ8øÀèíH)¤Ãèr™.yÌÚXüci\0ˆZUÐ]KU±‹ H)¤I´™Bÿw•ñ5?Æfÿõ“•ñth{r-`/Ìî±Ë¡>ñ','sug kilkadiru iukangi.opus'),
(52,'Tengo una pregunta','Sug tapui iukani','2022-12-0514485291697513pregunta.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0èo\0\0\0\0\0\0\0\0\0\0\0\019¶b$&(&%&%&($&! \" #%&#%#\'#  \"\'& ! &#&%!&&)&)-/+.,0>-12*.28.63 %#%48&.534-&(*41.00/6.62A:6.,%&.74=HäÁ6ìÅ€HÞ²,d.’¬,Û§¹áTÐH†Vå³©ôÐÙ,`ïŒ†^ƒßcš ³¹à©kIbPKX€H†d\r×i€ÇR¥½×-åp0q+ÚK~ùlQŽ)­M$±+Á ÀH†…õC_Ãª#”°q	óÀá¸ÐH•™aqÀy‡Þîã«&H†­EjÒ\r¹ÈP4;gz¡»PÁòBÕ¿Á#ièúMæ(}dHfo)Hù&…4§7R¦\Z¿eC¡ôïh*µÛÛ!õŸ§8ÔÐH†Ö¢„ÿ\\É;ÆŸ®ý¼Ñ•E<2ØHõ¯›–Ÿ1¹ò•ýƒfX¹WàHàdJËA.x0¦¡—ÂÌ¼Õ#µ‘žu\nÊ¥(÷óT™{lHÓìû#ªhMÞ;Ófu\0Ab=ÌÞp9%›ð]wŸzÀ«˜€HÏñ­àæ|üˆT¡øo\rÐ?`YÎñZRÕzaâ`„W\"¼5/CH+qÙÐä}8¥‚ÜZÐ_}ã—ªŸ¸âMQË+Ýü­š<ôH)r| ¯ßÏ×çŽÚ“¼,cS –ÓØwµX\n¢ÎVÞ¸n¬9H@H\'³!S[M™6‡V£pGªà$Rß›\\à`†¾DJÑGzH%*d!\rí\ZäÁ¥4s`?\'xrÃ(Ÿo—1kOÅñÞ~HuÉf\0Xùcxí\Z…P-:äáqÎ9•)m„¹ÀH%ÖŽàÍ¤=`›io_À7ù\rç¨Ò­ÅÙ…Ö°H%*dS«žWÑy½¾öh©U/ÂŽªõ—`ážôÏs<H$ô\'•54Zª¬4¨‹S´… ˆ Ü±‡3q\\gù@H%9ž)	*ß´˜ø|3¿ÛrõÏ¬¡ÜÓ×Õ.,ùI3ÛLlH\"/mD\0ÏX¾¡–´¬¹”êD»Óü*ËQýž·¶›€d H%)¹«kªÝ²˜}€”$U#*äEìˆ­ì\nO:&¦|H%*pÐ©º\ZÔ…»ñbLÀõSKL]ÏòªŠ-@ý››„ÀH%Á‹ÏïfU¨ºMlô@’í_þ‹Þ8¹ßM#æLÁG8TÀH%*pªîßVTmÅ·ëgµºrxìNÓ.™*K­\'sð}bâ€H%*dÓdOŒôþIùåu)Å£¦ÆsàÜÓðA;L~šÓçöÐc£H%*p¦ø(Éì<«`½„\rù’œµË¥Ãp1ú£#³^\"1ŽQH$õJ™ñ9®+Ëv^ù¡zº˜Â‚ŸÔ`¢ûŽÀfH%Å%a*ñS³¶1<ÛšŠôêÄkÉEIJGL°Hwpèà!;n•X¶ÆoÌ!üþ‚ô”ìèÓLœîH†‹ô}½9}¸þÕžÆÿÈŠM“´iß\0NŒ×4ÀŽeÓÅÜRwˆH%ídQp£\0ü¾‰0IÌN°«ÕÜÅ¢²[;\"žtÍ¸cAù4TH%ÂJ=ÄgS<*T£Z=\"­Y¥ÞËÔ™€Énå\"H%ÕõçBsá‡†#ÿá–¼Ïæp\rVX–äã€H!öÏsdŠÒG$€…æ¦`^¼h”PE>	.€5xH!øÁ³úi¶3’½§,¤*NXaÆÏ3ãH©>9[°V“8H\"c÷¡>BÏZòÔ¬1·ÄÝéï4z@¸ö3wI•ñhàH\"dl}ÜûK´¦Õª\0¨a®t1OE£(•%Îü½1ÌeèH\"‚[–ØGZm[Y¯òîî/ÅÄFú\0²Lßv«#éHÐJ…ÍH!ÏL´e}	Qþ‡AÌuG¸s>bFS>Ék?HH!ÐdÃ11ï¦®°ušµç9õ#\"ë‹èôÕÌ‹õPj`*Íéþ·@H!öê@ŸÑKÛ«ƒiEå‡þ3´ýú›$§—BÓÞínÍ¤ß†ïáPH\"d‡¿@ä]‘Ž§‚Ô¢Ö=…ç”\0é Y0¬D[f¿v¯ mï‹°ðH!ø‹NÏü\ZéšêE¨ÛF›3| ËåÖ}õªÅ•¹Cõ%ºHÕì®/mªÈ¦?¹°§e-ÎTÇ\0wàünŠLÄLamFðë,-^8ˆ HŒ19r¦¥÷Z1¾¾v½Éú°•)GßîX¬Ûãiø¤Ëgi€Ø¡\'4H:œ‘E%¤PUo(êïwº™ã¿1ö÷-¸þãéðV(þc£!cyK!lá£®âÎ H;€Fõ®ì0¶\r\\€ð ´(F>Ù·0µš»›†b@…¸v¨V¡`m³ÄH<ä6NÜI~ŒKúî“òw\"\r4éìP,3GdÉí‡‘éCkaZ1e©«×¿¤îH=•x´f­Ôc#«åÀo!Ç¢ŒÏºU–uxPIQJ|¥œ\rNDùë–ð0vàH’w¡‚3›“[kgIÉÂ9fê¹ž§¡,¤æíAÉÅ‘}h±-\"²·LƒÝ(~Àpt­H«Pn!©cºt}7Î?Ší¾â¤ò¦‘8îq©èèh£_f#•Ã³7ßêÏ¥Š½èíÍYFø:€7óÚl#(@H«>§(#7§½à‰2ï%vÅ»æõ^Ðçåÿ”Þ{ Y6÷œbShH«N5~Ðb™Q^!Òý3È¦ ù%Ùfv­ŸÒªªY ¯FZãBE××VCò/€HªüŠ—”i5€Ø§ž3¯ÏOøÌŽ­4q™/VP®™¢žƒ#ø¦Î°†Aá²ãÕ€H©h’gü¡m’­Î\nšwå#‹jO.hbæ\0°\' ¡«¯³@È´k×?ë`H§N\rouòÆüR·Øâ»Ðõ0LÔ\Z£àÅ€n\0·›ú#2fÊ /¶µ€H¤ó»2ÿ\rÇ­OùÜY©7,™“&P?‘‡õ9H8²\rðö¸I&NL¿rë‹þüÆH¢QhŽ<”Õ>Å6Øcþík] ù% }±µ¡Œò¯m ì‘Û7Ð–„^¾‹Rèf:F8Íïq4DHŒfL–n<îy¡G®-å¿å–]Å÷ÌURŠ}b/©¥îøyÌc&\'²Éû€•B~H‹ìžªü$áA–GÇ!w[.å‚\r“ÀrÄµÏ{Aëãûç^ÓÒs1¥@1Â¼¿¿û@v:ÄHŒ\nëÚzµ¡(¦	.käãÞ©z»¹•[x®ä5~gÏ –n~ƒÇå¢b¹V×<0Óâ`üHƒ€Æw69Ê´î¹KkZpt?€…Ž@$éQvá5{H0”èYW-ˆ¶}½ÿyÄöþùµš7¾¢‘‚+2!‘\'ƒABPH‘,„Àç7¥g“†_^<•‘Ä2°øîÝÎC;dçrY\n<Öd@H‡Mú¾D6€¤&ˆÎ0Q×x<!pŒc»ÖR\r©š&y!¡—`HƒJùËèMM]ÂB«j‘üüyøÔþ¨IT]Ìsˆ}yÒ°0*?ßˆÆXô´æ„8—’H­{g…dü†$µ’zØ¿N©FŽX\n]›ŠÊ/ˆ¯3ýÌª6ks?y9sìDÛ%¡X$4H*Ør4H®\\þîÚÿ*ì:õ	°õre hÝ¿êÉ¤;©nÒéñ…x~H¬[þÆÊ}eMõ¯Ì·?à6û~âRëŒ€»è/KàV…ÍçÊšÞ”¢Q3’o–H§,^`U=ñ5<\\E zýßV¥ÚŸl-‘A2èè½[3JìíÛPªÃJ_˜)ðüëÏuÀHœöRj{lÓcÞ˜>=šÑè™FµÃyÛÙv\\3ÅAK)œ\ršCjtAœÐå/+‰’ H›—1OEa£´ê\0ÿµÅÓ¯v›Û‘†y´g‡E^.[¤úÙÕ\'&ùRo5þÞú!€H‰#f¿}Áù²÷Ïi<N{úmWYÏÎG² \ZÍúO£ü>Oœˆ:erÈ–€Hˆ>š´‰T4tr\ZOÏÌ6_A›ã:åŠÓìÊæ•wðH)JiT{^QÓôÁˆ|€^k0=g@.íá’7Ëß×Ú®Cßøœ´(ìH€ŽÌ÷Çb/SHš˜‰DýÌay©m‚Ü0pÐ™—IÛsƒî?‹[°H ³)Üý*-Ø1&µcgåôÛ¤wWÁ~«A4ôþô®eùâGP‚\ZÜžL|~öy::£Ú,_°Hœœ+OæÈ}ñYbµ™€•*ò“U.MÍ³”‹r‹DkºSµ$ÿ@q5Ÿ\\¢-6êdHÏìJcž¢„ò.åöBÖ~çŽ¢UÜv\\Wx_QÎ­z+×ª9c…§®õì€HžÉÐ3õÖyë7t©¼u|š»Ö`\0Ž.¿öNŽD³½Ãj4ê5¾åËfí¨vàPHŸìðîÎÎöÎÐØhG{ãÚö+`I\"å ¿i0ž³,Rh \0ŒºE‡~D¤€H¢¼’ao¨QW™’ØQi$[#\r‘&Vý‡š6(:•m|«šôoÍ×øH¥3°b·ÏŸ_Oõ;—a…„[F ò|&“‡ö Zœ×•Z]x$?ÑñòàKíG«ô­ò?s¦´H¦UC·ÂRJêÐETR„­·_5ù•Šô„½{\ZFÚâêâ3!&eº6òŠ_\\H¦UŸÎ½Õ<ì“yá3†kó×ã¦Ì˜FT¶“°TŒ¬°ùÕpùDF[Œ¬ý¿…@·KÒ¨zïÛ0H¦UDÍ^¾>X&Î1ôÕàv57é‡lÕ…°—CÑÏ•Ô<{`9?OÁï‡î}×br+ÉH¦Î–½6™ÉãëcÔòûº2vê¥ú ö±Çî´(²cPy]÷K©iv$K˜RÍ‚¸õÄP`¥à©bŠ¢\"_èH¾¹A«±Ôâ#ììÓóM+›x ëa™WËõ/Kÿ³¿¯%]âåùÒ yLØa4i¤Ù3øòZá”Q–­›H¾i;‡æ¸ÖÏÒF3<è¿ÙQh‡¢\"â‰TJž2²‡üµ@Ï,û5oÉs´Ë^Þ-BíZH3ðH^‡:ÐÆòÓ©¤^?1Õë­úT·Òzh|FÛ?ÿ¡š¨Ï/ôm­Ç0<í1ˆHãâ¤ýaG\r/ÍGN³?\0ß×ã£ù…ïîn9°s.©í¬åñ=\Z5¿C“¬HöŽöO²ëIœU>ûPrß|âà¿k¼—\'¸T,¤d,úÌH)¤4gš—½hG¦”ayˆíà³›ì>°Í\ZI»U¯@tÈ\r]šøH€°Ðæyo«æõA –ô˜_äÿÆx§:§D-]Å.Þ¡–Št4wˆ- H‹e8î½>tQ\ZÇ=§~ß\\µiòÎÉÑûZ~hîû<F®ÊÓ-Ë~š&«ž£Vd9¢Q·S94Hž·^kM[´´z	:½põ×p­ß‡Š­!gs¨–¤ªû\ZÂÒœnÓØâÎ÷§õÆ€Hžæô©—ôòÎƒ[<ùÌê´I¢×n¸p´?3µª-swCÕ‚`5ïzä¶Û ž<]¾ýs·FÅ®@OggS\0\0è2\0\0\0\0\0\0\0\0\0\0\0\0>fD49>5221/.&(! (-6-#.(584/13941*0#\"!!\"($& ,&\'(*\'(++\'+%$H¡qœÆëŸ§\n½åë4ð\0;i¨_–,vyjmçú,ÃMÚ¶àƒÄ›1†ù¬ãŽY(ÒÔ/}\\h®@H£ì˜à‰s›¬ fßUT³Bi30Óä¯Ix›î\r¹Øc·Ž=šà0w‚1ëÞ\'X4.‰-¿“Do# 4®¸H¥*ÉUn…ãˆ@t0í[ XLr:{›ß`)”úˆ£Ñä‡÷²ÖÕññóê˜JjO CH¦“RÉÛó«[=†3\Z5žàÃúÉÿÛŽ\r›«öÆ\'85ºãe³¬¼Ðº|÷SÎÝ€H§®²Zùf‰i–ø«?2;5ú	bðGÈÊ•¶Ä}‘§ˆ6ËÍ‰ð3TæÌ ‰H¥ûRLµ¿b.Lí&)IÇ@žä!¶›ú°Ý‡‰\"ƒ7û•G(g-øWÿ:ÌÏw†´Z\nH¢LD*^ä³\"ÛŠbïL$¯ßÐÐWd\0ŸÀw×$Å%—[ú}§ß,_\ZSa¢ê~@Hžj+ZYòi|a>Ï\n÷uçƒZejX øÓDžBo¤ânÞñìÖG&ùö°H›ŒÃ‘O;q)Ÿ„áÌ¶mâŠ\"(ÚIXJÌÙÎ,ÏýnyeHˆ²õ;™Ï€ÜŒ\rÊ1Ä&o.s>¿ïÚ:uþÿ@£Eü¾ØH)Kï	ÑÄ§unpG’óä„(¸@Wé™(”\n(G¢àH€„„hÒ\"r¾ß_›÷5k=ŠBë\0·K+Óè« H‚T¯\0ClWZÀìG^OÝFv6ì\0—±ç@ÆXêEg.ƒÓª<Mÿ9H¥góÄ+ß(	èÖ75WŒ	dú$ÄòfM ÌPÇRf¨\'™££@H¦’¼w£ßå%\\Š›i‚þÖ4Ì?ãh§;Eçºãøºk1ÓòÁ¡}W%ö—ºÚî`’ÛDë«„äH¨ vÖËæãc@åÙu7u|=;ÛYšÁ1ï6i9ê’1#:Ul2`H©ƒšÊ_Ò<9pþ9¦+È™Wšk×Õ<0›ßw›WVë¦@H©|›beëŽôÅÎ£«NhU…ŒSè‰öÙ.+1Ó\n=Iûôœ¼Õu¤ü‚×PH©ƒ8AvCãÙ Èß,yÚÊúžß+Pï®}ÕÓ$óýAäïÃ€H¨ó®V¦`¯¡ùÓeÙÇU¡ë@m–”\'·”ÿÞÒ€¦%+—¤jsý//ó¦~õDëV»ÀëÓ@H¢oPGWõšÍüÄŸ.•CÿŸõr³Û.YÕ„i\"\'F# ŽþQšM%¯Ë*ª£/*ôÛ`HŸÄþª\"A§ä¤è2sÖÞ]¢ëÄÏçX8÷³êÔ¾²>7ƒU°M3]kdY\rY¦þyá}€ÇõÌÔHž‘ï3ð¾áN!ƒcê­ÓóQìEY¾E˜2å£ñwž†¦†ÑÃ£V ¡€ÔHHFgÒk¿Ù}Ô¢¹¨~óª}¶æR2%\rg;Qæš³‚/µšx¶uÜûlŽîlT;Ò§€HŸ18ÿ\'ºA}\rØ&á~ò3˜¦?õ„[ùe2–\'%±ù$c•9ü÷‰ý•‘V›sÍ5A‰} H¡ ½9i½\nD­+€\\ mÂŠœw@üˆ\nÏyTI@•\\Ö×2iN\\…=$n~q“Í;ó˜HŸ¡{mŒaÕ9 aÚì32JòJA=úfŽ(/U¿žLü*fÈ¾#§ÇæÚâ>Ö;di¶HžÍ—ü QÂºe33£\r^3§ËC%Ê\'O1Ã/‹=È\ZÉXÏÃJçY-}íŠ‚@H ¾ôu[Á·F`2ƒ6S,÷³€ïÇov-Ÿ†åJõÚœèÝ×®Á¸ô€HœjWp5‡P·×¢ÒÊsîŒHÈÏˆ(øhõâ‡³üÙX³)Ý3«\\õ‚“`„hÌH$lŸÅ\"é4bF“4™”*˜¶õÊ»¡‚\ZzÉÞ_oH+ŒXñ`T–¼Ø}¼ÏS-c9Ò:ÿúÖ»šðH+)™Ûl$2W\Z\"hy[*\'Ñ\'\r¡Øè@€%GÔ¥¼ƒþ•H\'Å6ªÊ4dNÿ/ŸYBd Ìù3rö@ý-ÛÆ¦Ñ@HH\'daØ‹¢	õ2~€TƒŸñ?5œ‘óh\0VR8\rH%9´g\Z¤`ebò4áÿk;1ÉºX	…ˆÊ.]ñ|:B¢„v_„H%*fV©ÛTÖ¦v+S†¸HmÙô@9Ùnï¹Ñ~gÀH%(ãšOj¨XéC%?—[ýRa7<ª õÄO§ˆ^­…{õ´eÖºH%.…E¹ž–KF?.àà[Ô YeÄš |h©ÉZ3HH%E,\'FN¶/bM3¢#{±Å3 Àß7-Jþ÷lÚñâ÷‰À®åÂ[ÀH%*‹?íÔÖôAßÄ<ÿ³€Ñé¨dÄ\n\Zãž¹\Z·‹ÜH%(á\Z€\nžÒÉä•ÓÜ‚FòH1g€‘öI\n”Ð‡S…„Aºáf€H&ç•r ÆêXbŸ¹\"x6`åŸÁF‡Ï^fÍ„<‘£•Õ¦2XžŸ™PH\'Å7˜ûd›ÏòÓ?=òt_š{³Þ÷õãø_©ÀžÈWÏ‡¢‘$ô¬…pH\'»ÁÂW-ÿð\0Žwâ—³¿ÚBÑ\0ÅjÃ<1Šþg„²|T#ÚšÐH\'»Â˜öœ#„yÒç°	´lœËo‰¦À©ë|mePð­µË–·ÐÃØH\'Å*œ¯á¸˜#ð L¦}ƒìôýåôs:™Ï6÷mébé~zcA1$‘^H\'›ÑõçC)wK^ŒOÏ^ÄYº/þ3ôjQh3^]aÔtH\'»Â˜Þ~OI?é‰.¾²•SÏÀ“ETŒÌâhµäGÀ\n<·Âw‚ÀH\'ÅÚÝ–hLå‹5Òýô·\0)®‚YøœÚåÝWjKd¨þ}šöÿO$ H\'›«¯w&ãfD’^¢I§ÈÅ­h¾a&Î~kÛ½ò9f\\–ý\rH\'»Á¢kI×\\=n:žø½2£<†N1aFûó:ºª%•³«J','sug tapui iukani.opus'),
(53,'Borrador','Anchuchidiru','2022-12-0514491357242borrador.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0áCÙ` )%\'#!#\'%%(\'#$&\'*!)-\")%#*)&\"*%%&$!$%%+.+2:5+0-12406/11.*2/8530.64,/0*6470/&0(\'\"-2@723.+4,,+\'HäÁ6ìÅ€Hßó¢Ø?V\\¾š>ÛÊc½&YH\nÖ»’pœì\\@\r§\'-\\îOié•ný8üúáñÞH†BÛŒ£›Ï/ìÎº½Itl\0dVïSÃí`%e¼\0ÚºWdÃÎX,u¹`H†j?3û\0˜·UZ/šÅ¨ºü£õRpq[ÐUÅˆ—bÑ¯}°HX~ÿPU—Ãº†\0®â˜¢V\Z…”f·&½\"/*w<p.Ó·üxH½:í ¾Ðê8øŠ²™fI´—YãúYK\n_8ë%†H†à/¢‘ø]úg–„É«P2Ü¹<ˆô<¿zÙ™fï¶×Hª(²8—ëO\'R1è}BË½*`ÖÐ\Z¿ U0^!šþ6§€HàdC(_{«W‡·ÛÑŽ>ö(9Y§—ä¤RÊÞko\\ìS€H«nánÅIS¡pŽ<Ž°«,@-	õ2C e\nî{dWuÒýˆ[HÜKðê©=„s§æeQ`ê»¬D°’rCD\'~F–©OÜ®¥SÀH!ù’ž­ÀD«È°È*…¦&¬çé3ûy²aÚ=BK^\0¤^ÀH\"cþ½Í£Æ>\0½ßo)J!X_oß‰êk>ý£sJQ´$²–Ÿig H\"d•ýQü‘G\\´û	ˆL°ýÙ)ÙTÐ_EÚ]\rH!Ï\'º¿†¯Ð\r§ö¼ÝÍæP¿ ÔBH<êããWq»_1àn¬H\"aˆX\'ÈW\\ÖÂmSÆ:	Èä‹¡3Oô÷†‹œ[X€h2;PH!ÐE³<oày#*‡ÏÑõk„ÒMËà«™‹)8xæáA \"-BŠH\"1¿=Æ¢2b x¿‰§º¡kò[·;qÎn“[º¸0Ð¥Å5»Í….ÀH%Ö|:ÅIÅýÖ£saÑð†J]]´üÄ=BšÒ€H$Ç¶”·ÏåuKôŽt¼äTJ²l\n‡[eÌé™Ÿ\0H´H!ìS›}Â{@¥D:ž©¯aÝãý:íµÏ+Á F‘Öä› H\"p«Z«4Ý:j$˜ ¸â®jÝY½ïœÙJ³Eç¶q_?ußH¿”ÆÜ\\rH!ÏK‘à!¹ÅVm¦”C\r”\nüþn®\0ÿú£l¹2-¼Žç@H!öì®f©E³‰M}g²¼q¦CÔÕ}ö\\[Â!8S‹,E‘<µbÖH!öÎEè‹\r½¨pvÇAFq§ó‘\"AŽ×Äùz²™ˆHuÌ×Dë\\è²0ò˜I^W°ž‡ûb·?¸àQkkóPwH$ôh\"\rg´ä¾ƒŠ›}\\4þÖÂŠg(õå…õ1|óº\"ÐèP¹$ÐH%+²I§Òq‘Œâô§¥Do4p%å=Üè ôØ!wªèêæîdH\'Õ±p²ßlIÃ®ã)Œ\\ÌVÑ3€c_Y·<RÊÎ8—Ü¦H)ç¹+èDN»£AÏÖò…Ke¬uBZ@®_T\0ó–H\r\Z>C†ÞˆQ\'êEER×»3=ûB2¤BÃ:wâx¥<WöaT¾ÞTH-Ç³\Z\n8X µ^HEh³Â¹‹\"Ùªx‚ì˜nÒ ”Cµ“*àH)ið™öÑ±·’Kñ}ŠùVO4sîo‡w–é‰çüXPH\'€W±³¤úÿ+³(ÞøQW\"hÈ¸?Ý†è‹\'æ…¿ [Í4(„¸ H%yY—oCµŸ>’@ÿv‘ž:ÆâÐk:3×÷êéËÒöêH%ta2Æ¤1Á¼å®,;púøälBq%‹eèá^\nZ®-\ZH%{p/C¾ÍN[£t¦j\n3ÕÇ(P§yõû„»¥ƒfH$š*ßL¢[¢&U3ƒÖÊq‚2^LP,ï††Eü]Æ‘€H!öÂr$w§úéâ>¼œXí~êE¢TÌ‰ðˆ\néù/£~ ˜îž^¢H!øtÕÑº•«>gî½åÉå©¤…²>\ZÀgºze+ ›4ÙàH\"ò¤{®†ršü\\gàj{½„{9	ÃíÉ¡\Z¨•ÉòëÌ×ù?·©\\’Á‹ H(gÙ©Ëìœ×Ã•¸šç\'gßô™	vDÆ—§ZQé¸!¹+¡MËaŠ!›_\0ŽÀH-¹te7†lD#mæ4Ð\0îùB	oÍ¤;¿‚šÇú_¤‹à¯>h)\0×ò5HìˆÏlÝ€‹²{dØ÷Ûˆ ŒÆÈx\\\n½T4»6G—`[.0¸ê>T”‰×x¼“÷H£è¨÷‚HRø¦xñ×O®ÔÛ}ôƒ·-Üè5­é3-V~¶B·½ÊnØsñvø¼:rÝ/8VAH¥†“û ú7jŸö¼o¿2¶”€z`\nç¦ÌCKaHì&|ÊÅ¦ˆz=V‹<ñö6„](ÐÕ@HªÉõ”]|MÜÎ¹8({Ëª\0ÎßiG>Õ.³x¶0¢Y ÂÍ€H«KúJ³0þq>:uJ7c¤yXæ._|œ\'\0gÓ¶$>CU³7u¡ÿŽˆ?Hp˜H«ÈÕ4–O·¤{Nc“wê³{}óyF?Máÿ×±˜àS®BoE\'}°}àH¬§\0x¬sþF~Ó„îÀüÚÒQ~\')™G©4jˆï`·Û»Jül2´]l…“X.Þ…ÐH§Aëã/ÖäØq\'d¼~#¾Ïœ/b>ƒ ¶Úà¹{ÂüÅ3Iô.àß¡þ[/	} H¢(†$˜·1:|Z[µˆÆùi^IÈ¸b<êæeý·$VEgÓç¹‹ttÃâ©}L+ÙÀH ßLrC82qF¿ôy^–ž¿7ÎÀ,˜œM`ó×ÑÚ°xŠcL—“*ã!’#º4ÉfHŸÔ/¨Ð`å!Á ®}‹L)™ä6éLÛ–SÐç38vé[Ãiü\r©òÎg½äšÒ÷bd¼œH›ñøfÀ\Z¨†$ÖClLý\'‡\ruÎŠf¢¾Ñ‡édÎÿny/›E]ÎYÀH‚\0ª`£ïüûC/Ž·J©Aœ¿=¢OÏ‹Ö¢;Ndàzù¦íÌì¤Ÿ	>.cƒópH„SÎoýÜÛÏÙðeB›p¯	m&ùa¹Uì™yP¦‡WÃhÖB$&QéÊ©ŸÁûïÌÈH”n£çhÙÎ÷î!3NÁU£ßðg÷„7ó¨Š‹ì(\r›œ¯P­ôÑ€H„ý°´ŸÊYž\"š)gbx\rP”ú ŽËó¡Œ5ù@þÁJ.FŠ€Hª²Ï4LxJ,‡`t­·ÑÚþÚ‘¡°àÿ”x©FÍ–°¾˜p³BL¦-ãº\"]ü\'H§OTÏ{ÛÒ%~V„D\rå–¯¡±ï”× ¥[ïÿSÉâÆ~žD¡¯ÕXH¦K1=rÄ¸7ÔÇJ ’j÷¥t¶d*ŽÞ|Š½†ïr¿Ÿìó§wÒi£j€f®‡{ûŠ•N€H¥Ø]°ËÑš1Ñ”aQ?ê\rm%\ZËäîÒEË½Š§O?‚õ+A½‰ÒÈ®™¡gàÝ[Åš~$ÝH½Ä¿Ê·t@¯Q9`¯Ššh¸™]¡‹7DÕj»¾¥¸Q(pâi´éE¨Ø@°H½»½3|™k*C€Ôò¯—·u³˜€),whŸÙCº\'àèo­ÖD\"ZÞïý€HþyÍ;›dû§\Zå—ˆ–áÉ	”»‚•ŽQ•¸Sr?ã=.\Z<ð…ÍìdÍÍ¶ž°H‚àkñ¹ŸÅ1²Ž!(YFskÚm6G¥zÍî9Ý\nÑ7nFY8_xpÊ	iû¦å\07¸Z»1H’À¢›cTcvn\'AƒÕý$TyÍÕ\r–¹Ò³\'Ý,A=¾‹&Ò™«‚ÙEÂÀˆ€H’ð°Ç–kËðFÎ¡çzqÓö„T^ò†î@iðÁ†=:h•I0½ÕŽ€H¯Ä¿ñßû[¹È°Þ†§îuÆ¾EÉ¹¹¨á7‰ßÁ\r:Š\0;£¦.œH«)œ¯+u—¨«YéÙøQì”tÖÇ,‘OÓ}1¿ª”ùé¨”¬ØØ^QÞ„;\'o“€H«´×ÙE‘b!\0UðÝ\ZF\'ô’^öº‹ò\'M+àî4Ñ¶Àe´T}ê?ºH©wQ´ÃhìŠÎ¼)kÄ¡Pˆ$\'\"c°Ü„_Ck>àz™8Ï6f?[¾„åäðÎH!±fšÇ`H©¢óMµ›û*Àÿ…#°©ŒùCóß<º®Çv£G36<’—Ã@:pV·[%ÖgÏ\"P°H©mø\Zd»è¶VDßóÄ„²s>D3M‡´sî™~`¼ufZðÕPöá\ZCå­X¥IçÛcêœýHªdÊ2çW´ÖŠJ4f™\"#¿£CØÌÁvåXýBUVåg	uï5ÌBõv$H«‰/‰(¿Tƒáræ¦¡i²SêÂè1úƒ2Þ€üÈN@y)Í‰-·=„ôEH®«‡eˆ‹¤ç«7¾k—\Z=œ¾Â\Zõ9A†	—î+ÁÅ°•{H®Á¨¡ —Ù&´iæ·|I§*\Z¢;Á‡ó§\0Ý)Æ›ñÌ—¬k”.ôá€H°+dö´~Íý$4«O#)¿Òû	Òe$,}AŒ1jšêÅK@@H®»jkNA½ñüi=r>ZjìŽ@Åîµdkë.vW7am¹Sð—¢H®»eZMfuêð’û5|fW¦•‘þàHkå;ýås\'hí@H¬ÜÉxúùËÄi\0d\r:1¶©ËJI9ß7\r:F¤øÓj»äxwÕþöH¬§Žý©°§¢æTˆ¦Åþµk/“ë6pMŸ(†KžÕ9€âyÌeÔUz¸Ú˜\ZƒCÀÂø€H«‘2Ó@jh`ÝXšç)¼¶žuOzF\ZCæ“JQ„Õo›»m©¬½;§_Äˆ•ºÌžŽðô9i]PhO	¬>©H®ºŒ¶y[°mØ˜6NûZ˜-\n@YrdvmÜÐÞÄ0—ã	n»/°ãäF‚Ð¬~psòß0H®¥Æâàžå‘‚ö°¹÷ôïd´+oÚ™”A\rŒûŒß²ÀÙIëYEÕUnÊI€H¬ÜDËŸ€¿³]úûgµá×­Îq¤œ:±y¨Ù\\%Ç0r„ï6ñ©ù&šû»ùS”\Z˜¹wGFHªâÙ-*Ûb ±2ƒKvYý:«„†×½-•ÙËµ£WÁu\'£ÕXÑÔG¬jÛ:H£ž…Z	¾#Àrê©ôkÓÒ¾Q³›\nüÃTq™gXXéIŒ$ÕˆH¡™FòmØ„7Gîi‘üQž£´‹õsÞÃR‡Ž¼²½gæc« ib@SÿyôHž·†FÆŒƒTeÏ+Ï°pÒB,¬¸•ÇVö5(fÒmñ\n0ZÑöë¹¬H,ª>¦u|EjÛ¶:S°Û³õ»u¯LjX=(ê¾¬«ò¤ïÊ—`Hœ‰®uQQï}¦¦Ä›ÿEÎ€Fº3bÔžpNqÝ˜ÿ—V¯}•Á˜H›õVÛ©lF‚àL$\n‹,êmìÙxÀ!Š{.¤Ï[ò=Í†©Õ\r%OggS\0\0(ä\0\0\0\0\0\0\0\0\0\0\0\0Œrì!,!!&)%!#\'\" \'$&%!\'%!$%\'# &\" %))\"&H½®H6bLzBGa….e‡e<¸2ÂY‚kåÄyù²w$#3óT ’µjƒ³H/*uÐ*;Èäà$SòŒ9ÄÏ#¤±¡í¾)d­H~€H-CúŽÃ™hìUwY)\"K9µ¸Jˆÿ®ßìùW H*Ü³LXrœÎÃC³,¦$8µPþÒ>+9Q·ä[÷ÖE~IMMhH\'» î¯qqÚ’¦¾ WÈÓÑjó‘ÚÐ––:Wk¶¦W^$²—ÊH\'Å6­EÿDâ ^ûWp\0½ª·ÍtÝhøÝZ¶R#àUQñ—€H\'‡®vž~ö@s§È\Z~¯uçÜ” qvˆ×ƒ}ñêH%1Î¯æ(ú†o»¦¡3¥úÙã•TyX^Xwï2FX¦BÀH%V¿sæ2ÑkÎ*™©¿o\\…hŽqr@ùVÅº¶ò­¤æE¡šû˜H\'¼½PÇ]õjP´Æ_åc²šh)æÉóÞ†O¶ÊLr€H\'»trgsòqÁÝìz,&\\Zì´×tŽE°«xHH%*Œ7VÐlQ{—-žØ4‚JýQøßü/kBw—)\\3NÇq¤TüöžH&çQ;Ø@,ªX^š/*ÇæQ*`Ù¡?çÔÌJ_\nˆH\'Å.`ÏÊP/›!!†QY»Óf2Dßâ´0ä‘²{€‹y±trH\'»Á³~’®WR/L#d&Ñãs`:×sÇ‹n¥%¦ªBH\'‡­Õ1×Ùáv§p‡-Lkà$+@ç4÷/vNÈÓH%*fnH6Ô¾ïÂ@LÉv¢Ú€}[4p>õO?[±#vaSPH$ôLeGrßUC1€¦ç¾hXØúÔÆy¡£\'^¦qÀH$—3ëì¼O,}:Mqª›ŸÁ¶CÂgE0ŸÆU€H!ÏI™ Ø_l›‡–çŽÝ,¶{ ¹³ñGT\\½^«¢{LA4H!¯kmþV9Á§e\"ºþaÕÅVm+Fñœ°<ðHÓr±ófŒF0jŒç+½áèê\r0LûJ‡²X)óÑ‰ztÎHÇ`íd1\\ÒsN\ná©øÖj_ž‚)³™º\ZâQž H\"d «Jy\\oæp¾j›N«>ñ{æó:£• ^œ Õ bþH\"d³/jÛ|GèÐ®YuKþlæGh?7sLH!ì’kÆ\n ØœŒ$ìÌÿ¯Z™Ê¨árœu~ý&±ýÑ[žlZuë2FH!ÏMaÚ¾ñFÐ–ZÎ=E²æ¾Æ—°&‡ŽIšu•i’€HD_p™ß9À¡µ·Ï¸ý¨®S6vò¿/à=ïòH!ù1¥ÊýË\0•×½¹ØöÞ«\"S¥òÃÁ{³ï¡Ôý)%3’H!ù1ÎÔX|à\"{ê“‰@lo¶ô.ª2Kí‘Pt\Z)\\ÄÑ(H!ÐGJ]KiÁÁˆñf›aþWÜÖ´Ò‰‘\r=©ñ#¨ç¡!zôãñ[ý•€H%ÞkI<¨•ª•âÂ\\bPíêm…&gö¶ºíàH$ôPjÊµ<ÐY¼/†óYâ=U‰k„c¡ñ÷u	<9šÐ','anchuchidiru.opus'),
(54,'Necesito mÃ¡s tiempo','SugÂ urakuna ministiwaÂ ','2022-12-0514493417954114tiempo.jpg',2,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨d\0\0\0\0\0\0\0\0\0\0\0\0/.‡A_(*,(\')##%($$\'\'%!&$.(\"($\'$!#(%($.-+/1/641/6.0.333)()$\'()&&!&*8;555385862-.%)65*($(\'15461.008.#HäÁ6ìÅ€Há…¼˜ûæµøÎÆê(ïýÎÄÈÀH†$7|é0)k|K«˜@\r9°ÉA^ñÅC™VÌêÅü€\n,\ZH‡#ô__¨’ƒzv®ä’{Øqö-_šš°ã:uíû:Ç¦—KÑ\Z¨ÿ^ÃW€H‡L¯¼Rð€GÛ_¯øsË¿\0Ð˜Ó	µ¬\0¨SaXèŽíü«éò_`H‡’k>j\'Hù==$x¬\0Ÿ&7…@.ëqª¸t\Zh2ðS€H)„;Åí8RÕ/¼dl„r‡J»¥(þö-\Z%•?¤‰t¿ÓÑ€H€ÇÚ\'@ççêFÖ™\0(zç´óF½Oü;ËìP>,PUü~ujÍbÅH<¡?i—zA,\0y!K·Xï°9ïé;X×À«š)Ä\ZišH+n=ÂÃÒvÈ\"°ûd¸òº\ZÕ\0<²ë­Ì²Ÿê<Ù=­ÀH+8Ô˜ÜQC%Íî+Û2y“ƒ=ÕôÖKJ±‹ï‹64l%<H)ée(¼’hÍPóSo¤‹m¤6®ÃjÃúCª~£F(kßa†aÈó*¡H+lÂ4[¿jGe´„k•[ÔÓ©FžÇ4yø„D÷¸»ÂâÀÀH+l„û±Ø×Ú€Ÿ«›TØ}îèvñSšÀ¥Ñá$sÙºl÷àH+lÂBÈHû_HW‡Uíå …©c6Æã‰˜ 	m6Ú8p™•ê¡ÍºH+mE*éœ³(ŸÙ¶õsVl³{?¾+|0ÊÉoªe6ÇP˜€H+†mH¤).{×qF{_póWñÉ>‚ÖazlP€÷–é€H+–²Ðž&Uð.C^\rb–ñv}\r¼Öß‰*F7õÎÐH*ñEn7ífSØ>è·Íæåæƒ¨%œFx\'\rýgeÇi²¾xCHÿÊQOí•SY•iÉ?ð†î1+§¡s&&—v¨ß<H+©ãËJ…§Âæ’²<Ñ`SÀeù7a7\'=¨uKB“˜B©—3×ñåñ@H-U“|À}ËO7êš«ÓZFU*Zªœ4.b¢O­\Zrx÷ÅÄ‡ H-:Lžÿ>Æº§	K¡ÿt,Ôz°ñÕh˜5îñˆŸü§Ä H+l“±î¦Á”{Ò4cÂÙA¬÷-=1ê‹âÁŽ4N~ò1ûpH+lÂS]vmÉ¾\ZÛW_ÎÒÔ»¸å‹2ÓB!I«  _w€H+——Kà;eÕkã\\Ü*ü+[çG¡c\rÇ»ü?ÿ÷ÐcÝ©ñº*v H+lÂ42óuUj`À›B\r¢bc0;÷\nNB\rK%—¶ævdH)­òËÓq;J=g€g¯	ÉDQçVBý<r˜\0~\\ÐH\'šý—•ÉU:1yT2fXÈ!|ÛÃ\0¤Eï”ÔÂO0?PH)ƒÓ¹õ~/NHÒIwQ_íÔ‡>ËŽ<ÞˆÅMä¦b\ZñnSžø\'«H)Áß¹UØÍ@*ÜZ‚ÊÞ÷÷š¤¦òÇ:e6Iˆë|äH+ŽVÛtÌ®ñ¿”ý{³—å\\N];:Ð:ínN¸c–3€H+2«>›`°a\ZXÃ£*NžÉ‚e¥¯ŒMkL³Ñµ\rpû© H*C:äqm2\'¾\Z(ècnOaŽ*M-«-ƒŽ¹`]” çÈW>2EÊ&Ý¨H6ÂJ¤Ø\rÙ1›ÕÀÌ—n\"Œ€oò;ç§º\\„„ÐY2)*4[K€H9ß£y-˜ëÕÝ.Íôkî‡Imû9ï¼¤èÛoÁðØ†à[—í£v¸H;‚ë.1™=¬,iÁ1î‘ó-3á÷˜om&9d²m‰äöáh\\u*dNB.àH<u¼öŽg®\\Ó1^Ä8|§í¢ºŸÊ%„\'€7ó©Èéás”©yüÎ>†M\nÇ:HÉ¡^’¼\'¤ÿ>þpHˆŸ0ç1”×HÜ<ÐHOQ¬èa›…ö=<¬H©`²d\n£\0æ±úÝè%ÅÀ’<\\(MÎ€ýˆ¡õDÆmiuP‰±¥0·!F—·DÙxH§è¼Ó¹4z‘WÇ].oïYÏ²’W#ÉŽ¼ŒA!Ð*aGLáE°XõEƒŒ¿Áí+pH§åò\0ÕV\\æm$ämì¢¡É«ï\ZX¢³>!Iè³ž‘óÆCO¾`²”¦|åH§Ê¢,ì+B-÷óýVåÁðÐº„$¼>n´Ú–¸D¯,=b@Y±Q}¨Õ H©JêÖMu`qð7y\r%¨ðO/½Ò§N€»7Ùùô)\"àVÔë®ª!9)g*r\\H§æ:©ï òÁµ™LúŸ|ÝSŽBjº£iÃ°-[hCÀÂ‰EÙÜF&Ä”@H§Lû6ïmÚ^\r£ÃUŠJE¬””0¬©Ì‘†¶ó§K$ÈÅw—Çf×¨IÜÃŽH¤þ¤\'†—x©i©-EŠÖ{¢UŠe•b)ñ\Zc˜9l¸+•\râÜ`É‡z°H¢V³“†$õFÐó£-¬©#E!HŒýkÔù·q†ÇÞž‚N\0òÃ\r²‰oxá¢Ç?]’²	 H Ï£q{Œ+ÖZ\\ÖTˆ€0s‚É÷5®\'	\rpÞÀ#aC!½F\"»Ü&“€Hœü®¦±W™ŠA“¾%™2I)¯Å¸?U«V^Ãeýâþ?ê|Qr@´ÜñÃš H@¢6Þ³š¿2ÎÀÓ¨ŽÞêœJ\rÇ‡<§Nª\'¿ÅB1Ð:ib¨°H‰×.Åe …Û‹Æl™ÒâÀ‰×€eÍ¥,rx–Ëa€Ò?v€HˆZ@Ž•Èw¤SxÛZlUózœ …SÈm3uT¾QÝ·ŒLüE­ ä=H)£à#^Òö^@úGÛ>¶ÅJõOãÇ\n¹{€ÅõA H)\'ßG¦”?œG8å Í\r­;,~¦y‰`[t/3«®Þ˜H‡Ž*É¨ênQqf¦÷#ö¬€µqÉxá«äÍv!ÃfY¡Åk¶ðH\'›§p3\nÎTM&\"iFï2\núÑÇÏ•â—o“®Y™¹™Yy¡½f˜DH\'¼ëë\'>|ÑHÎ†ôpÌWMÀÆ„fÛÏï8)ß_—U«²‡Õ²,H\'‡¸¦oÀÂñj1•ÂïëõÅxÌItQÄ| Z>fX¹/l?,©ðH%*fX¹ˆª×ZïGÂÍÉŽ‹¶B)ê²WöK‹‡H$õH 7€2B86÷vL‘ÛEz\0šë?Üš©ö†ë”hãH%®XÈ9å$‘Š*öî^-õv0¢µìA=öA-²;#íÌNæ4O<H€ëé\")ÎÄ‹ Îñ2¼¬n´óªšt\Z—°iìâ^Ù&>YB\nv¯Ii&çÒõ/Íä\\H›ÌTþ]Ç§9ìÍ­È—Š(å¤¯\\\n“<¿\'PÍÜ†v±*×ø¢d`ÃÌ´eÆP&Àò]SHŸí5¾ƒ_â_ðkäg]oR6ÚçâÌ¾4~ü kÊó18®<OñC=òQq•:º_´0tÀH¡V¶r˜ENßï<ï´<FUÖ!¼ªÍå¦ÌF~kâ.o9Þ±DÅ5’hÁXóìftH¢¼\"®ð@×³áïvfõ±Û€”/\rô½ò´œë£XËM™O£âÆÕmå3[{ž{ê~€H£Üºzo¹+t¥à‚â‡Î©•s=<§·©n%ëûU†¶\"U#Çþ,éptâõ‘ê¯ÒH¤—Ç¡Cõ=žïõ&³aEf’;S,,Óà¢(¡ýGìq ÞØ•ýžL¾vEø¶\'@:b\ZH©³Áã}|$úœ6™2ð¶Û!\rà,>~6‘ÙIm¥TÆ=+¥¹)èZGD9ÓJB1¿6ÒØ••€H­=v“¹þž$›Su|\0>ˆb¬: Çb´vµt«©„B¹Öï$¹}wÙQò_ÙÔÏVÒ H¬âä¢“?¼>q±S;ãFhÒþ¡L¡AÜn&i=‘D\Zü–T	¤3Š…)Ÿ#s¢áÇßÿ‹H¬«¢ªv.|yD,#ç¦‡mÁWÒüRÔäeqC°ñun§kPˆÎú¦ ü†2hQ@H«Oš,JrSA.4ÂŸÐ§B˜\'Vx;–³Õ×ýã<\rgÜ¾Y|	±¦ð€H«Ë+\Z§>E\r˜@pXû’­#(½#æ/çTÙF‰ÂÅèÔƒˆ<SÓ¦4ë˜;€H­6+@Ò•’íPxíeÿ@ƒ\'÷‘Â\r£=eöÚDÀH®µ¿,kdO!lþO™î	«¯º®\0hvç¾\nÐ$Ü°±5\0¬ÊÛ8H¬DÌ?>ædP‡dÝG¸gQ#„r¨~gˆŒ\rà¼–MX\\FÈæ¹ÈéÖwP’<çÓpê°#­=¯@H ÖG+ûk--ªÍ¶©¯%\'ª‚ÏáØˆ¶Þ™DCK\'Ç\'Ð“&÷uÚOfË¥*âA]‘‡¢€HœöxÆ‘\n‘Ð¯VTl7r©äÇî\nv“íê”Jb7&âÝ©Ud9–H‰Œ«£å5#\"e¬ž&sß™‘ó¦ª*É¤Ð‘¨Éµ:¹ÄÓù¶èÌìHˆÆ·ºi¦b@4m¾\nm´ÌÎÌÿÛ¨âl2…e³†5L@BHDã*h×9—n¶¢•ƒÜŒ@1/Ð>ð;•Jvp—³ üC±„HˆÆF^êÐU-¯ÂËé.BûÞÉ7wµÇD¶^IiÏ¤ób}»Æ›€HˆÕ–B²ƒY=µ}#9Cí¶uþ–b[ÝÆ¯¹gf×Mí	Þ¾Ž~¼¤uùâÿ$á	ÖÄH›3êÇB[\\Xþ9Ê¾ÕÝ&¼qŒ£àÐgã(<D¤‘é¹LÒâè•04²ììÛ2Ê\"£þöa;Hœ/i&¢ÍI?\\ê½6E€|ÿ¤Wæ¹·{?[k/£FâÏd­˜µ‡”…/Q?ŸÿØHžÊÄóA)¿FÕ¨\0ûâºÚqAD|tùAŸ¶˜Ð¹…ÃY™ÙÄ`PG—orè\n¥^† HŸñ\nCnÔzDç\nå¸\\ˆ.»ÞBþ·Q—Ø°»È+š ´ÒH—˜M=<NsÆ4–Hž¬õæ”IVþ¥…çfzöƒûû»†-J±I?iHr÷çjäžŒÚµ‰ÂœúÄºHž~j÷¼—†O…ó.’•M²A™ot¦áotÈ·HÚ™îÉ…¹4ó“NºývHo,e¼Uo¼‰eV8õ~\n«à€ÞtDÖ¦µ;½#‡M‹PË+ôÞ8ÙFzOy@HŸ>cÞNœ‘˜Ð=>×4-¸¤ÖG: ´Ž¹*ÑarÙ¢Ä®:Ü’~°¤÷°Mó—FsŠÕ=H©ÕfÕ·œªWÆ%N	,j±ºa”¯]Ÿ	½\ZïŒ Æ‹ÞÅ$JÔ5BÆH­Ú:”&”`3MœŽõtpqwóÎ[qáôÚ¾¯Žã`OggS\0\0èP\0\0\0\0\0\0\0\0\0\0\0\0ý[í…? *&15213274.*-06+2:<*)*+13.,/3/5930-1//310-)\"\"\"#\'&-)# %,-,%*&\"H¬iì«:@&BÛéêÈ@ÈÂ,õEW—¤íˆw„H«hÌœ/Sz=núÓÏ”\nÚ€‘¯ï9!Bq^Cp5h{<2ÀHª¬VF&œÉn^¡½\"pp}ýÕR·±t÷Ü-oúøãr¬ÀþH¥îËûÎšþnE\\–³K“\\3ñý†™nHõ–¨6´,êªÄŠÀ¶ÁãƒíÂ$ŠHŸÝ®—{ª¦D¨íhGk\nnD$búÛÞ_*4‰6BÞÂ»¤‚òBëí³­DàaµüATÑHž·‰z?á5v,¥ÚÄjðºÞ¯=ÕXõyMêw\ro„‹É\0\Z\ZÂ@ü/úüÐvd\Z†HžŸÍ©F×NJGƒBÙ¢Øˆ•‚i\rõíËMò¤f°ÖÇG>/«TþË>y\'`©	\'‚ÀHžŸúwaÏç.¡=î±ü\Zê40Ñ·\'Öþ½÷ÕÁLÌÁO¶ø=ø,S»þ~„’d…[Hž·h	ì.ƒµt-¥‚ŠTtãG¤Ÿe*1¦gnã)—ÊZ´q›<C‡?õ|ÞÇÊÀH¡ÂP¨!œ1árÿ$RÈñ²å\Z2ÆUz´Ëj°XÌ¾¿N±ÞÔÙ–&¡2%§©.j€H£¹ø…X_ÉYÔeÏxŸ©0Š5ô×ìdFõÄk\\eÐfƒÚt]‘öðé­ò\0I?V²H£Øâ/²LÆñjªb0‰ ¨æ\"2È›#<@@&~…­˜ºHZ^G˜$’H¦Ö€H£`òjÌÜx®×„«©%WÞÞª9¶gÀá²çƒ\nXâŠŽè¾ñVÛ¦@H à&ÈJ©x{¾\r¹&?ùË”·8è £Ew1Ô\nm¼ÙÂýu§LmIŸvYìì¸H \r\rÜ!ž°üÄ~÷6Ø‹	ÒµÐ@«xvDÅvÈI|IòŠ€RH4\nPMÌ”H¤6ôø ‡&0²9€!£Í^æµìEÚQÙÆ´f<™S@lP¤°óÃò#óYÛyÿ\rö/ÓÐH¦j±¥;˜YúÑa	ûCK/ùLç©¤>h†¨ÏtÖqà[h¥aÃXÝ*H§ã˜<;‘\n#ÛÀ+òñž\"ìÜ%\Zl¥(îÂÎí–¤«!B@C­xÐþ‘ã€H¨o:òŠ\"Ã²ë\0Ÿ\\¤¾]zRŒ-ÂÎ?xˆy‰®\'óxë†›³Úƒ»<çcÇÕ…ªí‚þ0GX†ù‘ÔH¾ê¸©§¸·£^î¿n–kèÞNšÉ£žKxsë÷÷ÓÎîâ7®ÊšÈ|Î‘>vÈŽ9Æ9Ö=ŸV²2zH‘Dá™vttƒc¸ÒŸâ–wŒX3{=”jw„!+-þÉA:‰j\']€HŽy¶xÉËÑç`³· èÿ;–ùý¼Ì¹&ŠêéHO¾G\nN€?¨´Ë\næH‹Ã?ÉÛÊ	‰**ïé”|!ÝíN8!\'|}2èm‡ñ•B=«ªg[|H2®IzØ“\Zf*2Ó‹]Ý@øT})#é‡ H‚OSø¸svÊCÖ+èfUqØÑ»\"Ýñ+oô™aC¦#7@š¦ FNŠÄFH‚nb:j‰²bAUr‚ÃÂ›n¦ÕÔc¯Ì·»%Ðî-\"´ÛvõÇ¯[7ˆWîì%J!.H¤Å76d£©BËnE¸ üQ¥/sî)9ƒky¿ˆ§^@ÂÙ+Dç\nrÞÃ@H¥	¨X8VžÁ—:¶?W“`CaWn†$@z¨ª~—$Máðiì¯þ9PH¢UÇ/\rcýŸu99>%×±e|u~kw³1\n)åÇµnË3šO®“HMwÀHŸÅÛ8Õ}9ä‚´!ho¾Ü–J8±J•4M\\	GàâC«úú)ÎIÛ±“š@Hž’þœ—ë:…£\0ì(Ø«`=:`à•í?Ó2¨¡UD¯H-<œúü¨¡çù\Z¢Ó¶Ì€H`ƒ\0n6Ã®cLÊ^×÷LÂ…V{/Õ†OH}¦‰à<k¡\0^Ãån‰xHÓÞõ»‚ $-ãB«›þ¢ü;\Z¹0ÍK)£Ú¶JZ%¥Jo‹…r?Œ–U”–FcQìH¡± ;œnK}˜Ò»wL‰u£FÆ›N£ük}¶8c°	Dáž(=:Œl[j$g¾iýžY@H¥K¬ù­³ü+\"Ra‡u½€ÿ)‘°œTm›:;Ä#†¿^	õè3ø…¥¹4€]1ìÚì(H¨)õýRA£4˜)–a´âb¼3&>ï`­Ž”kÔ•Øßð”=\\8è­º\r¤VX^	H«6Vêü\\0Á@GÑ,²c]õBÏ’ã=S7YTV¯’M®¿jûê`u³ Hªªì-°áµ$\0éÈ#¯xÆ÷µ±°G(õ’¢¼ßï®C[Ññ:ÁÍGJ EcH§Ñå2¯iÓŒ©ÙÛ®\np\'YêZ±Y\rW©öÈoähW{½¿Mûh÷Å¦€H§}äÓáùJGô<‰NonôÛþgÄMH7sÀ\0Î–ùÉüômQÌœý¥ó=±EEþˆH¢$>‰ŸÈÚòX%I@yÜ{zDVw³j‰ÝÆ©( òr:€0ðY_èd¡ñ\Z„øNº¢ HŸxè÷âáfxQÉbùé µån¿Þý\"´~«Â}À¨‚VïL<ÔyEä0H½Ä¿êñêålÇo7òWüIþ©(š²Ð0|Ù%½u³Úcì>Õ@ªÜŒŸy*È„¨H›¥=Bé9w¸l·xÊIÏà£¸`ŸQZ_ˆqñyŠVâºœÀB“}ö—Rì³÷·H›*Æ•´Ö°\0¯^+ekbN<GæÏ\0	*¾Îº‰µ½Ùž¼h\r•@H/]ç(ì\":Üý°(A[O—ÒV´þ¶ŠtºŽ¤b7qH.Â‡-“\ZƒXJysž\'jl”]:ã;ÑcTvFûÕÕØH-5&Ín6ùèùS ¬Ûß¯ûd¨Ùù­•œpÃTÏ€H)¤Ç­ëªï“b:˜»èrE|Õ›ù5|A%âbñöùÚM–@H)M°&§Æ‹EñG &™¦¹C_’¯9†lã5qægqŒ%ý6ÞµH\'»\0I_t£–†Îõ¡>¡»ÈQØÆÔ°;§Îði+:ÌáÀ€H\'Å.)˜¿Ù’ü_P®=Ä\0ŠÊ\\`W|ÖÞŒ¯ÿF¸Zf4Îéµq\\úÿ…H\'ÖÙl–bÅl–½nƒ	¶‰¥ÞOhkdiuÅ;­ÿPëÓV„	àHù6²S\";cË‹ŠÂÚ2§B}²ºW”`MNít8³ÑóH)p‘g\0Žj_À¸¢ ¿æm‚Zè;ô/u•ˆÃeoúH\'³#Ì ©ƒÀ/P‘yº`L›ÿõf\n\núõG©˜×´›´Ì@H\'ÿ$0 wIoþ®¸+Y®«»±¯-}¸E¤^½	Z4Tžž—\\*>ÀH,á/ªé|’Âæ:¡…#G¦^?íHüÃL‘ª† \\Ã”ë¸\ZÁôUèòc`H/1—AËˆDdkàÛÞÞ	âp÷\Z8V®T‚c@#êùAŒÁ8\r‡¸€H/šÙÁÆÕ¾	ñN‰ñ­+Øóì¢7CÿnÉˆh\n;_dOê%H1«kzx$W¶k×=VXÃe<XÆÁ†FÅ)€Êyú£…õJØ@H0ŸJ˜ÅK	Ü_¤¨5Ü”Mõ^á›”ÚRmðLQ¿Zq6Hg•5V…DP1Ä/åŸMÓæ„cô½wÄàˆF©\"','sug urakuna ministiwaÂ .opus'),
(55,'Â¿QuÃ© te parece tu trabajo?','Â¿Imatak  rigcha  kamta kamba labor (o kamba  washu)?','2022-12-051440292401061queteparecetrabajo.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0\':Ma%)\'-&)%(\'#\'#$)#\'(-&\'$#$! ).(((\'%&\')%$%$)&)3@59+52.1*!-172.4=/ ,15<34=2*377**33.0-\'#,1/*&#$#,HäÁ6ìÅ€Hßp=<ŠÀ‚ª‡ŽY¶ØpèH€\n>ôÇ0ú!Àxùn`ªöÃí×—X.ƒÍMXûý’€¹ H†ÚEÏŒ\ZTmW²»R/£’8·íZ¯°ô‚¸Þ#)™}Í\\ÉòÿÐH‡(¼$¼¦™2²=_ŠÄž¡…ÒŒõc®W£ÏC<Q¾ŸË`ºvH‡’q´Ê8¸OnFì*Òè	-‚å4¶k ¶„ºãžWöP†þT‰ºïôvH´HÄúë¶?ffå{µ0ŒùÍ\"ùB‚fç³Å§_IÒ·;ö7ƒ=©ðH‡úŒãA@7–‰\'ñR§ƒŠÂq³XÙ(§‰íÜà8Ró½œ@H)ÁN´;-0Æ\'zJQ‘£ý‡d?bá|’míÄÁÍFTH+–ò³úÜÁO%w–Ò½£¥º\n¬/>Š€\0LU\"^=\0ë7¶¦oýTH+Ò&ÛãòìBÔ‰Š&/ð¢—<¤²`îH•${atúYHVž ¸5Å»	ƒ.Ê˜õ†¡ÃÄÏz`ôb-d­n}éXH-~íI7«š~#t\rU¡P¨Ÿž{^]øhpú¿ñ4n…oš+ˆH-²ò}µîóZýnc¡zÇ_\0õ|wÅ¯ä££òHh@Üë@*Þ}§Oý.(§C³HÝ%‚Ã|ïÝï¶—VÖ7H-²ü%kn1ØM¶ÖJÝˆCæJÕ+sÊ•dîÝRH\0Ü£ož´H-²ì–ì©Žž$gksj„\nYô”lCEmuB0:bH-²¼w@åYàÅ\n¾•}(ˆAPgñT.\ZNËšÜ÷ïSwPúhS H-©o\"»ä(g*éåõr^‰Œïè“·6Y_¯È­a¯<•¥ÀH-ºî¥©„wÃ´À¤®æpT.‘U¸…‚©¢µ¢?ñüÀ\'.2e`üt›àH/hr¶ÐRùƒ=óhµ\r>çÅ^£Üwœ¤×!•®‚D<”U4H/hrô…Õ;îRôkàž×LS*ö¶_ýTi¨š§[^²[ScH/hrò6W§0ê\nøðYL/ÃÂ#U!º)˜\"doD˜Ì@H/hssÖ¹‘vö9=HuâZkEÍ±Á­â:ío5·J3ýÏ¶H/hr4v\\zZÖê¾Ø7Ì´>±Ã]ÃnÖe¦r\n>ý9Õoÿè”H/,êiDu÷ó0*N@-Ê÷%±\0Þ£æ¡N|¤/Œ‡ìH-~ì»$i,5Ú¶2¶SsÆzC³±À<ƒóÚžØnH- Ñ7=Ÿðÿ‘¶ï®ã¶z^ 3YÊoñé€>»P«å H+–ÂRr¡¾^Wj¹¿ÇðŸ\Z,\\r•¶ÿÔÝÈ~ÍÈÃ\n?~8±@¥±åhH+–ó|}7ì@#¢Ù%å¸µðÍVñlo£môŽ{âk;µû,¦CÃ±Wiêµ°H+–¸˜MóÎ\\Ì¯£¨‘»’HX7ÃëSÓ8›d„‰9ßQóÜðŠ²H+[jiëlgî(æ7||d{´[a¨â\r¤ç¼*ÌÔà‚‚d\" H)®lV@îeÉfâ¥:Æ7Ñ™B…jƒXFÖ\\eåÚŸ¸ü‚Þ@H)®ô[ôìök¹¥ÃÕYøAˆ!1N˜©zÖìÑ©³ÿ’é8¤H)­ë…ÚUÚAf×¢5žXè– ê\Z®$M‡Oöi\'DÚ\\hÀH)®þý{zHÊ#5~\"±ó[êI“¯µæøÂ®1‚+xº	°H)®2ªnG#(;o%ž“g~ÿÂÈQ/]O†½ùßÇ„„6†ÃYoC H)­JÐ\\Ú…SÅ\0ªG²7‹\\\'.rV$\'aå¤‡Gàh;¹S²žÆ)XH)£»;{‘ÚjDôI,“Oœ}ýd¢gÒ®±ŒÔw<F#x\0 H)¤³Kp•ë2†qÐHÿÇ“‘¬&û3¹\'ûóGqA—±ç$HHøì{ðð>süÕ´q6â³V\'ÐžPô…ÛäðH)­db$…h•1×/ÞUj$|á©ö°q§\"L„à×ÙÊàË`H)®fh€‘«ˆ$B+G_‘E$fž›o¡€1H)\0Ø;ªÕDŸñ`:SÑéŠTŒuãï©äM~^€H\'»ì>ù\Z®ó˜«iPjbo|vÑ9­ûø<5sMG60âp¬H\'Å3 ]î³FÙää=½.]À[üþ“’UJ¸Y¾öô“’óH(\rÁ]\'ájâTÁ¶Õæs²[¬öô+yZ7¿/!;ÿwßlÏ€H€ñþ‚FzkŽu¾#D‹`oO<ñ3Ô¹FG×ÌËašnTòd“q½“MÑ¿‘‰ HªÑÊÑo‚–ÚqâgN\"æƒÁ>LøþÃOYìWè«	Á¦Âþì.ØY»tãA\"ßÆòw‚ê.xWPN€H­<•é#”^úÃû\' …ëË³YM,è¼2‘ÑÚU¸uš»AR©1ÁA?êµ™í%*xH²¬G÷íŠ<eƒ‘ŠÔ=FÖW/ÜûyÊ—«`–\'PŽM’ “òèN!D^_Ûãžý˜²aÈÞ~gTH¶×±c¢E+ºùFÍ/˜¶÷(ýy?UÊjì3Ñ³4ÌfJ’£ZZÚ>Hµ›ÈUÉOÉôzv­3\0wo˜o÷³Q³;;>)¨U®…ß!vâC*³XÜã›3À ü¹FÄH¦/½½¢´\\Dˆ\rCZ˜&å¢O×X‚¢‹•·µ?«GK£ˆ?Î{¯è±0åáü€H¥	p\0ÊŠ¼Ÿå$eÉt\Z`o]P¢5Üé/ÑfD=`€m*Ø­¨ Ó²`H¥£:É„C½•sÞQê™G¾yGq	d#S‰h…Qî÷¾ðù7PªGhý°*zI´U–äH¶öì÷Ö$¡(AQ‹~¥„›F<WŠ¬Ýëê‹1fˆ¾EGEJe,H¸¹n›ÂÆc[ÝËÄOá|bÅ½;Î´Þÿ³¨rH¸†“-¿JcTK-0»<?×¢rÈÅ‰ÕféÑ\\Èlñ†;ó-d´mÞEjô»€H­årý©W®¥é\ZœPn½5î$†\"#fËzþÅ|ÅXOØí¬Y ~%{O{@H£`$¬l¹nèõÁw‹Š·/âyÌ¹Ó°²ß6º\ZµiÝÓjõ—8ã£ 2?0$•zÀ=E Hž?ïaVç|iPµAÜì!†á‰Ø¥\n°í¸z ¦BükÀú<®¹÷jxÍSoõ&H›ŒvÏ†1ºGò‡’W´â”i¸&)t/ê@zk^lç3h(E”¥”¯€H½£¼°\r×1\\~©â·:‹F!­[ÜtRÃ¡RN…¦ÍEû4€tÍéÓócÞpÅ¨À¥øé H±Í¢2ìö8n+§\rÇê³AØ¯ŸK?:$·;Ù*Ê/< *ý×(åiª‚\nØÉ;­ejJç³-P/ÁŸ€H¶ ™\\h²ï[Y^ãPæ& e¢ÖÿÁCÙ«ß¬p—y÷kÑD Ešžå¨„àH¶î³t=‰“%Èº¡¼¶÷ßó9÷û¥>¡6p\"ÎTH¶žÃõßêýÌQ©Óuõ•©ìæ4µõè®ëW5R2È\Zà<l¾¼ds›dHµ×øGÜOé[gS§ãÜ£¶0¨~«r…š.ã9ø74\Z×4ÐyùïY^¢·	î±€H³i,\"²ÖÓmcóƒ÷µ=»ì‘x[òê7`y;2½AnP€qžê§åöNì^\"_è}’§UH¦8iEQ£íe%À‚¥Ê;•\\[EQóJ#OøªGÞ ¤Š÷(\\]\rÛ=´¸š5 Vn^ß°g¤ÉÜH©3xïã\'¡L#DÅõIMÐÎÄø¥,›¡zFçÆ6<n×ÉÈ§’öžŠ^÷ì<ZØH¦Zˆ‚F\nÞ™Rü¢\rè(o\\i(u›MG&º‰#ö,({% sËG–ÙÆ\\Ê˜É¬¼Ä¬ÚHª4x?…}7±¡3#}éÏÛA–ùE}«$>Úää¨Óxy­HŠsÂQU¬€›S¯qMhÌ‘Bÿ}–ÌèDšÿH¯ÏúAm³InÄ»ßñ>	¼Võ®¿SÊsâ›w´\ZO‡¦ˆ€õ0Xð¯¹âr–˜ÄH®’¿°œ3+ ÏIß.~”¸:\'DM“ßƒ¼œcSˆR_É\Z\Z¹×]V H®æ5Kø‹Së®uIA®)ù‰å ˆÂ–u;dz\r¹àsØß‚Æ$à|q$7±¿nIÔlH°ÝÓ4e€•ºãL,Î¸p·	hÊ{J/«±·± rv¥ãxÆ¯ZyBJZqá\0x9yiÒ­H¯—\0à|…$3÷œ•tggÔål7–C ³ë?ùF^{Ç.ã^‰_µ­¸¿òv°«Þï\\4Ö@HŒM÷\"1ˆ®VÎqÏ%Øi))ÕeÕC»‘z|c:b}‚­!€,òH.lÇ¡´w#ç£=úÄ!!KëKšÏï¨YBR{â·ÌM3@H‚á6å>Ë½6gÜ˜©ò®è©P”«×QŸ6)x¦~=Çßö lÌÇBÓ÷˜ÝŸö“ÐH”1Oæå¤¾™´Ì¬ˆí`‡>¿&žÓªÿ4ªuÚ|øï-»Ÿ®¨Aì1’²T’ëËÐÿ€H“å4=¾D^kìÖL¶+†è ÐŽÓ\nZj;dVyÇvð¶Õ4ÚOwÂÌ÷¡3@H¶ÞÚaÚµBï4M­ŽÝ3¥>*š\'S\Z^€\\P<÷!„*9À!²J{ÐÛï×G[@H¶ß£Õsþ’ãßÂZ7»íÝTÂÙfb»³EßåÒ‡óoê×˜îÆ§&Ÿ2PHµ­ÜZåðöÄ³e\rJ÷i‹ò5&ûKes\\XGn–E?yÒ2H³¨ú\n¢5¹·câR\"B<Ïð¼x3–é\"ÜRŽ®ÈH³`U9ìšv`yÂ7ZO‚œó9%ÿ-ËBEºTû-å;á»ÛÁ†Å·/@H§,’Ò‹ü£Å–ŸYSñDò~2	úeW[Tôf¨?à(¿kÆå‰í2Š24HÁÅ€HžsœÜ(I]]%Ö~ã‹>ß¦üYpi{bŠ`Öž“;eo—,¶ñ1&®ÚHœdg³ÜÎ›.×ù¹o]eðêgµô%Jq¤ÓH)ÿd«JÆ¯+c€H/Þª>_Y\'¨­7;Paš-;ÐqŸ™HÀ¸$ø‡|×\'Çº\0îàH,Å‚@”ã\Z0vŒgS¦‰kb ¿5z£`;ãƒ±ÞÐET¤H)n†×÷ú‘0\r¼\Z3+¦\"!qn­¸ãþá¿‰d\0.Û°H\'›¹/‚0A,A‹°Pƒ\roWN_„Gq<p‰ú@çÇ1€H€Í‹C KÈÏPÖÊ²˜0ø~N–­]^æF\'Íâu…ìïdÒ•$ŽðOggS\0\0h²\0\0\0\0\0\0\0\0\0\0\0\0)³;UW7/*#*)43*-/2 \'87\'&290//(142**+7212,281)-7$ 53+.4544/3(-/=/>78/,163-,55,()..9,\Z%433\'+.*<Hƒ{5•öÐÂ€ÒçÀÒjá£Û l¹Ôlû{{Â„&ÿÁ)\'•öt®™´»%:ü1TŠHµÖkÉ%Lî*r€ «#°Êò’_|ÂpÇÿ¨‘ŸTÌ<÷Ü;¯,ø²WAr€Hµ0wËë$lÆÇÍ\Z·ü5fàJÔ’÷“DOhpyœoËr£uÛ¡HHµ3ò¥Ñà%ƒ”v;ªÚM•lÕy‘„ òô\r‰H³©9¾œ3<xb¼\\\"â°<í|/t+õ\0š^ç›‡,¡ç®[€ÿH³n·i!ß@$±BSTuøåt¹àL\r\n|míxUG¼™%@\'ÞhH¬<Ì·fUg?t÷þ…Ýt4`¼õ€ÀÄ¾Ö¹2¯µ‡´4”÷þ†Dö˜âE3E¼H¤àëW 3FBÊ¯üŠHþü}8¦Ú=ü£*Ô;÷‹½ÈúsÐ°d%bW’œ©P@H¢U¾ó&WÿBXº_Ø¨´r-™1væÆ‘NvÖÒÉÔ|Ak9†™0H Ñî$KÚÐr»\\òÓ:=®X™{‡7ÞIýp‰Ô¤€îaµnX^V)Ì‘HœäÑÿ¤½[Ë |™R7êmªÑamåpáÖ‰~Žé€±òNßã\Z‘2°€Hš´½ï€øýËç¹\"—9žæøönÓŠLÍ[\ZVUUÃ¿†;]?9!ç&¡0ãIU$H*ä‚è,+|F§óëøšÑ¢ÌóÍ\00,§ˆÎÕÀ=óÀH|££\0Û~BF5„.62Æ ßøS£7rý˜^áBjFrbÈp™ÐH™eLÒ^þtl¶–ïyËë#×èÕ2æ€Ç‡”ÈoÎ\'ûÎNÀ\ZšòcÜâjåg‰ö+´e%HeàH¯MSÁ¼U‡7˜)˜¯ÔD=Ü‰n|t·bO\\˜·níl<£:˜ßyÎÛ¤L†¾ùÏKB@HµÍÚÆ;˜¬}9N|«—ðn!Gð0DÂ–›å¿ AºûUÑhÜHµgÒÏÛ¢^HÝÓ¬4&”¥\Z¼>H‘Gœ¾)ÄÄØîm¼¹ ×ôH³`zùÌl®#8ò9l†+\\\'Ý±r@˜\0xÅÒCÀ\04¬*Wž°€\Z¹›¾¤xçû|H¨Ö)]ÅtÒ4þEmh;ƒ;C‚õÍ¯>ëŒdJÄ¡ó¡ÆÐ-Ü“ »#ùêÄpèëdÑAG/c Hž>ãœgáðé7£Ró™Xûxæ>å|‡“3Z–nœÉ	Ž$ÈvœÂç6ž\nËŒàH›{–«a¾Àô|>¨p[gekŒdòL\0§Oè÷þbgŸŽYÇ¦t‘ÎHX˜ªÀHˆ¼¿ÔS:¹™Ëd—Å{L\\\0“ÿSy_´ÖP¡Ç1™oedÜ#X?ƒÃªÂ@y#HH+)5|	«ØBÿ¶ÿd.R±µÚkoùda×3\nÞO+0VˆH‚.vX”`!iy7õ2#q&Q†ƒl$FC\'&é§5±º [­—dr:CV¦¢î™«ôH‚ØƒáŒ”‘3¡b‰ìÉ¬%Ý®©y™ó¯$p Ó£‚ËDFÖìÉÌFêÛ%HŽ\\H°h\nÕAÀû&ÌèÉÚ¾­~ÈÀ2ûöU-D\'¯v	½®ä°§ÉIœå¾gÀDèðH°<ß–{\\\0\0š¼(¢H87ôÓMYéÍ¸¢ËáxÊÅÅ…ð¯\"š€H°N\rçÄ¬F(nÉ+ìž}Èêë	Œ:E/õ¡X¦\"ð«Ng&ÝÒþØ¼DH®HÜnÊÎ?Ì\0–ÖMO3$t–m¶7S;u|+œæ\"r6\n|H¥ä•FŽÿiˆÂ‘Á 5Ü_¯õØ#YY;QLšóôQKÝ…(•Aâ¦êò¹r×=¾ï	G¶ÇåH£g\0G)êÓ „T¯ªÏÙ¸ï$@?œ´•OIF8fºIzâJFlÞÆYÑKa Ò	ÀH¡9@\ZSz˜z—¡]ÒÁöVïm`	˜Izjä  ¢0ªHCâøìmk\ZÉ˜HŸ•‹ÙÞªË ÚxBˆB°<Kñ§`£\\D…ÆjuÃËPÑùÁ$RîêÒÇa‘¬¢¶Ú@Hž’ùl³S4CŽG8¯ÓÊ€ðêï¡¬Ñ=wïJÁ±§òðËP™AVG%i¼\\HœÀoÔb\rÌE9R]MLŽ=\0<Ê\rnº¬ää.¨”Õ¼••¥êC÷_ ýµ™ñÀH ‰z!®ÊðüJÿ:hÀKn<y+m$þ’úª-¾>Tö ëCSäI5[rJNŸ¹\'Ž®Qy ã,H­‡d8ü¼vÀ.™M¡~\n(õ ¶$5\\ïrU]çŠò2N½­=Éñ&‚Ž¦Oí¤¼YPH²Õ´è–lÀ;Ÿ¦Ù$rF—®b½!Š‹m÷c/‡©å`CgH±æt ~xÐEº)‡}Ýaâb]bòU¯·¯ŽKü€¦¼£ÀC0oQÅ¡£ÆÎÐ€H¯×ë/êÂßh	‹è–4lÓ0êD=TC¯Ý–y÷€n6z7h°‡€s(Š7-Åáû0H«CÊ ×Èàû»ïB¯ØÃ†¿!Ìè£†×zvJïeuM¢Õ_ H«\ZMkr§«¼‘%—/$§úóÃ­–É!û›½Hª3Ðƒ¹áâ´7äâ¥îÓ9K‡*Ÿ†;€yåÛ?Tc“}Q¯¥oÒðzW}Á—ö?)]êy@H®È~(dR#@³ai°¤A0Kæ˜¯ùðò\r¶J\"£ÇÉuCRY¸<¢² ÕÌ£nhH°ø5kA)çÄW›b³B×ƒDØ{é±ÆNL¶Jkû.&P±@H®>–5ÆxÉÍ$3®?Ì<ÙKU2·Y”jC1Ž¥¼Aw)g°i]#;k\ZÖ‚H¥î¯û˜Ã²U„D§Äô+Å!qsËÐ‚*¹îo®qõ“É^qµ†ÔØ[köŽùâEìÒ»šHž¼¢»2\Z=š\"âÜ(	T+àŠ¯OÒÝÖ£Dî†)%&Š\nß„Å9„dl§ê\r¼+ƒ–dH0ÆÐ)>Äë°¤’\Zp*°à ˜åÅœÎ¹ÀãÇ{Ž3œz	›Íâý¡LŸZùj/YÐHœÁy%îøR“‰Ucï\rç+Di5âÉÔOA>¶Ü\Zƒ˜‰\n‚~Þvãß=‰ðãéØ¾³Œ°H¡ªáÔŒY/\\9¶6ËËõ9l¡	[yS³>‰¥ÞÄi0U¹DÁÈÃ+ãìÞÈÐWØH¢óT)€ô-2Òsô´†\n…ÒHþêXo™ÅD\\}¿ü;ÓœäRé­Ñ7sïõ¨ðH¥)À­¾Õz9\r6?K¼‹reÝÖvÈí(á6Á]ànS`z—þ4‰H¥€7…àõ°,\nGôdoB¶òiãXÀ¬™æÆeƒß}ö–0s=Ë(/X*8H¦È Í§ñ˜¤‘™eK%/¯£¹cT\'2Šë¸ÂKDŸcrè4®SZ/+£Ä\0[H©˜®NÜS¦ÂÏÍïu7/4ü½Û_¹KÈ7=~)á–ðƒyãÆE•–;›ú²~ýVò¤ÍH¨ÖÍû(ºØË^–ŸK¥s^~\0€]·÷e\rM›PÄh•ÿ”2¾J^&DžÙ9F´È`H¢õÃáKÏ0­ó£Ynr³Hhî‚\\Šæz^\r“ËiíOGÿ Z†ñ[ÓÛ½ü3­[Ô)iÕP;I ¹·cH§0Ò=…à8\'€\r^=Ñ{++jñÍõ	` Â÷r¸”NÕ¡6¤”ÞžOÀ9*gÑi;lqH£gIò­r~RF•§!€·°†ob\"aáÆoôIlÆ!Ù!Æ·€ÝÖÛ‚ù|°;äµ_„‡nSŒRH‹Ü­Ò$!‚ìf|éo§Iöáy\"s& x¼ô—_/Â-vU’iûƒÙÍ@0H‹;IÅ/íoY•½ËÃ’F7n½9úZlúI­)¿*\Z5Á&r‡ÑÇ6àHŠo¬A1Xµ2–·¢n¦`ž¬ ¸¿2¾?3e¦Ô6½‘³Š¡zÿ„ôGFZm>	¹€HŸ$Â…ÓWM0qŸ=I|p»Ž1\Z½ÎÉ:5?¼î\r¸ÏƒË¦´¿,·£MÔ½\n8hö|8H¢’IN‹Ç‘Pd¦{CûñQ`¦IÇQ8‘õà5¿æé­6ufv¶­P¸mæönU‘ØH£ÎµøØ<9íÙ%/¯1\'9gîÐ­‹ðÿ‡úðÆA´5ù_@H£ÆP¨€}Ó]ªXK<zÃ áêm6û ¹‡)ò+Ðo\ZÔ!Ð¨O_3¡H£”F³>ù¯þÖj\'!B‡=u=šO25‚¡\\·ØhlK¬T~D¸3§·Ç5Ï$Fh÷Þc~Ò HŸ†‹&|ž¨ FAT+ÍÁàº\r/ð ¸GÎZïà,`aš‡ðâ«ßÝé=,‰ÿ Ì¸ˆ~ H½³z8ÉX&^Ö$tšKÂVƒ À«/ìF08d+PwøP\0¾FäTÞAmèH.µZjŸ¸¨B®öÃ^D¢‘ôÞüÇqw±”E†zé-_V÷ÀH)œÊ_gi]Ð/Ðä]´ùñÎÏ·ÀÔSçvð’s—ò¦Ÿí½CòAÊ´#H™£#XÀÝ—¥÷	‹†¼dYÀÆ	ÖÃUj/ÑGiGÿž?‡.Æ+}›€H¾ Î˜f0„“™LCÙÔ-mŠûðÏÜâÀ³S×ÚÍì(¬	)_Cå×ÀH­§jm+~Cœbû‘£à+\\Xœƒ¤ÙM…ã(2\Zä{~«¸Õ2+¿Ã—GÛžå•ÿ¯ÚG¿‰H H²ùFŠ=¦yThEñßèi=½J)çJgÏzíoW\"ýÁàBË÷+ë¡T5ÐH±Áí¤îÝS.PÒ“HÏÓŽð<òOz‰2H®Rä®F!ÄB\r¢ðÿw=°ÆL±xEýñÌœ-ð{Ë„ðH¨à6¬B^Ü-°=™¦‡¶Nv\n€cËe(õûs,2`ƒ Ëq.\\”·lL€^‚§Å‘Â:H¢R6ì´ÕóqÃ\\!†qL™Û–Dí#(¼£™åê§mR¬$\nÁ7áM‘Œ•çI±7ÒàH¡	Ø~&Ÿz£eçpçä+Ó=½~,©ìg>gÓ} F¨_V>…Lž¹TåqZ€HŸ•’`P¶fö\'Åñ³áMÄEÑò…â~T¥ŠÞó<(o?FÕÐHžMa_,g‡àXm¨|ÝÕ‘wwüÿ¥¼?û	ŠFöô¹`Hœý÷[æ|÷¦ï]—\Z1wi´PüÇ«|K+¡¢µ9€†âL\'mw_²°7ÈeÖ\\PH›÷#âuÛcžæîéäÿpð’àñOíðÚœ]¨‹¿QŒ4ÿ—´p°H¡Åú…s÷GŽ<lE->þÔT‰æX¾tbn>8”sþìðS•>b¼pÅ‡Ì]Ù\"1\"b-\Zñ—Í¾ý\0OggS\0\0(j\0\0\0\0\0\0\0\0\0\0\0\0‰;ªÏ1.)23965756/%-32%%120-511+3/)%\"!\"!\"%# $#\"*#\'\"&&#$H¬ÿeå)âo˜Ü+ÈŠ+÷ŠDâ\\®j»&ÉiƒU„—©õPÇ(/p¿0r(H¬äœtèìKøÞD#|Ó_¦r¸KSeSgÙŽ“±yù >ªµ–nœÈHªð˜˜xPRÍŠbõ¡‰UŒ{œ\Z2ìÛãÕg+ýdy@Æ3ÁãÅ[ XÝýÇbÏß H¥âŠÓê“ûÝ<m;2i_z8ð[Ò«ÃÎ~hñIŒ\n|Ö.õV¯«­,ëÔŽU‚	´Ã³H ×cðµw\r¨!¡…‡ª(˜v•½9FÁÛê\nô&¦ÒÙF¾äÜç‰ÄåIC´|–\0,+5È/ÿHoœ¿.7ðÆ0#m)ne‚Í>\"uI™aAºþ7M¬@¤/-±pú8l»Ô!ð¿ˆ€Hœ/9)&­DÑìe™1ú@O~–Øõ&ìù…bò‘w‰‡ èÊøcÎ-»5Jû»!i`«w‹UHÙ£ZðuHâú¡Í2å›Ö®L#¦7Rl‹×OV¥ur3H²Õðô,ràŸ)önJø€H¤AtèqÂë°æ\"…ME–Ø&ãÝÀÊ“¹=Ù+‚{ÄÎ\'š´„¿“¹2jÀ<%¬9H\ngMH¨~å^.«\"èî8?>‚¡´žËiägôB+	×>CAVµŸKÞ\Zù‹ÜÀ~ªt`â®¢§°ðH®èr¯6%|[mÝeØÏZ7e†Ó›Âï(BÅà¡hƒ((u\'®ýwëiõY>OÀH°ãã´«9z(¹dJTöš}±DäŒâfž’ iäq­lfÀH²PH2üwÛ:”(=6<\n[Ž 2Ü?ð¬ò’ÝFÇ>è3¸Ò‡ËŒpH±­£.)5¸]p †É¢|áé¿aë5ÛÏ8jF~¡:Ë7NQu¢_ÕùH–êE€H¤™hWÔúPXMqÉÕ4ä …éF,Q2rÃÉQ¾X±cc:™ËFü2IŽ`¨“ªÀH{ß–E¢€þNçV0ÐXÌG\r–yÜ8NEàÜ·JÊâSyÌ}PH3JpršŒ\'ØvÓei´êê{ÇkIv(ÿ§>FÑçÅõ?úõ„PH‚\0Â= \r¤J¯œY;Õtö¥ß nBõ\rß•#Iû–H|¦iÄ‚M¥—‡„JÔxH„Pœ®ú Ù¬FÐ	ÌylÙ#”Í`è•…9²¼ºgKá‚ú+eå=®e]@H“ŠU\'‡k¡ÛËŠ4w\rik\\´$ÛZ°`¯0\0÷fN7œLí9a¢ù³1ÙfH‘9øf¬Uùlb`õ¹”Á×WÜ”¼„.\'˜}–2\"lÓ…:@ÁmˆsèñH¦xÎŽ¿?Å³	džw˜½©û9§Û,‹÷éhÌŸâ/—×0Ë·øó[Q`tõ3›ý6H¦+òìAF«M,øj\0Ž†mýl¥Üü•Îÿ¹Ö\0n`Fý´&~¸<¿wú¦ˆH£m}¡:ªÖÿ‡6_ÉþR’PÁ›Rˆ¹æ(oÔ¨Sšú¬ÊxæÂNàH¢M£%SjŸh’ˆiXöÁirSþÅ­Èþ£fµÃOyw\'M(nL Hž>LXžƒWYUšô[n48b£ÍÏ]š‡8a:	n`ò\"Ÿ¡Ml4ãü`Æ€H›ŒvxÑ5 SU»³ËæÚò]ütV\\¾Üƒ‘5Z^³)íÎaÜ³?*%*H-Aæê@òe-J‡³f)ÿb8›ÈÜVë½jé÷*»(¼ƒý¢ °H)njçä¸É³{k$uNYµûŠzEqGYMÏÜòÁN9â>@H\'d–[s¿9&N¥·9È˜ÛÖÂ•/‚¾ãý•àÜµ,àH$Ñ\r-ÀdàZ£Â÷œ¾d |$veoP›‰^€H\"a1à³¹}dÇæGûoÔ|;J[½žÏÍì.nàHÁnîä‚ûo(€±yw\"c–±ƒõzDà1€/ÇÅ3…PHÓðÈ#¥¾ö\0$kWò[Ø•ùU	£3&û‡„û”€Hà-GÝ†%vT8ï2;žSf%Å‰J\0B40ÏHÔ,Fs{UQïYÚÎ1w>&\0á_#j/9ÓiìÎß_Ž>ÀHà^á3‰èÙÅîG¯é)`t³á	î¸L¸±|£äÇ†\"1[*H¾êÜ@„—€Ç*\\->þéýé/>õ£>FØHA@HÓë{ÄKõJI	÷]{{ŽðUYwì~pÁtÃ|‡PaãH„Ý£z4Ðú¸´‘®2åÔmvn…®[¿¡ßáÛƒŠH¬Õh£<¯>Éãd£ËÊ	ËÛ×HƒLwiYvµÙÍpHåoÏ”G\Z÷ ÓÃ(·+m=ä`¹P»%	ùU»ø§èIøj×éHªLýñEBâ—¬5ÌM~S5ÜÓ÷ÓÀÄO ÞŠ@HÊÑhsú_Û,Bˆ2Çà2Ë=+NtQ_fæÞ(âÎ¼ØÂ½HªLe#3é’NËÒ[;bô»ÝÁ>C™uÙ©\ZPÓˆÞˆH«o”5î_àZ9D”ÁXæ|­)R|7¤”dëÝqœï‹j\nHàeUl ¨eÃW\n„¸4?‹ÑÃÉ]™wQsºÚN.7£ˆ„€Hà œ3»2©ñ¥\"k|‡9ã,C$³Aqa§äW¯Ü HO\'Ð{ñÐòÔ(ðDj&ü÷ÛEêÝnsœ÷£ÐmÏ<','Imatak rigcha kamta kamba labor.opus'),
(56,'Â¿necesitas ayuda con eso?','Â¿Ministingi kapi aidai saking chiua?','2022-12-051440485378342necesitoayuda.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è\0\0\0\0\0\0\0\0\0\0\0\0­:Œj\')(%&()&$#&)(!!%%& $\"!&&$\'(%%\'\'&#&&\"%%)(\'\'##\"\"&\"%*((#!#$ ((&#&\")\"&&\"\" &$&51*02<\"..+(5-%4?41/-$351,HäÁ6ìÅ€HÝù‰`*Ô¸$«Æ…©ƒF@ãj6€H\nÖµˆ”h§Ên`m$\0‘Ô)%2‹k¥ZP¹ÜªH†\\\rÝÒçc_àU1©„YrVëÛ˜>?åXÑ;Ã,®€ˆ¾pH†‘¦Mýh°ÔV²>zæ—Š¶Ëœë^ØÔN·{ú×õ7 š™.B¨]ÀH†­E×cBñ™þŒf9-÷\'´>‘Òsëìßù”)Iõ¤[í²„H&—3³ÿ—4g†&ÕÅºù	À*^,{àã‚¢¦³ÙHånJÓF‚J˜¯\0Æ+P†ÓÞ+\\`pk>Àƒ<\0­vï³T~8H†û.JìÉÁbvUÿ¯ArÊY¦Ã­xPBïï\ræWO/ö£Ç‹_·°HªMÏ£N·dM’Y±KB+YhKÀ.ÇØú“>¹ôo\\Íz‚HLÔ5 \"\\µàEgññ9¤&_DíÞ9¯û€} wÑ1å.=e,H\"d à×·™ÉB¤fN¬ïÌãzÍß4g§¿>!¿ù‡pŸ}ðÓH\"Õ¯î.…·!Bšdm>$EEÁ†61Ýb/rÔ!ÚSH\"Ö	\rd\'µ«û>&žEšR8¨¹…—ášqév;Åqð¬±ª\nˆH\")RæwDN\ns$c©(Ç8}6¸’—¥Ë®ñßf…f©:L„¯ªH&¬Ôò;X$WÃnà“•¼¢4yM”@ *1ª(:\rt¾Þ*èžyH(üA“ÉÓq§ùÇ0AþS.ßZLD°l‡š€H%(ÖYb›ÿ¯¨Fœ\rÅƒÖ\0~ñ×ï•é}0–hÐ H$CÈÒÀ‚œ¯Wä5)GJán\0í°-«ä }S3a\nyú°¡Hwo¾í…—X_5’h¥ÑEm›xwºÎ7«íÌê5ýbomŠÔ„H&ò<~Ð°l™f¢†µÔcÑ½úØ$µÌ[óS6\'º­g6ÕSH\'»ì\0ñSeW:où(ÌµÛqœ³ÄrÞuë’€H\'ºù=°ô,4ÆigEZäî±AVþ”Òbf=Ö™(¢€ï‡àH\'ºøÕÿu¦bý²8MÜ<”ê¼«vB[‹Q”Ý\"ñH\'a+L+­çJÝ{JôüF\' /H½õ2ÿ{èïË†€H%*e¨Y/·hv\'Ñ0Ã¸N}ÿOÏE×ôWdR;Ë^2SŠPÀH%Œ¿BR\'šgEÙöÿ±0é˜“.cåZ¦nÊ¸’œˆE2™£ð€H\'ºùš—P\"sÏT‡°(Ò)â¶§cÒõ¬œ«‰¦¤Ð€H\'Ä‰Î.\Z’–cg¢`ÁÃEÍ9D€:}¿Sá/Yƒ•”ŒH\'®dýµÇJëðÔÊâ˜¥xÅTÕ5›ÊÁ†ôÊÂUYî¤øoÎH\'ùð¤=Ç„´ZZÿ×ÑZVêÓ²Efb&a‘i%ÕŒœ^\\`H\'›¾Ï¶í•‡ÈÄ~Ëœ÷ï¸o M<ïñƒ)Pß»…úá/oG`H\'œ}úÁZ­üÖòkó°[5äC×\'C`ëñ,”àÝº©#i™Ï¾H\'œ÷U3>°‹Õk¢¯Ó“ÿ:8¼Õšù”ûC¨ïÑ†aFvÀH(H>ä7ßgµÍA…KOÛWC…ƒAç¾°\nG„\"XìB/ð,¸H)„B‚%œ~Ž¨G¼Ã2)tö=Ü±Ôb÷jSŒå»`H)„ûwC@ìº^ÓFç3\nÛTQBñì>Xê\Z‡Ü}¾¡ÀH)K]ó½/öÐ¯Iíªê•©\\iž ›«\rIFŽ²àRH~¸ç6H\'œñ¨clKÑÞç¼712¢Þrµ2vÏi\"£\Zþ’ÂäH\'»#&hì-<Ø\\¼á{µH–†Þ&eh\0ì7>Tó¦¶˜úDy~H\'®dûmò•Ç=Sµ+\\Æï Uø\n1\"Î8òs«cBI€H\'‡½™V~>‹‹*eï§öê%Š—ÀleSV‡°¾ŸH% 6)Ôï;v{„M?ÄÍ­·©C¹.„Zl³ÐÐ)bÈviœ`H-^5Ó˜“üÏC--[z%B¥ûÊˆN°{;‰V\r˜dÖàÚ¡^¼\\Œ€Hy¼9å´7àémq_¿ÿ¤5£‰\Z&‚O9iµö/„ž¿Ó>wÿÛ€H-ºï\nº™ù¤ÉP.™Ëzš›\0Ž>&ÁÉâØO¿Eñd€Ö2”HŸØÍÅ*›šsäìpÄ\"Ÿ¦^T¥ˆv™:3õðqBŽ/F€H/h\Z¥çsÕ6xO#½Cõ»gµoEA¬¦$‘Æ P8H/,ÇYe(BîmÿuªI¥ß—°[	5¢D¨µN;@H*Ý5á)GCéã¬°-ÓX‘yÃçšµéØ°¸ i€H\'fˆÍíà*C,õ‰~³#”íÏI€3˜éª[b&H%*e¨9š,œ³X7ãuceèW„¿~ç Dz£/üulºÌdH%*e›Ö½NÞMëscßámNŠ[h¦Õð³Ö#7¹ˆH%*fÁF¨¯òˆ¨iVÉW_ÈÚ\Z¸}LJ¶ÔÓF˜Ûq¨ÔßŒH%8•»„.çÂÆÜËÒ³™ÚU˜ˆ	ªaA€lzÍyPëÓù½ä=¸¼H%˜ñÒhÿ´½\rØbSÎOdí€6ðrÕó‚*üÛÓñ¾h¦êhu™²øì H\'»ìX¯ÔêöX÷ùÔDç4\Z)ìR”CxÅ¦2±œ·RœÀH\'Ä¯Œhæ*Üi†\rµò#£Þ[¤Íª%õ½xA´H$õÆvµÐb¦[ ¿äˆU^ Ù2^ 1«Xþ§H%*d(A,^ÔI0=W-Úw¬c†‹ˆ’–+zàH%*fðÍ_fÿI.:*:XÝ>÷@ËÇ†™ñëe\r@HwBˆ¸@³§k¸Ö¤_z\'g~Õ‚^ÛsSH$#ôœÇA0ã\'j›¯‡g¨‰àÃ,íîD×RÁ\0\rAµH!Ï€Q—ŽÌÖ\"ÿ…;1ó\Z¹°1PIû¾A#¡âå›=38«j•ôÀhH!öÞhÀæ‚›Á‘7$í`«ÑºTh?s™t\\ŒèK–˜Ð,”ÖPH\"ìVV zÓ±Ùw§Êñ?Å%*ŽÕ¸NV?MäÜÿ]?ÑÐz»%t@H$ôKšº®zLR§[”›F5ê\Z…jZùcâo	H!Ï†8—([vit¶M¯@“&ašÊQ{×Ù“:M£fH\":²‘¨yƒf:õ‰Ñ£¤SÐÀbÉéõ•wFjø‰/æoGÆž¨LŽH†UtH¨ˆ5ŽÁ$€AÙÿ4½zà‚Ödk2Ÿ	<€H\"eSÑ½3Ù_3¬>êÍd»5-=’Ý<o1:Ë¥4ˆƒòPjÔj²ÄX™H!ï\nNL„°BÀDØÌÏ!%g¼u\"9à¾Yà€˜ºæ…`H!ÏH÷sšÁww…#8ùÊM2ü	ltpBDõ±C¼”P‰àïVdd€H!öÄôÇžB¡X!ßjU.›è¾ž2&VÀ{§	}ÁÑ§Ï¦+Ê~æ•ÁH\"1ö\"JíÑCCBå @¼9ŒŸsWq“Î8AÎÂH%*ac²i¼/íS&òíxH¯}j­aäQ÷è6\r ÷˜´bøH$%ÄöúLÞg³`kªöyçEŒº8±÷dQ®ÒH!ÏMJç¼ÅÇÓ¸©˜„ºMäþüÆOºÎDÝU1vk›Sàûê(ØH\"k‘b˜SäÅIÑçÈv”Gw¨ÞŠ–ý‚†³´™r¹ûcó€H%àåK	¢:H\rhš¤pDcþÙ\\­ü5­VP€H€Ž¦øE–œîáÒ`…«Áˆ/èÛ^+Ë” /9Ò¥ÃLíªËí°Óæly6þÃ#@Hœ//é(H1Í¶”V/Í²~ \n™KAN!\\P Ê\n Y°\Z—}·h@-×³ñ½\"€HÓ¹<i#Â€@k.y\ZX|¼O¯•STÔ½ë@¬øÞ¼Ìa†~,C:#H aj8<²¿qgjI÷Îþ-è-ø4›ÕËÞ¤	zb¯*Fg¿AÅÄJ<ðH¡­ŽfBë4qvÈ§è:$šîÆv\'*§Fá’™À4†„VcÌ9 üÒ]“Ø4³\"Hª<‘â(ä^KÞwÌÒ\Zj6·ˆ|ÂxŸÙR—‹¿>,ÞõAte:ýpÜnöQ9¼T•˜u¿0H±ôœ¤ô`@Ô³ub*â¯PÅò`4é5ŠÜñoóLH°BKúïg{y°Ñ4r?ü$C…,§j4nŽ‰çu3–êÐ7©ùïxt0H°A°|¶¢P‰¬˜½¿a–n[ÌS!´h×ðH®5x±ü‰„˜Áó¯Ž ¼ÿ$oI`¢BW(¢†âE”ó@¶iC¹¢H¤þ€£MÐ’+-fæ¶Èžk¬@ØR¨;9l&i<m(n|3W‚=á¶ZG4¡þH¢x•qÌGŠ^Åa\nÇÒ´_ë£	™5^ÙÃõeë¼ë|n,r{÷÷H¥ŠŸq‹õè+ŒZ6ç:ýžEHGi«	©éB%îî’¶Ô7sÊ°ìÞ sYîôØá\n¨ÚªH«`­|{>Va¥IüÐ¸¯¯2rõÛ×;^.ßj57KF^5M-Hœl²½%7H¬Ü0SÝÜ•I¿ªì¾ H\növ\0Æyyþ[øWE3.Ü;\"&Ã€H¬Ü”\'³6jxÍÞ¯)Œ\0\ZÁïü™U±-Ìg}_ QtÎ€›½ÌžÉ•Ï\r\Z\'Í×@H¯IÐHÏªrØ,¥ëÿîØ5jË*3ˆd]³KíUm`š,˜Óñða.LÒ\0Vt&GN‹°R÷þ8Ü<hH„`²r\rÂ*dÖäÃ{œíÕ¥+¸ý$Œ¿™÷Õ›5ýÍOæüó\0âä+€h“AYSw\'€H’ŒÇË¹F&æÜÛWå¬?p–1 “hŸCÝá«ªæØj™Á(áe½ÀåØIÕoHOß¦H‘ÉQ¬•ökã„ê*[ÓC9\0ÞÒ>¥_®S\"à»¤l¯¨„lcÈõ™ÿ“ÞHä\n;Z§Ó¿tuKR£€ûíFê:”ëdûþ¾gýxì~­Ð1¢*¸©6±0HŠ­ÀÆH3 ÿWä~ëá9s£ø­¡Aª×¢böÂ›ÄC HY!Œ^ß¡e#\0ñ8†…?6ÚTÛ²€\nÓp«¿eççŸ††:úCvéS½¹»¢z§ÕN`HŽM°ÊFVj)$ÞÄæØ:øM|\n$Dæ vÕÕD¦øá2£\'UûÖ-µ*@eÜÕ HªÌÍ>¥èŸ\Z§×ë\0–£Ü†¨Äá;Ær;Øn¾Ðc¶þ©iàÏjŸ±ËÍíŒH«)›YKäd¦D‡ñ¢^%!]áe@ça0KóìÃC™1üÀï€šM¸ä\' OggS\0\0è×\0\0\0\0\0\0\0\0\0\0\0\0T†þ…X(/8@2.)820+81:)) )1<6/2.\'(!.8&*-3.31.$!%\"*3.136220218=<2\',6<*-/5./30-%3/02*# -.7-0/+.0)/H«Å‡È)+a•Ó\Z”$¨+«·&Õª°\0ÊªæÊb–ÿ»&mQ^EŒ@H¬›tN\rfDñl¼Ôþ7×º2Ê\"„·£HúáZãér~Ë1}ØÖÀª;FC0H§]DŸï…Ö_ÐáY½6ã/|kÚ·ÝÀB¡\\šÆúÕU<|u.>ïÊQwßí|XyÆ>41|û’H©ÕÔa\rÅ3šå,#Kàs+$Ž5§ý¦tm³ÚÚO0FVãžGxF«Y}¢öt†/€ó\nEàÞ33/Š€H¬þ+êk¢Uq©x8« ó €=—ì{»ïø¼LWå©Jì³ê2ÜÖ€È\r±{t¼ƒtn©\"H¬£5®$™â[9aéûLëq¤úªë±ÌXp)3Üä“jn¢‘„ 0—x°UH©H°´ÙÖ`<7WýÆ2ªÞ¶L	ö$-­v¾ª†€¶þR|+ÇH¥ö#\Z,æcFB®ùãy»b+\0óŒ“5¡5Â‚j }¥ÜäëÈ2–Ø£ì³`J÷Ïµîuúã~HŸv^‘Ò.þ‘pÓ{„AÌô©°gÕi³„%Üß=›Ù÷t­Ú‹l·ŸiÑñàE=äH›ñ\\\nØ¶`6§C\0*¶9¿Íµ²Žyf˜\r«R•@ÔT9DsksœH¡?,£€Hšœ#áú`ñRU©ŽŽ´µy¼××),À*Çm7Ê½bÈ\Zª\nƒ0H™cWj-h–‚®‡ÀŒJU§WLZ°ÅÖ)þ)w=±_è:¸×ÒÌdU¡W–ÒI%ñ$T¯*ÀHƒR^‡T®¾3^6Mª”$¥;ƒ§³âŒÑ|t¦Ù_\rµ‡F³ÇáSÓJ\nÄHª4Å/>…Iï9Ô\Z’ÚJÕqý³*/×Òv®X6Pl^Þy,¹¯•8o£†Z¼>¬c¿/àq	’`H°y/÷G+×UŽý1¹y–1ŽPSÊ°B±(÷œÝÓ7y‚Ù¬ÐYQ&õH²‰=\0Õ”£› H}sÇÃ ÄF¶q7VõÌ)œ}™áÊ7-èMH²-”³˜5¿Ð2w**¹ýMøÜwë}èô–\raH³ÉÊ\rc©éaÀI©,\0ÂHÃŽ§ëïc\0{¥[¬B»MÞ‰­ÉßH´PxÊ‘Åæ$Êò)##=÷ë‘êó’Ä–!7‰M98»Ä×*X=A•3ÚgY!°¦H³‰½·Rã¯ú›k\Zy\0{…L´\\«±Y­ð\"5†h#%¡³éZ}]~ž{rø$)\"ëÊMË©\\Hw€H¬¯+ár¦`_öì2ÝPó²4ƒÐ…¥%,×0ÕT]>çuGjsÌçUçt.\0Õý†X‚€H¾¹ùbË\'¸/6‚eT$œkFúìw¾	9ºç§Æ?÷­ðølÏ°]óxfA1]H¾l·:=c°^8fÑw‚e7LBŠØ^KÑ¡+¨‘·ýœÍ2û˜úß\\Ü/Â€H‚TÙYRµ%ŽAâ±õ€hb°ÃnþÍ”S¯PðµB±McVß¡¸«¤Ž‚y¸€®H6÷Øy9]æl%=œÇÇ©8ôHßgE½m—šwÒÂ~;BÚ4äœ©HVç’s:CÁÙÁA39;W:ðû<Övá\'\"~õ‘<`Hh3fO‚¼ÃoH*#O.#c/š\'ÊEß¢˜Áðû8= H6¾ÍÑ\"9~úÚ‡i\'dµœ(ÚPElÿ¬Ã¸²õ „Aü…pëu1\\ÀH¦á:O¡,­êíø#9èÀÃ¬±^^íÈlÙ\\õã¬õV Ab¬Z]dçá¹›L8µ`Í¨¨ÊH¬üõf’$Mk4£&s³³)‡0Hî‘ò×Ù¹\0sâ[Ô”¾º9H¬ÝBè¶£í½;¹)<0—&ây!¥gô!Ù˜ 6Š3ðºp·Ö‰qHJSÕH¬­aìd§GŒJ kN(\'¨W:<ó[³–‚Ï²ð#b;ø˜(\0˜è]€Hª“0Ï¸\Z`ØLs\'p\\A9T bôÐývÐd	ÂWažw0À\"^à~¶€H¤á2Üž2Œd¤iõ§g<˜øÙ+ðèÐeßÂ‘‚’VÖ¥Î?ÀH£!\ZŠz$ Æ­¦Wæ µ6ö¢…’ä^÷°|‡C¨Òog£Jô>ÇQÞPú‰só$€H ÖübÀq1è›qù‚ï¶&n{~†Ô<ŸNÆŠ±qÊ=GCÜn&Cwˆ3þ·âHÒWÃÜØF|<‘ÖÚ*ö„á+£ÀÌ\0ë‰¾Ø5€S•ÔÖ+ä`DÉ‡,ë„ÐH4i°ÇÄ»ÿÒ7±˜š\\»#Ý½#ÀlO:ˆSd6HšH,›iYw¯—¨-šs[²¿3¬e±$ÁnåJRŠr|NÀH(ôs+ Ô®Ù>Mê#.º¡N˜:·—AB¿‰ÙØ²x• Ho~z³dp\rÒ.ûå¹\'óŽ\nÏ6(N*Ü<bÚðH)ÞÍ€Xü‰%iNrÏ»†:ZY^ÜÙe„òzÉFùD·Ñ$«H€ÐùM£Øƒ«„ßxI*¾¥¦Ó¹‚IìMý¢]Ã‰Q{grcæ°àÖ}âiC«#H€H‚\0¼©ç¿ó\rK](gø$ÏúØ–³\\ØDzéjgëód\n»=`>’\'˜ðqíÊ€H©ÖÃnð(g¶ù½¯jß–!ÆîáÝvð{ƒÀCe³ÎåÆ¤Jhðî¿þ?A|jH¯*HÊAœ*­µqONš·FFp¶›÷RÍúÌÊ\\³ýì€`Ÿ.©x¤`{	‘R‚M\Z‘€H°ìíõÄòÀQXlÞ\"Pl–†_%7Éº«–&ðï»[+VÍM¤m“GDy$‘„ÿ²ÌHµï–\Z{àJï4ÞvF\0w‘½íé¶›$ž´Ú¤öüÆM?&ÈWü.¯ŒH¶ð®_£HÐ\0ÙÃñØXIàïKJ¸*2A\rý‡‡ôòî”—lm…\"êúÈ‘`FuèrHµ±™çÓ°Ýÿ±áJHk=VK5ªjy%î‘:ã¾6k¥„âð/}”OóÜWÍ`á`H³/‹9 l]6¡xî(‡û—¯¾Î¦™¿±Ž:õO	ñƒ…jÎ]û\\1×&ï‘ÁøúxXH¯®W@FŒÇ±L:a4|©Zê4‹ˆ/\ZJŠˆ€v°çÖ>Ïxôõ÷lŸ	†°H§Qs!«t&B×œ¢”¡¿ê‰x¥w¬…8ùè<Ýê§uÛ|üë$Áèõ‰…èyÎK´‚@H§öµô}˜hæéÞu‚=gW3ªÞ2\\¦‹®¤e÷´÷)dpÈqVf*#\'dF®íEo\ZuR€H¯;Ç*À™vƒnM¾±3¬¢§ˆ¡¸¢ñ‰\0\ZöÎ­ÃëŒK<_ŸÓP±÷Î\rD–†ƒð—˜÷­éh8×ˆÀH¶ ÝïCÑñk98jö 8:1`·–%rç‰Ã&¨Á´V`¡bó95L‹ƒö0U’@H¶Ñv{è2ðY*â0Ÿ!ï+t\"wª¾ 32·<ˆRØCRˆ]­xIHµò qÜ;dhvðW´.{Ûo•a´YÓ)þ`\\€é)†ßÑ#Èõr]žihH´êpjãË³Ð1º•2 t*ñ		Ï[MÚH+ÔSYÅõþpvèÛžÊ˜cƒÇ)2€bCûä\'H¿m©Ø‡Êà)t1;®ä‹6Œýœv«cl¸¨F4t˜±ÜMØó³cÆüÅ3Êág2˜œý·ÖH”Œ5NË„Ì±h€	”çþ¹×±JxTô­ä5EÙ3—Ê=GñH“˜º£*°PÁYÖT› ™	ø8Ügc@V#U‰rïCÿeÌõ4ƒÍ H’`QÏ–P°jE*éVi]Âw£‘\r¯a:ÿHë»°²\Zöîªp?Î\'îÊ“¬çÚ”H­}v\n¯x—\0?ÇVkzÊ5å–|†7éÇ5£%µü×š¤‘T\nMÁ§\r¸ˆªo±\0*5£€H°–øÖ (zÆ×õ?i™ŒØ¡YQ£t×ñžyc4ËõCœé\Zb¦ŠvÿÄH±äoT£EZ¼˜523ÎL[0Óób…+6Þ†\\p†î9Ú°QF±+O¦ÔÖÚH¯úÐM\'ºdUßmÖÈUœÄV6#Wèµþsü›r<o\0xï¢<»‹9ŸKCÐÔNH¤—LSßˆò}\\ÑFS÷š¢Zr‹U«ß”ª‚7Èñ!:Ç>ØéÓWvœe¦¤Hœølµ{ÔÜÁXß“ŒaARÀ„ÂŒÉÈÑÚö×È›x–8\0ÙMórH‰Ú*tRÙ\'d\\hãMø°¹PHá7”#ÛÇÓTf€ÄV<kºHšËÞßEÆ7¹ìŒ8IÃ!Ôï£[°shJ§vyx2œd¬ .çˆ††\rüRE—Ñ\\€HƒL†Ã~ƒ>Ë…’¾{y\\KÑ%KÜl«à4™¢a…7Ï£ªgµtog+Žåº4¨xHƒzÔ#>S¥Q\'¾eMdDKF\0£êG®Á5<¶êÝ\0vKCÛjI®°]yXH­úÏ_xÿRÄÔÚ\nžøx‹Gv>ƒmÈß	G[W\' S¡×±íŠ‡åñÎÏ­9%tH®^\\½ ó‡!g\Z`$|ò÷Íí&Éê®déQ \0ˆýïXÚ€H®ƒFnÍ	™±i–˜M»–Œ	¬†nLÎŸ»T·c\0mH¬Æ<µSAÔ•‚.d–àô,°Ë`a·µp~ò}ß\'½Ö€Hªí%Þø„÷û‚ø(ñk8táþò:D´^xs)úyBÍ¼9Y!Ó×ÈÐH¦&­äA·#£¡ßbâck9]Ç	(9­$NÏ8ýíßuÂ¶²Ð-#‚B=>9JU H£pcáË$ÔC¬¨ó”nÎBYšØç¶?J‘ˆ¹üDÚD¢¸V(\'³ø¤Òù’)=ôš5Ékv ÀH¢|„ç6~ÍÖî(ûR¬qS8ïþO›öL6È¢³÷¿zz¤\"­¾ÕäLHŸÀË(`?yuè’Ð®8\'+Vi gÕÅ–bGÜã™½ØE±ŸFîr{É%>HH4FduÿvåÆRÔ;í££!ôawÐ]4Õ¥)2•}Û%Y\'êµk|ji²Hœo³ŠÑ?Ö²l³>?<¥”sÞ…`³´¹äOZ+äK¶0/î8=\'í-ôHœFásÏB)S>}Ì¨Ì¾š6ëHåT,g^(¢ÌÄ¸º«A,\ZbFè^Æ€Á©àH‚U[}Äñl³¾TÙj ´~Y{hÑTM¶òÝ/ËâØqQ†ÎÞ,êa_tp:tT0Hþ>|-Ü7óëª=e{A“ôì0î\"08>Yè9x,.\ZäÅxeü€H¥!µÔ>*ˆ«\ZÁkŠ³˜eÒ§ñ\0$c!ß!ž±ñO¼¼\\|2kA¯f°1«OggS\0\0¨\0\0\0\0\0\0\0\0\0\0\0\0:¸¾1068/9*\',04288:556--+,+&$#$!!\"$#)!(%&++()!$(&\"HƒkŸîjJó/Ä\r–ëíÚ­\Züôuùª{Þ%îòiõÆ“pgN¸³g\"Á\"H“Ê]òÂœò/( ´Ã Ažÿ#\0\\š¦qDaOW0ïò•à«ÊöC¦Š«´‘käœ`àH”A©ZØóå‚<€Ö¢¸/a²„dÌý<‹$OMtG«±)otãåÚðoS×_ H”Á¯“ûL•ú3”ƒŽæLv*èÕ[`ßYz;¡S\'QEqKŒl3	êm(OH³2™«©eî=à—S]Ê±!Ä¶Ï|8\ZQ\n”›\\‹úEŽõ—TZPY…ÂóDþn70$ê}§\Z€H² ´ºmnÇ…þÆHo!0	ö6–Èy‰Lî¢¥Ê,BZ.”ˆ=°0H±ôÕ@ÈO|ÝþT¸•ÙæUUF<žÓà˜Îˆ½ª–Þ—Q,…r/SKH²ð©ú[\\¥]yz[BÅ ]ë‰ÄkA5éú‰b„ò&¼*èBeJp^’åÀH±¸%£‚ÑáytùeçÉíŸ{Ç!ü»XNzåeRŽë¬—WË“Î¬WúUf€Hªíõ4ÓäžWW!1x·µ1íéêX–z“ö?*¤©{‚z”>5-_¤¶>„»™Óî¢´H¤—Ì”õ\\ý–ØR‚—8%.¨¾¤²™B.ZV/JmpÆŠ@ýR¹Ýå@HžŸÉÖ(ÍœZmÃ7GÂÜ§§8SÀ‡[ Ú,‰ª6’ËŽGj=bÞô…-¾WNû¹ƒÃ]±À€HžåF AÛ!)+Yóø;¯]¦ùQlïqM•Û•Þ÷¯¯Ç]|æuIgØo:\":™Èí.?9(H uÜ‚Ä!Ê!á–“.àÂŠ¨‡ÚâQüYÞýä[øÀê]6q†\rÜé9Lâ8^d+ØBœ5ÀH¤C:äÙÂÃ„]¦ñ$ldÏFè!\nÚ¶ l÷EÕÝg“Æ&¤ŠxÑÚ!ûë–.<êúW@CöŒH¦/)²ßõf›ÑH®kGóDe.¯7#yÕ|\rØªämÙ>Ð¿ps,T©¿1\0š™£aÿH¥…˜ØCpñ`óxFŠV&˜¶–é5£_uW$Y‘°¤Ø_G h±-›ÖiÒ,¨Nÿæpò&#¤H¥òu	Ïý#Lúì‰ÑÚ&ÓÄ\0ðä$mÿZú!ª«Ù8‘¯É(°\0F„H£•SP,­øðJËQª¶²T+f¶g×yÏ¨lì³Z\'jÖ÷íúÑ ÉôÒ‚Ç5	\\H¡Þ§yôÃ£»uÊA´çŸï{ŽJîR.@‘~nÄæï@ø+>}FãˆHœi§6¾ä×\"Î4³³R²PþoŠ>þ®ÛTn6£îf^\Z±™£{KC„u¶H›‚´FÔøÃN6Cg „œþ9ºus÷—”åGCï‰WŠ¯®7¡›ö@H½¥K«„„¾Â]O[,H}~S™ÿôöËP„p–p´=Ìž†eõ H+ŒgMó<•/òl¡áV‘!ò–ô\"+‚ TµÇúòÓÉ³H0(» 4nfYð­Íz–æ;ygäûÂ°¯PG0H)håx8x“Ê5âXÒB§Žé\"@0_°¹‰Ad`äWàH%9´f‰î™¸\ra“÷NÉ·ÏVÙÚrß±…êðH%9žÛ]ÚÍ½òî`e¿¿ó¾€÷j\Z™£“H%(á†ërÐÉ°.ÛìOÙÒG*É¯Äñþ\'†ç3Mª¸H%:ßi×›Î½GÕ‰óIM\"o8j½Ú©e!²|¦Ð¶E‡ÈH$ÑTËƒ{ƒEûô&£³²ÿ¹›˜Ñˆ?Ý§¨I@\n[`H\"e¥ïZ‰ÝeÞ!òjY¯ùÅ<!ºn(6Ò“æx‡ŠH!¯“Ôd&CF;…²WòŒš]™KDžä×üs¢³¼¢€ƒHªLm}T4*EzãËá£æ¤ŸwAÜ¶2Ïßó”–ÐÄHªI=ÝBYZ$@ÙAÉ\\ÀÜ·PæóŒt:Ö÷\Zñ©A?öÉîª:ÀHÞÖ¤&\nìß™ˆ°ÏÀ].-w¢Ù‘‚F°Âï@Hàe¸±ÀÇ¨Ò—¤²d%MXœ_îò\'^NÒg–µè31¬¢Á€Hïyž‚¬Á„¡Ç\0LñWx{9LÖÇòB¡WWS7÷ùHªM .L \n§^Iâ¯¯mÄ–ƒÈ`ñ,Ëyô°æT—nØ ÈHªM Q€Ey˜_šöòîA¯¥¶ì»™H¤(çHá\ZÙ\0¤6ó½)ãàHàŒqfëw)£W-dÌ\ZÎœa™¨º63ù\Zwy[J®­¡¤J2@HàŒ:ôå—W~u—9‹¨ŸCÕê${Î[ì8å$â!ÊÊ·‹ó”É‚H \\ïk+¥BÓ¾òÛÀáŒ43ž¨•?KÅÇ\n	¦ã^°;§Ý?ùH\"f¹Ý.¨óoÐTvanÕÈœà>	ŒÜÉ¤°Ö	@H\"l)\0&R¢p§«_íóƒ$Wðk|Hœ)¾Åç‘@ H\"VK\n¶Pì]¶Í¦§ËQî;‰‡©HýÎeE‡q¬!-“qôH\"·+ÄD>ÁÃœ¸œÚtX\rrß´’âÆàv”í(ÆY«&XH\"fÚÂ‹‡gúÍÜ/u›å‡==\ZLhU1ESH\"‘§m¥ÍcŽm•rgB–W…B`ø^®¦™©}}‡','Ministingi kapi aidai saking chiua.opus'),
(57,'Te contactare pronto','Man unaipiÂ willasakim','2022-12-05144115311183contactar.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0¬\rb”a%$#&\'!\"#(+!!$%#%&)##$  ! &%!%! \'\"&73-23/3-2/.:+ +\'(-7&&(035094\'#&37,(+/2:6.697;745/1)087/.,/HäÁ6ìÅ€HÚ‹…lþn¿ÁI®3wèH\nÎ\'\'³ïŸHgTÙŒ1zûª™Æ=géOÉs\nÜ`H†Ce’6ž$ˆ¬\r¯z­†g]f(×3ã0J6»÷Ú¨@m•Œ€H†ƒS¨s‰Š	ÐQ½z=£! …kÕGj¬O~`gQô¶ H`H+,ÊI*bXØrÖÇÈ—~JV…ÿ¤­§7á@Hü´•ŒopÑØñ~ÃºÏÁdH›ø’©ã„´:Þƒë(Kü¹àH†Ö“53rXzdsõ\'í)(ú*âXÍavf–¥%ÁÏÀiÞk´?ðHÑÕkY=ÜïæfÌ©†Ò¾—ìÝ¹Æã{Å”/¥PâØHÊÄ#RìH–\n\'ŒðõÇ\0D_G¯“ù½%Är«3\\HÊw¤©—PUýd# gïc£ªs¦é·»´D#ÎX\\^€HªLl\"ï› ®wÐmD>`<P¢q¡#eÄñ8&oí„õ×H\rH\"1¿>WüS¿ô\nãžhÐªR¾Y£xeëh°}\"ñmä?¶èÔ	c@HçVàZÓÓx‚¬þ«\\#i¬‡ZÄª[ñôõ°Äí9A±JH$õqÖr¾îF´¹Ë|Õ±—âîmt43L»¯û©ÐH%J±fª‘KcÁý÷Ûžch£œÚ‹@`}=àà¦–ûHH%Ää®7°“Ú\\äO˜Ë>R^PB¥üº–®u>.jú°wH\'‰æ!ˆÙfYÉs-¢h¦ò,Êâ»Çf3¡×EâËm¯XHqZæLFéQÇ²òjŒ¯ieòè„È7Új»óBÔ@H%°!Ûþ–ª³?K~r)b0KrÐÓŒ«ýö\\3¢4b¾­róaÂÀH)¤æ‹Wg¨?¼îÑËP¼oëŠVY¤EŒÄÏåW~Üïkx¯¬æŒH)h½R¾+|(eëç1ƒÂ`é•fI<Ë4ÔSq1l¤™ÀH\'®eâ~¡AI4Ø+û¿„ß\nû¸#CG|•^öÑ~#äH\'!Ç°HÅK…¥‹_uÂ\\Oæh^ášéÛ€dëµŸÆmKt>HwBŒKÿ{ßÅ…%:l2‘Û¯L¼›{¼LÑþ5XH%7ˆ–ø?ÃHýZ·!ÅVHãlïz­vã\\/whìH%Þi´yÍøo\"PÔ::Q4EœSÒêo§ÍåÂï¸ H$ôL°H\0ÿ;ŒqV;¡Öïó©3w¥s{æÒ’< \\(cH$w˜Ò¶¬çÉM±ï¤ÖXÊý¯¿.Û?ÛëÓH!ï\\ªNè{s:P‡Õr\Z´& JÚñ¢}H²ÛÁ¸ùU»üHR;Ç€„¹-±#Jä)Žìrçc8Û3)rÏÈŒ†`Ñª¾H\"ôñ=Oxv²xNî‰hÛ®\'†‡£ÑKu¹’ Ä¢\'Öü€H%¢¨[2e«¯­€RA‡OÚ¤£ràçúœ{Än«Ù*å$áÓÒðH%*eNb©9îÌ„%°Ñ£éŽ$SX+Á­º×xH$ Î.o\"ÊP…JOçFTÔCßn\'Åz,Ç™æE»`H!ÏLPëj¯„¸¡Ž^ïÁ¸Ä»Oåpy*›ƒüÀH\"1¿ <CÏÏÈ?>¿âsü¿\ZäPŸ.R€É¹|éãÖ´SEH!öÅÜÈGbZ}—&å}=e›¿Y÷Þ4úe¥Å¦6H\"1¿r_™ƒãQQ‹‡¢˜–övŠþg$ÃN—Ši§ÎUjX (H™!ª=y‹a:)Óo·éJœñbóð×sjÇ¶Œ#5ž«fL^Š4¾e&x •®Kîú3(°H›¶ìSdœÍ€r&×(ù¦¯I\"ù+´ò¯p •Nù$¼9»l.h s8ôÑþŽò—%>i@Hœ›\r®¬œ¤Y—=-B|ÌÎžÓËÐ½x&é%OHeW§•çô[NJ$Ì,H lÌÜ\ZL»¦E¹]Ç»æºÄ6û†±|‚sî£¸]…Í\'ymÂâñoÓ8dBóÓ¾dHª!á…æÝšÐÉ–Þ[Ý!1ÿ•O-k©O!Þ¢Ll²õ`OC{ÀQœ‘$£Áêêë^ŠŒžH¯3õye¼}Ú¡íçqzZ*µþ†\n=îE/·0©Ü#3ùÔeåèï¶Ë€n_ÜH²Ÿ¼èüÃ\nú;¢<¡ût%ŒYõTÙÍt=¾jUÂ¯ä‡(\Z4œ#Ù­ÀnØ‡H?èHµØØ€]¤!*ºh%ÊDª–SåJ¤€ÆN…F°õ¦WþÏ-§ºõÀH³¶Î~íZT6zò\"»`^VHsÀ¢Š¹e­…°¤Ë³Ñøÿñ»{¥_Ç%9ÎH¨ø/Ÿ«k+f~kRÅ˜ªe¨6ºP¾ëÔ‘êMo©ÖuAûGš{ÿÓ½ÂH¦-ƒCJÔç	’­¤÷eÒôžæ¼+J0.Ap´Zs‡¥”z¥ošâÓQ=§óH¥6µ ƒ%õÌ:j¶ñ¡Ö³!ÎûLr¤>ªi®Lý³®˜!I~vèÃ÷Ò›4LÕÃ8kf\rÅÀH§ÒÛä—S†}¡LÁôþ,ãQl¥õÂi¡¨šx†ŠÚ™}†+ëÐÀH¦iát¬Ôk[_Q$ýDÀOµ¾QÝŠb,-öÒèËNNè¸H¦R²Ñ˜³À¦ÿyr)#6gÇ2ÀRÀOJÇb!…¦Ç²}øØà5€H¥ä?›ïÇ]GhÁpÄûÿ@xIþ!-¸OÁÍBKKà7!âH£Ùò[È|¿ÐÞ„òë[ÈÄ‰.Aw$%0<¾I†kÃ`½šÔª¢ûH¤S0‹äe“ö´°@¶4sªŽÐÉ­†œ•¿—–Ä\0Ìô¾ø^ÕõPH«çÚáSz6Êd{RÆ“hÚ‡Ûüêr–¤\'â|‹](œúä\n6súJ\r_2í.?³YŒ%®ðHµŸX_NÍÒ6ÄæäÎ£WRÖ®[PBí¢aÄÊÓ\r˜ILHµ_¸´Gµeñ÷h¾,„ŒÂ`°\'T¿Nv¢Õþsa6+.‘†vÚºv H¶öQ^?)…+µÜWØcÙ©Æ„vžµjûúU¨T\n®&’ÏDVO€H·ðöoõut-ë¯tížÛåu»\\ní¨ Zl§vºCLA’,Š ‡´G)y—GðöH¹‚šïÛWÚ84ç€u‡?ÞÕ‰ý»S‰½áªöÌ¼ð3þqDNå²ÌV^µ…žÊ#H¸VàLŸ[KI	Ž¥ù‰ ‰âdïóIìcém?¨&ûÛ¹\r¦Ø^Ðªã6ä=ð3¹˜•c0ƒ,H±T¡\0á¾íù8çÙµ=ëæJŸ’•\0Ÿ¡dgiÄöÜGþÃ\'qÄNp/0¹îlˆ¶(H¤¨škMÝ½fÍûðj .,ÜÞn§²?\"š¡èòôš\0Ù{”ž¡[ÕY%ãr»Âm¹9ß@H ÎÿôD±áG!-HšXXÎIŸàzÛúA×6âNÅ¤Ê½”ì³õÌ	<xI¡÷0V€HhÃRê´Šš†HŒ\Z}ÿ…Çß¿¡\'ÍïìKÎÿ®UOîÜ`H2d7ÿÑgaNÌúÑøâð°×ù#? ãñÒ›”H,Äø©Ôi5ènß„ŠsB©÷XN`ú8«ü‚?áú¸Ó™3°H‚Xf™‘^lœÿnè˜(ÙÿK4c€\0X]^[R9¾üëk!*Òý-/‰z|¾H¨‰¿æTÒ¬n=OÆùü|é©¨WÔR¿eÉ¶\rÑ²Ý:´:°AˆÓ”ä^_2™¸‚ UÒ\\¤H°µ˜ø©ýš#ÃðŠ—ÿ-e¯áÆâòOq¼}þ9±(ü*ähdT³lÍ€H®»²\nï%†Ãµií¼Q\rpwAsÏâ„¬ªÒÞŠËøÃX#}Sê<H®V®˜8ý‰²¯©.eÿc*†<‚6Q|°édŽŒCàVw¦`ÄÐÐ0H¨öT*–7ÛvQ­íÄôªI«ûöé ŽÄ0¿°/GØü!nÍ[²z•\nàØ:¯¼è@H¤š¸áñ]évúòÌ‹“‘ÞP…À®z~í˜6˜TØÃx%¯w@¿T\rþÃâDPm¤W‚GHŸ‰W\n Nþëaz¦6ñÈÝf´!,(n:ž—ù¬éüôMÄ\0&µM1À‘”4a¦Õ|¹\Z×à:&øHœëÒ­\rü;U^„ú`Xˆ«„š îØH×ÿ¢Džôš‡X•€¯H„ ™Ã:nˆ‘~$¡t9Žú€HœÉ­T`Lš#ZZSèI\nT([Œ­ƒäñCj:>‡À‹›‡‚ŠžHœD Hã­Øfb\"QõäÇ{	°;PfóëéÔ#sëE¨Tª¥lÜU¼_÷-ôf¬žêê=Õ=H¡¿f¼Í½%½úÐ\Z£º‹	Ôí¥÷~7ÛeñN,“JxÚ×ípáÍzní’„Ÿ=s›ý«?àpH¨\"¦ûN7#K4pe›)rÆÚïÓEíïËY)z†ÉÅ¦è+y_—[é¸CE»P!H®TÜ4e-O^\Z‡ØÒù,plX°ê85,ÌY3òŽ¾ÁnCò\rÀãi}Þ£EE¯hÝœŸ:nc€H®Y]À¡ÂQ•™+‰ÂÍE²/%l‹ß•“lyÔ)yôp—7àŒÐËþvg}]V_NÁ…j``H¬Ü‘ç}u`)ùÞü<Ïb6&A¸Îi„r|\"iÝÙñSµ¸{±¤×ß\Z óÊ1ÉàH¯;6WUD÷âÖ9Kï»¥ ãž%T€Ó8ïÑ5ðGèYIõ¤ßÐˆKOÚ/d38}H¶	\r`B¦ô¿••tf©ÕîÖYÙÍÁ¯Wm‘«Þü<éI¤`Z€çhŒ?ÀêlHµô¬Kþ„*ÎµÛxÙK\n*vCŠ°4`|à=ã£´ÙnÚ‚ëù|M-µ²ÀHµï¡WdÆªhäÂ¿ã?\ZŸ¯!-¸\n½¤Î%µ\"v[=‰Ýç[ù·òÀHµúÕ1õC‚ÅD|-\ZšÆÕrþ.›o^LÞ‡5±£Vã¾ZŒ«¥…%Ñ`p€Hµ®žCFM.‡IÝ^1ømòÆ®‰í¾ªs\"ËµGÙÆ1¯&|lú=ñ#Ï©Ä†r´€«U^D·@H¿o[\0~C…€°O¨b\"5*{¶h´»á“†êPÄõÓ”\n¢vNf—SàÂH4\nS33Ê{*3ð€H“Äwp+D¥ c¬Ü Õ+6’TÝ©äaƒnzà\"Àe° \Z»M>Ÿ~¥åñ2`H“ûw¦¥$ÈVE~¸çÛfJ+ê<ÒâwÃX¿A÷Ñ\0\n:íÇB[Ìy8æjžÖF´H„moÀÕ²¢n×šÈZYÁ(ü~#©\r…“ÝûÄón …‘«ËÊøH²bØÄán‡„•°Ï]¬q–È\Zæñ©\'†¥Ë5PµÑ“úåV_ÜÑcüz\"žXÐOggS\0\0èP\0\0\0\0\0\0\0\0\0\0\0\00Û=#1,)#$/1/=,-0/510+*0--%#$%\"\'(,%/)%++&\')\'#&&(.*&*&\'#!%\'*\'%*\"#H±ú›!Â4‹™t»…Y\\ZbGßîÐ%„žì þË„-¿ H±­y~ðyä£3ÈÕˆûÛ¤T8µ)!•&WvçåÙ7=ºÒ.§ß\"¢&ðÓAÞÀHŽqƒûÁ‚ÆpÀjU‰¿#ŸÒD$Í]ï=U^h“+·ê<\\@ +]d\08H7Óï„‹á  Î}û¾`{V©ßužw\'CpºlãöEÏô†l>á„H2À7D¸ LšIz\Z¼q~\0íú9aSZlQ/Ìƒõço\"?àH.û$ñÙÊ(¯\"\"*I<Äæ’þØ]c4}ùÎmé™¿Ò’€H€ªKï©]9Oa¦á56\nA“U\n3¼7€OÎÜ%•$¤¹I“¸ŽKSŒ×¯ÉïâHƒLiú±oE¨–šX¹‚ry…Û{‹ô°ýzÎ°ßŽCà²Åi„š3ƒ»4r0\n@HƒÂºäv­í¯cýžÎPØ°¿òšÂf”9ù^Yý÷œW$äÃ$ŸéÅí:%}H©ÕQì¼€£Ý>Qa‰<pFNÑPße´„‚ÂÈWñ¿òË-ó™•:ÌWìí2J›Vœ M¨ñU“}pH­ñWøœ)Ú¯)Ñ`rZ€EK^§Õ~C¢¸e~Þ,û^R¬#\ZþzÞæàH®“‡›‚’PI¶$|ï¬‚¯Ê§q7ž£]~F¥8%`Zàœ&Øv‡ÃH®«¡„”Í£:]z‚¤œˆ®–ûÓF¢?x ðN(ñE9‚EÂ°¦«ÍËÂFðH®h\n!½ò d«\nâÑ_‡$n”}µõˆ2,„ »;b´ª:TðlåR²Hª“,Åp¯=„Üx`BÆ¸Q\0ÓK|Ì²y\"ÇYþ··ÕÈjT³å¤=]mŸÚ!PkJéaH£žúˆxe`\0ÝºÁØŸæ=6G“V$[Ä4­+,Tâ…hTÊÇÓ¬tæÒ4Üõ°[ˆH¡!š¢¿%¶î—ù¸åBª”ð1ÍÕÞë±Îšßyá$‰áÐ>ìzÂ†¼kó4HžN†¶Kª”œpTF¯·,…š]]CÑüwÑuÙJ7¼hóö 4_ömR+HœøbSWbÄ]\'iÌÉ(.ÚÈV·åÔ?nGfÞ¾·’µäD&£¨ ²38Hœ3Ý˜RÖ±¶Åhoa‘ENuÝJ\\8äZÐùÊá3ÀµÄù«©\r´ä1‡µGd|7ˆH›~å|f+N½¥?Ezæcá‡Md~IDØm_1ÓÆÂ¥ÖÜõZñåëmÌÿ^H›¥WGë×OÐÁQ8k£åßl%oÖé`}ÿ°5\0Ó’¨­Å¡ñÃ>Â´™ÀH˜Õ „i›°O\nO=,~Iê`i\ngî\"§$¦°6ÒB9Ž@Hgd­ÎÄR\0DtÞB‰‘:üÜå)c ‡«÷PvÌ™$H-u7Yt\Z9]„álll™‡Á’Škž¬/VA«Ù¤e!oˆH,ÜJßjX¼}7]ä¹š…¿â›¥[\0ø‹y¢5°ÚjB€H+ŒA09œ(K°ã-rþ{0^|¤	ü!fü\"Þì—\'8VH)­ÿ_Œiµ`·ÅÂ–·á¾&)òVØ’¸æÖÆÛH0ÿN?VäDH)­ì~`Y¬”Œ¨??!2`ŒªiáÞšéÃTÅj‹6Ò5`þ$H)à\0™°Í7î¤ò]Õ¾b½h°*vçXxá\'@ÇI7h˜°êwóÇ|\"8H0M6ºËº:n\\;†ò\'ç»¶É~ÐXNé{¦âh~<\0Ñ*ÓðH)ªm{_ø´Äüu;tÀ‚æxhep˜!I|_^œ¿8¿Ä»Ú}”[(ö¡RH+ŒA0¼e“nk´Kß“´á{«\n9$X«d\\:¤ƒ!åÍþp!_H+–DEFªÜ;-ÄÛxEóalÓs«­e¦åÙ\0%°‚u?xH+	·PÙû„34–‡À—@£Ç;/µ*¼Œ_]¸ˆÔWÉçÅbmõÊ“ÀH,á›¾µ– Ÿ‚\\êFÖaÓ0QcäÜv-åOWçT2dÉÝ))\\H-G%zg™7äíaÕ‰‰5ø\rüÅ*F=ÙíP—AkÓýº](yÇ8H-uÉÈ…ÎþÕ\"²š×¡ÙÀ‘Ü¤9Óàk‡ètôÏu/TH-Åc¥ÀÝÁK$„Ø\'ÂÍY—°ý±<2çÊÒÞ\n	HSéyH-v…£ÁM‘R1\rJú:‹¹“–šHFÍ-^l(^~ý·}wH-èêÓÍ­¤ª˜³_U:€†\0±ÀÚ|§ïYP¡7IéÜH-vaŠæ¯ÿŸ‰Œú:@°ô0¦»!4	Ãà¡$[w´å.mÀHh¯$6–\"kèÙ‹.‰1À$g^}®£DÌ5ýPHV“ÎÉ®{õ€ð|øM±Å`I–/OH*‚\\Z/\nö¢¡Xg7øH+2\Z¬Ž1x?#û²1À|­éD/×U% 	ÝAè­‚ôâØå€H+,O¯³0å´ŸQiÔÓlŽ{qn¡!wli$p?5÷5.ÑCs†ß‰ÀxH+ŒAgu‰|Yâ¨Y<ìú¢Ašçà…8vbSQÞP8o´×%BÓñH+–òGi<po>Û°¶ÐÇ§| -/šÉúÆìÿH03*H+Œ:ÂþUS3•ß©ØyûÙßc\r%$ÁŒ[‘Ö?¹ëo7ÙiÖÀH+–òòJš|ŒÙËä3B]Î&Fû‚ëÑÔN‰¡O\r1¥Å*¢²:¤`H+–RÖ<XŠçèŸ_…–V§þ¨–ÎFÕ¤¹¹,?yÎº*ñN÷àH+–ó.KÙ«Ô~Zk}cZUá¯4,œ˜g–›öÅÜHÝH1A)WÍÏÃ³ùüêßÀ<>0à¸„{r}	þæ H+gYË+æüø°ÿ0û7nò­Ö·l2ìz´«<2ÖVQüÐH+ƒ³ßn;\Z?¢ ]’ÊD¨ó@£{ÁÍä3àˆãöôœH+5áÛ”nx1J}¾)Š@ÔñI[¿Ä\\t~©ºÆ³‘yÐÈ;æ H)®2·ÍÙézôn\r\" ]Ž.…²8‰Ðua¬lÕå+6>Ù H)®3s¨ï™èä=Î¬²oÌÊŸÓ0µëþ(Ò:Š-ìX;î™6âH)¤I‡e{ëÝ&ÛNc˜û6ÀÐÍÅÅîÝ’P „ÅSòúÎ9ücYø@H*7€Éë»¾2öÝ#zWœü–M”ÛQÐwLûóÈÉÐÈw8H+–ó.5¾IdË\"Q–;Dc[ÚÕP|ŸÄ\\)²?ã–À','man unaipi willasakim.opus'),
(58,'Feliz de ayudar','Aidagpi aliachiua','2022-12-05144113905774felizdeayudar.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0þ(NOa\'*)*,\'$&$%$\"& $ \" &!$(\'\'*($&)#\'\'&)%,852:543./26;=80\"#.4/03,++\" /=+%$)(&,46,+% $&$$947,445277-.HäÁ6ìÅ€Hß£Ý¤\ZjÐ¼D%QÔàöH†\Z÷p¯zcyÀlŽÊK.bÖÁ‚§02D­y4ÍÚk\nkfH†¯‹Êf%¸=Ï6òé»Ã“ÕýwÌØ<´ÒŒÛÑZh€ý‹6lY­ÈH†Ô\0ò¢qB¤©‡~hÙ¼£¦¨ƒÌ¡GÒ™€j-nº0!®Ä€H†ûå«­ÁþCû»ÑäæšùtRUO¢–²˜4å•æ·Y°U’CHQ—N_VKÔ½û’°ŽÓiXm(+9**Fp{ãkDÝÐ:ÜÕÞøÎ¸Nœ\\€H$ôM¥ZRœÚ-TaSï¢åAjbI|ïº\'÷ñ_8W_ç|€H%9Åaä,öKû~°Š@-ã2D.¦^ÉKE5|Ç©OƒH$)MmÏÝxýÐn‡Ã‹Ge\nÎ{SýÔÌxÆ¾³_¯¬i?xŸ€H+ŠûõÅû˜’º#«W¥À]÷¨¢ø¤é~±AÉ­xÿ•	H\'Ã£ædÍ±Mñ¤ë(ÙñäùÝö]V\"ÙûÑÒÚM{àH%8‡æ\0(ðÿtÇÑ)ïlùÇÈš™jÆmÎ Ábx³#B_wH$ôMŸw>õ¹jaÞDÒï+~r’ÍÊŠðÙQ›‚g€H%,{Ò<ñ!>œÕtGvéœˆ|CQº>¥.Š±/z39ÑŸH$õõ–¯Uqdü\rõFCúgac2—Š4(ˆªW† H%8‹êNîð4¾Z`uE˜Çt0Q“îk\Zleÿ²UfDï– H%8‹ävfT\ZÙ¥qž\r?‘!Ò(áú¯bûDÖ½ H%*eþœï(ÍÅK¶”eIEù¸Ön’äe¬ê¥Íø+ñLÈH%r*EI/r&ûwæs\\¼3SzkâWK]°H$š*Î8ãáóF\0.RÕ’:ZnùêŽžˆ3ª¼KY¼i0ŸüH%ÞiËÃžb×ÌÆâÜë¯,ñw×¸XÝdù®àH!ïùË\Z k”	•Ù9ßV5I\ZeÅë{ôYÅôŽÌs”xÏH!ù1eÚ*­¾k©s½É<ˆZû™$à]þÛuža\'cv\"XgH\"d(¼UF5çÂ¼rë‰9ò¨,û…òÿñ¸Ê[º[>v!úÂ²Y÷@H\"d+äÕüï	#Gò‹DˆP„oh›cúµÓ\"—.;×&¹ûY‘H!Ï)7Ã<Èâ­LKßa˜ÛBþ¹ÍBC0bÇj(eykÙT<Æqˆq€H\"¦zõ§‚È }Ñ\0ý®Ö¶ÁõÞÞ÷àÍkŽµìl¿9ÂÖÐH\"f~˜#˜wAÁÎØ£S£2}ÔâUíÂ&½6-_éOz›@H\"e´îlÅ‹›edüÓ\'\ZŽb8–;%‚âÌ¿«0‰5Í¥¦H\"ôÃ\r]­ÞÔq1¼õ!Ù®®ða×À¾—ýŸãöoï5±ŒI€H!Ðgh ZSó¦èÇ[å,ð€@U±òÛ»\Zl;oÇ¾€ìE\\ H!ÏMŸòêóß.s*cvãvÓ—BÊÓàax£ \"û58—³Ãþ-H\")RycŠž‚nclj¢$³“o¶[Gý¢mÂZ|©5ìNøH%ÉÅº‰]»$_7ŒùHÈè¼³ŽýÉ¡pó~øH%8‡bÄˆÆœÁaÁ;ž×ÉUåÔ‘ ‰Ã…ÊÑDeØ;f H%›gpŽºCô­k\'O?I›Ý©›./\'nºK¹8|©ÄÀV¯luÀHÅyñÚ‡<,²Ilj4ÏÚB^©Ä³MÑË-M˜(utkáèHzáh¦:BÙh¦2âàÝàd™·YtE/Wò0„:+×rùK½ïË H§ê€Î´*-^\\N~2ôN%’(ð)+SÄ¼‹²Îµ¤ÌQu)5E:r\0o®	È¥«õèHª#v9lîôäE_Im`‘<f„yyï}6„g´6}î¿Ýéæ:èÞË-Žô\\„òôºòà@H°ž<;ò\nKü.\"ez¼¯ä$zü¬&¦ŸånÌ6½aWò\ZLŒ£<\'6×zò¸H²™}?_l{†)Ò™´hoÕƒBñgþ]÷ØÔ>œK`ôCÅ!v©¨¼6Þ¡„•Š ¸¡Ûy\'àÀHµ$ŸTAxÊÑÄw)i^ÙmôyÇfŽ¾¸Íðî2‘é°.4ì—¤0Çb^?®n#ádQÐ^“ðHµÎÍ&:(v}tF¬yo––ø8ObN«$˜(\\ƒïGÎ.DáïÛBÛT¢¦˜QÄÃ	%QË)ÀH³)™/ßÇVÚ¸=ù*”\\r¿Ž¼1å·SVîÖm?ÚŠº^X^%ƒÝ›ã¨ÈQOØ$ H°B;¤z	>“ezÂyýB™4\\ùÅgÿ\\(û,GÃ´9Ö˜¬?øýÐ>Crm@H¯Ï\'\n>\\Üb÷«™Lò®œÈeÙ+\"—ùt<3úŒ¨FcÝ(45†:É H¬YŒ„ÍÛ¤”bßï_’M†0ªCŠ:ÚR²¨õ3 \n\n2Ë8\\Æ‘¤zHJsÇíàH¦r™Ð{ÃêÎÓþ{Øf˜=ýh¡ã§a0…IŒÜ1®I\n˜É§z‚‹:Ân)„wfhæôtÀH¦ÔN§bOý>/›kµdšC‚H¤7éUÍl·%ånå&?ˆQ¸˜ü§¢X´‚vò<­u[À@š±JÂŽ\ZŸH¶Kn3bzyú©hÍjbp u”yrãæôüH_}Šùm¤`0(\r3ãýªÒÏä,%ÿ–¾™3”rå…m¨H·ÔÎ¦ŒB7—–ßW“X®e3æûš(xM*1]¨ŠÏ¶p­9D[\'ë\"ŸJzd¬Œð[pH·nE|Øi£Dr|žéòÂ®\\{2DM áPœ/=Âõ¶æýrçö•‡ˆºQª@Hµî_OdYƒ)ÐwRÈæCZAáö­´\"®-ÖÃeüHµû¡™ëoçqÔ…Ã¤pJ{l)4ƒ.ƒ¿ªjSÍ÷<2˜€H¶:»äƒ\"Ì|¨nÃŠ§IÒD/ÐéU%øc]÷7ÜörkÉë{à^œO HµËy˜Z¬ÕÉË—Í90¯¯rÜâ1þ\"‚×IµM_òõÃŸ2ëˆ1ã˜NXDŠÅÇQ´H¯Ä‹½Þ-“\rgi93r„BnÅ\nlQãAæ3»‚¼XùwÖœ	¶°þdwoŽ›H¬–þ„Œ¯”P /èáS9FAÞØ)Ÿ§à’žånäT¢œÐ0é\n-<è¹ÎÙH¾¡¨ËöfÚá³P>”ˆŒéÁÈÔ,­Q Û=ÉpU³iÏÎ}«Ëâ°SçÖ¬–ËW@H\nZ0—å¾àà\"×ñS¶–ûŽkMkh]¦®Èœûˆ!ÍiK0—êÐÆ8[ HŽ;I7nN³€g8+)Y2í ^üš˜{ã	q c2:â\ZVŒM•êË)4H‚˜V[ob“ÅVãÿó‘\r(º^F™éûéˆŸç+…G‹hy=‰û˜âüH2g‰ùŒ Ð^NÛžxéôì;Ngšß@zX~ü`HqJQöÄ÷à\'u±¿ŠI}Rvàž(_·éþJÛTõ”H‰ž×M¥/’{@¸ªë8´7áyÆîË¹8‚LÉVx@Cupâá4f‡³7ŸXH „\\R¬1óh!rGRýÈÝ_>Ôé›ðÌð¬ËÞþe„UÕ¤çÁý“Í\07|9åJ—#T¥˜Bn¹Õ\r@H­:Öòùe‰ä7«3ŠA)pÂ\"&KÉjÃkòÆZ]rÕÇµ“9»Õ<û€H°BRŽ?Ëb8\Z\0ÊÇßY­¨¼êeo} ‚4&l1xÂ0H°Fø57]ymÅ#ÝHÿxý&&Ç†ž¡ªù\08l(€H®Y‡Ùµ¸\n‚‰ˆ8ýJÄ×ûôòp 2·ùÎl‘Á„Ý})Õ¦0 H¬doåîxEOÐjµM`­}L¼µ`8Óh	<8;vyƒéQ€H©;øÃïÓït@ùûÿºØy„a:š§Ý‚ÿ2ç¡ëi@H¥÷NAÊ~Èò—Òe\r.\0Ñ¿ÆKÀhu’Óø®3…˜ÁbÐ5çÀH£Ð™øWÝÄîõ“õ`®¯‡¬ëž‡’O…Ü%Ê)¦òç9×[W#¬=ï§ßEÿ}Îk‡ÀH¾?g’ÈK×—ãŸŠO}&¡BLr>[5óêµ™\'=äß”w¥#¼ç2¸Ô.’Ã}²ð$ä ÔŽHŒ`•Uî}ñX†õÀ¿²‰#Ò£\r	ðŽ¯wÏ·âß²ú–ÑžÂ¡ô´¾NHu’ƒòï`JßÃ\'Bo?b‘{ÓD9n€C|è¦Jž¼\'¸Ï†‹ð€H.›wEÃ–ŠPkå¨i!q3Ip,j	}<Ã€èwy§9H)¤CƒdÐ{jIs¸y`_ïíQMáÙæ¡Ô°H(óóR²ã¿r½18‚¤Ybá¨iÛ©†~Ši€<èÅM H$Çü9Ñùò²ùù¥˜•ÂuúÑôÕZÿ\rrŒ¡ç&²°&pRxH\"f^fPë?ý;cdãáÄSÆãÈÝØ½ø8›t÷ËÀj@H\"0³áý–¼{Üüfü¹æè4fá»]=Ê‹€úZØ4²€H‡µð~ŸHÓçÐø îáÎwý¯ÓiC)êZjGÓ±®¦âeï´jêÂÛô}Èò3]ÓE‰}¼ HÓ6ÀYÇ½ØP&>s^ÆI}HŒ”»Ö‰ãHn±*¡Y”?[´úœ„,€ÈN5Y@€Hª#ÐçéáÐ;&†‹éƒ\r4~Nó§òUítŸweÎÛÁ³?XíZqÄÚŸYÚ\0AùIo-;\\H®….:qè©à	œ«}¹ø“7	ŸëZÎÖs±¢ð æ? €±ì^bH®Ãµå)âÖmâsÜµæNvÁ\nƒB14Àòió›Å•í‚®sü«Ý\ZÔ—\\‚•exi6 H±‹SïúŒô2¼žÓ¨Ö-å…7·‘±-¼Ù\'qx¿Þ2”Pè5€Ó}¥µ¢ï°qßoH¯Ïí;t[žÁž[yòG¢Y¢ñ–í±F \"\r¶@#Šý5Ö»C˜i6yïŒÉÃr&²`H®íROWûrh³„0©è´™Ø`U\rrÈà¨E`LÜ%¸}Hµ8àZwCGúã”H«ã»­Ñ6ä Èj‹%÷A†ÒP6üs&N+àjfé°è^Æüìb–®tÂX\'¶èÌ¹Äe H®’Œ÷íÛ¬¶RÕâ¶Qã“7Ç¾Ì ˜\0£×PÊÌ¬ñ‹z·ÓZ	ÄÀ57æ0äÒ£ H®Û#K­u:•¯\r¢Ñ)Ë1Ë¯©XÖ(?Ë&W~¯f Šì%1˜‡L€H®ÂXÙÃR`^Öþ×ç!ð>nÂ>²%1Ãº£l\rõ6ºÖRuøOggS\0\0hg\0\0\0\0\0\0\0\0\0\0\0\0n%5EC01(\'703550.-0-1*<<900105,-4.%$ $ )#*&*($%&)(#,,%+\'$#%%\'($\'*(*$&$&&\"H±ö™,}¸HHSÊK÷ÇùÙšqã÷ãÒ¨ÃÐGr;GºáR~àTÌ;~p«hH´C¤ôÃ‰Vˆè%;\n¹£1Å™ôä†«ý(§Ï	ÝýA&:þ—¬úh@€É¬Hµ¶Kô²ñ*>ÔrâÇ›³ÆÓ¸œU#øQà³oÖþÒ¾œÄa½\"m H´Å§€ŸçKŠF¨)é$ƒvÁðÞT-œu\Z½´æXõ*Æ·»e1H¯ÀÎÕ€ãœchÄp•úóÎ”$2ÜlÑT2ïÑdž`g¬G5šµTB\"ú>°‘&}\0• ºzÅ£H£R-\Z¸\rD(‡ ´¾ZT…¦…hä£vÏž)íìp/2¨bz4Ð€¹ßw¬ší HžSúßÜ|	»&ÌCàëtÇ¢¡âkD°¥(þŽg¬Aÿòèø“ |æáÅ—/¨/]‘…Hƒ>Œ,´b”£™½¢¦©`B“¤=Hòº(¨D®ä´joJeÇTki]Vß£çojw¡{Ô_ÀH“Ä÷¨mPØIÞ®Ö\ZZ>£º^©+•ù2©…[˜&ö\"D÷K¬F3ðEQ;Ü¾¤X«LH”[;‚åÛŠªöù^±IÞŠçMyÈHr¤!%\0½Þ!(èÖœ ô¼´ðÎ‘BçòàH“v#â­ó-Gº—S§?1qÍ/U!m?_€´ò³mÖy\Z6—ƒBƒïÁPùãÀHƒ‹Q<‚ºé²lßK²æ\\WpÃv0õø)tö~ûôñméÿ/L€€;Ù@H¬Dÿ†g¬c—øBuv^èiow¢ê^Ý8{­âãPÁf´Œ2™Ûa€ç@‹¾ H¥÷n|¤ØŸù/æHM¤¾Ün•MV5³m²#³þËtt€‹¤/|Š\r%ÝH£R9¥‘„ÿõöYæma¥!3[Ó `TÓ²¯= \'øŒÍáõòü[áŒt¡;²éxŠ HŸÅ)7Ç$ÔàÙƒâuúhÌö‰(‘tZÄ.S75i+\rª!àØHŸ Ó°ÙÚÒã³«]ŸÂRÛ1P¹†ì¼;Ï‚×“âT4#\0¬c¨Êîàð>0ZŸsäº¬¶àÔ®¬š4H¤=%ªïã˜„Ù;îê©±hÖå£gãô”õ%¡k~S2zL\0\r8é–Ô–ý\ZÚ/à\0IlÅd}à8fPH¨\0¥$Õlc¸fâTtI§Œ/iÆ‚UG+ê¹‚ì¾„Ëwé‰Ž˜CãF7ù¼ÁËËéY’”çW¨H«Zû<¬ˆf›´g(\Z˜¿Œ†âáÜPž½Þl×Z· ÏòƒÖ².2o™ƒë²ê‘$H­‘Áá¥F7Y§ÊÄ«ñ¦ùëÏL^Hˆ8e‚hîðÖ.¿,;<[óƒM$˜§³¶ÀH¬ý}‡æ÷]ûôÌª„å”Ý,»­ a‚üQ>£ß\ZËð8¨àâ%-äÒØ¨hŸ.@H«ªÞ4Íu8ºcOB\\LôIEuÂ“T;\\ždÄ3z¬ý´tÿàXšó[šï@€H«$¢IÕOZ©œõáGJAÊ¼ŽCŠç]oúŒ~š«h%™î‡[¾\ZWX\0P<ðCVfH©ï‘é©Pß˜þDd£aWÔˆyÇ¥‚ÿk¤¤ÒÓû3ŸÊ\'œÒK±êÙ°H§YÎ…ºÿ³ªÔséW4”‰ûí%Úvë÷„}5­ã,²^ìÉ‚[Ûß,	ß H¤˜A7ÿVšf×®™C®Ì(JÓô;¨HÑb\'˜¥1jX@h©!z<	U_óHžmÉ®mÞ^›©7‡r—514SÝqƒŒ´àV‰³1’§$ï\nÛögHŠjHŒ­•Š.™TV™Ü#S€î]r÷7Ë@@Ò¿,ØH4¶™æˆQ(à¡¼o­£N“[L°âÐ\0XQÇ¤Of¸\\eÒH3/õ2Ë ¥NrŒƒy†8®xõ†V0¥1Ö\rÎ8¤H2–F–8ÁûŒÚ©.$Ÿq.–ß…™“·VÇCxìØ½9 H1Œ0¡²+‡¨4T\"âåd\'ÎÏO“¶`’âK\nÂH/>ah9¯OWÊLSHÄÒXryoèÌGœòñË&{W?`;„õ@H/08@¸Njø}%‹«27Ò_!ˆ#¸/ˆP(Y–`ØÝk@H/{TÁnAø®’^âÜB`èÙeqæ\"ðÐQî_¬¹Ú–Ð¨|D€H1\nzåv›uùÅPj!¾ü6¦\0ü”ì¦u>~\Z´é„EæÀH›¦ÔÈ–UôÇ³Ú“áÜÈÙqƒÀg;Åê³\'ƒ\r×~Ð3Õ±çi.kH/sÁèèø#ÁrìÞÃ‡¢d‚Q,YfU“n-)‰‚\"²Å!ŠïÒ@H1!cèŠ–yçÖ|ê>P\'A\0w4…bó‰ß‹j(­-¹rH×ëXMÙBt:Â/Õ¸ˆkHû\0¼—çëŠ©ÖÈÚ÷\'¥3.øH1P—\\~[4ÎI‰ìPèjœg=´!f.},—Œ¡¦GdÑ¹JH1QWÐ2¾ÓÌ°žýæó×1–\nq¼–F€5–Þ¶«Öè)È½Mà–s)ÃÐH1FÕrªð¤µ ×\0M¡ø}à—ÛxÞR\Zñõ\0óúñyˆ`*Y±;«€H1Qhê°S¢?ìFq>’â–§É±Óà.Ä,’Éø]YIô@H/8ü¼[³gŠÑÂ0ƒ¬Žµ ÖAOü	çVµh\Z‘qêiã–AÉä H/oÄRä.{j]³¤LXzŒ?Â>#Ÿ; Ð¡ 4€û¢^U‚,ˆM<¾…H/oÄ\\ýÃûCä<zÕ\" ÚpD\\$¯2ú€¡¼Ô”»ê”ãH/a¬O­iøZ27ä£3¦2„SÍÆ¢‚ÖÅé‹ú—e%µV”Í´ÀH/h©÷º*;ÇdÎî1:¨©È›Cd2&¨ÝMÜæSñ’ÇP‹0H/$ÓšJªÛ~UgÎ½m\0]Mé£}øvÝüM¨åÂ`\"°H-×Œg°1æb<¨Q»y[ïþXºÀ£ÙÖŸŠ_Þ›w H-²>…\"‡-åÕM}¹Óe¿åMq„@Þü­<ôp\ngý`H-M|KÔ5>°gàöéõYžVB™>çºÒ±ú~Yd]œXH-xôZ§šN•ùc¢õs‹ÊU9ÓLïd$Ÿ{‘§Mí§cnhEÇH-uÉÈª—Ù³09V:uƒ-Ï…c:§“OØÔVð;ByÛ1ÀRH-\"C­ãJ­qä³ÅÅWÛ“ýýìAlP%Ä¢Á£\"9ÃâkÀH+–ó{–«ÊÕÊ¥*C\'‡@Ï4Ttüÿ?SîŠ²úû‹?OhÈñH+gk¨¿­˜å{¨pWEWüÅ¡R³H5ˆ%gcK¿	•Çø%Ü,·–H+Ò/*YœR›¨4{ m2Xz€2|\'Ùu˜–«€F£pègÇ4·ý]\\ùH+^Ÿ´pÀÈÚ<—¢)%!aà–|]¥€=ã˜û‰X‹]jM¤\"é€H+dN¡ÆÒ¥X¸õ û		æ,–·Ú˜®íY\\2áˆª•cH+^¢}µÿkWA­„!·‚×î‘#zÛšÇ};¹WÒ€xS€H+Œ×ƒ` ¬#1—NÀ0<ô%[¾û–8ÆprH‘µ`PˆH+Œ¦“Ã™vdU	Ç÷‹à:~€ÒÏÕŠ{ÖÉcÚH+–?1ùç«Y©Íz±ÑÈçQâå+õüc&ã\\‘nñ¸J´è$H*™,)Ë!Ø@¡YÀ{§ù©[\\@šÔØ{Ï}ŒOw=É@','aidagpi aliachiua.opus'),
(59,'La reuniÃ³n ha sido cacelada','Tandaridu niska man tiangapka','2022-12-051441282431475reunioncancelada.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0`šõ^\",&)().&*%\"((\'(%\'\"!#!&%(#&%+;+(+6/.015<./8;=2559&+<14\'\'7319455523/+&\"58.\'$&\',4420-1-.&1/HäÁ6ìÅ€HàþêJÊWÚ*ÖÀôÝâ‰>p[H†h%²<.¢vNl/Eáa\0êrÓæÞÛ&tè‘@ý(H†’‰‰H*ÇØÁ´æ¿’·(‘Ï»#§Mƒp¥Õ©,Ê×i\\Ño©eôB€§\rgÀH†ÖÀy2´yFlÎoÿ\0\0ÄþÚâL4Ô½V¦³±˜úºüéöH‡	Ü!‰ð\\,Ô.Ll3«®9n}£s®Ÿî¡6¥ÛÛ%ueL«†,Š H\'¼.Äh(h­ãþmØ|å–¯¹d°TÜÜj[àžëV·R]§€Hˆ»€/°nÕCÖÚÄÂ}¤nÂë¢\nv04žá¤\"j@\nñO®HˆÎEmõççìW–Ÿ<^u=`Ì,xƒ>×úî7½Í–’qÃ9þ¿ý3”`H/4FuóÀ¡]t¯†ˆV\rÁ5fc³£7xôï’TX‘¬¡¶œY`¸H/é•[]D—:d´GŠÄŒk~3‰„Î{ñM®“(ý\'%þ4‹`ž¥=Q˜ÚH3·£dFgVÎtž…xÓ¥£G„‡‰Í›S¿*Óa#Tä=y€H0ålP	Š,âû~ÉsJg4ÿr’‹^E\\pFå.ÿëDÜH,Ü5,˜8’÷`Ú]ÖS¢²”0ô Eéº\'ø Ì°ÃŸIÿšGsHvk«ØSŽs„Åaåòó³´¨!¿#ø :Õ(Õ„[†Eò€H-2q©AôPo”@m\rË­Z5í¥l‘¸á&ØVCx±H)­ò­S»‰e2Ö£SÌGA¸)ÙJ’}]Y¹ÿŸZß=¤\Z„ªK H\'Å8\rYGx!ô<¿”¾×\ZÐð¢½\r’PÁ†¯O•6dü/´Ä ä€H)„…\"•nKëc-®[Ó*GØªÜŒCž*!f“xB©²ì¬PH)pxWÉ\'ätA\0¡PÏëcGÛOÙOB|^\Z#~ÄHÁ­)SPóV—8øØxÀLÄçvH\r‰\\B±“½û\n¾G÷¾H\'»ì¾VŒk1üÑš8Ñ\ZCtIRÆìÁRŸ[~ç\0¼Dò(H\'›%– Ä¦d¥…Q¸/È¬Ràìáì¢LêŽí®ñÊ\"à§BH\'»ê‡á\" aG‘ÀbË+ãË¼+¸8U&¹¢eN„\Z€HÁÃ¹9ßëÿ…´Ü”~Í@6”Ô³H8÷|\n¨ë~MÃ€H\'ÃÎÊ:Vñ÷Cî«êäR0ÏðÎ×š\roª¹ÎW±ZÁä‚H$ôMŸ“`Kù.‹Ä¸	t¬ÄÇƒf¸®âGÙã\\¥:Ed£qÖH%N$j„©<wáBLÉÞhf3â‚XJ(ÿÅó¯Æ$ŽŽ^jp.¢=¤H\'\\Í´<Ù>KÛ¨rüýõöoÏÛ+ëð6¹¸S¡á’•ƒ”H$Èð¸§#Ž<ïPì?¶ öÌ0• ¦/ñÑÙeàH\"eW¶î\0Ç#G·¤—þèÛø-fhÿâîL9Æ;@\"æBîdð/¸àH!ÏMœâÖ8Q×çl­)yÕ­–/Û%±:lA•hô–æµ/ýH€c²>4ñ©ž>Úx…òFŽÏú¯µ=æc a	á?™NNWNHo¯RN~)pHª3Ú³KSJz\'“QÜ¿ý¿sëÌµ2™\rXzŠ˜Úù¾@n$éÛ>>w,°‚x=?Œ¨mA4»€H®›KôÿæýÅÜÑ=wdýâ]L¿LAËÉhåAå/	\0Ñ0OìÄË½@H®³ª ÒnÃ¯‘tµj“òôïÑŸûô\\XÉ½q”ª\"xdkKÑ€H®|ð+B{@Œ\n0ë7Jÿõfœ:ˆ™ŒNàüž‡G#Ñæ7W:è¿ÌjHªŠlx°¸Ïõ¶ÉÈ:RÚÑ‰\Z°Ó)‚8ÇûÖÕ¬ûh)k*—î¬¾ÉŠ@³§-gö€H£ËŸÙ¤¯6_{˜`,]k/¹*ãvF‡¶ŠJ#*6½œ]EùØ\rÒP2„@H£œÅ6¯Å¥˜:_à*ÚL¤ ‚#{€*Û±¨þ2G‚‹}I(öIúã?EÌôPH¢lü·º§µíƒ·pš-Wfõà¦Ìv™¦y­ ¥~ß”uz\ZsR61Dú(¹HŸ×.£½_\rcêópëq2uoÄ\0ÖoïÖ\r&–SŒÏFˆ1\ZÂû×gÛ¬nå€HžÑ:|lœæ0èLDÝàQFÅ¸{0tDô^éLeÛ„%›0£;\\«k¥Fb‹õÿC`Â\0H­šˆ,Ð˜˜„ÆWï V/ã!›ròåd±µF\"«ëÝ*{Ò.S¤	Rë›Ý+°Mi\"E@KwçµaÈ^HµA÷R³®R¤W>åÆR4ô¸‰é`Â€ì^ç¥2§…Ï×@îŸ“=]ÄH³Ç´À‘À9lc¨—{k¦–¬‡{5úsdös2H³/ÌD=D:$m6ž$&‘À=ëuuˆ|ÒU^“¬ôÊ¼#yËà$›pH®¿°óˆ^N¼<¡}¡î>w4Â‚†E«ÓºŸ&!—ý{‡¸ãÉ¥»«ìèÄš“…*Òx‚\\’<H®·:Ä¸ž5h©·ãgÇ&á\rÉ2èH•Ãý´ia;Ùhä!ÿ¹wƒS¡×Z¶sÈ\0hF_VçÔÉTˆH®À\'úi^ˆ®öÊ¹Ûª^\n–}zz’O‰úžß–¯£xnqïXîU×—kÌÂI®ïxê¥t\rY©BÊµ™8¤H¯ÌðÕÚ|°–Ë7þ*r«fé¨b‡\n¢rVCZØ§ÞG/$ì”pö½]\r`ýH®ÚÛˆ\"z)’gn)ã;fÂåÝØÙC¨|ÙŒbÿ®ÒÝ¦rß¨sæøs]8y-8•r’@H®ššéc­zjU×\'ä>¾¼TÞÝhŸìjå`çÓS;–æSòóNQIªßÿ‘‹\\ñÃ¿ÌH¯3!<ƒÖp`‚|ãARòmSNA“Í8ÚñT2.¾lÒ`ˆs}ò¦¦î#RteZ¯Ñk<alTYH±õØ{m“ÃYø†‘\"ÚtSAÏé›Aµ„!c¸£ùøks¶=^%`H°´wÍ&› I—Uˆÿ€ ÅÌÐ6d»AÉø—…¼ê…^GK=ØH­9Â[>n»:l[™ÌÄWbõ•Ñ%Ø„v\Zø1\'ÁÊÖñø#ÎéÃøËüì5tÍ\nB@H®%‘cO8ÅrŸ9[<.Û‚\\“&¸™oÚ¦²‘Ú#Ÿ9ïðé¸	-IžR2¦i`SÝG`H­†8`„ËÑÁ4DP}(¬qŸœŽ’5ò³ZgIóÍ`OËÇ&ÛÆmáf±ê”¹JdiiFH°C?ªê°ú—e‡y<Gn*%sGR‚”ØÅ²~%~Œ{|,€H®€sË¾ˆË¥ª!x)õTÀ33ÿUá¢Á\Z^ì²¡Þ™P‡hïÖ€H¬ZB¼ìšjy2j{SOÏß±¥š’KÉL+‘“ÖØNi¶{PägÃú;mºN4ŸÇ ùÀUPH¦Fû“K=Ì—úœœ»Îˆ»Ô“bâiXBÒ7Fß×UCºHÀ¦–—ß‹w\nJN:fr]™<¤zH¥\"¤û9€rAqô²wZû|SËM…‘àª*xœJð‚n0Gd¸?öÏÓ[b^ŸH¦àþßãøÙŒU)3µÑÝ] Ë\0ÛsÅüÝê¤–îþ7ÛÉÊ@\"[×L*BÔN³hýäé&]µÙOBH±ôÏ†/ï‚iW^Ä‹FkÝ…Vyd\nœµs–ÔKúu}_ër/i	TÜ~1Öµ8ˆŠzH²ˆ y¢6™N.\"\Z¥æß–ï´Â¸þM«¯fçâ}«ÌÁåÕÅÒ,XÅ‘6ýlIÇH±|²ëE:ÏDwôíÑl~/´5xÎ}ß6ÑôÏ4¬´Ã»»óë­‚›Â_<†êŠÄH°A§=\0CÈÜçmqÓöÚÚ,c»Î”\\ŠÉpG3DŸ]¶ì¥#kÞ«.ÌcÙ‚yr¨I»H°`æOŽøÉ›®¹¼	ÿ|B½F$c!b›´œ:Íãëû!•=ÎšIS{…ØF1§í H¿£i\0¬ƒ?’¿#HK¾•Û®1GŠÜî²ëTnhpe»”‰«LñÐ;×P@R€H’42(ROúIö¡bF~‰~=ëŠ+\0ÛyVOLfÉ1ö«{«|‚]±œH„c¹êhA\ni)©¸ú|o;\'ÿŸU³ÇVÇ^‡	(vô¤ö#©H9³àHí/‹áF/×G\nI“;ï ó|¯§ÒÒÇŠÆ\'2:‹,³\rƒM}‰ÀH6P¼Òz­¶Ò®M{€JXc•rêvÉë÷0ËY,u\'H½¸	3ô¬þvîôçâ‘ª*M\rM€«™§ :uÁÄ±v0,ð9Xõ”ÿ;|ðç¶£ÏH®“«‡àAîï§âu©ÅÒNy¥îù‰}È=E`{ Ó:4\r †‰í¼O•ZHùn\\)yû€H°æ±:ÃZ£)Ö‰âžˆ)|ü]ÇöFÜaè6.M¦ãG£>Š1s”ÆX(¸H²\ZJÀ[°ÓÅÂÐ¿Òm*Î¾¡=Â²Úóª%³J=ùÒJíùzÐ0H±’6lþ2i´\\§x¾]aÚüµ—¯÷XÎI6$~Vu®î@H¯ËØ5¨}P9qÍLhú1:cL(¤È	Ž­ck¶–åÂ0]ÀH¬°VÐ™öW˜D{À†5Ec;¥Û\'Tm\ZRý\nèO”w H¨ö†ÑÜe†Ž5³<;_ë¹3F\"åœ¦¨Iiñ)h¤ÚZ†î\'ÖGWÉÚu¨H£bJ`Y~K²Œ\'‚âÅâèFÞÌê©@·zÝ\r.RÜ<-«’\\~}ZGA„ÐÑî\"ÝH¨H¡I‰“o™ôÊâçZ<Œ×jÇ\0Óc„1DvÈLb˜Ìˆ`–ŒŸ?<»\\lBK«9HŸ&`H •(ºV©ðŽoZ «Ã©O	C,É®cVòArvnX]r@kš„\"µÄ–\"ú!˜§ HŸ÷>‘¶´ÈþÐ$`¿òþÏØy%\r§d1³QéÇêÏï°°ßÁC7¥RÞcÀH E2ÐK[È¤p4>)çE?ð<»“ÎHµ¢²Fxz•?Y^¿‹W(–w<H¡³IßAv	ÝåÌ¥µ	ðÞÃN?ÊÃP9l==Ì]Žh_#}þ‹ÀF>PœºH¯4Ó\"×h×ðÊ…²Ïßõ­Ck¼Ó†ibaþÂK¯í4ö•˜ôù¿¤H²Êñ‘X.ÙÅ)(R¨Ä±aDóºpåC‰aI©~…ÔÝnÅžÁy×Ù\'®(&€€H±¸Ä.t!&S¯oË`µ¾îÝH‡à–ak÷÷ìcÏ’ýíElBmˆH¨öâÒ¬\"^ë½bþu1oÞ_¶°i•ô˜Ê¿áËÀR2Ók=ÿƒlä«\"×D9ß8JH£˜ýÂQ§3Ç£…ŽÈ6oÝŽßc*è)‰ºÙµ\'îÆà¶óé!‰¬˜MgÈØüèOggS\0\0¨r\0\0\0\0\0\0\0\0\0\0\0\0å™I12& ,5000&.127640&(61\'%(&&33.8635:5+&%)# #!%\')))\')+\'.(%#&-\'(#\'%&##()%&%H ×ý+yÖ\\|¨¾UÐ¯.‘a;1Aù¤¸|*ÂÚ­%ä“¦­å˜é,3]Qx¤€HœiÜn¯CÆòÕÖ­ì]!ºV{[Œ/œ ­;›2•œ£Î‰©/í\rß­^ï¨Ö€H0ãXò g—™yÂžûŠ† _—ôIÿ?ö{9ö×ìÓXy‰¥ï€H*ïKu¸/•€Q¾^¢/Èn¢—{ÁQE¼\'‹ ÃÐHÔNŠDo!Xè^?Ë$ƒ×/Ntn4Å \0’OÕ(¼Àƒ&Ø H¥R\rå £ÞˆW?Ü‚&È)Ä¤$+âPá“µ„?eù™‹´\'Ûûeû¡JÈCVš#€H«Ô\r†(úõŠ9VãžÁúWÑwÈ)o,qæÅ²XîS&¦ªì’7å^\0\\ÞqkH°CÙ#,æ‡éºõä}Ï\0\'ò¨ÉÀtÏœ>X4#@¦Ïå‘á-,\nÓƒ9$}¡`H°hgXÛ-ÞŽKœsA_¬Zºqp…ÂQ	Qâù–\n¬÷<O/ÀH°*t-¹œp_Dê8ËèÕ.AxÕ5•¬\r˜oÍÅú9,]·–!ÁH¬Iw}­ÅéÓlXWV]t¹‘#õÞ¢3/ßÀüvM€L€é%Ÿ¥°ü|ÀH¥à=Ò‹\'Õè\n­ØüšÀ¥Î)ž=Ÿq»	wkH\Z£ÓsÞo–b°~ª2oj2%H¡îö½¾eF+Ò²Â…5	Ú	j2%#‡¢1žœ—woè¤À´Æ£×Ð€âòeÌàHžèè43½ƒYÉº»Oª•A8ÆE÷ºÁ\Zb¨Ó•Nç¸äþÂK©\'žûo]ãUPÊäÁûH£ë¯±à”‹jsõ0)Øï–ü‹Ó1D5Z™lJ‰Àög9Ó‡¥,Â ‘ƒ›°³ÿ\\Óc¥hHª  Z\Z‰ÔZ×œW™³-RPªˆ©Ù\rUí´Ù“ æ*\n& z(Öâ†boaBZ.~mPH­wL§ÏT4úxt‘\"íŸxšë+i`²GEà9ë´O*zOêîè•ŸVtYÀ.øH®µME\"Ñ?2éòpqÛ!ã_êÕ&«gº…¿ÇÞ¶ÙŸhH¬¢§‹Ù^[åO¼¤º8fN1Œ‡è\'œþ?rt‰DmUIê@À‰sH§,.£Þ–°ªÑX‹Ø\ZŠD€¦|e¸ºš×¦³¥3:€‡ÅôhÒ*Šë^VÂnBxH¯H½æ[X	»Æ\'\0„#Ì˜ý$a	ß­=ÙmÓMö^ö*QFÃ¢0k´Hºà?ÉHúÃa\'—²€¶Ü{ vŠ÷€òõ.›’@G°™–Wõ1ûVlH0ðm:æš^^ú{’#·Úˆ°Ñ–å”PìÐÞ¶%lŠƒÕkàÈH˜ãIq[•Û†üºèƒöKpÓ„~\\‡	-˜«ä4HyœÎúº‚áõ6úåµÎç½ÚL8—‘e1‹ZQPú?O³=æãˆH0|ÚÑäÂìµ6âH…&ÍÂÐóHŸNª\n˜J€H)pwÂøD¼š;(.Ö¡×}KÞîâ”—Â,«Î1V†ÀH€b¦ “7RíÂ>óµ¾Z‡73JÕK<_”a*nºÓ`jþaH‚¾ŠÂ`æ\'þ]@æ3À³fROW±M­V”¹µº¸¶RµDµ³R},A2.H®¡—…6aðP¡¾¡Wü…Ïuh)+ JX4\'-áºnóÞÀÁÐ,ùp~Ýe ’ŒÍzÀûbH®¹b¿Wéôj4¸ò€Œ,­-P¾îsÖ€¸:š$Ju(pMnm(¹FqÈH®•f^dEGªçËZù#d–o¦@® QåÕ•@DüÒ¨+Åð:Xîõ3«¶œVù£~µR(\'8H®ñZ/šÕ”øZ¤ôh4§Ì2M^Ò’ ¦¼¸ð£Eä»°æ}ýN¥Áp#däŸ•j«G¤@H¬™3s	\\µè¾é—ç¦Ål~,ê¼á\\”Ê:¾¢†N²º£¨ÌøN³Ù‚0Ä—œ çÓ€H¨ö€[#ej¥~ÄÏÅRÁÀX))¹óÙt•`y¦\rÊÔ­G×TøÃ%ÓM\"š^‚åìH¤¨„¥F}’ñ©‚u5(çÑeÛ\0üæ„nF*KVŸ÷‘\nGŠàÔÉ©ˆ>”4¥á²]•ƒüW×€H½ù)*þ\Z¦E¯zH¾ÔS³îld¯Þ4:šF¿o2çWÞÄ‰Á@ƒýXæüvüEyHaÈýµÍ÷‚·šTy-eˆ0#é,Sck“ã—?qAˆ€E’ÒQË‡µ8H0‘“u†Ràñ·vÏs¦v-õ¸4ß¹˜}“Qžüqu”‘ðH+3ÎÌÑI’5Ð{¶7ys‹ÊÍ³éÓŽS@€™J°&õ0c@H\'²ÌŸ¸@&ïã Ýÿ«ÂíG9j!Ã„fÄ~y@¾a%ˆît~k«‹@H\'³\n,«t¸#j°©¤D[z]Ù økj9içü|	óÇ¦àH H\'ñQ=á]èGÖ8VB^7ç°ôn&JJŠÏƒ—¸ÔH!ÏI\'uº_•çÁ³Àíhºõ¼ÓzD“ï°«FÇ²$ìH\"Ö¥Õ•KP‹‚J	p[ôžÂ½#OýÄ‡Û-DÛ¶ÐH\"Öp£)§W\Z	G\'Æú¾â–»}\ZHt$™‚pÞâ*•>–H\"1¿tŠG ÏÚOûˆµ6Ü¹	úHY…MÄÉSp•Ru`\\Ý?PH%9½Ža!Œ˜”–À¢†`;xÏî½ÄX[ÍHð#ÜêU¸ÈA¦¶µ9&Ê H\'ÅB`‘wðË‹úsÆ^¹nÚ¼®ka$Žb‰¾³>ÉûDHæÙìràH(Nà³ËŠTÔÁVws)ƒÍ)yÐ=7‰ö“ý\0¨ÇomD‚#ZÑ‘Ü€H)®4æCv	ù5ÌÒ[æ\Z xéýƒ/çŒû8}yÚŸmr°H)¤Êô’è‚8Ôëã?›ý—÷s,OT-Ï Òà*I†uðé	r¼H)énº\'Ø¬ø~L÷Ó­Ìóõûôà·IÎ1§ôêÂESÓÑ`xèM4kŸÚ²H+–ów’KÓÊ½—P13GQJ\'¢÷çšŸÕ2ÀÃ¹W×0Rº€H3zøF.\nì[ö†PÚE@Á)Á>f SásËb&¥Nžœ_­Š¹ÍáJã?bH-GÃ—Y¼g`z\0BÒg0^¦»yX‰PAÿ\\†fï”cŽ‹ˆH/hsnKP6-@‚\0îdO)O°0\"‚¡ß«à-cd.¬ˆƒ H/háNëâ?Ð>úK  ý[Bpþ»øçA!CH/háV*?Ò*IÖZz´ÒÉJ.ìV=õ‰ w{©ÒaÆ“½ZÑeøH/0(ÆS(ÊîÕÆK»£Þ®´ìÉ\\œÍ¯Œ¾Â¦ÚSV,°8r˜þ|¤@H/C`¨›ÅIÿü=TÐ(ù±$ã1|–öGªjL^ŸX2y4NŒßÀ€H/_?`ÌÕ8©½7iª&˜E¹o¢ðÃóÈ…;)Ój‡n\Zê\\HH/h”@vßDœJšÓ­(­5r|Áx»9’¥\nkOÕ‰c_H/aªè›w«‚0ý÷¦DýŽ´Ž>ÇB¨-–óñdÕ‚NºøiK€H/h”? ~Jl“Û::È¾’7E°%j3âÊ\0÷Ö›•>H/htèçXóaQ×¤Ý ö)êB0\0±ø©C#šÞ	¢Éø÷KÙÈH/0G©»¸Ú/:–…pWpR@˜ž3‚âyx3\\×Xÿ†H/,Ï™fJ­÷ß´õ=öùõÁV,ù+‚O,L ¦€H-ŠQÛ Âö¯/«ÈáÝ;<[à5^¢j9“€oe86ÛAƒ\ZC›ÀH/h”E5]»ˆÿÑ*Ò=ê\Zã×ì:=€Ž-\'ßÌ…(	þÊíH/KŽš^÷ÁK)S,K\0:dy®¼¨ÍEéâ×4š¶eåúkšØH/h—:É-h×ø¯=^¯K “tiO`m‚†GY\n/ÏŒr:€H/huÜüƒxBþŸFËÚ¸ä²qe`åP©+ë\'Äö\"','tandaridu niska man tiangapka.opus'),
(60,'La fecha limite es','Kai puncha tukuriura','2022-12-051441475985256fechalimite.jpg',1,8,'si',NULL,NULL),
(61,'Â¿CuÃ¡ntas horas trabajas a la semana?','Â¿Kanchis punchapi masatak ura  shabajangi?','2022-12-051441599322937horassemana.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è~\0\0\0\0\0\0\0\0\0\0\0\0Ø{fKf$#%\'#$&$*\'&##% &(()#%\" \"* & &#!%%)(*,,*(((%(\'(&%%& \"%\'&\"%$#!%&/;.-*)42523253\'1150)#\"&53493,646703HäÁ6ìÅ€HßlÓåu\nÆmÞ_ªO?IàH†\Zõ¼ÄåÉ-ZóóxŒî¡ò=abÞ,	ÆMƒK«Š~í H†`d\nO¼~”ÏÉ§v}ÚÐÏ²©Î`~6L\"†\rk^ÄŒïôÜH†ŠòAÚž¢>I¢ëã#ªò7rÉ8xS\nh‹ö\n„ª~ÛnH”Õ³âDÃÉæ{ié!ZÜO“bîÒÕx\0g–Këß{@²æÕgOH¿1Õó‚œ+?Ì€:¨.ê¡/í|“ÅAã&—ù¿^ý¥|H€QLt÷Ì‚®IúvóørÇ3lOÿnÀà_5)1½%ßxÿ0Hª‰«šÊ‹- 7ó¦½æÈƒšàÙ?…(óx›\"ˆïÞHàŠ¹‚bQˆ; âÌÀJ¸û{Eð	«>+ƒ;Žšµ‘›Ô\'ÀHªLu´o ¿©ˆÕ¸âB÷&÷Ìaaœ|øšu6]Ù\\3µX±urq·àHO\'ÿ¥SQÛšãÆ’¬”U.(•D$µ(L3ñtéÖ*eIÄ0Å3åH\"f\0]Þ7nÍ•œ1GÖ¢fH\0Q\n-GÀ°…nD:f¡Sm@H\"´‰tòit¹«3Ü•ÊXÎÊAÏäÌöY¨ŠÊ–)÷õx-H!ÏIk‚¶:ÒY¹G!Rî `©¡lZ™åX4†÷„1‹;µ)H\"CÀ‰\'@7@ÈH½\ZŒ«UX§ý4¦l`î•I\\cLÍ—·#÷ÐÀH*ÈýçÏIðº‚¤ô¯˜¼†%NæÜªD”IâH%9RÁçSóD[=Üt\"€ô´Ä{¾i®SLã0	O¶€H%ÊJ\nÃß‘Îèe\Z«¬Ä¬?³CÄúVOèñ;mF…½Ž=hH$ôš[1uíúß¾<p-o¬¨A–Ï$\'të××.ÍôT~ÆùÍoÕ‹ØH\'ÃÝÀM\'oSñÒ7¡½çŠr”´ÓmÀ¢çô@r²Â&)ÍskkˆH\'Ø\rÚFŽfîfÇªÜõ:÷Í\ZŠkª -FñÇœi‰÷HPk°;øÚMûüöåŸÖàŸr¡Ø¶aU²\ZD›\\\n|H\'‰æÁl1gÝ9\r\nŠSÌñ$·æÍ±Ç™Ô°ñœâH%*eNw\"QZÿ«ÐèÇ7ðÌezõ„÷S\0y°K¦\r`H%‰–“DbÙ÷Ì¯™_LImÍÒKÊÄæÅ|²MÒddNH%N0¤@J\0T¯×)8žüÍ£\"1ÎâóêõŠd)ôÔ0Üsr´ÓH\'a+.8³ù>noJÂ#\\ÝÈRÙÇŽgÌíj¹ÐH$õq×A 0nêý€³âMK2Wßçßø!IPSfoi%’8ësH%}oPAf,Fo¤&†¥ïuT€¹w þÑÚ€H%*f±Ròd?™Û*¥íDô­?m¥Qc|•‚?\nì.¹|@H%x0ìÔ9¾/±îÜ÷eß”­Œ!–©ªÄ“ÎîHƒõ¤;cßß·¢¥…(™˜>F„à_vÌÛ3Pg.îxH‚7úg?ãÖD‰\n›ˆ­‰–\'}\nPty\'¬»—pB\nI÷¶²)pH\'€µÛ^’ƒMáÎ8a\\SGTÅd .…F¿TÒßò?\n‰øHy*¦Ãb¡ÁpëªXAè,£8ÌL5¤Éî_„xûÜ”q|a×¤qAH%´Ê2à2äÖO\'¨-•¹CâÞkÞ­ô°À¿,%N÷‹(0€7?€H&›@“¿.Tñ,àÍ¼Êuldë¼fcøºíùÚ¯ãˆˆÑhH\'Õ´­ÂÜüÛ€ãÁââEç½ße5Véöè\"•Bè8=¦Lªú£j2H)~‡‹ed¿¸	!…	bÔ:|™aÐq1ºyÕðj-«ÕxL’¦ -†…ZÄH)ë\rAƒDíH zdÛê×Aà®^­0KBâ$Y†”8øÇÒfÊNýl¨àH)ºgšõNÚg`bÑcÊ`ÉÂiS—móXrÕz4ì7‹?jãGÀŒ¢ðHBb+ý&úYkœ?`ÅD4‚ÊEòm}Ç\\üoû‘Ã‹¨.BØw\rH0ès:dÔ3¶ï~ã\'‘®¼~Jxc;Fxê_9x²pU¸bké¢H/#W|•E;®ó\"Î—.hˆÏygYTíµrˆ¦€AÙà”€Íy@H/^.\\`OµLTA &öÍI;“0ÌÄQÅL\ZÝd= ›;ÆÜÌ€H/>Q¿”ý%ñˆUTe¡*\0ËÕjŽT`.â³QºÔgò•«s\n€H/>u©/Ñ9fÞº‡sö¸Dyr!ôuñßÂ²ðc‘¢ªT\0¿>¼)ÀH.ü»‚ëáºTè¹Îw`0è ½£Ô9È×ã+²«q\rH-U‘èìTdzz±%ilàú8}!\0^—õL6›4…úçk/ƒàH-vë·™å	‘-‹¢¾ÿêì’ùåÑòpõÕz¸ñ’„\ZJè~àH-ò‘…—1FJÁZXAl²%Vx VÒèÕqªEc¬Çý@H&]ÐŠŽ+0MÜõyºöÍÏï	ÃáY›|fjPH)«{Äü•ùrD=ÍÂÕeæ—³=%`Ü„.az…Ò».H\'»†¬\'ÂLá|HxW*†p;ïÞ‰Á!ÌÂ•Øj\r|‘©¡°H\'Å6¾N4r–í¢z`P5OÍyé¾:vºÙZ“å˜Ã”¹NKLtïºØH\'›°Òðõ\0 <3@.šÑZ°8LcÃ|ûv_ý(6¢kþbçÝðHÂÐÄÇ.þÚŸÍjUIv`¢9ƒ?@oH\'Ã¢Ø²É9A§±pn!3Z]@´*ü»0¿(¤ åIHó\\ùã©fvÌÉ©ªÅRÌ6¡\nÅçFª;ôé°LÑä\rŸ€H\'Ãåµž>`:äF}°å ºê_ÑÉ‰³²“H‚.šnCÅíO—ˆÁª]Þ2îíª=vÄ°ô¥Ïø6¥J“7¨H+‰F¯Ÿ”\n¾\'ÂK”)â’²SÆ·L¹$Ô@H$ôH7–VÖ1Xµ×2×/îÒÞoÎØêT)ÈH‚û9ùƒsL¼ÜBop~¤-7²µáÊwóRf¡@H$%Ê?.uqA	L	 ³ˆíéÙµ9¢\0$\0³£\'¼¨»ÖAw€H$vù:s #>Dz-“\'`ñPb1SZ.®ß}–ÎEdH€Ô˜m FÀLÕÍ°ÑÁ¶ÆxOÕã/ŸÏg—øo\Z•_§Že½Vo„WðÆuÙH«›K¾¥;‰iÍl±Âk\\±$Þ\Z4\0-çá—Fæš9nM×s{ä%£°3¢¹]«ž‹ÿ…+±âÂV5€HµdËŽ¾ *ýÖÓÚ7]^-K:ßÿ­ÓF‡[¶ìév³¼	ÁÁn¼2³d»H·+\nzµ$ß¼N`•ˆÖytoí¥¾I-x”Zœ¶zAïÛÞ_¾taóàH·ð÷¦¬ dQGš»Hzé-14ùµª^£lìÙÖ¬Ûp›ô]-\"€H¸šK~ƒ-Ÿ¾©ræ¨\n=QyÎíJ2-0•(b&^ÞXúx¢‚Î·¤dÈH·yé¢F}ÐÑpŸ iÊ·g!ú\0ëGc+nŽs˜Â/ŠŠ‹rèö€×¡YjCÏú,H¬q\"ÿ³™Â¾‹\'ä³w=³æ%E=ì½‹ºÈ€°y—¾^À»\\OkBd#~u”‡H§N.ãT«²—)¸âO\\‘îÓïm65KÖã-ÃWL8-V§«\nœ¬·ÓÜIôd§¥%|i8’:H¤—äý¿©ÅÓØ‘Éif!¬—YýóeÜV&°x…ñBD9;]\\\"Ð¸{¬sp­ÞHŸœÜŠ€?‰Îônõ,ÆÍ°•Ú©¥³-I§P8HYÈDŠ\\ª9‹”ÒÈS0xL°Hƒ>ó>Md3§ÄØR$G-ýÖð:NÁ€:1´À¿‰®GV)ú%(îþ£lÐóbsŸ÷€H”}£åuz™¾ÃÓÎƒÊæ83?Á­åy>Úõðóùá{;´]Íëæ4ð…ìQçŒXN»àH„¦\rmhÏ1¸ƒ\'*m„ñ=Ù‘ž)Õ@Ïïw×¶™LLâ	×ÓöõÙ‚‹{’ck€H±¾ñ½´,#ŠÎ1HiGÀÊÛ|Ãc@L”O\0ã²ÇâçIŠOðH®ÁÊ”qœÖ÷å¿UÊð“ùª£M€^¾M‚¯O;;W…ò*»´ØfÈÕüC±‡H³›} ú]6¢Ÿ&rnj¤+€ÃÎad0D0á 6·­XRžso22¬ŸH3×Eõ•H±×Â¥¾ö/Ú2zÚ\0÷7À•šÔ«[ñ6ÕªA\r~aAóB^|)\nñRJfÌFŸbápH¾}âUà9#PTéÎœ-\0vÿYb«—Ê²…¼F=\05¯jdµÏÅjË	Ÿ4ÀHŒMÄEî’]ñÅÆcá#°¹6™ß×–d.q=	\rù©‰¾´»€-Á@H2°2Yõ=XD6 úps#¹ç0lõÎuû	^ý3¾ÃÐH-D„eZ=O«¤<yl}XÑtqÝÒÙ®]ùÓ)±Û€H€ËÂ=8(§CÜ«JF‡ÚBþ´¿m¼ªY·?Ì)Êä\"×STÀ;€H‚^ŒF ð>–¢»$¿ÏUkCMË<AÈrŒ~2Û¬j/^¬\0†*NãÑ@­MÜr*w°H ßtñN¯Ïÿï7gu±`Ž#™ á\"V¢óÊå„Áî¿iµßDÚþèãiiþ…L²Â H hkl`ð\Z¡ ZÞÂX‚a‘J(Cý$¤OÎí„˜/m›þyU|çb_¾1~Ë-æ*ý£Ï6H¥%!1HdŠž\rX¥	íýGœIÞ¸ñØŠoRø¤-Êˆ.ñö¡€	Âž¾ uùm:t¯+vIzÇ+H¤º1v<.¿¾“Â¤	}d‡ŸÄ*ÿh/á÷VÏ«0­šŽû’þ[&ðÀÄÍ‰š@«49÷›O0œH¢m—ç=$>f€Ï±úEßy¿‚j,¹‹ýÝ‘_Dÿþl{ÀâG©ÊCH¡AëÒ3¹0åj Ä¼±3 ÃË¼È™„5Ñ<>¬²¦Etøðç‹AÎ‡qËóðÑôåIpHž<šj=Gi_)Äóx{–ÛÏ$bý=Qž†yÖ%Ñ2œ¸ZÌI^•—22Ë?æöuœ3o\r¬TH›B“Ó?g¬[ÕeêKÇÎ›Û.f2ükŒYšuý»ÍL¡”g\r©ÉYDø1¹åá¼ÿH¾M¾!ÍêÕ!&y¤çJû\'ªï(ñ•\'®ÆœnñQ„*kýÕ’šL¯8¾ëÁÇæœH„š_ôE ÌbÅÄ¥¸Ë%«:ŒVÄ£tœú	G›U”f0DzG·4Ú5ªi–Ò¼H“³o1=p¯‡ü>ƒ½»QÅ„}î5ÖPV¼v#foÁvŠ«Zw2ú²}^¯½:ÂPOggS\0\0(Å\0\0\0\0\0\0\0\0\0\0\0\0:‰—IW1\"(((8473/)0A*+\')+45301\'\'\')94+,&;./)29795/0-3..+)5/%+130%\',4;7410*(5540:<0//0&\"/-,33+,(H·«šrPJÝ\nªÊ˜Kr‹%“ëji–!òZAÀ®~ø\\eà…[Ú£Ñ¸P8ÕŸ\\H¸¹Øö9|4ÖN0zènÄ:ß]ˆ…mXï¹ýÊ´¼âH¸½Õã`Ë?²{ÍØšßÈR¤©\n†YðŽüÑúÁäacúøÂˆzWáXH·ÒÃÿÅ’EpÌæémÒÅm­RŽòOÊa‡`*äïðŠ¹EÀH¶ÑÊ¿¤%E³ôá;8äK×óGê}7j#ïe\\ÆM³‚ŽÌ¥°nHµ 4XJû@Îõ1ôæ”5§RÑ÷c:vy)BÛ¬gHE~zè\'bX1H\\wóuH½@H§AhÆ\\—¬²GvÖjHÞÃêw¤ó<¶·\r¦‡ û[X‡_T(tê»@à%nÏl0H Ð¶(ªˆÏ\0ƒÇ0hr®‡ýA¾=‘Úö7&äSe¯C¶ãÂêj(Âh<|Beúè\ZcÇÂpç8H0öÛ\nrù‡¸4¥Ùä_A¯5“›°…mÑx½N›äœZ§­•ÝÛL!ÃA÷B Hœ\'þÒÁ¬â†–Âzg´*8%Î}ªO\"²1L2ö¯µ#G\\Ùdøy~	ô(H‰$¾ÜÈ=-é «±+{Çø§EZ¯¬x³4ë¡Û<Â9±ëo%—H€Ò-ˆ-Öì;4‰\\Á))ëe¶›¨L²Ko\\R$€i¥>’’Púè¸v\rm`H¤V¹|…1©B5ÐEÏ¨jÒß‚“’ÿbS\røNk½€\Z](¦Ú(Ë¬æR5Ò¡õÚ||ó;}õ“Ø1DK¼Xˆ¸H®’ÔÌÄ¨ëÜ)~ê8}=©VÜ{Bé?wdK5,HFàaZHTÅ5º‰ÍH°,‘ÕÐˆ¼j’)Œ¥(L¦°‘_\njˆ\r&Ü‡D\"*È»@ÝH¬¦ûTERVî‡j¨œ()¹cs<Œ_÷8æ¯dç\";˜W7âHª·<È²>HHþN°~=öúT)~ò	Ïâá$`ÖõÒ©ø&/hH§CWwÒÅµŸFÈWëõ–3ŒQr“e£7»[\\#Ù¼šŒñ!z°®”H¢§ Û›O\0ðàØGüÚ¨O\rêÈ¾­o\rÚ=Ì‹SU}E»ÛK\Z´\\wM–dw¤õÜ,ïiHŸb{hªEC(\"VÚø\0j’£Æ{¤B°-ÈÛœŸ!±P`¸N˜šŽÆ‡µ~7g™nàHžmH]®î\0Ìòû\nMf´\"\0v0Ï€»€Šxì¡JIüžC¹ÓåË¬bÞF¯ H½Å¾ìÀaûàÚ…bÁ›ö“»i9Ï³ù&&£çG¶ ÑïÚ—Æ)°Öâ~eª85ðHŠF¾öâÂ\'Ü8÷jæ0’6©Ž¤=þ‡³Üé\\K¦ÐÌÄ‹\0Rèv´õ.«ï\\kÉS8ÀpH0‘¼9Âx\r\\ sì´µ*lÎÖ•ƒ¤¥œN¥¼;Y€H*Ü³S!pJäµ¹áÍ–ÉìõQbýwÎOaíU}Õ1|^vƒ<_.H\'ÕoVÖFÉ8žp8ýXKþ¯Ø§Éýé+Ü\0µ—Šô|4F•x²ëH€Ñß¡n>¾Y-tÏ*e\Zñª\"E¹2R[^Ë_•0Ø_xãá–ÆH›œ}ˆÇ\Z™áóÅÑÜ§­LÀ(¯Aqú³(év2Žd8›¯?}	ŠòÿOBÐ#²*ß»Ë†H›¥<Þ¦ßï‹‡íY‹ðÁâÀX/ÿÍ}dcîéåý—Êm6x–¨Û¨}ÔŸ>Œ¾©ªpH›µñì¨B¿gáˆ`*²Ä=DÖŒ1€â¦e×¶ø4ÜìÀÉq ¶s˜\'2Hœ¦r¸Q·CÑ	õy¬\ZðÅN^üò»AÞŒ|N´Ô°U9\no¦µHžç˜þVL(#¥y.1$ åµkÃæy¡é°Ïã˜}¨N°º0H¨’Ìh7YÑòÒ¼3´\'þëª@ñÇÍ×0vßì~Ö4TC¦wÖ× VôîµîD*qÔ$KË¶ @H²™‘ÐdÆä›°`<Ù®/r^]oÃ«ªˆMb™vlŸ\'ßv£¥˜|& R¨¡éHµ`*\'×+v‡aó³¾…W`ÈaaKƒ=“/‚Fþ6väUl¤Qß‚„:ŸÈËéxXHµÒTþB‹aí«\"9ì„pH¢`&+#<0áŽæcHwn¥\'â¾^ H±‚9W%\\CÏòsÝj)z†bî¯2›Ùñö¸bVÇ´½`æs¦$\n‰…$»=rŸ|¥H°ÝçPuZ,1…p}mO±ù4ÒÞ†‡Ó³¦Eû3¬[æ>¥¶s\'*Á<H¯B÷>p×*‰H¿WÈ¤ý4Ë¥ñÀ§‡ÏÃ:æß/Ïô_‰ÕÄü»hÊo/†ëŽä¢Ö3×KÞñ§sÄÕDH¿Xäƒëü;`{+GŒ Ô„”×5êN’’èkäDõî¥Ñb~¤´Iï7+¾…tþ“[åQ-awÄH´üÒÂ‡ÑI:ö@¢¾T»¦g~\ZûÅê¥*„òÍ¡ì\'È®¨%Tp§³O1`vÈe+Ü_18H°|wÂ<œ‚ë©œ\rH¸|iNŠºÐëdql¨¿¥LÍ­3ÓSDèNg5à\Z`< H®É¯Ó!\0úu­5Á˜Ç>ÿµíttO³‚úbž”	¾¼1Ä°‚’VË[]·)LG¼>” H¬YŽ¯µ’›Ñ£ß)nãG­±Ò.8®šâ\0û\'·²;Zº¬Qž°ª,H£IA+ëŸœ1³RnÑoKÀkr4<wÍ\"Ð;Z}\\Uë2ËH?^ÿíåÁ½OûÉìHœˆüW÷ËŒ³i}‡*r´ŸC^›˜u]]X6~MßtíoaæÁ^@\"ke\\7NÀH›˜\'×²‰çÍ_Þ2lägE`‘Âë=\nâfXB¶gL[EœQ¿ØH‰ƒ pëQJ…­ÐpÈÍ„˜¦È?nüŸ,¼PZ¬ÉÎîÈÁk7EÍ8§„\"@H€¦=ÉtÁºlÊütØîŽÞlæ!3 ÍËÈ\0×Ë.ÀB\\§ö†¯ž“>¸HƒÃÀêÝÆ{L9ü>™;*\Zz·\r…ä]4t×]Ö™%ºc€†ðƒJF°‰XµJ»þz‚€H®¨ðåäÙ†…ý\nTE‡õ;SÚ†L<énW¯ŒÞíö4‹%l 6²÷Ôa„!‹àH®·˜.>ƒH÷½ŽÓãÞêÓÍÉ‡ŽjÎê\Z(¨+á·¬\\H® bÓêC¶õé¬CÃiÎ€**sv‹ÌÞŸ²× &hÅ«Ã¢)HêªŽ]Ž£Hªâ¸,®Ô€²¸%~êÉ&ú¸ož`øl¯úv1\"Q¢YW—3{|GÁ„D¨Êž²pH¢ƒÒ¡oj)óvÂ\nOå -5sÙPŠ=Öwf+·7OáŽp¤îrVÃ+Œ[d»Hœöb^K;rðÑŒMýþ\"ñOéÔ(¼\"s2&ÍEq° /È@¦IÐtégHH0ð«ÖXø2&h‹àqþN\nÐðöh¼Ã˜DøÏbt—WBê€H/*µ87ý¶Q4_˜uüÔBN\'¦Ë§è˜ÄŽ]mhzÄê°‘F“rH-w#3ûQô´[$»^GúíiØÈ\0pº©‚WÒíkh`Cjv¨&×Ì³šÀH\n|ìgm;Ìç–H€óòÂÃ$F#WïÌißâ Ìâ³¯è“{tÖåW^šÆ¦>uíÙHœ@¿~’h\\.°ÞöòÛÿZ`%bRÜ«ºê]À<o#œŒG×—¨zÄm“m+Âª“øÃ«÷Œ[æ„Hœ¼Aë»,«”ïæD\n€;ÅøïÑø¾D-\n%M«	´Ô»Ðái­58ð¤¥@Z~Ùõç»}²HŸVÙšhmÄE˜%Ð;¸”†,–\\1þˆž\rf¤(õtìë’Ñ‹£‡R©mD§½•€H¡[|,}ÿªÅ?~“ã\';íØP·÷¬D^­ëz\r¨çÿÆÓ¾bCÄøW_ˆ²àH¢úflÅÔ®v8”†¼ÂMçºÕÍæºÕÛ’+ÍLK‹€I»ÅÍ0°ž	èí×j@H¦RZŠž%É–\0øŒ»Â\\û¨˜IMÝ–ŸöÞ¾Z+¯ÿºÔ&ð@0H¦m±Sá›œlù¤Û=¢¢²6\'[›r-¡Âs3Ã«PØßÓëÌçÉ.‚ØH¨n¨uÙýè•¡ ¤S5­“4é— H›×é7ÎDZõ™EÙb‚uSq¢\"Jír‹Ðkô«H«aèÎØ$®\n}Ç\rG¶©ŠâíéÝ.OâkœQÙ5ùÄxr±<m‡ºÙÕ5^È°à H­\r®G¼d:T)Ö†¡R£ âÞ\"Mufó1)Å¬kï÷³üñPGé³:©¤‰eOÀH­ú•œ‰×ªPÎv©i^hg0ztŽèm§9yþYËË_–Q#±ø>)=¿KH«ç™CR\nHÜtø¡ä_DÙë»2…xÂÿ_ïRÖGtr°ŠÕ”J¾GH¼ÒëãÉÐx.ŒDa”Hµ^6sb”–‡MÏ8l’’BlRçÿa³égèãvðü -Ùÿ©³¯ûpV“Í±(8%­sýÜ”ÀHµç	w?ù™8”o)u\r	YiÌ¢[’Zr†òUÆË¿mòi\'$a­?ðRUeR@HµCÖ4áÃPöÎ‹~#ØEH0—îÅ#Œ!´yóòygõòÞ£ÐïŸ‡«ÒhH³.„ŸÔy…ƒ©+•‹Ý•Æ‹ñÐ’ÄÓ;9Ì=±%(g4¹êM‘nñ’à`€H§.L…•JÝ*cmÙNNKÌÉó°™Ö$©õ¸âÄ÷Ú<ª»°{û³ƒÏ)£p\"ÜH‚>a •7ð.§ÜYÕŸ\'-—Ýí“Éâ3ØÐ`¬×ï®L’H7‘Å\\R2…%§Õ¢”ý˜Íþãµž5˜ÓÔ­5BO HÐ³M™{sÆô1R¬êqt\\Ä?¿¬§Ñ[LåÀøkìw¾=h3ë>à¶’»o@H’Ã”n\"Áoë}vÛh\'eõ“Qñ²M~=Õ%qÝw¥TÞÝû&ZÊ®1¡¹bH„‡eHÈŒ”Â>dùÂ“UÖì÷ëéV>øÞô³Þ“Y=•%ñšèj7ÌÎHƒ×Ô—	‰±©S>ZÆ€‹Þ%”Ý±ŒÓ1~ÿá	ªdT¢´1ÆN¶hà\\…ò¶RH°w(üü½N\"zQÎMªât<kj<Ò·¢lo\\Üò±„Ô¡ç¼k¿>´L©`õlÊH±sø=QÒßKSZžKN0bAü–-I+“*„ÐÝÁ‰‚ÚVºú¡£Hªï±9é=”ïc°Ÿ?	Ê…PˆugÓ’QÁÐÛÊ¨Ã„K(P’R 5´ÔH¥ü”ÈÞÜ¯m§DÿZ·_üo˜°3-ÃMÒ•\"çÈñíÄÿÀOggS\0\0h¢\0\0\0\0\0\0\0\0\0\0\0\0u?;*+)13-4341\'#.:20)+.801--1(%%## &!!!\'\"%$!!%%\'),#&)%\'&##$&H¥A(êƒAÞ}˜Ó±Â\\óûAËŒæñÛ‹Yèèôp.¦>äeäH¥‰Ù%•„çk–;¾þWàª¡5\\ä^z×AM\0\'?}ëžëèîÄÅ9\\H¨hW[Þ¯OÈñì#¦º°¡î½1dië\'ÇvÒ3©cU•ÁrØGä¬ðH®¹î=£×m;°wÜwµÄ·Ÿ‘Ù~Á¹QxÚ(³ÒIÙ¿8>QÄ¹±Vþ€H®éÂé}.€ÖB‰ó0“Fà<ÏêêýÛ÷õï§rÃ‘dzÕÆX“NOSg ÉÀH°eŠD\r£º¡ZV9aK*ß¼ñÃªu\Zˆ3øDrð˜¨ÖÚjF½{ÀE°H®ëªª¸ŸÄÒ×áFÎ±U´Œq)\'Í p[B2Zßæ>ÑÁmµŠï:OzÄªq_ H°bÛ£¾Ë\Z¯5¹”h*<Bsô)\rÊx“…«ºhÍ\Z¿~ÅŽ1A©¨æ3Y}Î¾ßâH±ökÝá€Ù_Ü‹Šn\ZkW;Ž0¸1·ß¸ò’7PjdÒ‚öéq6¿;ÁÏhè½//€H²‰±T»\0x·A§dç¦Rõ“j&—a•JÅ#Y±Ñ„×3‘:Z› PÚî†>›€H²ãã#‚fXÁF?# Œ–ÒÙ[‹Ö„¬IÛ@A2A\"ãô’ÙûlÈH°hwâŒüXg1ìÃ€XÊ,ub\ZÀ»7	]ø@<H°4Ú·Í3Ï‘8³éyÀG\\«¿š7X<˜ú.à\0Å\0 -«îû¯ŒOH®S¯$¶«a˜LGB÷`óF³«ÙÕ&êF°[0ÍCB²0grœlêz\0=èC#\0FxŒ\"O¬Hª“#\Z“ŽpçOê¢ám `ÛØDõÿGl?¼gÆVÜ¬n B³âÅ…Ö²ÌzP\r@1ÀH¤¯cµfX…Û²è_©V`÷EÖm/©•:éØÎÈaºŸ{ôÐíx^Ç,{þôšõ@H¢\'¹%TLÅ$1U/QrC¤ßU‹²_Â6Ÿ5‰€­Øñ_«HÀx·€HŸ×(°QÏp¼EÐÏ_@ÌTgdÈ;KÕSf!Œ«YAi¤F’ƒ®0ÞVÄ Hžtn¢Ï¾3µ\rBÑ¡IJ ¡ùdi£­ñŸkU.j\'Üþd<9³6°z1ÐH£\nñFÄAœô¬üšÀ!w †–‡9ÿb­-¥àVáˆ«®c½=d	Hññ¿ª[æŠ—Û#ÕÛ€H¥	 •lÕ™—¢l&!Ôí ƒ%*ùkòµ6·l¾úB¬4››¢|ZMt5.sEäƒ¶\nH¤»ÐëÝ—sq¡S4\"ªaÑ_Ð_ŒdÐáKŽ{’!áí|«	&Û-§SaY H¥	µbÜ z–³evûkSÐDqcÊN8,*óØL¸ø¿,žÐMø«u¼m ðH£ÀïØJ#goúúaêÔ¬·gœËûb•Õ—u}k¶çG¼3ŸZ1Ôæ#BäŽ@H¢z[²çò<OÕ\\W§AÑ¶èŽ9ÆD«¯lÓrkÏ—Â½S,êiÏ\'Ä#éÄPÞ€H½ùüÛŠLÒNAV$Ò{JakËIE¾KkÙ\0œ@ö%€äàHcO¬ÿªP“\'ô÷_â)‚Úät@«\r–n;‘éYW}¥0H”Ö*Wš\ZËéP±v¾`—¾^ò*?#ŸHšÈTWÄH*ñ_‘¿MN: (É)g­‚å™\\Z9¨¬é¿qÏÔHí†Z\\~ûÕ\\‘K¾Ü\nýœ×þQ%Äú¹³\rZB’¨H$&T¨)Ù­¥‹Û¨	ÏÔ¿Ík±”Fe3 ÆæßHŠkô\0~5üÞ#VìtÈwÏå³û™ ŠëÜjõ ­-H*\'¡Ù‡%ˆýÂºtÌk«‡±ã\riga¯“¢;Äâu?²Q€HÑÉ…Óê°ï†¦$Ïüì^€!Ex€\"þM;dü¸HªL`¶Ã³byÄ¬;ãtô¾€Ši‰\'vê\0ÔbÕ“æHàc¿rZ·Up1;ûugMóJøexE¥uíàª,Õ0H¾Ã ¼±ê­˜×¾(¶!õËâªdò:™a	HŠU„Ã0Naãðp;ËßšüKyÀ\"qªk]×}iØHß#ùÔ\"Ô3 ¥Tã2ÞçS1g$èú• JÅƒ/9sØC“Óp2HJ”-…Aêå.‰ýÐ®:P‡s‰Û—jö¸àYQü-ÀHàf` B?ßòàniž·§ÆuÂ‚XÉÇ”ÆOÏ…B+µÁBøHÊ¼‘Öæ‹¬\'{áêUi?ÄòAë˜­Jƒœ–Å¶íZ0ì€HÒ`¯çK@Ójô³ßã“€\ZÖïY¼<N8ÕC.FôRÎ±H\"V0¾9æ••Çì®&ðµú**Ò7‹è-¦\r£xlÀHÞâÚ½\nðÚ|ýªUðç’,SŸ/¹D*Åxt}H—ÓðHàÓ–œ\ZÇí‰82æ‰öI¡,UU¥ ‹Ç….ÔÅf˜²ŒYH\"•¼QËOce½rÔ—Üß_ÐØ…6M1r=¸‚=Ï¬KÞH\"–bM)t!ÈcPÒÉdG,Jrô\0˜ÍÓöüüVtS2àH\"–b¿°î¬íâ7ø§i¾8!ðCW—H–N½¢5a%!2Å\\SdîH%8ƒ­‹èèÖvOLQk+¤\róx[¾†ÎÄÚ—\n<­ÀH$šª>Ý‹ŽJà:+ÀS¹‹†À«¦§Ë‡¾î…oowr8Ž%¶ÀH\"÷^=	2ž>5>‡{…c¿|0½‰ÓíH\ZG}Bí‡»\nßtëa$ H$âí<3Ð¾vE8Ú™¥ö6=»Ÿ¶U”në5¿‘	(¬ÛŠÐH\"·6^Ùt˜¨>m!œ~(…«ºcÚ°d~+Y\0ÊÜqß	‚\ZèH\"•½£Ó1î\'‚¼à¿d\rÓÇŸr´´]dÅ˜õÔÔ2­õÐr`H\"ŠáÎèÂG ãðXwˆÏDvµ\0tDækNý¼ÝXbåÀH!ÏMŸM£ÏLkW\"­\"Äa›†v	„ã@ã\"±\"(#7£€H\"§{VéÃî>8Ä=a:øíÃÅK_ãMsÝ\"nK”õÎV$H$vIÊnÀãoÜ‡ïbÃ8hÈ‰ÃQÝæÏËQcªµ°qõ@','Kanchis punchapi masatak ura shabajangi.opus'),
(62,'Â¿CuÃ¡ndo sales del trabajo?','Â¿Maikan puncha llugsingapkangi  shabajumanda?','2022-12-05144212601478salidadeltrabajo.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨‚\0\0\0\0\0\0\0\0\0\0\0\02à5åg$#(&&(#)&%%\'(&()(#%%#!&,(&# !!$$& $&#((&%##($&++(*0-#$&$%\"&\"%)\"\"#\'*>40<432145+)\"0650.,110,3..%&+%7HäÁ6ìÅ€Hà¾ò&\"‰ï~6…}üE€H†\ZÄ	G\"kÂM[‰ I}à5Œen=ØF•|¶L>©9ËH€+rû°«#÷\r~àG˜±Ö±„äº˜›ÏL¾}9—B\nH†ªµ3p¨áç¨ÃÅ8çòÅY	Ca÷žnk¡§Y(¥}|@»€Hê%˜Å\Zž£‡)3Â©²o[_¿æ.ÝUŸËÔÊsäo\0þ:XHÊXQ2 1Ç‹ž\' 6ÿŽí,£\nÜ°ƒ!mÂÒ¦!w¾Ý­ËHK©RÅ5Âá\\¥¶‘9.°‘“·`¾T;—ý¼TFÚÔùÝÏ˜+Á€H!ÐHq¾MZ9«Ž·2Ì„™·9y÷oÒ*ðVH!ïnÆžÀš”Ÿ­:1€”‡öèÚ¹Ùšœµ…/ƒÓÜózrû)©ÓW¿H6ŠûÇIO,…°@L8‡+W*5;1Ëô_2ä¥ê‹«~•›Œ`H%oàþª~`º¬)DË‰®‘³Y‚Ö¤ß–Œl+SÂbÛ³c¸ÆH%o¯¡×P\"”_í¤Tµ»-/î:1x$ˆ»­(BÐH%o[™ûZ~Drð\0nêh3î¸#[÷ÏLL‰wJ·«RNwC¼bH\'®¤äÊbˆ\'´¬±jäÊ¥ñºRD…Í6\\Í÷1ã¸&Í-ä#ÈH\'®–þÚ„‡Üd+F™×\'Œðpdö½CâvüV$±îlb}ÑH\'œgB*¼½“u1ÙÅÖºÙÁz KO¿aHGÌ`¸+P]1ïÑX H\'®‡¹åkí\"Ì¹l°yy]UHˆB€`\'g¶Qì´¸vî[pH)—e+­ÅÓö­x‡º÷wî³ñò6šÿÆ7†§í«›={íà-H)—dÞŽ£ÐthÕ‘ÏcŠcº½…Fç\ZoøNgÏ,I€HÀ@EÒJØ•î¾”‚”ÿ1´“‚×ûIrynÜWHÂ¼k.Z{vÎPž*¬Ÿý\"$PÏ£Øq®y3P\\„·@H\'®¤Øv)ý¡ä-LÂ¦±‘üLfÀ\nüH6Ë«]àVH\'®–^üÂï¡å¯\\l‚ƒ„Ák†Èñ¼Ü”Ü z’|H\'œ-%†”TÈ—ù»vËö	þ1ÍÉò¡ù-ÿÁ†-…ptäH\'®•Ý˜_*g:~N*øåú[Avo[žÏÓŸU…ÉH\'®¥$5Å_MäU{åRg\n‚qŽN!†©N¢®†i€H\'‰êŠy¬•Qg4\"IG#b-aþ²8èîM¸¾äÆ(åÙWÄ4!SµH$ôN.\Zj}¨ÃƒDcQP‹XÔ‰Ü’ºëövœ óî¤;HCÃ´ÛÀH%Ã¡ÕÞC<u˜É¿‡,p?qùÈ‡3èG”¦æY\\Ð…@ H%‰hXM40Â˜â\\W‘SH‹rÃÞh|Ë“ùÖïG¡Ð(X„H\'®ŸB¶÷~éÀö`ž\0¬•?¨&¬F2Å“D6hÛÏ=¥H\'¤0PÁJaaÀ6±cF«r{÷q•Ø_ñÊH])Ò\r€H\'®•áþ>È…i²s‰Ù…µ \r¼Ùžÿ:”Ö`eWH\'®¥\"È¹ƒça~œÞçâÏþºGßUíU”“yH\'¬µù¬9\Zª¤²Z~ÓZ3¹ÁÛßšBÂ·NÂ=Nu6(H\'Ñžþ¿|{Æ\0oRÝl{Ô®ú\ZkþDY!C%sÞˆ#\r€H¥NÛ/ó¬¿Í\Z…QH›¬¡-ÐN—+o`QÕœv¼ÜÞ°ºOH*ÚãóìÎˆ˜A€±ñ_©ßë\'E`è®–wÙ„àH\'›<]ŠRÆ\r~ž0Ø»îý•ÞíO‡Ý)¹!J´“nÕt%u€HÊ’¦Z-êiëV]J“×ƒ´tki*)²JÄ2¶\\…EƒBà‚€HDY.0Ðwáw\0mg¸‚Kd×?‰ˆøˆÍËý\'ki<âÕ0H)ë|vû’=5„@\"5$C¥Yèì¶t	„½GÉõ&¡öèšÊêHìÁ® Ö?¦Ø±º}L_¡³Ý	±o¬ëôÅãË<?ZØ‡mVÚopH’J&l©7	ß	–nF¢hÅ±Ð‰WïÖËø­uþë HiË0Æö™Æh›r§@ÍI¨¿:¹{) õ¥þ#25²HHbêšž‹ÜÓÍhÕMšO±q`Ð¢56ÑûkðPî[2¿:ÀH4A¤òg\'b•._?„\\æh÷ÀÕ[F¡,œaë3lý¨ ˜ÂH,4a×ˆâ¦œÜ|Öt0¸ZJò«àÙ·¡Ý$âÿ_¼L£j¾ÚðH+€©pj¤Ï¶‹FqÎþõâI¾(œö´À$š ;TðH+m^SºÏÖÞ~¾%\0ÈJÐO^þ€ë~Ö3ÆŒÖ0êHj\0\'Ç¢`@ÔŒ§˜_ZBö×_/h\rñoEÞßkQ]„ö2Â°»êH+€°ËÕ\rÞ	Ë^\'m›Sy,ÉQÞjõðaÐ~Jrš(!‹Er§€H-U›™àâ©;0:¬îÍZ5Ä\'2‚!ð~rO¨ÇÕ§€£¢Ð€H-U·	µÄü”9Ôû/ôÆ²®1°Ò¯2v©éô·aZð“ó?ZØÞ H-U·	¸IªÝ½ùuyÑÃ€šuç[`¹o-N#aGaíiwÈD[båM.óÐC\0M\nHçîËÿrÈ ®¥ï=ViÖ[æÓœ1\0&§ÁÀ\\£»×D6Zœé Hc^¬N?÷[iF¬[·¼1+8Ý\Zù¬‹þ†:•@çîxHWÑ%å0÷7akaÖž?ÈN	/1°Geü#Y®‰hH1:ñ,ë|7É¸X°EäR¶t6ÐÍ[:*Fÿ5yÝ®/Ž¥f˜tH1\nqÕ“·šlxKVÇÑ¸öxÉ+	&”Tíw—Ù!«âK€H/EÁì™”l\\¹§.m*ŽÃpBa€jÏöp áÜ˜ùÐH.¿¸šIò€Â0Mx££ÿûž2ÌØ}œ§âª¾j¹€H+gG?N/`´È”üÃýtƒ˜™ÚôÖ™9\n~ïôµ!ÛõÁˆe‘óH+€oèŒ?7˜Ìñ;<uÝ{Õì%Næ–¬gïÆ>+H*î$Ø^àCË8Îi\r0¢_…\0øfÕ	aKÊ¤>†@H)ƒ½ä\\ý*?ÚË¾“ìÎ¨U	/\r€=·Šp- \ZÕÊ²¹Ug€Hô²WPyu2I3e.™·ßÐYÔåÄEe5I\0hx?@p!æH)ƒÔ\nw+öÛ‚ýÝ )ª—åŸË“4ÍqI×«æþÒ1€H)—e&ÆdÍêCñæIúþb-{-]°þ¡œ»ÁiÖíñÚ»‘H)öÁKÆ¡Q[Ò‰n²ù2ñŸ†¦Ði†‰ÝÑ¬9¼¡ŸÊÔ¤€H1×\Z5³ 7šæQ¸ôçÒY–ûŒßa!tCzÊškÕ½tJ®/MY—ì?@HQ9‰kdÖ®Ûº®´6·¾ÜcåÞ[íLœËê	feKööØ‘x iÇ	,ëlnúYŒ¢U ÜÚ\n\0ÚL¤‚Hžºæœä}Kœí¢™ÚüÀ»0 :4è!ÛL &ç`´üÝýA¬‰•Œ7d%X´Hžò)¾õÕI*Mh·å[z’#à&5®à‡Ú?ãI…ìv¨7Êì¯lB)+¿&c“úH­†é^1\nõ£²StIÙƒ_™O³<‹I…ˆ\0ËÉŽå¬}è-ÈúÏy!Êã†O7å¥äuù™Ï0&ŽŒ0H²žý\Z\0®·üøoê \n+æt„Ö(ŒK !¿¯É0ª)1àP\Zá&¾ÔÙ¸s.(¦€Hµ$£æ€ÎBñKÑ^ûj£[MQûáu\0ˆªwQ5¿ïº~ÑœfÉÅÅöy‘UrÏN$HµôO —ìL çLctï‘ûíœ5ê}™Sï›.äh€13=´\"bzÿ•ADPX×Üþ®@Hµ¢!›)ÃYF_¨ð|!	]â×ä08D±u±§†˜L½Dè6Á€|“Èb>üï†0€H®\nŸtAjè}Fùiê‰ŒmVôHÆq„ÑH 7Æ®?¸d¹VÀzÒæª«ñ˜M!üJ„€H¾;èìÄ·^V®O,Ÿº¤Íä”|‡0$^:º\nÈÒç«ŽýÕkÐøÛã‹dµ¦øÖF°H‰ÜžÎ¥£ú«@H—Áš<šH¤—e`p÷Ù#Xs!…ÕÇ±h–©É.ÎVLj€H7æ\0^äƒÖQçÜZ®1Éˆ\0Û Õ¶>dÕª¥Î4„©7cµ@H,ÌêÄ]tvÇÈ]à¯c|RvLk¨ý<#HÇÒ~êÀËìH€³.ªÙFQ[‰HhžvdÜ©‡—)·YÄrÏ©j¨ˆ\ZÁ£6¦XD [·e€H±ZnÀsÌ<d!‰ÎÂ™TvÆ©}¾†§q6míbÖ¡\"Pyý‡²-ûøHoþ4Á¦–$.ÝàH¸Ó!“u‚RûÀ2×mÈ‡_þ`ÔÀþ4¥/í\'J«kÛJYøgK2‚†—\"´0(lŸ*u9H¸fîûc8x¸\'G0ù»rÐg´ÖÑå^ïDådŸ<”<WÁ5Ë\Z |²A¥x’w¾­KH¶ÌØÖú\Z¡|Æ–TÆQž­tîÌ‚û›E}êxôkPn?ýªÓKª¤«è3¸Hµç®ssYpu\\É\"0€%$-slÅïª.¨¿ÖÄíÕTkx\nªW…sìýÀH±\\¥‰;	ÕôžÇ6–è”êËÍ²\"hsvRÔÈC<Ü±3ŽNãTâ?#©Ã¦(9H¥óžYÕXék«Îù R¦h•ø6¡¹g\"¹èÐ¿BÓü¬nTÝˆ§kÐ¾— þáì::H£˜ŽDN±¿¹Ë¯±Æ‰¤ÈeÉÃWÍƒÕë\Z-?F•gÀ[Ð¸:bÔ|ú”ô ½€H¡R…@Ha\r´ëDTåÊ\n©{ˆ„ö™Ã2ÕZ‰›NÚˆÆÎW±ì+®g(PHžt»€¬=ºûaÂ™Å•ÂUlÙŸ\\2†¢’*.Ë²ÙS¿ÙP°À{R„ÞŽ6«’vîHœ1Zrœ0—Ö0Q\'LÆHÖ-ÝÌM<·qûÍé)ŠÝ&Û¾¼9	@H›\0ú§Š\nyØ5áPbRmt¯Ÿ‹úrÙ-&²ØµÚÞT±íÎe`\nØ9áHˆTp]uc€³våZGP½\rR²]íÔÂ>Ì^½Ç\ZÆ\nH‡äØ­.RäP|Ù%)ˆnC7Ï£í\"hÅ!¢}Ù-—z°œFaXH€_–‘ò¹«¨M–ããÐÉð3—áÞl\'\n¨â·¢%SÞkC•N+ðjBÀH‚g£cõ™ÿ?œJpˆšáó	E[pßÕ*ÿ×ˆã‰Ÿ¨æ/xlH¢&Dº¨É˜@‰z¸#‹&ãnE\\†Î>\rG`pC\n›|¬Ëì=H¡a¨åƒ`ª@)‰¤ l\'Ë¡–|OggS\0\0(Ô\0\0\0\0\0\0\0\0\0\0\0\0ºè[)Z1/+*,,(%**)3-0621@52%*#&\'9<1++)&\'0/:<;0403,60454,016,8.))(0&\'*,864.%12,!&&% .+1)+,,/,05+H L…G&q|üÈq!k8ì{÷µÞ”Þ\rY6¯ØàÏ%vG¹n‚´¢Nwb™‹4H¡ZðÊ\\‰ó\nÌ˜qäçOª¨O¸¼îTçÌ…qN®xuÎ-,„;õr~ê(?ôÀH¢‘¦xM+—&“1këƒ¤:Ž>?A”@Lu©u]Pñûú!×ï”è°\"AðH£Ó>—ïïÓ…²d‹_ÆÔ»ž/£™•Ì¶qeÒ‡ïÍ”S(]–ufž H£Ùñõ(“×w’O½®d¦€´¡¯ª£\"jë˜S#ËGYô«ÐÆãµúó H¤;H¿J íz–vÂ¬4ñÂ¸ŒSFwÅZ¼§Y©öSŸ’[ÚUÄ²5ÊLÏèH¥¶˜n>±ÉþX(WA	.XUPw·ŽFÊåY	´Œ]À49¦˜ÉÍôH¤çY¨oˆ~ÖiWýÚ%†m¿”™%*e€*Ï’f&›Ââ€H£ÚMmúþ´}¾J°·D®¦Ö:ï\\&F–Ù,ñ8VE³xÙþ¿GÝ$Ãy˜H£m•íË DoÓ>ðk‘®[ö—ŠÇY¿¡B+iy~JpÃ0\nw4@H¢\"¹~3êRŒË¦è 1\Z°¬¦kéÝ¹“½ÿ¯µ¹°#¨a×€qÈàH ÐÀwýÃÊN‘Š‚¸æ.½‰Mã\"¶o—^¹)XéÖÐ)œ†9^ÌaÙñN×†Ò)ÀHž,ÜçJpÒmc^M™h†Æ—5œ/lC}PªQP”wsÅðzM=­àìŽHš)ì· ¹á•Zh~…;ëw£Œ³ÀÌ\'¡l0ù\"H›Ñ°ÝG»µAÎ¡líàH„%*~€©=¬<}0ê5÷<ÈX’&oî‡?â´»ÇáKqÊ€ZþX-1Ó}¥h0²¸4!ÿÎOÅH” Aö¦ßöwhºf‚îê}¹Šú[J{†HÀJ”¯°Öÿ¾zõW#Îªïõb’®@²H•K›Î<›÷ªæè¯Uøø‰#\Zi–WR–\nwÔríé<Ó^ÿ(Í›,0š)œ¸H´×Ð—Ü¹&}j¨–½owë–7]Qä¡Z°.·­~%]\'r¬›•ÌçÐd*L!7´ñºmÄ¥+éþ‰« H¶C[Ê>¶ŠâÎ‘ên3|Á˜’þÝ	P¡\"¯\nØ˜«‡³þçâºþ‘ï\Z7Mh–æ€H¶Óc^“ñÕsþ,ÛËîëFw)½ï\rnÍ]¦„ÍÀ’l/í 4‚©aŒv1&U«ÐæHµëÄg4Ã1Uøž-\r_¢/Ó[˜XŽxàP§s¨9Ü“—Á³‰ºÈH´þ5$\rU¾¼\\&Òô.¸°¨mypÀñ7û€´!‚Ëí¹Ÿ82š„€H³oA² ™ßÝîÓ…ƒÈKy?ÄTé*7Ü(pÊ`H±¼ƒ}¶éY>eüõ®›Ó¬Gœ1®-kÙû<5ÊâR”âk´H¯Âˆkb~L®``Ã˜ÐHAî:¡è¡hP&ã^Æñ“@’mw¦8Hª²§TKÇÝò»ÔÅ’”©•‡CZ“õ}—þ:é–n°ÆqÈ^d¬Œ‰üpKÌ<d*(Ä%R¼ôH§µM9ÿ“ee}…“-%©}ÿ?<ãx	6[¢C ¥DÏ\0¯¯Öû/³9lTø³XGê½¯ÌïöFå¼@Hîà)Òþ¸c°çÑíJ8>Xå·\"í\"Y©uc†Žþ\nÖ¨jmÄQO±ã+	®‰ÐH‚6tu¨]½O‘¸5ÜÍ~l<„¾#½ÖSÌ²ß·ú½Ñ	ª5Z³ÀR€H4b´šœé+d•uš‹vˆÒy,ã¿@NG†Í&®-ïÃGdl°H,®üý,G—\r¢h|«ŠÐiCŸÚÖåäSÝ¤œH%9g´!_¯+bÜH)p_Ø\'“R©„ü\\M*úLv•m¯ááÄ\'f\nypšå¸H\'ÚÒe¶el)‘A˜\\IHG¥2CO$;.lžãœè×ÿÔ¤ÂLH€ðû¢l)Ñ@M+w£ìýÕ»<^Åù[ :âÒzx›oY+w˜ÂO•¸B¥w²ÜGH‰*5_êX_·Ûß9ð%»ÿ?^~®9/¤¬ìš\Zû…ÉéF;	“¸ý´çÆÆ$H›S Þ¥Zê@y!‰ ·ù3ƒòXÒá‰³X7È0æ¥!ÿàCáÒŠÛ¦…Önjÿ·ÿÚ05Rê€HœþÙw7û©ÊnåaÄ¾ûúJÊý²Âl1nü½».¯‚*8XmM­ëuhý\'êæ9”Ž-„pH 74ŽÛ³MleÇÿÎôŸJw0v/´%Ž²ÄrfACÂÛO`ÇM”¾¿Í†3ê(Ø’¬UøH¤	`|J*IB£ÀxÙNúÎ\rÌEvñ­SOÃrÔnMA·W ,mâ] µÞ&äô¥ Hƒh…±ÂÞÀÙ¶ÛvOfG]ÄºÂ˜–,°¢8¢ÒèKkluýã@^˜ãvüCçå*50€H®C~|×’º;\0ºYâ²Ñ»(“ä5±¹ð+aúy-tÝøå3),šÙµ„»}üH¦kâ>\07*†¼ÅŽûý¥ÉÆ«=\rÞÁ\\/rwƒ¢ˆùÊ‡6nÃµS\rLZË¤ H¦-Äü&Í÷;ºR”[Ut}xøÄCãÊ†0/ZÆ¿Ÿßª_€CÀ¼ÝõÏáb¸H£•ËÓÃlþÌ)OÞTìÙ)T™†1Õí]Ê}·’€~˜`Ê\\gàÏK\Z(N§½\n[føH Ð¯”(ÃƒÍŽßZP(òhšÖ@:v3IðjgY‚I{S¸ãt{§vÂÆZ~ÀH½Èõ\\ÒqÌ¶¯‰§ðòîÍ%ì}î!­šFAhk™n+q|cÀW­?ä2|¸å¼@HÉ\"Â¯¢:¥ï3«²‚SI+WÅ„v÷š¥W¯´v\\uà‚Îâ­±ü\nñÈM¤wÅƒÆ4H”F`ùŸòºÃ¥¥ù<,KRi|ºÇ.&d¦é\roKGÑšž¨f4õþL9¼>DA¨H“èkuB$…M#ööÑ˜ä¯òÕƒœ”-†»£³AºœÀ\0#ï+S4!Î~H’…z$ ·Ã*®ÿ/‚-eAs3Nµp‡†ý¨Eß[uœ;ûiT>¦ô)3nt8àH’0\'YGCc)ÛËëm „ÐH©	äaÞiL~wK2?µ-–þÂžœpq¬;„YFl<H’“¿Æ™fÀbžh„[E×fø,ÚAè…z²  ¹ï¶p&kB—ÔFì_S½é—Ùã\"ìºPtÆhHƒ¦¹ k&\r	‰µÞÔZ\nbnÒ­ö¾ÿÕWDˆæ:S˜`¹Ý\0˜Ó}îH«ìcS£kØñÎ+ìh\0qy  oËtŸß(er½VknêT7÷ÆŽ¯.ÉÃäžÎ”hˆNNŠ§2¿ÎH®&Å¯³>üäõ½8ôëZqÌêo=ßì³@-jo¤—=—Zþ_Å©HHªÁ<÷¼Çóq…ƒñÆ/¦xŽMËX…p5€\0ÿ`iì2!ŠˆâþÔ…pH¨öä,‹·lçÒñgÇ]™>9Øƒ{\\VTÜ¯ã7Lãï¹_³€H¤¨®¿Ñ˜S‡ØÞCû>‰{bÃyü0PÄ\Z#¶†i¡ ëÙQâ¶HŸÅÚºî¥mÇZ%ÒÉš$·<–õ‡V%þ£JŽÀ¸°õ¢õ6Kë´d‘G¾$f4Hžw,p)Óå\0y¨|q…	fþ0±´°_yK G5«„zï±ÍHWk„äo¸èRA÷XŸNF­k~«¢|€sºB_£¼÷eòcqHœ”ëÍ¸1&…#Óµ1ÝZbë¸FHOö—ßB8€—¥¹?ÆJ1yžÏÏ³ËHœ}C/Ï³5”RTd¬;&5AˆÛw½çE;1Ef„°\n¼ÅÈÖ}H›¢\"¼‰C$PUÝ¦¾;wKÛË¹ø¡=érÕ•ÍñíúÖ!¶]Ú×0ûÛ?Ì ýØc,\0ïH¬väÓ ¾!örpNvž\\àûRë D(0ÿ¥´åRÖç?jbàƒ^9rJâžä<\\ÔÀH°CÙàò%«KCÂ:u˜\\O*\"JÉó©Û~`XSêc½ºãwô¡ÈÂ>U3J¡ H°8-u²­ìÅ¥@³óš°õé.¹…E½ 9ª¡¾-ž`«}#­´$…ä H¯×o£Ó‡¾¦hÍÁù¿«ý¾w‡~»É×,!ãK9×°Hª¥ ñ>‹¼®+ªÝñ\'ëVf—ðLû\Zã‚ÖØÞ`G^›ÎñÙIÝ±W£×½^§5€Hž.a+ï1è¬4³§•ÇµíšVmmÄaåê:¨2Ï:Å(ÞC+öl-£yÔÎè«.p;¨jH›{	c(RÏ_.\\uÇ€¤ÚÔ%CJšsÌøm¢¾8;r?Gžü|ÿâÄ¾´<H+(öeØµœ™Ú‰©ä\r£‡-‚”JÆßî§Ñ…r`H\'„!ÕB—Ñ½ª|8èÝGô¬æÜöà9]‰ÓimÁtÃ)EÆ¢ÈH‡>½g=ãrû`…°Z©¥XÚ>ëCxt;¿Åp\\3Bñ1’ôHƒw˜|âÜ•–?€%›Z>ÿö,8tR@Hø”R}‹!Zö¨’LÆ<àyœö­·‘oÁÃ2×H)E‡ÿ[^Z¤bd{£½þõÆØw™ûïµ&¢¾6Ë0ÕK Hf›ÄƒÇ‰~#Þb÷Ç_R;þ‹°¨´}ÇZV`H€có2PîV˜.aÖRBvÇßg•­$5¶úÿgêÙ‘3é.þÖ3Ëî°añHù™Hƒsµ—Mh3’C’\'¢·]ÂG«‘Ó˜@· ê“ôrÉÃuŽÿ¾“cU1~H®‰7ZÚ¼ŒÌÄ~´å²¾ºv‹_Œ$º{AÉ}Âàs<RœCF¿š‹Þ	²zìH®´|z„‚+êdÀÝØ›ø0òçÐ–Ôp¨ÜéÎÃ·žåeB›é,<ú‚#H®ìæ¾Égþ §	7LZ}*ê˜}h‚]¹ì°v…EÉB×:+„R˜H°bpÁj514†cÓ6/ÜÄ$_#¹Yž¹Æ‡Gß•Eª×ç%œÁH°C!nÅ\rŠžc]mÝ’k¨ëHm\r„êL™À7”Û:]:¡¢\nÜ–›·fçÈH°C!wx,ô‚:8\ZÀãÂ´hñéÙòX+«Ð³ã/×ælEFp‡Ü«zgxë€H°¹^	â©17¿>L²¯n•×\0ã)Ra¸ÑÇ5+\Z‰ä8%Z«™øH®H\"&Ýpzb¡~¨OúðWú¯Ý˜HÄS–s¼t©‚â·x¿\Z‹ê~ Kçó€H¤ª¸\\%ÌÏ6ÌR´Uìu6ì<\'wR^IdÞ°hÍÊjy$´4q¬w Rªd¨%-@H¢S/ŸÜôP¾ÕþŽ¶GhÅ¢_C²ü\'Ú“è8Á¡@¡„ˆ]6àOggS\0\0¨4\0\0\0\0\0\0\0\0\0\0\0\0=ŽZ5^+389@0*2/1)./0\")!.27-693216752.233,,*5(\'/*&!4142+(3,)&-342*31721(!%\" \'#\"\"#\'\'$\' \"$#\'$#( (&\")\"%H¡9	™C\\ÓÕ²ë³åÞ*Ì6&}V/=t¯Ð‰BonâïQÂuWÛ`HŸÄxë\0Bž¤»wËA©BI=Ù>ZlQJqòŒ,’9¡j)5ÑÇ_cmyÏƒ^±HŸB¨áG-øSš2i\n\ZèfLGëW|žkùÅ<ÿåãÜàKú<\\¥\r¹g:¤Å?ö‡$ÃÅ@H¯ª«¶êIô3ÇDzÍÈeJM;ñA086(R‹’-w/•:„7¬E~VìÌ<2Ù£[æ1r°Ù‘H©w‚©l¼U&Ë»÷ ^GPµ²q§lÉË£:m7Æ#»2\\<¡6ô…yõpüŒ¶/ô»6ß\0šßN_¨É‚O)4H«UÝö=W\'He=KˆšÄ€ì÷­C8µà-m#vÄ>fT\'è…S;AÐW€H«Uê´h)´Fû*®Aô©ì7ÞÌ>WW’‹˜hÎs«&1ä­üe˜H¬ÞL´6ê&FPdÅ…Ò|y‚i\rÜ¾[‚;ÚRã¢½)á¤òNñ\\1=-º†Ê†H¬ÜÍY»Zqdƒ-ÜÍÁœq\'ôržqT(6¨Ôœk®˜ð:¼s²IÇ\\\0~\rGêH¬iÄU?u©§nU¯Z,eÉPaD¡táá“#YØÃö2:4âdz÷¬.>‡|ÙÌ.@ShHª±¶AŠê¡•½­×j<Ù>\\ñ»YüØÈO´Õ7maJ½•Àò¾ðœpH§ðÖÝÉÑE•;S´PÞ©Îr‰ÆòŠ °àÿû¯Bcd¢r5æ+GÚÀrÊH§Ž…Ûnz£Ì”[‚»#–YÕt*¢rn3¹iŽhÇb‘æ\"<wiÚÕÜ„E!—@3TbH‚¿Wy‚äQòú`¥;ƒ¤F9q\rƒòô„2jî™Cžƒ°]ŸÞ@#*ú$œ­¨Ö@ôH2|tSeÈœCßågÎ&áÓŽîü$L”îGx\n›ª©®0H,Ã‚:Õ9Ñù“œ[L‘‡Òpœ‹	)Ž%ÞlJÉ[aBðKlË¬H)áºþ™Àþ,¯‰ÙW:-<°C°¼…US6ý`H€m¶\0#ƒW½ª )$fSõÒÞâÙýçvît™Ê†œ]ðÌ¬Ð²¬û$×€H‚-Â %ê¾‰mÐSÈBi¨„Áþ¸N?`¡^V¬„Ïe—ÈO~V’!è;[GG€H’ËõÅî+Ðü¸«„žJÅ(ò|¯ö6ûÄ4›Ë^yÊSnÄŒˆZëÐšÒ©8^\nÞÀH”ÛVjÜ±‚1ÇÓÊàÌ}û:´#UXý„Á³¢ Öè†_Ûu¥p§Ç€H“v–¥ö*ÖlhßËþtl.mZ=ågG\rˆÆYt8:°8?ÆÑÞs§`nÏ9¥*“7oÞHƒõ;)ƒk¤çœçË HÀêå\0#p7lv¯‡™|ðšƒ^ÝvG´XaÇk ðç›ÿ…À%ó”0[€H±}]ÄÜ¤}…Ù@AÎ\"°y¿ñß¯\"ZZXÃ«’AÓ3M}b»ÅÙnšv§ðUõ@H®Åý¦ ¦!°“ÅlIße¬öçžf¹Tpq$›³~-â:ÃP-ñj“Ò\Z`H¨à,¶“/ÈTþ<:²`fo™<ém`ðbwÕRìøhÐ\'1c¸2í¾oŠö0»èàH Ð²x\\z‹hÑ=\r‚=G¿oÀ@ÿk2–vT°’hÒÖ~aHnŸ§Šl§qM»HžÇ6c‰X/:Ã¯\0t&e+NuX›«#¿A,Ü´°Äy-\rÈZH¯Ó‡ÔÉŒ+z\rÂ»ªâŽBH¡± < –v¾¯Hku)¢ïr˜¬¤3ëå`Â¬3#(ƒÞÃ\nåô®õ”ƒºˆ¸jÔ9ß¤H¥0¤2½†ßgÕ†×GÝ;Vã”5Æ*]?F´ë‘·`Mm-nÌ‘?3¸U­RHH§Ð£ZÇÎ’ðâU§‰³ù\"Öt…h\n4!ß;OÛý%ËC¸Ð.ì}„G¾Ã¼H«Pæ»£r(£çúÄð\n\\u€ ‹Ù¡v¬îp–ÍPÑ8\\‡Ê\'üiÎ\"!€HªíØ­ðêóÄZi™ŽÃ¬—„üÄœ¶‘\\U„Wš—íVå} cÂ¨môÁ`ÐuÛˆ@H¦ WI<nêóî>¥¸ŽªC˜\'½¡²«¦.ÿSöÚ«Q×þñX!Åp°%q‹¦ûÐâK HiqÂå2‰Bm	è±rO¦Qd8ßì,?rÆ»µÞõ ¨I¸*2µ’ËHŒÓ·øŸYôœ¾]Döroä/X£4ªÒ‡-–b¿PØ˜?\\”à]¶A8H†iÃ]›K¥©Uí4S¯íyä7Èt%ùÐ‰f¯7Œà³´i}s9r¸Hœ¤ýZ±ÅAÆWÛ¡5Bž½ôK`ÈâáØ\'Vdà!IûX:ƒmàfÒRæ¬,w²\nÄûñêHb¯²Ð-Án”ÞpI2”# ®Ïº	h®U6RMšªí$x@H_ä›´uÿ‚ÝsXº©BãÄ\nÇm¸—¡ì¨¾_±ˆó)ÀHhöQÕÁyäDnUjÐo4.Ü#‘ïýù;¤W02æe?,-˜<{qzÍLeÄ\rH_åV ?àí×¨\nÛvÔXç{\']«\rº­)_æÿçOí9Œ)Fðuz<H_èYxWäÖúoM\rQjÝ©)†¢1žòvšN‘OF¬•#,Ðwx@HŠ)‡SôX~tWþ9O°S¡ì_x¸í´5üç­ÕÀH­å^r¦\\ª†°ñB“¿\Zê–0#QÆÖ	V»yzŒŸµu¨òÙÂ±1Ô’˜¯O¨@,6Ù@H¨eQ½û²8¨Q%º±2ð`¥U3A8óƒÞ.{­\r[ð’ÌG`zjÁÃœ£®½¤9x•HªÇzýÏBm€t¦mVBn‚ûˆØˆàA‘×ûý®SI\0ê¯lå·Ô¸%¿en~ƒ¬›\r(H­xYp›ü…²Üƒ¸\"}c(½YéîÖÊàqÉÃ ‹ZÏÀù¸fŸ¤ÃÀJôäÇŽ@H®°8½/t›COÆZxJœ²ê}º›¹Ó¦¯	eU¶%O•¬ÒÜP|ÎH®R¦mª·¢V_É>º“7GÿB!È\".ýv“±aCô)å:\Zû–H§$b7§koÐ»—Úce¨4j™™²—\'úKÇø\"òA¤EmÈú³EŒÇ÷”ø(`9Ï‹\'H¡)¯\Zy˜ú\"‹—9›ÚÛYš†>\0M¥R4KvÊGuÓñ5á‹ÊîÖpÃDG H¡8à\\³Ërü€®#ewCi{éE›ŽŠ¤æ;ø†£pnÆo\Zè>òE0HŸ×0à àO\nÃ”?+y²:.XÛm}O|g1itºŸú·Ï”K9Hžy:±K}Ø©c€“ßñµt{ðj’¼ÿï©`Ó·FÏ«?ñþD3ñŸíÇ Hœö‚^Þz\"^„4š?ŠRK’Éðú¼ªT`¼¶Æ›\\L´ÀVð­\"ôÖPØú˜@H­ªXw\0—’ÕÝ¾ïI€ŒSºX/Í=føò¥	’Q \\±-ÎrÎ@ §þµä°ˆ$HµôZ ‡ô$H©ƒ¯•9m±rpÛpa+¦VkãË™ï½}q™#á\0ýÕ\"Àóä~‰Í€Hµ¶}óì„ÃqŸÉÑøÀ)ÿ´±–3h‹ÜeÛÓÝË®C*Q	Sªšu+ÌÞH´íeýk´òŠÅòò(Ëå¬3ªÚ¦…¤Çõ£Ø—Ñ‰a0¬m€ÍuÌŸ–á]A¬NàH³zFdæiÍ1Øö­!¶b‰|­$ÃËû\'Àaâ˜‡ÈëÆ»Ñàl’¤˜×¯\n€H¯úõÜsÆdû1EÕdiS—Cš(kÄÕ:j¾5c­f©¹fò;o™—p\n¢ZÕÝ}õ7áÌ„MJîÝÔH©0§‰`KÏÃI,\\ãž=!6^ÁÔÈ²Õo$ÃÓ‡.õ-]€ÝÐîøLFR?þõNàH¾;ê‹zI\0Qm&p‡ïXƒ9íuÿS—ÉTSø7ê»BÎ€BLì2,1= H6SÛzP\Z…KfÜ_j¼Ôz;µ“ªÁœ“þÕRºJ\\® ¸©\n¹s€Hø¬Ùû•ø©ÃÅíƒÚâKJZïÞÍš×Q·ÌI	H*é´]]æºÄÁk!íi¿fÐ5Ð¸O=ô¿má™™Ïè³~0H\'®•àDºk‘”èD61¡Ëý«:Úþ¬wàHY²?¶ÝŠP¬þÓ)@GÊ)£€[l?9ËËhxëUÐH!îò³[8Ö••µs5_r°DCùždãÝäí˜€H>c¤¾ú°GÒc\r\"1T.u|,Æ­T/`¦Ô/ÜJÐT×tGÀH(E¼48Ô®eIÄçÔ[êŒ\\Ó³›y½«~€/B®C¬H$”ë²A³yÍu¥±\Z=ã¬W¡4¿ƒ´À°ÀqçSI tH!ì‹Ÿw„†Çëa.Î+Xµ?8o¶å\\‰;kËõNÄÙH!ï~ã*ñ‚¢pŒªÀ&†7Ò\"¤êxP¤÷‰F¨ÀgPéªH!Öðií|±i4%‡IY|ðÀ#žÍDwvR1ìC=ºäÃÈH!ïXTÙUaË$Ü üñ\r¢iüÔ±ÔmÛG¦í¯<K‡AãºÃ f@H!ïWbÓ•Œ;ŠšWN‚˜é\"fý$]·&C_õ‹ÅiÃ˜UH!ÐrúT[¡Kã‡4-[5\ró$ ÒrQž_l²p,\'\r|½$-ÀH!ïˆ{mÈñe£½ÚàÃŒGoê]ŒS\rs3ÖOüàH!ïˆvúÑ}@N\"JÄß¨4“sÞ³GèAVÛTxøHj3@H$ôL(ÞªÜk!Ðn¤&\0ó—Âm(9ª”%£DËÑ©@H\"d~ºÏ@CŠ8ãlY”;éHÓé¡Éöp´w0’ŒˆH!ïnAçHÈrQ¡üuIq£(µ›:2re7W$(UËT—:PFl°H7È¨EDÃ.&·×ÂŒÎ‚SÃ:gñ2<ÑÄ#V/JÈpH!ÏN\0×k]0Ï² }òþ”T%£ˆÒjÜZDD\\îã*§BH!ÏN=”,/72…V¹÷»Ï LUÄ‡FCIªª&$Ž\"\0’\0òØH‰k“›qBäKÃ8{Ùqõ¢|¡ê\ZZa°Šˆl@H!ì]•¹­Ú˜yx«8¿•®h°M¡G£ØTÐº²Öiå½M‰˜H7}b¹ÒSfÜMY  JÁ‘×ÛÓ«áîì¼¾/Âz7Øw\'4øÀH$ôN9:‚Ì¶wÑêÃ‡ÅÃ\\x7)€­9ïô‡ë\nH%ŒfÒËàìÞØÓÛðkbø4øä.R²N`™\\¥!{†Q´÷pHÂÐYIh+ú§ÆŽo¸\nîÛÊ.>†ÝFðs-y/¼6@H\'Å)ö‰´}’kìIÚÙw!œ\Z\r¤/?DWjr-Ç0êzÑJó„OggS\0\0(K\0\0\0\0\0\0\0\0\0\0\0\0ð†Úø$)\"\'%#H\'®‡OîÛÕy<Í-bd¡ü8ö(8ºJ\'ÏP½W\\ÂJ°H\'®¦ZHUNûBìœÅšf°l_#ÓhvƒŒ¤÷V°\\ã=ŒçH\'Å)ö­YZ]Cºc\\IÝ1 slàˆ!·îçFšÚ‰œH\'Å)ï¼T>ÄØ˜1©@ÒN6rØC¦#Ò§ôƒž\nÄçvhø¿ÂH\'!ñÅæ.(ƒŸ©@×3×„Æõ4»#K´bÈ	À”ºeÏÓ\r€H\'Å3Tm†¼¬Ù“¶b\"GÉ[ÙqºlsÿÁ%±µó…u˜','maikan puncha llugsingapkangi tshabajumanda.opus'),
(63,'Â¿DÃ³nde trabajas?','Â¿Maipitak shabajakungi?','2022-12-051442248826779dondetrabajas.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0({\0\0\0\0\0\0\0\0\0\0\0\0o‡E>e\")**%*&,++)&(%\'*$)*\'($&)#(#\'\'%*#\"&%(),-))*++\'$\'\'\'(#%&$% \"\"$&*%!$!!\"\"&))765280264./1.1)(1;27224,(,7HäÁ6ìÅ€Hà.Ú`j‹OÆZ³Š~¼¡ã¹€H†Wp~ˆ‹L=u¡2-ã‡¸°27\Z”XôHl8±ÄH€/=f„xÓËKûxÊ\"\'röÿÊìƒüv¶òØíÂå-ºWÞ!H†¯‹ži*?ˆ~;¦Þ­E¶Q7(æªXözd¶œd>;X»H†ù?wÐiÛbÌ•š,#‹>ÒI@¯C6Ygšóß:?R %‡}S|lH\")¢NPÚ¥Ô]%M³’é1§(5Û˜–qÇÑ”l.L8c€H‡GßaûF¡X£$¡¬«O¶<jÉ€¬\nb\'2+T›W°wH@C°ÀH\'ÑŸ@ró¡7‘³É°¾N‚Ø³s¤|¾“½Ø¬ú4SÌàH)ÀöÚÿtÈ-Élòt	Š£ïs½ûªä¯Â­eŠTÏ}i?ûFEe›:énÐH+–ÂP1À[cÝ¥\\Ñ Š‰»&‹Wkv·ìõèäìeûÎèˆ¢óm¹DH+–,ð!ŸY\Zá¥BçGKL	]ýÌ%Ø_c¶·îù×øï¼¦÷ÚõµÄéå„H-³9­ÚÖMÿl¢,…Ã×ÙÉO*Ñ‚µùJƒ¢\ZÎiDÆ¡$‘ÀH-~ÊîÐ31¤qiÑ–98A’Bc’\\×;j9hØP{–Ú4³\\H-~ìÀçBàéŽ\râÛ;Š“¡Ä`YB•6…Ž8>Í–àãA)Ê‘³t¢€H//Ô˜L1]^gƒìp¢kŒ¿äEÄSÉ±ŠÑ»\\1<*@H/g¬Z7\\îù‘´‚¿“zHô-µœ…ý-Ü:Mð÷#»Æ¢†÷KÀH/éðþå©{{m® ¦G–·‚íý/L¼Ä~ÀñM÷½÷ªeÅÃŽH1P¦®ŽöÊs2JøpÑÌN)ÓÐ Æ	§EµBø=-•—ÅhëH1CyÌxÂ‡xÂËäuþl¢òbïµ£wHáàóƒ“$fÍ•fvH1ƒoR@ˆJ.{\nµ\'ùYñ3û­\ZOÈäÀi†îEÌYnšæ7ûGàAøH3Ih­a”\Z‰‚ÒQQ¸¸ï¬?m“Âßœ3FÿÚ\'iZÔò>àH39fš7.¶…©ÂÚ-­…Ó‘1g4;Áç\"+cR²Æ–Œ »xgõ\Z¢ÀH39òî¢·Êº¼OÂ×!(XŽ¨Òè¨ù‚ÀtÌê¹âMVÀH3eae=Ao0„´Äáäî¡°åa&Ë×™zfû\\§ŽÑýŒHH39eûøé”B}#+}ù†„%Ù/žÚ+~m€V›9s€Ié21t¸…@H3ÃI~00X‘Ïùñz#¥LÏA\0á¬›ªÔbøsÞ-°‡|Œ4H4ø´ ÔØô‹Bø×ÛºotQNh*^èS(*“úU/¨˜9rý®Ò‹€HT¢ççsX,³öÅße¥‹&’_™´»M7ÄepH4ÚTÐ:Á´éƒ®›ÁèŠúðÓ•w*ÆÙ‘>/ðˆô®R¨H3Î\röI€6ÁûG¥Õû[bF•@BoJsL¸t÷§\\MSq–7ÈH39d-eùÖºà$Áf¶Jâ>T3œÜx¼“sˆ«+ZÛ_J‚žàH2”€h;t×gâ‰ÐO™+ÂZO`±ý(H¤í½ry?/¶ø¹^„H1\'13kù‹ØyS.#* YXØSßJ/¤Æ\'7Î‹`H0•&#i‹ÅXÔðÕìO9áZöV{ÓÞM\rªYÕªH-U‚;Y0V;úÀ-ÈJìx	Ôw^u¾&ÀÔê†ÜÌÚøã©€PH-¥’Œl¢¾1;É²·êóIB,ˆ(Wñ3=;†šŸæŽ©Ó`H, HÅ§½G©ëù89w„\0Þ;Ç!t€SEüÁú‚cÍfcò@W€HgnMi\"}fôXR§ŒYØá…|CùºQI:ô/—¿ÞÚQ†ðê\\èyH-Uˆã4£˜ÉRYÔ¤Ç8“½mðïqÑÅb#÷zÖ.·ù÷ð§#ôo1 •I½¢H-‹íÀtìõvíA–ûâ¦1$“\"V¼$@‹ŸqÑ›vˆ›ä-Ô•¾‰ò~ªH/8ƒò¨EF\0žp$’ð=¹ó{9£±mAPW½ïk¶QµŠvH/8êTµ1Ð3ËÎé×Àkòxž€¥åýk2o+¬ãUUv¾WòÓªrSLH/7¡Ø‹u7“ói2?…Ï–ÚõM,¨Ym‡@,~Vch0ƒŽ\Z°ÐH/8ì	š#YÕ\ZÑê•XS[gßeîöyàÚ$Kkì\Z±Yæ-g:^?ÀH/r DS‡IÊ0É7ºšø{*¡@s#ä\rV©¤\0™]RAÕò¨Jh\"W1êH1!=Q^Íg×¿¹¢ó 0½½Ù1OúU_Ä:¿òãÒ;^ÿxóö¤àH1!=Tˆk¹îÆîGXÿ1`5¦ürŠø3W:VÕBíüH0¢}dÝâ5.Ûæàh&¦\n±‡4Ô~öÌT_¥‚%÷}¨ÄæÜ¡H-U°cÂbak5CDÅÿÊ!vtöJl`1>ÅÈ4ˆÜÜÞdI`H-ðZH×[¤\nÏ@>	Ÿî\Z\rå•:*ÞÈÃ’U¬Q¨[7ø†H+l„|Ét¾à¬WEór\"{oÛS…Cº\Z£º¬qäP½N/Ð¦î\nxHkäSÒ:{¾\nŸËçDä7Pt8ÿÂØHÀé=+Ôn±¬D¯‘çR‡7¥gÐ?	ø¥þ i\rTlÛÿpH\'®dZƒº‡ñE–y(êàšqþñò‚ýæµl|qÃª2îÆ÷­ÀH\'®dÜn\0Ô]MÙÔ¢¶‘åZXmC#„2Ši4üt»{ÆxH\'Å=n?²âÏ‘1ìl-9j…Rw®Gød&ØÖ5B9 šðaý@HÀ;WdBÀ^ÖÕ7,ùûOBÚ–E0ê!¦ˆ$‰¤\"±Ïâ<H\'®dßQq8°…ò ñÝFLUÀrïÅiõSÕ\r´H\'®dTéa.â* ê\r{­éƒë3¯!ÀÐ‹óO’YcÒH\'›9|CuOn\nH„Ý²ájf¯èáFuKÇÜnf\rpH\'›¯Ã:ß‰Ÿpa¿ñ@VÍ«ÙN”§ÀÀž&Žu­Ô¾±C‹b8H%üÿƒêÆ¡¾@Õ^3!—²«/°ð%ù‘	\r1â5ï\'J3!€H%*e¯†l^o‡JA*èÍÐ™Ÿ5…w<\'±[Ìš¦{bhz7\'ÐŸû_€Hté5ì·I•k9“y®fÊë4í#|øiUq±7M°ØcuhH%ìwÿVšcvú?¦ýc!=Qu»„ÕËÊFUpq‡°H$öÁ¬8=—U‚â¤þ„M‡`#˜¼FtŽ#ö»tH²Ö½»`H%ß2Ès¨œQOAKª¾éžœ„l­*ê5ƒ5»°H%½Cj/¥uâ[Ä“¨+¥%¢N÷uIg,eÁIQH%ÞG|g&5ï³øˆO}{àZScÃ˜2ŸŸ……í H%ÝÝ…o¶kÌ‘›«^Ñ¥T¤œÏ÷ðŽ6ÙŽ¼ä H%K(Ô•õ4Eqb@åü’yLrÎ–;¤qCÀ\n NõÛmãèHuË;÷¬Ë&TáÌbùâ(	PA;voUì¨ûoG:7âN8ioP§pH%Ÿ	@<†€ŒZÎÈåÖûxî?n\"AYVïÉØ7 5÷¶çÀH€®q	+ŽéM»7¼´V=¤Àn$¨SH¼”0ºµµ\'A1Çùiqô\'ï¤V6,+Æ)¸-*}\"Hœƒe\rÀwÄÐ!ÛÛ9ÊGÐgž¾xïŽ©ÀFw,æMé¬\'Ißÿ4“„E°Ô§öG˜€Hž¸ÍîRøšƒV^±\ZI‰#NGü¿¶}`sž¹Äû rô‡1—êbÍ\\ÿÃòìPu?ÑoÃ\\=HŸò$²/\'Ë¤ÕUƒy‚¯E …W.ªI\\º]žŸQBhAø`˜9iEþ £¶ßpH´Íê\Zç@Oé<éÏq`k^%«‹µ\"Z{zé„×û¶2=ûct4ZqåÝ&‘µ¼ŒPª|Ñ°ÜH´Œ’D:ª«jé§­æ—\0­ c(õ<\nL\r}TÉJ)Œ×œxø¥§]>Ì3WdñH·.3mŸdàmÂb¼¿ØG$>(§šnDÊÔY¹ „}¤¾À…¬VmõJ<9«ºx xH·Òá)¶ç‰¿ÔÛ¶o6Þ¥õm²Z×B.µdABP\nÍÒõ­ð¿Bd+cð ýò>z0ŒZ*H¸§Ömi4\"”¥[Ý¨š¬˜±Ð(.TËáñÎ¸+ZßÛZ×Kã&€\Z«šGI+£[@®ó`H¸‡µùCtC/×³BmŒÞéUœíGzwZçØ¡zòhbQU©Z¿sˆ¹jH¶¢\"z\rØ>65aô$á–,úœB…zÃLÄR›,îùz)&Ã¾7„º”ð¤°H´ÄÂ€–fÃvC+lá!ß\0Øæð²‚_úMŸ>»vI†çÍ×ë%ª\'\n«\'%xö[^ÀH¤ý™ÿvÉ¨cå€AÞ1`A/*\n\'!W9Ï/¶23Òmÿ¿íEj¸5tå?²q”€Hžtà—)ódzs?Á°nà²ÆÔ$„O^Â¨ü@™)G\\ô2ÔË: ìÛ\nUÞ…¾ÀHgËÂ)aÙOFÝyâoªdá¢‰Ó´´>ÉÕ”@àL¥¥¢å¹}ó°=H‰›¦’BI×Ž-·¢x‚CÖó–êæ%øy‚wƒÌC\0¢ÏDÉÀH€õŽÚÿwÚÄˆ`¡Ðï5#›Z…9‹ï]\"FåÁ0Œ:È¦jiÕo|¶¼Û\räÉÂ0H­™¶Ý»·\nÞp®4ÀÒ··þÐÓph·ÔQåúÃâmmm‹°KWÚœîÕÄŽ(Óí,u8è93èÑù\Z<€H³þŽ\0dˆ–0¿ñÃß$Ëz„Â‘VýAhY~ç„­!|!³·¸ùœZO–IâôgÄŠ?XH´ÅKOq9Ùî®xž!<HtˆäÙ:>ëaµ<*+xZrÙ¡cÙDß¼Æ–•Us·†·–§$§ÒáH¤‘¡Í ³§~:ù^ŒlÙ^¶#N+£€‰ü7\r*ƒƒo‹ƒI:§‡aËŸëŸ1†ôî£@ÆHž|ÆŒœ•?Ñ]ä¨÷£…ˆÂJÜÏÓûØhïëcû†ä¾«væø ±æ¹ÜH½ÃhCÄ€‚gŠ±«eÓÆ-eø>Ú¥ ãò¨‰ÄÒ¨­Ò°%ýòF6 }<î¸àH½´*.k	«¥—Óœø-wžäY‘StÅ^o\0?ÄyÍF¿ÐdH‰<íx)´x\"öcÁâÍd•mÄó&›R‚uùÛ)ðLÕ Hƒn’Ëò›ôf;ûYüžÇ˜šIž§W6uUTã0Yæxc/õZ´×èH·ì…KH­}íÓ¨×´± ü…\rpÂ}õò^_vÜ–|žZs«ô¯÷£ø%«ùÚ[‹êü×Hó,€OggS\0\0è×\0\0\0\0\0\0\0\0\0\0\0\0œ/št]($%64-**).%%&.+641(6--)-027572/0*-32+ ,(52%3(*,2*\'*.>:53::552/\'\"$))+ \'(+.+++,&(-(%)&-&-$,$%#H·¾]è{hÄH[×­ô¾ñÜ÷…˜{mt)p)‚Œô\0F•®ÜPH·§™‚ÿl`“wïWº&ò$Ú\"n©„†¦rø#ž§\0-˜,H¶ÀVË>—ñê´Ëte®²Nõ§[È£AÝV*à–ý•a§*²f™Hµ›Çû’.ñží¥ëºcV‚ëm¢TéMÇÙ_@Fžä´~#£¾Ø«‚4\'Q*‡ÀH¥ØôÝÿ±E…s »¸2¶iƒIÁSlynÈ|ú«ÆÏ¢*ñO˜¡ì¼ô}=û#àqHŸx¼\"²ÞQ|H½™¹Š\0Î\n5$Ë³4u$=ñ»…=‘?¿û^§jy4ËpHŠBp?TXÒO‚£&È•–W£A&j¹ÏžÊú1õ©Öˆ÷1ÈÜ¤F´HlU±ÚƒdìmýD‘€†ó7k{•YÍ¶Ýþ¥/;‘ÉxW.ÀH‚WojÙE¹#òßbn¿üH3¥ùQEéäNP2¦QëR$•Rt¶{H‚»\0rgf¾7º¬’z3µ%}6[Ä<çl(§ŠT<9ÉH\ZFN7%\njJ…ƒCH-Aâ‰\'>@º)>÷`ç[iñó’uVü:~à˜Üâ]•”Ò%îëO€H)„-÷JüäYõ!&®ç|þÀà¹z±³´Èãfíòª°9@H†pýb›Êýÿý3\'A ·v˜+¼>Í#–Í„P¦:Á½ƒÛàH€g¼è~š@Þ¡(ë¹ç*êv¹œ*!\"º£Ïqh.3o\'r[(]xë=€HÓÂ3³2y—õÝ¹lp±{äù+¶l$a]Ãe™	9[¹¹é6^¦°H‘ª­y‹‰S­€+Yò¨d5ÁÜ›,I%³}œ­É„,¸Áp³BÔsÊ€øÈd‹0“±¿9ðH•Jôß$Si„ db¯9Ž¨6nÌÁ£Ÿ¨o>–7ö6?®‡Á<Ø¾¾%;íW9/†£E© H”OÈÊ*Mœ§‡`èdp\nKs4Û¢zx`#mAöK&ù°wˆlÿ•à™-8`\'‰PH„0nâj4K,×šÖ°Ý¦MFšqùŸÏÎçsÊ–Ÿ†õó—¼³Š6ð(H°hjfú\Z?ò_NÇ&<E´—<57|vC!L0]í›øå¥GóµÍ44„5µ¢ÙÙD\ZHÂwH¬®¨ìºð¢*+,q»ÎÄ“½‘äü›â­3žVY>=æ„‹;v„Vµ)Íó¬@H§Fùü¹›44—J«¹„ìOT¶â¯ßÝç;S›àåîf¶}v]%H¥#L:ç·û÷–íË=X¼±{ÚÊ¿JW‡*Ë–îÛYð‰DL¿H¥†,6Y‘g³0Ÿãc>c±$-¾¢Û|æŠ8C\'´=þäè‚ôñpt€H©Î ú,ò‡ÜôÐz²ÞÐäDø<ÁcA™âë@•Z³Æ”éŽ%ddÒ®¼dH«ÏQ(ÄòŠôÅË`¦÷§ÿTÜÅÎ#³Õ’•Éô»l“L	°Y|à^ŒXE&ÌÐ•hðH¯ÜjagFUf´~Â; u±§ôEák¦Æäb\"ÐÔ»©]â)äÑ\n-¶Õ+²7àÆ£1	 H°©=ÍÄ(\\\\Qzªö† …hcp¨¤¡æg9qòÏu‚¼Î‚Õ¼LyNbtsî•\ZTUãëÀH³àm™k§$ÔðÉãû”kv»-ŽrxŠ¹À.¯¢¤D).ÄÛ††$ŸŽŒÜ5žµt”æ“3žñÐHµË­|àæmôK+Û&î˜`É€ÜRï9û¦øÚVÍ‚ù.¯­5§£ù/]€Hµ‡T‹Š<ƒÂ\'GÁ˜c‘¢_ùiîSf±¥ û‰»šåÿ““™Ù¡}Hµ AŒÌrd\"ì…é¼e|ß×Û¹k©5bù1¯– EçlxÆ`+ÑL!kOH´Ën]âëAVÃ\"””{Ÿeç›ßB3CÔU[ñÉÊ/•ÏîÝV¥½²n”€H¯Á#¼ˆyªâŸO[í½Æ1ì‘Î÷†#ž– ½Ò­¬ý0£$Ô2Šã˜²ˆH¥ÞÈ)ß²)¤{#­ð´¾	¼/|ùq‹Íz‘¾‘~?èÒ‡KÀ%ŸOƒŽ×¢Ï`‘ H½»‹Á‚ðÙÝûI|8ã«U~ž3#ä;±p@‰ ‹wèŽ‰7-i9	óªyÐ#‰ßÂ|ÀH,ØK§[ôË4ÛI¦ªÖLK˜hÊ*ÏÑO/C©Ø»«˜ÏyŽºé€H)K:*VÞÏñùz+H^Ù‰‚Î¡Ã¨Þ÷ÌC$@H€m]‹¶„×;ÔbBdV_©ø@òJ]6)çû~f\r‘cœ±;?Öà’dÆàH‚ažØ2I1ýý‹ÎžH…y/LÚ$Øã¤ÚY2šˆË=Å:db¹çHœ“ìæM ÏÃ @DV4±\Z¶ôÏ¨Á4{xËmÐrßm“åº¾Õ:72¨_¨yÀH¢£çL?do]ž©¼RF,È\'¡D®Âº0Ùß™1p÷aÕd(“èëwH…¡6£«å(ÀÁH£Ú\\/£ô†\0\Zjvt€5Ú5¼{ŽøÜÔŽØ¯¶WyÈH¤øð6éÍøÒ6ö)pèÓ¢˜j	\rsñ!4ìË‰ÔÄI,T….¢Ë9˜ÒˆÀæ³7©ŒÐH£Ú>3ƒ4§«³†EÔÜ%\rª²¦tH‰3N¯SÐúŸ™—ê0¢@H¢”ZÈ¡<en!’LƒlÓ:\08ÔìÏâÛŽß¹ãÇ5 ŒOøXˆÎ8Ø\\ H¢¦(‘óDûj´¤õIË¾¦1b‘ãó°mÆÃ›Ïbh!]Þ‘&Ÿ4i\\H¢™™Ú\"ÛA©³¿H¦äÖ§¹î\r\rÝ‹çv U$g§,wO?5Òù+&½î–²¬&XA H¢‘’*M²\rôÊ©ÿ„¡Ö´Õe5ˆ\rEvÉ‘©\'ÅBwÜÜ[¾„@H¢¹q#€L—[ÏÇ:·Ó\"*ç™Â­…œØö›vÂÙàÀÀH¢\'ºH¼‡\nv’<-=ÒÀc1êÀ[ýsRçKQbq/3Ù3€H äø±(Èj˜e•ºy|ºu ój	X¡p¨‡p3I\\˜÷~¸\"PúéÚH®šÓ@·Üß¡v[?újsò{»NŸ>’™ó–©¼Í 8£&Ã;ˆhŽâ·\"|ëÈCÜŒ’	J†·°½ghÍžH¬pS„±äO?Á¦»w†‘ú¯ä+#–6•w­€ÍN–‰XéÁ&,¯˜®§2À‡9oÙoõ€H«‡ËjÃf’lû œKPŠƒ-ŠµDNó\"pÙÇ	TNVÃ\rÊëlÿXbq»u¹}Öëõ†(H­–¹V²´¬<è%Šãy†¿¥×ˆàÖèHêA(ÍÑÁø½T;ôA<GvœN£,_—S–H­;‰Á‹§›ù9ýmôuñxªûÊÑ«ùìWÎ,ÏY7A§]p‚^úUÊùíÌ=›¥Z\\N°º™%Wœ3jŠH°2LúKÍ¤7)ôÓf7¦æ8|xZåYç] 4Ä¬~‹â‰E`Þñ­èWSÿ»Ðf%&ãòH¬¡u&bÖtŸòˆZ 6÷Ö}i•q.M@ WDáÐ±æÃŒž{á½Î¹;‡PŸ=7´´,2ÀH¨Ö¾ZâÖAPoééãÈx¾´ “¥Èl¿‘½GµéBCTªì¢\' $Ã\n³Y+¢tõÍ÷ Hž@÷.ô6×xèÌ€\ZæªˆB*ÁcòrÄ:qý½gÇìYï®ºZí›ÙˆC­e€H›ñgµvfñJ]gv¡\rÆëØ_Ê¥i:ó~NWôËU&GY7Ý¯VÙóYGŒH-®ð«Â$MTs)û¶{8A‡ítÿzÚìUðHKêjrC?¨H)e(žŸÍŒs±¶•AÞÜ¾B,ã+Ø—+Æ7FÀH$%ÇíÅß`ìÆ¨ €àÏY¦y\0+ˆŒ€K$M¿øÒÂH!öÔÏÌ>îûì‚Þ¹,ÂË|gÄëÛß]\'¥€fjG_¸Hàd!xýmÒ£‚\rIi?ü÷°WK·B[GçÕÉéQ*­W¾`HªLnT›hÇÜžù‹8\nmò}]‹YG<mwHàºžq¥‚HÀH,/?K0¶Uªyt†dv8nPF¢ëVçTkÌð[àn™Ç¹˜HÖ@H!öÂBÔGØ‘îN¢ë]4ãÌ× !Ù7Žùî9”HàŠ¶È‘iûG„r”.O7û’+^•B¢ë˜%eÎ4»}íH6Œ‹Fdg{óõµ‰b+¿—¦Ñ \"àº\n7äjw#M.âú_ÀH&b6^XÇíËÞ3Äžùš¿°gG‘[\Zñ,llðâŒ.Á¦/Æ;€H)éos}wB%›º*!ºÜþU¾’û»ý€¼äð“³ªë|ýNOÛ¦ò2àH+¨ÈšÐc\ZGhS¯·wxŠXäX¨U…\0}Lu fZœž~éÎBƒœIH-ŠZoUèˆB„¨bÆ3-+AQá(ÙVEÿ.”/÷³Î\"Ï›JédQ@H/8¤J–|=\\%®šíö5Éfu(ÃOÅ¦TH4î×e•tdÞH/ñé.kOà€£Œz[\\5v‚§Jå\"á„Ík¼EM¨«‰`vVzÉG4H1QT@ÛÄ¾Q½ñ–…süs$6¯æºÎãúIÚsþcùZr0H1P†]´¨EA£ádàÌ{}¨TÆ*q7‚w&ïPHž4#xˆB¯ÏzH1!d‘ˆ„þ«dœTRþ‘—ìë~_	¥­Ž_²Ï,»TI_´;	ƒ¸> æjH1JHáZÅ]\r”)É’Å£ÑÂYÔäš¯¶ãMÞ“æ$…ào.`¬ÀH2þ}µ]½#»0qÍ:U	ìO—$E¡Ç(#Z`4ÂÛÊüÓ{…ùÓH1JjñDeˆ¬j¾?NÜÝdWWIH£µ¶èE»ÈöS\\J…ÛSÓtnH13ík†S¬~p`¼}Å˜L¶9¦œo%[œ»j\"+r”«äPÄJH1GËy}(¹Y öÑ¬´*âã³]:ªY©1@\Zý¤ùÎöí\' Y;´Š: H1Q8IñáÎÜRD,ç9Ìßüï~Ñ¤¯ÒŒ¶</Uïé`\rß#DH1Q5ßáŸHJ6D:Û«ˆ\'RAÊQ§Ú~™¦UiÃ¿Sjù:»êmä`H1ùëŽŸÜ¹¸É³ñŸ	9.1lWÀëbæ@^™ûŠLôìHæž›+¾Ø4é%ÒÐ¤ýÂÀØŽÌÀ½Æp¨}šÂ†‘n\'dù‰6?§ìÄH2‰L–,õk™­¶-ò‡À_Å®Q çP-Û6Ýö¬Ñæ ÎH1QiøÞŸw1-‘û.m1÷ÞÏ‰ió#qCšö\nUÊ{›H1P“„A\rá×ŒQLþQP+íSA•NQ;0ôAòæ!‚æ:OggS\0\0(j\0\0\0\0\0\0\0\0\0\0\0\0/t\n÷\'\'*++)&*,*+$&*\'\"++ %%%%$%!\'$\"$&((\"#&\'.(H1C&øŒ¡Žpó›i&AjÁC~†BT;]°Hº:oXGùÊvH1¦Ñ¨–Ð‰)™u—øâø&Cû@Ú>¢#HÅ|ŸÖ¿‹èÀ¤ï½â@H//æÏižÌå\r&BÄÑ%Ž°›ê\n»uÙîÉ›½µ˜›q-À6DâëóEøH/gÆM)kíQôppF¡¹95<F‘àå@ :Rmé‹û¢á`ØuŒËø~ÊH/u\\ï·¾iÝà($£·ãñ¬ð¡LÝ\0Òd‘83Úœ|0.ë H/gÄHwsïÍúÐi¤cÀÊÌ9©òRñ`ŠŒÔ\\E°€`#h˜H/h”AÇšµ.(¾£ï	Q‚˜ù„7=ˆ©›÷¥k`=\rv$tÁp=Ó‰H/h—\"6•~`Þ^@JÇqÓì\Zå¹5Âßé.¬€Â®…2èmìt\\r\'ùû€H/4kŒ=Ã\"¨jcŽ”—[š=ñ\'£=Ô¨eS²uhWûb\nñ\\7üH/zIÕaŒrº.–Ð¿ˆ«2ºo/ÿvuwrßËÈZöÌ¸ŽÁ3[œ@H1P†LÐOk¾y×Qý>t«…wËì§Méø‡Aw°˜}ƒH0­Áu³/«p-CµhíIaÉLÿÀŠ|¨Ÿ’TÛM\"½NnÕMDH/gÆ]Ç5êœ•›\'~ºznïÑ:R$cŽ%†Öõq˜OÓî™Èm£Ú@H/hzóØ6JßFÄ¦¡C;»?…â‰?¥î„Y4þÌ(4s€HŸÅ‚;Ó^ \\¦\'§«ãöÀŒñHxì$ç0ïf¯»ÿÈH//ên\0q”ëé(Ô©q¯mñy;ØÒªKãnŽp!“.p\'€RSÕ“ÒÕH/gÔ=³¯q³#%óØw*}¼žT‘	¸­\n´Ã‹ÿÙÚ®æÉíµ÷ŒH/gÓ»Q?y;öÇý{;lÔù‰4Oõ‡û°i­ýÇ H/hrúQCd;ÏÞÏ’[Ÿ{Àšï¤‰`4tµv¶ô^Pgz@H-~ì¹SŒõÐt¯áËŠ*§Œò[¯¼?ÛžÅâ_y-££®åÀH-´Ýk.wÝS7åâ\n^uòy°¨e¢kvÞ?Nõ…‚€H,Ü¿\"«Y)à¥ø9X‹$`ÏH£d|i¿1‹=}Z% H+–õU^è˜ˆ5˜q¸ß~¯Ûìø|ÜŽ»Š%_¢L*ˆH+–xýgê_mëØ«JÃÞYê†.ÅÕ€Sœ…öNãÎÐ\\˜Ç>¶H+[dmÁàvuÈlà2=\r7$¿\"+£s¢d¼¾°–ÿàHú*ýÂP^°ŠYýÕõUN»GÍðmX‹û)˜H)­ëJTIaÈ\Z¸*ûÊaiî×‹Yê’¥yáŒ£|.£(6€H)®,±	Ü+F(Ò°½EÌ¨Ýú÷w²¿­Mâ)ý±H)­@ä÷5V‚¿!¶õ¦^7Îæv?Nžçô“eôB\\©H)¤¬tO™ÒÀoÜ³2n……@DK¡nRžxÝ2qÛlUî÷H)r§cu:z(‚”I|¶\rd(ç›ê¸Tt†ÝÌ¶D(=e¦ã·¯H\'®oÝ±fÚ!‘ðlSí\n€À*PÚAHzê É•ÕaÈH&“H×28>Gk½¨¤oØ ,P°îð–(½{û‡~ê¢z“ƒÐ·ý¢˜€HõJ¶’Â’“ng-dòñg/Î0žhLRW|¥Tû@H)ƒÓ¯­`îÄmç”o=è2ì£…“\"&T_É#º¶–\"\nðH\0Oh§€4~£–›Ïnft/·Ì{í»}‡( öÅø|Ð¦å€Hî´¢3€¡I=I÷¯¦²Éÿ˜fÈ†nÐT¸+G®ñÊÆ†$²HÀHÓÂØ¦óÈšøI>©,Û¾Kˆ	\\²%×Äz.ZÑí ´öTqÚy©ï„àH+Y´1`‘!Á¼÷mšœ.`Zýä¹›/ŒÆÉ´éð¼yÀ','maipitak shabajakungi.opus'),
(64,'Trabajo en','Nukapa shabaju kapua','2022-12-051442461532710trabajoen.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hw\0\0\0\0\0\0\0\0\0\0\0\0¾áh\rd+-*+#))\'$)\'$(!\"$&\'&,\'(&$&\')+!$\'+%%&,\'$ !%!&#$\'&!$#$))( (.5640,4/*& 54/(+2226--&/0=/*,(+,5,/0$%+650HäÁ6ìÅ€HáW‰ä%ÀôHtÐ6H€Åöúÿ|kÄÇÖ£,Q9ýÓú¡ôje´‹ l\ZÓ·Ø&ÃtíÎtp3„yH‡.}ûåU0í›JçEÓt‹èëËº—9$¥Íí~6ªæ»Ì®ÖR•ï*XH‡ž¦UúçEpãöìˆ3èx¬XPÿÂF’ÉØ:DYº«f„C¿¤@H‡úÈGÒ´©ÇOmÆÍI-a¤à—õíÁ™ccÞ+H(SéGê\r H-²\'ciŠ@ÃœË˜ÊÜ“—ô”Š|Žu÷Ë—Ôq±†\\Ë€HˆÊ>ÈÑ,E¦}¼ÞÈ%Zýà¸\0r«¯æ,`¦3GÀH‚ºê^ iHˆ¾Àãö\\1õ5a²S¬b]-˜èÌËWvêýdå×qbêèH/hmlW§M®¢˜G¢qÈgYjÿ[Ûëz Qô‘D0$\nœœ×EH/hXÐfÖ\"¦ñõi.Ý+:uó¹d‘íùBôBà¯|\n^ÌgH/hÂÿ	ç?Ÿ>»DCõ‡Z%êˆp€:4XÊù×L–97ÖR@L&ÎmšPHŸÒÿzi¹ƒ|£^T®Î+z@|ŠMp[8\"›ŒM—´û@H/hX·S‘¸S§@p@Ò\"uz…\0-*¥DøàIÄN¯cßH/1pVCPÔ³ê7Nû:l•+Z®éj-Gg\"_l‰ÌÀ Ö¦¾²5H-HkêsÕžQM¿´¹ý}™`-€›š‡,±TPèØ—R°©kH-t±	‚øCµU¤õd‰Û»2áØ#“®†Ý.äûPH+QŒ©R¦1e<B_BÈX«&‘ÞÎU€xiZr…ý­e¡ÀH)­óÃv?Âa™ö}ÀQÝ^èÕè>èâXˆÉ‡Uâû#‘@H)­÷‡Ä:°>E¥QtTÌY\0§¯ÜÉj)À¢Íßo~Ú]Ý°H+–³˜7à gãüEmÆóT…å~ñºV“—ò‡½XW>×Ô‰r˜H+–	‡£…g<¿™/>pËµ¦\0‰ëÙ)ÒLr(sˆ\ZˆVg–W½*žH+lª`ü^Ùzc‘ŸÇñ_j¢<!ºíÖEæëE¼Ö	^_\rjPH-U‚žágS‚mï+³KyÀ[>Qð)¼:¡=eÐ\\š;m#ê\Z?àH-i8œ\r·šÜqµ¬_R9.&-7—6¥d‘Cµ6šÌ×u!zwH,Öøéº¾óÎÐ)\Z0X8‘ÖºÚCEÙ“z~p4ÎjMy`H-T\"ÓQ ü§Î´¤ÉIÕ~f\ZËž½ã’ŒiX—gFZ^ÒPH-U“š-y,¾‘Úœï–ÝŠz‘‹9t7:PÙâ_è*\'K¿\0’§`H-uNíVêTgÑ>|I¹›O¤Â(µ_ŒYvqgd<š›ëê\\P HiøÞoh3!û/íd÷;H‘1µüªœ™Ò<«h…¥	4qÐ2îÉFaÝðH/1Uß;¦“mÓˆLƒ!QL€±f[@	î+Ò6‰óëÝ`H.¹Ò¬|v£+÷å/8‡55ÖI ±\ZèS^zâ­€5”-@H-UŒ7›\nŒÙýØœ¬vH1˜X`\0«{\"Ù“Ÿ=ùô…U§	!XH-OÃòBòZDÝR\ZgØ†Ì«/\"ñ~—ƒÜ†BÞd!Œµ F;_Y€†¨H-U’Þ`õi§é.ÈïÂÕ‰3ü\n“cÞvÑA“M&‰µ¢LH-AËãæ\"\\\\Ï_C°ÓÅý²‹pŠƒÑrcbp˜pÜ u×Æ+H+Œ­Ü)ib%â5Ž³?ÊŸt;\ny†\nGÐ0¬ø–/V6‘‡‰ßt`H+føOid×ØœŸ“üm’8†Q{šãÀÖú¶Ø™\\w†pH}¤âlßøú@H+lÑ¬KY\\ÄŠõÄ¾ÕÇ´¬¹ÿt\0‰CBY@ù±˜yv‚X·ÀH+‘ˆ–	ëŽ›uªÈŸ2Dsîl\'Ü9ª`›î5{¯bH+lÑ¦2_ðºú1¤Mþª‰:6*µûOxdí95·HÉ–¸H+g< _ûíkŽ¢æÐÇ§Q —¹(žÏ]àH+nu´\Z\rÂ˜;}\rê°à‘¨˜rÙK=Ü^HXe®uvÀŠH+QOêƒùù{=€f%ÇX®‰hF®k \'€ûŠ¼ Š»aðH)ƒ×ôvì>BO-›_¶OFo$¼)>æ-‡Y,òû®Ùô@H)\0ÖŽâQ	½eñ¬÷ØbØ¥R¶]d$Œ¼@ýhH\'¬q$Ø·|+<U¬;ßàÝáÞƒ©¤B€-6XHtÀH\'Ä´çÇq#±ØU†#â¢p1VðÊO­!Ú \\\n#¦èÀH\'dj|º5GÇ #|ÍUÂ&Þ©`Ø?ûÎÈÎQaâdKé-´„ãH%¬XÿJN¾zQî\"\n>#£(?ƒsLøJü±\00H%9¦öZäýE>ž§qÕ0‚¡¹ÃJ@!Æ*™ÕýÅ1^à€H%¦ÄHÁéÈ‡YjCm(èšm‡ÈcT§yÊ»œ:Ó•šZ!H$õö&‡ÛÄß…Ò^9šZ0C¸,º×ÍÖp3}—üý—ÕH$ôM£y$¶o6DC.±ÇíÂY—ÒTPhµ°yÑ•c*¾®g>ÀH%9®ÕŸÞ·r£Jùa”õ²qL-o*3Ÿ›~‘d>dˆÓ5Ë{ò°H&`ï•9®ÆÉ`	’>3JÖ\\ÎÍ1„«êòÀÜ«˜Î¿sŒ…ÓƒèHÀ<KÃóôÿ¼ó¯°áRÊ”mEft€6‰Á\"¶sâ«óH(MfËmZc‚m­›y\0‡[¥j—4†^ˆów)>Jˆ§–‰ìB¸H)Åv|±{ÔÊõ5¿krä¡¥ä@Ä­ÖŒw¶½\Z &”ÓÆ™o„úi‹(€Hšä<„÷¹xù¯åt¤wÕº©óï$Àz ¦åë½f¯™ù/–Š›‘ˆÐn”k…P·L HžÊs§,ÌóŽP”)\"å¼Ëò`aP&DrÊñ&	; |Ø3:ùáíhJK”öx¡˜ŒH¦èyüS›˜ißýCx–ßá€lˆ™•q¼9­jnX\\‘ÏµA¾íëRô°ƒíŽaÎ H§En…v)¼(ºÝ„ô<Ÿ>\nÞBTÊ!}{Ó>5¶¬ÂWrJÍ×qj«9ÀH£¶\'±ÆízŽ|úÔÌ.‹etÿ‹ø´G× Z(Ý[Úºñ•’˜3*Ÿ@H¡“Yj=„²½^pÀÎtÜŒ$y‘{\Zeñ7¥öZ?“Ô(\\È¬N,ßkï½÷·XMHž&Á…ç)¥so¡ÝÑô¾ívf4OÛŸ²çkì‘¡¼(8qb\Z7…²Æ€H‰Q,¥e·*`:IÀAJˆ#ý\\v†“øïX‘dÚHûF\06Ã¤àHˆRNÐiºÇ·¶EÍbZ°u[èr~´m|œAVË8[íJÇYìÀH\'Ãy}Ý¾@\"º;•åzÆVæˆ[·§o\Zê˜€H€q½¶¯^Í~Ó·tøS-¥Ãî$”²8ÛR‰Z\ZËŠžÉvyÌˆ^÷ðÈ	Ã3ˆ¯ä¸ÐHƒÒX5‹A2µ(ÏUO»«4EÞÔ{ú;FÇ}q$Sc¶É ø‘uò×svÊË£ÀH³¤4{¿Ež…ë´÷í?$.H\r6B¢ƒ~lC©±Ñwqy¼òÇà‡=©‘¾H´D©1 \naê­;W^ˆ¶^™ƒî]Á¸ìžØ½Öïa”\'—^\\nÈHµ\rˆ–†È°[ÝM\0œQM¨gýâ#ñˆW\0ˆÄÜ´¬X€½ÒÖùbàH³Éœ:»tÑÉ8šõ\nÅÉygMál>Òm*\\Óú2}…ÇÓÙÞ ˜\"ã:÷5€H¯¾f\'Ï¨¾Ò©“Fþ|f’Û°°­“ˆ‚€3’ßÌ¢|Déÿlj2µÆækÁHŸ‡\"·‚[V§aXÚë=,Õ…Ýz˜)¥;ÛèÉó8*~`ç¸éŒå|Ö¿„4½ÇáÂP,CH›ö¢ôþzØ„	<òX^T™NH«¾ªÔÍ—£®+ÿØ(¢uyv•Õé¾t’høpbê¸†€H‰sÎˆãí¥Ðk7HSr‡ù¡‘t–Ú”Ì6Êï¶o½Q‹;¸‰Ü	ì`Hˆ^PÂJçIÛŠœcp<Îàqße6b(„>WO€³³mµ¡ƒEÿcÕ´Œ¬ïÖH+(ø îk{Øí*HAZÒˆ\Z*]°ÇÝ\"5ƒÕV%,ß&H€„,»§;†| y®]¤t{þ\n$Ík\0ù	‘k”i;ÓáÅXcj¯ÊH«€H‚-•Ýx`ˆA½&™/Ã¡¢Ï£Ù×À5›éGBœÌ†ÊI-k0s%ÓÈHª<¶CÜÉ” z)Ú‘AÁ\"‹	´$ggØ¦®uÄÈ–â+kâfg%Q•¿“<jA…±bäâ…LÛ†ÚøH®î±#€êØžJ8ùj»Òñ$Ÿ=/ÜsHª²Tri-§Ë˜…¥Q³(\\`H²¥$L*±ËÌ`o=ï<oÌAíÈçÇ¥ÊšÕ`”`÷ò\'*ÏÊfeî¬ÀH²¶vÏ¶Úý‡@]AkòÓïïô	i†{¥\nG#Â‘>%([îÿÂÖê~H´H˜Ž_ò™|­b]º¾Œ@{¼§•	ØMNs¢øwÃÁóbâ»LH´Ñ$¼øÝäÍk\0{º[TûCPãéo•}f6M Ä{S1Ú)4ˆÙäìÄ<H³yíFÀú«iD´ÑÀ…iH­á¬‡Î[í>œ¢ß(z·C¨˜ëÅjê¢\n‚H¯ÀõÛb„ˆ\r \n©U›%õŸœ¥0„xx\'Á•é3A\n#Z?º)AÛWC‚—ê·i~n¨2ÅœH£@²Qä7ÖAã±<{I‹C_×5OP,Žox×k¡©>þ\' Ær6~ïìÛH½µ‚ª¨ ~çbV¥˜ÛÝ«€íæM*ìhz¶Þš,RaÅç¸nâ§‹wS¶¨@H½­lzh(À¹ÈÂ‚Ù½7\r¹Ç6È@.÷{·3q¹{+fH~+õ­qÉˆJ@H-ôj¡ZƒÅ\"¨»mBžUv¥SÕ»Ãº–cÅ-Š¥ÀH€ÇƒŽ¬Ÿ¤úPÐBß«¹že	 þtví\nü3Ïèß3(, H^GÕ#:ÎS›N\rQþÚ-Rátf_°z_S².²?µGè§%tÝuÔ#’@H‚z&©simÜ<TÆµ”ëê\'ë¼±`\\Øß~§–P¾©XÐ3½¦&LfÍiõ°SKAÀH“X·çxÐÝÖ1 öê¹×Ð$ðŸ\Z„Ö¡Óe•Ø¼WÓCZp÷ø8­~K-¾ÊÄHºóLLa`H–!eiô«ërýÞ/Àq†ì‚”ù5ŠRÓé¯Uãblo®Ï¿½	1)ÀOggS\0\0(Ô\0\0\0\0\0\0\0\0\0\0\0\00 ax]-28.-05)51.)+16552,293004.$\"!.25/035.\'&&#995845/(25.4/.! ##)\'\'(\"&)%\',*)*++%&((+*&)#&*&(%)(*+H•&Yýæh×”¼y(¤¡®\0¬ÀÖºˆ•ò«¶‘R%CQÊñ\0þ›Û•UÕEHƒôh.DKû®n\Z®\\©Sªµ¢>SWWÔÄº¤â1’	S.¶e9Ðv]/pê/›¡H³¿X~T†\0|“Ušjé§²9‡ŠPg:âƒ”¶U$Îƒ5…dˆMû²½r‘zeé7xP¿€H°—á»¦såJËþ”ðÓÙ1[S™BEù·z½Ÿ]Ój.ðß#\Z~Áå[Î²€H® fßrðÂƒR3™!x ×%£Wï6MÂºsðÚU/tA éyò­Œ¡;¤¯²[èH¬£¶¿×¼ó¥æâ	”4>‰èÆÞW\Zt[êF‡	ÉÂ™øžy-„Ã!óPupñH¨ãŸu‚ÔGuæŒ°ž+ºÆ£\nüWí¯Û¸+9éÜû›G¢ø2Bä]‚D3ptÖÜê€H£ÚªG0/À7pÄ‚¶4¿Ê,¾g[Xë_¡S‘pµþMßR2Î—`xH¦™]:Ã”íÔõ¾¶‘2^öÓ¯¦½¾+G\'NŽ\r­©Ÿ-o˜Çˆ¥)§ß\r½É²m`Hª1\n¨êˆž…r5ë2>‚™´5®rú…Ô»GÚy±¶’¾õkäc£¹ÊØ^V«yZH¯1ÉåÄÎüÌ“ìVD¹‰1‚°ú7-ã€.ÆU‡·2’±\0·ªšDƒ†ô €H²(‡/X3‘\n[ÑQÊyRn‹Pr[¾\nÅi{\0¨.ñá\r¾*mÀH³Éå´BçjNóH]:ÃÞ<ïv±ÖÔ†f6Êî·Þ&b/àás9Oç­øH´ÿ\Z^Ò\'ÓòuG~¶+LE¥P-Ž¡EYö¹Õ{,¯úÿŠqÉè¥-)\rJÒlcÉ€H³§ôÈµ^?”ÅËFGS[áÂïí#*6\nž„dÏ1ÝAˆ*†Ï¾8Ÿ¦jW§šHï›ZH³3âÁBÍ­Ž/î2Œ`?Ntæg[¬àš©?zÈ2Ÿód,m¿Öïu´:˜Š×Põ H¬°MeãŠ$øxÜ=ÓWƒÝ‰;Ð:dƒý¤™ÃÜ~ØˆßL§ÍèD€\n2›Ù>ÃBH¾»TõÓ&}CZ™÷7Ðšä1j=óŽ*;¹ki\\Â>|fréê/!…´öè¢%›	=0Hx,˜‡iîë`_ni×.×)ØŸ\ZÆÄi}° =µpÒ@îI¸˜NÝ@H‚¢õ%è×¡Døpûý³·«œ„†“ã\Z‹÷¢X³nÎ‰bæmÛÊækùÚ*îèÝPH¤¸ÈÉÏýC~õ³×÷@?ÒÝ’Ã2!ƒÉá\\=u70¸ÓìþuŒîk\rµôŸú‡/ôS`^ÀH£ÚjW\"Wh/\0 °K-(Œë1é¡[~/¼ñ\nð*(È!àIg÷f¡ç.•¬?\Zê€H£Ú\\Ý›Ï“†OM„ÿÒÂ¨¾hÅ7·“uùo$h5:I¼WîØaöÞÝ0H£`[§¢txºî’K*Ž/Í »}1þ-7Â5ì—9ºíü•$F™$Ÿ°HŸvQfßÕcÝ‚1AÈP©b§I+ÎGQ(,4%ÕB†®…$má­N3Í¹©Ž-¦pH½³cÿÐ=šsËžmNLå×¤ïÆáWQ o}y“¸©#`)ÈmƒígVÀH+„«™NÊãÖ¢c¶\0÷336NÐTðtÿŒ\rVŠÌ§ã|AüH*ä†ŒDzQÙ›×«Žb(Eºþç+³Ù\'ž/s«>ßÈH\'³9Ïù7Áéµé˜EN¾6µ`N;¬îD Þ:öí>§!q)H‚‡^ûbøöZ4á—6?[ƒï£S«Ñ\'/÷Ì‡Ì!>Û4ÊšöØw{H‚‘Šµ¹¡€ò°­âqú¦º‰ANc¼Š›ÀÌÿ_ôGž/Mç¡|t±—,g÷\0¤¬òüH®¨øÌiT|å‘y\0âty›½· W|ª¦“é§E¬ÒÛÀ&‡V_-=\ZCôàéq´¨	eî,H°g- KbpÉôÿãûƒ\\9²§Ò”É*ûJ‚‰–mNëA!AûS\"€H«6›÷gÛ@}Ïë€õ›Þ*–7L>-.„–èÝ!Ls]ñ¦ó}o?~“€H¥ÑÒZL€vuÌ÷Þ1±RÖÔÝ›Czd\'¦my¦ÿ‚¤PÅÐvZwjÛA³yÙ`šmÿ(H›ôÉÐÅ‘-7\"Ûð‹©9OJéeÖ\">šñKW”Ò%ìoa]ªù¨¦ø=f§nxHš§ýnž}À	}¥ºElli©r\'‰ž2nVšÈ]•zã¥rØXÃIYs7ºµØx‰ H*ï6º}x5ØëÒDÕ4@G‘4MóTBö=«þ<ËŠÅ²HE&èH)†Ä9’Ccù®JD/EUS\ZË;¶ÌdƒT¿J-NvE4]ðH€ˆz~=y¿}óÚÃ¨©~¤TÇ×ƒfFMKeÒùJVLs~Hƒ€!B Ìææ(œYŠ¿øW\"þ\\a(—€–WÆjzàH›ÒŒ¿Ž«_é`¾¯0j\'æz…ˆXÑTË8½F•L‚Pn%— 6UE‘M)ñ‹èž>µ·âdFâ€Hžï*¾òå\\g7<µ™Œ˜ûo|Wñ©ÌQ²éšã±1\0¦£;›Ã%Å¾)Æ@ù\'ëß€EjÁähH¦+ª<CÍ8lÃ{,^¥{Ç‘®“Ÿ-žòãÍcCT%‚t§”óÀàÇÞiÃƒË§…&Ä¿7ÈH¥…ÞgAýžà)×•°üù´;õ/Ì‚Á	Ý|;¶·yŒh\'&oiök<¾ ]Lª·Ì8t¡‘`H¨näFÉÈðöö8\\8YwÔQOìd—=Ï·rKµ 0Àí¤Gü—î‹,áÞÂ(H«†5}|¤g’ö	ëþËÀAïV_JKÆ¢;Hû{ùÔÇaÔœyöèQäGªüµ†ôøH®°G® ³åƒ VÍCŽ8+ò`µ»WÖ¾\'`|ßÉð`uÌ·l:í?LÁxg0H®·bRÊGÃ/NNõYDŠ4cÍÆˆ°‚P6«k«¥è²4H¯#á¯8D´;5FzlßÏðP\";×\'äd\nÈU˜ð^³+°\rc_À¨“¡>¢–GlÊH®œ¼¯|š)µæ€šÙùS±k¶ðÀß½ÇM¿Ú`ù%²Œ&ü\0¬Â`/†ÈJ¸àH©J2 7«Ä¡ñšPm§eðrE‹ÃõÒÐ•DCµÆp°Îú}(JL}?“ÛÞÈLH§ˆfg_=—ý¨Œ)[°¢úïî¥æ5–Ô¹Ï¤n&E¤¨d¬½UÜDD9Ê¾«‰@H£Nöe)-” Ó©¯õŸjÂ\0EI˜W±¡óÚ}Ä˜8¡Þ“ªPOBžŠìÀH½ÐbÛöýS õðÁ¯ÓZÎñÝ§Êª33ã”Iv§¥üÐý¡zîëŒOÒ¾ÞHù;IË¸Ê,CŽsËÓá»D*‹sü7¯YéO±µQ€HUÖL-š„^Q4È÷J\'rPE2÷O”ŸïÄÿ\'³¨gñlH+Œy>>;©\ZÊiÊ\"œUÏ7.©{}`Cgÿ¸H)OGçVi~IV^}$³Ç!@B\rhƒ.‚Cmw4`H\'Œ×f+–©1nh JpÆUr9?±B>Ý,˜hˆëž0H%9©‡µÆéµeT„?_ié®é	b©m”³YK\"®m€ÞŽî×Län™ì®H%9¶Áu2°xRB÷«É°Þœ&sMñxX*RÀ³¨êšßåÖL¤Ê@HÔ®å­™áL*,Kÿ ¨9ÃÜßÖ7{\\e™gµj™÷Gró¶ïxH)\0÷›ä\0ö6£}	>ú\n==ä\ncÓ#µÌïšÔiTˆ@H\'Å*ÜÿI»Íw`ÉÓõžçÏw&€h p!žK°«v²\rHùü„¡† —$Ñ\nðBè_œ@stq­bnà¨ˆá&‰„½pH)Á\"?\"¡ˆÀ¥TÓ	GóR73\Z½sä(Ù¾\';*z$oÛç×Qæ H+–õŸ/0Òsp¾Bè¢³l‡0Ì|AÔn¨-2KI^§«Ë=ÕÄH+—AÈrÖTF¾WÖõqc5i#UˆeåŽ_Þð¿G„›éÉ—8H+–‹áŽ-hSw~ˆx°».7Â¦O¤“ßÏÿ]\'iœÇ]UC¸´Y‘€H+—?¥ÆçøƒœB—èz»iøYÖBÇl!uÒ_•!¿üM$ë×‘$H+—A²-ë@(Ác<¦Qìð(Æ±<mÁv=†1¸[Ïk/;ìK­>^H+ƒûä¡‡KðËò©¬ªþU&Ó‡!¡s/Þ4,¬Sd=séá1!T€GìH+gYÛF¡ŸãJÌ¸ÅB2Ül= ¡Ž\"l&.w¡ÅÏ=™é Ž·þ@H+—?ï\Z˜\"$ò™}@à|{}!\n\\¼kö<íÜ4FÁ&ÔH8_<`H+–-D€¤si¸,\04K(Ü‰éQ1¶[ÎMl­L¯L*ØÜåý(H1[UKêiôž¬öm­Gs‚Þš½\n\"-ž´¤jò»uvªKÀH+8P^4=Ýg¡Â ¿ÈœÔ“Yt]2ê•¿¨(|þ±XD6èNÈH)®34²]|Á±†Ûv\0rÚ!îº{ÑowëÚ2èƒ¯´mö\'¡‚[šH)¤ÃµXh)Mr9Nš\".ÖÿúBâ[	ÁoÈ*¿SAiÎKÀÜ+qÙj€H)ÁþŒéÄA*ÒŽCKhq9Ì§¾SÒŸT™AçåóÙIçe*]PH+—?Ò ÂÙ·Ý¤ëBaÄw?Lº{¬fyÕk\nqƒ§_eˆrH+q;ÜpÓUh†ð¿}‡ÜYr\"Z`EMþÁïœJUl\nÀ«ÀYò{|îH1[UK®`uÏ·Ö=Š¯µ‚Ü^YõÐy>!¿W6ÀH+–ˆÃ3å¹ªBIêi¼2\'lÞ>v\r¼òL˜>ÆÇ7¹Ú‡†”bH+ÒÐm_¯úa[›ÝçhQðò â œDÓæŒ·SÔ¹ã½’Aô	BóÜH+–÷G}—Ö}béœ!ýlí![\0ßWÝFò‡gº\r¥þøk…õ@¿ H+—?Ôî:u‰ëïîX\Zª/)ñôþ’BeèM75r›\"æOÈ¨vàH+_…¼í97ÖmŠg¤gÂ_°×,† ­Ò<èVB~¥ ¶ Ž4H+_†\"\\q×Ô»}kl×Í‡ôÊ@9íFi/8Àm_	à±ê‡™îþ©/ðH+–DGÌô Àèaç\0\'G\ZËrÇKnK€$3{&–í&%H- ßP^ˆ¿IA„dMaŠ_¸Í…Z¤ÓÄ´­Zb‡ù²«tƒôÂÝ÷”H+—?»A«Q•,éZG>TŸ9‚× ïú~±&Â‰ï8°9­ž÷Æ­ðOggS\0\0h\0\0\0\0\0\0\0\0\0\0\0\0[q),\'&\'%& #\"$\'$\'# %\'&H+–DFø“(™ëÏ[š5×˜mìº—&kwŸtùEŠ–ìHœ³<b]H+^C×e\"OgqÅ7yD1ºæñŽhéÞ£l¢òŒ¦—ÇM„H+–DG´	ôï†À‡\"èÕ¶îm6¯}¨®óçÅAŠœ\nø!µ‰H+—?îês —+yCS‘tF_\\R|+¿l¨ôýÉ’Ë^T`H+Y?Gkªùcq¨Í¾\ZæAO¢Ó€–-ÓWJþPHñ¥¯Òg¹ÀH)¤ÂÔÚ/<¸õöy\r¶.eÂÓÌCÝ^þÌOµö²NH)OFšÝ\røþßÆ2ìPÜa\'Å~ð%\"ò|ó5²í\n†H\'»ì§ûª¿˜µ8«!\"‘»?óÓk™dæÑ/ßH\'=P°.XmÚ¢Ù9´>\0v\\4À½/Ñ+®¯[ý$¨Hƒõš;¨\"æ=@Ð<%Îf§Õ‚À†ñySA°H$¶U;T8·½]IË6—Íã¨½m¹&KSx5–Z2/ðÀH!ÐõºŒf%*ˆ\0)eÎ€o}-ö(B‚¾ wð¤20¹ÁG¢«ý€H\"bèÌ}ÉúBÃëÞTaË˜ž¸Î9ðÔó\"T~³ð\rúŒªH!öë…~K£]Í\\•‹\"šVó|™FZ_ìÌÏžøÂ¿à{÷¶»}o›€H\"fº‡XìýÍ£êàÏÜD“F/¸‰_‚ˆ	q`Jy7ìH\"^ùþ6’çmÇM¢{°ªJ\Zâ’¶ãë¬¹¨8•žH!ÏM™x´„%¶\"¾œqé..G×¡À:ª×\"CÌ–<Õ°¢¯Î@HR;Ô	Ôí5†.\0£§ø\0áXÏ;ÎÓø÷eŒRO0ú~:ÛÀH!ÏMœ45H‘*WuçDÉjiZkõ¼îô ,ö´E~PÚ>}','nukapa shabaju kapua.opus'),
(65,'Trabajo con','Nukapakpi shabaju shasa rurani','2022-12-05144339594426reunion cancelada.jpg',1,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨s\0\0\0\0\0\0\0\0\0\0\0\05f6ác#,\'((+,$+$*(\'$$&(,&(*)*)&(\'+\")%,(&#&$\'*%#!%#&-\"/)(*)+-+)(+75..0+22,4&*241&.33,.+1646./&&)\'B71)HäÁ6ìÅ€Hà*«]U-Æ	è¨€H†\Zõÿ2\r¬ï—\0†@	EÊ¨Z?3‡V¤Õ£™«è³\"ÈtH†‹¤ò«|Ät[H/ê_Ëˆ>cÃ\\Omˆ.XŸÙ-HÀ}á–8éWæZ@H†àfT¾#ŠÃ\0†¬“7Zæ<ó|çÌäÎŠ‹Ò¿ô²PÐ…\"§sN H‡%{ÞÍbÈF×ÆÑ‰Ï)ÙØnúìuç9*Ú>ï²söÒ‰3ÀH$ôMï~ë”{¼\\IÏ§¤\rËøÕUõà¬Yö+ã{n#»CšyN?ÌH‡K6,3GÝJ|ú’~ÅÓËexfkZlÕPd|.¯D¦×\nûÁDÀH‡–ÐI×Ë_$&P¾:3~bóyo¡·¸àê1vL=ZRœF}ù†Þ¢‰çøH)­ô½øÿx,3RÍeï\'ÈºAY©ª÷}QoÊq©pwD\röH)écàÅg–ŠKQÑuÝ6J4‰t†Ü	+)B@“V¶°â¹çÄÎÐR`H1O}&z6¼À²[($gÃéÐ\Zt¬5—&ÆŸ[RÍ=eH, Z?qµý.…²ü\'ÒoSúb¬þœS†7Ü.\rAñxµÈ¡6K=ŒH.þaðMpAàÑ_=¢õÙöšc_;y¤™=1–97XW6ßÖ™+ÜH-‹ç‰(êLÊËJqZf6á/Ð·ìf¨#}\r*Ÿ¥ „ŽE{}H/g¨qD81À]<œ”Ïuwç_‡•sP«6˜8ÖJÉí¶ HŸ¾FMäª¥¹S#zúÙlf–¨~TŠ8:ÍÂÀH/h7’uƒøÊdé^boõ,ÍÌùH–ƒ¬Kl/±\0~éñ.%H//Ê©þhmóg^«Œ*l0™Ï c= ¦ðr¯¡ûy¬ƒIàH/œøÈGœ†–ºtvTh¡\'saö`Àr~nÅ©ÄS{g ÜiÇ¼|©­H1PŠ¤§/\0*jS÷oÒL\'Öö%Ãé…¦mŒí¦å§&ý½´ðz]€H1[[+—O$ÓÎìzEcÞlªæŸ\rUËI‹H\'»8ŽXYCý€H39l˜ëÔ‹z\0ø8/QTæ=¢íbâ)ÝÉÏê´ÝFV›Ý´H39l<TœR×“#Ì6¦éCrŽv¤£Æœ=|\0;K”±gàå×N¯ÎxDH3íöÅO#òµ\nÍ÷Ûð.ýN(ÔyØvi:º+©a„a»déÉ°=`H39m]{³ÝCøDOƒ—Á½]+%„÷îËQ»E“w\'uÐòaîBH3å507¾?Î	^Tß;¤Œ“Ã½y×÷ÖŠF{Ò	©Ò…i(\'ïGH39l=ÌÖ¸f€]j{Z¢¸›o;éÙªCÁ”úª¥<›ËX¡ŒH39jmEI§%^ßE?*¦”8¯¾;×“ÈåUbV{3þGs^#‡C°H3ë1V_ºX9Ò\"ÍØ·R}Ç4J_­Õ:^¯fJ¸²o±B‘dH3ööTql;#*«éz	p¾0\\Ê¯õ¶tsWn¬e)\'Fq ½²¨f€H2‘VƒWþ.·ñc\ZµòÕvÿdVÐgì¯\"xØ”àH1ÑÛÁPªò» ¨*)ùdÒ%Ò›¶ËYäÄÇOrMo*\n	£_û9´ÒH4Ãã•LæÛkŠ¤Kpbfô…Snšü%o“æUx=ÎJ¹H3ù—iÐ‹‹Ýˆ†÷Ì²o!½ÚN¼Ô·Eð­ƒ\ZLØéhêcytÛ“î H39jmIšj[¥-¡mŸÕ^¤Rôú­»hÃpóÔmø 7vXh³ÿ#ÕH3ð±.-ó²ß->óAi¾þ&½á4ÔH…‚ß\Zç	§©3\Z=€H3:&iô¨3jž5hƒ!²:^[i ¢ÝU‡4å.’ýÑ(H39m,Ü1[s5QßØÜ$9O·ðTÈjFç8mÛtH•ÅÅGH3ey£Ù«ú-ÆðÐÇ†Ž€S\'³–Ÿu“mšËø€H2õ¾´‰\r„Ê¤awî¶éæsbùªµ#2r‡¹¦\'µÎ‘¦€H1Q2%,©Á	µ¹à§¬¶“3CI6ÆÂA}?þ‘ÇX¤\Z³LsH1P¥±Ë\r\'³ k(	¾_ûÔ-‚yˆÊªžPÃ³–I5}ò³HH1Q%;$+Þtªw˜‚dÕ“êQÁ©ó™þáŠ>:¶¸ÀÎ€H1QfkA¤›ó šØ)mo¤ó»Kí\\ÃÆ;­Ã[©šH1Q&oåŒèeÅiŸéèHhp×$‘è²mïþÈSÐŒ€H/hZÊ5¼ïdÕ\'™ìóŒÁâcrÏÅú&²xŸ¦±ï•Û¾H/g­§ÕÎÛbÍ:,Ò¼¶-¨÷6(ã?‘üªH/h`wåˆ_Å2Ï˜Pk¿ˆ‡—¡½X­üõŠ·.ž”ä»ÖSLH/{SŸT¸õ×´FÈM ô\rÙéãqX!SïÊèþÍ)A:G€gE\Z¿[6H1H™œ<×¥ÜÄ¹›|Ü_âB— ñý§-À0Õõ¦@H1×_-s0°å?€·ë^Õ_>W¢ió¿lÕT ïM0ò£&y¾Ã&ÀÈÉÂS€H3iÀÍi™º)]àïó³-lÂ7vB_ø\0Üåàå]-Í<5ÒŠœH\ro7’ƒC’j	.‹Ó6)‹“ö†â2ßuhvYR”0æÕÛ:IÌÿ H3:}þ95©ÓZ\ráG¡…fCz|2¹¢î€ò¤_‰±{â(lÿØÓXH31á\"^viÐˆn×{^ÀèbÔV¿Ý¼?úEXI_¹0ãUBÉ@H31lŽ	¨wëIBùÐœ\"½ëÝlªm˜¢+lZ/‹Û!ó\rÁòñwó€H3¹Dçuéq‡«kE«Pê¸J@è‚\rJ‚é9 a\\­X§}NšÕ¾H3K¢W±×ZóB$+ïnf95T\rÜa¾Œûàç#ÖF–|Ã„Ø;@H5<Yò¥}¾[EJgè·¬dTTÿÐ¹¶^KTVpÔW^BbdlSËéüH5#*%^/ng-ÜšzNzØõ?€µL‹ÎW‰Î®~,uböÝËÀÀH5:ÕP4¢›Týª…¼çõ\':Üc ÜËO@&=P?ý¯ññ‚µ\03±H &dvçÿM™\'èùòÑO¯‰(”ÊEÍàÜ´¥™¡ÿßCE|qøvñ³Žßå—kƒg)ìÝ;H£a÷‰ä\rCV(†,÷Þ’A%	…ÉÛfÏ»\05ñ²y¿ÍJÈ8Zn¹ü—¹®‹é†ì2ÆÀH£Á€¸3Bÿ¬DøÎÞàSL+%­²:Q2ü\0C§ëx×	®’Øþv‡’@@H£ºå™ƒ\'ù!~@âÔž`?Ò‘ìš‡6Î^™»âã$ilÂ dÂá°€H£ŽGì°(€]éÙµ\\Êï/±Z/‚kEH\ZE™ð,\0û9mÏTÚõ\\…-vÈÒKÀH ¾½ÔMŽ§\\çt}Ùð@òA¸&åÕ‚ooÆakÃp¨\nlqnÖhH½»Bƒý»;+w*Y±§	IÔ•Ñ3Óß‘ÀeFÄ|G³ÊÓ£SÉÕ$¼BB$Ä@H›7‡Xì9Ö\n\"#k°^‰ûú}T£‘7SYß	,œl\n‡ Â›PMC£sÑ–I»·åàÐHƒÑŸf’.g›M&lX*ËI1\r2Õ‚Äª.|ñuœn´$ö\08k¯î5Hƒ>‘üV8Á–¥ÛaGº\\Üiò°2˜Ýõåöê&”;3×)îâ•ÃÛ¤Ú$Ç]aPHµõfíã@	9A]‰Ô«ì%7°\'¿òÆ<¢Êdk§´½äøí10H´ÉÂt‘küKª¥@;Qí6^AB2á-Zp¬ˆ»óòÖØvÌcEòäØ€H¬Da6Ä´[‹[z±è0Eeã¸ì{\rƒò{·ú\0Œê«µÇíqØ}êê!u-¯Úä´ìHž{3ZœêäG\".7ÍnIÂ²øíí{Ž—j¾¹¿ûLäÎƒÅ¥*ÂaÖEE÷¹5Ÿb´Hœ}%0Xì f¯.2™]\Z\"nÚg_+}½ºê¨1Ä`.Cµ*o¢‚$êÔèÝ›ƒ¸ ¦ðH‰…—±îµ/¸”Q·× ^€Ã\\‚aÎ…\'‘ö+&Å»žxHžáï…A„6)\\¸D»‡×€Õ’`dAfS`H€ì«‘1lZtúÑñIçÒ&gD\r6L¶½¯w-Jfè	¬ôükÒmX* Hƒ|)”Mî®\0Û0¨7h­lR·ûw	þ3bEÏ0ôÊ²®äƒ«û§fuv­Ë‚Ç¬H² ‘zæˆ¿œbkŠÆ˜R¬ùõZ£^¨È¶h\n*# B‰Ÿ].(vjñ€€H³Ð„I‡Öz‰„šÃ¦óså+€™/ª*ìwM]Æ¦ç¯kKZ¾:)z(€H´EUˆêU¾Z}ÌñH”þÜD²4˜<Q’k¹È‚ÃÎEÌÿ Ô•ˆ˜Hµ`%æX+Uª#/è€;ÆzõgÛ[faZ±Mp°¿èÞ©PúÀì	dtH¶e2T=æò¸t­{[(³b¸öX5TµXTd/ŒHÒ±o{Åhºp¥»a´ãL¦H¶’ ·k¨:|Æ¿ï\ZÔÙFZÎ\nž¼×\0Ì;LS(ms~€Ö3tçÅ£D_›„%;¨{nH¯®)º–Ú}ñÃz%¨¾Û…`C…b\"<Ì¨Çù—%ý-øUkÜá\n$\\c’ß×þÚèH¾¹ùbÏ-OnªÜ…³£¼w…ÌcôºÏÌ¢+ž4Ñ5]Þ9˜Èaî\n!Bµ˜ƒ½‹=ÀHŽ‘9€\nVI•d\\¹:^ÿ#¯f{\n_FÀ@ƒå,r¾F!þÐK™àH‚’@ÛüQu‚okÌô¨QLª´©àwúË\0uòø’F°BrAüPÿ»ÓêÎ;€H‹Ê|ˆ>Ÿ$Óí&ò=¨F÷©G1,QGÌhLÖMRaå*›CHH4o;•øÃ\0ú¯¥:¦-\"­\"Ó³tuoãà=9g1k±†¡Í`HÙ9fÎjš„`p‹u^p»n™Èˆ¼¬ÒÐ°Ô—úx¢¯i~H55–sfPú3ñE*ùvð-Ð¸‰®!~ñÏe5¨ñ3®‚v!C¿¦ðHðòjøí>t$D]r¡JÈð˜.sÖ€ìEKO·yÌsTâaj¹Þ#Ç îxÉTZä•†ŽèT,	Jq{ÖH«Æ$«µ\n=¤!©•ö¨ÃŽÝÿfŠA\nèZï´?éKÒîyÒ»sç;¨1’¾ìauf{òëH­2ÅÚ§dèÚkçcæ&’Þ1¨sìÂ>í&Äqv.wÅ ïŽÒdèï™JžÈú%À˜H®ïÏC ]Ra<Ÿ-çì­Î’cê£ë3«íßé²Ætƒ’ÐxOggS\0\0(¶\0\0\0\0\0\0\0\0\0\0\0\0‘Ðb¿V6#&56+&\"21-3:33.-2642,003664153.6+$*./3.1*(,&.2;012-:)%-=4-:;61278131.)%&$)5//4)35,5+#H°ëF³ äÄŒ€j SÝÿR#g,/±ÌGõœ´ª¦€U\\òò.‘/¹FÃc[ûÒ×[%À©\r= H±ôœ¯¥k£dgq\nm0Þ+ïáylCF+Áqüá¬­À#H¯ÁT,^#‚õç\rÑ›©CD~‡]d}Î¾™‘›\'¡½¬¦æõSÉHª±\0,V°<ä]â:Î«i#v0s¨A~½ò×Ž–¡ÌÅŒ\0aXiè¢”ÑtÝh	¼£H£L>V’Ñ¿£G”³WøÝ\0—·2&NGr5¤<©ƒE	íc. \\Ógß3±n.yÎF˜ÃïÅ&H¤UÔ`[RŽf\'\"egëò]Zˆz#\\Ú|Q\\»\\›óŠ‚!Qg4H0Ú¸u+’Ó!âæx¶s¹ÞÔ),RÅS„C‹¥:¥FîËBCs¡HëPƒ¶\nsV éVA@§Ï\ZŸ“]<CŒWåª›Q½`HÔ#Î5°$ˆ\\W™ï!=O!N•-|¯>ÿ©Qˆt™š!†Ez•¼Iôgö£òî‰Ò×AH’ËõÈ„ÛNIõ3\'áRLu³Û0µoiÁò¶Ñ#\"±E98hÝ&ì¢à\'!¡û$³òH•?“I\'x÷#	WµlD™ýÝŸåÿ”§+h*sc¬\Z)ûªrýßéÂàH„/ÓPž	4Õ`Ã7yÐ»°¦¾–æzÔÄÀöCanN™%ÇVbáùÝOBReÏDb@H²LýñùáDsAm1¹Ëv¥ËOâYgŠÎ8³²ç‡ÏXj@+\"u:;`±3\0YT«¼}RpH³(´ÃÐ»Näîö»²HLï/«ú®¦gsP»®,ný4s­¢FÂˆD÷w\\d@H®\ZºHªöBY7‰¯êA2+)àéÀ$Î˜Ã%kw‘\rŠ¦ˆ“1çL¨Zp¼é H§DÑÉ¿åPñ*ñü»¢µÂ{\'Aª‘Jˆ_·ÑŒüUýé¬…Ìà O&¡o@H¢Ìš™®ž×¬á—å¸æÂBQºj/€½ÝŠWi£&=hSŸ»€m3)‚PeÀHž©—YÛ®)uY´¯q7ƒ(è6ËøÆH5^ÁDFlGJQ2ÐDîã®ËK\03ÎÀHŸ ÙóÈæ¥Ëöôo+…;KrhÇÙ¾„ìæqpËùÑx_‘æ/´Ÿñ ÀÊy¤H¤Bg6\'™3.ì´Ø æ‰»	í*b;I)ìîßð›à[4XÛÄ¹in|«²ÿ@´H©Ó*:åW¥£Š¥à\\\\ºz{?^æÑ­ÿÖ¯æºÃ§’Nµ[mV~ØMT¶F H«1Þ¿cMÍLt„.*_ªU4\Zä²WÜ³—Ó¾yoŸ¿D®¼‹”¶s¸^• H­5—«ÿÒ«qÔ03ÝOr)È7<«ÊLmí]¬ÆIZÚ? ¿Ë2ñæmù‡pH°zD¹:ãzv7¦¸ê‡à‘*ÇÑµ›ºPŸ•µOú¯g°MÝ”oÎ0I&ÖI#Ž@H±^#~œ—ëBÈ>q«þçg;\'¤~VÕÔT?Ù×à6ë\ZöSo‚Ìr~.€ÌST®€H«ÛÊ±*îÃ=h²gÄßÙ‡zVž™/™–ßäR¹=H.H*9s–Þ`‘NõæZz=QnT H§‰0éˆ‹Ì+ ¹ö”H,·[Tò²€Ò«7\"¾íÏ—…=ÂoÓ&–Ê‡-`¬Ç‘ßbëLzÞH¥¿Ø–{ÛCÏEœÑfŽI\r¥›û+BJú<h™Hßr$x_T:ær?€ø4\0`H¤µýf,F½¶éÅñÎ•ÍæÖ—çÀAr]ž…Ð	Íî\Zä¡9R§lI Ò@H£Úk-ˆ>1Œ\ZcÙò»Âvˆ#0r/ý¾Ê¿(jæ”\Z&uDãîœ!Uãù3Å}¦90Xâ…ˆH£ÜºL¥¬t°b8†¦Jty·€w’&;Ày<ÎþW·\Z¸ßÂE+~ÍyÒg`H¤wJž= ïé§Ÿ(M\rmû×J\\xÚ^$€š8€E77…àœÛ\"ñî(8ø`ÍH¥‹E\\rƒ2Ãú¶\ZW6&ßü4 ,‚-w8Í3O¯ü8oEè»ûúèD¬ÕR;Rí0H °i•o‡.ÚæÇIŽñþý×Ì£l™5œVEñ!9BÑ>­ê²ÔH0ïö¸‹Ô=¿ÔOÛ‚ùõšrÅ¨gÙbL	OÓRxH€õHl‘š‰ŒH­ÙökÍ³œpàòçbÀ\rcvJQý2ª|„_€H‚‡6ÐT~U§‹3T@!%KI‹¬ªÿ/¯&€ÔŒ¯_núæ‹X<û8óö9÷žàH“<µ•Á†€>÷XìÝ¼ÂPP[/Öß:qçäGÖƒå!à³xu,øz2kÈ./ã0H”êNg½ÐÈ¯[¥½·$+PQé`Xk\no\\Ä]«°pxT\Z8¯¼ÐO÷À UœèóWíH„¤^äpN‡,Jãû	gwûÝGUçéamÍßb[ÉHÁøÐÔ&ö;ªŽ³÷ôÃPHƒîs|º§¡N³š.ÄsŒYØ™óHÄ°ÇHðœT– ÐZi36¼—*†ùÃÐ%€HµÓ\\®jËøþ[ñtÙkâÀØg£–÷âCb{=ã²ížÄhi!ìH³ÌŽÿºh0¨ø®þƒ<XY{§ö^B”|¦(‘µ5‘å›Yûû’H³¢PÁ0aìØêö×UJ6æõï­ÉŒ:å°\r\r_®î‰žo‘±©\"¢€H³<¼@ÎaõŠâM&Ñå@XË56ƒÌÕ•…Â<ä´:2VÄ}³H³!¬•iZL§–„«S¦¨>iƒ\ZŸekJ{’äÐ¡ÎnwÓU&øÛ0AÐH³~}µVØ‡5K\"Œbdê9	>Q”ù0ì_îÏ$lš(îµ»¢k_·¦\0†OHµ\Zj ›0Bë×y{6ÖôB.í_ß¸ú¡B@N`©ùuR©äýƒ/›1\"»åÒ[eÊÀ£QZ}V@H“|3¥“ SZu¶%‹u¢­Ë8ŽC*Ì\\åUzLÀÁœ\0÷Ts·|Úb5I˜H„#‡”TD¦óº‘·H?»W¹Ÿ†Á%V	—ƒ\\6Vë{•£G†’€÷¹vö@ñð(àH“µ“f‹N)|Ô¸®ý%—ªI7-Á´¹†ïÀjä/`Þ3ÍÁ’¾û5þ¤Â±ÌÊIÀH“v)×Èb¬òÓAgsÑ/=ÿUd=L«ø8.eòñäÝ6WI×hã§[oH¯T¬Ûð_J¼›¸ˆ9yå–óææ{\r\ZuÆ\r‡;£b’7æðvK>j‘CøºÜ¨Ô½ÔÝHµlŽºúHGº¾\r\0TJþF7‰=ÛQðYŒ¾!4i‹w¯Câr—±äÀH³)ë<O„†Íe˜.ï»$‰h£HŒ‡wÄì¬­–Ë* H¯¬8¡ ³Í¾Â×¾M`”‹=sè¶&û…ÇôsŠ<ïý%a·2üOef8H«Öæ3;,\\a]Ißž*JÊCaâo‘þiãlZ«|\næµæ´·.#z6ñšå^º&ž|ñß%C8H³(¥r*OÊ¨l:ÎX÷q¼\0Ëƒ-¬OuÄûënž’„Ä‡3ÎÉR´/¿x–H‚·,ÔH°^Ò²V‰I@Ñz³ó3dÅÂÅh¦M¨tW½f¢§é£²˜ÕÐ9OÉH­\rÀ\0ÀúJ—|s·¿fsuâü¿åî€	ê®%_ï\Z³Iz§Øä4&<\"ÀÈ;å˜,ÕÅ”ÐH°Ûxœþ1rÏÌ2]>–ÂW†VÝ‘äÅZl–IAÚ•\r}Ÿ²ŽüÍáÀò`óóó¦=æ³^É;u§nH°atæmR˜Ó@[#0ñèu´¦!ìð«-žD›Íü3ã¿¯Ô™ž\n\r’e›Öìf%åa@H¯Ö…«#Ñ­6Þæø‘‡¯ì·—Ý“e~b½[¥$\\†Ú9}ÀŸ¨®‘ÞIEÒÀ~€H¬í>›˜ÚR:íÎöÎ\"ØË¨jóß˜á);ÇQÉ Ã\Z£!\rVÒ\ZVÏóÐSñÅ—H®°\nV~Tp‹¯Ã¤…´ø°ß$J6ç2ƒŒåø)I:0BŽûþÉ 5j¶ª.Þ`H°yeûÒîÎŒYŒVºËçÂéÐÊXE±ÿØ|ú¥0ËX5RU`ô¥§¥ (TÎc%Wqd÷çnH²Ã\r÷ÝÛÍ…4ë@	Á\rrsŽÔrÍ!b5ÿ=á7ZÕjâ;—,=¢ÿUÆi¬ÁHµ\ZÓ¡Å2îOýlÖòKs#I%WŒ`œ~»ŽÜK|Ä¶ <‡Ryé¦™%?êwÎóVÍH±wr^d‚	E4Ðfî	û{•¢°u¬Å(ð00’_eoé™«Ád^Ô	¤ù/€H®ô—­põ}O”BË‹cŸFO‡¸¬†@)¥‘ÅW\ZVÐàJi/VÒ®`ØH²\0éìXÏQ8\Zc’ÈþaX¬Dã&«Ól||VB7¾	¬€Y H²Q¢HKXìé_9œù8xì7ÕÐ–«!¼ud¬ëL¸*¤fH³Æj÷4ü\0>Í_W„Ž©m?œŠ™IëV¥óŸã¤´€…g÷YH³ËHæÚsÞ·û§ÃšÒLÃÕ‘Ñ _í^¡´’hlúONqI@H±~c;ð0.5Ì•u;+”óPJ‰hÜ«ÓK·ïg¬æ&KªÙSäÇñ€H¬;Ú­ž>Ub¹é¤1´qáZ¿¬ß\\”[ßa&*>ÅÆ’Ø¬Ì×4Pr ™üBtRü„€H£Àò>þÙvØd¯ìÖäª]§I»½j>b9ËÈñûkœRÎ0¶0Ç7BèH¢R7Ò0jbv;yÞ»OÕdX»TDKHk\'ÞÅ©¸1Å©«©Wgw÷Õâ˜ HŸð¢ú%/+f”…ìÀTÓÁ]!ÉZ@Tnù•K¶—Ê^Ý/ÏTP%_ØN]Í`HŸ¿f	Y0ï£–o‰fÛ±¢eBµ­\ZôºŽalýÆbT†êÜB9ÓÅ4ØH¦K&ù°¤Aï\nN(.íZ©\\Êò&Ø\Z<ÊU„œ!\ZÆÌÄ¿c \'Ü«f\n²]ÒãÈ	°H¦Q˜Žh•™E\r‚2÷ÿ£cqœ‡L’r ÷“,o ä†A8–=oL±³ÝËkÙ=0­ØH¥åžUHq¹¤HjŽÆ\rnÓ\Zò:1eX³þ1*ÞNþþ\ZÍ»iÁ°H£c„_²¢ÇßùWóL¿åÃ¨15—d$à@·ÓK—2•\'¯š<ê¾ªfÜgŒ\ZË¨¤ûW1ˆH¾$ÑÑÓT ­˜T’\Z_/å°ð\nïG|€¹œt—#-—R¬²	²H72èAø¨±°H…C(DjxòÑ‚ÒOÒ…\\Ö$=nòý0OggS\0\0(.\0\0\0\0\0\0\0\0\0\0\0\0›»ß #\"!\"\' #*+&*()%+)%\')))($/!#$$$%H3/Cx“±’m•®ÇÁ>D©v¤¾ã9qøYÃ8±ßÚ-L@H39,Yä£N¸Ø5ªÃ&üh˜4u–Ô<Äs&«g H1ÙÃà{2MS—ºº=9\Z(.£Ó÷\rÁ­È±\r#Ž^PH-6å˜éU±Z-¸‡~>’©j¿]=sŸ\n…™°\\H+[=\Zó‚&%g˜ÉtfG©\r TÚ½Ë¹{|Ïï¬5pÊ÷{°H)­îhº~OxêyME=Ù>\\O©fQ>¹†¯œ#­±†Ð¥¼\0Ñ…  ,H)\0ÍNéMX-h±€ñoƒÜ÷Úa‡iGŠNôå€6÷àHH\'»ÁÂ1wWÎêõdjJ¦3$èœ2\røUýDšÖ\'qhB0H\'Ÿ¸_á/€¢0Ó‘w¹j]£Ó±›ªhä~é)6”Çàoô»Šoý)Q`H(Våž”r»Köí/Ž]ew*çÕÊÆ+õ_ù—dðR¬Ö•TÓ€H+—?Ñ_|‘§¼x\'@aÕh	×ï¦Ö®.ˆÛe©ö5ï„ï€H, a2Ðçš¥ÜåÛÙÄõFžKLùU1¢7ñÞ\\É;B\"Å€H,Ó‹ù»hsÄ°3ãµO¬]ßLv‹ã-½or„îâ—áH›˜õ$«´üH-ÔAÉŒÿjpzŽ¹U^E¾ü©C?/º\r> ýÞ‹ÕD«Ñ-»Ð£yðH-½áø^êµdÔLnVGàã¦&t“ó«‚ÿŽ‡R$§>ÀH-¸JNÄÇ¨—ý~âŒb|ÌŒð!;i‡KÑ”D4Ò9‰+àU©%‰z H-ŠŽqoÁ\0¬®ÙBB7„Ÿ’ÏrF„E&á_vÁ*¥ÚH\0°Y­	Þå\\H/B¼Ùõ Åá]­ßÁD‡ƒnÒÓÍ˜+RÃr|Æþ|‘þÝ– H›”%õfuPJr‹î­E¾û¢UÕÍµ~Ðk6|H/gç½(K«º×*ö\Z°¹Óy#åœ_^W=:eÍØ/ˆ»wŽ¶”PH/B¼6h]G~]j¿2AìCµCŠ=Ü>kQ%÷N*}¾ê*2H/g¶Õ(vW\r¢’D„©¢P5s\Z~Ó™Wfº\"Xç¿ÚhžAÀH/a¯‡sòÒOz©b¼ÑHp“‹/*ŒÓXfìT}–D¢T‘îtïN…ðH/8£åÖª²`ã==§8n=ØLŒ,.y(&÷ß=_ÞtUÝH/,öu¹\0Ç¦^	\Z(\\âO×«è²B:\0¿þ×»Ue˜´H-¸LØ\"Y‹0÷fnÈ$*‰æô9±¶JDõrS0´×ÈWï„Œyœ/?9àH-ÔAÇiŽ„èmì:²@t/°é©6Ú¸™³ÜŠ35H-ü«‘|‰a+Ö$¼Æ»ÂHkýž3!Ë…“ÜëD‚(H+–-üM²žfOÔGµZ1IÖ¤Ï›nãh`‡vb“E	0H+–ò\'•³5Ï­Ø7Îýõÿ„ÃhN>¬¨˜ŒŽ·ÐvEƒ[ÀH)­ø•Z±=k‡Ò¢À\",ÃR±,Ø–ÜGmá¤üA^Á€H)	ÜŸºiå›ˆ…lQa”µÎ`Û³è¯—EÄúø?‰Närà','nukapakpi shabaju shasa rurani.opus'),
(66,'No hablo inga','Inga man rimani','2022-12-05153455785247noentiendo.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hY\0\0\0\0\0\0\0\0\0\0\0\0aÞÕ€\\)--.$.\')**-*))\'*-##!&()!\'\')(%\'#\',\"+4<3-20--.1--5565*/&&,.038/+/1.;2066-13.94,-255;:-5113.HäÁ6ìÅ€HákÉØá—‚Ü£2`YÿH€Æ\n»Pq°BŒ¨j‡¢Â°\rT˜Æ…%—É»ŽÃª¨PÙ^SÿÔð÷H‡15¨—n’Ìs.„ö×ÙVpþÊi \"8øÇ¶×…B¼7ID1ÉÉ]ýÅDH€Ò¨Ïb^}Õ”V€í	–H°vI¦Üåë85}.Me2_+õüR	¤]½gµ HˆÎ…\rD‹BTz(Æ‰*AÆÎN\'ïË™ã÷qòUõð„ŒUWë‚Ae}–¸ðH/5F/”kma`e¤Ð§PwMoD]‚¨\rög\ZíW­uMpÒß€H‰\ryw3´ñÕö¨Š ”ð§ln±jÖ\"ÒE·¿w‰=«>¢\rVÇbìgs÷‘ÕÄèHÛe\\þy\noh$Éñ#a°]´î#]\"©ôá\"Ð5Ä$HH.ÂÖKÿÑ5)\Z@&¶f+å|.Í—#{dð«ã@Ž`e]3ÝÎv%…€H-‘>Èj¶äìÿaÔiHŸ=²Åì6M¤f†qÂ¬8(l\"¾n•­(P;H/>K>:àÐÌËo©˜)>x5V”rˆ––‚Äf5×DìP\rûúéU6ÀH/tê¬s!\'ÒÈlöÕðy…GÁÈ \0öžxž%x…úú9^v`ëQŒ²ÀH3D½Uj¹Í»o2S@F\"bµÖ¬ÛÝãiž|<éÍ WHäg¼¡…wÀH6‰YÈ‹‚|æ-p—KUÎèvPÓÙ/§é5ãâNýã´Þ2ÎŠnH7=ö{þ±4…Äh\né­\" \0¿;*)Í/{nôïœ¡ÆúÙXH¼ØàH7GÇí!sÔÂ¢#)K{û)1—|ÓT\rX‹Óž\n`Zu×‹/`H7XS:P¶±˜LúÞrÙ}“×‰ß,mÁIs–Só_ù=“Í¼ÉVæŽH8­è\"„ë@²Bý…4¿<¾	C*Ý(MÇ›W¼ŠžMÁóq#ïÜÃ°é€H8f{8~ «¶Ý…àË ³ôÔü‚7“–´´”÷Èmhñà,-H7<›oÄá¯@*×jûUŠSË»5š[ø¥.Ô`=sH6Cê´ˆÏ[«[\ng`VÝÃé ÷Ÿ¥/Û\\ÊòH64nXN\n) {J·r4GŠ{lóç¤ÖaH2|;Ãoº¹Õ–ÒåÈÛôœÊûEr—»Eç@^»ÚìAŽ-ÜåkH-Hš¡°ý¹ÄÌŠ%·ì°ÑŸ^:!ð×¬\nì£±ryT©¥!Ž¼> ÀH-H°ÒeçBáœ¡“B³îTS;\\Ï\r2ÓÇôÃPrÿyú•ë}\\H-³-ä¡¡ŸÂ}÷y™¬=½ÄøSmAÍ/kÑŠž@H-IAÈQŠ˜‘¹tÚrWÉ¸ò›®¬¢S²IòÀÏ!T+ºïò€H-²`KDŽo1¡ñÀá5èErŽ•¾!Nf1Í!6?)¯Ò@H/é¨’ù¿gôüCùEŽÁ‘Oâ×@qõß¥ëÓ¡ðÙ‹ºØJZ¬2üH13æ‘†ºþ¼¹kÞüÉLä}]Mj3‰òTQ…Ôhµ$æSŸüšÐH1HsGÈ,Ç<A±äG­,4[î>‹ä­¦)× ºWRp}ØH1!{\"sÔJ²NxÓ{¨êÞ0j#2]Þâm…~LDGŸ,ºdH1Qùl3º+þSÁ–ñ(ô8³YÑ1ßs%¼h‰„y’p\"AúH1X„ÞÂ=AsÍˆP†œÊTÃŽðòbó\nw®Šªy×”ˆkDúH/oÄÞ¼™õ-gá;­ÐÏ ´ã€Áª2H¨¢Yí#Ff‰ºÆ‚nØ{`H1QEKØ‹Ýˆcß¦#Nèõ\0±úmçú²ŠKºŠ—£H1^2Œ§Œ‚š™»ž:¡˜\rS’Uô³Ç\"ÜäXZÄ„üSL:Þ,ðHzMwQ,â£<²~ÃÖf½÷¬:Ü…?^O\'í\0äÖ¸šÑLñŠûCiÃ6Öo™O¿®=ˆH¨` 8šólcôÐ8S{ÉÜÝÍ>È=‚H¦e	èAê\nìªgòEÿ”{˜}Ó¥ô7¾d_$Ð+§@	$ H«Uðþs–7p±ëqæ²ÔÄO× Þð>èÝ¤dyüøÛ—ŸeÏ¯[<ÆÖd¨H­}Mâ0£0Á<@GKÏT»@žPÿ]òU¬/óûä@Ã¸‹7ÔíáÎå?Š\\°H°˜ÐdRžtÁX2²×[Jñad\rcS£G×,)ÅI)°\\‚MåÇA€Ò\'|p¯H°^ zÁ^	ï¼¢žØITË™¤;”ªïL/@c±U8¡$å(JJû·h‘Ù…FI;#pH¯Á°¢Ä¡´\n\nwM:9D8ÛýG‚£[‘ŽïÕJ¶ÕÕEGHeIz„ad‚0Hª¬\"½òf=^îÌS¶fËÞ”›‚¬ƒ¥àFºS‡CW±—†M®$¦ÿ^H§–ìºÇ§ß]é[´¥vu˜,2Iÿ…4Õ¾»‡šYíœFlº\ZÌŽðTàÜŒ€H¥ûGÞßÁO#5ÙT}ê¤–ïº)?oÚdY(îˆØïqª”ÿåF\rÔ>UTÜÀH¤ø­]ö•|Ž|±JeÎoºD¢”o¸sEŸú°ŠDìåª˜^+w<>\"H£°íC™Ð,ÅÛfÿM5‚M´Îeq¦²¡Zx|¢µÍÃž¶“ß`P&í¨ÖÉÀH¢¹þ ÓiÇóÚ&’~ë1âwÖ6ÞŽªÕy±qí	¸:õ·\0‘H‚Nu{Ž{™H£~	¹Œ{4KµÖEJ³ù´LóZÍ¡Ýy»ˆûKm¬cà„û5 óÛé­ÆlqOW@HªÄÁ+&½ªÄÚƒ¢Íµ…#éÎ?—¼4ÍyºlËY›@0ç¨¼;¹#M=h•KM´ÓaXWà›ÔFsH¯L”ÃÖ¾,îqÇ6“N3%B¤dñRz–×’híÎÌ#äï\rýÚ(ïë;÷‘‡Ì\0º-èÝôHµÿu¿OmS`h€Ê	!èà\0J…R6ç¶ìÊW”ù™ðÎ±kæ†ƒ²@Hµíý\"\'GnQä%lN½ôúå· 7Ý{ñTÕA¹y™èA€s§áÞ’Áõ,ƒ\Z¡fëHµð^Ï¿a£?!¶õø@4½7`ÈP»‹*ËÙÈÎ‰xb=ôÖ-ó@HµòÎŒ±P·TÌT±¿‹2+óUSN³Dì]û)Ñæ\Zåw5H´Ðµ™‚SY6÷n@ä¯ÆºH4¡ñOÿ[ñƒJ2þ%C\04 ¢–ºÖJ@H±ä·{Šôï²Üì6Ìþ_loÓòS5ú;OFÙ¸´XWNhY¿ŽÊe¾ÀH¯ÄŸ­ÑO¤_´I\ZZÑœÿC’mÿ£R¶Ì‰?Ï7:ÎÍ‡ ©eübï…xN„ØHª“# ÿ	Ã¡¯ðšÿhÉr\n-ˆ+øm.¸_³½DY¤ÕÐ»î¾[™1wð	ñH¥3…_ƒJVc¤\rYÌ {YB¿|8UWk?]1Ÿ»ó®ae1yÔ<õ`-Ã%èŸoÄlMƒ	€H¤¯ãª\'ñ®bAUÚÚÑšõÏ…©ŽéauÑ9û0!Î\\Y	“Á D`ž’Ž÷36DH‚CüŠ‰v‚Ìª…_7ƒðmaÁ€½\"iˆS¬•¶ô\r*ÿ4”®<äº1¸h‹ÞH‹ó¨:dÐ·ï¿<Sy»¼¤jGF´wRçrÏ›#Ñt¶ZT6ç­ÀÈÀHî^†Í¾â«\ZG¡ëÖX¯ŽºúQ­Àµ¯Áw76CÚµ¿à¬·ÞÎ°m½ÍßOlH‚žxÁ†¼=Ù¬Ô­ÿ…8 v’ŸS&Ù”,Â¢iŽ ViÇ–ÎYÌQˆD Hž¼ÙF;ävH>›þ~B>Æ®ýú~	®•÷Â3(ÜqÈ›+•ª(@bCH¨§ÞãÎîÀ‹Á+Î[±ŸJ HžääV“8~+ÚÆK5nT_pìï]	ý$È‡ŒªÔâEtÍ ëõLåøaÌ[$6·±öH *äÙDQ‹/Wl•–vÒ\"1Æ´ü?§Ì\\hJã;ÙývÞA°Š±„H¡ÀF>€¶_ùV[G`érxO÷ªxË#oŽ3 ÛÑgú….Ož(H€ªlÜÎúQ5Ð³åÏ H«Ô]½m‚Ûé†%|ZâlëóøãÑ¥/‡Á•K<ÑYæŠ—Ç$ie©\Z7n¢*Zí¼-´ýŽ€H¯/ã@«Ã:Ú,1qÙ`\"W5ÍÈ–ÀÔ–æŒ»P\\:šƒ{t,êpH°,Ó §á}ý˜S¬{Ø7b½Ãk?Õ¯8‡Åô…t&šD‡(?ü\ZM5¯‘ï\nn€H®HÊØVû59@z–ÄsôŠ¾æz©yÍ³ýÁ÷\ZÇ±|&v‘«¼y-¬mT ãšˆ@H§TÙmŒ€Q__0/Þ¡%KAÖ›%ýv¤*¦¥·Œ®G\'k{ë}r½Ï€H¥ûGu%ãŽíõgY£“a$½uÜß½¦ ×µ/\nƒDûþ0®aNA1ñ1ŠNÙfyãëEH¼@H¥JÅˆ™ÌRió±\0Œ\0ìû[åÌþÎµR„‡AÆìØå—\"A‘­i\"œþóž#îN€H¤´çø†	KÕÔÛÚëGß?ô¶¹”RYHtÁ¤ÀöÝ%¡‚¾ôXLy(H£›²äÊ(ýS xF?±¸\n™õ‚¡äz\ZÔö=¸ÅžyZšËžŠh*jåæjH¢$\"µËÙ×ý²ÆÙOðg\\|nÜk-Š;Y%ýNùõtìŽ}°Wz´kòî€H¤«Þ_”!$5\nd\' ­Ý»ÆÓ4_“ÌOËé›´>f{¹iV¢»ó+ZKQÝ]VdðH¦Ü“<é‹Ôá”»È>_Ï>_mjq2!.¾½ÁuÁpb#öþ(¶öÓÕ7³`d¹×g]ÂH©©‰6ºêltø\\S.{UÕr1nh½gÜ +¾9›æá4‰&påo¥¬Ülš¬<!sW+@ÿH/—ú-‰lH®7!zj,Û	˜.YÛ_‘Š«áÍøÄ¬ÏBªyâYÛe¬<ŠÂ«Ì&NýÅc¢!çT2¡&…lÓ`H®¸í\nÓI”œ4v”¥éyut›	¬‰³ÙÙ°ð8”ŠÄêY\'âúK/¨H®ê³¾5ÅfÉÎ!Æ4t“\ZMý29[Šä‹±1cø¼ÞíÄªXbs¡MÉ{T+Ž†¼‘„ëÑ‰|H®S·çÂQ¼ë²µ°¢êøE8kN…Ô/÷ëxHyøEß\"ÿËF.³ð9( áH¨öS\\LvkGê›‚½&1v·õÕÔ—jüðó­³Tá¨€7Î»Õ3ÌÑ^ƒò_HBT€H£ÎYý†™Ñ9×y¿âÉ›îÿ?‰\r¦!J“eÿðÛ?hw€EKu,²C„ê`ißŒBÒÛTsÈH£Î\\a²þ[l›g«ðn-œYôõÑ\n1ø±ªcµHJÆô†¡_5¸r$3ØŒ OggS\0\0¨\0\0\0\0\0\0\0\0\0\0\0\03\'ˆ3\'13*)&(152.6665,\'+(\"%\'#&(%$\'%\"(\'\",),\'\'$(\'+(+-*+&*\'H£Á›æ»‡ÈÔˆ²D€•[‚FóS- Ð>5ÄÛ‘ã¯FgÐE$H¢Çæ‡|¢˜ß®k—û|èÁûŒÕñ}s„/ŽmÎ‰¦TI—Jã¿ò¯¹Áó_ÛòH¨biˆMÙÖõ¦µªÐØÁhöG(÷Õ·aÿ£qÝnqQ;@yÊ)]ëâŒÌ÷Át“ÀH©Í^[+®Ãè9+bp²/È†Á7’‰Þb­÷…CZ¾Z>Él7‘Ï	cÖ`H«BRœ\'jÐÉz©G5$xÕ¼<ç1/y=óZÑåI\n6%)d!Æ H¬î\rzŠ/©„¡L#?KûÙÉžêêW†C›9°\nVÐöt<lH­t–ˆ‰!°»îÔ8+¶ØF¯yZ_úa¢ ŠAœVDÖÓ!H¬¢aæç€d”^ËÀð’Q2#ÀWÆ­·Ä<ˆ½f­©*«ùnÁµÈ¨+å“5S5Ÿ½€H§‘¿.8Ê¿\"÷è«¦¨°Ùêë?ï+vÅH©*>Þn$¸)íä;µŒž r¬zm@H¥FêëÊuÆÝÞÍ7Í?™ìx	\"µ\Zÿ.„pCÄÃµìoòÆ\\ØËê/ívrfbsH¥$Ó…Ø›”$®Ó‘¶~\Z{~WæTA·©Ù÷ˆe¬B1ˆAû+€H£ÜwBPðwk`ÙŠçØ~/¾Á°fÒD’\0~$ì6rPéy*Ç\'Ò[•z$\nt„	±Ì&3€H¤PqM‹Ž/õ}³Ü©ê.øÃÛBòÍN¦Éä=×äKLp^à@oE³ôÎ3›X{Ü H«¼4ùÓ®ñ0ixAÜBí²e{#Ö\'ýžuVoçGMP³ÁÉ‚qít•ï•ãôù&ÚÞ¸H©hrÀÿ²Šàm£}÷‰cxd4ý6ì)’7T\nmWr|èX¡ÒW5¾.o–pk\" ×*RBpH§­Ò\'2¯èõ“)Ô&õÙ™_£Ó×´„.ÑÔÕ¸8«tµºXÔ®Kß@H‚Ê¸}xÈÿl4xeÂÖï×E²WoNÍ\\S k]yŸMPún‘:€H:fÊK`\"Êç¼Óš«ÿX×~^þ~‡½bL„À¸²Jhâá@d¬MGà H¯r?>›Ø„ÿGÛ§bä ‹q/wC‘[ÑåÇªH7*:Pü9×-;é­›=3tïÊÚÝî$¾Õ”í§/Sæó=\'ÃH6f\Z£^÷l ®¦Y”ÿRe¯ñ|ŽïÝðôA„®}H5³üöYœæUÔ€o\rvuGvKËëÐLd—·ÌMêf)\0À\ZjH5!Æ~ui©‚“\0ÖŸ„“¯YÀ*MÅÔ:UùyZ9Q¤Ç(vÂþH5²ç”ª†áùÐ ¬„GvªãgÂ…¦Ì~Jƒ¾6í[ÀH5v±*Ç&\r³×o…÷‘Ùí±ÞÂðü*ù@}Tþÿ `H4|Ð›®×í:ò‰}~þv0AÝÁCÕŠŸš3¸Çzä“½2–ãèÒšH5\":+à4\0cÂÎO/-Ã*D\Z;~Ç(È‘SÝ—i¤\"ãH5\"†²LF<ˆòû*ˆgBg¿¤£›¦\nf^ã†Ê¢¡ØXH5\"÷Î‰ Ò‡é.bc0°\0É,:`\0€JbUçÿÜI³H5\"9GÝ‘îdè‡Ã‡fñÖH‰&8\'¬{#×r°õ H5Qö€‡=ò	jû‘XÃò‹>\0y‚^ãÉzz=H4å\rv«ùe‚ÍÖŠÛzãb\"ê)Û\"\"€yñ†ë,Nfù@H30Ó4ÂÊÅ­Ì®\ZsbVsa#±¬ºqÎ\ZX&?ÐïgŸ‘×2óÀH3/‘öCqRr!òÒ´<Å2Éwï’ÕvÔZ‚ü}Œ\Zòê\\H3:(ëÃú?=ÛnþbNlÖrþu‹*JÊ£¶ÁàgúJä©”Þ4ëÀH3ý}ßÛ\"â¼w˜6ÁÏ	4þ]âUØ]ÈF9aU®ÇÓ<¢ßÉYw‚H39X8ÔÉÐ¤¦WHKzØÅËŽÐ…žû‘‘JRËéËßŽÕ3sË¤™€H39X8‘RZ$ô8\"°§‹=…Ù³2û`2\Z‰ÀÀj‘Ÿî,\rœ€H3:O¾÷ØXdgX\r’M.©Xw\Z¬×ã9ŒéÛ&K®™$@µ08H3:/SuÌGÄ‹{ÔÂ\Z·mí‹byÎŸ\\Îsæéè5;=&\nH È(aÔvë|†|–3µÖ¶ÚÑ·”èp\nFÐ`G^`çƒÒ-ÈØH4}\Z\Zñœ#vØWN\\~:wT2ªñWÀŠq 	|‡½\\è\'= H3ADÍšeSZ•;!:àgÇ^Óš»1Â¸ÀGáÜØoì?)èI?(¨ÀH3AEÆù\nA_CûüË½fPd©ßZ+å·ÚáŠÞãÆ·÷ôS/ñ@H3yÇ5{‰goH_Y÷T÷É”º]PŠgeM„ÛU|	Š€RŽîß–H‰ø¹¨´û§š‘—jƒš¬¦’b£®[¤#ï?ã:+Óñ\'WãÈŽgñôH39XXîÖ¦lý™dP‡Ýgø÷4|‘ë©\\Mr„²ÿO5KYEÃÀH4ý\"Öò­¥\ZÝ´7KO¸\ZËFŒÆûL<mÉ¥\n¶ôú´­•ÖwÝ§5Ê´H: ry‘qD&®5ò^³á*OäJðø\"VÄkÄÏåÉLÅ+»€H5\"ð±½D½Î	 û~\"¦^ÝKðÚ“Ì¦ÌÍÕˆ£hg©Ô]pÇä@H4ø½ÙÕXËÙÎöA³Ýyö€ÑÇw%¶i²#B’E{+Ò?æŽnˆ','inga man rimani.opus'),
(67,'Â¿Habla espaÃ±ol?','Â¿EspaÃ±ol rimangi?','2022-12-05154115597781inga.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0:uÎa\'.-#)*)\'$&*.\"$#(()+\'(#&+&%&)+$**$))*.%# !)\"\"!%%%(+-5,,14.14,+0(2(8,.66-/604/-+1306.24=95961+/HäÁ6ìÅ€HßªÙeß3ÇÍ«×Í?ÀUH†—mK5e¬tsÅ2¾Œ%|¢Öƒ0&¥@«ö¹\ZÊ1òŽà2 H†¸Œûã|×t-õ7úìWk@4‹œ5gWPo\'2Ë¾ÐÁWýÙ~œ¼ÊÑMH†ÚDõÂ$V<HÛÐã$è„Çè„ìÑTm™”yµÊÑaþEëgC:e[ô¦`H‡##‚¸³\\„O.‹Úê€¥Ãqrõ;´ÉñÍ7«Ë«ÂìH#4¢à×²‚m.^-tŸfe\nw{	a´™FÐÆ ½(]3†@\"x‰oœxZH‡°l§¦yÙØA©ÄW™ÏEÍÔÈ‡z„ zN¨³Š÷‰³TýjMþ<H\'¼.-¹Z>b¨Ž:¤ÓD.²´•ü:°4 q¡­{Ùpú*ªì×ðw»H\'›9²Î4($ õ?P“	9uÓäeoN˜|&Þo¯4•ÑQ€H\'œ“bvm\ZL“Æ\00í‡	áÓhkë„FövÞ\n†³”á4H\'´;› ÿ•ƒâµ!pçæ¸$”~ìâ3¤V˜ó{Dhª®UÂH\'ùÌÎa/vÓð!?”äÙ£ó+£f^´iìPÓ­’ ‚à›Ó¨H)¹†>òÍ3Öº!^f|âCø†¿ƒ5\Z†Tt@U1<^Ð>×`’ËÇ\rlH+’ïÖqÜùàÎýðÏø£ÒnÈd—yFWwz±–_ÏÑ?H08ÞŸš.ä{Kpù&4vøý8JÅ÷”Ú©K\'²Œ\'R¦ H*òÅ	¿´[xøˆé\ZkŒ^›Ö)‚÷äÈÈ´±*š]JMH)\0û‰G½BK‡¼:žÅBYŽÓ¦Uùu–3]Ö£h~!w‰}¸jH\'¼ý#ë¸×š¡vû•	OtÒ©ºouÇ\ZÍßžx–Œ¥AÏ[1°H\'´ÅÔÂk:üËN67’¸­©¢–ÇûÂëŠ*ëC× ýÖ4€H\'Öä+ÕW&ªöoŽ.Þ!ù¥›æ>7‹Kj—_!½Þ\'BY´‚H)ƒùÜ5ÅàØHAšÎð¶E™)ª›A\rû\rt+Žã²m©ƒeÀH)Kl—³¼ú/p˜9È)X8ÿ¼Ï¦„_FK)úîïüj¯ÿüUÀH\'›:ÍŠ¢9\"©<`ÞÍ^qÖ fOQËÂáØ+0${VGºƒ)H\'›8òñ8Ê¾æ9Üh.ŽJš:6f‘*gÈ\røÙ\ZÉò6tkïÞH\'Ñ¥-8ÿ4µÌA7gæov=¤ØA}ƒóó]ufßIÕ\'\"Èœ!ãºH)„/))(y¯À@øºWÿ¼8±¹ÄX`À3Ò?æm%zH)…\\\rÑ™P¯- Dòg©›ÆçDDÓ_ä¾§ÇÒUü H)…\\Gu-ˆîuêc!»À#¿ò½µÓf1\'ÜkâŒ7ðg¯ˆ`H)¤ò\rW„vÕJ”\"ÈQí#IºÖ¦ðEM»‹q´j@½BäÌ¡c@H)ƒø×‚>Hi¿ù67ýZÐs§ˆ\0bÀ«ýbxž@H) £Ã»hZè{‰Î›Yþˆ„†uÐ¯Ò$ÒŸ\0ká6M˜øvsœ&\\Ó°H)Em9*êgå«l•°bˆÊ³+hûVOf8YT+s8¥û8ÕHÀ;NOÎ)Y÷=VßÄwZü¼ÇÏXŒÎòëâàH\'®[µç1èç²3›­\nÔ\n9Á‡Å–.ìè_Ðx¸ÚÏ?9°EÓ0H\'´·P.Ú™§|å‘7ÕÞôê5ƒ³{sÂ{Ù«:)1L‹Îm§ôÈûP€H\'œškÉàf¡´ÚK¨È¡L7™dá:n±Ý6FÉ1§Óì@H\'´·Ípò!7äT»’Vp°2a¥Ë:äV’yÓ6ø<o’¹<H\'´·Óq„\"ÒÄtþjZzO¼¶„•1˜íMe©c,]À’Œ˜BxH\'œ¦KˆZÔ[›Q@\r©ú	¥±ƒ|ûj=¤Ò8\0>9:#ÌAÅ¢»¦H\'›ÞE]ïšM–~pÜEÚ“Hë\Z›Ë5e„ºÎý¹hûUÔË‘0M^Å¢[ƒ¾H\'Ô°zkUÉ(¹¬«†ªóÝë™£ÖHøŸs¯ººÇbó¥$H)ƒù¬RÝ®â˜Ag;jugNªhz–!wëà/<0ÈÀH)ƒþÌÃ8 ½°) lFÚ¬®‚%AÑi‰RÏ(è!ôÔ/rH)Ki¼«þ®àlŒ[^èæØVÝ[‚åB¸+$t¯üxŒÐH\'›6•7é´ìá+±V/ØÏŽ«æ|ù¶¤j²‡ûOÉ?½IèH¾9»ñ7ãíøÒÈ_Žü7ÿÞøå¤nQ³ŠüÊAgòÆ=@H\'®[lT´ÞÒÒ£•ý\"Ô0ˆôÛ¦7¿˜ÚÓJ.?€+YHtéCn5¾¾¯Õ€¥@5”v	Õ|£\"ðLÇ–ˆÚ.â$H%S1¹¿¨¦÷»€Õò1BÅWCiaA-¬±nê}GŠ5A8Ø›ÀHRøŽ‰åÏèKáUÞ¶ÞÅË³U>Ž=ÌCC¦¦ýâÀäÝ(ðH\'Å2¸ÕèÏioØ)íê˜atë\'û‹[Ëeý|±ñ©Ò*\0€H)„5%Â)\\ÓEö#Å…BBÙ7>\rN%²â¨AylOax×@H*?ûïÜÓÐ/²$;K‰$•ò6ù—àÀ¿6Lôøoº„ÓzÎ{:JTTH”Aƒ\ný¯IžÍípl-âÀÃÇêîRÆ7aŽ:1óôbr×%hÎã“€H‚YgA÷eÛ¼2\Z§¬µÄ´3Ë¿“c<—s+y0ÆWƒøŠ3Üºç.Ú¥€¦×hÒ±¡p|H§÷8òQüäÂ5Õ«ÿ«¸Í@©v8)øí\ZD9æ€7\'¡×Q|KÑàH«ÓjùB„•ÖÖTXÉ€¥üUb{vë„3Õø`bó	Æbc¶rA;\Zq&× H®/¸ýÃZX>*·÷\'õùÝFä¬¡ú6ORåÀU&Çu@€ý¿‰%ÐüžH‘‹\"En|VÁ*Í#Àe¥-\Z»a¨¯ì¾Žù1TMáNÂ#D¤+š<>Í§Ø¿Ó›‰H’ecä‚ÿíq	¹ÓtC¤¸Cî»Ùâ7õgRõ×2X¦y°=D[ú bÐ}|€H‘ý”Ï\0öAWy<‚ú€Ó’R<Æö‘šÉ8\'ga­HU8­ºÃ‹	µ1=5Ã4SÐYhH’\\0=Ì¶k1méÅ§p{éD*®Æôá„ÝðOÆÏr¤ûUCäÉúAn‚? ‘¨HƒÑ°®F5WûÅ Kœ‡ö¯À_ÕR)ÊxTÏ«LµÃõ¼	ÏC«C¬<Jü©‰Hç¥\"ÚÃ’*+eÓçÑ2”‚,HWwXä‰œ©&Õ\Zƒ>ñ]À`H‹çc@|S²xDyÐN;,i/[ú5ë^ËL vÅêEºo$†lp-V›oY@HŠÎA–B¾PxÄÍÄŒTV/9-ÉÔÇ»ÏàvR­?ÙóFa>ÓîHBnjDÚdÇž¤&p±KÏó?Nd*\n]q‡s˜Ñºƒ\\­´­÷×¹‚öãôHÝ-&RÍ%ÀaŠ©ÅÞÌT\0nPo-q\0¼¢I]èèœc²I…«”¸H¦êŸL†!U|¥­ð¤ZWæÅ¼‚ï¿bÑHhe:¿RpQkB™^…RsK÷ŒÍçpRH®›:‚ÄóàÌwgšàÐ?íøÉ]Ž/bÒ‡~¯Š1é~fÅçMð\0CxˆH°Q“Q7­rPm+J-$Zx«³ûêúÉÞ\r:dfyçk§›«|õìÊ®H°«€¦ëpzRÇ¯‘5r×úV¤\"»ÔÇÐZ»@Pe#p(\0?Æ¿!{W•Ûç£ò)o»žÐHª¦ÏLJ“ÑÚ÷û‡’†‰¡î˜˜Y½æM\nüÙSè×ø÷Z†Ð»-½Q	ê‡¨ñœÅ0ÌH¦R*Ú.ÿÇµ¦ŠäÍÌ—Sˆ$Ùàž-ÓeLó¥£C«\"å\0€`à#æËH¦™ÁhþƒÎ\"I¥=±¹ÆÐùx¸ÂŠy“Ápâ·l/ù£™ºËF“çÛ>;@H«Ôâ¯ŠC; Þ×†çËf³d:Ã|Fey\'ê*Íˆi¹í‡ ŒžÎTò‘{ƒ¼æâ²u0ÇV\rH²‘F\'\"¸ë&xrÒìø&ŒZ8,ôõš¿„s¦eg¯!„Î\n-û÷Èàö¶¥êûðTH³Ú±ÈãoÿU€R¦8„\nNnñ¡E?³ó>šløìcvaóäÕ.ZžÁ¼‚1!ÔÙtHµ‡b’¹­„ÂÈ¾²»Ða-ƒ“‚!‚Qìn¢pnyWÚâ0¦IÓ’\\Pð–üH³Ï«]Zt’4¦f(í îÔþ?¢¬ÿì×îÍ$fƒàÉ²ï‘à/ëñèH³>q„Jûù©*;!>²ï„W÷—ðA£¼)òÃe~Tcùê‡ÿ±¿€H±Š‹®®9>.³8+}ôuüÑd*œ*\\<¶=}+õ†‡5BÙü}bë!g™6ZÍH®\n,‡lTdDëa¨`XiOë¼»—{m³ÁºAÚ©G…CCól:H¾j+šäî€H«Åâ›9H0j6½ ²Wiü®ñç·w[,)å‘”£ÏGŒŸQå]ÙØïBH©i&ñ\\Q/Z~I2.}ï@“Š¹›ÁËàv£¼s‘Î?”hû†Ò×¶Ò{7Rl!…fš²ƒH§–ì\0ÉÌIQ¤Þ]	A&3ÆVOz>¨X±þ`É¥&ûú]é‡¬\0ƒ¥Îy€Z€H¦ªÈðV‘+d$Þ)ƒaê\"A9#ºtÞ*se.:ÞCm¯ˆN,ÊÞÙžJMŠ@¾…ŽH¡[3•ê‘w=8@eÇæö9ùQ²º:>OBhr_¬£åJ&eåªÄëW±ŽÓ}S´@3¥H£çHÓn¿¾­à	Òß/!Î	vEùÐ<Šy•…0pŒœš21\r½›Œ0AŠˆáÔÞ•ð¬€\rF®ÈápH¦—®7‡ë®Â[‰Êªr0»x,`1ð“+ñ|³E]EŠ¦>ê¾µÇí ˜1wG×´$©Öˆ€H¨eÓIÒíbäÒKÂ4“–ÙDiâ‘|È…ÏêÇL\rÛÖ%9õe+[ž\0ÈßýôsðÉ´#RH©›*¸ÏÂ$ÃÒ‹/Ñîz¦xŸLÅ[o%ýûvïi\nó¯¬x¢Ä„S•‰à’ªáUúTëÎÑàûH©r3t;å7«öûs¹ÍüM´d—¡\rÞ>Ú8cµƒ®_\nXÊtÉ®ž\0a6#\\ÆBŸny³`H©ŒœûÂê:Æ«#Ä•j§s}ºÇ¢òÐ@µÜéQßÍ˜[0aŒÝì+>2ò0þÂ„@H«A\r»A ­BSÐ[[‹fÐŒÊEË¡ØÓu	„›ˆÓIï´ñIáÀ(O˜lj€Hª©ŠuW\\ÿU\0ÊFrd\\âŒ@ÓêkÉ¾Ûc1‚â\"[ìtôfÊ“©Ì<†½Š»:qÀOggS\0\0¨\'\0\0\0\0\0\0\0\0\0\0\0\06R>ˆ2-3*314(&/,20+/018931,34140&,\"%&\"%\'! \')\'))$\'&&\'#&H¥ðÐ£^¶|‰àâ¦½¥ûC11Ÿ_ ò\Z{j\'¬q­Q¸ïÜÇM4Ú H¢k€Öeíä¾†ÉO`Ì/HÕæ~‚>›c\"9ŠoœIöØ²×Ÿ°§‰0y’ÕØÐH¡H<¶™.S‘JçŽ^G°Û<Ø‚>«‹g¸2’V>ý/)COÛçt¸ÈH¡9´èÿ]î@(âFM6ÊÙ;8qš±ãQé×‘—\\°<,ÜhÛŒO\Z{_ÁÊßÔG”@H¡Óü¾²ùÄÌ‘a®¯£O›Ù<ætp±m²§Íèš{G“šï!àæ@öO4ÊMHªk	ÂG3r”Ñ2‹¹•¥Xª=/Ã%+bb0ÚÜ#Ú/3ÐÁ¾/ò?<ô\r;øH«Ê¼×ï‘höÇéLoÜá²ÀÓèóØÁ2\\&Ëó=˜ìÔrH­a0ë¶:Í4y7C•¥‹%Ì…æì8QâH?,oAèÂ%ýÂ–H²\ri6(ÍÀC—LQ>!“¥Í•8…ËOîçœúÎcdÚ-“iöó¨ö¦÷ºH²D’Âh[°¹¸Ø½ŒI4Q`bq»Je™¾¡HÞú±_\ZyÕIŠÏÙ1×ÒÐH±‰Á?!&™/\n¾²à4´£Mò¬fXÑ	©q†~Àg!;ÛF‡…Y6Š“@8H¯ËïX\n÷º>1¯aC®€ ÷&O´eš¡’3É¯ôœÑ-KðþO€KJBZ&ô2DH¬f-¾Ú¯†G²æµÉ¡åÜ\rºB8™_ªXX3-ÉÉ\\¹s´öÊÛ*‚¿wH§¨x¬)%%¾Tßkay8ÕÖïå4§Æðþ½¬Zw¶µ³—M$¼/¯ý\0³c `H¤¯¥¹#5dŠ‚}UýÔ+¼Û‹ö®˜è.K)\0ŽHˆÍçhÚ#A…ÿîp’Éœ¡€* H¢ÁÇ7ý$|dd?âËuy‹ÄÃ©ü¢ÄÉ¹äÄ ‡Ó¼ÞÖU©­•ù«¶¡ß`H¬€]‹\n¿Ï¹ië´G	>ñ}þ›ÔÃ¥2„|´ØÕX\nÔ«t?O\n+ïqd˜ûvI…Äô<€H®í§]»°HFÇ@Ê“B\rþB™ÐÐ-ï)ZÄX¸µ[AR,¹©ðÞq8U‡bÇ²›†ÏÝ[cEVpH±ôpdOc¨£µcâ%§è¸wÆ<»~÷Îó#wòdÒØh5’e¸M¥¿ö£rIfH²®.›tbˆls£@ä…Ø*ƒôÙ¥:™è‡¸ßíŽ\"õ¢[4¯›Ú»\Zã¶ÀÓ@H±¸´1™é\ZÁnæªv~.£\'ó)ÚÁ“\ZÌàz×wŠe;<ße“¥?2ôH¬pQµœ8#P»+ºG©6±Fd(òfŒË\'[ÇÎÊ´:ˆ%?Ð¼´–×!–Ìš\\^šÄH¨ÿ >¥ZÓŸOiy×œHŽ¥}:Ö«/¾^—Y	3pÎno’æ£âº¨2´i3™ÞŽóH¤Ô¶{i¿æã“/·Òl¯Þ8ûKÅxé£Ehæ!,lö€®è©FÀ3LçðH Á\\‡s«¢«ËeVÕ¿Øû{¼Õ~IW ‚¡GáÈ‡5U‰?ýÁIŸDÞ±T).€HKzú²0V2þbi<Ôô‡è3çüyã¡æp—ˆ»ÅŒB “9ÖÔbÃxHcŽT5°®%÷Õ6¶IÎŠW4ü–Î†ð²H±ñˆ\Z5š¿@H‰–ê¤âGf¦ )³åxîpÿŽQëp¶øÿŽâÝª¾¸f)ï¸*‹îonQ H1@û·J5vãòHÌuì{ˆhƒí˜´Ë!þ>´{ H.­Ôâ~K€Ý~ÒÞ³˜é­ÉmËž°eÐK,¢Ú­µ£›ÎH+ŒØŽÈù qXŒŸQdbeÛ¬ê±š&+Øzj’ES´¿O{MÙo€H+†»Å)[Ê©³ûÚn)Õ!ÔîàóÐðÜÛÁZ¶=yzk]èH+j4ƒM[º7FÕ@¢®?ò£OÆkÒÂl¿½åqE\'f-\nšNH*ï-úóµ\0h¹CÿežËRƒ{Ü¯Qƒž‹÷1†uH\'¯ï¯oöÌvé\\»\\ÑV\Z\ZZ™•l€ÙO*\rÊäŸ¸H\'»aÎÐ1ç4Å¾Wûôð{\n—çImyC­™7ó@H\'ºøä”\'Z‰ÆÍ´ (ªšÌéñºDc€ôÜfõ1H\'³SŸ	Š&ë‹3óŸÎCÝñ!i>¯k2ñÔÖ|H\'¼a˜(¢»P†˜4P]¡…\r²°x¥˜ñŠÿº&5P¨H\'ÖØÀwåI°ÑÇ–ÆHüI}«‚bŸñQ&¬ÉÛ•_ç)\'\'`„—H)£Ïéæ~kñøœ&LŸx“ïŽ²Ô2bb4]Åõmnèð…Ú0H*1µoêw«G³ü/A[Ü¡ÝN–€œI6UÖ:gpÃí±®¯)A¿»H+gÛ*ï1KKTäV‚´!r6Õ4†&?Á¶&«O}¬2•ý)]ýo±`¤H0HCêó\\ ›JfÿÒžFSÍ`¾ðt¦Ý%Q‚ÊÒeuH+¿,‡_|E‰‹¨^6Ö)è]w¿E·>çv¾JGâ†ï—*Nj>H+dM‡~çÞîÎ^š†ÆNeïF©øú¦U-ì_Èu¤H+ÂâïHAížxÐÎmÈhX1ePÃú¹Mnèæ ^¼=Ær¼`H0M¯TÁ\"%·A’èxÌ½$ÄTnNÕiZô:ÀGŠ-eyœWÐî, H0+!˜ÃºõoÀ‡¶4°š_\\ @&7qmÉ`JM„CzšæH+:õæ‘-k3ÎdRZû ^ÚÅb‹‡X¯\Z7ç¡±²þ9úl','upiadirukuna.opus'),
(68,'Â¿puedo usar su telÃ©fono?','Â¿Manchiwai kamba rimadiruta?','2022-12-05154226441173puedousartelefono.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0O¯¤Œ^)+%*&+*\",.)&%!-\'(&))())-*((& %+%)\'\'((+-$)&#\"\'.9/=22/838232-550-5*1//0>=::-),/.+/+214,71%!\'.HäÁ6ìÅ€Hà,K©Âçthu„PàH†\Z÷a_Éã“þÏÛèÔFþç=ÅS ‚t~AšïâtËŸÆ\\H†¸ˆ…Ø\rKyXÚòáöê\r+‹‹N]\"p˜ÿ—¥ôÔåRd\nÎ’Û%x@H†Ùúû-ï\0[=Ácw®´;qW¸¨•jKPðá¸Ê…\0û’H‡  d‚\"Ãy•ŽÑÁO”~ UojéáUÛa{24—è¨È÷ÏÃâ|úÀH$ÞÙ8Ò2Îè©Çd9š·0Dºn¼Éµy¡±19Ð›ÒûBH‡GãÃm\0¸GjzeÜ®S“À‹¯n+‡›‰Sêó›É}8\\.)ÒH%(õYî6˜iÇý\'*ziBP‰å\ZÎ¸&r)ÿ0Ý}‹e,qltHÁÄ\nsRãíÎÏ­µNž¼®Ê,TÄü¼ëjÆ\r[åŸ1€H\'Ÿ·°?;»Yá7éÎíž_ã‡ª|]XŠ‹ÿó¶æeÑò-¼eE½ÿïMt0H\' Ré\"¤¤Žx‹qeª–S]^·‡¯IÒÆí±óÖc‡„Ù]C¤ H)¯ß\n¿·ûÆ›šÞÊØdu\'Ñò}æ±–ëöÇK!ÜXŸY)ÀH)ªú°î?Wá´)£4×5¬@{CÐîòÒb9fK®§á÷†ctH)¤´DºxÔ3EeŸ6†åI:rÞü±#ÝÛñÐõbóõçH)ƒð<¡þG×xIWGÞ£ƒw½3Â+1¦Úwn\\F”H\'›0\'h÷¾snçÜÎ0ðÏÍA·E,¢É†¯-¨IÐñH„Ú”#¦òk°ÂH(MeÍþCŽÒòYÎn\r\rZûËz†ZÒ¢¤’œ!Ö˜–ŽÂu¤|Ý`H)›â\n§¨‚CÈrY³üßÉi†$Å<j–$’Æ¶—²ôöêÆdoÀH)DÀÆ¤[‰­ÖAž¥O7¨©Óà§ô“¦Âòq\0ëÏ’°?ÓöÀH\'›LÚó¯Ÿm¶W*jaCzþo%{\'níl\nÐpbjf2HlYH(L6Õ·èu+ÊBnh»0ç‹ð¹s?±¬A`áT\'+O>!H]’äVèH)„¦Yî\nj¨(]|È1¼Z¿×êlÄaæX©õÄu6’Bbµ£ðH)›âØõ´â¼ú3Ý9V¦[6¦°Î\0ó‚,;^hï–ž˜,ñ	5=¹(Hø4-v4ë8±x“ƒ€éóq¨ûý^*ð\0Ðy	H)›—âß«w5ðop«0\n=_Ÿ.ÿFFToŠZ2U@àSèH)wÄ}D]’A”ä]’-ƒµ}²hÞˆLn\nRLÚ_ÓçuÜ¿:)^?&ÀH)„¡‹V‘GªÝO¶NR[„8/Ë~ÿTÊG	öJ„¬ÉnXÂÎMõdH)ƒùpÒA1FöÊ,ÍÕ¡6º‘zº\'{mêŠ²ÛLÊNy¤fT€H,ç¢~½¿Êf7”mÑÝÊ‚ü_ÅO¼›4—àoà:HZ]Ô|H-uLçuõbˆ¼º.Vc¯ÿG³*^ÞÖ\\xLìâ­u H-U„ñ»¶³ãn›÷ˆÇÐàñ«i£9M@ŠÕ¿Å,üÂ˜H+lÃ¡t‹Ñ„G]âl&!ÙnÝç‘æ	ó((dâdØXH+g\ZmåFqÎE([gâÉôÿ]$2+¿\n	Î@j\'t òÕ#„{l£0H+P?¢UîT°Ö¹9äšˆ¡ÎåÌÔ²Ô#¬šøî]‹awhÏ–€H,’ÓžÏ%ìŸ¡öÛ|ø@ì—ðå Ø~5Ò81c åCqgKú*ãH+gGn3S`òRzøU9nJVž´Å-NeŸ.\n‡Oùý>€H*éG2Âžäû¿3\'tÏÀô†ïÕèÚ\0ÕÂ6x¤Ó’3†Hù¹ l×B17Nòƒ£\"†ÖQ«¢é\\ßeuÉÉm‘#-Ög\nH)‚Ðv®3t%Î*+mxt‡ Y¬£(¢í„ó|E`ØÑ5·~”ïø„H)£º„%óþ˜Ç•Z{0CõˆŒ$ýú¯g³Çƒ”í\\½§‹8úWúžxË\ZH)£ÌiB9¾¤^q¨õ`°ºß>ì†îNÎ–Xõ¥ –·8€S6x*©ÀøH+–Àî)Žâ\0ùô½S(»¡)õP<€-R{*ƒýH,\Z_õ…èŽA{ÐåêQJhßù1¼ÆDßÛ¦@¢ËŒu“cºR<€H-@J§{Ò±K•þÄ”õz#;J^:0W/“€¬iO£®ÍÀH+l°‚sÚŸ{Åø–µ‚nr¡»ÖúÍE¯9ûOSÊû$½($H+„¢â¶1}¿4SC6sål<øÑ—Å1|=f|È@H*éšš/”¹áâyÔ³î±X¸ð=¿§sÉcS®ÿ<çOÊ\nnRH]g±õØIÅ\Zù¼?2ÖEþ¨w2Ø%\\ø³T¯«Öa-g¦Ì|‰\rÔHHœ‰]¸ÒÖù|š”‰šš>©;;D¯5¿àçqRœ‡&{Q÷HQ\n<S²46‚¶T¤]øàä]ÀHœD&”¼¼šV³;=<³ÚM7ÖæÙ&´*lÐ@ˆ¢¨%Ö²™»MhÅ\'öñÌ(H¤P¢¼â&¹”F¶•Õ×å<0¾pòÁû% «*X½)¬A¹7¹0¸*¡µO´úÄ€‡ò€-{>ÞÈ©;å\ràH«Ó4üù½\ZV—÷J6÷<DÁë·.þýK£Ïejœa®÷éÍ%³\0øÿ1ÞÂ=ÝXH¯-¢&JÎäÜ&¸ònF«Xí.v/·Vúç~U,]5AÖ{<Ø†¦MDP¶m	 fi’ÀH²³‚¼˜Ã$Ê™`/ÁÞi›FCÁ2¦+/¢ÙÉ¬1R_0«¡A5~Šë3àu•®H±…Nkt€œâ²¢b\\º#ysZÃ2 «ßxçÀÐ0©ç%{Ç³sÀtñ±[¡—Uë&ÛZEÀH­ø˜•`2»u§ö8f{ÛÎmaƒ,l»ÓaB	÷%Fv¥å3SR¿TêEÝèODÃò’û_GH¦FÊ|¡æäœÉ¨oâz\ZsëVJ›ÓL½ª?›ŽkÀ|¹©‰]Œü£†\náÝSèp5+¾H¥Éº®ña{‹K/(”2ùs§7»Á˜¹‹áB€dš(T³PA!cÅ˜h4¶¸„±tH£^âW!œÜRX\rfe}\'mC,}ùC=äy¶|hiÙÈ\\LçÂå\"QíML2D“Ke Hž‚+96‘óô5ðW¯Cƒ[Ü««$Iu0VC‘E#ý,¹H]:f§öùWjWëöHƒ\0û“Û™\0r´‘ßÊ~ æwÌGk8jBZH(¢#–å¬ÆGµUVtvÞÖpa¡HƒÈV54‡Ã]*»×/,!r€—»G–b91àì4T–@:ýË<8˜>“\\\0Ü:5£É²\\§ÀH“§m\0&ñ}Éùdty„Ù\r:Ù0&ø›yç­Þ\"ñÙ,ÊÄVµ¦£L‰úV*¡@Viº°H”÷Eè(¹QåÙ(ÝkõS£¹ÜRòÈW¬Éø­U	‚g:š5†`”8^mÜPH„	Ä¤ÉE7¤¸ˆŒÔ ´7$Q@åîíën%WLc«Ez\\CuÒcãpH®’¡WÑ\\´—‘5™a=A«b«öp¿v‘tèD“jÿ;K¡Q\n)Û¥ìÉI¥u8ZSlH®Oõåä/÷ÍÏKÏÞ\0âØ¾VbˆR~x\\Æ\0]Ï¢¦BŠCÀHª³‰h:GPÐ9œbÂAU}bê÷ú>‡.ò<Y­x«2À‹Ní²¢_~ªÉé²`H¦0ª˜(àäkºógÌvrG@Ðê)š3/¹:ÙÚ±Ò¬R¿ß[õõ’•,ˆH3PH¢”Z@Y¨–›Y–ù˜U$3´xÛ÷\r’ÆÑ€©îÔef;-t`œ¥èÎšDH¢”YÓj_eqÎTÌôÌy¸bh‘/ûü‚¾äÜ^|¯6LýƒbŒüè3G(å]ýH£ÐÒ–5·ïã4jåÀ°y%3©së÷×õpíéA™û ƒjè›ÞÕŽ_¾_²¢·]Y—N4k=·Ö¦– Hª!õ„Ð·#%Í@´Éñ‚GØÀ”!TÉÄB6Æê²W>íãdýÕI?­«ŽJ¥ñø¼”õÝxH°ã±°™‹œ³ôH=IfXÏTGaÑ]¾Ñ¼6ò,.îyÑG_ãÂ3Î¬^»Cá@\nNb³Ž@H´I/‘ZUdºùJD|âÈ5¥gÚèÑ±Õ§øÚþ¿Ž§ü(‚ü·s PQQ>|û…ž³–3P3	™¦ Hµ;š)ŽiÒ7·°ÿ¬¢_—\\Dlüš×¸ô!£nµ—¨AŒ”œiž\'HµæúóK‡Þénöš¬•Ã­\n\nZ•\'YbU}\0•\\X6ÀÆ-PH´ï]%ùEâò&_W¼îÐü¨÷ó&¥ÛD(mÝ0ˆ¤§:ç{´’©7>,Ú¦6@H±ï	ð³$¥°//ù§¥%e §Ù¬5X×a…m»‰s8Ü[‡s½ÛgHâv<Ë<H±Åœ¾*”x*’BÃ‡·ïãb4˜¡ã—ç@2RµÞKq]Õò—¡Ü8\0PH¯Á°rÌžS\0ÇK’¸Üx¦¢ð› ¹‚` œÀcã¨—^sDºs…xÀH¨öÁqAÔÞ\n‡Œ6Ë~Ñ•àeðâJ«èµó,;Aö+ÑyÅ1uLº3ìþQ£<&TH¢VœÐ’›±m4^ä®á/«EÞ…koö5|‰ß¥dSÀH“Ö·n˜HžŸ‚Š5˜‘çx\Z¿éÑÛÆ~v0P(\'æbd¥Ñ¢b«í³žÅz¯òô—7A+´µHžð±ä$‰Qð^Šp*ÛÁe6:ëé\Zýé©°µS¤\\§`6„Èr°\n½/€ÊHHž[ª^›_º  jœð¤ü˜É¯–µ|búžªçÈK»•MJ½öÄ+Ö]Å)9¹ð!3H‚ßŽñwª,ÝÒªûH‹JÇª|9.×5ö}‚þHù››sÂ¤p^Ží&H¥êwaA[u:A_ËÈ	±ÐÕ|ezQËEK;«¤uQT¤\ZäÀ™ýÞ†x-WiíN—·DÕëwfH°Gœõ¦#êfg¿ÛÅ‰ðX:îK‡	Ûµ$¹–9u,Éƒ¾ô\0áDÆçÙ?ÐH¯ÔêöûòT_JC´PGP÷Æ§¹\ZC9éyØTõ}‹`þD½€H®Y’¸x¾_µžJ·À\rœóæ‡M•¢Ë7PC¸ÎHªïWMAøÐx÷ÞW¢kÔªàÕ£ƒ\\í¯¼ç•Î]mî—üŒ\r&Ó`H¥øHPÚÞ\Z ÄÓ~_+¸{‡dÒÙ\"þáç½ÅÖSfü¾ºÐæY(ªßn?”9HOggS\0\0èP\0\0\0\0\0\0\0\0\0\0\0\0ÌÊùô@(0\'+)57$-358253/)02,%.+\")3.880*2.59.5--5480,$($#))0-441-%\"(%%$!#H¢j]ºš9a^OEì™8¾•Tá[P«{VÐ—±¥×l^¼ØÒçdH¡9¬<{ŽŒë‚M\"ÁÒt÷Å\'U®—ã·\nî´|`ÕãÓx )¸Œo>+îÚH ÝââF«è§¼Öê–ê\0“î[3¡MÝ²z’û®jŒÉÐHž{7.\Z	ž«»¥cìÆPÏ§’3ÁÜ‚U)ä¨¨}[ñ)¾EæH2ÕS;ã-•‚ÆsKÎbq>O^‘Þ#Âœäþ×Y.#ðÖR`HœE\"µ#T0‘P;+ip5øyL0žoñ¿ˆínêaù µ˜^ãÌØpÜKA‰õîÀH©Ó¾«F¥‡€ãz†jÄåqœßyÎÿ» é`oZÕ4,_ûw×Ú¿ŒÃãöc^c_Àá¶ZØH«NnÓÁHøÎ.¦yºDÒªÔJÊèƒŒt°Havš#/€Hªô@õ9åò‚=!Ë ¹ðð¸~—†õ÷Æ™Zñ@Ê˜Z]MÅÑÍm ôC¢ñH§Z£áM!l	G„Îü×w)<´¢p´â(ðÐ‚˜¡‰\'2C\\,¥Â™M«ZREu—ÑVˆH¨$%Ìp¹¦F®–ü^úÎ1Þ®MÌ¡lmiÞÄDÍ›\nDXÄ°n7©3£Ê~²H¬Î®FEÔ¸¤ªê\'\nÒù/N¨á´ÍºWé±Çv±:D–³øOjO¥ýøÿƒxžvdx\"›íàH«è+Þ×ôãJÉî !gÌ[Â6ÞÝëtD»ÞEG‡€²Üììœ‡>š¯_SLw(H©I´pãK¦GðÌ©Yfë’	ˆÿ{”ÈFêÆèX€€»	pwº\'MÑ<¢çÍNl$dH§ÜÜ4ccVZ]nòO|†ge×¹8&ŽNuú–¾]³	QšÆä¾¼(HÊ?²ž@o ÀH§Òs**ª×ùgþìµ_^—\"a\\;áLÀØfŒÐÉ\rõŽÝÍ9x)fLn7H¦%Ü¾Í[GåÓêxÑYc¯Ôm”ÆçDV¿y´jÚ¬+ì¡ûdÌ`H¢ŠrÍáëô_ïdJ¼F,œ5ž\"£Ñ	;‰DL^ßùlS4v¼“ÿ«	H„,îWH¡0OÕhÿPP¶c«ò¶J=S\"	±–6î¶§¤Nõˆ¾qøˆJ©-ÙÜÿýûž’AÀH¡I3×i©‰/R]©;²±æ—íF.W¨¹yvH4ô¬ÔvÓÈÖf2*€H¡K¸{úAüÏ-¡(É/Þ&\\-b	ÂÝ¤ˆK*‘`	#›¹&ôH¡†ƒþõ)‘.üØb<Âü€Ö¤ÝDô4’FÛtÊ\0&¤!BQP_CiH¦Òa¼?a„9ˆ.ý£*G¤Ÿ\rÕÝ¦¢­B,w¥þJUú+>8MÓDH©Ÿå­§mf…dëNw(\"k>ÒÏÓöTøtÐVµ™´H«NÊkŒ.`©í\",~-¤ë¥‰[¸¿}ôÓLV]µÚöbFb¤¡‚½H«Ç‡HüQÂ{v<-¶ƒ•?¼<¦ýŸž\riq—\"×¼dÚžO6$ç¾6>.ÜôË!@U€H§M)29É`.e³} +Ð*ÐŽ’¿jvÝ·­ë2Hiœ•s	_üªƒ—H¾D¦ô“sþâ.cËRL1y›V	{Ù]•!—Í(ƒº$Vö/\r{þEG9žeº[V	%öOu©Q#€H¾aG,Oéìe9$€†üYÈoRhS°z‰d>x~ýæ’0¹\'ó‹Ï	C*¤+(P*BHÅ¦H«-OJ“0\0ª´€ÿ¼8”€ûì‰¸*V}0ë,Ð<Ë	·çí„úÐ’mžæ´™i#Hª·ÇœÏ\"h%€$E¤Ýr{íÈb«ç(éo4¹4Çÿ+Nœ ¼$ÖH©zi“Ú\\×8åiŽ{ÂH›v‘&!š·ßƒYñ‘3±g)Ùj‹Õ+5MhQñÂýï…-Ì/H©}‡Ô5\nH6rºªH§+®ˆ}‡Ö\n_\']æ]\"l(š+{hYL9Æ€H§RBöa“•½‘çÅÕo1¨oñ‘Eìœê§åp*ØNâ\ZmÖ7¥ï€ÉG£½C>óF@H§êØg¼³¥Ý¥*ö‚,¾|ñ÷Ö7£åÓ[<Ò‰t¼!BÒ¯nU[‹ã¶þœ@HÐ 2\n4šBH¦G€æí¦~™š¤•PˆgŽ0“µ©Gi¹Db¹,¤º\rð+°Z.}“ö·2€H¦z€ón¯åÃ·‹ˆWAE¿ lùvh2–‹Æo}‹±ðãæDÚVîg›¿ŽÖ^MPäH§0—òWI Á‰ožü‰Øl.[Yå‚-½h*Oõ[´µ±üX{Yp±„ÈÒ~H£ÃÏ—úóÉð>ŽŠô)f\\ã$ÐFÚ pî‘4ÅI«1¬xp¾Ø\0®OIjˆvÀH£ÐGK%­’Ë[{fÌXÜ¹Ø˜úÜ9ØPB+®Q\nZ-€!HÔáY‚JÔ’”QvH¥.îßøÈf¥;Ma±¡íð\"(h0±×‚ñéçŸúGäÁ¦–n®²PâôTL]1óó0H¥0t§bÎ‚ý+?‹¿¬›T†­Vï¯ab~c®O+›#¡þPá¿F’±OçëaÊ:c$¹§¬\n H¦|oí9ðS°fÐnÞ|„;}ºßXy§-v(K&CÈÇÞÁ¿°æ+m«îä…ÀH¨TÏí>vA²p’)„Ýž¡ìdÕ™´q¬œþ3\rðŽÝTrÅ^åþ>Œˆ€HÈg—¡C…íKô+Lí‹cX±.ØPÕ°ŽžOGÀ×ýVH‹ÊUv’£HÞ4“\rî!‚MK!ÌÒ”\Zª)a0‚g‹Ëê@ÊÞúTpH79R@\rj÷œz‘`‚,9ÔþÊâYfn¤üî3Ë¼YïÈH6=K¤Í.9Ð è%!/´µQŠ6¤{\nÛß”©m6KÝ­@@H4ÏðÕÂ±1_tfÇAùDVbÙSMJ\ZÔS8~!–Àß7„PH‚´ìèþW»;†®Š‘ˆ{ËƒŸÌëpá s\0!èÉ{N—°	}¥„2Hƒ>ï¨NËBƒËfO¦¾qE$qhL2Æ þ^\0é»a†áõº‘\0ÇÜÀxZ	Èó­H°P£8¯2c\\(Ð|wª}gÞ£\r/rò=½ìlþÐ°õWuG@]RÎ2È+ˆH°YJ\r¤ÊÍ­ùßÓa÷6Ž¼h/\'Ð2®Œ;¬ù›dA‚ëfØf`’†ŠÁEìÞH¯\"÷\n^ý´®ÊÅ`U{G{»¨Îž^Ø¡ÊìÏ³i$ŸãQY,ÉïCfÙD¡ò&H¾¸ÝìFÖQ¹Œ­?£žkp=ÝÀüÓKà.Ijd¨­1žy:[LôÙa4ÉbÚçØ²ôHê`H$;­P8RìŠ[Î&Ì÷ÀÝ”“3¤ö¤FýONâÊ>aN€HÚ\"íÜi»ÂEæ6ÓzÑBÜæ¾ÈF[UwR‘ºI,€É•EpH|hFÄÆI±ñ5Ágâ\0‰Z#\'lëÆáÌ¿‘*4û@H4ä¸XQ¦„ž`8ä G}Ý)ª_%dìžÃ´¢—Ÿ2XK\Zd†2ÀH2’&¤ÅÐjZ9¶M¦‰ˆ k,ûu\\7VšaÞÃ fó0NdºH.À¦HkNÃp|:~Pé†Ã@\r$ª?h#ÅÊ[®LõXH-þùpÐ*PFßÖÐ‰]Ój3=ûZP$©’OTFvH+„ŒJ8±!ÆæøL©CF7ÇËÛOY@äÇýþ}%KœÔH+„‡—M™rÚb”çWéÐ£¥=–#3¸&ÜÛJ\rÈ_AŒx‚¶€','manchiwai kamba rimadiruta.opus'),
(69,'Â¿DÃ³nde esta la temimnal?','Â¿Maipita ka terminal?','2022-12-05154354431514terminal.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\00\"÷`#%+-)!&&$$%&\'\'(+\"&&,(&#+)\'*)+#%$,,\'*..-,=3:6372324206=0454-98)(//-216,10% $&)-3(+$%)(&\'(&/-6+HäÁ6ìÅ€Há^‰L‹£¾@ª€\0ÉøH†\Zõÿ1Á’¤ã¥’¬<VP Vúõ?Rèœå,Œñ×\'»H†…?‰m¾O*§Q\ZUÆÎL©Ò(½IJ“ÛCÒ~¨v«¡Æ H†¸ŒY:ÝsÌäaY°FC\\ëª±\r÷ƒÙ•ü1ˆ“Izf#ò—zNöŸ°H†ßÜæ \rèÙ\0e@]®{×1èôò•WrkÂ•i|ÉóKûÜi!µHLÚn.òž<‚æm}eW3v¦†×úNàœÒÖJ(”+‚¦ä}æÊH™H‡IÎÄÙ\n®¢‹ZD»½×¬O\"¥·õgdëIó*,H‡IÐ9ØTÛj‡lÁÅ=iu6¹K\nÜ‰RI¾Sï”úTYXH%”6< ®2<V—­õ´ŸÎŒ²š	~Öw÷ãC…Z´çyHÅŒ“®m…?Þ™´ãÃ&íÇ£Ç¥i\'‚aªÈÏÒ1Lž H)\0ÍöÜÅG‡²ÉØè&õ…›—g¥îÕöÌõ9{´J€H\'´·2HD¤œtxÌˆ™{éþµ‚ƒH@9G’³ÐËýlsú5žèH\'³\"ØvîÏ˜=RdZZF¯-)×Dbp-å¥‘â^ˆH\'®Ö8+B\nÜøÍ\\ÕºÍœYþË$²ò^·®ìFºtS¼£\ZJU@H\'›8]k‘Ú®AÑ‘ãÞãµ\ZãF<hŠyí{¢¯S|\Zd@H\'Å6üGö‚»,ÚÒµ4Ù‚¬DNþÔŸÃèÙüÅb&¡In€H\'ÚÕù2;oNö‰·‰ÿôÎ\"N–ô>þ/™MVÑ€o@ A+Ã§¤‹œÅH.®¶WhÅ\0œóØOe%£¸\ZD£v{€È»“‡SøÈH+·O§„÷ó?|R»ÂkC;÷“Ùû.\ZUùlÇfKÉÏöuÈ“|H+ŒŒ¤¡Æx“Ró*¨×óˆ¼!N>ì·óêiêõù‚Ø’4%Ÿ| H+lËža‚{,[ˆ<!«øt4.fiCœpbíU`Y}fä/0V¤ó(=Œ©~}€H+g9ÙòÀ€ò³³=ÿG ˆeÔ”SAðîÁùôâè!»T±#hH,Åþ[t(ÈGóÞ§žÈs¤\\„‘åÝ¿ ÆÂ{ž€©È H-žL]à\Z\"´Â²ñƒôwÇÿ›˜>Kû›ãL¨x¬&Óû„H-GÔ*03ÃXÿ³ö—ÌÚ5-¬Qåyžõõ}•Ühõ‹£w·5]™\"Æ$ ŸH-U‚µÊƒöÖ$cz§Má“þ·5Ì°`¬áy/¤|¥SÌ¢¶šN@H,ÓRä¹®pKi¤‚…u•ëÌ¸eYÉ½,®°p³¥¦‘ô	eH-9û†”/i(TúXÖËÜföp‰W:\Z1£Š›ihãX`e`1g@H)¤ðLš¦/“NŽà¡±fÛ/‹ÿzFlžmÝ—übNºCäÖTbIÐH)ˆñ0|œ·`à¶ƒìh_ø\'Âù‡Câæ×i|_êžÇûÅq’;u¸H)„Âã]Ý[YsÂsŸàì·OÙ€!}ÁÏ»vm‰I¬H\'›Ao¸FÅþ\"	2.µaRa¹½ÿXÛ–ªÉÝ@ê#T¬%elH\'³\"º	®j³V¸1Ì„¶©<·ZúÌÛÙ¬¥„¿Ì—î…@H\'™èiDš°·°(»E|Ú\nKbk°û¦†¾žR­¥)·Ò5—ä›\"!4½ÏE…bH\'ÐÄ¾Ý|‚æÎ¬ùçµ><M”B>búáZ‚w#™êNf€A™©ÏÖ]Ç] H)ª«KØn{¨cIàcwcôð«-Ð\Z‹øòRc;{ŽÔ@H)ˆtïûtX*Ãô1¯l»/”_Ž˜Z°±™bfV	]¹{Ù=»Œ–\r{±E€HõÓã³Õ¿‡Uð ø€ÛïéÂzjj\\Öä 4-_L\0Å¥móšðBÆŽŠH)‚ÈE¢‚›žÑÑøb©	 ˆß@QÄZªAƒ¿uÊ®EB‡ÂíZç1@H*0²ñ°“UüJ‹†+s-óWXÐà]º>\'Ç’*,ß\'XÀÇ8UÐH+®A˜E%GoÊÑeÞ[ÊŸ\\N¥ÐÔF<GÆÄâòhçHÄß\\²³pHœI=“Zÿ,t3Ø!×ï»tšþ¶æJé\ZoÇ9Ý¿‰ö{áÝû¾}VÙ¼­20pgq	áØF€H¨\"ÞÏìþP÷\r\nÕñt*y	8}¤$Ï\\í“ ÖØ1²)Nq8¹Í4ë±[13Í>H«ÔÅF@Zaý-¿‹C8}ñ›Øj¡a\0(m“bÏM³øùùI\Zƒ9Ä¦¦F£™qÈÕX‰†8%îÎžézH²™>esÃ“³ªþ¤jhÎ˜ûN|r66¤w7Öà”-wÞÍÊþ‘ál^wx­˜ÜE\Zš H¶\r2çšÕI«MÁ|‡ãþøtÌ´Ü	qCb¨ÉTØú¢¢šwÿÇ\Zh8\'5—åùy“^Ø€H¶ÑEîÜ\"NH×W^Xßt×81dÑ¿0ä‰Þß²öÖçW+Lž¢}rŸ×i_œ@TÌq}S@HµÑoC[‘Ž{þ*ùŽ|…E`ÌvÑwÕòñéå&ýP&ò¯áe®ãí;³9´(TH¯¡æìtk‚)êÅ‘^+¨ÎœÛÉT¢MãºÐ£³„6R\"Lv,Þ‹‘,+Éü3`H§DOÑ€múHiƒë¥ª­¤&RÏ!–§>êÍ­#íÂÙHŠîA\ZZüjÜò@H¤¦Ê©\0Y¦F“Ã\"e$PÐK\0pÁ5–yYéõm³4¸?òÈOJë.i~Ê@H¡=\">/ÁI®q1ôuÞé$9²ÄŸØå‰øOÆäS¯ŽÍäl¦`m]jš“¼”HŸÈ\'žú‹	öÅŽíuPè\\ÔZ40GffaS‹\\ÕÅ¸è<[Ö?Ú	à^B H¨YÍ«™Ùc´ïDµïdÌŠ|$‰gt0 »	I’èïŸ²_‡è¡wG•Þ™&{v_áÀH¯4?7>u`‹ç¥»£p6NC>*²@hlñŠëÉ=“ßt+±N`qÂ=öV+—¸ú2¸\'á\nîÂ†;+lH±øNUMá¥ÖJÆƒÊ,KÆ+IãÐgc§MÃð^bœð¡æ\Z<°FŽ€H¯¡R\nùü[~ð…ÏÐ;&‰·®^:’Ú”X4¦¡ëLß1Õ…c´&dÆ/_ú¾ÆŽ€H£f‡Ãé°F†Åïë?Ñª×–oŽe¼”†¢wê ™m^m‘ÈðKØT?]•^V!:¾‹c·„PH¡`Š;Ò—YÜîe&È¶|ŽÅ±pA“Ø›¢TÞÞýýÇFL ÐÀØåe&ùYŸàHžŸëÃ«—˜U¹)Oã$3Vk7Œ¶èOA‹3\nå.gS14¸%?~®HŸ#ˆ©:MYŽý>á|ÔZmóÛ“¡Þ¬»ò–í¢]¨ƒ|bÓß¼ÍÃ~‹\\G¨ýíÀý?µE€H°¢/\0ß>)Im>Ä›QünNlvïu_³[á€y‹å±ðÂœäJPöUó¨Ö[­«Ï7Û›7` ØH´ÑªE\rÏÓ2#ÔiUšAÙ˜0<IãÐ·úìe%›Ðú’5ZÌ¨SîH³’z”wïß\nUÖ+\022)ºÀVrf’IYtôÒÉ­ÁB	òÏƒŒ#ËH±­æ˜žšÄˆãùža¡O2\0R%ºí(Q¸nÄÖEÎ½«ÓÈ\"€¬‚Êõë[Ô€H§.­ú /N&×HiÈDÁÕ¸°ã»	ú%å¬Å_—^†UfCÜÌ¿ºcÅ‰DH¢mŽF8¨“’Ì¥†lªnÑÄ‹8¿)yf8o/àê4`¹ô»f”`¢ã(HŸŽÊ]ÞOŒ<Gç®~^zåðÅqðÔÚt?,ã0VH\0±¶#ŒÐaioR‘ ÒXDùË±/ŸHYÕ_²	ˆS9“¤þ+ðNp´SÿÕŽ	àÉÕˆ|Š9²a´-bQ5ïpç4qîHH²ÂòÀ\"g—DœTO÷ó†_|x±ž3HWŠtèÑ«Â5ÈóU˜‰rèÓ\ZÍ„s´ÈÌ˜F(H„9>ùbœG‚°“•þ`Êª/ü›S?qóÒKsE¿à™ÝüúÑu\'pHƒl{þšÍ5ÈcÌ¨}!Œ¥|I¦\ZMâ™pÓ„gÃé’Úxk°ÜÛ,´@Hµ@¯›	pà(fFèo»­Ý#+´ùäú4îý²†XK¾3€Í BbÖ8J@H³Ïb¸2¼PÏNVvmRNwõ&ô?Qxlx/	¢üCÒ•¡H³8~Á‚;OûÓ”²sÏc®7ð,!6_-…Š´º	&H±æsíïÞ½9†o”¬àX×§¬ÍÖî‡WÛÍJê$™¨pH¯Öð]~YQ‡F¯]þ›#¦9¾Â-ªŠ‰õ×%…\r!Ð\'pH®bzj¬Œ]Ö£ö“x¯M«ßšXÈ?·&ÙuÂi<PH¬qp]~W.«h>TgëïàØÏ3Èèç¾ïó#ê£ºÿí#Œ3kH¨ÿ¥H`© é,¼ò”±ÑðCC4&-ÅýžIðË†Ë&š»\Zæ¾Dg:QF´Ël`H¾k—Þ«4¢év½Ã²KR^ËßVÃ9_\\é^Ð4Äº™|ßéË¼a–¿9±Ü\"[Gt€H]m!/°‡Ç3pÉ\\¿Ý=¨éObã=¼š\'Õ”H®Õð)™Ym¼H7*ú:ÈŸSfþøßâ	/TWK)d‘zï4V\"T-ök¼Õ\nØkþà\0`H6;r¶g´W™\\ACÁ¤3µD?Ê@úgŠÊó»Ð=†Ü\\HAbe\"¾ÞÔ^qõÈé„u	>œ_©¦nŽ¬ðÊ`H3º_ex€ÇÜm‡;Úì\0w8ó°=0!ò§tŸAóÎì`Á«‘àH2ÒN–ôSoÒ÷þx €¸`€ùv4YÑH°LÃJbž•%r}ÒÜßÀH1Go¡ƒ÷ñéÓm\Zëü,ÀôYá‚cØ‚Â…0#j~åê€H/#\0¤Ë¹ÊË6€}I6…Muœ1ë”D©IßåE“ÿçžè—\n^€H-ø»	|tÌVc×:˜CóUhI0C‰œä¿Z~¬·PúâÞµpH)|¥/`æÅAÝT!bõxl©´!NJÄnœÆ\\_[AM2ª%8H€ª\\ê&ûÒãï‘9MQäW˜ï¨qò‰9¸2>ÎÄ˜))H3à&1¿w)X\rBÉH‚ëGŒ³þ3rJC¼\'ä˜¼´¡m‚\\~­\"ë‹A«b†.¬Ãa¾£êµhH­\0á¤óPŒæ ÜoÞúÀî6RúZ …\ZŸm®ˆõÌB©í×˜Ì(LWo™?„Í¦@Y…>ÀH¬àµ!»4çò)^pÜ›UÑ`¸œx\0?{œRoók®\rá=2ò1œ¸ OggS\0\0è\0\0\0\0\0\0\0\0\0\0\0\0ÇâŠ–.)5844220165*012/-92%\"\'$)/136;9643-*(+&*$$&%*\'\'H¬j­¨>rºÝU!}›ù\rÎËã\'\'ˆèáê ñ×Làµ3oàH«SÇjõö•uÃž³ßÞÑÁVó}!š[ÿgcÂ°Kl¾‰éD’Ã‚Û¶þ<=8¿yû:ÀH§ÿJº5‹cbúyÏ?f¢¸£DÙ&eq\'npÛèî3¦X–”;»4”5ˆÑÚÀŒË ÿH¸H®¹(ÿÆáe«ðtó‚‡7$°»_ÿ4ZO†~Žùk½†ü”„Dm±ºMÖY`H¦\'ÇRLÒB\\Q8’®úÈr‰ÏÀÆýäm	P¼:ryÚ1oæwaQ‘BCS&‰Ô±ØÀÀH£l…}GiXQ`B¤R</—Y¾ðÎ›g4T ^lŸ±]%.œc5À§t˜(Î@H¢r	ÓFìÍð\0¥%³	iÊœØ3Jæ¶¦”º‘Xt§!å`5/ˆ¢?i4/±¨H¢{bÇ-þv?ïqÙ1ŠG÷7Ñi¿êiYjg<î5³ïT“ö%©½÷3%Ô2Ç4H¢š(ÁW…2c5çúêž\0Qöµp£¹ lªóíÞ^)=MšžH‰#–Íi‹[‡úÚw`H¦È%T×zæÁÚ•YÊg¢|EÚ_›ST†ð=¾ò#âµE³y.oÁ=÷aáœ–ÖkÉG[±€H©‹\nSÕÝ&\rœˆ°³¶Kø†M¹™DOnnŒþc¥ô\0P„XÒö7@ÇÄ-‚‚æ1`eÇ\\H§Ä9/Ï»~3ãÂ\nxÇ’p\"înïÃµ-Ç¤ÃË>çÅa[H§0–i#2æ¥‰[ì|ô3:ÐÂf‹`ø©ì\rÏ;€•4¶c*¡ààP²Y80H£jÉ¼Å°¾à~â†¢^s¹ ×\0\Z\0I€óÄC¾žb¬c®¢òìíº¾Ú±ñ@H¢”üEsA%\r4\n×ÔÑ^´áá5qŽÅt\0,k¹öÎ/T”r×® Lý (H¢x¶Øi¯$Ughg»{•»´a1]c×‚YIÓØõ£ý\\ËµËMëÁ@t-@H¢–é!ÿ”€L¢7z¶„Ø`|U¼@í}\nOVý+>÷ß£·FƒÌp¥€H£œ%9f6Ú{f°,~\r$Vj»<ôFË#§w§¦Ï´eÂß•mÑ 8F~¼¨¢?p%%:íÿ O€H¯8·å_^)ñQq*}è·3„ýÕ“•YîÇrÝPÈyÕÒ‹tdÝžBMËÿ°ÀâØþÀH²læûR‚ÿ[*§B!£LÝ\rØ\"ñ¯`«`§&¢\Z\"H±Ã\Z´$t¥ŸQ¡ƒÃ3Í–êÏ;5l:F¥ÄdöòªÀH°žø¥>¨#q`d„¾šG‡ò¡Ä‰¬çò£%É7_Ù×`@JÈyÚ€H±Âô„¦Ï\Z(AŸ˜µoOBœnc\"kŸWµ`V.èö)S#²T8H°bNsø°q¬ŒÔáPœYÏÕóé¥I²Í7	Uö»]šœRUr±ýU`95€H²ˆ¶@c©M4¯1Q\'Åð?¸,	l~4x¬ÃˆKb•™×¶Ý­êzd2PoUïH±a˜‡ÖT+”zv3ùbÃBÝA¸ý:bJÆxNÒ/©Ï\0/ÇàTà“d´J.x¹å¬¨ÀH¬gŸ‘­@9îÒB×ª’ª\';«q‚2³sªŽïiÎCçt”ðÖ>?;‘Ú9u=žEÞñ(H«8c.º½ëö¥ÿîÌÈé]\\bÕ¥/š*ÿ=²;ƒwÇyÏüÎWìxg:d ÝNÍŒ%¨6ÃW`H«†K¾I<é3ñŒŽ,¬e¼3ÀÃòýz6°©ÝnÂA\'ã‘|…ÀiÅýÁ¹…”æXP‰Ï¿6ÓóNÀH¨ô_‘§›ë\0r3ÆÕ¤Ñ‰ÿkO¨ÄýIññ	•=-ôPÈá«OºFwNxvx\'4|6§c H¤­¾ÌÜÕrÕéO¼=#íñù/·½»‘i›±ƒAÊœ\\K+óf¡íFÞªñ|¦Y,KèEH¡j)Üi=®Ò&-1ÝŽÇïé*CÏúL{-zyîÆ*¤?\rÁ ¨¶EÉ‹`X°¯ÃFoÐH½ãbUŠ¹«}ðj+¤6-œ³Ò5~PûRßeš£!€Z˜b´õöŠÊ*ïíitŒÞÀH2‘ÇÕˆWV*Ì‚\"{ï >¸©À§¸SáH’O|e*“€M\0ÁAµñî8H‰–43(ÀLXéJZ¶É¨à9ÔæÌMµCjÄnõrÝzðÉö;F·¡\0ƒ@Hž´V§i\ZÚCH”e¹¡.(ñ} :ë;©\\jÏŽôÁiÁÀ‡ÛBÈH/$åÐ·Ö){ïÒf0[öRÒÆLÞKÄ„¯$Àö~. q± GÃLH)æ„t‡©~Â©ò1biÖ¡”jÎqqëüX\Zéö`Ùå_*ë H+„h‘d\r°Ì¦õ#¬R3ª\nžCA]µUk=LI0î‰¢\\­²\neÿàH0(OõdŸÎM&2Æ<Ì‡¾Ñ¹\'ŽàßÝòÕ[\rf£ËðH+5»â[\\Ð[o‡hé|ý=õòÚ1Øi†~ÐZTƒY˜BàH)û¨¥nüÖs±ëTBz\"åDþ-,hË™ô·ÔR’:G$›ÙH)Kö{G­;?4€$È:Ú\',$VÕ*¸C‰Q­zhç$ H\'þ\Z,SpÔ¸:³¯ñlH=Š@\\¡Íœu\r‚(\n}çQ7ÁÏŸ`H)\n†#	ÂµÑ‡¥}w™%z£0œ)žÑ©5ÈÏËÇøªôñ\Z¢Jâœ²H\'ÄyJçTžšgq É-¸›aÞl…žŸ¼·Éd]úõ%çwÙú<ø','Maipita ka terminal.opus'),
(70,'Estoy perdido','Chingaska kani','2022-12-05155226265955perdido.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0#! ú^+..-2/*%\'\'$%)\"$$+(\"%&%\"&((%+1/03-*//410339738.0-2<7)+1,9=.%*352-:-60))//36237121*&*)!$#!#%HäÁ6ìÅ€Há«£Æ4t»T{$èßH€\nJà	åy,éâ\\Ø+‰n>\\˜ª?š áã•H±‹MáçÏêK´°Hˆ:b|´”Ä´Í´}åÙMôÈ»d%<ÒA·7Žv„ÌžÕ£xTCôÆà(H‰OîZ{ö æ\'‚ •JOfCÍ>Í·K,™(jÍ†¹Ã]³§ûóNÞHVò‚0ý~4‚C°vBÌ„·_©‚ëÞT$&ô¢…„Êÿé8ýðÏ4HŠòù#wf¥79¿˜RùÎ7BæºŽJý‚#³øšzøxôÊ	™©0XÀHŒeÙÜ\0|!¾ôàŠ²á”4êŽ˜_.¡Š…w ©âJb(œä{’X!)¤Q»HŒ|-bé‚-,\ZCVë¦Þ’qßïñüšš§è¯Ñ£ÆŸè>| Á¹@H8èÄ‰Õ)Žw¼þ0Òüyi)?ÀÆ.”p‡\Z>j²®º¢¹WH8ØS%Þµ³`‰dŽÈûvŒµd§ÈÂJaõÔŒ¹–æÇ :Â’ÈHywH»­W¾1^=·¾¡áz¬zwJ‡¥fŽÐü¼óG3BˆgEbÏK°H8›\"Z–à48júÉOoÜøËY\Z=&ÅF{Ÿo©i‘ü®àÿàHjï\Z13ß-¤»¬Ö‘=JêÿŸ)b•ò±nÆyÔu¦+ÙøVH67žª\r³ò¹æG û5gøEWpkä²ñ£•S÷akéPâ‚¡xLEÀH3‡§-Õ8Ùþ–589wÒ¦ùŒJÒJmÒÎÝýïoåËÀH0á]µ•«.kJðÇSÿ1ˆFKˆ×âºäË)“ô)]à„K’¨H-Wª‘³P6;òüVÆŠòXtðx5Nnè…æçÑô\0@H+l˜žwòwÿî	Dõ	) ‰µúXƒÎÍN;*êùüè¼ð¦ËËýÀÏ H+–¶¨§ýk‚¥û‰ÖÄÂ‘1§-åàP£ÂæI®ÁË–lq“@H*ïu\rD¼O®y6Éf„ÕÄ\Z6ˆáWWsâbw\r‚“ÀH\0F2oW‰ }ŒÁAÁŒ§–:¥&•JÑx	E{¨ÐH¹¬äÃç½AÞm<3]Ýp/htþLdÿxø…ãáy.f‹-\nHÁx•æ\'\'#»M£`»f†K—y·D\0Ùç³ý†¦ëŽË`HSU}’¬éÁ6<Ó>£_0û{Sºüå|-è8H\0Ÿ\n—ZÕ•;-…;ˆ,–£Îtù\ZfÖ&ÚÊ.ÆpäH)hþÂæªŽ¤±ëéHß¢K;|*Â™‘ØÔàH\'œ“h;Wn–^NO$§œ˜y‘¸åúÌ0ìÚÏL6Kì„‚ÉŠH\'ÑÝy*¤¾BZn²^íýM?…x:ÜŠÆ0&ëæ%AƒV¡’büàH%‰ÒÇ¾þs“ÕtæóÖÃ¾FýdíÛÁÛß|ê\"½™À0øDÕ—(H²“®ðws‡Â’¢`.>2¹‡NpW­ÚœHÙ)rãXZÿbHìŒ[l\nYƒjÞÂ?\"¤½ƒ<<s“—’µ¼Ÿ4è¿A ±!š;…´!Hƒõ>}w¨ðIÆ¸d$¹sê)R³;æså¬wøÂ-’24:s¢gÇ~í?U</©ìráxH“^#©#ÉÇ\n‹9\'ã4~*²pç÷miXì@¹ôÝ\rÁ+6Q’QŽdø|ºXP‹ÒLH’wßQ2ˆb¬bî4.±ÐÉ\nYÝ5\rêOó>\Zá{•Mß1ãüŠmh1qŒ\nGHƒªqÙÌN\"þ‹¤¸ŠŽ§šë/Ç Œ®³@ d‘P€‰\n8éoG†ÑùêD7ÀßãlH¬ßèÊjº\\\'œà`+ú—¾1\"Ë‡æ:©ÁLóœ°§\rN*Å<§å`bžƒìH«M¾ mú²Øë:q\\Lº\nUö†€ì&=ÙcÞ®8Ó\\àÂ¥Àfù=ß‚0Hª©Y£èD—;AÙ¨”pÆZê<3K\'y£\r¥°É¸:”×Ü¹ø*”—ÁÚlçH¥øx_óçµJÎ·ÞÔÎ~°ê|2Z„±?ß`®^Û¡Y6ÍŸÝÎøC4v\"_°™ìn€H£Üy8¤8ÜÐ`hx¥£A*\ZÑÆ)7?;9:Ô$ŸÛU!ÒÅV¯Äx]áËÒÎ¨€ ´H£s‹¼sÎÙÊB:2cÀ°ÖÙ4IÇÜª’ú½ý]=®‚óR©xjÊtö\'ü¤h0H¤I°õÖ˜2k *2p-{JÅ®™¦Þý>~ésóv»wÀÌ‹ú.oÝi<==ûN»æHH¢ÍÅÝ˜Góx´aR½ÅEsÚ±oN•¾Ì@1ï\"£ª\nWW/À7A÷·¤{†È‡™€.\"æÀHª*]†ž¡r8ÇÛX)œj9u TÂìö/ÛfÐ3`Ó!ÝdwFQN³VM\\@¦[ÒH­\r‡ÚÛy`Ä>Ð¬(ÏÑ{g=É’¢oŒ×AG`\':¶2æ&‚YW-l›ï‹i’rñ‰`H²+C\"e´cVGbWVúÞ,vfÌí)ªs+ê£í}ƒ<:æˆêú`;=£¯äkÝ˜@H´_Ðyâ¦›‘ÏG9á6jm_É;-÷17;í \\\ZHÔ¿Ì´b:Ç<Òï+\rìÏl„!H¶óçÀÞ¹Fn\"º}¶ì>0•o\0©.ˆîQ”´ªM§\\•ˆ\\ýé4dÌ¬#ÃãËÿÏ H·¾¾4ÄISó2«ßfdCiüIUI?Y³ñ û¨.‹a}Çö!×Ñ/R@H·»žá\0€	xk­“tè¶C d;zM<Jbo£Ì¬Ï‹øÂuŽ\'_,££¡î†/0H¸‡r›Ë\ZÉ¾±D®\"Cô\' $¨\"r×ši gmóÒ˜5ƒñYq÷‰V\nH¶‹í\ZmHÂw¸’vÄ\"—Þ¶7 Œ\\\\ã«ñ6Ý`^MZ=1æ‹œ‡ A){àH¿sAy¡—:·‰Ào¦n¸P5òSTùzÜÇ¶pƒj\r:|7ïàçUlÌPiêÔ%—òÞZ·=s›Û+ÕxH¿‚âáè2¡Æò®øsV‚2°…+TÿcñrŸ˜7ˆ¥¸2‡-„üa1t,¤F‹cÁ>Èq8pH„Î²™NÍ»ãVÞÈXÔS6KòI|Æc–¹Ÿ“Ì¦\0A/ƒ H¬F6}?Õ—XAw|Yd–o NzYì±N»	6ºÿl©ƒ•ù.‹zˆÙ÷wšH¥÷Hfµ„lŒ)u—wävÒOò‰9ù›Žv,>ñç¦U-æjj•³ª%)TÀH¾=’ò\\óá±OT÷¤¸ñTì2œAþ@ì˜Zˆ{¤lžcnÆì½›§Ú H¿D®u]`HoKÓ8[¸\nAxNßçúÿ¹(W—+‚Üyj\0\'ä¶qÓb–Û7\'âYÐœ7C™À@H¯Ÿ9„\ZF#ádj—(ôHIž¶#v\"I–\'üá‡ß!f«Dxaß-Mñžýt±Ã*¯<QËDÛ\"ð‘H¶ Gky\\o»-;ŸÌò›2¹õÀ\"Ÿó=;i¥‹\\¨Ý1)}D¤B¿ª#Ž÷üH¶Ùb¢ëŒ¦t3}U=ƒô==gÐú%\nlYÄ=Ä!o7_ûV·ÚHµÒîEQ¡\\\'ecp>!u~DÝö÷ªˆ\ZÂ\'4Å1#Ëø©`+„Ë©yÀH±]	èmÊ®bçæûRBXœPé\')À•/\ZT§h×–ïÎ­³Ÿ`D²ï“œ×H¤Ýy?J¥º·!æ²Iä»gKŸsÕQ¯\"þ&%ŠèA•’•Kd³ž½†‹4a	ÕŒH¢ÝÄËé.A’¿ ?Ea^!%—ó§bä§ò(—¥‡ÚÇþ{å:äÅž\"Ý-Iw€#„H½éœ,3ÛÇáÊ˜T‡Ñrž8™ÿ²<Úº•%ožš7œ49ÃôÄ/íRKöH½Þ§X\0¢ßÁ¢qÁ÷ßGµãz^±kT	’¨	Û¿CÇôYO_G¯¢yŠkK­¨!ÓÓ£dæÞ€H’UÄ±ÿÝ°g»m2\rªå_ æv±GÒ3l>zÞÝg“Ñ€—»›Ú³–šî<@H­ Qy\n$	¼»[\"¸PÛ!Kê‘Ò¹™$œ]yô‡š8gƒ\'{ÐR2Sî×?a¸x€ª`¼H³·ô£-__EgÊ´êÛÉˆuâârhªu°mäs˜íoÍdob%×¡%¬qH³t”}Ý_¿Ú5Î‘›ùÄk¢UÈèõê`É\Zk“È°Uš|àÄÙH²\Z$ô µ7\"xÌ#÷Ô\0)\n¨»bú&riJUƒÜ$!Æý\Z[~ß‚gPH±ëcÔ¿ÌyÍ”ÁúM°Ü2«›ÚjÕo_˜h\Z2\Z†kG°Æ_ù·+IÕ8F€H±ö<D—/ÕfëZl–Ú…ûfì¡´ÕUëÑp€ÂaLb5™U?Ã H¯úú*þò¨aœ,^ðÉ^]ßá‘ÜfÐÄ,w«®²?èÃ©±à»ý¼fÌ	cÄð€H¨÷’$±ãPÍ¨ÐGÇ·RìÕIrä£‚<Ä	D³G<\"7f„÷°át¶qbfQl¾´‰~ôk@H¦K)¥H&iAt–xœ.æ¤­fêä`(3•|3Ìƒß[#ßEÄ‹oí/5H¦K)9‡ÁuÖªT¬Aëôâ%.2\nØÈkr¡ßŸs‘¨F³TRç™8]ˆ\r]®T‡ÜíëH­1\\gþ©<@¢¸Y÷¬0ÑêÂÎüÕ\'Ié_jT4‚ªÞ¼‰…Q&†îg›ê‘þâ¹éð˜\n2}N­H®OZª{þÂìÒ¯‹jÔÅþ3Z{ChÙt5²ÑÞl?É¼7È\'I¥ïh~0€H®Y`-#ÆÐ«Xô–pô«›B\\z:Âuœ€]–Ô3\rÃ#ÀlÜ×²:Œ_ŠHª– áîùåQG8Ö¿ó4H\Z@²jØ3Úa“c³î;Œ­`I ›Ð#DÖ¤fH¥û1Ò‚|û\'7Ùá=`¶öÚ¤ÈÍW\0’š­®Ÿy÷+u³wã‰H¾?˜çÞí)Ü•ŠD+˜I¯h`ÄSê\0b“ß(d§‚y\Z7@H8œñK-:jPÁ-ç!Ÿ‡È7‰­5Ó(›?|VFæ$ü{ã#€H8\0ûv~½C¬Øã½6]¬ö#¹ïÁslTo¡ðÃF:‰x›y‚H8ú»²ÒMKÒZÛ©¬ÌåµçÔ—-\"äŠ¶\ZÈ:nÚ‘gH7+(j÷pììðN¶~õTlµLy<\0Iñ‚A?8ô°ë^ðH5!ì”PÎ#Ò84µvaIò2ä_aªünˆ˜çe¥«ŽH5!ìÀ+E0C¶¸«cùÚU6‚ÿß—ågA;ÑFó5H39-­Ò9\0jÎ`J¦s>b¹Á¬…¾™HWà9—ŒUZRÆ[H2–Ð†¬ÏjmfÙ3gã.émIò Æe›j>\0È}šc¹á5+~OggS\0\0è«\0\0\0\0\0\0\0\0\0\0\0\0LO$%#,--%( %&))%$&*,)\'H1P}«½`wÁÔƒt…$Äu=5 ÍËØj9%ïç÷ H1I£ï…Î™1Ð­=ELˆ«„yt†g)ƒxÎ”‚™•k{ÐH1FÐ>siUŸQ8GI‚PºŽ¥ÄwY–¹Š5NqüØ‡ŠyzÒöH1X}SŒÀ«™úŒdêò»Ì´jcÎa|8æH——ÚTÕÛ:ó¢>˜OÀH1+†û„ý›ÄÉj–Ã=øí=ÖÕ©BtÉ(*F\'ñ4)ÖÐ€ëˆ2•X0$ˆÚH1X„bæð2Àr(?õ†ó(ú»O,<Ã¨ÓËÈÛuÉ\"Çk¶7É\\Ë)9rŸýH1FÐC‚0·º7V\\ úªw¤Ó¬4ãðž2¡ŒåÚmùÇT¡@H1X…ÊøS³¢Û»²3uÐºû˜¶fôŒ4Žùã9\'D²Õ#(9€H×ïd0¨ H7Ü®JôuÀ‘çªã1f“ƒG£v`H1\'¤1•ÌHÍ¸¼}‡!C×åXAÑ2¼q7+pÞ€m¥Hà°H/^Yý…¤Bâ†bpÿãD`ò™Ø,ÇªëûaAYbR	øyÑ8H-ŒÇ#\rR>1‰ÿç]Ì ›gÿ1X/6™©_–ýð\ZÑ)?x„H1+‘Î«ìÞ¸§ì áítˆ\"LKyÀè¶Ÿ:<Ú-=y)-,K€H0ò>öÌ´\"Sª@½h«~•	O@â(¦F6ÖN+åŽCî`H/>Xƒ-W?‚m—t·‰$P‰m™Bví:Pð³Ø˜··Þ-‘pH.üûù³Q>÷Û÷«,\ròw$sè’\"Æ|×öye0R‹q\0T\ZLH+g$AÈ	CA]Wh²içÃù^ÐqšFjšefõè‘E±Žz+T[ñ@H+qý‡hÄ…6ïç_	.@z‚AwhgôD!¬ ¤5WUéû×—+«¹wJq71“H*éˆå\r“åž5¶ç‚-i§öÚ0¶9jüÓ÷Jè¥ŸÉø’IIv{0H*&ô²¶ZŽ†°ÊYJí oÀ\\¹Ì…–Î€+^L/GdÀ','chingaska kani.opus'),
(71,'Â¿DÃ³nde estÃ¡?','Â¿Maipita ka?','2022-12-051553773613712pregunta.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0¨d\0\0\0\0\0\0\0\0\0\0\0\0de_%).*(&&%\"!!%##$\"#(&$+0,),109<7147463/.21346763).-1,2.\'4/0*0-68.$\"\"(0554432\"%*+ \'(\'$\'*(&()#%HäÁ6ìÅ€HáßÆ,Ã¨8ÿ©Í6öÎH€\n>÷Ïx‰QÀ´ïG¨aúéæõW:úIÃ±ºq*ýZ8õH†à‰|8õ©l•P•=á€¢¼šVW‡Ñï×sï@€Vô5l‰®H‡P\r#tÉJ;‹WyA*5q\'øšJC`Ã\nA&ÝÏÈ˜zX`®­PzïGÒ€H‡­Ž\0UbÊx\"û­DóÔ^ª!J,nàB€ „a˜ßnÉ¥Ý³ï8H)®2³¸ÉP¿Áu’úöÍN>Æ­hNÊ_µ8L¢èôÀß\ns ø Á€H‡ún®Tæ!ÌU11´7â§¿`àðùpxï§Wâ#„G•|\niÀH‡ú™/îŽÍr÷>ÎT÷•èÔ”‰«zärâ,ýÿ’ˆ±Å=€H)„Õ9ùX´îö–º>Ù\"àò(E¿oÑ‹ó¯²ƒmIÍüH‡šu5u²z\ZpÆ®h»—\"g‘/ZªØóÄ}|H\'›AûD©vðÒx”ˆïZ,jÄËõèp!#`¥èG,€H\'›Å*„¡ŸÖ„+¯\"x¶„²«·Ï#|´`ˆÔÔˆíTxªêH\'®[jáÚÜ–ÏC\0óå.™-0µlÞcks{33Ñ\näpH\'¡n#~áÇ³\n4;ü\Z©XÚ.kÎûN‡‡}xO5 H%¼BÆŠ(hl«ì83ÚgÁì;Ù¢½ÉuÉd\rJî÷ H$ôŠÆjÙô¯ÿa¬ê-$&\nÇLÅ”ó„-¥ù·z»ÁÁý`H%~Ôd,hÉÀÚ1àƒ%Íˆx¹jzü®.ÌÀEÊEŒ¯H%CþzYô,úßSÞ¹\nõiDõ]ßiœ\rhðH$ô”“…^;.÷©±§r3}×‹ùØ‚Œ²½7:î•¤ÐíÀH&šüzAþ~Hï&ÝPýÏhÍ‡ªÁI{\0YÕ+¢g6î6Õ\ZRH\'™ç¼¦KÀu¡³©\ZVÖxŒ^’_ŸL\0€M^Šñö±ÌH\'¼(³Ç\'Uè×ß]Úü•Æ™A|o4Ú¥^àå›ç…›Ë»H\'›4ŽÁhPaZ\0ª¢é˜-&gI|ÃÒo:qÒ0à\\4ázß¾EãwIÀH\' U™taLª­ŠŠ4Ö_ëLµ)n¯Õ–]•Ço?N?—ðhô¸¢!Ÿ›à3@H\'›K<ïóXïÊƒÁÖIõ‡mÚ(rUHŸ~\\à·4#tØ0/,ì x]+lH\'›K<Ù¯7Â¾ß4	˜+è)²WØr\nÍÏù#Ëµp{ˆÉ7òˆ H\'Õs­¨CÕü¢pÆ±à‘z¾3˜ýW5?iåä\n2y\rTg#™„TH€Ò RÚÅÄ\'¼q¾!\'èLEMn‰Ÿr­èDpð>gzåÆpå:±’—Ê~JØ‚Hœ–LXtîNøiÈ¤Ð?®K[çX˜P›óçÈc§¤ú7É…¿F?r‘ÊZŒAHÓ°¢®,zÔË;ž}Þ˜v.C`4p¿ÜiÖ0!µ°]ÉO<ÓQùVcå˜iÙâYX[º€H¡³ÿ™¸ºÒ•ÝDb¬»Q8‹ÒÊW‚\Zc™Êsþ·•Þ;nÏA›6^´Q1Ò&ëÚ8™õ¦ÔÓ„H«æüßp1 GW\0Õ¦ÊôŸ p¶Ø¢àØQ$W„Æ>„\n\nË!Éë90R‚ diŽÕçx\'á\"0H²žœQ)LãÊfŠ3\n^\"ÕÐšKûc‹¦nóI]S¨»y¨Ã¶×BÍ¾·bÏ<—€Hµ:?í„\0ÐÖ\nY’9mZøOC…€¿ÅìVB9a‰—Ð9”Å¹G{Å7˜Ø’æ#¾\Z³H·3àtiZ}?1™yÆ:\n(j’r¥.ôë>à‰ü<§ô·xðÞÑûKª¥£Ü¯ù½eŒëS\nàRH¸ ˜(Í¸ý\Z>£)€>5Ù:¾\'åÈ‡ÊX4\n çÈóõîiMÚÏáóCjsm­¡	H·É$aÌ÷Ja\"Cr¬°¬àÁ\"ÄNX—|:«n\"Þ}ç;™AÒ€$ûÒŽð.HáI&€H·{eÝxú%ÙM¼ª¦G«gP“À»!óhNÐš2¡zFO`Ðê9n{D¨©`3ý8­ÜkÀH±]2P¼:qSð*’q]G8¬sÛ—¸„\ZQíÿåØ°Yv“Ý§z>ÞUÐH¨ýª²YKSÄ\rY†ÌkñmœŸf%sLåø°-¼¡$øq}&G6vr@H¤·ëëZ-áÄ?ÐóŠ\\unP“|þ^NúÓ9~BÆdæÌ?Û	ò-B\\¦’óÎÚH¢-ÀÙ‘\Z£aRÞtí2½îGˆ’¨ #¨3ç¶HˆN\rá ›Ï(ÅÜJQ¼‡Qö­}ÐHŸŽ—^	Yìº˜-¦_øåã$Ó‘ö‹.nžä%ÉZíÜ¸q@+ZÞõV	0cxHçd«oZm‚C[¢ã:!‚ŒODÑ|Fõþ‹©ãg÷xÊ–˜M]|?—eH«æ íV-§g}çÇî4ÓÉPoˆ°1´VwÆoÓÅ\\<å öÛ/½lÈ\Zz^÷ðFÊ|ÃÜ0H²\'ÄÑ!\"!¸nØ\' nB`R¦åœ´|x»zð7ÒØŸ[³j1²+¯¥8*4o¢‚s3~ŸLJH³xA’,>caýkÌQtÝ­ôJO2ø Nfªþ²z†^ÿ²Ùy‰ÊÝyÕPíð2ð|ùðH±T¦bOV‹WÕ6ÞBô_Ó÷Rk3OÓðWÞ/?ÿ¦}®Çˆày‘ŽáÕtkÈTÒ]ŽcHŽ{ÌÆõ\n»¤:¶ã ñ¯7ô’¦GB³‰ÉÕÖ[*ðà2¥„Â­îÑ»HHfLÖ`­Õ²‹õïáu{,ÔvvÙ•	KX£UsD`\\/­ì‹¡èÛ¹;»×€HŒpEÜ¿uÚý!½š¨’9„ã\rªbšÎ˜î6Å)K®‰ûnÇcSz¡Hò-(œ»:„jxr×`­Ž„HNàâ\n2R†Ûô“ôáü\Ze9)AìLž\"€Hƒ›!&·ij†-aÎƒ“€³*\röˆu…ëOlGX¾.*ùÒÁµéõKª›²H´Rô fRëgé.u5=^¿nJ	)_|¼GBû¶	QÇÿ&ê‰\Zvh¦Zá<à	HH³ÏÏ,L÷\"#¯\r³q‡—¡C^Mt—¢ÂqeÖ­‘ò¼9±\Z?ÿ ˆøèf„ÀH³0*Å.ìçL½Æ\0?>Û~çL!ÔcÉ†ˆùØP~h4UÀH¬Y;‹ÀÄãÌoÚ.mã\r)!K·ÒE<ê`Vu€}P‘öé¡‰paçœ½¨2ƒjõØÉÀH¤¯dã=³·EÚÐ‰£™T½<(Ñ¸â›+v$þ‰\rbÝ\nzèm³$ÔÔã£ HŒñeûL7ÛmËZš-¤è«ÓÙ-óvw…šÎêÂdB&:É—”IÑ€­)®Ñ“ZûsœWH‹ÙUš@ê3àNÏ€-º’ƒd.—QÌ°Ä×q{,î9.ÿá)µ©Ååø¦©ÐHP\0š¶æ¥Üwã¹“Á„žÏmk,’8\0Þ¬Cµ\"¬ßÚ-F`Å‡Á~G`6Hƒ•çMÓ/2--tkxDÁœ¤Çr³ ˆ¬ÑÙkI$pXá2± s·÷Î£ò€H¤ °§{\r `öxó6MèÉÏjgòPÚ®±ùŠ\n¤*z€´%˜&LI[\\ÍÖ$,çH«¹ÈrH¯:PÆ†WÃìñO<d— nýrXxc¼Ðœ­-6ÊŒn—ŽoÃE&4[±‡uƒ;Çõ)à’H³3áwÒ$–„¡EÍ®¨9zb²#kZÉ#…š\'é¡÷/Æ/ÃšÖº?B&ÐH±ærèT‘bª>_^ø=„U€sµâF	êÆga\nºø-§}gðH°b5†\ZÀ>Ôg£­)¥’¥À=F’Qî»¼T%ÈTmDXH°7»@0ì\Zó#¡±%¶ÊÃHPô*ˆEÑíÈ èH°JHã<9K”w2D Áœ•M‚Î!ìzÄ	yì/¸fæŽLH°ZÖWßç\rOëõO¡™Ü£m|‡å¯\\Ehÿd@aáŒøÝÒýXVmH°š^\'–œpâôI¨\"ýÀy«[ÈÍ¤ÆŽ.ýu‚$45	»B§]@G’æú6°K‡rH²9\'—ä¶wFò“UÌ¶n¬L0ã“ˆL¬Ü×°ê¾³t»âwÖf$‹¬cÚN\nÌ¸H²ó¦_f’Å9¥(OQß1¿˜ßúŽÚ\'f¯ëªÃèR]Ï…Éñ)5‹_ÔÓ\nm²Á€H±¹½~™v§²Ã\',_­Š½ˆæüæ…òˆŸØFÃý¾ÌCèçÞ2âh›Pä=\ZQÞ±PH¬m	H\ZJ>‚vVÖæÎÉ§¨\ròBOïÔ$»ƒžØÜ=;ëéž›?2”æ° ŽM¬sG	€H¨ã®Ý\"jÅH‡#;\'öw™;ó1+‚î={†mK«Åõ9(EKÃ\\í<vH£°N1ZŽ’>›[”¿ÇŠäË²UÞøn\rÑßô²éÅ\\þ|ÅÀåPHÀí Q‹·ÌªmÕðÑ‚’Y;âæ\r|4Ög€Ê$½îu\ZH6XöpòûÐ\"yGÁà´‹ÞÄËP…ÙHÔo)ödöšøÇ«¨H5*äw–„°ØÒ®¨3V•¢Èü}ËéÓ‰YÌká*|Í$Úî“²PH5ªtƒ\"ÿ!ºõˆîŸô1KúŸ¿ÿÃ—%qÛÌû(x	\ZÀ\"Þé—äH5–jE/¡¾ä\"ñ|¬¢ zDÛÒTSüyD§ÀH2ØŸû6p#sAÝU$ï<TMÿ(½ûiÞùËjWÁž’gl¸»ÐZ¬ŒH1+€dÆ2²šY%Í†¹Ëßÿ)v¡gE{‡¨[¤äHÀV H1×ï\0»WéÀ $ãY|F\nž³«åf\ZJ•æòG-*Ž-_²¾	 H-UP²´}œù&CHŠí¿ý§üzéc>˜ïõEÈ\'ÅÉ‹,ÈH-YíS¾Ò_àÊ>=°¬PÆ¬ëŽw™V,Ô}>èô‰Òùÿ$aèH,ÓY‹^®5žþýp_¤öø´Ùq\nPÃÇ°6SŸ3Åâ\"ˆezRßœaWçTH3J¸’¹¦TùÆ–›ý“o¯ÝêDþ<?Ž ÀÃã»QlOë H,ÙÎ%g\0Wî‘ÌsÊ_C ¥Z,›­¸väAÛSìï–_ØHÁQd>Þâ?Ž…mîŒ¤õì4¤B4¼Æñ‡émÙ°2Ë`PrCàH\' 9õÉ]©%cÂÖøÌ­ãúVV¢.ÌòÍ6%òä½å=é–c–¿(u H\'³\"lPÑUÖ,žäg…aÖý++lù:ýGJÀ¦ @H\'´¹’=Ï_XàMX	ª¡Î¤.†â®ÒkFÓ%ÜþEOA ›@OggS\0\0(Š\0\0\0\0\0\0\0\0\0\0\0\0Ó¾$\n**$\'\'%$\"\'\'H(M8T™mA|`¬™PEr4\r5ãÈÒ Ajì;°V\nr“ü Üû‰~H)nd÷ÎÄ/H¡ñÇYÜÍ€sNzuz’Õ§,«ÝžŠÉ$S<}JÀM#pîüHÁÄÌC¿ã“ûþ(¼¨ï©°ÈF¡~Î}N2 ‰Ñ|Å†€H\'›{Á|§W@ÔŽ«:ÀTg ¨iðý¸à ¢ØÚô=<„_F1F`H\'Øa|auËØpÃÊñºî:ìþ—á%Ù¿=’¸HRa#ôªâ\r€H+–Äô¨&ìºç ’ß&?…3Ñ²³óçâa!Ì1»\'uºX¡’H+}ÕÒ®0ºê79ÚqhS±¹¥Æ ÒIšû×ïÍEK>PH+`2ZH\' QŽr\0ãr^Î:—î}EÕr•=»Á¨úO€èH,ÉlªùÃ$OýC‹%ÙWå„M¯ÇqLoìÊ¯dY.ŠfŸh|ÀH-v=Ö;vFo\ZÊ¼ÔL;ôÚB´[Û5e~ÎŠˆ€Qa†¢5x½Ø','maipita ka.opus'),
(72,'Â¿PodrÃ­a traducir esto para mÃ­?','Â¿Munangi kai rimadiruta chukapuanga?','2022-12-05155509223287traducir.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0>IÆ\Z^&01*-,-,%*)(-*\'\"$&),&%&***+)%!&\"#\'\'#&#&$)+86/122963<+1,+3125-2;33,(*/))1500\'(.0/3-,-36),).1/HäÁ6ìÅ€HáT:HïŠëUµ-s8H†$M«•Å³í<*\Za®õß¢ÿ•G?:lŸàÊt‘Ž*´€H‡¡Æý\Z8ed£P¦O%3\\kæFÇO0õ£°h¯U¹ò›ÿoH	ìáùÆb¸ÃþH‡œÍQ°êL8àZé{6\'æ4IàÇÕÇ(6ÀÝºmÄí3¤Të:‹SöW€Ä‰@Hˆ(™1ðDðÑé¶bRIëöJ‘dEˆ†.e@â©®º«‚}IEàAMZàH.Š¸OMÚ5iÃg‘‹@]€]ìÏ4ÆwYÛ€z	à{$ñ[‡¦Ì\\]ÞHó*en…´\ZùÓýU¸ùÜ\rÇ7•âë[ÁxaÇ£ôYÑsŸÙ%Œ¬äˆì°H/yQÃƒv³ùQ¬æ¤yÅD¿ñÎWŠ¡ÇbG†Ðôº>ƒÊê>`–Ãrã,H1C“™–$èü½²ÜÝ@ª‹X]_÷ê½ˆt¬ýÞ OU\ZVÀÕ-ê×aÛÒkH1&ïìR0œ¥»6	OŸð?ž„V+mªÞ4ÛJŸ8Ã\r-Ž°H/8¸¼_Qä~[zÝ%4äú/?ÃËbÝä0yqŸð¯k¿üëM´ì…¼€H/>Ê­zÖ®¼È«¯_¼´g\n‚˜®âÖ)EQMhÛÂq©¶xH/W¹“Ô]UgwÒ¾š9ó|‡¨Ã1\ZY¸{k,ý\r8¯ùùMCøH/d¬™ð©™ˆmªÐº©”s$)ídéyVÃIÒgN€ðÂl&ƒ¸vô}–<¤@H/\0ß¸àÆçGDþ R*ËÅ	‘éàXþòðÿ\n©”ó«±TðMŒðz¶H/>J3´bëw.ƒª×œÿƒ	5U\\z*RI¶ÇááµBîùÎ¨xH/>J8wNn]-PæžåÔÊen~W{ýæ0¨1ÿ³ H½ŸîÖ/³åò³JtC<¦§À[¾_ãIE›9+µ:ßÀH/WEpÓÌôþÆgòì@\Z‡;³¹ù†ï\0Ø‡w‚HŒqkK¹ä;ŸH-v2lâÜâ\Zd£ÁæD¦˜ƒ1âé\'¡E%5xLl÷zfïÒ±“¨H-UV†‚YXºYÁÚ†µHçmðxB²?ž†È)iÐ@­Úuc\Z×ô»á1\\€H-nÿþ|¯¥Áä\0:’]UåcjbBÚ%ñM\ZÚåJHl1áMÜH-mTÌÔs}.¡öøªˆApÞ.qÄÄË›T,Í°¦{ï5ËfCÐH-Oòœò’y?D«Î?\ré¢æBC]v¯z”{–u|Ö“y\'øH-v2¥ï\nWì†€¿ÂÔ\'œbÝmÜ)PJ1{°î?\ZÚv²liI2þ HnüÒMÚz-_Ð©Ï.Ò ø«™£Ÿ\Zv!Q`J…¾G¨ú\",¶HÅ¬ó¹Ç£€ÇèŒ)qwÁsÚÐ>Î®¯¡ƒ?\r#ì\"˜sÁÈ¼H/h=r£Ü  _!­Î¦QßÝ¶[j”mK%2»D….2ÕgÈÎÀH/^ñ3q/òºë4ˆ£­t°raVoX8Ff×÷ßù˜·Ã]_1<H/^òzkœ tÖñ\"±×¹\"mU€Õ~ß/®ñ«6\"øS¶å|ŒH˜ŸzS °–KëËäjîMÐ^\\æÇYå°u``	üH-VÓOãÅï)êÆªëšÇ»5¨»:÷jp‰»mü9FüÇ¸ó€Hh‰ùö¹I…Ïd©cZøƒª¿šŸbpœf¡_m »]÷€H-\r¶ÞêÌn’°¤¾à2Ý”—EjÈ?×žO?^Jó—Ð«`H+„S«ÞÎN£·0Ö”¿\\»ÉñÃ€Õô÷@FÊN	¨o“Q\'œ³+äH,ŽAÿ˜èÁiœöœKRÿ§iÎ îÞå¥¹®áÿI+£øiE+@H,u*D)§L™Ô»^½9%-î¯K¼hmŒß\nØ_·úáÉ¸HoÓ½ò6—›Wˆ®\\j:O:š@Ø\rzÒót÷,Õò0~rû­¯DÜHÙÖKÆ4f²‚*úª&£ÓoðçrDÔOPâg˜9èMÞÐH¨Å]€Ü××-t0O^“ýC8“ü5OøB©ºÂ|»$G5H0žÄÁ€ÎWæzÖaÍ“š­ììå]ú~!wuð©?%QH-mP¦Ý0ìÃd÷88«o8u)‡Ê\'›1&ï^R_Bt:DL6êÔ°H-°æ±‘Äƒq¨ìwFßObÜ[3‰<Áô^`YÔa†#œaóe¹©ÓH›X¶ËÇq;_àìuëó–%_ÖˆÁ_ä\'ƒ²%3Ã*â1)YaˆÅóßúÙFæuIžHêåù».ž„Z]o&ˆd¥è\\ñ©¯ObÁ™uÝÞa®è\r%e¹ß¯>èý\nËÂaÒ~¹ôvH¡0—ÄÌ~iÏIßÌ.wÌðÔu8˜ é¦¬¾Iý?ßÇ‘ÏîÀ}n1]¹ß#¾¼H¡WõÖïí£bî!_§Œ¤_\r,¾îPRÔÿsþ\"¢v-–¶ädw’9ìª[Ø‹>›µàH¢ïüÍÿÁx@nÇŽS¨íÝ`É¹!ÛÅW{rí®ï]nòôkáóJj|Õ\ZšýÂ¼€;°€H¦pÙ=Õ.~èJxþ­\ZxžDy0>IÈ~	åöþ§RqRÈ—ôà%ÉÃý;8¨ƒÇVªH¦k\nümÕ\\VŒºöX9ïl¦.qOŸ5-küÁº\rŠA³¼£¾Ä\Z\Z%åÇ\rŸ·¤¶cªBh€H¦£«¶Ð½ì¸;¥]t¼Ù¯TT\"Ósl>7ƒ³÷¸IáÛYÊš^§ücsr¨£Ù€H©ÕmL.b½\"Šü\n®e¬i¸.ã®ìAé¹†2H‘Â*»²-Vn;‰FÓÐ‡CÀ”`H¯L‡‹™—íRpC_Ý\0 pvÎDë/ß¨„\'ædu¶nƒ8“å¥£Ìr3—µÿC’¤H l‘	‹K{€Hµ;t\nŒö_TyH,P†ºÅ(i»2¤­¬íŽöÈ~°¨×yˆŒz7rXH¶G×yk±Ò-XgÀíõÕ—,ã/Œ¿6Ð	‡§B2ˆu†ñy¬2u9ò›Ê aÎÈH¶êµSdëKÈÂÃ“ÂcûñnHôëQ@[ˆ@Ýù~Éà#bÀvâìhH¶Ï1˜C{ÑsÉY^„‰(˜&T)ÿ©±Ÿÿ7çÜ»X<ÏnõVÝÚJHH¶¤ÚIñ¸Ž+\\õ°G¢.î aÜiEÙò/^\rc¦ÒÍÊ™d®Àã4HµÙ/Ä	ŠÅ„ŒÓ±¦wq_Ú_Ûcª<r¡‰ïúUx÷áõ9Õ­IÊ3‚|„ÙÔ(H´ÉÍœšð¶ûc«¾´Å€ÉÄôËÏå¡AQ\0°îx’Û2G§@”•cÇ\r4Ãª¸ÍYH®Â\0‹Xñ&î\nÑŠ\\„âfJbi—úà‰ÛBÕVáñŒ	s:æïz\rÈ¶o.»o0UŒõýèHª±®>\rûá‡¨°ŸŠá;#íÉîL–ÌðzS,CWTðÚ3y“ PIƒ€H¤Þ,®£9tTæí)#”f‰cƒwpI8LÕÉ(¾.—Œso²\'nÕª»HÝ‡Û<¢ö×ô\"H¢r¬“&ýRHºþÛë\rjK?òðò\ZVÔh)GŸa8—Øtºíã&1©_Ÿ°ÞÈJ†<¹Äv¬ŠhPH­W|/[B[³\'[µ®é1Ÿ>àq\0žpÆ”êÎü$¢x¨úrX–P­«ûQ)všÌihH¯Ú²­Ýá/ô¶^!$‚5²Ë+C<ª£3¨úšÊ¸äÞÞóœÁ5Ë¥-]‰¨{UH®ä²ÃñŽ/e.TC4ý=GÒÃ×s2Â5gu~pKÿçõ¶…\\Ýq¥>H°nÍ(ÁÜ°%ŸÀ,X˜ã=up\0îuUÉ´gtw¯Ó\Z¼/H°ŸJb”;x*¯ªƒ‰c¦”7OoŒß\\ìéÃ)ã~¿QÕàÛB“H²!\\¤„Á®(L®“\n£K¾•y$úó2gªÍ)ãž?Bžp{§ËqLþSŸ›òH±ÉW@ñ`oKVªç•’ÕxÿçÃß‚â\03Dë­“y&àsm\'«sºàH°^-Q_¤º¥H\râjÜLÚùZ†¨õ!ŽÕ„ST²e¶^Ù½ÑB@CH¯Áår—**f_®„Òo\Z†å&¤ª%º0»±iœQŒ[â:Ð‘Ÿ‹Êˆ,<ÿ© HªðC“ÚFs\0.ZÂTÜõy}_9ùô‰“8¤žûfš`‡%ßÕ\nþÊ(ty`ßó&T SðH¥ñÑ{æ(¤OÂU¸\'“¥Xòÿ\0Üç(¡ÊgÄŽš(Hkm£uG9H	­›ÇíH Ö÷8=Dú\nö¥]«½™ÉÝ€Î«ÃÒóëÚòÄ_A…¿ý›´3\0±¸|ø­H78Å_rDµÓÕxÏ!¡4ä>ñó\nf,Æ¾Ôå™ÕÝœè¤âH6·G	#œÑ«;„‚ô?tô`˜«zìœLb/ùír³¹T_°ÈNH6œ~Êcü¦ƒŠ‚ñD\"ô/¸ln¼V@?UP½gÎk‹{§0sUØNZw¼ßŸ¢H‚[z3¾ùÿž\\­1Ÿy\rü²}‘bA“–	Ó l2·;ãõê>ãÏŽæoåHƒ­Öôe¥‘ÜT“È3›£~1Þ·Ë30o?r¾Ízb-<¡yÇ„¥¥Nì,d€H«ï¿ÌõýFðm„e¥œ\\Í8!Ò\0}ƒ#gå>Û,oïÑò³!ëxŸÆ—¦Í®ð€H³¤Ÿù¥NÌ¨½µP<%pÅ6È\0È¿Ã]#–ÆI¸ü²ƒÉ•†	tùh¹ƒá]ÆH³¨ù|˜Áô2‡ê/˜ÇŸ„’ü4î®}&‰®µªøÛÄÞ†–#ògl)	P¼H³ŸsÄ{’á‹2Œ×L•þ*ï]qáîØ=}OwºZÕÀ†š›”Ô3¢¥¿ŠHµX–´P	X[Ï´>É‰!¯³å‰vÙ¼i96ÌoEù3žŸK|…cuPi‹ôÊ`Hµ7¶3Œ£l4÷¿:W0æv\Z¦ÅŸœŠ_àvõl-µñŸ*ÀT<QçîölžldáÏÐHµÔP¢>¡H¾3æ¥xmL³Š ›,æ†x9Iè:É!þû~¯ô5¥çHµ°m@kñ0%€‘öÐ×/R“hÍ·’ù)gTK¶±@l©ƒŠ­ÜÈH´êÕr‰{Rà/5:—uŒÈ={¡AŸ1(£Aä¿\r“ö3¡ÀH±¼ØÆÜ}XKn«E±“¹vŒžÒ‡òõ£.£¦JbÌÙIßÝË§¬¯ÞÏàH¯ÕÅ3ý@C2ˆ|†eh¬Üû»»Àóñü¾@ÕiZÅæòê\\Ä5·°ØmÅ@H®”Lðr8¿eZÁ˜o¦\\–ä1’]:\'¥«Sá g†ã%t2c¥.l%½ÊOggS\0\0èª\0\0\0\0\0\0\0\0\0\0\0\0«4ôX2834(.00+6-\'(.166,1/-4012//331**\"!$+30+,32/0)\'>02.01(\'&04804,/($$<78,**.-()847667535-$H®¯—Â”³F3ÅO\rO\ZuiŸéš7\rI>iË`s^âèWÛó,Âjê+\'\rVrŠ‚?‚äH®°€Oô¾Fi_H£fMyAÞ§†S=÷­ž®çÝZ0U«ófšógÒš7£´Ýo½‹N`˜H­ãY÷ÑÁ£QÅ”çQºZÄÊôTÕôÚCæJº@ný|j‹Õô/è\\·£ƒG5jH­	\'Y[OM1E@Q÷ä(N„ðDËnö²>F>Z¸P´Ð)Õ5+L¾ò¢Ç1¼«JK H¬£…òëgÊ¤L°¾g+¤ï^sœ·¸>â\06šðÇ ¸Æ°H¨÷‰Ùä²¬:½êôé3­œÇÕÙ`ž5ðC¾æ§eg\r¬¨ï J9&C@½zrH¦gnéYB¥TX$R«ßŸöæøÂj½Ã·©ó4k«¢\0úï”êðÆJW	0H¦gZ®4xm„¦p‰Í×xè<Ú¢yh±/SEoû%e|Cð¨3Bý»\ršþ,XúH¦.éFÉn˜ƒ\ZTóò´÷ÀÑ$×•ick\r§ïŸÚŠÝcÕ.E›ÐH¦Ó2·f	‹ðk+‚¸}û•WðP-ŸâÏn¦æ¢µ“~¡K?æ+&è‹rÚ\".ã‚}Ë4n\r9ð€H«ä³p)+¥‰L†¥˜”=‡o“q&ºÌ“&ô5˜ÜÕÑª® Ðß€H°ORÞÔ{‰·ljÏnÈ$L2ù¬Å|¦G}\"„´ó€«)hš€H°âL“~CÅT6´”•{¬Óœ\ZlÜVsO8\0>}þÖÚÁ3z^k°H±â˜ÏÕ*¡ªö£NmzGly¡LÍ2\Zò(#5E*ó`Täq›ê×F˜çVð€H¯ÂoŸFŽ¢’Ÿ^ÿ«éKêàó]¡ÕÉíüSäÐ°T®¦§foëRš—+}v H­\0°—Uì\n¦UÉf»ÛQÀŒ•6+ï)k~“•ÃüÑ’jy<”…±yõ˜ò…^âyPÜH°ìÛ$1D!õélû;¿¦¬¼kègŸ÷ž¡oÇÃ-Žÿ$Ì/mxérYL\Z×JkÒpdÇÀH´ý¡´A“þº™hM$ìÞ/[ÈÅ~‹=bN§d¬$H‹\'d>j¼îâH´:kÑÜÜ-—••0¢‡Ô¬Ú	öùÚ°¬Šì{fšÊ1ûæ0š¤}ê>—ÍËVH³/¡÷Ì}ÃÐ~¨ßîvÍi­å¨‘™=Rt7wú”£…ÛáP‰š{~…\0L\Z%c€H¯Õz1=,â³ÂG0Î_œI·{+¿»¤BŽ Jt£€>ÿAñöÁ‹€x)@H®}¬õ5ˆàœ+ÓœQ+ÏUXÎß/Ô©BÓ“3¦õº¾DÔã‹^Œº&?~Y$ë ¸©êÂ(àH¾Ø÷o¾8CwYçŸbwl4~8Ä¾TŸîvFˆ»EJþ’4±Ô÷wò#Û|=Ú2H¾Âm¦$‚BÊÈeUÒž{¼ÎùQDý.B.|…j$SË÷Yldl-i£ôWý8H­t(ö Y)r™ik‘„OßE\'ór<Óº¹AþäU$¤o¢Ùfßi9U™.JvðQ€H©xÏ:ú9‰3±QQÍÏËÚÝ¿Hd/Ì;Mœ•65@:|)çÂ©r‡…\\Þ+H©\0žÕý„ÙòX³LÐ>&¸4§ [@,t·­½T }>ÂCíªÇ–‘pH§ùw4l8–ztÊî…Bþõn›÷|£^ßSÊi¾Ó³\0&lÏ$9-d{v±@±\"kàH©zá°\Z9r÷24†jB‹¹½&tqbøSŠïF³4;¥dhÁ®Hõü½¾¿]T8H¨ò~0,Ÿyé93O‹÷œ•‡Â¶£„Í.›CÙóãŒøÙ<ìÏµÐ…xóxH¢—µwþRy?þgðÑ=ÛE@4Ÿ£?¢Öµ_\nEðÏXßœ9ZúàH8·ßÑB•^µÌdèQ\nB“:©ÍÞ×áÁa!—bL«‰0ÕÈ>€H6XÒ&r¦©™ÿ¸1s4ÝìÔ\n¿Ò\Z|}ÞÉ\ZBÁ§H0Qº·¤[X—2Í|Í&òÒV³“°eß\Z FH’0:ÿ¥Ë‹åå(>D /‘T9IÏW©Ð Â@.\'ó@Hƒï¨yTƒZËôö×ëC5ÔÎJ¢[z	{ž9»jð\"N|Mó†=lÚq€Hµ“c	0«4öð·&…äqb¡k”\'×B··%/£;ÅHMi|ý\rÃR¼cƒÖÎàH³´—jÌx¼r±Û°žü0´;àŠ­çTüí\"g„Sb*y K~ÃµA£®N9¨˜^H±ìh\"ò¤ÍfÜÃß4§ÓäôAž\'ß†•@JÆõ¸UjB`Š}’t:¿H²€Å\'\ZÊ;ìu—\'®Ú”ìÙq7°J[Þ*’H²\0êV$Ë}»8}Êd´›FëHª@Q&ÞàôÛ°ñ…Š‚žT¦5d%æÀH±ú‚Ä¯L¡¦$Ö*&ÞxúJÅ}ËyU´º~=ÚóÐŽÍ1Ý*Mm6\r<â9BI`sTH³zã­/dGÑØÍô\rhÜ	y´*ÉU¸íb»i÷xj×X_Íšf´2ËÇ¥!pH¿h¦~–>Œ”ÒZ~)du†;Q~ù«áµsã’1s\0œÒ	U“KQ°·±ßðØH¾=1ÞfGÙPw/l¨¨6LYmª?Ei\0?cþevü[*ÝL%|&y°/ðH9šrh¸äã Pÿ:új1¿£èÛDßé‡¶û$¤×äsOÑŸ{64§pH Æ?f¶É\\Ä™A7çÍxø–-Ûßa`6sÓY¯z5¥óH¾“Æ¼€\0àLÆ*uÄö,¨J¦4¡„tñµ,÷û]Y‚uŽ\ròDYÚê´ž/Ë©ýÝù“ÀV±Š*yÕù``H“Z ˆbÉó=„	ŒsÎôÁZ$­®	ÃsO“«|ËfÕÈü/&\'Ø8ÖŠ$H”OÈi6¯ºàD?-ª]W&`¤~»«j´Ë‚\'ÝÉýt7éô,\\F-ôiG,PH‘ÑÿwxÕ{¡u_\"G÷î? è\rÑ3Ë–“îrßªBƒ·ZçR7æþåÔ¸H¬]]¡sàûÏ0‚H„³USgœfÌK²§»ñÕ\0?Ò^zÃQ€\ZÎ(ÍòH§3mhHH#ƒPe»EeP¦2€Ç¦¥\Z§GÍ¼¯óFC”ãPš†ý½ˆ¨õ`ž÷H;:Ô‡XõéÎHgÅÑÜ©Ñ­ì(µ¯»“±	éX™h®U·uÑºàH8¨­çw±‡º¶)„@\ZN°Ô‚½Ôåçß-Æð¢IÔ¨8zLœ¤¾HÉ‹ÌbÏ½%OŸÎI8T¨pä!1î´QˆñdWrKšWèH‚°:Ñ#Q®è®Ê0ä-¾™¢W„d¾^ùÙ^Y[e°½0T8øLØ<r=M H¥¢Ì%4Ï“²\'SÇk–\Zj\\¬\Z½%;Ô½Ï—»Ò&	¦Lò \\rº%@qõE€°€À‹´H¬Îð—4KQáñ°\nÎEª{¹Í¼£pÎË…9ýö\r•–¡7H1Ò37AÚBµØ÷ÏÜ€Hª“Ÿm\Zu\\ø]wRlæ±¿-¦í¹vë|ŸÆé–fÞ*!_q~´ó–Ÿ‚àH¤¦¤‹LÕþÆƒ]ÝYŒ¿æ‘I\rö\0ÞØFÏQÇ}…±”\r_“xÊ¯@ˆ{/ZÉ\'Ë˜PHŸ‡\"ëK§e£ÜzûåFy—¢=gž$MûË+ÈÁ,×˜4q€£÷UÀßFÓ(H½½SléÞpç~à§ú•$Ä\Z«ÏÉ`°‹zp@Ó b>â` _•q3ÚÇ¶÷®XàH3\'¯\\(Qš+vQÛ7ËmqØLzf†àâŽ„i€&¢\Z U­®5H2ÖÍ×¹Ejb/y6§Ú{\nDjóÛ©mOÊúû4Ge2ì_ÿÙÀHÆ®©Äk ç%ø˜•ŒdÇwàôž|ˆçi•\"¹ÞCM‘ÀH{ã >’þg¾ûÐ«§1plþóòp×Ô™#ráPHœCÚ`h«`K,¿EWÏðo(&ÙÞÇ!j0ží…SÀL¹j¶Eoéî½ÜïòšáÊß§ØÛ„\ró‘/×@HÓš·µ®„•C³NÞ¦½ôc„Ù¬‡-¥·¢‹1™ÞÜPÂ!ó6jf³MÂéâÁÏúÛ&@8°H¢õdú{½¿MOòæ^C6¤MÅøåvÐ1¥ó±\'Ä¨È<›~_DVS¥\"ü ;¹äuâH¥€_ŒÄ˜ÝJXÔµ·’X+åêÃò®ü:^Ê$ä´Ê×|;`@Hè3xH¦[\\öìü»uO=D7µ5\\\Zâ™V{¼	ïÐÏª1¨èQÔž€H¦G˜×‚ŽÅC<Šúíùò‰lÔ˜¸îxá5\0¿ÑÊ[&ƒÓAJ®€H¥!²fö+(ïýúÅ<mÉ\r±h|tiÈˆ/ËÝuL\'‡:ð¦T:¦±É?LÑH¥\n¥r…êÁæaËÄøŒn/—`xP¬GaèsÂð“Jçœþ‡]‹µž›ÆõrH£fF)VžË.\rÞ6(ÎšoV!Qõks–°Ñúü¯l??•kæ8@H¡)×þOuÒŸ©ÔåŒoz}®>uö=ðºÎÏÐÔZÄ(væU¯Ò¬áàH¡xýa|„£rRà Ë#±k@Ðþuþ®ÕàûËÅ¶£R¤«ÊBzÊ,šPœp³P”³rûH¤Â\r±‡¿´s.¹ì\"enWV£CC†³›}ÖØâõ2:df_¶:/`q¥0à©ÀH¦àô8ò4:F„’HÇÐ9Åª‚`yFÐÞPk•ÀÆÕhw)»¥¸[Ô-šËSÆîö àšH­…þãIÑ (û\'–ïõ«µÌ\'dÄ|¥\\®™Qß(lt+²ÇyÍþÐ??l‡×ËH²•JI”¤` ]´j}Â\ZMp‘…hs\" ìúÈU$ì;§•ái½V‘+qÿRk/üÐ×–\ZÓ@Hµ8­­õ#±Æ`Ôˆ/ÝÓ•¾ÏÜ™\Zig®Yq¸ž´³by£|ymO•\rm²—cáaÀHµ¬ï½wzÛÝú.‡ô(”]´jÄÂÛƒÔ…\nÓo-\"ŽJ©èß·Ú÷Üé¼å°§Ö 5¬ºH¯ÁÊþùû¨ä£ÑË¥Žž³ôX®Gr]éšÄòfÎê]\\_1ñÓÌ\r]`ûÐ 5¯H¨öxò¿4ÿ})6Ð!>\"Æpà+3nå;´mq+· –8&x¶ºNëÜý]“­k[Åó\\›ÀHî-Àq£P\"Ý¡n5âœªk\"? âƒá&t^a¤\nêßã¦ÿ|äPå€H°Öì…³š—oÌ	­z%iËçí\"_Z._U¢ýûÏ+Ž@€OggS\0\0hß\0\0\0\0\0\0\0\0\0\0\0\0˜ú®\'\'$&,$(&!\"&#$+H7ØÊÄSê…Bã76EH9ËD›xÝ_7ša†mô×ßÊÛ`H6Z‹óáK§›×ý²×O¥Ý9†„¹¢µUøðÀrùca{¼‘ò H2‡„Yáÿ?XH»ÛÂ@óþuÅ4ðHCGÖð7ð‘‹bõ½€H/V§gBû\nËãé»\nÀSDô›0¸ç¬uå Ê%bÕ\\³b¥ÕúH/¢ 156ößÌ\\4XÓ[\\â]rþ@ü­Z3Pçî’Ám²d‡¨H.À°#‡´$ýÙ©ÌXâ´Ý0MëN^ßÓ5òÉN1\"dÌHn›2ÿáµ±3uìöç[x\\hÐíðbú8º‹££j³Ä™ñ¦H§\0¼Àì%É‘weÄ‘G]¯üt?n˜EA0–jKQ#*\\l@H0€õ>2È»®d8†)7‚§ð*±WPGÜÍßQp´»j5`HU ¼Â‡ÝFµ¶ªÊê9žJÛbbD—X	ªÐôâû+÷@H+©ÍÃì8zØï[ØÏA1\rô»€Â¯A«º2Äëž÷3tO^›˜H/>B;®æ±lèÆ\Z¨|É»EéÝ˜–OÄÁ÷0&“SYÝT`H/>LÝgbµ‰f½¡uƒ{îŸÓ\'µ Õ¶G¿_4ŠþH/ñÅÚr7û~r(\nèìì4[÷QƒPSn~t0Ý‹Q3/cú¡{Ú	¼ ','munangi kai rimadiruta chukapuanga.opus'),
(73,'Â¿podrÃ­a hablar mÃ¡s despacio?','Â¿Munangi allimanda rimanga?','2022-12-0515646021198ablardespacio.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0èo\0\0\0\0\0\0\0\0\0\0\0\0ÊÜ‚)b12..,*\'!!)()(,(*.,,+*(,0+(%\'(&((%-)%&$#!$%%+-+#\"-/+%)\')(*-+#!&($$(44..55.26:1//((,*2-.1;5$%\'.:85HäÁ6ìÅ€Há7éIŠcË‹YŠoºOëH†¬U÷âg ¹_O§¹¶ø/æÈCàŒÉ^üßðïcÝúÀìÆYÒ`3‘)+@H†üˆláÃ|˜öÁÏ­†6î&€ZØãWfƒêÞFk®ü3`øœLŠWŸ\"|²H‡/I Ä\n—nŠ…ÏÅ$¼ ˜œîÓë–Ë¢cÃ‘ýßÍÌ`Y—þVç`H‡Jüg4‰uj1¾æ,ÿŒ@›ÍFû–4Ù’~ñ\'9ÏæM,ª+N)¥<—»r ¤H\'Â<\0böXÛ ›Æ”æ©H{œE½†Ýí×ÂÖ²=QÐ&Gßóò¸&\0iãÜH€‚è?ïŸ\r,ñ* Ö}g’Ê±ÏEí,¦#ž4iÞöSŽë˜9–‡Ã1¹ÀH\'Á².%ÕÉ¶¾2*È{VÊ»ÿˆUxÉô—/Ð4PüYRµ½ÀH\'›O?*ßg7U°N˜t†¥&º$´6~Z×®¹ºÍ3Å»@H\'œÕ–&lÉƒâ|”9j«YòeÆ1\ZW®>åíbÜ€H\'ÒuyÜTï!\rsjP›³Ù•“}ÖÈ\Z\n±MïúbÀ»úõ‘YV•«H)„âÜÖ.h3X×º+h4üÔÀp+ñõVØö0Bu¡q‚pš8H)„v²“\'M˜ÕÀ/¸Q7q“Ý‡FæÝÄuÇèðÏ<¤ò»ÌÈú H)¬AÆíxÕ!Ó#ºkŠh}¥ïÐÍ•¶5îXqØµÅŒWìÿKè*\0€H)‰o_+?n½ŒK8\Zõ?;m–>\\oÙ˜/e\n…v5>.ëj¬ÖH)¥E;Z8Ý»ÚÄØQ§`^µf¿dMeq¡s€3óÆÐÊ3só¬…ed$H)PÇŸæyŒÑt\0@E	ÿ«Ð¼Äøl`sŠä‘”è	°ù,9õÙ®$ƒ€H)‰åÏ!gä˜¹i2GÎà7Ê;1GZh$k¾?Éž­T¾“•vx=r¡ò0H)ˆü•DØ9\\ãóå>ûdª¼­£¦fxE)±þÜÔ^à\"I¿{ÀH)‰\r¶æ·yÐ¢£SnO»RßA›[¬&[è‡×á—wÄOp2Š¥ï°6º>èH)®I5užÑJÀ‡«3Fs8êÉ×Ÿ}\Z§Kþ3š=FPåµ¬oßõH)„Þ6žyqã,½$„Y4”Ùã…Lè±jÁÁ‡£vÉÄÍM~³]H)‰>P.vžÈc‚få ±mÜ²ß¸¡Œ&aÔnŒs $|Gý]\'H)™ðÕÍM`!\n8A@bc|Ø²áéhC8ŒYv.J„’šÐçŽ×2FÁH)ªnUúîëTÖ+C\n9Ää¼PIâ\'§¨Wƒ¤—ßYÒxÍ›)nû=àÒfO$`H)™!.™\Z–ßÑËô ‰ìñ†ìwni\rfÂ3NÁ–\'Ÿ*ÄECð½fM¼nH)¥?qwóÏErÙ^=¾J±õLž‘‰>o¾‘e=h,xúÙÌøH)„Ã†¤14ìbÜC,EgÎò,ñ<.0nó,½þjETŽ¼ŠäH)—¥ˆÐbH0üœ“ÂVüÔ„š…Gãºú‰(Š\0¶ÒÉ\"«`³¶H)\nLx5Gð-Hª®Í$Ïi°Gg¬åÿŸ°Fâ\ZY/AbBÑ‚ÎH\'›Ì‹‰bó•§ÒDþ÷Òzþ™¡j>$¤žœ+_O´h%ùû¶ÝH\'´cR`œ¶®žõÑÒ\n+sBaë.CßëÃÏ¾#ö8„\0´OµPH\'´¿.qËÂæ`´æÍ##¹îœ×UBâÐ;¥ÔBõ=rwu“Ma~LH\'´¿-F¹ºº´u>ç¯ù$X$ÜË$O3XÏõa9\0Çt¤ç›¾H\'´¿-UuÖsÖñ•7ù.ùþ@mZ^¦”\Z;z¡šƒ×úA©Ýåý!íL—Š€H\'›L–Ío!ÛŠ;j%ÜB¯\n²ì’$ÐCõ&…çµY¿;\0\0¦ÿîJ\"ÍH\'œhÍDÖO:¥[8æ\ZÑò¦:çÄÖ-N2å4L~T«I€H\'›=°¿)KäÚ•~GŒº¥$§ ¸9:ÓÈ†n.<Çb<Mü’H\'œAöR]‰˜’$,w‘’ 5t¤‡7±¥$@€H\'œ\r33\"}ÒØòô¦) °r\\šü\"²Œ©\" =½³cú×ÀH\'®J‹vˆòªã‚¾V\\‡Š¡œ¶Kæ[BÅE€H\'›:›Wê\0ÛU5\\‰ü<{ü¨Ú¡3y=\'×·ù¢M¢þµF€H\'Å6­¬ôºæÐ\'0£Ãç_lÍ(þ£±¹)Hžº0ç:–cK\ZêH\'Ñ¥y:`¯ëÅ¿¼’}ùšµZ<\\{B\\G¿š©€œ¶ÆóÚH)—–D³Þ9iÐÛfÓ¬Ý†ÿõÔêò{Þé=êë»#’;X¯Ñ“ÈNÆH+–¼[%WF`pðóGÂ¤©\0î%p¬iî\0í—Ž³ÕÍŽ,ÇE–á€H.8Ùlþï{‘Šöyôë#N@ÄÉŠ¥\r`Õ–ÐZøæ‡ûÇ%òà¯kÍ¯H/Q½AjÕF 4oÐ¹ç­‡n<\'5ƒ–wkr¡o1ƒèü@H/8¹ŸóT“¶+­ÒeËY81«IOs$/í*×\\€H-P•Í¯>„\'W¼ÕJÇïl=Ù³‡Ô„õBÖÔ	¿‘7Î_¯D.žñ0ÂH-Z•¢Y—ÔÁ·ÿ›^àH8ÛTÓsÂº 	\\£Ù_‹.âL[•#@H-P†Ö1\r5Ê´reÂ£cá³oøuÊmÎÛ/§~b©zçâÊØLÈ×ÈpH-OÝÂïu\0J•ÌßpÐ¡•œŽŠ€>Nkº!æ:Ûö\0Ýe®­ì€H+qW\"óqoÍùN\\u\ZÄ6åa…Î¥4örÖ#W!>â<±ÉƒòPEryH+k–C+ÏÊUŽBX$ËEòÍt³ËÞ1ü›ûjéêÏ-ÿ×O€H+k”ƒ ¤åÊÉ>«ÐHíÐè²/:ÿóõpZú¯Qå‡ãÔ©äRFé H*èNŒ®sÆ[K1˜ô2Ðs?>í_?±`føÒ\'Õ–ÒTxÀH)ªûj±©Òÿw”¬Çï@v„ K-$!pÑâ#äK‚š~\\µWýQó`H)#U\r¢À}g\\‡nÑßHq©l¨½æÇ9\0Q~ó\"ÈY;w¸›ðuH)„â&v§Æc¿Bó<©B„DÃ7*Ó‰á¦³VÍsäzÑ©2Åú“H)#RY{ú„8FÍŸ_ãSÚògš±¯Úz•»O_§rH)ƒØÿòntëí´,òm(?LŒôßÕDaË+B\ràó¬H)E¢è!Ð:Š®6#¸Ôþÿî×I•\n£\03ÉŠÊwk!À¼ÍªÀH\'´E3\röÈãiI°ˆñ½C8Á·ŸmrÓh¯k]\'’!yÛ’€H\'´¹0Íœßˆwbè÷;Äõ[92wÏ]Zï¡[ð7õ7H\'œ\r¶‡Þa¾¾Nå¸ÓDÏ±´ÎY[ØTJ\r<9ˆÀPH\'ØS[m¶`¥”ìJ\r3.üˆä”	ÙtG%KÜpTµ\'ý?!GMl†<H€©º’½;BÏyîc0\"J™ÞÊ©±¯G[y9<&•‰Š+-£¢X=!\\ëà;>ä6ñÊLîHœLÒlÎíãFó1“¹”ëOÁQr4.ô\\öñ.¯g­ø$æh¶–ø±Aú•°HžÅÓû¥6¥nßóš×‘[X“ž¡úóÒ$¦¶ãÎûÉÁuÝcå=àÚ|H d¯e„èY#œAüß†t5‘ƒT[„ÚCÖO0¢ùâÜ¼Üè“¦á)àÅ¢H¢õ(Ô\nÕ¾åk/ŸÉ™ÄÕÞ¨Ø ÿ1X²Íè¹_Ò+®âá#ÃÁ:“	Më3…9ÜøH¥1·3y.ûFªNq}•ÃÌÝn“gíñûTª~XqM&¼—¸,!\Z¢®‚æŠI1`H¦K,Ž[l­bPÀ‹°óµy! nƒ½ø~û´EóƒJ:ž<	>¦!H¦J»8ö»üÝ²„åmB£«ÏŠgQ4^„6J&BŸš§m	§x;I”Ú`H¦€\"ÉÇÃªûEÒz\0šûÞE ‹î9­=>0Ñ`j1’­\\’gÛ0ôÁra;v¯kÓ@H­‡tÂ×~Z[Ù¶) L	rmåèº\r±íg~çJÆfÇ«4W_Ôù`«RœŠ~>å»Gã8<1€H´M[\\ÜÃÿfÍÈ‡eÈ¿@*“6ýFFjô]ÒÕT¼VÞ!1°õçæÖðú¥W@H¶Blwr8A¬kj¦÷ (ýtW°\\—;7¿lûGó€WŒwJvƒ9y€H¶àJ*õÇôûEq™º÷QEÆ²U…Sòz9äÈ€õ\\léý¯¤Äe5“†H¶Õ4û¯®í_yºNU™l7¸{3ƒx®£[ë7r»PH¶Ø‹¥@4¬0ã«z»Vx¦U¿tìXög;*!Mf)öKF]àHµéx¨“=Ô~À8e³oIÜ÷^ÚšûÕoÔYãÒ+r×P\\5™0H³1+REÃvú\0:ÎŽú÷¶­»¶â2xX>¤ÀÌÎ/ I<ÀH¬£s<äô!\r³ÙŽîaHð\n„×Tÿõx¢õSÅVÈW`Z»¤túhUÝëîîëoQ°H©\"0‚)DoÓ]ƒ¿	I ®‚HÙ2•þ_¶y˜Š&òÊ%UwOžÌÇ„ùãÀH¥ñb¢ªPC‹0øœÑ]¿ìj¾Ñ§|oNŽ1Ð»Â\\ÀFü“ïÃµ®»ÏFH£Æ0háø‘|Ê]?úî\ZNb¡ˆÑ‹	­LÆ/õRkR<­ËRÝå¨H« Æ2ý‰\\aªAÇ³Áêœ2Ø|êEVíÑ0^”“×{ûòôYR¯5töäQ^04ªyÕ«’=„þRH­||8XT)ëú$Xtô\0Q©.½c	i!Ù\\†È=™š~E®ŸÝËFŠ_žkbÛÂˆ`H°mÙJDºö‡¾s‰šÈ$TÏs$èkèv­}‰ˆ–°C€PH°mÙÕ°Ñzñ.nú‘Ñæè_\'Qh„ñu¨$rH‚ÙÖH°n7)—¼6x(í£ŸØc†SÄ~&«´‡;\'ÔýžZ®ñný¬V¸ÅH° =B1l·†õÄS|úûÜ`1Ú\Z<Äƒ»9ì,ÔLòe¾ýæÔ¨6–š H®(IMÇRÔÄ”8é½ÑQâõ/K%iÖJYþ\"¥Aþ^OžsŠ/Ñœ |š—¥‡³WŠºðH®LìðùÇh¡_Ržl×óGC‡,±ÞžÀ0‘äÅ•RêšpG¡Öpn.:Žh ÃþŸ×$· H«\Z	©J3Î·ÚnŒøº”àÇ4¤Šþüt’–7JÌ[Ú%F®ëO\Zº|å§ŒÉ5‘¨ÎðOggS\0\0(§\0\0\0\0\0\0\0\0\0\0\0\0½S95----,61-456493.-/2+\',6&%$).0.479,\"/64424/,/3-926.2/3.+1/0/351145300&%%*\')$ \'#*\"\'*H©i3¾fZ÷ÀF?ŽÐî@KÒØ¢1$—ˆšÝ‚É®‡¦Ó«¤KézºJî[`€—-\\èÚÎúìàH§àèrÝ¸o\r‚è«Iúƒ*8\rU¨[;E„`»Þu£@™ÜFZ(¦#t\ZsÍ/†	=€H£‹ì]ú!£f¾Å|ærV\r&2ø‡Ÿâ!Ù“¡Á%ÁøÜöDâ,)QèðH½äÚ§AåPê´\'Óf-{_¤Ž,\r¢—g,D­2Lª¾¹Kk¥—»àWR©†íHà¥ÄJ¥Ìzÿ &Mƒnr˜ía,£&¿‡ìÏÛ^+ÔÒ2¾ÚSÓ1úe@H¦vt ¥-}À#[øÖ%[ò–XÂ+nñ1Íác.ãSœ4Ûq™•„ÔÏòH‹qžBh<²zÒðÞ£™[Y‹TocŽº}Ó\'ÐÅ!±::ßAJ€HŒ˜oKmô¼•Œ¦‹ˆDþÞéÇ&š8ö‘FÞ6~»¸–$\"ÝõWhz´ÜîºvãI¹—Hƒ»À0m†|&mÑ0>0wúuR9ýŠÚ­±€ƒ£Ç?É‡Ð	\"A@”2Þÿ_@H³=¯ÿKcf.fHÕlQUYâQ\Z7Îï?é”p¥¡}ÎÌ°Où}Ê©€H²ý‹-kô>zÊ%{²îã2C­öc¾ðØ…¼ŒÚôC]ÿQT:¾¯\0”_½m2òE4~uÃ€H¯Èô–1réèÊ=EÕ…Ü\Z@mÀ¶úÞÏU÷DL}\nzkC›>vÇŸÞ§*4´–`H«K‰ƒž¶V†»0q¤)¯Qbe<äÆ)E—ÑRtÀ|¥6vÐÇªðÝR\"tË @~”(€H©¯)Ý3ìÆ(AX&§Cø$¨’k\n27ƒ¦ÕJ¤ÑF¥>Æ¨pàÛ—DLg‹v3‘8®?ÈH«·6Í?d‹2F=R(—,ã[X\"Væ×e³”vÎjAV6d©Äª£*Âã ¾Ÿ|ˆA=}°ØH®ƒn>RQ„ø:„ý„IK8#l7;…\\Ù°dŒ´‚Cþs÷tœù3_XÀH®Š\"g5å\\ð÷n|>*–k¬ÎžÖÿ(dÏ–}•2 h¢Ó£\"Åg<€H®TçmC8GŽ&YŒE‰qÕ’Ë´ëÞ’®ÅVÌbPPL<Ã~\\*2Ô4€Hª–\'­Ýáún…[}Xó¾Ü=‰¬­Ž^Ù÷Ù:®L™¸ŽÊ×¹…W>²o@œ˜\ZH¥÷GŽóÒZž·THõ”Ùëê8–ÜAÔMjì]*/2P~kkÚ±áL‚\0f·gÒ±ðôH¢‘è®C\08ô¢Â#¤dñ¤+ˆ~¸±¸Ç•1[™vñ\\R€H¢qœ\nWïü«¡Å;ù`[Ü\niuv¼\'“€Ñ¨^—¥ÖÝ&\'H´0H¢yw%¥Bï©·ïQ8Q è\n\0,°p!\n3™sQ½ÅØ«¶lˆ¸!KÌÔíÎH¦àòÆ`‚;ÿ—Ã5„»nŸ>m¡ÄŒ‹]»]Ä\0dVŸºYÒÄ`±$¤ˆþ¹\rdòÕÉÑ H¬Ücmd²‰úU¨æ³ù_XÃù_J2×l™ˆmôTt’MåaH¬ýñ¤›&·Ä|P…£à…ÆYÂDw¦¥r(N¹‰	éØ$C5gH¬ücõ‰ò+F eR+dc\n0Åñ´øâÒ‹Ÿ´Õ{p¬Hªî9@*¶qÁêêè¡t¤‘pY‘O¦ã1*”Ÿºû‚»9xpk!f?E¤tH¦)î;$eÇð‡uG–P¢ô!6î¨¼ñb­agÁ	deÇ¤·m>ÌSŒð{H¥Påžg¯šÜJdÅ&`çÑ`b®‰Ûoh¶e,ÎÃ l·äÚo\0Íÿ^\r©8s¦H£°ýØæÿ…@£ûRiù\0ŽÊ5ìg©.¡.7FJ»pùœ5©ÀáôÞ0)D&ÖþÌyH¢`¤4VÅÝŠdúk¤M»¢‹œ[Yœ­†ìoäÝ¥R\"RWwuI(ï3ñîÜàú9kàH½ÙOòv{ÏçV³j_sº\0{96Ž„I…´ÅªXŽc•S‚ñ!Mû7T$ÊÛ’~·¦µ#²ÈH°åç¼Ÿ¾WQ™ÙÈðyå~žø«î [X®Åt»TP\rëâÚO>Ôë”\'Tß\nKùB´äªÇFì4H³6)ˆã„Îå{Ö”ñ¤ÐýôºjM^f™F9é§Ù€uzÊP*‘‘•€H±ä\\%l€ÄèuƒåüËÚ[ñ°ö|mÊ¹;ÝBÿ©Û¥ðçH¯Ãü—fú<÷­sÄ}½hŸ7ŽkÇà^ì­/a\n	ãí[oˆì3šÌ#nÌ[‡èH¬Ü~›ÚXn4&pˆÓ¥ô]€?§\0Õk˜ýÿT\\¯Y+€¤•;-Ë¡g3k0\Z©WpPH¬ËÕ™Â1…ú«b…¡Ð”9~&ÞÙd°ñÿJ•R3y)O—Å^´žD2ÿÝ‹Žcv[·v€H©“÷Ë>äØ#Ju3j.Ûõ½Å™ÅÄ@3Ëy#NËÓfeà+?9.GÁºÖð@H©«A“«Kæ‚¼3­Â³nR·ãaµ£nãg^\'ŸÆ7²Ë(Ÿcäqf\"rsN*Œ*H«#òX‚†ßÆEçý ¦KÏ¹ÂÍ Ø%¬J$±ÔùMOŽsÊ\\BîpÖÔ|m4oN#¤~àH« Òíý\rö+7f(ŒaÏ{ÚND±\":‡ÄAá›±\n^Å¨ s“,Ùx3†V Hªñ\ZþŽnåäç›¡ýÊõ[=û ÕÆµˆCfˆ¬Z ˆ¥6’YÜá%ã@H§FŠÃ³³É6Ž…¿ß™Q¾¶ïüÍƒlÇ‡^FGüˆ°S»¾Rð¦ä¸–H¤¹G£vIçv[Û;J9ïIJÉµ¿>?!æÙûVZM~ð’ìòÛØô8uÀ»Z|ºu¨H£Öû µòDP*¯å±p>q¾Ž*QÚË±©gÆ oó›NÅÄ]·\'H£ÚE5è¶œË­p#Sp\Znô*9È5oŸ„ƒ†*¢Òû1¢n	b‡êª8¼ÌæÍxt><ÊÙSàH¤\n\04Ó`\Ziå²Ò}n>k3sˆ)·)¯A¤æ9@±ï—$Š{Ÿû»,£W1NÀH©­TÆéŒæ€v•\r]£þ¨BÖJBüÕ1ŒRDìˆçéÌ¡`4CC¹‡ÉEÉÏ‹²nºîH¬lqÑÿTš»Hšs‘ÅÓ3¾FÄòšP*[ó¾\ròß²g·aî„W:.Ê\'PH«7…ˆ¦•Ú»—$¿l;ÿ–/jR³œ²ÇØQî_:RTF‰NÉìŽZîtÙù@H«ÇkëzX;9ÿÀ‘í´!B€s#€Ø.iÇ¹ZˆŸ³1@Ø–Ü˜6¹À:Õ‰GRøèH¬ÝÍò%»Ó»>²p±\"÷¨È!á‹­T™d8ù1v	û]dE4°eBšÀ‰k¨Yg€H¬íårå‘Ì=ÁdãÅ²£³œRÉ]-ä@CŽ±Œ,Ó.²¢x6Š¹dÇyÑÀH«IŽ{\"³S‘]uê‹[w\"†…üÔü“þMßF`]*¬ÿ&Î”&L‘ÀÈ:`H©A$@õ~ˆƒãY4\Z%6» -§ƒ¡›0ˆÇÕÕUIÜªKh¤Ü4©ý…8®\"ÌH§–ëÑ¨\n£=ñg‡_ÆŸ¯Á#ì¶‡Ì¿ú¸hî1f	ÓtÅ3‹•õ´Þ hH§ÕÂò¹ãÔß4èzù·†N·ä¹¸î‹h_ÂÞ†WºG€túÎÊ­n.¯\0ÚU\nH©±Ú¨¯¢ÏWQ:§b¦ÅA|ã>\"ò$ÃŽåCY FMOÉÐG«øAÒœ\"FØ·œ)H®îÂXü…Õ £Å´»{\nô×•§ãî,±9ú 0)¼à­)rgMÿ“.ERsàH²O  ­Màþ²bcbq.$9ß}Ø~/ÖÒ§ª_²”§žte,\r»)±½æ®õ):Àm\n&8Hµ5’Æ\nÇ­Ò†¨³ŽÁ!ëc™$\"\\Ð[z±U¥äi{\Z©Ä2ûÎsHµ\'?hzEEP&¯º&fÃõþ°æœè¸•ö3…%h`OÒÒÔq·šæQäÃHµ\nßøGý„Éh›‹~hÉb¯ pÚL»r{‰G–kñ1\\‘zØ‰Eä\nÜ³–¨Ý…È H´ÅÃ<NGU\\;û6v¦oŠÏs¨Á™wµËFï«YzÕMý´+ðð·ÀpÒiYaÂhOQâ¿ÀH®S®ë’#@o$ÛpÏá\rcWv^¸¥Ùªþ|‚ÓRH*Ýÿ÷P)Öê‰Hæ¡GÔ\'ÄHªî±ñi\"á[×Ð[tÓóóÇTºÚÌLtóÅT<£><C¥šÊW¸zñ\'Lâr€H¥ó7‡A Qb—±ß34|ù‹âˆãÂýÔè\\Ý¨¦E4\\ñØQô!	M¨`H:f*˜É^eîÞV49^ÜïtmÐ9AT´IõŒ`ú*“QBÖ\0.èH8žà—‘±ÿ¶2aÊÛñÁ1IÏŽ©ÑVäƒä…WÔç9W]H8\nØyIÛÐH«ÛŠ¶\0Aþ1ý:MBñÒ•o.úX—¤šH7ÜyÍ½ÚÀKR%2fX3æÀì·ù¸UÇö %ü¨>iMQŠ3üÛOPH7\'˜¸‰S=ó¨\07·½\"@Ægœ\\<úûwÝ¥e	Ë-f»ÉZ€H69Ç£¬šE¥>ü 	ÍÇÎÒ\'äËÂ”Vr*ø|$qa˜²ók»¥z³ÄH4ºúI1`%¥?A™¨™Ùj¯Ò´’œ³#º ´P·ãôH3,çzÞI¿‘6\Zqf4˜åÇçÚk•·„éè¦TH3,ããª€°*¥,6\r\"•†›/´È…éy`“)Ðÿ…¥ÂÏÿ¯0íH(tÊ½FøŸž—R®u÷ÌÎ¡”4{~{\nJê6H2£žƒ2öä¿ö%	¥ãÖ–Îg•øsÍ©Wy%Ÿ;køV˜¹`H0¤ã¢ÅP\r€¼Mè±Fe±¨Ÿ|SK™^ì¯+ýïØhxH/h8Ç–„\\”KÈ§ºÁ¶“Õ`ü³”¨¸ûåÇÕj¬<ŸgÊg¹`H/ñºÂ.Š	‰µ;ó¤©\nuõq>y¶k>¢‹)9(W=ë`f«ô','munangi allimanda rimanga.opus'),
(74,'No he entiendo lo que ha dicho','Man iuiani kam rimakugta.','2022-12-05155794975812pregunta.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0·ý.¦`++)*&(-)\')\'%+\'+*.\'()#!&))\'&! $&$##$%$(!\'*)(-&((\'\"%#&\'%)-=34/2.3334769791/0252<6275.*$33//134,1HäÁ6ìÅ€Háø\0k^B{ ü€¨›H†$7pŠ3âÅ1œ‡Z+ùšJU4s¿!ô|Ô1æÃ~Š•£¤‘–< ìÿÀ®H‡ßðFØ0óìò	“#?lïèe¸æéÕšm~eß\\¨¿¹á ¬×ÆH‡LI~N	yÿ…là5Ä-ì $ú5=Û•hÍ¡º0d~š#^vVþÌxÈH‡”¯O3ž¯ê7`š©–Ã·7—Yß­-Ë’éPžÇ„TÌ\\\Z7ÆÄ\r%g³H)®ª·UAÒ’Yy‘Ò­ä#qå•EL-[çÆìBÏ÷‚ðÑ­ç€H€¡K}¡®LjÆè{å—®^ûhÃ½¬›7*,úÃCM\"ÖJî«®H¼H‡úÑ!M©ßß[Ü\\¢¶éQ©²Ï2ÄÐuÎZI½[\"m2ÒÌÑ˜–=¥{¬H)®—œrýDéaÇyDsÐ%ÿ™ÉñDÂÈ [îÐ LLôy7ªˆ6U&°H)®…ïv¨÷×pþÉ\nL<Ö­Ø…úÅAÔþ½Gú„Nï>øàH)®ÌG×Ib\"kƒÂ#[wŽ\'ôµj!Qq2óüµ\"\ZËzõ£gH)w»œ/ößwywýú\Z*Œ¹AEÌjÎ[èéì˜/Ä4{kç)×¤\rH)„ÕH/ÔMùä-mÒ¨dU©¤¿¤K7sÎU©gÚh…á€H)…\'\"‹ÔÉ\'d*èã²´ÊPw@¹iiV¡\0ò’˜÷Ù&¢1qç-V˜H)®öKlRÿekÙ?)©ìR}7\"Q<ÓŒ¦Ðˆ»I\"oš£ÀHúÞ2å/è·ÓTßÝ•n‘pA)u )n©ñdºÒ $ëCo5?–Š€H)†ê¿ú˜Ù^M\"ì‘Ç¤ØU é¾…5f¸ÐôQŸ+”c/®ãFHŠS	G¸ÀH)ºˆ5ý	L’gªhâ¾SR:ï#y‘¾ÖÓ‚ÇrÙBÞOïh ‘eB@œHcêyÿŽ¨¶¬ƒÍìÙ¿òÚÉL°Î1šÉ©Áä£(ìÓ¢ÙÀH-VûVu’º\\–ª	ql£Ð\Zªf	øúV\0˜\nÚ-Ï<6ÇÛÿ¯@H.\0B©ã”÷è‡ŸfÀ|¾ÐÇhÅHË3M‚?È‘f3\\©zàv)JÂH/?+‘\ZÀÉîi¦v&€)µÇ\"½ úèŸ*9zaï¸H/h3âæ!„\ræÂE…Ó|—žŒ±ÿ,cH‘NÜeÃãH/imÃ¸t~¤uq¡xaýöÐÃ‡÷¬qÊ´Ô1â<CÖ²x· H/4@Y€çL”»³ÍJÞúˆ”ƒí€vØG\'îiw¤\0ÉÎm;S-PH/i/½˜ûÎ‘ög;ªLMµÚíÑò_-¯Œh§‚ýã^Q3„ø¢³o‹üH/i*‘›g*´õ»G–•¿±—>-XYïñ°Ó `³pœ´vuŸü@H/hYþ–ŠUÎîZna¨ƒ›Èˆè™û3¦ºMü!#\'#ÔH/iõpš-3lƒÍacÑ<Uµ»wÂ k©èH/hX¼8œgv{›ØYö÷Ý°êÊ¹–Úh~8t¸pH¡\0Šƒ­ÐÃcÈ$©TPr“¤¼&m``çÏT:£ûH.ÅãbgŠ9Õ<Ì¢R·;;yQ›µÄ\n&L<,¯ð©ÙV¾ÚH>„H-VýÃEè%Î\Z(vn¾Gm•ßi×\\F‹špìM–Võ%œb3øH.	8Ý]°ÊŸL©äÜâå~@„\ržê©ä[/”Ph¼C% ¸H/#j¬š=yó5½®‘á41êÊMT.üLÝ®£¶ìÔ„müH-WÌÊÒ|Vì†*-é´[ó†%BÚuÌ=riÆž¼3YÀH-€\0fƒ+¦QðÐUk¿ÝOT|ûnR“6(‘êIXsúO€é²H-‚­T‡a‚óxÑL4ƒVø0ÝxŸdÉZ\'g—FÜ¡üH-¦Ç`oTfq$ Å•¡:ÐË|ø‡µ}<õâ\\’¨Wg H-ú+NR¨¯çCvØ‘ô”Õ·ÿÍŠî\"wÄ§TKßÌH-ºãëÊ¨­nB3²Ø„”(ïéX¾ãÙ©ivÙx;¬a&É¬ôH/_.¡áfbÅ2]EtŠPÿ&?Z÷mf!10¼ÞÝmÝ9“xžv³7ûGPH1RS\Z>‰hà@¸¢qF3àY2»Jc¯S>l8q\'š+}ýEUèïšÃÝ%H1(‚ÏŒŠÞ.¤h†²Ïšú<©G&‚€ïÅ$Å¸¸ü“Ç¾†H1\"ebŒAáºýBpŽ„9=(Î(çnÐLÆ×pù\\ \n\'lè„DÜT+ÐH3æ3¦ãBA•pð0V=ò|£É\ZÆ½Þ0GÂêÛøæÃAûMH2‰•ž–…GuÞÂ×ÿæ±­ïzÆ\"é“r¼¥óÔ:\n@Ì°L>ÖMŸ@H1QðÌù@µë±Ç°I~ÝI`,]&€§9¨üD<ËåqÍ¿OÌœ\Z~U H1Q\r´-Ï‰›½Añ€Mù¡€Q*Mà¦%V¥9»à9º3Ú«5$š`H1\'PÒw«¢Movx&%ÑeÎß{HrV}ª(ôÚ–ú@H/hK™‚ð¡Ëm3*E#tFÊèÌ[%{¹*©î¿Xc[jhH/?ÚR.^™]v_º$ÜÇHÐ,âÎ†ã3g=:—ïƒŒ~\\H.ÿÍÂçq‡	ès‘{™\\í\nw3ÕÒ1Æpúºáˆö\\`H-k@ƒÇH€XËðŽÜ4gØ±âDK¼»±à°+YèÛòèÐH-w@ÂP>öÅøèë89æªj†ª¡¶XOÓJ²bö^«{<¢oH,Òþ¼ñ?§‡B¢xày0<µ0åmŽô9Í\r|Ún‘D¶r]€H,$9ñÂh!ïwÝžq2“ Hë…+’¼òlÛcïjÏ©Ò®õÿ?=×HÀHœ-Mý:Ûdû¾JÖï¯#=ãöÃæ©Í^oI‘ékáM“ø´D¢¤„·”FŸ¬ÎÅîáÝæ+¯J;Ê/+ÈH ‚”U<ÉxøR¡ÁùŒëW‰îöo•¡36ÙÐ$|S´ÔÉäoÄ‚0Å¸v˜ÀH¦šP[8ôVEÓlKµ¶˜\\¨Ló¯Æ¥p©öTuåYæoÕ*Wp ÕÌæ’A6jVbjH«Ô¿ã(Ê°#‡yaO÷ýX(R¤2Î†Ñ&ÛàÙs\nÚó»/© ÝŸeöKxplH°æÑ­I¯©úEFmÇõÅJÁÉ3k¿ <Pe«Ý|nã‘jÞ\r`Ò?7Ð	¿íû)*H´«ÝŠu±ÿåá±œÐ.æÔõÛú¾6‰Êåµ¢G‰XŒªY8!Èâã€Hµ÷| {µ;ñÊRëŠ#š±È£áÉ\'&næ?aLmàç¾Wð»BJFFkÐÈ„|H¶C¿FÊþEë¶¦9\0:soÅ¯­Ã4r]‚\\8X‡u æc£_à²J’¼/#Ü‚ÄH¶å¦KÌ Œ-Vûi­þ†eóÄžrK)À¦……Ì—O¾¤­áè”½óîpªðÊíÑ‚‰¬ØnHµÒý}•wÑ¶¢§ÀH¶QáîÝXÆ\r•E5ßø¤9çÌ³²éÕ<v/EêîI\"†³KðH³ž|_Üx›a%ò:¯Š^n`XÊ¨HƒL¦¿ÿ ©²µò«Fdv±p2˜eò)tZ<|†\r H±|ßËBvJnvuâ0½Û^Y„6Ö@Iò4“M¨Äô†Á‹Š5ýDœ7¢¸úÖPÿº†rý€H®\ZRCß¡7ûûÁ/ø÷3§Ó%i”Ñúø­úí`p/“h0•r4%”s+ó‚\"-T©˜¤Ø‹(2PH­|×æ!b5¯î‡cša`JËÆ5oÁï²ö8%/–“}êH1˜V~>Bþªa]œ¨U`H®»4h¸ÁäÓ‘aÚ£R’£¼MÇ#*ÙšQôS”Î;ïÒg/›À3Ž•$cÇ‚…ó)1b(Î¯a•H¬§ŠËœ°ßw`\0ª$>UÀ=é\"2$H¢}Yºâö\rûyz\rá]ÔE…ù`3ñÆw@HªûÁlÈ­@\'9±w”j÷(Ø\\ÛÏ›œ?Ìß»‰n5=z™ð1,(†´×«/`Ä H©‹°¯Î€É»N1Sº\'eó{îd{†›‘Œé±J GÖ/AOx!:É±Ò\nÎÀH©a}‹à	|}tå8ãœØÜwñe 2z7W$áÐçYwÑª °{µú\'°H§®¯Çn¹™k£ò|µîä]ñžñé\nöã³%‡›ªÞùßíÄ7ÿ¾rÄ¥ôk3\n¡x¯`H¦s,éÍ\rÆ#õ©Ñûý.Ä™Äë(œ<ƒ&eTÍ¸&¨û*Eþ‹{[8cÆÁ¸°ÀH¦Æ›t¼Fò¨¢ŽÝäÜÉŸô‡Ä¶Ahöòë.¸ìlîÀÁ”•áX(ÐBA¨IÉŽËá‰ìèH¨=ä%XU›¹éT;s+ºÅ0YÜÍ³1]Q\"ë*ÏáŒ&,ì¸kÌÚØ3îwÕ‹°E\n¾ÀH­š\\ÙæU7&¨mfpwqàFþÿAhûF“ÎÉ/Ëmq®ºøÐ\\¬í¹ìë\nO·¶ÀH¶†V\ZÌ Geò¶’+hU¦ý´/Þ[-ú2UìýTlèv¡&œmq™s\0ø¬Gv¬³H¶ÚÿCÕû‘\"¥·ÂÔ•¬KÄŠéjƒË×[Æ¾*Ø9Ãœ½5O2CP—ÚÊ@rŠKGÏ€H¶Í)V¾3)¶½3Ð8«DT„ËØð4JHË—Ùò)çào!FÕP±ƒ¾›SFsèHµÙ_i,=­{Ó²8â6ª·ãÚÙx«DÒR«èN÷é…\'Þˆü¼˜l Hµâl £_Å£S3*Smm\0»¡½dþÛr¨¬ÂÇk™Éó8H´þßçÆ]ÿ’E”ª_ZtpñÕ%Ùc›c±QmŠŽÇƒ8BrË/+±ÿ»h/àH³$;(hÂï6¿4tÆÑ/}Ï<™¬¼õé»€u:åqÕü÷†`ÑC´ÜRÊ5Â òH«7ìÄl±U‚–†AÍ?ãà˜QÐýHXœf¶¹\\+†´øŒ”i„ÅI¢à†L*4HªñÜYº8¦£¬ìwu÷Ñw¶6ÍÀ¸‰ùµïb	5±ÓÍ‚?ìk\Z»U{š\'˜H©A¸Öýüçêè?ê§–oÌúÁþz³í¡)J:@ôäûµÆÓ³M’	+¹jØH°œÉ•oÁËØc°ÁŠw^Îû”6Ya¸¨ˆáØªc#g(ìtj‰k¼e!d.Þ  H±¹ã¥[Ö¤âw¿Š}Ó´*QÁì©û1€m6=îŽ:G\0ó©¢Šg…óëZË\' H®`õ¤}ÄœxYÜûO±¾A«$£S*ž<FÒ-àg‚Opþá·A“¹fð@H¬J´=]33°…àø(R¤­ð’ ühÂÀ/vÃoÜ˜²ôcÒ=SÈZŒ\\Ù@OggS\0\0è¹\0\0\0\0\0\0\0\0\0\0\0\0jg¯ÝZ20)0.+-*,\"#$ 5.9)+\'$/20..6.2../0*\'-5+-0677,2+18+290*46.1*/8.)*,.2320)+!&**:5/0+/-$&(\"$,\'/-H§$ínÂGàe!œÓäQÆ5+6}€N&’±}åSÛ5Ná%#íPH05­¸¦íøÄâ%`H¡wçwb°ã&¥Ó\rÔjÒ³¯¿RKó…¾Äzý}ÒhsVX»£A1-€Hž|¤òtÆësd¶Ý«\r\'áêòzø|e.H17HTÕdÅÒ¿ÜÐD™2HLÝ^Ö\Z(ÿ‡/`ÃziY~ÀjÙEók¦~fZ·ÊÞn\0a­¬ªÝ`h(ü­šŽ˜HœˆsíK£ÓÿÍaù\n€ˆqsû4¸\'mü±øÂgiU`oÔ„ü«JÎ$ñ¨HŠ\0B=§ÔÍÃº¹pH4ß.Lesµ%óŒÌtãuÍ2{Ì`»\'ŸŠHN)ˆ>¯ö.®Ç·#øø¤ËoÁ\"=xj°\r˜elÖÃºíÞxÀ¥`ÐÄ€HÓX0¢~gÛîÇã*\n…7­çÓØ”lÚñ_¢ÈdZî\"˜o£ð¾Â¼HÊD;<³¶`›]Yl\0´ù%Éªdâ—gE\ZGÌ˜[ßÈÇË9áï~ÞWÜªH7’ã:Œ}îâ\"ÈÌÀàrCäê^ÓÔ«\rÂ¶*\"ƒË¡‡îÉH/Ù\'U…	°¿{ý}Û©Líž|ŽÜV_« /×f¢Å_?æp€HèÁzŸS%&Xfr‘,mÌ¯ŸîJòÐH·ó	\0‡Á|V`H*äô‡êrñH[¨|ç;0#BA]oú÷µÝB†\røH™dU^´T£•‹Œ‘¢þ¥bÈÑ	÷±ÝùƒrØÌ…‰°ÁH´ e”ï4U‚X“Þò$¸0`Hƒ¦$‰›Ñe-R×+U@õnIkÆo(G±>¸02ìwÙ±Wr9Ý¿°A@„€H¨Žp©hMxðÛxhocÍÕT·[3æ²·ïì•ÚcÑ¸Y&„ïö±r§ß¾ü}êø’0ÜùMé6($H±ö¬\nÙ!èÄð}½µ¹:sNe5«1ê-Ê‡ˆÄ³Q 5„Ùq¬ÐH²_@\'˜Òl·œeŸ”²)tŽ^URÑ”SˆøEÀ>V8ëà-Ð›\"A¤H±ÁÑæ*¶Ë#ß]#â––p%\Z‡\0ß6”½2ìñÄˆ¨ø5\\ @H°û£Ðú\Z]š¸ûT@3‹7Ö’=ö@×–Ÿ@èí@v˜ŒH®¿Õl*{ñnŸ°-pÈ	WJ\"üÅ¹’6.%<²P¦\0ët»’…bUŒSÖxàH§‰ÕIå¸òK¬n\ZmvØ¸yÌØªXzVƒk\n˜åòz+aÚwF¢ˆ|çÙþ\\[üõ H¤ß]L¯4 ˆ*ÄÈ‘Ž#¶!ãÁêà„vZÕ—:Y§÷†7GÙCÖô]ÕLS€H¢x¨¹…½¦Ôê7$Ï?\0Z)†T^Ì†Ä$M»\0¼5V¢êùÃ97n,(Õ;H¢j}œ§MŸ aøì$×¥/tÜŸxã°¾c€G|¼JªFZŒé™*a0J¢3ó€H¡sá’÷-‘vñQ*w ÔÔ‘é²n„ÿÀj6m¼†°QŽŒ|é¡OS_-c\ZžÊäª9¿y HŒMþ?eÂ\ZI·°©â£„9gE\n|ÁÂ§¢|ç¸ù£=´ü+‹ž~í	v%Ê°HšÂÿÔg .Þöþ|•^ªôSìsÐÄìÍ`\0û3Ç!Øè‰y\nßÌ¿‘)Ê¬kÌ€H‹Z¿®óòš7î¢ÈÙñ´ï–u¤jÔ”àÃmÚl¡-ÓwOÛ²\"‡§‡¸þ™ˆHg{—^ÙÐu‘ÏTôÅ\"\rOû+Ä´.•”®D;¾Ð™ÀMœã©ãšš\r6í|HW\"0¬µýi,‹¿.­ŸiwºQ¾‰&.ÕÚi¼æøòçwô•f~ûhš€H‰ì©7ÿ•ÂØ3\\b\r‰¯	wë´Þpªl#Lø\ZGŠ•š\"6]üÛsc²Ü¸MlH0ñ™\'|Àß¶w\">i+†i\"ZF]â\"œï>˜CÇÈvRˆ@7o9àê×ÈHŸ{óýÝ¢ç›ax]‹†?:)BùÇ ,‰7š¿0‘!A6Þ:2HpÖ÷3Î\rì`ùs‡Õ¤\0\\Šb(„$nc0vÇáö7y4FDY/ü¸Q8HŠ‰—ia1¯‘Ob—ç\"ªSš(÷àHÐ§hë7HÅ,MB8âÒ—Ü>3}»—¥Ö|ñµ+ÐHxé,qu)¦™Øš\0ÌÊuÁ;è²-Ý˜¯¯‚,g1,ßIÿ*Ý¶j‰°H¼rJ{Í–*b4íŠRˆ–Áéû èÇ\0j¥â—j–Pv¦H‰z¹u¿JqÀHœª–¢vòæk¼kNfˆ¥qYo\\«buéÝªÉã¶Â\\ŒÈ‡ðÝ{´ó€žŸbpHÚ*ùhhurAR|y•þàõôzîh}S-Y<ÞM»b\\\ZƒËqw ÚôŒ\r;dÔ¤};‡JH¾²2Û	h´<ðÐˆ@øœaÉ/G¤ÃN½n‚¢\r˜óàC mË½çV#ÎI\n¹E-[zø®H®°ÁJ÷[Ö]Ò+ Ã*-1žööR J*@ë(¶’0M1\\Ç;o\'ÎÐÙå­\Z¹ñUa5°H®bsÏŒ³l¯‘÷ú»ÂkXDõ—â÷.êµã+®’)ã?•ßŽµß5¹q0;H¬Ó’®:·l6ê¹\rü+±l¡×+¬¨›Ë$±ü9«Ó*bþti}Ö&ÏãaíÇQ&’H¬Ãå}7­›½HV“ßmpòaóÂÓS 2¼( (^O\'šP#rkHHª¦]ÒÊäf>÷ÙY	m=yôHO‡ý\ZE!ñ`ZrH=â¡ø\'m<´N	òH¥	³zW\';X™rO”¶tåÂM`¬|\"mPÑ\Zq0èó†”¢RƒG­`¶ç¯óÌ¯[Ã€ür»H¤Ý$4P!Ã>™í:¤zTÜ‚˜ñ½G4p“Þ\'VÍYæ>r±Ž]á÷Y€²H¢ò‘6ç]¡8\Z^á 7Ø¨ó+—#W…ÉÇ<k¶ÙÐ	†Õ\ZP*ò°}hH•øMûÀH¨ˆ&4n;ZâÉµ*Ý0WIÖu—ÿitF-\\U#‘rÄ† jÍêÍƒ•@<ð¦Œ_\\ë%°!Y¨H¬ö0Ík¼0Ï6ÆßtAyð\0-6¹ê¼½ÚâCà›s;€÷g?ú¤‡¶\nÈH¬öús³z­>\\©­ÈÇi›c#ÜD‹‡‡(vŽ|JNZ!à¼ã±6;è H¬Á­i¤ø\"Z‚h.!=–l)hvË~gA+uED2-Šý£ìý÷Z,¡£5MæL9\"¸H§-•&Qwk•œA½Ñ¾=YSæ*µ®¯©\0H,»ñd§—ÚÇ¢ôbVÕÆŽø\n7×0uÈH¡9ÖF7ßVDŽš\Z&¦’E:Ûu¸Cºqi‹òÒKçßZTÑ]+ç¡ÜH½útñòžÙL{ÍžG\ZvÄ6O¶ô’­é$Ä¦¹œ¤Qo§s‡BÑÑ©¼É eX H½êÐ¤•>»¬h%e‹åbÚ»5¤¥åAö”ÇÛ¸E\"­hk™=ñëˆH‚²JP·ˆ<zj%õ	0Dq«Ù¯GZ¥ÂŽ%•¥\\ÜÄ^Õv0(àcqü·!àH£ïT¸r†O{“[sJ2¿ +Å‚\Z¶ ®ÖÅRò=bÆo†øWÕ\nÌ8ŠìÂÖþ€H§è£`š¯*¹V—\n¶_Š÷ù<¿7}\\eÓ‚soÎ9(Î¢\n–Ô¿¶éñŸ«³H§è£‚YLÝ˜˜½ž\n¬àÎØú9n‘éVUÚÔS‘R˜9`ÑP¬H§íœišäS(É„?™ÉÌµ¥ö“Nå—\\±PeÑ÷áK¸8Œ€H¦GŽ3®àNŠWØnõ fªcY)±’{|ß•±ªÅ\0_ËC©Dóñû¯ H¤ç²­®§õ^ºÔ°vXÇ“þRh?º:²â;&i\ZÓ›zH)W[¾5ÕÿWvH£ÁJCò¤SÛ\rô?M^(¥g. °½ô~ì!ÞUoŒº‰°2’X¾CDÊå¸«“SÓØH£àlã¿›ë~JSÙÝkÖ{n¥ÔµVf¶£cƒ¬&¦ª­Rß‚3„]%uy(å~\nE´H¾bNK\n\'e£s÷Á¿û±^ß`^ê(U†ùÖî7¼¼4É	‹‰×WiMÒa‚!+‡Hƒ°ú\ZÝ*¤’Ä,Ù¢o²­Œ>•6%3õ%*µhá¼±áù$\Zˆ›ÏN¯EˆD8HŒ\'ælF\Z5,GÐ·M£ªH~aofå6ï‰«Þåê‘¥ÈÚÃ€H‚´U<DØ\\\"ÿ°:X,‘âáW‰‘…vãþ¬x(ÞW€ÞÏ\"dq{Nƒ€H8£Ä\"[¤ßQï±¥€~ Â…ì\r‹!ú¦-j´yõH63¨{eK¾‚ÙÏ]OÅ-4.i\\È.…ìœÜwJh¯WVxÀHRÃÀ_§ÄÚòp:Üçˆ0áƒ.°WYGƒWÇšÙØEµ/@÷äâ–øHƒ‹b@;‹×;/”Æÿ«ù<ÇDz\'&¢”ºBºwƒÌY…§•LVH®µ·€áÔÐ\'‰€±–`\Z­ÿˆúV;)È¼v[@iU^\".Gl17•ŽÝ¬§ßÓËÕ%bÛÄgH®]lž¢Y=œÂ]ÿâÙdŠá÷Ý’n>LÿSTlùž´PÛ¹±0=ÿ&àÌfÅÈ÷\\10Hª÷å¥%I%I]H¦^·¿Wl´rïÒÁùõBeiÂ±E-‡)£¿Ü]I 0¢H©–H-MKŒû¹¨À*þ­4Ihõ\Z\'uÕ*Î¹Ã$Ç:¦Ý•E¿Îx¢,d,óFÛH§DO™“²SËR‡QôÔòTÓW•™Îî¦Ì(ÝqgÒ-Ä½”\ZAøþàH‚“Uâçf´†Ü_P¥X4ž¯Ètô‘56Áé$æÖžÇUs™´\\ßÅÇ˜HŒÛ»Ç7™{¥À•´%Ò²fúŒ0<žÄJÖ|äMþÇ1=Õc2&2bÌ\0é€HšÀ©á8{ÒëÛ6Í.½np+\'–è*4S„@¢ÙŠê7µQàH7Ýbììõ:XK¹CÚÝÌ€÷¿æ%·ŒÉ2DûÞ_£\nª(îjzH7Cˆòå×…ì€Vë–7â(Âo`T¬ÖC<É´êõ÷S_€·¦c®H6~Ï\0]q¢ˆYˆEå^vLP0EƒZh4ŒÄ^8ÿöhßH54`¨30EŒFÁvcWü0l9¹0¢¤³Ô(.“Ì1\')©R¹0H3+ÓÐ»È±ø“»rË™ÁôíµÿpŽo)¿’+ˆqË¹ötH3Úhâ­ßÀH2û$ÂË³ÚÊ³küIŠpÄn]—9b˜òM£,jÓ\"ç°HÕ2£aº§ŒÜpîçf	mÛŸrÍeÛ½´6ùéš5Ïz)©Ý+…‹S`@H1G´%ˆæ~ã2éâ‹†«9èuhM(qïD!Á/‡Vø2~ý_uðOggS\0\0¨&\0\0\0\0\0\0\0\0\0\0\0\0Þ6z`,+(\'&+**)$\"+*\"%\'(\'(#$$#/)()\')HÒÓÝbgë§ÿ‡È\"Ê]:à€’C€@@±uBjN×ÕLÎ¤PÒ·.OŠöH1FÐ;zùÖÜìTIä”-OB Èí B…å+æ!y¾,˜ÁÓº¾\Z¼H3ABè€«Ùif‚ËêüRëG‡K°•¸0|ÓŠÃÂÃ›’ìbèu(H33, F\'fzyõ\0ïtXûÖ·(g‰þžuWzžˆ[Ùµ. £7H\rN\n™°ÝÁk&Ë•e5¯µËc¾„ôº²Ih$ã‚~]i€H3VSÎýX´áÖ¸Ú\0ðb$j;º 	“F6t”ß8½*ô	“Íà2’°H3ADc®½õ\\ö”š§uHMEýŠÙ½xÞýÎÙF#GêË)Ð\'‰-}%õ\\H3ADRÅ @@r÷Æíøù¿,cÕ ÇXï¿A¤-v©ºwIJR1fÝ HðÆÞ(`¡aïÉT¯9ëž7˜KýÅXm›*³e•œ\Z›vÞ~ H3ÌÁé¾l€÷Ì/¸£}ãÇš—(«Eñuh€ÂˆÏ|rM$ôÐH3øTÎ¯/Õ=¦,âóG«¨cœ9k,}\ZSÄ#P2ã«¨H2ØïÖ	ºhníèïˆ	ðƒx_6]öéÞçéh‚@³¡Û<¾ŠÒ”zÀH1î²ÐE”q”hýprýÛô®¼ïeêgƒ\"lžM¢ÆÿÌŽv­ŠpH1\'\"Á»ŸÙª±ÿý©‘*ìÂêÎH4O£†b‰€HÒKå<}ùE3ËgÆ8£cîL²«A~t	¡×‰{bÈJ\\gŸyH0£û$·“áÀ\'ÃtÝÜŒhÞWbð•’XÞ¼t8B-#œž2’ÑH±PH/^Œ/ý†3OnO|/±#K£,Þ;|yÄµoOÍ7u<NÈT½°H/_?`¹“q CbÏÆãFÔRÉŒÍ“ö\rq/iC#ô\Z“`‚RH.Â×„Å¦üñ\"ÈAjrÀ»,FKè`îö—(™ä1Ý—=—m?7pH-U˜dÞ/¡ÈCñÜ%œÁL6©¦‡ºÀd\'\0uªP²fH-v,Ÿ\Zhˆåÿknsn6SÅ,^ïü\n—Â`6ðSJÑíÀH+–àkŠl·vm•—²´À,I™éU(±(x¾\\8ÞÌ4„Ý	H+–ëÚO¢É‹Á¨ô-(2$Â8šÍÇÛIáë¬ìˆ€fH+«ÿ]\0kl¼tã.`H}Ô)BòñÒÊ\'•k¯ßÎ‹rBr2ÒþY>ØZÚH/áÕ’=F’¥§(_oGÙ<mË\Z\"dÓ!Ð-Lñ¯ß|á¯aÈ €H-^Ø²^»^ªÞ¸Ž%2®¡#¼È¿Í°ùmE,óÌ=ÀõFO/djH-Z˜âH>ÿ2šqÏÅ¢¤)ù²[C†TyÍÑÔ’ÌHªÿ:¾#*eHjÓZ³ˆKó˜ãâ‘R»öæÜ¿r,´bNê>ÝfàÙÕA>§ùH/¦…5§k~Råïtæ‘Ïá2úÎ+ë3^¦¥0`ívîˆ[¬','man iuiani kam rimakugta.opus'),
(75,'Â¿podrÃ­a decÃ­rmelo de nuevo?','Â¿Munagi ikuti rimawuanga ?','2022-12-051561839435810denuevo.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0³¢E_a)+$-&(! \'*(&\"$*$#\"$%\" &+&\"%!#\'\"! %$% \"%#%%&&&#(>45..5-:82..-).21450661/3*\'*0<4::8013)+,+1;3+.2HäÁ6ìÅ€Hß„æÞu\'l¸XƒqÐH†\rÄÒaø\r\ZCgbƒ(¡Ó,Éé3\r¤þ›08T¶ ,ÕkÆ²˜H†Ù•“ÊðÅN,¼ÑÃ¹²Å‹6ÕKÅJYž–Š‰ïiUa|Tžë½Gw>H†÷Y­,>+ýŽð/Ž@†ãŠ;Œ[y„L®Õ6~—Ì‰Ÿ²H†ÑëJ\0¾ÇÚsò±wÊikSc’3ã†ŸÃÑ€	:IÊÝF/XÄ0¾€Hàdº\0Âà-Ý²¦%Xœ´€è‘9( CeqXf²|`a]šH‡/¦\'¶\náìÃo¢köOä¿4ê¡¶ ÑS,î¹™YWé`¼H€ÞÁþ(® §Qÿ$l\'^¥¶a\"$\nJ xÔÅGèH\'€±¿\\mFùåØa\r\r\n›Ü–ƒ³Ì±s@Ž`*H$õqÝÛÉtÒËÃû Ì;•ÂQåS¸-°§™ŒF<#CP8R#[Å„½H%9µ(Ýl=^~	/2þôº¯Ã©©Ì-·ËKœô­Ñv%÷\'åµö¸3@H%9µôÅWË»™éØG„šŠ?Oì±‡E\\tD	ªÚ4G3QGc¡ÀH%Y.ù®¼%<‰YÅpR–“×EÁ|ëñ)¹#>„\Z·çb&x…0H\'»ë1j(Üp½çCEqz4Ù–åiDv{Õ!µÜÀH\'»ëÜëX0Ê½¼\":‘çÔÙÍÝwˆÓ¦Ã K’H\'›AùÃ{³7yO,@æ‘Øì’ïŸ0ò\n{sÊ‡‹6GáéÄH\'®düþS÷þ¬4›QéiÊd8ŽtåèÆÊùM\\<•K#ZR˜w¡2xH\'›BIDéh|d_‚ƒ”rŒh\nB»Žßñ°=h„¯¬„ÂH\'œ1uŸ8rY—aÂll#üO¹ã´9Gð8,ÈðH\'›8ÔÌÜ^ï¦õuW~Äøˆ\rO}ß ‡½¢àþ ÐH\'›>äÅ±¸Ç%OK;·ÒQ¬uQw#Ü†ñ9×‹MAŽ£@H\'›Ä]BQŒ?ôOwîgsýïýŸÏ0%næN^€H\'œŸ‰‰½—ñ<­PçJ¿…çý=úYÝ¶9ïQR	lÄÃ¸H\'®F‚¯½¼\"ßpVÆhŒ°y«›zq»èØØŠ¤X\nàH\'›8¢ŒÉÔ•ÙÎ7#ÔjBO—²qO…Ž¥EÖuIY\n:H\'œŸ0ûyÊ/*ìœk6ŒZÃjÒ²·lþJð¼Ëp¦Þ«‡éˆ5)UH)~‡~Ñ¸|4¢\\EMnÐWíÊ‚Y˜›Ók°€½6Dvû´¹lÀH)ÊƒñÇÞò,kH6Ï˜E30]2ÃÖFzÀQGiðHb%TaÊ±Fðžuƒ>´z£÷$ÂßÐVy³_‹§&û©S4H-9ûŒ]ÚžŽ“ü¢±3–ÇÂ.=ý«8ß´=X~,ólÓPH+²«+}·‰áàßŸoÞ=¦5|°ƒTZ¡*äYB	ºÐ&@H+†>Èl¥÷0ÜÛÇ5É‹ï­ó5÷HHL¤f·²Ïïmnñ¬É@H+†>ÜHÜLØdz]ù±CŸ=¼T\rkï¿\'ù]/êa!›˜H+–²p¦mä>“j°Ÿ­Ž@Á?ïEÊ96¥û%\Zl8È$]0H+lºš-OÒt^…+0ôó‡m³¬ß=Àù_}<8Ú H*éè¸«rÑ·A‰,íP+ 1óx´ÁiUúõ9×3äçÐX|H)vÜKVƒiR1Ådm¬ÝÂ´á(‰+RP ÝÆFèeY	S€H\'´½–œAž™»7†¤ž­V k#*´º£¸p\r”s\'H\'œ“cÐÁºüùU/L~K£+ÁìÕìõ•)xç.ZáÑH\'€<Y?=±?ÛÇÜFé[ÝnÃÞ™.Æ¨DàþžÍo#3s€H%2 xƒZƒÀPƒTÏIfÞ¨2µ6ixD«óïü|7ÕGþH$õik}\n»ßª¯ªYÁRåXÖÿ€0ÏBVxž!2U€H%½²E/<ÞéµÛÖFnr\\¨!n™BTË#÷ì˜RH$ô«ÄÑcÅð¼¿{jª°¶û±²gØ1cO\0Êk«þ6¡æûH%“–!]:Žhe”\r´­y?u&8`Îhªùk ÑŸrBM‰äH%S1»Ùg;î`P2è.„Z\'1Ì…&%·¾³s*U&_{c€H\'›Å+ŽÏÓóóë^’ô|BÃ¼}\'1æz>õðÓpèÊÆ\\ÄÐ®H\'»ò.õ­b«t*Â4ß\0Ž|Ž¢¡CÊŸÿ\Z0§¶k7$™Ž¬H\'ÿÜ>èOÌð™Î/Š\n¬,þKm7’ÔX¬\r,@ºþn3g`H™óÒVÖ÷Í2ñ\0òàT§óÃnæâœræÜuãŒh^vÙã¨·ò¼”	Ý “â+\\õO¬yPvAy2H£aï€W-®›Ú7‡u_‰K!º¦ØZŠ‡íN\\‰I‡w¦„wôuØ÷¾¤T×5$}ÈHŸðñº^ƒr\rß	ÒâSgO©²JîbÜƒ¨ØI¤ú²ˆ´û\rŸ¸<ý+5X·Ç}H¡WîGq ÆCW»ª•\Z€«øI0_­IYB^ãu&œ}Î1šžXà5ŠØH¢õ(ÙTÿ¼œ©|±³Ö’*„p¾Å ƒ29Y§<’áôÒª>ÁÞô”wÎÂ’$\'€H¥¼4šÄö3‡Æ¯r©vt#öøðXxñ(rD\nîLaçÕ*þÛ1åSkÏðcTYiÈÀH¥:Ô8GÚÿ÷a%l³´ž6{½äÌ‘›œq&¸šw¿dþKx«¼¢FÃH¥†æöãg*Þ†éÇ¨•3óS<ù9_©w!m*Ûopj4à=ÌÙ=y+=òåÍïOÓ¼Ì^¯Ž0H­ˆôc„Ìº×5ÍpòX˜‡/¬Sß7L1Îä¤¶ûVÃ¢ò\nAŒ»aXBìÞFwÏ¼T*[ÃH´Q^ÓEó.¦cÖ2 z§¨\'!¬{ðöXG¥&~·‡±³4—Àä[4{iì®H¶b~X¾uç¥…8-Ý:ÈD»¿TžÆmÍ‚Î(r~™uRœp³*¸\"HÆÀHµñ«vôØ&]|8oN¡L×µ¹ãž %%þ\'Þi!(à”|kÏÃ÷+\\¾*€H¶ZÃUGÈ£q-c¿îxQæ	PsÄŽ3°ÏÎ«!÷Ä­8Å9¼=.¥`£Hµé];8~â|×œœ\Z§Ùrkñ|oü«‹W@Lf…=Zqg¯øsÉšH´Êþ5Ný’xµ[}ûÉ€¯î.¿ºòã«¥ >Õ\n¯õF†GV¬So‘8H±w3ãÙ ’·Ôd‘l¦/S#—¦`óB·cæúxûŽ^€àHè <w¸Ò)N˜g­P€H¬IQÖ×[§ò§´öcÉâÂÍc‚&FkVyêš&¢	Ú–ÒJºÏšÙ¾Q÷w/ã\"­°H§‰e%•ÄëUžØ2ê;¤‚ëLÜN#÷´ÍdÄwyëÌ°óÕÐŒîÀtréÒüñ»°ž‘xH¤®\0A6ÁÊú¡tþIûeoª(®ëÏ\' KE<\']os¥>ôÈuî’Å°cƒÈH €…üô§PÕÆ½ \'g¤)‹Uþ»¬hû×µûìGrÌ%ËçÈé¿ÿV\"`H±ÉG°ÊøFNóªb3p˜Ác[ÑÌ?¨®ˆý¼Ž6ào+Æí6Û=÷‰\Zq\"Ãf·`™\r^¡b‘LH®:õ–Þ´\rsê¸º™áßyM¶u%ñ	ºU\nÂ$DŠÞb~ËWðú÷ð;…÷ô€ùÉgÙç€H«Eíni×õOµç*eîk3È¥*g÷×òB‰¿ƒóŽ…¼Ì5c±\'˜uð¨è`H«\\&\"ã3/%ž1ß¸òÁõ«[@•øŠ/×ßÁXIÓûÈÏ#’²ón€H®ÈÊ¬?±S+îÐ/}·\"ñ¡“#ÎZ|- ÄÞÒ­’VP¼_Æ(Wú`ÎìÜ0@H¯Éö5|cúVrzîÚËOð›¥ªØN1—™«¦à~dÞ¨ôv¼Ô¯€H«Eþ±å]3Œ-{c¯A(æPf|X•+S ýç,iµQÌ\rçV€`H©“oë	Ýfx“õ‹,%úLáÍ§G5\'ïæ\0 #zE{Ñ®ƒîµ ×­\\H©£ƒmA´Á¬u«,²VÅùt¦2B&¶Q¯R¿¶¯ \0ëè+ÑìŠYè‚²!ÐH©v§‘3½ûË¸ÌÐLqÏýYùd¨Ë KZˆš´Á´5&¤„z˜’¿CæTu]0ìÚÿ¢†¤Á3@HªL5÷•æo;BÔÄï,i$\"l¯i{ÿ…6‰|K¤™\"![¡Õ2½Q”5*‚ÐH©ÍM`Ï+MøˆdhSV¼â{¹ûèžävlŽ+Q&Ò1KáÍÆp‚¾¥oxr„$E·[ä,–¡€H«\\/Ö@Ï$<úy\n…± $O¶Eõ©8ÎÓþ€H-|¸­\"yòìàâ¢QÈ)2ÿ(\'{ìí¦ÐH±U7²n“l˜5úZ#èqœ\Zµ¿í­ãË…º—ólsÏïU\nãÊŠ )	Ö@PC}ëtœùæàTH­u­õ–¨Û.nþ…È´ÊVÛŒè˜AK˜–/Eúœ’Óe<Eôeß‘ÇÃbHªî°&ÑóÁ¡¹òóW¤]þÑŽ/U~¸Á‡ÿNÉhr‡áû_ö!Ïô}6òqý˜d)hH¾}Ò‚Û²)ã» šÀ¶7ºG²s•mj¹\ZÁÀ+ƒxãUG¨æ›ôn˜>Âpít^\ríNÌüHŒNÆ<š­Ks\r§k=¿Šzô” Q‘HMlÚ¿é™&ZîÓæø@HŠØÂ™IÓHÕŽò¹Hd~wW†VƒÓ\n†;ÅØCS>VHDÙ}@HŠpÆ Û~äx\ZV/\\òRx#x\ruê-Ú¨v¦â¼á¿Ô¡rmTö“HƒOF¡°sYm„œ!¦ýø4VU‘@¤\n\'r;NþO„·Ë[ASËàH\\®=7ÂåŠæ›áÃü\'Œ¼ZçbÄz)[°4k²}A˜Ô%+I™/·mMî6ž$îH b%.RD`Ô!†øò\r‹ƒ™ÛÇg\\Ž1L›ªŒEÍ5C.v‘ôDÌùÂ´``è4ôô/¸}HH¡±±»%Š·fGµ’ý\"¡0RÀÎ ˜¯N Æùÿ>~YAEU#»xþˆéq¬­ý‚H¤M€>£…Ø;T*^peÚÚÈŽYÚ)ab!õýËÚ.äŽžµ1H¦Ëµ	?>µÑsŸnŸÁ-bä¶GÿÎ.  rþÄäÇú\rØ×ÓyœP+B…H©©u;ø>Ò·j°F¿†šyÏ*\Zö…g%\\OiWÛ-LUø­±ŸUå`pJ5øOggS\0\0(¶\0\0\0\0\0\0\0\0\0\0\0\0ÏOBX31&&&,3,--&&/9>423..+..222.$(.,0.265+(0+/*///0;5*07141\'(\"&#%#%\'\"$+(\'%.(+&\')(,(\"%&\'#&%%*Hª’‘ÀZÎæYÌ4LýŸzG§´bJ…êÌxˆ·r}°Ûo\0üsPß­±\0¤ÛHŸ˜±k³U3EæïB—X¨Kâ’Kq>¶\Z…Ì Ñg°HòL…¡J\Z,Ç ba‰Ã`H7%7TQ¾óîœ“¹.³ µµ`‚×zŠšïž¶Ÿ]g¬X*`0HY¸HŠbR…\\#–±áì€£VªP¥ãp0U!)ê¾Ü†…ÄhÈèH‰úqpµØ2tä°èøh8ÏàþšÆT€‘wòúW„¤ì¬RyHR¡´x?ƒ£\'\r\\5?G§e¹ŸºÊQÙ¸Oçá/Ö«@´ÝyßÃ×ˆH„4Ùö}{ë“¬tô2ôã›±¼EÕ>zÝšàªÛ+NÎÒùM“Ô‹†äõ#Uh, H³ªÅvÊÓ²-j)Vî€è‘	™[YGýçp²[’b²ñúÄ¬›14ÖH³×F˜Ÿ§AHÖßx/*•§øé0Éô‰,3‡\ràô5ÊúÞÅGµ‘1)NÒ@H³«Q00È·…*o.[ªpnÇêÐ‘x–\nÛ*WÃ‹eá1J‹	ã`FH³l©^«‹Ùnú£wà`V\0½áëÃæ%†å{•Vp?‡¶[Õ¢H¯Óæ/ Uv¼\ZF]x‡»¥ˆž£”æôH\ré	`Lã®^ÕâàH®f|â}û‚ønôQŒfÝá˜«\Zsd)§Õ<­é™d*j¡¦B¢ |X€H«ÓjË£‹(žêËã%må…íse}Â£³v™ã‘aK¡|Á.™QA\råÁú²½n!¤J¶.]˜H­1]´SåOqS£G\0ÿ^¨\nÿ»R(›¶T¬Ã¢wÚÛm…>Èz2#ï>éþ[_æ:»TåÏ#DÓd½¥Ê\rêH°\r¢ûZ€×díC4]ì=¬d4ð˜ø\\íÌ®bVÚ&£ÛNbHvp2¸,oÖóèZDÅ$€H®\nä\"\0Vaˆ\nüDh:ÓK¬Ö/îBÕD\nAG©¢!Ö÷^ˆ«„7þSû\0/ÀíéÇH®« ¹\nm@êåutÅÿ Á¯Àž¼í˜JÝßÆy¿•ÅË8_¯Q4\Zâ?­j+˜€H®°yíÒïÁLZÉ»ÒþÏ¦FgæÙZûj6°º­\rÅµEO]u	çÒnq H®}©]m«rW)@8Ãcà;ÃÙ¢‘²&Åg¶?î¶V†-óTòß2J1„ñ PH¬øìèƒ3%£F;5‘\0‘vŽ‡y1ï³Aüð%½é‡°\0ë +ÌP,`Hª³CÃdb\\ßÝS©¸CÅ ¯§®L:lÒ@IH¸•ið3v}uû!¾V2@H§¸ýÚU°w/6Õ4œ o)9\rQògP±†U…þJƒÖ¨%»7&·-9DOÐjÎÀH¦D®ƒYìÁáèU&éÜ>\r¯›õ’êÝiÒN\'ûƒ€«šý;¬ï$´rƒ¸\08°_¶H¥	êê‘‘±À©VLQRu‚4|Ö_Zf¹W<DáZÓÃWqúÓÂÑ{µ´×W	P0\\H¥‹‘!«8mÿ,!#kFï`Ág‹åmÀRá,IŠO»^Ïé&8•d\Zœuz€H¬ëOÊž’Ä·‰–\0³yÅ8›YÉ\0Ñ»t¾¯;ruùˆ4ltr¨ÒGßÕ—¿5 H¬k1VžÒ\Z’÷kI–£\"÷Pm>Õ|{/4)Õð‡øñÊˆH«K’#…vßlk‚²g¯û:ƒ§ž7¥>Sn@-ã¸((U.ÀH©\rþfëªÏÆcèŽ„ëO’#][Ú=1j³¸(BIOÂ²Ø’‡\r5WÀ\\€$y@H§¬\0„%ŽÛé:ÆÊ‹„(ŠÊ9eÔfÚ~œ}iÃw™ŸÊÅ	ÚÒš›€H¦&f3j·[–ÿnŽk9§Oä_®d5¼¯	¥ò\në³yÎ„mŽ€È[Q¬ä@H£ž2‹Q³$º¡fÉò7æ³×{È¸H¶5ä®¤Ó®ï[áã3¡‘{/»ÖH¢%QÍÿÙ¤Ö¤2\'Ü˜áå5¼çT”Ç|€\n²]ÖþšM¢ÁÓµ±ÌXàåe†]ÌŒH¢ÀV@Ø-vG>h&Ý¾dUÓ’÷:îá{”NÅ>TÐôëzu¨$\"ÉÚ&|ó»qïÀH¦šG©®’Ry¦j«µËC³°¿§\'îfI\nZêe)v»,€m€¦Â>8bÜMx	ÿœ\'¡€H¬öý]§ XÌé	¸¾ýðÁýDª‡»9p±¦mV„Ö1PÅóO\'7ÙH­É£ª„G!ücã5¥ýÉoó5‘€éÖâv¾Rd‡°KÄ²â½€H«MäÈ¬<Ü†,Íe\Z„x§íºÿÜˆé5æl\Zq§oö³¤½oÞö(´p€œ¶!8H«R–†\0 ’1šcQÿÿ. *Ê/é¿46Ô@\0Y“–´UØëéÉº\\ Hªñ~—oQiX…ÑyA‡•µ+½®ñ¼­¬›;ÔYÏÅM´¤j\0ƒâJ‚öÃÖ\\H¨÷3‚4Í\Z>¿8¥§2Ž\\“\n§‚÷ÏÉ,¬MÓ)­Š‡Ñ H¦-wn}”Ì¶ÐWžðñèg¨‘\03Ò±8j‹6—!õ^®1€l_«Ÿ¦å÷¯€H¥\ZÉ\Zïï@‰©ËðpÆë~à±uÄÎŠÊñ$’¬¸Ü…\"Ç+iªpLæ‰ì¼H¤´ãŒ§î{TÂîJ«è8\'ç»¼€±A€Öõ\n§‹w€ƒÿºMvƒí>ÿ¦¹ý-ÍèH¦è£]_¸xröâPqÀñ\\j×pÎ¾ÅXôµŽë[Œ½v\".1>Ÿ¯tGÃ«°H«Õ¿;Jviª7Ë‡Jñ£ÆU<fŠl!‚diJ+R,:«éK^ºa—Vr€Wôp3ž[µbº—LºÒå€H²’™BGŽ*ø°ìµw@ðÿî|ž#ç¶!ö¨WHá°NTÛ›­Ò‰k¦‡K73Š€Hµ¶6‘úÔõFSƒN^•O‹‰Ä‹Ì=m>9Oè€¬i;ÔQãö¯!ÏHµÊíÊij/å±ßròäÒ²[Ï§uoÇ»ƒfƒm=su‘1¬³BCÿÌ%ö/Ô¨Hµ%û–© Îu©ÄJkˆ\'2õ\rõ1˜¹1ôóÏëîE\'Â3Äå+«q¼KÙÊOú…ˆ±)þÛH´¹å¹q‰Y‘ß¢EæÍïLýjõª$3öâ@3Æc\\Ós†{Ù¿ä|JLKSvßaoè€H¬eg—ÉFþKÞ1EúˆC€~›Åã¤Ÿ5ŸŠÐ63×«–ã‰‡l]!äh4óŽå”H¾h†;:PB£ò{Xéb4mÕ°pY‹DF2Ä±ø©ÇåiÚZ;úÏmÛP|#Eœ;ëx@H:f›?På9\0Ç4ˆå§Éî»kŸÛN¹WØRM\'ŸSÈxƒ{€H8[A ¤:µ7µˆ9<Ã/ˆ|L×R²):3MKE:°´…4H7Kë@cRãU\râj”ð|ï.ÀîB.í1R­µ°ÀHj^½£‰›ŒGf«•*w\0S*Øðo%læ&ú£kÐÚ%ÀÐ9\nxH2ú!‘%¦•¼™_õ1-hH†ð2ü8¿¦d9ÉÔÑTwÑ€H\0È\Z=òµp€cØ\'t–…ú\ndÇ¿éÙàõKr	ÊÌ°¸H/(¡Œvß–l•>\"ÿ‹¸} œø\Z—îá6t-÷ÐxH-Û0šÄ-´ÿ#çIÈÝ.çÓÛ4á´GøQå|‡j€H)›È¨F´XGñ[\'â²šÏ~òü’¤Ÿú¶Oäcˆ·Ž,ZŒ­S+ H)›Ì$›P‰&ÉF‹m(°WäÉ¾QVJ	58¯£ýn€H\'³E[îPÅ¶#\r E’j+ãÂé·ù<àžläÊk+ƒÀH\'³ß\r£òRh£ŸJƒ½ôElÏÀqpèˆ÷¾Úž\r†õ\'-×Yzr€H)¤ ”çfïü«’‚è(AËY sÈPøyö‚¾‡ôÜëv5ŠH)¤©å¤D5ì N[b4;z”é¶!ÞpÞ)GSÉ¿/‹ŒåûVÞH+8ø–ECãÒW¹ñ¾Ëb¯Ü5™Š4t¨§²¶\nðH+“C¿5¨þUæSöz\"ê\\x1ÆÕÍY¹rãO¿ô!+†m\\ {†ø¸.|…ðH+ƒ²EŽ¤¤85ð’Ä¦²ZÜš•EÆô†Ñ€Õl‚Á_Ôf#ðH+¡\rbŠj¨†äŽâÝ´ |dü¯Ž½{Û ìcæóÖ\Zé·Í?)JÍàÁtûÐH-ä1­KS˜\\¨»€E…Í¾aw‚ªrÁÌK\\>o÷ÍÏÁH-¥¨V	˜O÷cxUÓ·º‚Ç\"œ\rW>Ã]Š¿\'Â#>H-ÔHêÅ{q•ÃXG‡ÿÑ‘@ÏI5i;=ï3ñÿ×|ýŠÐH-uÌ/þäPcÍÂÖ}MV«OåÜóF²\n‹…îSŽÞZûÅñ“¦`H-v…Žà\"éx³™”u2?Ïl3˜l4²C½µêBE¶Ý–«9U½H-æ®q½$GÄ“5y¥QFz½•–Su6¹U©µy”¼htÛ\nXLƒÌE9€H-’¢®ÚÝ\n›¼¬ÊÆOCœ‘\"Û`Üëë¼%v<«¼W%öHžÍI³€Å¬ÛNÛ\\ß¤2¢s¨sz€X|l¢ˆÛOqLH/g×1ÈË\Zq&ò<ÆÉ‚ò„ÙZ`Lï¢È©š™[:ª!QsµH/h”6C+ÓyW|Åå‹¹‚4>™àîÇg¨zMPÓ:öW¦PÌàH.Å	ßã\\Ä‹Ö@ñØT£? k‡ó\"þ«¢SÆè¯1%4ˆiÄH-Z¡CpEÃóý7oSêÅ^îMØÓÈ»ü?v_<Æ‹ H-uBgR8`N¶óyÌVg%o…ŽÌ|«7Ye¨-\\T`ËÂ4vk`H-J¦\'/‘éQ06›ï‡SOæG®î·³³¸z„àH+—$…2òîûò#‰KÌ}«Cs$ÖÜkJÈ@¢gðªàð	ÀH-ŠP¼Ù{æÇÄç»êPû@¬x¡ºïüC!††ðì1“qc\nEzà','munagi ikuti rimawuanga.opus'),
(76,'Â¿QuÃ© hora es?','Â¿MasaÂ urataka?','2022-12-051563177011711hora.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hY\0\0\0\0\0\0\0\0\0\0\0\0#7Å\\%)-*\'++(,+((%%%(\'&&&(& \".:?=,*-8:56/,7% (*/237664=9335/353*0504+4.1)\',08+,(,*,/612/2/&&$)HäÁ6ìÅ€HàÁlŒßq.Ï‚•e¶üH†\Zõ¸ÝØ¼é ð³÷[þ+¿MºËÝÓœÆUö\'AuŽÂJôH†’„II’”Ãy!€Ì0Z­•„¨i4ÚŽV¤¨à&oƒu&Ê H†øFÁËÿè?DÝ«|ÄÌ\'‰¶äùXxÉÈÎý5©Dé	”]H‡õ\rWqð37‘>}[c¤­­•GžíÜ/¸Y:\"ÝíÙÃÍØH%9Ç”¯‹¡Òf.ICÚR\'j‹8£Ðfxê›ç®X8{Žy,H‡J‡a˜j+„äS%LSŒté*%3„.á+1›V\" ëÝ\"Å‹aÜH%™+º2ßÇ)r{ºÓÜw4¦J40KÃ7Ðè¶7ÌHB¥a=ïäö8MH\'Ž`2 »üg=ê$B¸¶ÝïgzúÌX£2(*:»,\Zúz8hëçº!~H\' ot/\"}ùÊ`”.¬ÍèKÊwiƒY¶S ÏRî¢M0ð](_¹²œ•O!H\'›tn!Ž^Xv%^Oñq´˜6\\Nç/gJM¦ÜR”öªRÀáñ¹®H(L\\¼.æƒÇb}«È‘	â Dª¤…‰$19å»¤øNÓÊj€H)~z¥©¯ W9×‡Ñl¥OØµEƒ1Áï¾ég`+‰g¡~Òæ8H)‰ŠÓÂ«ÍÛŒIlæÌÐ¹¾ïX•­Âs™{ŒbdudCB@H)hí]C>ž:Xß8~óã¤c§IKE÷ÕçŠú/@:Ì¶Á±H\'›7mÙªE´\nî¦ÐÇ4m_¦ÓìäÇ£ÍÚu/:l‡“eöØH\'®º]ÂË—ù2f68qØõPúèÔJ;\"ç3Á5)ˆöˆæÐH\'œ~%/§ÌäÖcæÌÔ.É™JR¨îëvP^ðH\' SRŽ\"¦¹^¤5ç^òDcuçd .Z^8øAúAýä’ó:ÝÆ H\'»ïqtux÷Wå3úiÑ\"–ÑÌAÔû÷.Ýr\'8½òW‡£¨H\'›Hä¤	úÓ4<èÚþlCÉzÙioÙ`¨GÒæ˜FãH\'´¹mL::;DJöt[‡ö¥K[Þ¹lÕßYÇ7Õª`ÒêIëIH\'»ò¶\0ú¦ãûôjISÏ/P¬K«á]¦7Ã:ñ<­1‘^0ßScH\'´¹P>C/‘œSÏÙ&Ú³Ùæ[—$%–Ê%ßŽ­!c®ÁåÍH\'œ\Z6µ÷nÌ°sV-àríágz£0ŸÖÃ;¬ŽH\'„ˆî9.Š5Ã\'¢É@6@\rl‰åo>ŒµHÙ…³ÌñÐã¨äH&!\\’ÕRðQAí{2¢¸SZVçz¬Î]sÈðø·eüÞÑ¸Åô;×ú­ÖàHšjn8ô­ØÌòjÌŠûAåT\"†é|Qi\"€ÝI+iÌ3ž¼‰®ž~\r©v5Ñš†Ÿð*¸¬”HœD—4ÚP×‰”Ò¥g5w•ºî7d=ÅtOã©Î˜\\êw0EÐÅ†‰¬ÒùÊ±E1÷0oÍgXð<ü2n}€H¤Cø‘€žª²hºèAFä³•%¶¶£Ä\"j‡–WO°grr’&D·ñxÐŠµÚ®2ÞÄ¯Ö§É­ÀH©ÕîDÛåÄf[nž¥¤kÌ6A\Z¤Ú¹B&ÅâÞ7J·#23@Ž ÖH®ÀG:fÞÝëŽ;Jôa;Å-’·‰­C\\šT9aÂÆ»-ÅzH²P$‘ŽCâwR\rk:f%¶·“ÖŸTö<‡°™W5<zûÐN)wz0™b,¬H´Æ¨†J½uýVË–p µ:íˆ\ZÒG×.‰¥F9)t`˜ˆ3˜3è¤9&—ƒRÃTðà$”H´QÛ·>0¿euÈhØË¶Á cŽ[èä¿z™õ‘É¡x£6l·skŒ]ƒ	ùŸq…”Xkq\\H„²›p,ã8Àq, /á¡M‡/i¯A[éŠú·@%I“xzt“z›;K	}¶ƒ7òèH”|{o$¼¦Vø_‹ñ<NÓ±ŽkO´ÒýU“¯…ÙyXN³\ZQ/?þÁ)Ô¿}*ˆh†å€H”|áÅ™NÚ€,§ZZFŸJ·±%Àoõs8ûdhˆŽö\Z;KÄò¶—ü¹„ÐlH“ç£²–¶üð¿µëw«\'&ò[­%ØŽ‚	-õ®öEãÛ3ý5ORKj±€H­I_hRÚV*›1þ~U¶Ö§n>[â)žC‹ƒ*-±øÜÈš±ÐÑD°H÷>3ºlåûèóHµêbŠ·dÿ2W_P<”¨ëyysýÖ¬¢m¥r#½‰7:H´Å›˜…P“­t«e²û{8¨Vmµ\'{…”(1H°4ìMð÷Ð¤m…¥Òˆ£j‰š~HŒIŸvé`jûbÔ²ˆè² H®%Ò… =ì¸“Ô¾‘9±ô²¨Îj³Mâó‚ó&g½µf UÈ:”ÚHªº»ä@¶Ã#rQ.Ò©„Hµeýšéðs²X+>¿q¾ÖC{„vÀH©iç×>œC²âq¬™\rÖ_ÿî™±­Ð‘4†xCÅ5\0\ZyÛZŠ2Ô«®$€H§Tå4À¸¹@7Ìj¤Ö.¡ê+[/H>dZ_ø _ÓlÒ›IAc41³,7,ûËEÒržH¦*‡¦¹kûø,¯z¨ò;dœ§y(ç,ÍÑ¥N¤HÃA¡	A¿]Å¹±uk2aÂÉbÆmH¥Q,s#+a£b`1c_9+™íˆÊA†þàæ/bbmI =ôƒ¸ÍÌÓ™ê˜XÉ\'ñ×ˆ%mé H§è\\*³l5I»ç?B?†…V™ŽAt˜¡çî<­¤:À±*aé=O-‘<RFM¼ðÁCL€@H§ëJ3¿¬Ií´™a4ßU)µÓ¼ïE)ÖÜ§	®ï~°	Œ/²©_ëzTD/³Ç”tH©ÞCÁ9À|´ôaš\Z=\n !Kµ/Ðx$kÌÑÀOaÉ¨(ïcßDqfì!™ƒ”ŠäÏK¯•©\r^aUH®ê–‚aŠ¨ƒ²ý\'°0êB„€é 	þÐFÛÎÞwºÞ«7HÁhJ‘f´ ãÄ¦i§§yínÇ›€H°\nhA,¬Õ;ÞÁ:±¶&Ú×[Fþ¾ì+€âïÑ‹ò¸¼/F_*wŠþÎ\"\ZqQpH­¹	ªxÖúÃÒ<›\nz*›&Ý\\úš©Œ.[Z\"á{Õä5-^{aˆ÷À&s9~H¯:4÷±¥Ââ7Å«ÃíHÜïc™[BþžGýÏÐ¶ºÜô’3òJº>[£0Ÿr¼‰ÐH´G`[U%ôÂK_`&hçÜ¯ÓëE—´öã3ÙëÙåìÖˆ^ðžE+xRC¨€H´ä(RÒøÓ\"ìù!ÓtÝØù9¯ïAÀ=¸›ç\\DùÒê-öf_<“Q7f·£HH§}§ÂÕU®º$~Ï¸™¯ÓÃc-ñˆ{!1i]‹Ð¬„^tÉó©á	°oöG±•mý3\njTH¢ßûÕ—¾LÅ±$­0Úø	7h’/$¨žB£vpÛ71v3²÷ÿzsWoÂœrQAlH¢7;šÚwŽ1ðá°ˆ§Ì÷;T¦G…:ii=Žp/t‘’-æýf›†HžL{é&º:³«†îÿ–·y±,Ï•^Kÿ›`Qœm/áª\r<‘Zâú]FÆH°³Öí§iì4H_ø‘8Á!ùbÐF·²¿O“¶Òð´‰×¿ÃEB	Ö°Õ–6Pò8\"ÝÒ€H°°x1ª«Ò¢\\^lQää¸ízÈˆ\'{Uô,)Ýê¯ø>ž#å\\ÊðÿÀH³­´¯pÉ\rÊ·¿?Æ‰?HH07ZØTÞâÏ™Š6dÛ\rNÛù\"ÈkU5}h<Pø×³@H³­CRv¢¤éçY>ßi!‡Ž^1³¨ì\\p‚“-º:O\nÞÝ‡nG\r´Š@H±©ç3`dX:HÄÄÅò	šì¡7ÇIHLÀ¥ÝOC´ÚR\n0é¾ôðKgª¢H¾UärÞ«£™ÆrÖ2R;ÊO ¹/;\"-Vž–‡åÒÒp(,bÐ@0H¾&\\û~ó?c‹¸Ã+ªlòú[Û£ÅÏeÌƒÚ?,,1ÿ/KÒ6ž/{îú[€H‹Ù²áüÊQÕWØ\nct”k.î7ÎíÚø®â³\0XÅÏží;Ÿ¬7MHŠÑ-¡ˆìë¾crÁê¦ü$RMœ}4?e-f*£¶z2ƒ*œHƒ?	×¨•yõ­\n±¬FO\'!¾íq2~÷Æ@%ô…[÷½èEÐXÆ[ðHƒ4u\n?Ç¼f“áOð´9ióyy[ž¢ëx\0±)ªüâ°\rŒ³26z÷¯ H²”³ó—\'” 	%Üµ÷šÓõú;R„uxÔ(Æ°¤*¥£)\Zð5¢”ùK+ÿ72T­H³·•c‘]Ab9>fžè^<Þpìn§Ñ–Û€ÒòIÊ°½\'Œ‰m°É\'Ì­lH³n©[‹¸·Ê\"n3 „ÖE­[kO˜;A´\"‰f¶\ZRÐføJÚ@H°Ôx&óŠŒâè©ßG,lø™TYäªÑhòY]7­:hüíù£°ÏH®…SÈ¸¹ˆŸ¨M¾F³¨Xï¡ìI³aŽ–\r*µÁ€28.þŸÿuPìH®¡_\nEXÉê‚ìÊ~J0Ë²GbŸìVhqµ~ÿñˆîñ\\NDŒßH®›¹\'ŠÁðEÈÁ,¤—x1åVà69J{fN&Wãy‹(Ûi\rä;ç’ÀH®Y×XýT1gÒ8–j]‘­¤è›˜Ì2Y0šy0öl™ù7-¤;9ž+	SåÉžH«*aKÓë\nº±±‰ªEÂïâ\"zýU˜sÌ›à²âFÀmˆÛ—DnÖè\r!¥ý\'jëH¬ÈÚx·ˆ5«;¸\"`Öô	æÃZÏž\n.kÓ_hþÞñ}g>\0è¥¶e§_ãàHª«;µvŸ!`‹ØÒÈžümÏTSU$a$X:‚«L|±L/1`»6VG­á¢ZîõPH§JëVzWgþ†µÀ=æW°Ëèû¯òØÈ\"/E[\'Eè<µÍ~o&tm‰^h‰hH£h\nÍ¸ËÌî:wê©‡+·\0V÷íÐf%vµná9uÖð\r8Fá£î—„†\\Ï@H½ÿ.ßª¼EÜp2a-•Ü-KPó”§ßƒç˜[tÚX’:×è*äyäÁŸñoR™PH7$f˜_OÁÇ‡Ç/€,ßîl”aÍ&²Õà‡ï½›šS†¢ŠÎÜ€H2Ö¿ÕÇy${*‚@ü«=)\0,ÀÐNx]Œ&)R®Ü™F¸b^µÏÀHÖËø™TÑ(\n€Žs[¬YœkW\\µ¦[mßA„´»ÄðH/]ðè°Z¹RhÂ·\"‘1µSÍžS«=”Û·ýüçä„œ’ø8¸YäOggS\0\0¨¾\0\0\0\0\0\0\0\0\0\0\0\0ÙÏ%#\'$%.!\"#$\'%%((()$$$%\'$&\'H/*}³½Ô…éìrsðŽ6˜¾f>¤”%\"¨¬ñT­´Ñ\rƒé~xH+¦ð)¤ÌÝZù9]Õ…ä»@¯ÌM&TµÁ%¾imH-4·°Q÷zÊÞ7înø[ÊFxj¦Dz._É¨ÍÒÜ‚wÀH+/9ØÀ;·\"\"tcaê.ÎàV	JA]yM¦­eªñ:Æë‚êRHîâ\0Í¥z§’fpÈû	í¬IÄ­š¿n¾öð™³)¶hùÕS€H\'ºúþE³[I‚‰˜°žÛ»Õú˜>\r³{å‹Ì¨Ð*¸®Yâ¥b•wœ(™OÃ@H\'³ŠŠ®YíwÉÄàÚpäÑœéarU»ÀX£\"ŒH\'³\"Z/îŽŽD«Ôew¯zŠiÛ ™~µÞ©XŸÚòH\'³•ÿ<:È7 êJæ‰:tlËX.ÁïN(Üž‚b/ƒn8HwF1Ôƒ·Š´c‰$”ûºÌ/]8Ñ_£\'ìSZÀH!öà¹ñVÆ?8€òÈ†¯þ‘²ˆW¢¶MO+/cwKÅu¿H\"o¼¢°#Ääð%ÍR5n9MVÛÍ·]BÛ›&Ã·¢þ£UU H!öî‘­ô¦ó«8Y²ièj®È9ˆXÄâÞYäÍŠðæ­“€H!\0Ícæâ€ŽÊ)R¡aŠ¤Ëµ^N^¸ðç\nØ®3fžHpÄH\nÜmÓ}üŠ(HÅuÆ!wÉÞ£M‡®Ta÷æ‚‹ZœD¦ÿAH!öïÇ…wòyÚ\rC]éu¶Ê-\\ã=D8\0qƒ,Ú6P/]¼=YpH#ôCîn ”ÏõtT‹×ÌQå}‚³ƒÛZh;¬ƒ%ú€H\'ÅJ‡Êy^Faj’N|%\nè#EÌâ3€Jæœ–ü[ÍÀâïH\'Å`WÔå¯$.m\nã>äY4s·æ6áaÐdL‹`’´¾~°ÌàH\'Æö5Pš@´óå:U5ýxº\0!%µ·\\ŽiJQ(çkÙH¾Ç±ÃÔ¿qILua«µû°¹e­u¦‡¶@R»Må€>H\'›EhÛÝ7ÌÜ¯½g5ï$ów\Z¼¡wÁkOÀke´ìQÈ	€H\'œ\nO¤£èrì7ñn*gÅ«u^ç•OÐx7EZõýúrBuH\'¼Ý³Ü2ãÖèg7H½¹\"aV¦¯¢1¨ÈEf<ŽÍA7€H\'›G–mö5=žnÁ44%Cž“õò@&5¬€Ÿ¨1BH\'Ž\rÖù(èT^åL=ó(Ì³ÛQŽ™Ix{¿?Üóeˆ[í_§ÌH\'Y”èä„öZ, ê_B<cÆÁ$w|è‹i{Ôn„§[Øznf','masa urataka.opus'),
(77,'Â¿Puedo hacerle una pregunta?','Â¿Sakiwangi kamta  tapungapa?','2022-12-05156438412512pregunta.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hw\0\0\0\0\0\0\0\0\0\0\0\0Ýv²d(-) &&())!\'*$*\'+(!!#\'%)\"!#\'##\' $\"\"%\'# #(%#%\'$#$&##%$)0-1//3,033.056;--../;;73+0.410122&*&*17028HäÁ6ìÅ€Háj2\r€•oÚs~Î¯»g‚øVª¨H†˜!²=ª\ZêM6Q¼\\Í¶¸ã;ãùƒ+å§É½/?Aš2/?H†Ù’Ü|ÅlEùO°f\ZG}·%_¾,\\ð8ªõ$RÎàwOäó7`KÐÓzH‡¦Ty:Û:ÆØ~&ZP’£IÛñ¡¬_§ò`Yó5>•„ Ö@H‡KDœU¯\nžéÒ)òmY[w %NÃÌ‹5LÓhùÂH$õõ†ÛqàñT\\ôÐÈ Œ\'{Éü\n©:¬`ÅAK:áV±ðH‡Gõ˜>Í¬–\\wi­CÓR‚( ´œ\ré‚„]C*ý¢md˜H%ÐWø2®ˆ1Õ½¸­eß0„19¥.ËÇnerFˆèØn9¤pOH\'ÆøuíÿôYØ6Ü­s\'ÆIqx”•ˆþH”A}!Cž3jÑH\'ŽW6™ôÌ`+c§õßþc7ü˜MM\Z–+\"©,aii.Ü|ÎÚÏí&H\'œ½ªd	ap©­99U¥uMàî$Ù¼‚îù¢¸#Ù…Â`H\'¼.,	ÑQ\nŠgAûËçµÛáFPø—×ü*NÀºç¿âH\'œ‰\'6üµéw_ü%»ò-+á]\n´Â M©Å¾|Þ#.v·v¥&€H(Heð¾¢‡M/˜Ç£2Aj!Öt±Ã…?ŽÜþ×¶iAKH)¤Èädâ{¾.¶5éaÅ¯M–’l‰rÐ0ßñŒ Ë£©ÄñÌ€Í€H)¤ÈÙ2˜†çbó¾I*,R\\hg:Ë5Î9*/®C~·É¢~JH)¥QîŒk¯Þïy£m^Ä•R_D:æg\"Ã›in¬¤Ê¨\n{2ýˆ@À­€H*0í}\0ˆ†®nD#ª–;¢0÷¶ó0{œÈShTæÀÉ69Í“@H+ˆ~§°*ªÃë#b„´)õF‘G}±£Ú å<q@H0Gâ‚ŸÆy¥ßLh’F¹\"Á<˜Ë!—=i¯#\r°@H+†E‡À–d52IŸ^v…KòíÕ5•Ë»º–6€H+¿rž—«Cà\nç•Xgc&§0Ì8	QrtXG›Ü-ÔYH+lÞ¦•ãÐxN@¶äS¥”Ò‹Ÿ•³À¾UmŸ¿`•‚ºËö H€Ñœ2íwúÆ{wscA8ÿ?ŠxIÙVóéãÿþ*™£© £$ê	~€H7È@IâA	\'RÞÉ<Æ £)”öémœÅÎî³@HŸìÈ­¼g2=`XƒÕ¯\Z£\rº0=C›A$½¡8H³ÏO\'%{“ÌîJkô¨û‘ès×-\"ÿ·ÈÎT¯\"H-Bã©>àÖG+0Pª˜ÀHÓVõÐE9‚*\r]ƒ¥H:¸”uÄ4»ú›ov¨£‰re…º¢G?Tí’Ä\r7½·7£€H6|šÝõ|EzW~Î0útÂ7¼èlô19’gªtôµ÷UMXHDÃ\"½üâµSp_ç®[\r¤v-XúŸ‚ß2Z«É\\«€H)„5ûà‘µÐMÊp¬ø®o¶Ì,ÉèùãÐ§3$óÕ×[ª¯H)\'l*¶\nõ«î4ø;²Ò.)L’¢¶-scª…H\'¼-\rä¾õPgœEþ\'ß‹Óúüh-ëCïXvè9åW~4ÂHÆCî«EÌÒ¾ÛˆoÏØÝú\"½•«pøƒ}¬l·èH¼ºyíæFG_QàËO$k¿AËIýƒS¼šä•H)“Cs}‹	«IÝÿ»ï²ÀJX”‘`9nºÎ|ùBL‹¶H\'€\nÈS‡¿»´œ±ZŽÆ”³Ö=Ý÷®¿7ÊÔ”ƒÝ¾‡H%šÏ%ÃÌÁÍ)#¾¾qEë«7•–ùBþºbŽ¬m¸kU–&&H\'›<xý£ûÏ·?÷½E{?…{é‘Ã¬ÒYzSQÿ@HÂÒ©Ü§mväaám®ÒÖº_EÍÂÅt…Ê„rH\'›@EY€Ó_1µÿL\ruù‘¢V Ä¢í(„™cüm*çgH\'›@/n·5oäõ3ë¨WéQßùY¡y†Z‹l H%*e¬‹O/¬OÎèPñÁ×(vP_A\r„thæÂÌ`‹¤M˜álà¤xH%)fß¬3€Q ýD n ‡G£¨á\\êS·iË_5d´€H}ÝÊìaÅ¥’]?¬«oØ^GG„¥f|&µù-h\ZS:†#£€H{›*zÛ;qÛµpAU|u£¬+ãþÜ™ŠGñf¹jR\0ˆRøH-IN–È·A1æÀ@BoÉ\rSuú)§…€yÞh%HöÔ%™$H)„†Þ*òÚ.èeÄFŒ¬Æ*“£AlE÷Ë±V™,ß[5hH)\n¯“”ÝÌI›T5<<þ˜.Œ0¤{w¾•æ$DH\'›<&éÕfê¡È¹÷Ì‚¿dúÜÉÌÖòD…žVœ…{iì; H\'›±€õ¯¶¼B$l\"ðh*+œ)U.Ñu.ÞÄ^ŠN€H\'»ë/‘l+lÌµ0Æ7NlÛ½²›ƒ!¡l¬ö¯Š½DVÎªÀH\'»ëjSØwïm‚+j[ùmA¡·™×*|ÒRÀSrÙ±›7B³H%9¦¿ú[É­<\0±ÒÊjO·~œ§Ì¢Ùª%ÞqŠýÃ‹«ÄHH%TÄ2Ü,$Ó85Ç¨8mÐ›á`¤€ åñÙÒ­FbƒüH,?|™Ç¼EL\Zº­y³(Äd˜?þp˜;:FÔ\\[!›¸IVP8ÏlH:}ˆ8E×è°k¼PöÜþ8Ò^Ò]QJ\n˜ìVÔëþs`¾Ö×¨b‹›D’è°H<äTßèýoËMZ;N>W83(Ú‚½vÉTTëi\"Y~¶<D79õi4PJËèO€H‘¢`ùŒ÷OõñTÃ•Y\Z]q5mAM_Y‘-ÑxýVÝúèqÌkãíƒœl˜àH’¼„±‰¥Œ.ß–“Åš¦É\\ÕÝ_Ž&M†Tå>ÂÙ¾‚Û(ªê™£|Rý”Hƒ]Ã*õÑºÌe¢¨Kžt¯¨6SFº…vô¼Ä=!£õ¡\nQ5Ç\Z\"òH±Âc¤j?t¥K+i‹bÕVêÑq	-…\0Uóž\r<¿ä¥}{œ‰…ÜoemDaÖ?.FÃ]¨H°[ÆË¿†„@ïFÀ—÷¡Å)<˜“”Ÿ0gvBdöénæy0Ùè’[	eFH¯Ì!\r¿°(+`P¨gÙXŸEaÇvUA¶Îzyê_ÞµDÃ¢ø(ê²®WÄ¿¨€Hª’à™\'):çíùnz·|ÎYƒá~°a¤d‘m¿©˜^Wìõ±Ò“¦¯Á¬·`H¢\Z3B:NS˜¢X­Pý™€OeÛ~ìYÜ¼Na3:[6Û7\' ü›Ì†T½Hh€HŸÓQõlvÌÞvnÃ³ƒvÈ7œEëæjÆeÌZÂaÙxñóo¿ç\\ï@HœøyZKáîÂ²pyÐ,/i~ÇÌ[d}æÂÈÐ†2±\ZÌÕjá_ï©›ö“ÇÀdzK`HÕè«QA] VEP3þÕ)Õ{i²Œÿo•]ò“ŒUE>9ƒ·åÒFÏBTh˜÷°k’ƒ*7H„5ÌçSð™%Ûˆd%lNã3åE&’JŽDcÿŽÝ+ÐªgÜòo&|U]Éxb#$RrH®Â4âV\\¿¶äçjÿåÎVÍJ®«¡5ð\\aÖpd–-’á!w¦B¹ÿ ÔËàã]¶Ü¼¶ÃîÀH°E“ÅÆþý‰Þõa–…°]á ZßQ´¿¬Ð[Šõßs„Bã¦îÄlà„ÂH¯Ä_-ÐÓ¸Òÿ“pw÷ž’òsm¹i–Óã Œ§e¹VÛ†f6’CåÊ-\nd<×Hª©v:ô¾HÁõ/‹ó¶ÀÖ±CZ\rf_¥h•Š>šVBC’ê·	 ×$8H¤°Jìäõ3Æ¢5üáå9KËP7¢.b*„XH‘oçAÉ:½êºœI1²öÓH¢¢ÿømíLû%1Ð\"õÇ{cÕŠ\"8˜õ=HR-TÅîD,ó$Ç-(q§H¥Š«Ô›Ú\nIRuµÉbÿŠ¤„Ø!õÝ7PÊ¤÷~%)\nÐ¸cJ é”êp|ðž‹>H«ÔÖ‘¾½o\"4í ÊG¬«ò,ndû¤8ÿåB”k—äX/5Ö_Ø¼‰˜ÓÕ<«Ú<îìÓê‹H²PùÀš‘ÎÇ“’bÛ–¼s¿é8oQLó_ÅiS—ªtZ¨þ×¹N¹KlÅèG¦º ª26ª-LH³ª³1æDQià´ª}ììüÂ þ8ÙÇÎ\"æ†Ó\Z^N+G¹¯ÐÌÄ6§÷™<O˜ÑàHµ8ö«¯ñj²°©$…weŽ÷]MÄ/¬›pÓGµ01€%ÕõtûÊòN8H´ÿ\0êÛ·~æx\r¬ªØž:T¬)¼Gw	‰R¡mx–¤Þ–BeÝ5à“@7Ï˜0H³(?ƒð¸PÎºÈÑ¥â¶t}÷]2¢’ÈhAPà…L?@±†lÙ°9{u²¦åLH®àv­sâ_¡Æ”5]¡²óºýrðâ…ž¹Y‘”&Û\rìµPé¶¢P¨Æ)â„\0/$ˆ8mH©`²i3›®*%`êS¢†Ã”åçÚgûÉdEÏc»äÉ^8ÞÊÄÃOÞrù+¡Á€H¦/:lYÊÖJ.@HS£HTu\r!ã‚À¢-´hþ5á Z4ÒØQÊÂ€ˆïèH¥ùû8Ý¾k’;};¯¦úÎõ¿Š	jif,Ô{œÀ™@\r™|¬µ|ß}oËaÀH®\rg{Óýê»x)¯ë5J–S‡XŸ™¬ØÞÊ1ÒbwÝ+ªÏ*-¯¨è<ÉÞtYžlH­åÄã >–ÉA3uÜÜ[û‘ýP&\nWæöa„Íˆ-»‘ð®LäÝ¼,p»\ZÈøH®×2m@é)à|XeÉ÷DÑ\'ç6þªJ(™‡+“#4µÆÏú¶H®å…2¬µ7â»¼n~oÑÙeÏƒb¤vÄŒ€p’Õ¬eììµÊ™€H°2F	ëï:¸€é˜”(Q¥8Nì>“2Š6³T†4^³ðOH®h§¢¬CêÇN?|aI\n¦\rgV:}†ƒ(\n³ï¢BŽSgž Š¥×ÊÆH¬[©a4ºf‰9ßøû,Ã±Üƒfûå†ø7&Ž[Ü€ÆXøÿC\'‡ð_ÉhÜžíYÒpH¤—¹ÎÍ¥³~ôÿëSôSý‚}‰¨\"Ýzì ÜÑ$~ø±×fÍZü¦!Îl †Û«¨¥BªV®€HžmÊ„†{–®=³„¤5c(ÓXjþ}ŠB%mºÊ¥„&{¿iýÁnÚâäZ\r€Hœq	(.2\0çeŸt%ŒDÅ„ë=6•¾>7Î·çè4\Zéæ‚pûsOžÁ”k‚|¿€HœÐ—Âl/c©”Ì­ïú\rª°Õ¨q°\0/áÌS=.wJ7,wÑ²Ô¥Ý‡VOâ©­bîÀOggS\0\0¨Ì\0\0\0\0\0\0\0\0\0\0\0\0Ú%Ò’[)3:2*&(**2)0.*254),%),*23/2/(,*)\'&+7(+14310,,462,01:74/-+7-502423/95232))\',&!&&&$))#)/&)((H›(±!\rqZ3M.Äôˆw\'þB‰«Ð§’3EÛDÆÂðŠqhÍYLH„${lWUQ›Ó\\/©,ÚAëP¯ÖeÕX\"{Z½8¡ùÓS[:1Sª£+¬tsÁ˜	ÿa`H­§¾m‡úÑl›#ÌöuZ­Eï±±°’ä×ŽNg¢Á°\"]P¦šfÍú¯ˆL%erÐÓ H¶æ¦Ý$òoDZ<¢¯K°YuÁ÷!«Hš$ÔÔ‚*Rd	9<;	!KÅÔ%6ÿÖ9VHµ&Û#|vÈ‘›c&Âò;0£(H\0™lð@«!dx\rú¡ÈC\\ÑÀH´Ê¨l*¿IåÇïjù•pŽ=ý«fCe\Z¸ŒaÐ®g%ï”òÐH¯­à\nnÐÝžû™ð¸v[¢œð”\\áõ_i…@Ov™à?Œ_€H¨è5æÀ¿Vî—=›Ž.ˆþTõ¼s®n§¨¤gF;\'óÎA£SH¥	¹µ6w¢Á6ë<zU³SÔ[ÞzGOÕw(N˜´™fÁ3“`Í‰åAH£•¾É¡„?Œå˜Äk7W¬bv“1)óòaƒT‰<ïŽÞ¾V¾±ðŽý¿°óÀH Ñ/‚[Šr_lvˆP…ˆêDóJüÙWÖt+ÙurV-]Iqñw~@H\"ä¾¾†IYö¥óƒã˜ñ™iÐ‚§Ùá1ê$,§ï˜p¨à\'¿-2SºàHœÿó6åZÄÃW\0a÷\\Ö!œö´r©Å|¡;µä©–V|E†7â H4¿~)¤†<,\Z:Kšn†aWd^Pç9Ø¸-‹\rñ†Àì„u†Á\Z€H½¿”ç}ÿ½j-[ò#È~yC\rß®Ã	Nîò´H&aâ¶íSäÕG›EšVó“SÃBÈH¨“×<qä`ªßÖSí\r]5€¶_cð›þì½w^ÈþŸ/ú•¿0ì—w2ÇŽŒdv\\¼H°ùM!9NÑÒÿ¥:ÜžØøÅ«~Háø¡Wª%\ZvM4è?n°ÞMçâ*J ãÖm4H³cÅã[ážÃAi\0QÆ4‚Ê*aƒâèÉE¯Î,&JÆG•u(H°œƒ:ÔÜþ¨Ð¯¨úMº>Áõ‰õÇŸŽ\\ù}¶\"›žÔµ®	\\¹H°39pç7jªÒ«\n[\'Cß×Nñh\Z>¶Gó¹GCç”H¬èºÄ‘&}Ô¿°?MFü†Â>ðÙqkóŽ‘³pS}ôfÈ%Ó H«PAØ¤ZàºÅŒÄœøŒç`6nù<Õgäu½è\ZÊ\\ì†)F3K~u‘ÀHªÀLç´oo¿°ŒÉ÷¦ÞUo8\0cµ&h7fNß‰šÏ0ª¡îý´ØÀH¦%Ý‚!;hñåÒNð¥IÊ2¬÷²I²¹jeYw_ÆŸcß¿Xð°cl5ZzlÛ\'ÖÐH¾AnÙ¯Ñ×ÂÇÉâl@›zl€\Zø-XØ\nö0R)32ËˆcûJk’€%GÕbå†¨H‚8§ì.’à£½ªÞ¿If*Í°Zâ‡seåÖt¬w×²ï®ÖKûh½Ä\\†™\"èH‹Ù]>i¹AÓõµ(Éû|ÈÜå™%O©í9ÚÓrº´S!ùÞpþvç†™>8©°Hj‚)‰¶U÷ËàMDDv–øF\0§°¯Æþ@OJŠ*ÐV‚Æ±QÞê¼UÑ+`H2ˆ[aŒö{¤Û) ©Rz3gY:\n”ÜÓA»À	Ã ,}%ÿô|·«2H/,Vp”Øæròj{ýhÁÛûàÚé	Ä‹ŒðÍâF$9##±€H- „2[—s^Ä£yàaK·oÔß2‰Q3ààRMŸñæf@èª\rà¡’dH+q,ŸÞ‡½\0â¯“„Î&Ÿq¿ˆ?Ÿ\"ñbÆìØžôñ,üX´\ZrÑDœÐH+k…ëYxVÚcjùÎLÇ”ó;³%LÍèîwlA`|!B‰í/üÏH+R—Æ/žÀfËmAëçæMDñÜã)39NÁ;– 8ÚYXCÍ*ÀH¨,fêUyt})\r@†z$í›bÛ‡HnCWÇÍä,ÓC×Ñ³Õ«ÈHª1\0aã2•ô¶·VŒ¥“qžØÜK&ñÚhòÀðË¡p–V0Œ†Rÿn îAÆè§öHªðÁ÷$ Ópmô‹ìÀƒƒíÎÎ6ª/o’gEü¡Gzc9Ë€+†íï¶PH§‡Ì¹=ÃÂÛ¦A\ZsªËÿähgo\'`(0ÀÄ8‡!*Õ±æÖk¦pH ÖD§Ìm¼#ÿüçHÔ2!çê¢þÐž/Tô?¿ŠƒæåòíhmŸ­ Š»»_™@Hž4FwXÀ‹zS\nÂf|ÝA½ØÞ²`\n•žèšŒ*ƒ«°éou,¸aÊú”eH½¼çùf[í\r†Ô¸Hâ°íIèÖJ¦xXÎ9¦—#Èbœ¤±Ý†Š¼=·ÿ\"v,êR¾(ôH›š)(»9Le\r‚Ï4iÜ!¬òˆ½ûµ¥¦ÞzÎdÔÔ¥+ŸÙ]-ÙI:^‚¥ˆ€H›Ú‘WTc£=6>öóÖãÌðV¦HiÁ@ý nÈ¯\ròÆkgŠÜ Z.–D+` H€ô›¸÷ÎÔ¼\\:ÊA#öÏ9Ï¨$§ áÞ×Jô¹õg²Ü/™¸¶€H¯ÖÁyúržÌ×Of÷¹íQ¿)zŒÌ‹­v®@j;Þ>m!ªx/íø½Hœ¥2Ä`·Wj}qÕ%´Í÷\"h«ÆT¡so	}uX¤:\0 _ÔäÐ\\ŠqC‘ß0ºHvDø²™¦À?ö›* <ŠÜ5Òñ‚6åÂn 3/ÚŒ?©YóPœ3ñáuÁ&c¹£8g€Hž¨†OU<j¡37Y®„|½‡¸¶ŒU	ÔOH&³QÛÜ\\f‹¡e^ÚŒðã+i¢,Hž´ÌªÕ-¤2Ð\0M)\n)°ßgæ5½ÄÄ¨u^¶©‹Ló	dê­µì¸Hž¨O¹SOìÙÖáÿzêèß²œðÎ¥åî7àÂŠy>õö´ê‹,4OÆoµæsX˜|Hžºóï˜n\"ÝaîRD°Ø½Å¸ÃÜœWÉ÷…{®~Ú¥0qç=úýñ/Ó§n¤°H ™«dñ˜\r‘”íWæð#bzBm}„:Æég2—A‡‡˜ç!Ù\\Ÿ´ùçq:°	]ÈLú´œH¤>e:Yò„ÅäNæ•Ô±Ø‘4ŸBŠ\"²è3(MäR1>oÝÎ L€*–6½\"s¨ÃêÕôH©ÓXˆm!Õ¬hˆpY6ô~K±[”Ó³J\'€\ZVé®ÓÉ®Y¾¡(eV$<½•*ÚNøC€H«ÉÏïÊ\rý¯œâúñV€µÈ•5Aš=ÚöQÙí>m¿o1Ô¸aÇ\\ï`¬FàH¬ï¾\'/dÞÁ2kîñ\".ËC?°¶æG3(Û‚U¬a´¶g¢²SHú—ý„Z0H¬©Ë…cc®ÓT}gé‡GÚæßQrnî¢I“Ì‹Jèîc?îpt”1üH¨Ö¿ö¥ùð¹¶ç”?ßõgÈ?_EDê÷ÊKÔ)ßº–á‰ÊMÎùffbÀfMºç;« HŸÆCƒC—“£˜}VtÚþæ¶,}<œ½~Æ¦8ïSb\"à/Þ«Ý&wžI|Hrh>ÀIöæ³yÉT”ÉýŒÇ¦ÄYx¤ì4ª®Îþ×Y›¼ãÒüùÑfï7\n:BÐfH2âÚßl–þî«£ßÕkêNÞSç¥AÜ¶W™n6|SËH±j%„å€Hœ›Á2êiŠ[93aá²*SVìÁRHƒ‡ç{ÿdG³æÜxæô*ÙeCºp³Î|Uµ¤H½ÙsÍ:÷œŽ	25ª?ƒ¨Ïîu	Ür¢c‘Ó7‚t®Cd¼‘4¥:\\ï\\\\Z¥á“H©ÏL£”SMŸò§ô#Ká¥Ô:f|ØyíÍËpGÞµ‚…¼dÊ«Øx€ŸÝ~›  H«Nïï–[AÔ5Ø—ñc\'(œ\rÑ.»°+•:‡Ç¤Ô„ƒî§Æ‰¾Üýxh…m2ŒDH«Î=ý_tk;%Rë\"f Ëh¸½FZ;oN1j[ãLÖwÙ~À.$ÂÙk_œŒH®•Äx\"¡.j¼#ísõ[÷GD†|C†°dÔ»Q·°¸^ o%1Á\Z”\"GKàöà\"\')H®ÓŽGÏéÌ\\á95f¨É—º£š;\r«CŒ«Á>ßK*_ŒÇûŸ¨dê;Ê-V²5”Hª°kWmúâª?a\næh\Z9¾^Q®‚æØ6º\\èæ­`é½åž^ÎU*%¦Õwü_e¯Ý H¤Üžºn²0hIMª‹Ä9†»ÚN­ØŠgþÙÑA\\,‚\rGã+}Z?)æðz3¦ƒHŒdw˜÷ë5±©]<øÔC›œ _ù·êïôCÝ|RÞ‚«¶é¶ý‘=AûÌ}@n.ÙHÂž— oÚä…¦±¤ÈI à]8A-ãI¼KÜôú•øíï…¬\'ÀHŠØ°ûÖŸ[HÎ&Tª¸Jð\n!?þV,l¯Lˆ.-¹\r’XÝ…Ù›EH62]ÒUæó·ãhë\\I‡+mhù­¡dÝ%:°Û8Œ×VgöÅgH1>¹¥+&¨]Î§£]ry€˜ba^¾9¼CÌ¤ÝJ~Oà¸J4žè9m¦~H0­VÓYÎø\0zÓÝ\r[@wÂÏØ¡Ç¸Õ¸«>Uÿ¼(H™×Ñ\nÞ|c«¬Q“~S¤adú?V«Ã(3Êâe0H-¸Û‚†ËWâ¸È¤øÌÃÒ˜˜xùÏ¸‹ºø_ƒx\nÖH-~~TôkÞÑB¼»Íž„n<õAM|~òhäF{$H+¦ðé¢ýýžÂ@eæý€xXåÀè³*ªK+ûØ\rqò\'L“H0–æ\rÂÕ÷\'¨W#,š\"¶óQŒeÏp5v©‹fd¥H-u?Òz2tKž’_Ã7¼—½ZÍ\0ÂÎ\0UNÃí%FÀ’P†H-vC²lü‡]™Û2„õX\Zþš)ÇµI¦»—#÷S~åˆÞ\'`þƒžìH.	%¦J‡âŽ\nÂ_ŸÒFV)G¿1ßúÿÖ†ÈIîð‚	W	±\nèH/_?,ŸÏìÛëez?).b, Í¦‹·ƒÄH5{æý²ê­lH/.«„ÒÛÙÛßÒIï7ëïÉÑR¿Èe¹HÆ|:EpxŠÅ.^#ÜÚàH-’Œû²êÖ„—Mã›l á¦ûº¦\'’ˆäÎ¼È	ÆÏ‘†ÜËÀ¯H/^ABÏ µb—OHó÷¯\\k}ÄÿûCñÇÔô ½Qv*©£V+H/_Dd†_1\Z¿CÜ#ž\0¬{¥ûg!d	\"sÌ4¯^‹‡3ÓŠ½¸H/g×2IouÏîv\n_>×G²MçÿÚ•w—|K+_Oæ`BIˆêêo@H/^£é¸…ïmœD>.`TSä{Œ7\'¦†¥¥Æ»g @@§ÆMÌc¤OggS\0\0è‹\0\0\0\0\0\0\0\0\0\0\0\0¦†Y&3*,(\'(\'&!#!,)\'\'%\'$($-(($ )\'\"&&%!$&#!%%)%(+*$\",&\"*(\"(H/B¼7Æ©Wè¤ë·¯¾ ÏOä:˜ŽqGÞ‚Èç¡\nõõCcžH/^÷BËBK?I[V;êÄê›ë×Ò£CÄ¬	ÓOdÜ¹cÆ¥õÉØ•2¼H/1íè“Âˆ\"OÓifGŠk—éðk°s¡Ž\ZL-ê¼îft\\´ÄfH/h¯7Pv¨yoÄ	\"–ÑÎwp^,3Ï°ü¡ÉvJaÓ&_H/h¨Ù¯‚Ó‚?èóýò}šY[é zÄeµ|P–F\nõ“o?¬€H/h¯;\rñÇOê¤\Z½¦§ÅŠÄˆráM–>[o)Ú¶/J§š+:ZàH/>ä0[hÃƒj(¶ m÷\n¡«ux¼±L[§›Eô°ÐËoW¡`H.¸¿øw›E& ½neòà}œE¨7Ée[S€HJH-vƒN[¢Ä\"p—KéPU´uZåÏxÞ=\\ùPH-\0ð\"YöÃ`t¾¡—‘FQ›Oã†xnæª‰œÂ€\n5@H+¿,iþ,Gí’:–òÃa·U¼A\ZIJTzoäŠ0]Ç_¤(:TSô\\€H)¤ÿ!?ÕÞõ‚C$˜¨A‹^Þé^¢K¥»â‘—ÀþÝCÔ}0%·4H)®T+n5e«à¿Å™iVDâ{ÞãVQÎ;›ª¯#ç˜…ùH)„Åf›G;ívdÐ‰n(,Û·;N¢e•1ƒƒVêpíeH)En÷­7Ñ/	 ·\rïï¨ä:fNó4üþÒ6ªÚ8H\'Å/MSz‡A×¿Oã!¡\n†2&x¡‰’‹/Yf=ì9žØØv·DàH\'œ1ŠUS€½ðgE\r‚§Oò±»ëTyn¥	Ÿ¶œ7Ú:H‘ëH%*”–ïå¾úõÏ¼Ì5å××mQ<¸%™û^\"ÐøÌ\ZÖº,æ—ÀHwˆïç©ôV%Ü…öÃ¥áµKe!ÿ‚n‘…f`Ñº‡àH%›—w	úþÉ¨f‘Ù%¡‹y!³ ÐD\r×cF4<GkgÁYA‰¨ejÍáH\'›B<.b~™hð ”Ö7u1	6Cï{ô\'ÿöZ‡µ!÷º×šzH\'›tËCŠ	HqiÊHÇi°»[7T>¤nG5D½½¢X°üD!ÑH\'¼ƒ1¤Bz¦èîŽ&2_¿p·• ûH&±{»È;!ÂH%2i(\n{³Ð‘Éå6ÿÿm«Û¦ï¥\Z\\ºm,bH$ôšO ág”u½qss¦![k=KL!&þQêäoM³¹#†™ªøè€Hq‚)»\0«suy¿›ÂTˆþôŸë²>mãFñ$ðÚ~OåÐH%*cÍ+Øåië?ÒAÎ¾œõƒ{ Ë4³¡Ðs4c)¸“?7€H$1š€Âù»éÍ\'´êó¸¬+$jpù\rºù\0ˆþ•B\0UöÓ‘˜H%uÐZ8R9û&ÊÕöœqµÚøÁ-—D²ë¿_^‹	^H%*’\rÛb¸-¯VŒªÂ¤Ç‚¡üV¼€¨êb&ç{„¿kÝH%r5l r~Ú\'ŸÍ_áZgIÒm4¹¾üK@@4H%*eM•½+ò%R¸*ªæžl)áVP×=æ»Í¶]¤üOW±ïøH%NÐ“ü9<L¢¬8V;£(W²\nwþL„SÛÇ<FBíÍ0H%9­ô½a;pö[×Œû[4z(iW0¢xâ9§É¹–/*”LH$ŽF!h’éË{ÙÎO,/³XK…Ú\\ËÐCA€Y\0`H\"k—’:­6ÔHYÇßEf¼‘‚ˆü;\Z9R§Eìj–_\'âžîÏH!ÏxÈyŠIDÞanÈÎ^OK-Mj÷Ù;qo!0Üàûã)Ùð€H\").2t]G?Ð³¿´`M\\§ÃÁ4DéÑÁ:ÈZ>,4žÐ(kt2H%FßÊí®ª\r‰\\³¸õìn€q Ãe›¢)I•uH%b‘—H$õ—¬:úì—K@Å…³oð5ˆÛ¯_.pÕç\\›Ø+6\r~\rSÓeÀH%ž) ìÁð&i?ä)ÑÚMÇé@M’¿ø4@ãc m›®%­–H\'Ñ×¬4´ÜQu\'29P7ÌÓ¹ðîôj™½#kú‡Y5\r_™ Ù’ÈoD€Hû;\ZnÙø^%9¶„n²…%ùr2®iµ‰ÆMxÇS‚œHDáÐó‰\'ÙÊØb÷uƒFFZœ”ÂÉÎ×Ê×Ûç¼@H\nÿmåƒ¨RÆ¶÷ªxÚœ¥{\'ÂRKRD\n’Ki¡¾Šò±]‰€H.ˆüs\'ØzláÎu¼Ÿ3<\nï»]•¦†ÿ×N`Ïˆý¼Áv€H\'³\"\nÅ,kmðã\n.†qaøoS>Ìòé%GÏ´\Z¨.Õ#H\'´¾ÛˆÏu((½Â@ÒÉå%/\04\nÿ ºÙzò–?ŽÒéHÎø-é¨žÀH\'´·ÍÜOx÷\n\0ÎBC¶ï&Ñžò‡æßJL\'ÓúwÒÓc0Q˜H\'›;i‚¬²ú‘rnu›4íãz›	³1hà^ak´€HÀ<d¨¸c‹\'*÷ŒŠË!5»Ã4’‘¥û»ª˜TTÄE¦Ú:','sakiwangi kamta tapungapa.opus'),
(78,'Â¿A que hora nos vamos?','Â¿Imasa uratak risunshi?','2022-12-05156557131011hora.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0u&\"…a&.++#,*\'&(&%$$\'$#\'\"#\'#*(\"$!$!\"\'#)$%!!\')*$$&\'$\')()*)9347:1015)/.98,/,00%$/./6777979421 6,,6).;3HäÁ6ìÅ€HáíÐP›€|UÏ€H†—ag— Û¸-ß¶N™19Ê›D\0­=¡f^oBŸg«\Z·™ŽH†²õÞ™Ëœˆm4Ê÷ø²Ÿña0•þ\reFõ™IÍ°³0ÿÌÚÜ‡YFí€H‡$\nòó½P‰	¬B«N~œKM\"¨â_lÂah÷Í5\\\Z§J¬nÛXˆH‡.»®f/2ÌÏñMB“ÊÇá„<{‰ª—ïÎá¬[Ê¹Dv·%ë¿™sïnH\'ëj\r:&*0ËÂ®ÀÐ¡ŽV4ÒëÊ¾ÁÍ¼ÃÜY;àCPH‡&tLÐ‹|\rmËîN­Ê@Œ}c$¸ü\r)ŽÌ¸±ÌˆF¥P7M‚TH\'¼2 föp‡5ð*®Iß\n{­ÅE ;…Ýí	…ŠM™žÎÈP‹êšd@H\'›ÅW¼Ãó&D÷NJ/WNvéáºdš±.Äšä×­é6¾îëH\'›.’\nÛWfˆJ²ßÄ‰àbî`[vÌa\0ql¤##ñ%Á@H\'»ì!{ÒýfV€|Tœ3ò<îsOþ¸.,Æ‚— @¹ùeÑ~1–H\'»ìÎÖÒ.\"†I÷…¨Åò3þßÉ…ª•œìpžfÝVÂÏ‰´é§H\'œ8¸K]›˜àŠõ<„nL-Ð7/ºkÝÀt|ÒÒ´Å#¾@H\'›B;…ÛŸ_¥ñ&¶åIÆW)õ6Žûn¶É•„’ô0yÀH\'œ¿Î–hqì¥Þÿ’1â£þ°‚ œ?:$	QŽÖ &VÀH\'®\\|ÑÿØò7Ýn-þ=°P˜`¢ïmÄ}”#G7ÙVx­öÎu,H\'¼ƒkeGE ´¹I[Ê	mÆôåHoµ·F~¦•,Gš8H\'œ$»†”c¼ey8yµ©‡cTÆ)\'â<c\0ÅöøbH\'´¸¼“Aö£ìC\'\n|³	Öpk”›&x,Ë*r¦d„ ·ÉpH\'›µXC;b®Ñ	¼ÔaÄœtè¾÷ìÓ°RÎ`¿ÜªÙvˆHÀèîp8ŽÑ˜;iŠ|wÍ{_˜\Z¥F©I>ÆÏ/¦Yñ¦7F˜H(HKŸ€ð­¸zI£$Vžú}¥—ÄÊÉ~QŒ›îå}ìX~H)…lnÒ\rÝ&úwÆ¾W²\r&ù§-ja°è`óï´<ÊÑ¼ÉHõ|o&ƒ÷%õ?ãª×Åo™8–j;Éœy›|¶¾%þ\n-?“]aëfí€H)ëi(ž™–)Œ˜t°\\?°=K(q¨´Z,„¥9óˆ³A™Ñ©Ý	LHh‘-üknLHÒÐ‡ÂÃMÕ€«¸píä’rI¾ÙÊ`H,Ì \Z°	É\r9a]˜ÈÈ©ÐÀÞÎŸ9Èíàüµ¥[!‹õpH)…sé0öì3S‘‚¬íÍƒe¦X²e_€B@÷äÌ×VÄH)pvÌÖ.„±¡=>ÛMjkeStG“ûÝØW½à¤\nÆ¬H\'Å2q(õÃŠIS~ÚÝ¼x×rwŸ“ø¦¾¥3„H\'œ¨Ê\'<<|SßÚvK+·†WîÑ7Óœ”<H\'³!Ú¨wó68À\\\"¢ŠŸk/i È)QDîL¾Ð€×µz2¿¤HÕó=u¡\"	È/51¸eQ“Ê7—ò:›Îî:Ãv$Hat{÷j¿›¨Ó ·/0YÇè•Z]Þ†\'ª[N|	@H)\0ÖâèÇëV¼«èö}Ä§yM8a $£-ßœOÔXìæÃ\n™*Ô]€H\'›;²	ª*ÿÆœ¿§63HE]Osëk9è>«Ì²/îhÂ@àH\'›>í¶øèuˆåm†NŠá8/+ž!­æ@¤Ï‡ufLZI°8H\'ŸÁÆÌXÓ¼¼’u»üka?¡ªbyY²¼ ‡„¨ H\'œ¸¥1Ë/Œy)áí\"šMA†¦b*¿ñ³ØŒ»*pH\'›HôBaJ\'xuUJ¸†ìéá…üØ\'*MtxÕ•¬‹º¼ÿ!(H\'þT´ê½ãøZÆ¶\"PzZ’`v’LAknFUj|þ!ÿý/göVH)ƒïéx|É¹hÝ¸ˆaÝÖ¯Ø>àZ&‡¯fNd¾µ[«”{ä…‚ÙH÷ˆFZ×mpõXz`ÞtK*‘(?ßÃ Ï\'Ù¤rFðàH)¤ÃB¨Û:aÿ¡V!y{(jçîØƒî¤×IR\"sUÓr”I€H)²»Võ·ŽðÉÌè#¦´$ŸÞ26‡³{uþþ¨·ZŠ@,üèh‘@H\'³!i=VÄçSú:÷jÎ‰é\"† ñÉl6¶­‹I¼ø+¡°iÀH\'»ïƒdçâ¢DQÈ‰0Q£%£‡Ãw\n¤Lö…Âý	.@H\'œdî×ç«öo£¶\'&=çÄ/†¢\ré»=YSäU ŠÔ!ðó›>ó*H\'»õ\ZÜelèhù¥ž]r²A&\\5†í÷Xð„{Qç,`³€µ–˜\ZH\'þ^ J.;¡B áFI%¸3ôžC ÌzñBa5CC°3ïŸ÷û\"@H,+ñrhíŸR3Ÿ4‘J-Ràåý+§µþ½c¶Â$./FÕ@HÁ{<¢a³,KÇPÆNç¤QÓÁ¾LK¬§aNß)­O¤Ä.|&^H5µ_Ú³­„Ñ`¸¼¾Ú#<ŸÁ­Wú¨ZÊà^üK\r‰U‘2>‘H¡Å8_Üç„Ì·)é€±ª¿¶-g¹¹|öÓE\niÜ¹~#äÏ«Ç\0¶8ÝægÄ¨Ú·0H¦{rìÂkí\' ëÊ$\Z–£\r±„â×µWp™b”#_›üÅ{|’ˆ,Åáø‘ÀH§Ç…€ÞYÐÄÆŠb†û7ácM=­K[ñS(3Ø\'ÏÇ\\þvJÍ_YfÆ¾€Ñæ\ríRØ@H©0´Üà>û—\Z%ëÈ-oø\\\'Ñ§Ìó”Èþ`\rß†Ó¢@Ô?æúX«<µ­pC¯\'ySH£ºgª,ô†Šcµˆ8È)\\	ø)¾Ó™¤¤{I)­O`Ôo“¯ñr‰½qoîUû’Èâ$€H£jqž°X³Þw)¦ÂotîŽ½±kë»ç[lmÛË`nWR˜Í›Æ_Ìñ…ØµµêH¢¹þøjýøR\rÔ\0¹w’ÖÝ=’—ÆbÅ¿^µ<Ì.„±âz Õ÷.•Ï)c H¤\n\09\\1UÀäáž\0so3úa¯sžØª¨S„\":.5|±AÆySÊœÈ°H¯9Ñk‹TêU”wBœËÅ@8Çç÷êd7¥.ñ»ì<>E7gP4Ü‹uÂH†éµâÝb`:H²˜\\Ê§!·±^þ]A¾HœD ¸2Õ¯=‹žk±d@rû ^ÏŒàÉ¦XH¶ÝXò’t–^£4Ðï,—™7·n>¬˜ÓU~\náOž[·å¿b‡U€H·îq]Aû€àJ„NhŽä;âYäk‡† åÁ²Ãy¢a8ÑKcˆ>•önPàH·t´Ö7«øK‡ _¾–ÿQ¬2V;&Í£]²C‚—§/wf7ŸarX\0VšJ¤1c$`ÇTC\\\ZL@H¶Øtž ?	Œø\\Î¹»ïƒ´§Þù8Ð¨–¾žêZ‚ÿü‘o­u ÁY§tŸ·â]*Ñ˜H„ú6=÷î˜Ñ$·X3…ø0~‚-Ir”áHÆÂšƒcÉ~\"öÖM°H”è¾ñ—:»„ò¡iñg¹Íî&‘8ç7ÿcÞT\0\0/ª`Á\Zw±ÞbŠ=H”ÁÂSR°‰_,E¡ÜµS³\r9öØÛîµÛ†M2¥Fc¹ñfH(”™OÄ<ÐH„¹ÜÎ2:#¶‡•½Ö±²EŽKT•ÏÇrð×ççm§ò±•7zž…@õwTJÝ€Hµe\n#Î4\"XV¯‰ô§óÑ\ZN©\reÙ¬¡– tmºßq@Ó´ûéBœÍ1‰ôpH·€&.‡Fv]„Ž+Zò‘ÞÎëðYâš$R¥~Í2ùP\r²èIØ€HµÙôjïÞ\"av¯i±]@ùæ¯?o*=kÃ©ÓáÞtÙ¢ÞHµ\0rVžîWðÁoiƒ4mªw3òS¶sá€æøWæ¿s„uðX—@µs¯ÂÞ H³´»½êË1ÁôoŒ\\XßF&?LåÕR1÷ ÙU¤ÆËL	uWPbSŒ`H±‹]í[¡X…sÌE¡»:!¯¶{ä$Jã¨ÄžuR¿ˆáõ\'ç¹Sóé`š’lH¯Âé.ªþ”‚<p¸Ø–êŠ™ÊUõxom›ÎVà¦ ºä1‚½xÈü¤úíÎJÔæH¬Ç¨Jñ1L×ð\riT˜Nº?‡©•Œ!¯·¹Y}Ù:<áuTSdó/M¬}ù$4\\dÌ€³<H©ˆiZ	@ƒ×GÇ´8Ì_ïÜ·Nüåe3Z„Ø[FŠû!¸¥CÖ6Ø¾	ÝŒÅÑACÝ€H©Ž^i( &ZØÜq“ÉbJL+–ÂÅˆk¸Ÿ±c9f\'ëŠ°Œßþo‹…µ¤ÇÅu(¦KÀH©bMÕö1÷%eÒ6KMÝj™CLÑ&‚ý}­¯Æ|éd›öÄ»q{S§ÁúÎžŸú·e†¥Ý¤éÌH«Ér¸g9‘µÙjiR~ìøá&´n¸L¿!4w\'ØSTÚoM‚â˜Uäšs¥kæÃpÐØ8ñž‘H­‚ÔÂ·úª48Óß¦S\'»•cNOÎ¬Šv&ª\'¥(`tÜ¸÷Áø:í¥§&5yãH²¸+jGõKk(ÊÏ?F–uo}ðãÁÖóx¶éBenö!0×Hü‚eŒ·rçöåFH®2+?bÑ¢¥’@Òè™Ý4RðB[d2&}nTé}üÇÁ±Èp·Lâ;ÿ¾ \"x¨ÙÞ€H°ìæñ]j¥ÒUÐ+º„·²€ï0“¿¤¬¦1¨\rWžÝ»ÛÑýâ?èŠ½>½-J¤€H´Åêøl½Ìà†¾accüR¯8XûeoÏ}*ŠŒH­÷*”BÓJl\ZiB÷ÖùÄ<n¶ÚÓVö™þ(œ¡JD•¢°évU¨„,XD–\n#0¯•Âl€H¤¯¤ž›®Ø•™#X^t°H²©ñ4ë%ûè¶õô¨ñ§Ä3ÀC^ì}Ü H¢üæxîÂý~¦”ù¾Í¼#bghåç­½8 ÷NºO¹d;`ÕV“¾HŸè}(ÂðXÌ¬Sr„9-nÜ×–»gþò–â†·ú_	TG„ú3ßúÖö/;€,þÍÞHžµ$äÖG¾É‘î@fˆ_Ä÷³PH%¾_FzŽ8OÐHžÒã¦CZÈT-…,ÍË½	.ÎEæƒ	îÓÓnÞ^Öþ­	†€Í	igžˆÐÀH±jýû—*Y?†Öº/.0&º”$/f:£¿´¼’ý*O¼{œ/Î<Ž¼òQ^pÒ†KãÆ0H·ÉTÒ¾à¨ö,Ó>Dc‡—:…FÄñéIifkYC‚§Áƒë.á°•IL|#˜[MúUý‚OggS\0\0hv\0\0\0\0\0\0\0\0\0\0\0\0ïj~G-.0332+-,/16211-/2.43-$()(+3/0.%400-+%,..82, (.$#\'$\"$(/&*,,,+.\')(0)#%(&H·»gõZŠ0\'æ\\¨½ {1ðBæï7X¿®Î›ZÐþ²ªÝ€Í½wÏdŽ·”@H¶ÑçÎ\\b«€µ^ÅË,^h*nõÔ#\0…}oü¾Ü‹5§=JçûVeýH H¶?3“Ã[aq£\r&Qä0|mÕ±_qªÎ­\Z×•÷jíø¨¤ŽÅ\nêÐO›žI¨H³#ð0ê;l:ª\'«PSÏŸâW×Ë»sBº¶+áŠ8¯bŽKÐ–„ð,P®µH§°¨1?]äv[ÆÕÃ¦Öøþ Œ Þ÷µC{¬ÀS™>	-Éœîo,Ãn\0¢0HŽ}¢d	ü±õâžvøÁŸÅ¶ØàdÊ·|¢;Ýþ0—%Öz¡¤qYJrgG„\0xßŒx€H}\0´E	šÔßi‘ `¬G± Mb¦ Íº»NÀ…v*|™4H‚LcÉâð>ÊÉùw|S…(eGitùŒ\'WÖók\07ý‘$`Ÿ&..V6’€Hƒ%è‘ýc_ÞvsšLã1%W­·ÊS=¡”4¸;{“(Ä±/0ñÚv@HŽ³”Æ¼Zûóõq¡$UR§dmFŽU7ªâxæ§Jê„À0w{»ýcƒHƒ:ôòé·è–TÓÌ¿%Þ¹«A	À/|AÛE\Z-9ªi½¢EµÂÛaJ¡…þ*H¾ÎB-Ø¼¬ãÉ?ŒÇcCõÏ\0+é|ÜÕ½7<¼]íî‹·`RÝ·Ešá¤A¼]|SMÀH¬r2	ƒcÿÁ§bŠù—7„\rE¸FB÷žˆ˜IðÏð™ËèîLÒ…{‚¶¥î¿‘ç›@H¬ôxÜ‚®ÁV4ôÐ¼d,ŠØ–ßÃo¶©Æi²?‡¯HÔ\0àd!9_>H¬Êêþü¾äÄ^Õ1’sÞÁ2Å<p³väZ.¾zê‡ŠËÁXõ,Æg}ð1Fl¤ÏÍ@H«ÞYú·Ýñx/}K‡ÁxÅä×È]ƒ-Þ{np]3‚íÄvÐÌ™Ô<ÄXH­€©ÑŠyìÿïÊ×Ý^Çf/¥uïˆppiLÐkQOì!–™‘Ž\'!u)­pH¿QÞ7PGS1VûF+›óKOZÔ€Ô‡r<¸Í-™ù-Øµ,Ðú +»°R“ H¿ÕYÝÕ]Üãs(V‹µºŠÊ….†×ÞêÛàüÂh”	nçèŒžJ	îQ“yÌÀH¾ã™ÙˆÅv³ØqŽbd (Q—ƒ[çâÊß¤ù§jÂ†â©‰ºh<Üø=ðdÖ¨ÄÏ”*fH¿\'xÐ0Yîµ*‚ô’ÁV9\ZÍFœ=Ø>»ïÝ\n\'¨ (x®ÿ×öµ•´«©Ú|nðH³{åœÇ¿ÒÝx_Ÿc #S\0•ç„ŒXXìBe—¬Wi\'¼×ä|ÉhH¯ÏI¢ëÁ$¼ÄpZÛ,-wÆ´o„\'•u=xŸsO¦ÖJð€H®%\0 åºÿ±ÛÒ¼:Tî`ï¸èÛ_ÉýDªÞž«6DRÎÑHª·%ó×•\rwz^ÿè:»ã5Ý[ßÖ/\rëåìz,,´\'6€Æ~Ï@H§¶ƒh¾jífSîòÊüâ‰}…¨V7Øˆ‚ÝSí/*‹NÑ­Í¾@H¦—9<Í[£_†òÍP^äÈØ·µÆj‹ÔØHÎûéÌhDx[¤ H¦m7Èˆ]€a³-;ã±SQ„´¡æ†Cz§†~°AZCtáXa·Mö–±£Ê%;E4ï*¾ÛîH¦?¦@%P_¥>.yÃØ†Ho¬3y.Wî8…äwªyîsñÄê)1®[ðH¤ª¥@¡£Ht`ñÌfI†¦¶dD%\Zi­,Âýõ¼\Z;ªEÀÁ9eÿfìu(H¾âç#)»5ta¤Ú™UŒÏNy‚ŸËuúàÌYÞEë`J¨WŠØÀ\\†H’­Ìêüœ²Ù«d8xÿ( |¯ #$Ç…·pÉØ¬ éÍàHËŸnáNuóÕy)7èÌ‹g¡\'º4k²B–3ˆ]¯çwc£y®ñÖ\0ÅKk©>@H“Êdé2†ñ\"Ëæõ`Í1G¤âÔ†6®NG§&\\/ä|UªºtK£ ã¦L¦¯ÕGH”UÑI%xoôvx¡dÍ÷)5áüi˜áptU&ƒ—‘6F7¬$^°_™Ì€|ÀHµ\n\0ÝT+‡*!ÑöâEo*ÛÅ|˜Ãµ²u$ò‹æ«fÆa+ž™0ÐØÀHµ\ZµhP à‹Š”n\\8lz\n+ìŠ§ŠŽ–Ø¥±ÿ+ä4, ¢À_œHµ€e\rïŸ}oN#K¸,\'F%ãíox²ê¦YÇzê4_-âØèH´ÊTÑA_ûzz»äâ{¿‰íŽûŽ?Ïd6ÓD^,áä–Lò¶f2ñ#$¥%TH±ß5úÓ;ÿ–O÷îíù%äIšæÔÕ<°£àcì7ð©föª)uÔšÝH¯¾¿u±ÓX÷ ¯«cáD‚…omkÎj‹ˆ…¢ãª¨˜–†·˜8Ú^=­Þ÷pH¨ø…ÑbU_!;¾!á³rR¯‘ÿ7®˜0®8ø7WÜužÃô4dÁEíëº­T¥ÑmÚÖ7ðwìH£Ö…\\^xÁ±‡ÿ@QB±ØðT\nzf3”‹mÑÂÒY›Âvëƒb¬;ûV…ˆõ˜¸v`H‚\r\0ÊR¥ÍI‘‰n¼¼Xü6+«‡ï’\\Ä3•™µ£í²nØÊj½©âH”“Äu?.:ê‰ÃpUß|¬¾[ÙMá)Å¦‘0H|mð¾3­ÊzüZ\\ú>¶p’c¯œÆ‹qvòQ‡†_/¶2<Åm¿Ü€H3oV¸Š…,–K9yˆå¿=&’â9?*œi3%Ð…ºª^ÈÆ(÷=õ¤\Z°H2}Â9­íGº¼r¬GÊ>•ŽÏ°å£ÛOÒUopydªÒHŒád„\"ó±iQ€ƒ \Z6UýTñUX× tYÙâ«¿€H-Kª­j…Ío{m¡\r¦—}¾ØB÷šPFÅf[Ý® âW€H^qQÅòZU³`—þÃ7äÔf´ÈÁÖ,”yEUUò¦KâH‹È$åê5t\\™ZÒm:7Ý ú»äìŸÛ‹ÛyH+‡9Åsx /ŠîFíÃ©÷æñ{cyfÏà*ÿWòh¸Vh$H+ŒxæÁ»]p{*ä¹wåüCÊ’–r8rÍÔº\\Ìµ]ìf_*ý€H+¨-²šg¼®zlÂ7Òl÷µoN[lNaú|î„ðoûÃüî	8 Ââ¿ùÿ¡ÀàH.ú¦˜ÂÑT¿·.;û°PÙ„f¡¥Úæª\r)n¹¦C\ZŽžã¥ÌÐH/gÒ[ÍaË\'vŸ©yr¥ÄÄç|*­Á÷ˆ÷:(‰šÓœj´€H/gÅ¶ð)_O’²e¤sâÍýëRr¶o¬3\0‹Ï>,’FqF÷1°A[+ÀH/¢Ù«°0Û=Ô“ÀíK[Ž½€¿üuš¢Ñ½*xðN>T¡—¾8D@H1,>8y‚§AÝD­jEoêñ¹upe¤Ì6ñÓæí+¨Jçè\'÷¢ H1b©RuÂ$!°:Æœaê±+Üg1T7„ýqh^Ç\"˜&B™? ? \0›=VH3/•­½³ëÖk3ó¬¶Ç63s¦åß0¬éi¦~4fue˜z¸FÞ@H39Wˆ\'ˆPRxu»£·æÖ¡†o¢‡r(“©]ýýºÖõ7ÁÌH3:/e­›·«p\\ì%íóPÀ]p­í_ü‘”ß“\0O²2ì¥L*r+H39WOøÝ/Ó©[«·¾Á™èuŽ=æˆSŸ4RqhJ~våêé™ÀHtƒ«¶ykï•Tl&G‡A\"N\"7!dÂPã<}ªû;h£F2ïQ˜Ïº=ðkÉH8ÎV\'câuÌÐÂ¦öÎ&@JàM×‰Hø>ïzORi}5MÑáŸv Ç@H7×\'è\Z+.Ì%íj¥ßq@0±Îo\r‘ÂÂjn:Ò	˜H64†‰šÎ³ØSš«sÍ\\Ë[ÌËÑnh×±íw“Hu-€H30Óp;>KŽ7­‹tbf6½„,q¦Ú@ÑZqÿß­µzá™¦Hûš:ÏÐáÈÛØ‡¥ÅºïÍø®b7!Å¡Sêµ\Z)P õAr','imasa uratak risunchi.opus'),
(79,'Esta es mi maleta','Kai ka nukapa aparidiru','2022-12-0515714580368esta es mimaleta.webp',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0(l\0\0\0\0\0\0\0\0\0\0\0\0A€„Ëa\"+*\'(\'$&#! \"#&%)\'(&&%\"#\'#!#\" $$\'(\'(# #%-6212202462/3/5<7+,%01446367--4/*-165/%&22)+(-1/(&220/-HäÁ6ìÅ€HÛ¾=çÏKø#8×ªH†l?ØÌi;\Z‘®Ð\r‘x¯ÄæÒÅBŽÓuÅ\rñêÐH†’ñã\r(ÂÎÖ\Zr5›f¯ùAd’O„n¿¥Ná/8%q=ÙºáW H†àdµ4#ƒÓþfGÌî¬2Oè¤$·F»¥ÌŸîØ@YŠ^JAtH†ýãöË¬CÆ€\Z‰«7`Àõ6‡”ÿ‡É¯†©Ñ %…—”]€! H\"ìš¦ÄQË¨€ûi½ž8CŸ§ž4(6\'bÍö\"$ïñn‘ÙÙøÿElH$š.kæ J™ìô£ÇzWÕòË¾ªwÔã\"F¹bognZÐH!øÄS40J_C`2æä!í$¡p·ÇöH÷ÁÐN~ê²‹ŠH\"kïm”:QDâ6&¶B Û\0ÌmbÞæÒ )0ÅCå¡pH$õô‘–.!hAÈŒŠ’ÛÀÁoÔ°ëª)W4@_Ì*<¼H|¹ž½KÕ=Hh¦y,pJ;ƒµy;øŸ¶•]¬X3ùH\'„ˆ×‹ÀV.Î_þçÏ~¬IØB_ÉÈæ´ïÑ»avH%õO”ñd…’ö1…•\Zà:Ñ¥AêUñ5¤0H%*d$¡.xÔ€¨°^\\õˆ:}3¡çõ—ß8[Ó^×ÏÀH%z*îzƒH?Žå¦5….í­ÌèAºÏÅ¿UïOìÏ…nƒïË0H%*d,\'iP2+­ïø²zÀ).®6ö/\rq´CA¸‹%+ß‚ylH%9­ëú¡ìÝŸð‡g¨˜Ø¢ìãŸ?#gÃ¢o/aMæÆ…»ð9uÔxäH$õqäR1aƒÈhe^7©Ü¬ïÏz®q+„^òÐ¶kqK¡4’4XH%¿ŽúJ¸RHÖV‡–4QþÃÏy×ÞÀù‡˜I¶Æ>£õÁÌH%”µèôŒ)Gº˜áùoŽ+‚ën‡§gH^¾´‹b=õÇæ4`H%~ãâÆ7º;>Æ¶þRŸäiMï¿R@ïC§˜qù”âh(H%ôu‹¢Ê[º´?žf„ö_ýLÞ)HXõ&8ö{Dä6öH$ô”®Œ¥“ÙíåçÁë\Zæ¯&žÏ„ôùœ€$§ÈH%*pÙ>R$	7ÞXXh€°2ô¤é1·Â¢,%€ˆyö)PH&\0zÑX\'2ž2F8ñ.’C/¬êäG¬‹F-R«}ø–ñ·@H%AíåHåJñv .Æ)¢Ý²ÄÂ‹àð}Á\",b6š H%Cu¯¸zš…+Ü*eþ®2ïÈ\"à§õ­±§òÌ¬²,ˆH$ô˜ˆArJeèj0N`pëé£½ðd›`£¿èÉºH+$àH$ö’²µO¤Ç‡é¦ÕrÏ¼Øf[5!BpWÈÂ¨¹gH$õòVôRÊTHº€žÇœ;ôsƒ=HXïÀJôÓ@HqW„»V#FÙÎonì¿±w8b:$mªèÔb¨‹TApH$õêõ2;&üb©ò’Û®Ìã^àDñ•n…x›ÒúW§ÝÃz%« H$õm©. ¡GúúÂCtç2Üíµ”€ºI9¶DÀu¹CèÅ€H&š1Œ[ÏËçB‘VÎ3ì©–0Â}G½=^$ï>(I!@HVµðH)®~ŠßÙˆÓiÜŽD<§d7ïþ€i‚ÇÃ2xX€Hœµ¨.¹&«ŠDÃŽºS…C™›ÒŠì2c~Ÿ–ig‘º;h%H)„Ñ°ÉèoM˜0ÊÈâ×?ÏîŸ4åxs+­NÀôðHÀ;STŒ#ƒ—6/”g¸ËnÃ›ã­rl¬o°H\'®[²”Ê?T&9Ï®!¶{L;»eòÍ:Â3cAk3ÄÕ¥™àH)Iœ—€^<t´àF~žï[Te“y^¦3bWƒž!²=QFH%k\nCQsé¨šìg:Gð39Ä‰xô¨2Jâu~ðH0Ù8úIè \\•°ºËŸŸê£}])hüÞNññ/_Q¯ç	”6ì•89ñ@Hƒ¢ÊÆÔ;@´‘÷RÅ3š>Ê\\äµˆÀ£Ýg¯¹À› ¾+àÍtfÅÑWf|í¢ª&V›PH°œ€„˜ÂD¸14§ÃS*9\\ýºWŠ]HÞ]¥‡ÂIz;ŽÃƒØFµÀÕWw14A\ZRH²“tŒ’ƒÿ+5íCU	§óI×Á^§U\nèáëâY~“1	wëb\\Ë7FH«Ky1ðÐH´I¶cÊü—ÓÔ‰–ÝÌ §*è´q9›è)ä$ësÏžº#Y³ŸkOýþ°âqH€Hµ2	Úcñú<å6ÕüZâëçl2þ‘þîbi/g°™¿„Öô´È{þìŸï\0`p\\÷THµ\rŸ¦Ã›¸Ü¡¾ûÈÄ“4¹b¶®Æý#]ÕM±õ@ÉK¹vÅäå×JÕ›€H´Ç\"¶D©@úH9Ø(FêAÃO|õ­­X\"ˆ%$´±kd”1óNün¯_j“jH±qnÜÂ3	é|—7 B†¨n\refcúÆ…y\\Ð• ØÙïpIÉ¡¾!^KÁ9DL4¶¥ÑÒH¨ÖæXœ7w^VzRêfâLg~6«ow^¶\r´Ä1««ð±ûzœÊZb€¹¾fNÅ¦åÍÀH£hç²ÊNsÉ¿Ì|è…dfñßo%ª)f0ÜŒ¦«Z·¥BQ@}ÉPeÍ×#µñ€HŸ†è¦òTõ_”Ñ>‹õˆâA—È°ÀVÏ¦Åg;è­öURò¾ÿ•Mî¥ýã&,Hœ†ë¡Ù1>=é$—Bc³­°•ÈæuÞÜæê6\0ˆ‹˜©X3§(µTØ1\\ÓIKª~ Hœ	€Ë¶}µ­%Õ|^hŸaÉ°…ÎzMX}“,‹Í&O´‡\rPÀŸOð\rÏZHƒ›¸¼øóU>BSRM«Ÿ¡7ÙÅg18Ðôvs\n¾Õ´ÒÅ)¥‰ú_iDA¡fàH¬O*:pÿ€ÙFÆÈÊ±ËoŠì~L¿èlþMl0W”‹î9®zfÿ=÷ŠˆG¬~<W ÔÂ+¿e°H¯9<eN˜©ö.A/ °äø…Yt~¸ãTÇ†×UÚºq\n_BÛnÜ£\ZÅæ¼‡Ð—4ØWH³Ì¾úÊ±”«¬Ø+w9¹¶RXŽ{fªÜ¬¹‚¿äuyál]z¶2”ÿ1òH³ÁïÛ†\n;éÝJÊ¡Úmdaý-HÇ›â[°r2ZÖá-°I^]Ë¯`H³¥¬¾‚&Î\rÎ>l£‹¶ÒÈá$Æ*Îðë\ZÁ\'M±¹8”î€H³ÿÔm¢f«f.ÛœqTÀ½6®˜kÔ	Kíñ¹Eõ	QÅ…QÖ»ñ\rKÙùbÉàžp7¼Hµ¸˜àÌ`>çºÀþÎ¤	¨ÿqn¼“çûâRÆË)OCÄûéKýÿ¥5º#-À H´ï]üX½±Ù	oùF‡Ä8tR»œŸ«©)ÈwQŠ86^‰7$%¨¶¶Â8>ÃofZáÝ®H±UÄ‰Sjƒ;þ}t.TŒäó€8+7Úì÷/æjt–­!–Žð…àBO‚§Ú^N›Hª¹šìF¢=úCã;¶D_l\Z4æ£ž<˜6àåuyÿÃ7Uƒù\\goZb{Ÿ¤Ä¼í€H§³¬€‡‚Ç÷hSŠ‹or_ôÉð`+ÐŠ[…òdxyFRë:±ÅŒÆÍ¦†û&gÎ4ñÝºH¦ß¿¦,×ÞŠ¢®rüëÛAzENÈ·muEçq;\'5,ZÀ2,6B_\'¥íI¶6@H¦\\·WYâNÍ\'@U¶V*\"ÿ!ˆÝ¤õòÌ‚ÞT˜‘Ú™µW=öâÂü)H6Î@ezÊRH¦QÀòQ¦ˆ!°r¹s-åì5ÌŠÉ¡‘Ì–uvÐT¿é!$¬Ë/)¦xW÷oÖHH¥ñE­þÉTÀ\'{d\Z;†Þl”úÙi˜]åOÜc)âE(Idù$ŠIÈ.H¡á5j‰È}£¥å8¡Æ<™9‘â@¨Á—~í¬3›[Có.6„ß\0O¶¤š4ßÆ˜0Hž=ûÌ†Åö;h\0-txVþÌ¦ñƒóŽ¹6¹ý&=c†(ÏMA8xÚtÀQ_ 8H½½#w7r¶g–ñøª€[i?eAðJ5ßPÖî_h\\[dv=vóâG½üˆH½®\"ü\nF£ÖŠ\r<Èé:ˆã®‰øÄ†:Õ§3³E\0ª¨$	âjþµ%pHšåf\'Š¼¢;wÅ¯êÇnëo°»Âà¬mmS?·ý<‚6x<õ÷o\ZŒÿ.kví\nŒHª­—K\r¬÷… >Tbê{–¢+¡†uº¤«I\ZçÿñÙ[•èz3/l“æÊ#>.¾Íã½—€H°SÔ>©#íŽ=g*™Y5xö2ªË1~_Á±\"=”4„\'ý¹&b]ÆÇOQ´ß!üH°—Â”%¤¢žgŒ[¬‘a‰¡L«ïÒ6õŒm!&f¢o„F¯\rBêðHä\"\'cÀH±æ`Ð[Ç^ðR¿ƒ÷_¸æAÄ‹Áˆ³¸jJš=ºÇ:¦e0H°f½çeÝ*9÷0ÿˆ³_i›ºmOÚ=à\'èÃòÊ\rBœH¬E¬Ù{ ­»p¦õ0¤;ß=\nGbwÀº‹v¬Z$yó$ÿ|æ¢¯Ær×3`Nêö H£g\0PUhZ3à(Šì\"7ëÞÏå¢i/Ïa)¹ç1ÝUe°¼Eùø:™£‘µl]¾Ÿ0µxHŸ»ü§¼.Ñ†yVmÆüâ_¬ã.P¼êO ´·¯XW=ý‰\'ß‹ Hœ€m?WÔéÆÓ)ŒÈ«øÀÂêHÓã]p†Ë~­*ÇpˆÐb8T2H›÷yÜm´iâ¾½®­}ÑJ¹‚@4cþ ½çcÝ\'Œxb®²1Ö€H‰o*¢§Â‰çI3ËûYS´¥Þ*¨Ñ)ç‹·6ý2œã’0LÑDö«`&Š~v“àHƒ/•I·Ò?±Ðøúµ§ízí%ûþÔ_+<8„Çê}¯ÅÔu!‰AåƒÆ?!ÀH§énËÚP_ˆ1õz1ë£\'µ¯\nxúÊŽ‰Ù0Mox\"Q4«Ré#Q’Ö<#åoH§Ñh‘	¤ÇN¦\"^ÛHò¾}\n‰30 |%PWüµ¶-=ï>`H§·RùîøŸ	.ÕnÁ_´ºN!:õiLwkÎ”hÂqÂ†’O ßH¥Øµ(­gµ¤9v3nLmF¦:§/Ý¯ü¼ÈÈçÐöªD÷ÑÌ\"ïT3t˜|{ÈHžF§t7\Zgq„_ÒF¼à#Ð’‹NÛ^h‚aY<Á½Ó²	ñ™K\0‚D·¿À\rÛª÷áàHœl~½úâÍ×IŠ.õeÛfêñX•IæHz­£CÃ”ptúí’Å¥±¨3?¿æàH›?]bÛî”ø¤G¶•ï”Ã\ZióÄY¡YˆÅ— :¨²FkO-Í’\\iEðH›Ìlh§ˆ®.~D °,`³•[må—ú›¶yÕ4&_¤K’aLî\0èOggS\0\0èA\0\0\0\0\0\0\0\0\0\0\0\0h&9585\'166:.1662%0041+(%(4,\'&+160,\'( &##*))#!&\'\'$(+* \"\",%(&)HšÇ=Zo¢^ò)	cŒk&£Ÿ¡à¾å[ˆ ýÏ2Ÿú‘j-ÂéF²Tj.\nÆëQ¢ôH¨+Õ¦kÛó¬æÅ]É‹lwÓ#4aõ:’Q0%¢Ý½\0ûGÅ\ZÜ´s.*¤¼LËä*¹3XÍ ¡58H«NôœªóÏ™³×A/É!ôEŸàðA§ˆPˆÔ\"ÜâZJ°`Û\Z+¶P µAÂ/4X°$éö€H¬é±ÈÀ3|…wÇÆå{öcxÖò!ÎëŽ<0ÐG„ÝØc6F¸ié„H¬®½7O¬ùo„|Ü’Õýÿ6«ƒÛ¹cHÂ°2šTÛîœ¦ëïÊxÜ‘W¦¿`H©˜L˜õºJÍ~²@,Y2Ì5mêÞ1×£ä!U“ïÙÊæ>@ë:hƒ·j)–tàQçH«AF·%\nº›ˆ”‹q\rÊ¯-üý*‘¾3eCOUÂÖÊŸPj Vö7àmašmBôG­*H«*=~ýå?fÐJxêœ_§j™/®”Ø¨ÀW£~©7Ce›A¥m)¢½Økù.üfôÃ§/7Hª’qÕÏšÎŒi£((õŽ„ŽuŽ®õÅ}Ô|áŒj‹~\"âÚ.“FdódKH¾\\0n…ùþ\'g‡~<\ZhÖÞÖµ¢Èù;|õ7šgð\ZÇþ/²ÞùýÎ= HªdP…¨ˆ`õe ºô3ø~Já„]8ÇÚ\\\'øL?ÿóÓån–zÔºè/q7»¥H«Æ(ÄC\\Ÿ.»/á,^=f@ÎŒÄ³û3ÿÌI\n…\ZP,½ÝŽÆM4øœXh*ŠžÉ~€S-€H­xug’-¿\\çòlŽ“_éAê¢w—€©¹„/¢i¿³l\'îB´+Õ\r#¶„(ÐH®’µ ~<ðü¶‚Ó­1TKL¡3Eêˆ÷#ÂM_¨[ÓìH®ìÛjŽâÄJ¨QDàH™%¹lEM|k…k#ó¼‰ãÅ¥¹’lìH§®µÞ/àSîµœ\\ï)¶¦3-œåŽ$Á²ÃjQgàñ ÃðP»îµèÛ#0H¾qÊ1Ÿ†êP¨æ³[Q äÛ.Æèƒ—[®ÈÑlªò³mò:7e1‡‚³|0Æ§ÚIaiHª­>P\\>Vë0+L–jòZÓ–°„8­±tñ¿xþÙâÑrÕ˜ù¸aŒb€H©zjR¤ã¢u™:s‹ÛŸAƒ¶ÝìU”_º1yãm¹XÕ]².+–h×H©AÿDû¹¥-8+âvÈ.xU()ß+ÎÜi½5ZÉ,bExðòs½rH§Øm”Ü×:Áÿ`¯³QÊèƒÝ8qo6NkëM›¬IËÌþÎH¦T«½GdõèËÊŒaw¯`AP½0çÅ]P÷,GYìîtHJ 8ÞTH¦“—n1˜V~o#Ã©õ|÷0j\rìÖgíA‘¢o8Ù‘\nø\rY€l`éßV#]]S5@Hƒ\\ê$K&ùèKôÊ“åp©vu‹HwïÉ±Úw91¼è<Æ¸ujWøñÐHƒZŸKÎ?OÆÏ Åç¹\ZË°µcn¿!¤¡‹—²›JùÉ2o§³ªHƒ*†(‹è•c´—N%\"#gúR˜¿ÚÀË6Ôw¹­óÉHƒ,:bóMÖeŠ<+˜réàXò?…\rUÿÁµS‰,rÃøi…=ÈH§L2ÞÈ¿ÂQÌv1³]žðPÕÃÕ“4<0©¨¼¤Œ‹!	‡kÓZÚýÓöh8éž¾(€H¤—ÞQ†p¸Ä9à³‰’4…ýVë—å5ítBlE—[ä7´2»ãàVXû·EP|NôóÐHŸÅ”ë®„\"žÑBJ“ Êçcít+ü$,ÀÌEíx²}†ÂP4@e\'vŠN1ù@HŸ¼Î®CâÑ¯žë\r÷†$ó{ÎJL2Vr%Bb(û¶ù¬»œ,?N¹•PHesê\\eÐ-¸\Z9,æÇ\Zy­‘–ƒ»œ¤ÛÙZØ‡‘ïY’­EZH2Ø-Ê‚áHÆñhÍÉ|ç†LöÙá&d@|vŸLvä¿VHÌöVëwè€ÜÞÓèàc\n%y)½~æ{ûÀHÆŒCÉ¥\'Ùê“}†p(áá}GA4ÑTû‰xeåH/*”Q<dP¿œÅŒÊ¸÷Æ}¦5	KÃSëÚÁ‹4iH-AÙ{dÒ]=ZÑ”½DëŠ	ÅÊÊ3Ü·Œ#Î^R]Þó–¾Hú	¾éÎ€fùÖ;ç¨\n©ÛÖ K´|’\n¥\r5žŽ«X	AÃèa H)›ÙÎ°0p‡>À>j2&üŠö¹Û‘Yú+V\Zçç­ø/½B1ÝH)¤Â+JÕ¦á©·gàÇGj`+Ž¨~ec…¿RôFŠLM«ƒr%™ÄH)£¿‹ø`¢MœŒÁDþª•‘hhqÛþ\0ön7^}Ý€ò`H)¤Â3ÉÅ`‚¦/\'fÇöd:z]}\rYçß„ŠNhH)£Á0“H‚ç¯ù¿…Ùp,@Á?s<ýçoTüecteS¹¢I°H)­é^WÝì÷B¯¢…Þ½‰2óÎA†l:Èî8zùq™ÿ±œ¹H)/Ë(½Á£ø_\n gb0È6é	GÂ\"Ôé´ÊßògÊï`Õl©ÐH)¤¬‹L‡Tö	û|\ZDUµÎ!ª?Âv:\nÂ–õóñàâ,PH*7¥¢ç3Rõf=€í,ª%‹îeþWf£—Øæ6RÚ®%Öd€H.\'òÖj\nÆ1<„Ä}èX:~vò—ìÄSI­Vð2_¬×~P¥f5H4î¢.ÿl ÚKz)lûâ¸²tµt½Sa:PDŽÀ–¡€Kˆ¸<(~ðH4¼ú½3{Á+N‰zÀ‘+Té|®î²’åÓ„`ÔlH¶âó®·)¸ÇÝ:té¯o7:hØßÕ˜¼áž}^\\P`H/  —¤Œc\Z§²õ:˜’ª—\0½eÛôm,J§R˜#@H-I.:V›tæRöû7n\n†…kº±‰~XÇe!«/À¯}(1ÇxÀH-HE•óÿR5·Ïƒ×Ló±·÷mîÓ rýŒyÛŒ¹aÜC@H,Úi‹¥­òW67ã—“¹b.˜ÓA½ÀÐi³m’õÄH+YLÕ¹F¬Ê™—&÷~y-&¸DŒ\"Ó8\\Ë”•ºìg˜  ¿OwÀH)¤ÿ,k¿7mTÍ!žžË*?TË1]=+¶6v‹8;…°Ê—','kai ka nukapa aparidiru.opus'),
(80,'Mi maleta no esta','Nukapa aparidiru man ka','2022-12-0515737179718ncesito ayuda.webp',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è`\0\0\0\0\0\0\0\0\0\0\0\0ä@2Ã^%\')*#%\'&%\'\'\' )#\'#(\"%\' %\"\')%%%%,943-,0/3(+.7:2*)*7335207<1$,$\'-06=65872031(2))%\'\",60.-/35513HäÁ6ìÅ€HßtË¾ÂB	¸ƒ@ôk¬ØH†\Z÷a†¢¢ÅÞ\nr2óD{z“”@+>Æ	•&É‰·ÛH†‘\rwoOç—²ò\ZNÎ,ÜÏ<ãGu+•ÊY=Ü°ÏpRíÖßH†¹I#†›Û•ú+ã$gÛ§FŸÊê»òŠXJT™1L?¹Éôë›’ H†ùN°„Ìº¦`aŸhä.ŽJ8x ÍdI•`}ô=‘dzÏ4Öt¤ÀHÜÊ^$7^M1f‡ËÈ»#ì[	\re¹@sêGP¶•¬ÐH!ÑÔ/ËY*Oi÷JfÌâQò—´1´Ð8]\'[^žmþ¶ìH!Ðiœ;‡ú…Q8Cï¾½)\ZªÉ%Ä³ˆû%ƒnRÁÎÃðäH\"ìÆÕb~ºÇ*H]<ƒLëB)ô?Ür&¶k’¶hÄƒ3»ÓøH$ô‡\rþœÆô3Y¶¤èÀH8C°IÐU–#-/7¤Ã@ÀH$öÅ‡ á›v²E¡ñÎ¹íñ¨ÂB\\ÑØÇ.àOZùûœ‹\0ðž€H\'œ¼® A í¿IÌKÃÃþÕü˜yUXêsWpy»Ö\r©] HË q¹­P³tË”úóÍ†~òÝRÞÙ\rž Ã”ìjYäf±KH.—ëÈI„@z1?<JRÜÌQsÊ(y,ïI²¶ÜH‘:ö<(ßÆ2ûv+0õO[GœéÁm™Ösè³{áÄ8 {€jÖH)„4…á:cÄºšFœí†}&8Óp”Ž#RÙç¿¹f+H)„Y ð~£#åîÃµ	Ï••£¡*ÊV‰ðO×–nÒ¾#³ßæð+€H)ƒö•×ÖÍQÔFrÇÓäÝ³ÿ±ùÕ+îž¢ú¢ú7€H)­ò¹\"ÿˆ,8]oÙ4?Œßy€ø²ñÂqõ!w”>Á(Hún“¸þ›”\\xáb-ø‡ìýñ(ê3æbqSÍ•´\rûH)Enú˜_ù¬ÛA„ñ8\"¼óu*ÁŸ>¾#lTåòš7ÚøBŒÈH\'›9žïèèÈïÿ‘g˜çÖbcñNÂ9ç/Õ¹wr{”GW–¡/H\'Å6ªÜ5µW†7w÷ë)¦Er¢õ\"û÷xF=wkH\'œÐgò¢ê‹·VÓ†8\na9˜š=G\\ßÆËˆö <¹‚èH\'›?‹ óDíëª Y²Û]kú;ãj…=8*=ììH•°H\'»ñ¬Hr\ràçˆ”©Õ‡l¡½öK‹[øX5~ì¾‰{1zD#€H\'Ä‚¸ë\'x,Ð}âÁßbûõ17(|·ö¹¹#ÙÕd íïümqôû\"ŸŠH\'œñiÊˆúðn ß&)Ägù\ZV-ƒÎÅ½ØˆžmÛÄ„Ì¼H\'œß,Î\"\0ò£•Ë?¡¿¸»ò)ìTÏ£bbšø€HhðÒ²édÛ7F‚I£<¦©?ªšõ|¥Ù%Ö°þ°80·Z`H-³6‚ %iÆ!\Z)›­p’¿(]SŸ¸$}¿ån°ßå(H- Ñl÷î!£ÅïP˜‡-Z}CA­æ+jÒZ¡Ý²$Ù¨XX›H+¨@‰Q?B\'Ý2á’¦>q{Ó÷ÞOnvñ™â.ãÂKhN¹êÁ~úÃ´Ó H›=Ò7Í}¸Ûæ1‡Õ\\ªýòVªiTÀ¿C@ž—¤‚!h˜$EºÞÞÍq!Ñ½G¼lËöÌdýH›¶ïíjJVÞy„ø=¦q¡Ë™æ2~MB`Ów`	 …†ï*bS:Ãájuôå]G{o´¬HŸòàšLjcÆ1BbcÇ«Õ‡fG9Wè‚£^?ôùvœ±ÊAîá7@ÈðhM/9ÃˆH •°ŽûhšOL°ž½¦šÜÊìé–²Cªfµµ2Öqõ^\'žië€HŸÙ¿X\n¡M¾`a‡þuýa‡oïŠ^ÃÆa¿‰×QTkT†f‚ÏqD¤°Hž·Š2Øä[ŽÒÑŽzÈ“sJòæ\0Ã`®«BNêØ]‹ŸB£Y_“©x§\ZãÕ@ëšfHœê¯žGç	Y0qâ—.Õ•-¥Å­Jï\ZÆÁÝÛlî ÏC€¯å3?JHœ$4k\'+™|Ûpæ0øòŽ³ž> ²gDCMŽÓPÕq‰@A[¸TÏžÃhM@HŠ>§?ÍøÔ¾lBý£±6Þ¿[ñRg˜ÿ„£tl;Šd½síû  „H‰nŽÌýßÇ­×ð2ïÜ¨‚FèüÌ¹ÛcO\"Š5â€©!¨8’­åœGPðH[¡xÉ \04¸$¤‹WºYþúÄ9)•õ®Ì ¿3Ì»hK‡hr9×HƒvÇ# Û¶¤rŸm\rd;Ž„õó^t]z	^§Éýò„$õ#Vä‰µ­Gšb>Vþln®T÷5”îH®Á!sòñòX!ãNÇñsUž@¯žr×¤EéSUûzLÜ‚@ä¦©.…S}\'ž=Èå|:Dlã¥{ H²-‘ßÇÔnÀ9ymdØ_86\Zâðù |o $ñ2ÎÊà¯£Û)YŒ˜ÊU¶=_ä˜èŒHµ•ÙœÒ†+{ü}·îKZí˜H±Ûž›n‡k¶CÈ/k=Ó\ZÀHµGz4¨&‰ç¦²a™*ÄÒY\r¬zÕ\nÆ¢žómÑ=O·q–€H´ëÜ¨ô÷¨€À\r¿Þ1mFØ÷w*×®%ÿqó•äËN•ßä•ùóâ€H¯¾Ì2©\0U¦ÅÅ¾]šOùœËLÃ– Ïi»sÖ‚\':[§€Û1žœg÷	”†™\'1ýžH§0zn×H®YiÎòÎ”ëWO½QÖ	D²©‚,n³x@Á˜üËû·~`ÜØã¸‚ñ€H£gŠ#Fµ@@Ó¬KgnÎÄ×#Pp|)÷ßn³â_<v5t~zb4¤vØ”_úäAìHŸ4bðŽù/\04ç 1,Ý{ŸÝPˆbFûå(N®èö\Z’k<Wó¾fê¬Bm¾DœQC‚ß€HÌbÂDHìsAkùvä¥u\0¤lâtf·Di\rKO)ñWõ‡zc4·ÂÅàHos%Û„6×†6Ì©û¬õd}†ÊÞÀ“Îê©ÚçË†O±Ëš=+n`º=pHö;º\"‘üÑ¥¦WÖS–34È0ÄŽÚÖèá]ZÇHËtIvÿäÑ†/G44³ÄeÛd¡¶J3=THª4ÖVŒ”°YQu]}ç¯­¹Ó;†BlÁ©adOå7pÐêYD#L£âv›¿=Hï€àÀ¤H²³”h‹BŸ0_ƒÐ~üª|Y’˜Ä+UÍú™ð‡OÊÕZÏè²·ÿ\Z5P¹¨H²tcV›äH WJ«h~‚¦™ºàÅ|u~VðH±ö&£Ôý_|MŸ ºÑ#pÖzïÂ\'Š&a%XáRñ±æ\\ÙpH±‰ª’Ü³¶°ÄŸ°•­Ï·:jW\'üùõøÕ†Z/\"ÀH°[i…bìÆ§ƒ3nË¿$ÿ$Ù+‰W…“Þ™œš‡6XÑ<ŽH¬Éƒé²	:=?xÛ‰Úl/°´¼épå&ö±Œˆ¤U²Åq64šiò H«5Ï¾)Ô¸v¶;{‰†½Íÿ*‘Õ^Ý%oá£o%Iœ›K~\"¶Ø¦8ÖÞ¥ˆŒa H«ú€\'û°\'þÂ­}õ©õ	8tÐ\\m0(±:Ko˜1Cðí0S±Ñ»*µ¶|N{³¡H®Kô\n.ï…ør÷Ë’\Z-&F˜OÎ&ƒY\Zó6IÓì¢–V\r6ÈšöûAôÐüÉ<ÈB`…Ø³`xp½xHªãgˆ´ŒÁ—ø8žWðG=è|ø×ø9{F†R#€¥—<`Äú&\ZééYÂ}šú»|ÖN@ZH¥]QøGŽ°ÄèuÿKxï8ª…‡>¸ëœÒ¿ÃìGm¼n:Û +Ñ*°ù™È(ZD–@H¾[ˆþð\'%idUÅƒ;áIT÷4Yhb:ôO¿á?`(dö(æq4ªG´Û—ÞƒQ¸®Lö#BŸÎH¾q#‰ÞÂÒsÄìd]ƒÃËV³á½¬0ú0£Ç<©]cÃkýÿK\0Ë7NlVÝ… åÎÑ\0üÝHŽ¤çÝg—ú.Ú˜-˜DgvÜ¦ôÑ®f(àÖ5t5$³\Z®à†Vµ‰OÄHƒ:VZ×ñ7‡g/Úµp˜Áï‡ÐDàü£¿ŠÑ ™Y2ê2ï¯€Ÿu¢JüàO@H¯9!n ªp;öu›5ƒÆ²’k,\rÓ³! 5°Š?aD£ E2‡ujû0‡Àž[\0JÜ0ÕH±„×–PÛÕ8ºÇ3ž ¿ŸÏÿç\Zloäè©Ô\Z?èÃÆMyáj„RÀÿàH¯Ë÷Î$@Ån¯¨t\rùÄÔØ6ø­j½iº%ö4YŽòÈdÀHªÞ)’í“\'lµàÐ«+´fžq:nô´±yÂZàOA:¸ÿL¾¹»ôçm•ÜH¾\'\\´sx6³ò3]ž´»aŸ¿áuÚ2zÒš³Zç3&6tâÄSH8ÙjFv^MíQÎÔù Ëò,nGºÒþAsþ«1Eå©°vò~ÓU.HH79^w]w§—Hb·ùø¥Ã.»\nXÅ¢\Zï½\'tð¬*Ýöÿ\"H6<ŸÎÐÁH|R–Ö•uFñê	\Z€wë„ýhWÛ™à‘p¥ÄÀH5)AAjÿ&KsÐ€NÌ†5g<ú 7gèf®½tëSH|ŒtÎÈ¥ùô¸YÝ‹àü‰ŠÐA2¼r—k¬rå¢‹sÏ¼ÎEÄËH­”Æ*\"H%ù.ð7¤‘ºýÏ_Œ£VCD{M¥éAÍj¼sŒ¥ƒ‘ê…£§;8Ç«ÃóAøH°N™«@m9Ÿ0„±§N;˜…þÙ¸d\r»®tQÔ.Wšs1—¦£Qûþüy—´H°iò»Âê/bƒðv\\†!Ãà¤l—\r°‡Å„\01¤„è†¯:eÙ9iZjöH¯ÄÂÜ‘¤¢&Øvn.:	,È’ÞLÐ¸CHgu~3(¼a!Z®´6X‘åÄ_8Hª÷\\¦=[5¤‹¸.îó`êÄ=Øz>ó˜×rw¶ywk\Z+\Z‹¥<b€H©ÊV-2)ö\rHP._œ5+—&¥žfüUV=¨ENÜLB\\†Žso=H©ŸÝz_tåÉ¥ï©µ«\r”ª>¨`¥ç†0±çæçzúY½Â½ü«c–shúÕpXwŸgzêH«0”H,œŒ~0F\ZS¡Ù2ìÕ¦ÓeVV8¹¡òžj2ÌÍð»¤™ô¾Èv\r˜;@Hª«0R\näÅ3±™˜ØmTx•ã+n±–ž0ZŽ´ ‹!ð-v‡ûM&Ñ-È%¿ÍÉ¿¸H¨nEãtK†—s•ñ³Á†rO§¼Â{/ŸÊE7?ÐöPRpþÄê4í®¼}ô™\0]äOggS\0\0èP\0\0\0\0\0\0\0\0\0\0\0\0R“–Â@11)*+,=03.)2+024842(/2*),**.(024:2-,60,00/%#//8173!-433+*\"&%%$(&H«€\'}ãÓ•¡×Ê²û¹ò!W²À	}zRÝ-ìð#ÉÛ‹Ä9J{êMfŸxŸtN¦ìH°G(ë‡âó8”32f•†ÁÐ¤Í`#6ö›žzŸ5ÓÔ…>º›rÅ{R‹­´±<H°G)àÑŠ³)¶‘­…—k=RÍB§+1XÝmbÔ3Î:Êf×ns\0NH°(¸\nìèkR!ƒØÇ½ú^êÿ×mØ³R.[÷ÝXÆD·ÔV¦ÀH¬ÆýZ(¸HÖStµkÔª û*`—4 cbU%îÌbï%¦´a†óÜÄHª»¸Œ§jÙóÄº¢ûëå:LÊ67ƒÂá_¨AÜü¿BI–%Â+ùÿïÀH«\\ÃROÓ$fŒkû#oÐmÕBÞç›o=O†¸!KÑú´¡§ìÒÎªW4sk¥ÇöŸÈÉOÆp(H­3[³jtÁ«\r‰:t¬YH©/‹®÷xH°NbmRM´Xæv_Õ>+Eþáï²Ú÷b\\0H®“	Êúù¨¾-Vé@GvÓÓåLŽ¯.¸©.[›MM^œ•\nÙ’/I\"×uûH°n#UÌ\ZÔ„€M|åcx¢ÃCýhÙZŠ^µ\ZçF×Ë:êHÇëµ\nÇOÛÌ<H±ßG[¯C°ÞÆqD¼Æb\"jÊ£Ò1GÕaÞƒ\0FKäX:)á?ô<¼@H¯Óé}Êf9ïÜ;È×n\r@xÕÅá€]¬(Åæ\ZÁ‘ÞTBª•óWP€ˆ·O)ÕH¬áü,‰7‹^†%÷ƒ. ~ÇõªS I©mDô³‘Ã”Am\r0Ä3‰ÍÀH¬ÆL:{sèå•—¶é~#0ãYLSoBÒ¿U«x%Ò¹?á‹\"0¤ H« ó¸UwœJ¥¾¦\"ïà1Ð8<Lö•é©¿Yä@©×N+@Trâpô]t“–Ò\nH«¾íæÔ2ëZ2[ã°Ð.c­1Éè‚%YF ®ê‚J8{!X›ÍÁ\\ŸóýñÚ˜H­\0#å–aö®2–”6zcÿ–dÑ,ý­úê4UA›qÝ0?š¨>6¢å(„ìn·ªž ÔJH«I6îíWëÎ‚	ÏÄ–|6C¼	Iåâ›~ËP»Q“£;;‰Ñ«Vg†l£õÆ+Õ|Í%H«ÊöøÌ‡{.?ŒçÞkgnX§=RXuhÿÅêÖöw™¾<~bŸ|ªÝÿ»—¦ÞàH¬Í‘×¡ÐÙr\ní:ü5ƒn\r¬†»ÍÉ-Ý4^‘±¬Óé<¢ Hª±¶Žóè%ý\'ˆsÎŠ©¡qÖÌÑËðy;<\"·ð\n\"¼8GÕ“pð×Só¼FlH§Nr±ý\';#3`å‰ø™9²ýõŽjûufˆÙÇÃ]ÌNºýWvb¸óýEõxDH¤©Ò€vz>\rëKq=ýSeêš>°ÛD‰—O¸~-\\„‰ÿ­,ð]ð‰H¢UÌ¢öÓî+ú˜¢Ñ=Y1Ê×!¦kRB{öe_­÷(Äªaº!úH¡HK17ã39¤?aš’]ê3WÏðœNzOÚ·÷.5˜²pÞH²O<ÍÐî/\Z½ñÅ|ÂßÇNÑBARî(,·ÈÉµƒ-‚f@HŒrn´7ãPþNcYÕ¹Þ”©:5àÙ¹f–ÊæOònXEÞáÜHœr0p¼`O/Ö­œø…/îûÌ}œB\ZúÖo°ÂÃ¡SÑ‚13—òxßÒ7}JHžºò’†—uD`ƒ«´i$½èòZK 1iÒÍIj:{“GÐHžºåLéÒ±×«k½\0j¦æªy]–\'Ø˜„xËP‹\"áS¬Ä‹S¨–ì\rúHžÅÇÝ!,çjÒ	~@\rXŠÚïÍž˜x§üC¦Ôï–ÆÛ–Ë­Ùç}5h ùö»|°H )Ñd°ë2ªû\nb£¶%Òï.\r›0é‚¾qYÍÔ·ã\\4È­¦q46˜£Ð¸H£ÁÊï«³•>Ì†òD™(\Z|ºNµÖF<¦**Ð›¾|fþ<üR¨Ñ+ð\\Ã!Ó~ÐËùòk|§„H¦–­žKóŠ_/´	í¯E™œH»cúÑ2	2oýwÉ:µGÛ€ÊVH%­²^~§S€H¨å]¬¯záÛÇ…r2Ö\0åÑàzˆÎ—½ÆJî¤´3¾ÄïÁÝçä€H©›F&\Z²Rƒ[\r!­”eÑûkºh$éU?ö·jYFê!µ`UÈH©›!i‰|l·R÷^çÒè_x3èÿf2+èn`çGÌèäeOYBè€h¹W¼k4…,kâsàH©JæÓ{î‘Åc€\\pÔY¨åž¬;®õþÚ7‰Ü•·H³CHcSØDüH¤·/m-ëõa_õYø$¥‹øœLŸWéJþ³—$=!àd%Î¾¸H¤PÖX>ßPî¼„ÝJ…f¢ªFUG–‡Œ¾D\0Åá1¦»&Æ»€‘jd€1Ã€H§µrÞÅ£\nÇÂ@é¾á¾4Í\0²iµÒ7víðpd½bn…:á‰++[žÐH¾nY\näø8 3jóáþd…%n°\ZëülOMcÕjE&ùmF0Ö.üù³@H;a\\½í´·eï‹ëé(q	Eÿ$Öè3»…]|s[	y”ð–±øHŽ äÊÌ7Õü‰ôS†wîËKw9ªæ\'4cH;ÊöÝæ\ZH‚¶]ÏÕÿ	Ãâþ•\0çPÝw«ëæe—\"Íß!ÚA,¹‡ìsŽ=2”\rcHƒ£¬µ\r¥àVÖ\02k¤î’,NÝ#×uýlˆ,38È3ð“P<ä±\0åUã+îèH°¡B<³î kAdâÓÇ`ÂÿM\\à8W}æ„Jå¤m!eë§,r%i¹w±.*î`Ï:Oøg€H³ÂìÒ”Àöë\"8N‡2)*œß~‡¢X¥Ç\Z$^ÁDÓ@ZL]{JOŠ‰‰×©eYÿYÚ€H³ßÚË˜Yè]CîÆcK‡³k´B5vGÝ\0^79±,V\'Ôê±Øäî¤V­°¡9W³”ÃLHµ0ç~ý4å³ë%§¨ßZ¬Õ¾aÝž%Íjáùg­¶*/¸Ê?µ·k•ìíˆH´ÑL¹Žþ´óÍyÒâS¸Çb×QždNÎ—)@ÀãH³´F^½\r¥eQO‚<A¤¢¤¸^f{`CÖ¹Ñ v:¾dÔÕ³×ó»;ü0H±ÁðO:ŠÅz«$\n³;¡’ÈØxxàÙdš3ÔEyÐ[ð«øKWy9Ø´˜ñ¥”çe `H°g5jˆô“h2&l&£*YbAAgk<6;\0£3áY°p+Z)4Õš»ÊyûÁÐ‹`H°\0…Z@¨BI€Òüð—g)×$\0É„ÁÈ2„“ÀÁÄ=XÅb\Z“ÕevÅÜMêF¡¯ä€H¾º@‰H~ã<›Ç/0ÊÄ2‡\ZJ8ÄPÏÒŽ#¼ëçRù = w®¦–HŽ|\0¹³©f˜¿Ó0éD#‰;½£³šç~½€‹þÅ-zˆ=H:k$*rÍ*\r…EX„†)ê€òeØü2?§¿~n)€H8¤ñ`R…ÞI37Ãå¡ñ±¯HVôi#ZÓr->Ò²thiÖ*H6{pùÛcöÓÀ4ÅÌL“ÒŠÅZ	b?B´kzZßÈª\n€H6hî]$oÿœUû©ÿ°&ÌN¤ÿU³â6uxrñÁŸð¤\\H5)@ìˆ‚œ<úäëã©B¬A}Ì—¢²ºÚÏßŠükðH3¹{3¦§3å©¿¥øRR\ZVô£}ðäæ›â¯‚²ªÆH2ÖÏ×6¿‚}ï\'ÂïÛZ\"„xÿH+ù²£¿i.V\0ÜxŸTbh','nukapa aparidiru man ka.opus'),
(81,'Â¿DÃ³nde me puedo quedar?','Â¿Nuka maipitak chaiangapkani?','2022-12-0515753124657que me recomeinda.webp',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0hh\0\0\0\0\0\0\0\0\0\0\0\0=Ô‘`%-%,\"!##&( %&!\")!$!$#($&&\"(&%%#\"$($\"*((457=15028.14945*$#%8668446--5,42231/100:42.-01;/.%*3HäÁ6ìÅ€Hâ5ÈQ\rè™ã·IÅ(5ŽhH€¿+>)aQ©[ÎãâéñìÃvHš¯\nßvÂâ-z@H‡˜èF\Zn|šÃ• Ä™­ð(²˜—0$á’ÈšÊ=]ü¡7V$¢u¢°H‡.}8+oì¹ÊV“™™ö§•TxCÕxN0hÏAiX3l‰h6H‡V9ûE-e¨Õ\\‰Ø±\ZþdÃLuO‘ ã†\n%_@ë%Pµ’å¼3TH\'›O4 ‰ÿB|—iÌÇ-æ.¡E/ðt#Œ\0ö„9¶wH‡Ž~Øú¨)F+ó«Ãëd“’)\'pÙè…ŽÁ_fH\'œ=!`›þî\r&à:Ðï7Ý#Xï9Nëï ½Nkï[á–qH\'»ò´]I[´c*å}=F—\rz\nèCË«Ž\\=6°¾‡êÓÖðH\'œÆßwµ¾ÀÑÈ¿ÇËú‡·¤ç\0‡}‹¯bü¥[\\õ!½ H\'b«I]³»æ¨+·ÊG\\Ž0à8ò(àìI_IRš÷•¸\Z™NæÏH\'›9ŠŽ\"ƒ}ò¤”³ÆsB¢Š?¨R‚à<W}­™H\'›Å\ZcŒÀÌüÍ°ÑÄÞKVn÷1ðX“d^½›ê½\rã`H\'Ä‰Ø}œSZwSü¼è,=ÄØ	1¤åþÔ*ÖH(HKŸiÝIa3Šqüì‹S„ºýÉ·Ù´íÝâ½¨7óðá²EG Hõal;×|cÑg \0\Z\r?Õ¡ë±I$Iã™gH)¥À¹j$‰é\rdþpÞÁcY4´(›íÅõº\"Y`úè<H+—Œú@¸šjxç©Õ¡+‘¥xÄ³uþ7xUg%º¨¤D@`ßÞH%…YrËµ·Že¿t/m9¨BØ“lŽ@9?3!H)„ÕtýhÇ•\'’Y\\Óu&x\"˜pøŸ€EÌ#_Aózó¼H)®«|U²ž~Vj8¢§pIÇ:íS7àŸIËÙWØÝH)„ÕO0ÊžX5í[¢ù±ÿ¼¦ÙÝ[ö}6úq›\"H\'›BAÛÕÓøß|,Ç·[Ì\\ %Q/ôÕé˜àÀÎ¦-b`×€H\'Å3mgš9R9ðEï33›ÃˆË…æÊÒÉaÑtÿ‘H\'Å„°aÙÅÜœbWÊrÈmš¤†Ÿú[ƒ§þã*ÈDí¤`H\'®o‹g7Š„¢çÌoÆmX¶¼RüØî)ˆR·£˜ÌŸöÉJlH\'Å9-âªÓ–ˆc8ž­ù—M`å…ûÅCË0>ã(íSdPH\'ÅûAÁ¼+•Y|6L‘}®@w¬zˆz=A†–?Å¶-H\'»ëÜ~¶ˆ9y?/˜¦4Ô>¼_ÞÁô À{PH\'Åët¤÷“7[r@íÊ\rˆÚ€/÷µZ„’ØÃÅÊ\\ôHq‚)›Ä~ÜO‹iŒ²‡¶$F xáh}æ.ì,ÿg„Ùe€HtéR(^dIR¬Šhè-Ä;ñÑóp]I+@úŸ(òá.€H%;XåÝ¹Þ§ŽQ¯Ñé?µ>!k¶-ä>½=ö,\"G(¹Bk@H$õõ\"ÎÅ×Ù<à+V¿ÚyðLlŸKœ·ÁBs§µà\r H%*e§ám:ŸÁ±­¶+Ð]i÷‚…a`cušôŸIE¼I0H%;-ÉèÌ™µnŸ$<A¸>cç»IÖ/¬ÂÓUH$õáÆÆ¤G6òs«\0V‚ÙÈÏNòØ£c÷Â¶ŸgN§‚Mž€H$õðO¿âŠ;_­ES˜zÙt±½u’«^y\n€¯¤Æ8`w@&ÄMHH%€½òÙÏ`‚ÐÆÞ@ÌE»] cØý\r”%Y»vOé0Ž@H%¡ÏaQfN*á!¡7HoR.8C^_yÍS.¡¢üê\"°H%*m0Ì›d¤—1ÂÈŽ;BúœÖ.êý$ˆ²µýgë—dù2VG€H(MgRðY8Šž.[†ÃË¤0^þµÅù\\ýDDgê¸‚hjPiª\rGÞH)®\'©×½’UgÔZmj»T=Sn½µ6W«RL¤N ¢p¶™.1¸pH€¯ÍÇ-!îdÕõ¶U—v>¥Êþº®§b¾QÖé=7ÁôEÇªÄw)vâÂ Ð›ÝY^HŸ.‹´2/¢/¦Ø.b-`nß-9¯Y×Y÷ ?z‘îªÑ›gSnñÎ©Òkiíio’éy€H¢õå¨ø) \'jÜU=†ì-ìê¦³ŸŸïå_,\r+òÍŠÞª.rüJ//ÖÑÉ‰&Õ’—ôH¨cP–v‡R€ÓÿµP`V‡vHgÕ•x‹\n¬(˜€>2è‘XÁƒ`ˆÚŠ±^¨SÀ‡6áŸ^^âdë…\"`H«)Jå°ÀI ¹{û-â	ÃmïÚwÃÉ¥\"ëÄnqg	¾æEËJ4nºyH«0 zýgáhHû}w6Xú`“¯d“P¼cOôœÀ‡Ëè^Œ°­	c¶8\'êºYàHª³‡»Âüˆ!¦‚aÃo¬à¤q¡=‡¬!U„ù£@\0Äxt.;L/ÔW™æáD[/U§æH§-Ÿ¤Â£ácóÐ;T…÷Ø´ìßrþ»«’”Õ#õB Æ¦:ö!–RÓÜ1‘ï@H Ñ¶\'P„=\\l+’ ‚<Ðõ—†±éKéå¢ï¤ÒS1sÝ—I3ÛðmX\\r—ðonÆâòhHžFlÍðä{õJÄw+ò	‹¹\Zîw_ÃTïDäC¹ËhW“Qº5´“HœÉàhwbâÞY9çÁyýd,¯¼À|rùØ	¸N‹kY\n¸Dø¢šåR	ÏîÀH›½•-z™Yú­ûó¦ÓþŽ/[}\"ñ;È¦\'¹S.R-Ü_ð\n<‰¤§\Zt¸H³j¹îA]Äf8uÁ¾Ÿ2ðYýS$RÃíRÎ¸Š>i%›\\$Çmn=LÓ\r‹P³Á…¼ìäáyZ€/8@H¯:N=]-ûožÈáÒ2WŸh 32×„â°¸Õ>x›§@2ýZ¯‚ æX=¯WÓ‰PŠHµR¹ƒ[Ÿ“‹BÙýwþU|ç¯a¢ð‘-¡S%j„ñ\Z~rÙÊƒ\0QØÝÙ lî™1Ä\ZÐHµ„ó†\ZÔ7Ö§Û\ZXá#¸¥ÑXG\0ÞUÍÜæ†Í\\¯’\'}8H´òVë‡_hñuM\"º^dÂ#	\naö²t¼ü‚°G}WG\ZH³*üÃ\n9°\ZÖ‘•f>/ä„ÈseœQ_³š[WÐóàH¬°Mð¡-ªnË¬/]Â”•€xZ&Ÿmiˆ:Xoq±§c.8Hª–RÈ„¦yµ«ŠÌàîs9Gý„d8.KÂ™Ä:)Éh½½ØçÝFjyƒdÔzYQÙ@H¤²ÕÉÏž„VØúêaŽDŸTÿ¼É®šæ©–ÙH¦\0BæPÙwÐC`Õº \rá·ìÄòH£Á\0‡<\0•ã‘ö¶¥£Ë[ÝBØ%£Rëí&zRˆúz>Ù:öê\0§‡ÜgèUf/ÖÂª»H£ÚJhÇvGV$°>ã½^4±ë¢¶ŸÈ‡Ö9èW”¶”}ÂTÌ/eå?¼f¡…Ÿë<]¨H¢(‰éh½ò&s-j—_Má½Ît›ž…\n’—¸ã1åóp¢ú”1¡ˆäõÎç½{†\n˜õH¢R;sÉ®É·³Œá× &K\'·‘\n,DöÉÛÛç¶M÷å‘¶m®ûZ”õ$áQW§Ù!ÀH¡vJî7ˆÍô–àtôÉ€ˆåßâ‹O(“sù„yew¿€ 3Á^ç,ûV×²:òÙe.H¢r¦­%É\0ÕOC½—U&ªj_ÓÑÈq:>ð\rBµa]Lýßó_4«’-nH¢¥FúÛÜFá«ãZ™´|ÚCr;ÑcŽ“Ð)…ÞælÚè[yïw™˜qù½š@H®ÅiýQ£³´øsnÅNÍ\'	œöIAA¾µ}h+ã*´Z0¯~CHB‚úõDß ¸“OÊ8øH²šD^2r:Ñ£ïNv]4¾ÌOT:²ïÙà·“¼2wÁÆúxIÞ’Ó€“ˆàH¶ö3ŠX_2“8Ê†ŸT¡¹ÃÊv:­¡‚\rv—”-Ä!>ÓŒQ<ZM”“{Í¥ðÕA @H·»nâ\nVi§Zª;`¾J©‹á‡ÁO’]™)ÚW²^ŽÝpYºÇ|Ú„~0¼îê€H·¸…jv·P:[ÁÇt3Â)g..$ªŽË&»¼¤ã‰‚³jdhø¿½{K€yèjùH´¹ÙîÇÓ.\0ê¨6*ól¯sÏ)QÂG¿²ƒqjAÝ˜\ZÉ	Õ!äº1×1öŠ	`Hª©Ô‡g‚‘®iþˆÂä†¤ñ: Oé…?Ð¹4‰8ÏoDbÉ£ï†A›BïO$Wò	€H¦%bÈ´ñC—Óuy6…îXÄéŸ‹ÖÈíö>--Ø±›šÌQÁR=À¹Þ¹H¢P<+¤_0Ðäí©jG«^ä¶³œ¢š=\ZgrDàÖ¬ˆ#R`‡G¡wÐZ“û‚ø€H ×‚¶¡KÚW<¼ec1E¼–AÉj=ñ©ÒÄ¨<aoO™Î›h‡lÔb­@¸N?VHŸ5dtþ}\"ŽžŠ*Ú¤ç¨J	&ñ#âeŽËUdÞc[z+U?É\"Þ8p«ùòâ¼FNH«ïSÆÆk‚¸Å‚Æá§ÑCÄœoiÏMFH‡´ét±[›}Öxv€å_¥§×±åýw¹Ï#‡O2H±·å<&Ü·”þÜ·Pp‚¯¤8\\­ôžö$ƒW¹Ný¿óÜÐfs[7–ÖwÖâ€H¥ñW—yz?å3˜Ìò À‘}è¿¹vŒdB5¨³-¦0«’~7¦J=ÎaÂl–¸Ô¨ñ|HŒðõAq1Ê¼Íl‹¼\n»]5¹xþq*]ôi˜>yB¨Ü™`´âü¼…\"‡+HŒG:\"*ÁdàY‰¸IÙƒÐ#k úi!%£Î³±Qù\\ÍdÖ;&·°\r¸`Hœ÷­AFå€žøQø0ÇÑ‹ÍÖ ŒŽ1v¦´¶(×Vï½Ï35@±ªÔHœO³>ÿ“Û/ª4MÎ+M5Çh)›¾?Ióu×½A«ÄííJ\'¸€…²šÌ”¦Û H°ï$ò:Ñ@]X2dÑ÷¤a\\œei¥¾å\"úÿscøa©©\0N\r2\\À]›¼äI.oï°¤‰6vn@H¶æ:“ÇÇü3í!W0HVÚ6WqLq,§Vò\ZR„0¹×®¶A~J‘äNn Hµù_\ZÒ Œé\Z\\8{’èˆJOê|§X$6\'=`†5)‹øf·šL~W«7)!„Hµþüh…ðü¢pÀ^Ú ¾?}oÊ}b[0&ö‡íÈEYMœ«4ÛGH´Ëûªè¹goÍ =r¡i§2†ò^2Ÿ=\rÑõý;KÇ…0n™Ï™—¡¨„H¯Á~ÒÍy.hˆ\0È¾	íg-ÕMÝ}dmF³ˆ‘Óöîë³%Ö„#1,p%2Œ-ÎŠ@OggS\0\0è›\0\0\0\0\0\0\0\0\0\0\0\0§ÆÆêR./0/*((!\'21/,3,/*.1+&!(/,.97-1040+&0(:1:+-1..01/6,/53563(($-)##\"\'$\',%\'&+)&)+/%\"&H¦ ]‰YÂEØt7JPñ)<ŽŸ‘Qh¾ØPCø8_vêxß®à§1õDáHH£b)A—vz¼?ô2q}=®ÐeR¡r¨ŽMAYl¬“Jv	dtzArâbðãÎjŠH¡%-lûŠR¨:…g_§ónQÿùÞç½sûšæ£)7£ø\Z+›¡ä#B°HžôB€ôËË…ëí;cÚnWœ^8L¥:èâ±RÆ}„µÑ&G¼c©,ú¼·J‘J@Hƒ;?Þ Xö$G`Ž!? »?šù.N¦IàA¬²#¸pþØ•i;€Hƒ©“&\0¦B¥…ŠV9&6ç°Zà½>ó²~œÕ%ËëD•º@H‘6ýOhYžM¼™­M,}“”·ÊœR«_ZÓ$m›;)^)	0H9j úë%ewç«V‘íÑ˜ÃlÀh¹8¶Ž=ÀHÒ¤H<\Z×/¶SÒÜ¹^Ú\'¯\0´ÆðÇŒ/1i–¹¸é4HƒŒ™@yðç5(øU/d×;í›<ÏÑ¥•nû8„sï©àk#ædFh†µ÷»œ8Q”“…˜H„·¼$z‘ÐÏ†ãz?µt\rmR(±Ë5uKQŽý µÙÃ¤ŽÍï³øŠ\"@H”¼;ò>l»ãÅÕD)©sƒ9\ZÒ\ZoûÈ•¹ç’Xwï/<CO±œrÌ“›ÇH’Œô@V2(¤0oÙ–•ÎFG%W‘ÙY æï›Y»~&o¶Pi]fÀáÄñ­H²)\r·ÏY2òDŽô6+X³ìTa¸îlT«pøÄŽY²)‹c”¸$Së¿±áF^rH³•Z\Z\ršùÒb@¦E®~<þ¶Ç:E•»ùI©¥Â:#SøÒû{2€þ ýÃ«@H±îºP»äî	rÍ”‡Š2Ôét±åõV}W\n#B»µæ’W›$£êH²\Z«ƒ!MúÄ‡e+ûùÛ‚E>}h.ì=ë†Ÿz&jSgYöApH±½ùƒSaJ¢ç‡§W—lýÕëñºkÍÃø^Ûn	dþÄpš…`OQ>1Øy\\H°G.Ýû‘Bl\rGXÞÕ”;Š:žô/êû\0¬í¾FKt‚ŸM>¿/sV›èÙH².jJ^KM¤^\"è®¤iÛåuB2µ–eßè_\ZxŽVg±¹™rá°H³Í‡[ô4£ŸRF<û¼ÿr@À¼¨ÎÎÍÝý®°]î{y@ê“\\¸H³¨ùÃwr6®Vnþ\nC~à4m°ë´xfØ\rš©dH²•Oð­gB»þ+q?¸^G)ÝS¯+ð‡ ÷·»¢$úH±åÌ…û¥Qüûë+·QJhÞÿ¯NfŒûº&HþÈºÅP	T•€H¯Á°ºù*¢W»—ˆÈ`†~{4Y¶Ðíí×od\n>¤¥š;sUUú¿=ÅÆH©\0¸/oö9£Í³N	Å–ì£[˜ûŽ×QÃ4EHpÛFXðy£#—øDH¦%Ü“>Ì\'^>²ºGþÒª#œš\n¨K¥SáTñ\'Ÿ²Ðù=^š­90AÖþ,—H¤/±l\'a>SYJÚ¨ˆOCR—™f¡‚øÅ„:ºçù™/ùoû,‰Ô¶–É9Ùsc H¨‚4çý1\\DaªÛ+µ<\\s[•U]~OýsRÏý6ƒ„ö¸²	(¹ÿ¿úz0,©èFH°ht3ÿ+¢ -_0aâ­»ÉŸ È3h¾@²ïbéT’¾\"O±°»»*ÀH°ùb„­ÎÁ3þÐúo	*E¿ê7?6xÄó}s†žšô¥êˆtÖ#â2¢ÙX®£^ãÿ!H±vy¨B4ÿªvÙF÷]/)MÜÓ`ÝHÈd°-ÒL‘N5ô½šù0A„¨áÁ H¬Y¼Šû¦hŒµîÆL!ø½òv¾Á¹”ÛdC”ºÕnÝùe2éW×ª9U¤+Ñgì2H¤¨„Ý«6\rFís0,­œAÂpd…Õ§Lú³¾dþH~øvðí\Zñ}ti¡³Wö2H¡%MÇ@Pñ™6,¡ZEóœñF¿p©í³ß¶$Æywm2g²ùqƒmP¼\0 H7ú¸œ½9I“®<9¢Céc4]HXPKpuû ËÏ©e#(˜HœtÞ.![ä»/ßÌ×/®%r+,§Ï•ŠÍhœµFÑåI?}°J?u‚ÝÙÙ`H;Ò5~ç_µú%Ë.0•\ZëŒc)“o4…-€H4¿Ê¯2ŽµNôêï;•4»—/›2Í‡ ã±M*]MÆûžH½±’YºF›”CB«Å·k¢ÄÔŒ€j3·£ê€ÒV*R‹l!|÷_Ä]Â2¾,á#èšòâë1döH®›7\"ã`PÉSU8)„Ln¹;¬kåâƒ®ÜqNkMèls’\Z¹Ìé¯PþÚ×Ê‡H´Ì—\"Ë>\Z=abõ4æsÝå ­ÕÎw”Št‡.ûˆBaß,ãékWÈ™ë)¥“y–ºÊã[…H³´ä§|¢h	“C‚bçšJ§¿VÆ\\àý\'\Z˜ÏÃ¯3V— ¸j/ÚÀH³¹hœ»ñÑvþ=o°Ûp€j(ê§\"eóœª¼ËPêp#tc”ÔGM¢©PH³Âåì.µ.„Y}šÃ±çþ\'Ëi€{…“”âRRF¶1¯=çw±õxi&€H³Žó÷øíöw(Ïõ\'ñöi¯?ÞËÜv¹ÁøÐèf©ÃÕÛý$qôÓó|Q¶ð`Q°H±}WÎ—‚«	ê^Ï¿Ê;ÒšoA3‡ÊAÜ«7´íš¢de>™êkä£¥WOðHª¹šÿáÞëºYëÄÕØly ¢+AÂ09X4£CP‚<Oñþ™B\"²ŸBðKO/zjH§»:[P#kÿÃä*Nä2*™(Ôò¡Æ’õæF•CÞi—_Ä\'PÖHtÎ—ÁcÜ’¨ëÌH§èOÿµ ÀKÛ÷¹ä®Æ¯ï¨~0\r‰eqs=ÚÏì›üÁbÔëHT¢mnˆH¨3ÎMöÜK‰ýG¸ êÅb+¬‡¶šrSÝŒÜNÅ˜Ñ¨‡B\ZEßþFXVµW¿ \"nðÖÄH³ÓÄI±°§:¸-w!É4·¸Çiö±kxržY\"£ÞÐl7¹79À\ZóìH³¨4\\Þc€rò	ƒKZvÎë•0\"›y¼Ý\0Ü¾(U.dpÚ1%¨pª\\?zo²£H³Ãð±j}^|¼õ»\r\'Yß©ãmªÚËÊ¯Íö¸?NšÇí¦3Ë`ÏKûN^#´”žÀH³|\rWœ(„ÒÐ‡2Õ­EÜ@ÛMF@ÑØL2n]®2°ë\'ÕznêÔì,)Â©ìP@H±»C[;uÏMLÇ„ÓåÍ\"#ÁE	$ä+5ÝD?29/_ü-­oeµ·µÓ4òH¬E½WáŠ!T‰ûõ£ ýžŸ¯Ûð%¸ÁÅ8©€Ëm®­þsH	fO.¿ã©¬Bê¦ˆ8H¤ªƒc_3ÑS‡Î½*¥ÖÉ\'éõA)\\k^§‰w¥À=Dn\r–ât*ÊÛÿ\"”öf©HŒòÍ‰Ad\rÖ]¯¢Nü„…sj¼–fÞ,@‹;U@× »;Y‡å¢HŒN;×öTJM3å|h”\n0éô€€»\n-ÞBr|\r#¦¯M£Ö:„ÐUlH73å|üa@«öLl.U2Á©k-«O5Wjy‚%\rÏÄ€HŠ`÷¢\'çŽ³‚‘=“Q@L²¦ÝB½Ï<yáðþñÑ{H*z/qâ2w\"”±H4åM…òè3²rÌ‡ñ ¹Ù±¬ Î1K‡\\7³®2©}P=	•¨£­OHw±ï;X€„×®TD½Ã<Q•XGUáÒêXÛÖ±(H6=‚ðr¶\"QçœÝ ‰í#¡Ë®vDS8ÙïÍñó*˜^0H4heö_\rþQ#²!‚#Çé²°Í®”§¦Ý	£¿ÀH/gy5¾ÖD§_Õçp<\r}\n··Zþ‘åAf`¿Þrîö€H.ÿáž“6´P|žæ„‘øîÆ6œU’¹ÀÔ6p‘j[DHo|V|c&,rƒò¨×B¬¹†²ýðþ\0à¸¼6wçÄ¯¹c®¶ëmH1PEÔ/â\0ïÔgÑåe»‘\0•ðRÒ‰€ÝI_sNêßdxÃ\rìÐÆºW\\H3/‘9^qÖvUË£:NñC\Z6¹÷ñÛOãµláŸð{¥’Y¬Hð­ÚE†\'ø=ï*Â›±£FX8wgëö\"˜Ý/Ö³2ÀAÐH3ÃGšCì®ÿûµïž\0²·­UáþMb„Qü»žyBQÐØH4òºö|cw>ë>s¨ïdæú”q3ºR^på“ñê;OÔc8ÇR¤XHD‡fyø!FÚ“Q\'ðÜ`a!ê£ºX`sÁ¡ˆ‰ œw;OèH6‹JE:V¬O•.Bh¯I@Ïž,¬<€WDÂsK:ÞÑ2$h`ôåHŒPà`þ(=>ª•\0™.ä§¦öâ¬	Qß‰\'FÍO¸étx Ó¿Ú æH7SÍÈ	~J¯JƒªÆŠ‚Ýª~£×.”\"¯Ô˜-c:0”É3´ÞŽd³[øœH7jùmø9;ãuÒHdf©ìØéäë±Üð6ôh©GZiÚdžýÑvü”c6M©;ÀH8#ëtsXß¼ù÷0\rîdÔ”¹>ôØÛìÝ9i¶šjô8—H7:E<Äè[ªÝËUNJ¯ AZÈHOˆTŽ}^;Úçåo8H6mÍg@a~üïÂ	äsã*°äS•ËÇÊƒm’½uÀO€Â½†°','munangi kai rimadiruta chukapuanga.opus'),
(82,'Quiero una habitaciÃ³n porfavor','Munani sug atun uku Dius manda','2022-12-051587165723habitacion.jpg',5,8,'si','OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0*‚‚OpusHeadh\0€>\0\0\0\0\0OggS\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\02ì¼OpusTags\0\0\0WhatsApp\0\0\0\0OggS\0\0è~\0\0\0\0\0\0\0\0\0\0\0\0‡ŒèKf**$)\'.\'-)%%($ &&\'#\"#\'&&\"$\'+\'%\'#)\'(\'*)&$!#!&&()*\"!(\"#+&%$#--\')++)$)$$%&*-\"-.+0-.\',-646420025,/),7553HäÁ6ìÅ€HáL«Q° •-å¬ë©€H†F_`¼Â‹oÛÇòjýoN“áI\ZK¥«g¨à#š±g{y±5)yH‡W)^ì¹ºtÐºs§Ë¬¯\"á~V^³Þl}¶.IePÃH‡×P«RÆ|·WRuÙ1ñóÅÜ]”Q¾¿<}pq>„å(H‡‰Û¿l·\"\\§-Y»Q_GƒçÚ¤»¹:²68¬(g½hãž€H\'ÿ/-¬WÄ%sv“Œ?³26\ZVæÀAŽîƒr¹ÐSi§Xþ½çÓH‡ÿ6À8®êVYÔj|ˆÅ;7!KÏK™R[¯+&à€\rÆáÈí\0=¿Ó1³ÄC€HˆÊ=R†\n\ZójLŸµ«!úñîÆ¡ëÇÒ~Û+üæ²!x¼ixH‰2N¡\ZÌs1ŸhL$$,ïþáQXá€[WÂ×[­iSF£Ì«ZÕˆNµÍÄH3lç˜©#w”qÂDb´_lW(	‰Iè†	’i…€ëL%ÌtÈ<H5šZÍÒlsOëx×“ßxàù²õ[3,Ô- ‡<wÿëµ°WtìH2ŠBû0°¨æ­Œ\'mMH/Âq¸“î~ó·ÀÚêjd7pH1QAOEd÷Æ9	4LúDGXY¯Za¨×ô\0	d&!Þ¿RH1Q\r¤­õ9•oSµÇ6¤³–Z}Ð”ÚM…?Àjý¹HëH0œ¹ƒ€…›sàüõ:Õ­MjU4ýêÄ¿m™p0H-H/bBœË‰²¼P[‘WIÍˆ4ÀFÏEÓsäÐ*ìÁ\'ÀH+..:Éic“¬/ÉÆ[nÌí#ì°+fÞ ˆÆU®¨€H\'´¸·šl·ì3˜q\\\"`ëª…ÄÍÓ0\\{B#-P°dºm×é®%ž…@H\'›Ã£;’\Z-3¾>ŸÌ‰æÔ<â‚ýc¹ÀZ©àžÀsðH\'®düÓûÄŒ©Qè¼W§¾ü\0b©›ínž*‚5(–óŽèfÑH\'ÃÌä­ÒŠ‰D»ý‡ Ân7|¨9èm-’·Ë.ò{˜zsnH%*c°X96lcŽ±²À!AwoÜ¦mOIb/kÔ_=KU5bÀH%N0˜~^\rQ¨sMÙŸrèÆéƒ@‘+>^2Î[½á]Ê¿R…`H\'®\\žP‡ýÒií!˜(pä`{nº®Ožá4ŽyèàH\'d#Œùú8fS-Ã/ø0‡µ¡É—Tr!™X·Ê=IH%Š›Å mµÄ\nÎwcõ^p@Ý~¢C	®b:¯Ž\0ÃiÖH%S‹,g	¸2¶(H0‡^Å&åèà]–:C]\Z?Í\0åÂoPH$ôM£(Ú¿wÓ?¨7Ó{—Íh¬VÐXÒ´Ÿ×Y6‡”V)ßÁ›yº>H%Œ¿“Ån›”ê³úß7ï6„{Þ­‡‹‡›H|`šlwäHyjiàŽoP\\ôœÇ×8*C®jÛ4Æ¿0nàþ„©ÉBH3m‰,2âŸ,ÒŸÓ·DjD¾Nh˜h\rYTÓ%GðÿüRÁÝÃbÀH3¶N5gT“»¼xé«0zÃ6Å{á\'k§PçE@â€HŠ¤Ù\'GãŒ«‚4%ä2™Ü\nš$)¥©ÀK»¦º0xöåÑ«@w‡œHBÉ©r†×O×«°GIöDŒ2:ßk>?8½	XQì6‚~™h¯D&4H…q*\"Xü]àé¡`<«²´a±—\"þ·øåCþð‚âìFfêÙÇëH‰þ¸gî©óÞ¡g$Åò’Ú›VÃ —ÓdLôúÕÞ·\rú5F¶ÀH‰Ör¹U‰é—ƒÏ——sÝgbžt•Õ”Í#=B,ƒÖx*Õá¶iRüÃhH€ýônÓ&e_Ûc	ÿúŽÉâRÐ`-Ò™°Qx£*ü¡ña‘®AqH€ÜÎ+¸˜§OƒŽ7³è$Yè*ãå’ŽEr¹«ÒÐàH*(j‚\n‡=jûZOM`’ŽÌÚÎ€ç$Çø€™Ð·H)lì‘:ÚÅKOcøèæ7£\Z$¨÷ËpiçÝ´Û”N@H\'œ§Ž4»@ÆS“ÑŠHJŽØ3\rÓ ¸½^ÈºÌ3Ø¥XH\'œUôGÉZC\\ÓÎ«K1Aªxzx\rVM\"€H\'›ÙT.&<ãAâ\ZÝ†òo·Ž¸æèèR¦Fîf¿@H\'œ*YÈdGÛ$JuCËG¶S§—°£0ÒqP±qŒÔ¢åàH\'»ì%ëá ›¾6„&Ïa¸þq=žñ;¸yO6|ƒ›0AÄ`yH(NóÅ#¡l9^¯›{¶ç|—%ÒýäObÕâ½ø\"Ö‡¹ñ×™@H)ÁŒsîWµqéÍ¼\níÐ <Içñ2NÊ4Ò!uØÊÎùMˆƒ±¯\rH+^œ5\rÖ5¿.ªAWA(Þ¡[ Þp¼þ.Kðjü.+”˜Ùþe—šã×€H+_çý^…¤>n÷Ò!C’{³‰¬WtàLÅ›àç*lÎH+[ff]Fš|Üh;‚-(çƒ}9f£&iœ›Hq1Bƒ„nvÎá5*J}ku»x6{ˆ‰AÞ§öGPÔÒÁœª0nlH+lÂ4©—C§x	°•Ñ‘ƒ¨³øÊ&ÝL\n±Ñ€‘øH)¤¸±ÞeÐ‹ŸÅÅ¾CoÖ:TÁÒèó èBÙ%ÍuÖ½IH)w4W#>X}ìÁ%.)Þ,Ómï|^üéŠôâ¸Â>¤cÿÀH)­òž³­8w´²ÁÈ¨úI®¶;pƒÒì„\'&«kHU{\0¦ |H)„„Ü¼zÙì5oÛ{«&xúvà¦žò	în ”Á×;ee°H)­ò¶)@<Ã;YI€ÿâ·-ÖÔÇzHM$ÒýËÓÃá€HõQ‘Gá>YZáDýQ9‰ó®3#ÊaÒªÕ3—¯šl(„ËGH)~ZQvÎ¼ÝŽY!‹–~]GÞh`rfù,ÞÕØã.EÉ`T5=lZñ€H,kÊ’¾È´/÷R?Žxì(«\Z#1E–Æª‚æý÷éÎBçÌAxžV H+krHh>þÍY}ÙSDò½l{A¬öCZÿ¤p>\n­ü&€‡ÀH+‡T¡%nP[yxE´®°M=])7ù}Û}àg³Êìô§œ!«3€H+£(4äPsÈŠ„\'û™(\\ÕE M‘#	Æ`W{Qš}µ„@\'NOç`H-OášøÅk#¾ý.¸×KîI39C¿íPÎr…FC¦ôþR@È“Í H.¾Œ´å<¸»¨hËT D2w`O¦OšÌ|ôš1\'§ƒ\r¯H.¹ÒÁsbòæÛò“Û°@¬ù,_ÃÓ“ë¾ïwÍ/»%9r™H-U•WYÿ¦d¢m¹á¢H2\'ºi–¼Ì©ÁTMxèŽûAJL_Ôõ.H-Oápù@òÔOa‚`«Ø÷0Fd³„¦6Ún¬€¹€œ(HUÝÅƒœ‰E…D7\"”÷!Ó#ÈdÊÒéˆÈÎv.¯í¡É˜H,”Z…î5l©ƒÍcðïÝµ4Ú\'·2ðH\0$ÖàèÖ»H+ŒŽÙ¬Z–µötª1å;ÊÁ«±žÑúÙZæ·ÑÌ¡óÝ…€ÆÆŽH+†G€àÊÈauÿÉÆû<=y›Dš˜YF_…ß«%úõžmÞå<;yH0L\\¸iTEšS-Us[œ7ç7Ç\nÝˆO>²\0z”	¾%;\Zò-MóA	:€H+ázsÂm ­u©¶öÆ\r=¯V<\Zî3qbÃ&}œH+•Šç*u9\'FC­J›¦>ÄR?æ¡LÆI ÿªèßzPÀÁb²@H,Ø‹âsf_hVÎÄ>Z¯#\'eÚú_¦R»nÝ#·X”\"ÒòGŠØã°ªiÎ39H+‰U:³…ÖáD… ùÚ T´B±ÜsƒÔš3Ð\r°Ö¬3¤±ŸªcH+rÖLT!Éö¶+(ÜlÉZ5d§¾‚E\Z-{ÇêýZ@‰V€’[gSª>)”H+–µ7N#.!=­BûUÈæî3ãâ·Ûªø=¢ç‹ay(QUÒiÉÌÚ’H+ˆé¼Õ3LÖ}³ûÚEVQVd*ÒTß&Üh8¶M½¼µì{Øx5Sð\ZÀH+¢E:(÷Kœgø²0yˆäàmyÄ¹4€®ï…{1	3\r’4Ï[H+§YT”x}¸¼@ÛåÞøÃã\"´}|}6ByÅ“ì#†¤ó¿Áýa€mxdkH-Yù>»ÔòÏÂ>6s-<‡ r÷Åœ›	Êg³hkæe~±¡±÷wø_ãH¤°@H€óMÚÆî7¡	Yð2ådàÞ9AªbÒIX×Ö.Í²5n–ò7¦|ä %éISŸõfñë–S:ÐH¤´ã-LBŽ¿gEá™Uí®3¥^ON¥‘–Ì±j[ÃÄ?ÑñŽ¾ò+4‚él±\'œ<>ì°H£Ã¹]€âE³‰¯$¸<±ÙšÇ`x~T~r!¾\Z|E}?p/P¾\'èÑìlðû7…Ø˜© H¥3 7FòKIs´3ËÊaªW2 ,y‡›Qvùz%ká@ÎÌ¥»Q-–93ˆQp¸*HH©vÇ5ô¢\05ˆ}Í¢ƒ¡gbâ™I…T„‚ôzšâD#íTß0`\'¡JK²ŒH©A?ÿeâ»-µ–°œ[þNã7ÉÚÓüïmÜ‰_tVÎÚ´÷è}çºâN†hàH¨`CöÂâG0|Ï!U¼\nÆ½ë_N‹\r«vôm\nH™‘\\#lYÏ×³€H©˜5C-€—K†ÙîI^[e÷N*9Ë£ ú%Ão¿¹CoÅ¢+J¥Ø;;ÙTzÄÌH²²³ »fI£±«D¹\\;Ô\rõ&ýHâ·yŒv¯‚>>ç0sÕ7Üê(’¯í=‡H¶êA@Ó€\nz¨ÿÂNÆ íŸ±RS6A‹3>¥}Ó	QŽà$·`æ\ZâàH·Ê„àO¨ª|úí³0ÀÕn—S\'o\n»¬ðã§¹ÁjŽNûX™Ê¾1+¤‘¬íwÏH·Öã#k(×a¶èèÕö²Å\Zvyž‘\0Œ{‚½¹ayótÁnì«z€H·ÑR®¶å€“³]tÄ^N\\bÓÃ½ e7TE]Ù®fÌ†þØìë]GÂTðH·ŸÖSAÁU‹çA®±¸;T‚ÇY\Zoê!À“äQAÚÒÎ³¿º! ßç½³c/¼å¥[&ÀH³ÅÄÂBu™`°Ykq*9†Õîi“5À‰9o˜;ygò´ìn¤÷¸0þÐ0^Liž €H¬j	JÀF‹Z&˜+$«¸Óa²Œ,Ü¢j Êð ±ºª°\0Wg‘¥má‡ì’d§ñÙ€H«\\$Ö=‹j‡c-\'šœ‹ûÁäÈ!ÐŽzÝÒ”ÞÙÎ˜\0•Ÿ¥¦¨i—½­¾m›eièÌOggS\0\0(Å\0\0\0\0\0\0\0\0\0\0\0\0X×G<W:\' (\'+.5::1*/2./1/,(-655249945</21721.(++1.*/,)25..131/1/30\'%33-0.+*-(*-30./040+1,&&77H¯F7ï\Zñ±1x4š1óø2xe?–s&­²§pvT*fÖÄSA‚‘2¥ ˜šÉÌO´¢êìF)iŽôH² (d{S±‚U\r3JUk]~dxU¢¶”È€q³ª£ÎYÉ…H±ôˆŒ*Q1Ùx\0Ç›•á(\"RÐ:ž.ê}éPýšnWÀH±Æ@»ûWÀš	ð(·ôÍáhÔ¼:sWP¾¹1h²-ÜõÕðH°\'{÷Ãœüž^?£ðÞYç÷/úµÔñx–ÆÆ#BÙŒmÄ@H®%›[Þ²vÍ`éÌûÌ²±7ËÉQ*øQ<DOÀæ×¦ü9 aû>ø÷H®Á§¡qWÚzÛºˆ¨þƒ´Ï°ý=¯Ó³OUv?ú–L?i!ð—ZépH°VjïCKmm®‹ˆñÇ#ÀïgN`*‚fí!ë¥¤h÷¥Z<„ ‰êªŽ%º£Ä=%hH²˜ž‰²mVÆzºÅ“ðú½Yþ´†•ƒø^ÿiãûH3´²Ø\0îD†úçÛÞÎÌv8t=Qyù¼\rœH´ínùe¶ÁaÙ3aÈ»\n¼y7g£×%–¿ÚÒðö;\r]hZ˜HYíûÂÉG^wÿˆL]‘–Ò\rÛ,H”Þ¨,Ò@dyáÎ¥XØ7”Ç‘¸umí9\ZåQçbž\rAéûÄÊìýlàÅÀH“í‡Z„;»ÛÛˆ™ó}Ü}øf…*u_|ÂÍhô6’ºÚ+§Ô®:Ç H“£.Ó„Ç7î­Øp©Êïº\\ÉØñvÊ”è†ê¦0ïÎWØG§öuRÎç¯g·o¦èH„nnæ:^Î½.áöâ¥Òž*ž|ÄŸ’ú¾»…þ\r(îÕÄ®ÁÏÓŽQàËIÇ€H”+²½çc\Z¸:Üžo•=ÌÄéOðö}(ö\nù§ñ Å\n&ðåBo*@H„le£c%DYk#Ø1@o×.Ù¹Oz¤oæ¤UWAÜB¶rnïÿ—€´+H±‰»b!ò\r²Õ–Ø$‰GÐk‚äÒÏDá“[‰·k-sF=\0µ\\,9¥=‡xH®xöP˜Éóg÷ÒgH›üŽÊª{ƒ<Já/¨|_¾¬°Üh¤È–aÊZÖ_H«N>IAjw \\U\'0AÊ$\r=§åøÜw×¢„™0¿%´&1³%H©˜PÐ¯\r¤J/–›G¾\"ˆ	¡§þt5/*¸€/“¨„2¦/Bæ%ÀH©i ÏÔÁƒ\n‘Ÿ©·hh©uŠÙv9È”ª‘…Ë‘båÉ\\¥¬¤\0 <€H§E(lÚI}Ä|ª!ˆ½á‡ù@žfaÕ¨¸‡É`ƒŠÿ-à°§·ð.@n¥ÀêÚ3€GùR…ê$ÀH¤§(›æÑ¥,!þ®®Hrùó&¾‚ëiâÖº`õî²õ³%/\ra/jWc®m¢i†nÐHŸÅ&ÖëYÒV9…—cØ9æj\'Ø‡=–ˆßJ+v/cŽæóÀçíNTPÝ(Y-ÀHž”o¾+Å’ŠÌèü~Èl_ñŠá(3<!íIçCSx~uÓ¸¬Ö¿p’ð–O»q9@HÐÙaäo˜+•K²*GGµO»š¦õPX^™\\£¢þ|wþËª\0Ü‡n›á]ô²‰8HžÎ¦ö~Ù=â„uZ›óùZº%VÇU–Ôã_…,óñc`ÙÀƒ®A÷\0A54“BáÜˆ¥/€H¥û³‘¹c/å›# þ‡!´ûÕ“ßÁ÷-é$þ8#öë$	>Å·—‰QÚ\0!¿®ðwÏ‰gÄ¨¥7Þ4H¦+i\'bt(ù/¥†1ÙïkO0‰®¡aíyéýð÷L_h:„¨vËq–‡×ŸpH¾]»,õ¥q¶¤çñ Î:„ÊLXc1»îÚñ’q±–=óÏy\0,e\Zy9EIi±&ù…ÇA›.±€Hª#ü‰y]À4›N._ÅIjGPeð6úwuFƒ=L!³u/Ÿ?%{9þ$MÂª!ø´AkK¡œ€€H°vod¹IF\0öyXï_nñÂcëoPÜeØ5ÏÙøHã€óeðnƒŽÄn’H²¼&†ÖÁZœKÇRw÷£æÈË¢¹«À…Ö)MYð»Ú\";o,5 ß2w•H±ÙØz¼cÿÑÓW ÚpvÇê%ˆÁ¼*‚÷‰&ã]ŸPÒ±#FÏ­×~¯€Hª‰”<l\ZkcfL¥\'ëS‰Óö^Þ€¶$ÇùPäNŸšï˜=B‰—oãþÎ	¤Á\Zí{:ä<øH¢*½åßc—¨Z(=–4Ì#É¬ªë/ƒ²_ÚCýó(_FÿÆ«(ëÓáeK”$Š+HhúiÓÉç4ù2ßÊ}S\n½Þdv–]:ê•¦Ã›ÑQ«¾vo]§t\rÛ€H½ÐÑx~ç˜æš&±æ	³ç,`æÆ!‹-Ì÷áˆ`Ô\"‡@è‡s|”÷ÐH‰í/T¬®å=|iz¼džp{˜KîÑøhþöªÙEnÊ®ŠPH‰ŸØ*îÏ7\"%›Ó jWovtÁºïÁ¨<Å\0Âm¦žzkè°Î¸X\ZßÒHƒju”Ã0OøÆ½rn:¢ù¦_ qT)+âµ‹P’´wkOªO~SñxHªÍR=ÙÎ¬˜jË”­ºoú˜øt©v©h\'«	ùÊŸÆÉ‹Ý†YÔòL*`‘Ë@H¬q€¨Êp	²äÊÌ»ÜœŠ;[jßßw’V³C÷«Ò…þBÔ§B@µBH©IžpÍú)udg#k\\nôµ(ûX7\'2Â|o*)@\\·Úø×\0¢H§Np#=>Ñ;X í§@÷àš–ÅÕ†´÷dýêÓ+áUC—ŠˆÏØ¡úË¥g®H¤·âúöìŸ0Õ+Þ°r·Wiùôeü–©%‚pŒ0Ê3[Õí\rÕBðH¥	kî(Th[xåwÉÊƒ¶öXÓv‰¥Z}¯õ©3™#÷ý«0­ÏE(H¥6÷5²;s!ÊxF6Ùf½œmëå¾÷rr;<«\\&ÌGÒß.ÍcÜû,\"®a¨H©ÏŒ*O{n@x¡2m²\n¸Ô‹­ß2_OGh¤l° œ«ìD¶ Ã\ni-<ì\'!°`H«N:|-„ãžž^€¯ÓÄ§Þëüù¸—°2ævás­4Ž2–¢àã´F¦Ø~H«MÍ»lŸÿ&þó	ß…¸:|È—E`÷ðÝaGHç6é\")Ë2ªKˆwy¢TÆ$H«K“(h³	DÝø0†!0í@BÛ÷à}žWÕÐXµ„F|gó!“DÉƒöîí€Hª©‹ÊEÀ¤ûŽÃd§Äh7(	²X&—Ô<Õç¼\"yÆµb;ÉÐßÙ£Èz  H¤¨h…4pÉÂDôÊÌiã¼€ó’\rûÌå#_œû¢\'¿Pjh·h»¢=cª‰åz1§drH¡`Ž\0ïšbå#lR—ûR\Ztc3\r`Æ/Þgê•\ZWúÏ¯ÊIìú\0ea\'HoÇ\\³Œjxœ=Ç;KÇ£çj¸V1Û·Rá|²Hé›\0œ¢OO2átT†Hœdqö~Üì©ì¿¼ã.}U·¡~(Ñò4‹oÌ!Vá/Ãñ;¢ˆÿ	ÿ°ÂâµºPH›-\n`-Œzéê‘7iFHÖ¶údŒäóÌñ”r‡^^zuñº%Ã?ïÝxœ©òœI> H›‡\r¶`-¤ß‘éº·åØS<&ž_j¸S+ƒ¢¨^õS0›Záš=ËK2Ø8ÉxàH‚‹Ù«qÁ|zø\ZeÛ}8\nû±Ò$ùµb¾ÔÒ7‡[k*²­ûIH±¶a¹D«N2Ã ‘=º;x×b¯6`ÑÖ\'tØyþŽo¾’*$HŸ ßèæ®Àu^<Œ½—­ýÅÌå­¨\\R-Zí¼Eˆ.uˆòª’^¬õÃJÕáÿ:ÀH¥NÆv›–šícì$ì3ÆJ9‘&¡\ZZ±†wXÇí³´;\nûÅ¨…4¿Z\\œFà÷#í^-¥H§àŠ\0Ž÷‡Ú$ÝÊ+ç˜ÜMŽ-°„ò§ð3…’ÞžÙÅwßî,\na¼^]H§û.–¹/²Wá%_áB,§Ž‹z- ¬q\r<p>Š½ ü¯žâ©’Eú÷\0‹\0©£Hª¦f~º­3>{ÍÉˆ#ôKWlVÒ]M²ŒYŸ¬Ò ¬\n¡8d%Em4\rY H‚©®ªOñ”dø!¼çÀeâ72ßÆ¹¬M¬ˆ‚¢´4/ùBÞu	ÂàHƒh0”±Çºá.8\n} \'å˜áè,QÚÅ»«æ@‡rkå14 x¬Hª·Ìác2¨å×©ðU%)µáu¸”ÁðŠŸØ%!¢&Þi™yb“!µY¡ûHH©‹;WÆÛ ƒBfXŒÕüj²  ÙÎÂ\\_OJ ¥¦izòÇËk¾,ÌH©zlBŸÛo_¿QŸ|CN\'Ì’C;s«~êÈƒÿ®¥jŽ¨¸H©f†Ä¾’TÖnhd<ÒK– ˆ±¨¤ü\\ú¨s§Ÿ}1ˆ©Psÿ¨oçªª€H§»6%/N~a´Hrn%Wæ…Í€éÐ‰¼‘]cC\"ÝË:¨Ý±K%‘LwSq¢gÈH©nh{Ä¾2ÐœwëËõÆ”V1±ë×³6¹\Z«u«éqôè»µ‹‰!\0ñw H« Ì/\'Ë:\rÁI¿1+ð#5—Á6`†pÖ<ÿUy‘\'‹À|yˆŠ®Âºƒ®> Hª’ýaDª@gmãR\'øêÏ‘È0Iƒ&w²;nlÙ#Nå\'V7\ntTÇøÛ²9Í\nH£a±<;Î“eë5<«âÉŒ=Vaå‡šjõtÞD¤éÖ½årrn’P¶Àr%ÿ@èH¡=œHGÄÒÒ«†	wpË¿¯€I>ßIP¾€ãÃi‰p÷Øô»\rTxýNÒœ>¤¯\nÏàH¡¦\'þ×\rijÒ4x¦Ïé‚–9¤r f—#ª |3ßi ‰ÀC€‚~½½@IÊ€H¢ÁÄ9Ö\Z²¯Ù.SjkZgD+ï…w-iŠõ\0¬Uë«àx=^´žøH©°\r{ä×æÄSTÆ§ ÕÚ\0ˆPåªžºO`™t?ûg°búÜ\\WÄìÈê&¾ H«-s¬æB„Úz8p¼¼ÞßØÇ`I-óÕ/¥kxóò{!x[Ñµƒ¼Æ™b`H­ÓL¶¥6[4±+›ÿ¬©Á7FÜý¯š~ ‚ uÓtpË½9H®êÌæH\n»ú\0=}p<¯*ñ\'xa]$ÀÑó„•ýH°4HõúB\"Ú`\Z+—³ÊB&Y¯Ë‹QÇÅÖø8¸®–H­ø¨©N]³D‹0ôé\rwdÄ=ÇÙ¡¥ÙpZjYb#¤¯S5ÞÁ³ AãN¹(ÂŸ\ZüÌ»ê°H§FË“õ…ÒIM¨>…¼Ð7·{“SRIÞÀò3o9{î	ƒ×ËÜwc6=·™\r”è¥8OggS\0\0([\0\0\0\0\0\0\0\0\0\0\0\0è¡£F(<140/8--0/.%$#\"(#\'\'&!\",+&.)%\'\'%&\"(+),(H¥1e˜-Å×òŸh%%´Ñ¡}X§\Z¢GÒ<_€7Ò¶&p³?Ko¯,PÿÐŒ !fRWÝ¶\'Ô€H¥ýÇ{	mÝðÊ×usH&â‡7h^!Šu!e\Zæ‚„7ø6|`‰9É¼§âÒßpH¤²Ð±û&wB*åµ‘bçÑôÖHw×Qt	ëÆ^!‚ÄÃÌê{ð_ôƒ7-fP”AH£” í_éŸ·Â*J³7¤Müãšd×\rz)—ŒônÈ#÷2+/‹i¢ýçŠ4HŸ¢‚¥²\',Ê-6uS‚’É†]÷Bï“8¿”küþ!ä„1|Š:ò=Q„iH­;½›£p›oá´y;Ò\ZŒýý‘˜~ÛfÌ&´D}ç€ƒÂUê´¦-Îì„ˆÑ”âQ¿›†¾À H®b.XÐpò…\\e[PÐätúvQó0ˆkaÓ$Ñ2Æð0ÞN°;³±TH¬¯ÊzêrTqã yãKCe¸OïýH:é7§	Ùåg•§z NÖ*\0ÃÀH¨ù\\†Ò{óïnF§¿ýrTœÊ”ä‰›F_­ÞŸ$Ë¬37îq§Ìö}ÉPH¤ÿ$ã‘Å¶U&l9.ùD/¯þk5¯$(úLÆýd¯‰àOXúæ«Íì¿s¬ço\nH¾U>ä(¢“ êíÅ@†h¥qŽ7x	@DwÃ¶#©ã£ÊÈÝ~àH7Ú¥ÇšYwûv±7ž+KÌãœÙè1ÇCcã~\\DÉNžH7$žéëìØ¤¢éM µCDøêû÷ŽÇ%`#Ý¨|H4äÃ\r|7¨–Osùˆ@ð0âäÍFÈÌ,R(¾Y…Ê4ðH2ØÁ‹ìèí+(µËºMÃ+jÜŒË²¼=ýð‘ñ%#âH/g|˜+à¡3ª.è\0Kð8íN…¼9\r+ÏûhMZbµNíV°H/^\0(ÖkžgHÒˆ`ÒQ£D¸„$œÇ ¹öï.„?†bC<ö`H/#RÞS³dõào\rDe$En˜‚ˆK7(]LÉhšG…=w1<YÐH-u@Þi@’5ÀtÃçH®¡ê_ð©¹õ·\'sœH-7ª ëç‡ÙVÑ`ó„~iù¥É=* Yë÷a [|B\n€H+j*V+¦›xVoì7£\0•ïo“›åG&tˆ–£Ó$Ø¼jÜH+Y\0Ù)oG4BÙ˜o)Â¯Ðø¤HÛèj@H)­ò{ŽûDÍ\rI€úOò…Ùdø÷Vs‘¬…±<QH)­øRñ,}lQ=­Ë¹Ÿúû6¶Ä#å8q›;²ãKeH)¤Ãº~Û ÷Û24x$Aƒ„Ùs+µ-¤1ï—‡þj…lÕËÊkîøÏPIàH)¤ÂsKH†Ô	Íq}|šØIÆ¿RGOÎþfIþg—X\\?¼]DCàmÝ„ºFùH+Œ®ô.­E<P‘îë ‡?¥µ£o;´HuIh<¨)IMMÀ”‰„ÀH+¾Ü;¹Ì*‘fÓ±\rxPãc!a±\nš]Ó7ýäÆ¤µif\00€BSñÌÌí&HH-v|Ì^<Kw{.B#èËAe8ê¯EÌü</<^WŠÌÝp¥ýóÝjÓ‘€H-Yü\Z¡-Òž*ô“ÆgPk\\Ç.ÿ‚¯„E¢¤ÆïiÊýH-uQT³ˆ¿ýxØZ|p—…De«ID>ˆ{™‰dP\n	‡ÀH,àNžˆüãHd[u{ýß¹ƒf¼CˆDâ,X0ÿË²œßŒUòoþ¿òH.Ä=ùoƒ7(aËÁ›Ðdóƒ\r&YäÑå4·‹¨ú‰Åƒ0Hwòúd—*ç!Bâ³\'M™4°òNõî¶‹2)î§øqM9_	 H.®\'=G#‘üéÁZóõàÏµøÎˆœMª»²–žd%ÀH+qàïÈO‹š1ïœ+)Ü’Œ@ÁI‚wì¾¦ø øtëâ°g€H+žDQŸÿ(²Ï@ÞtÂ#Úì}ò+G\0*ôr¾–ÙYîÕMÌ\"ñ H+„ãÃ¼+=Ædf“˜n4W¿ïß\ZÕµ!Þ¸gë‚\ZMût…Õ H+qüË×ÿ?&\\øÐjã¦•¼dÁÜˆù_%mÔõ›¹6³\"ïRW€š@H+¿U]ü*±øvG-ñ(U|ƒèD‚;ï¬hÂÈ­vˆ/ðÛ¼6ú','munani sug atun uku Dius manda.opus');

/*Table structure for table `ensayo` */

DROP TABLE IF EXISTS `ensayo`;

CREATE TABLE `ensayo` (
  `id` double DEFAULT NULL,
  `palabra_espanol` varchar(255) DEFAULT NULL,
  `traduccion` varchar(255) DEFAULT NULL,
  `palabra a palabra` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `ensayo` */

/*Table structure for table `palabras_espanol` */

DROP TABLE IF EXISTS `palabras_espanol`;

CREATE TABLE `palabras_espanol` (
  `id` int DEFAULT NULL,
  `palabra_espanol` varchar(1500) DEFAULT NULL,
  `traduccion` varchar(1500) DEFAULT NULL,
  `palabra a palabra` varchar(1500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

/*Data for the table `palabras_espanol` */

insert  into `palabras_espanol`(`id`,`palabra_espanol`,`traduccion`,`palabra a palabra`) values 
(1,'a la una ','adv indi tigrai p.p. indi tigraska/ intigraska','(de la tarde) -indi tigrai -indi tigraska- intigraska'),
(2,'abajo','adv urapi -, hacia rÃ­o urai','urapi -(hacia rÃ­o) urai'),
(3,'abandonado','p.p. sitaska - que se ha convertido en monte, (potrero) adj chaparu','sitaska- chaparu'),
(4,'abandonar','v.t. sakii - (un trabajo, una costumbre) wanai -se (un trabajo, una costumbre) v.r. wanarii - (un sitio para trasladarse a otra parte) v.i. lugariai','sakii- wanai- lugariai'),
(5,'abandonarse','(un trabajo, una costumbre) v.r. wanarii','wanarii'),
(6,'abarcar','v.t. ugllachii -, hacer kamachii -, (huevo) que no sirve para adj wabka (wibus)','ugllachii- kamachii'),
(7,'abceso','s kuku chupu -, formarse un v.i. chupuiai',' kuku chupu- chupuiai'),
(8,'abdomen','s wigsa','wigsa'),
(9,'abeja ','s abijun -, clases de iana abijun, ushini','abijun'),
(10,'abierto','adj paska p.p. paskaska -, estar v.i. paskaraiai','paska- paskaska'),
(11,'abigarrado','adj sarasa','sarasa'),
(12,'ablandarse','v.r. wabajarii/wabajurii -, dejar v.t. wabajai/wabajui',' (en agua) wabajarii- wabajurii'),
(13,'ablandar','wabajai','wabajai- wabajui'),
(14,'aborrecerse','v.i. amii','amii'),
(15,'abortar','r v.t. sullui -se v.r. sullurii','sullui'),
(16,'abotonar','v.t. butunai -, hacer butunachii','butunai - hacer butunachii'),
(17,'abrazado','p.p. ugllaska','ugllaska'),
(18,'abrazarse','ugllarii - ugllanakui(brazarse mutuamente)','ugllarii - ugllanakui(brazarse mutuamente)'),
(19,'abrazar','v.t. ugllai -se v.r. ugllarii -se mutuamente v.i. ugllanakui','ugllai'),
(20,'abrigado','adj kunu','kunu'),
(21,'abrigarse','v.i. kunui, rupaiai v.r. kunurii - el sol indi kunurii -, hacerse kunuchirii','kunui- rupaiai-  kunurii'),
(22,'abrir','v.t. paskai - campo laduiachii - camino Ã±ambichii- hueco (ej. en una madera) puruiachii\n-, hacer paskachii \n-se v.r. paskarii ','paskai'),
(23,'abrirse','paskarii','paskarii'),
(24,'absorber','v.r. wabajarii/wabajurii -, dejar v.t. wabajai/wabajui','(agua)wabajarii-wabajurii'),
(25,'abtenerse','sasirii','sasirii'),
(26,'abstener','v.t. sasii -, hacer sasichii -, hacer (durante un dÃ­a de guarda) wardachii -se v.r. sasirii','(de ciertos alimentos) sasii- sasichii'),
(27,'abuela','s achala mama, atun mama, mama siÃ±ura','achala mama- atun mama- mama siÃ±ura'),
(28,'abuelo','s achala, achala taita, atun taita, taita siÃ±ur','achala- achala taita- atun taita- taita siÃ±ur'),
(29,'abultar','v.t. pungichii v.i. pungii','pungichii-pungii'),
(30,'abundancia','adv junda junda','junda junda'),
(31,'acabar','v.t. tukuchii - (un trabajo) puchukai -se v.r. tukurii, puchukarii','tukuchii- puchukai'),
(32,'acabarse','tukurii- puchukarii','tukurii- puchukarii'),
(33,'acariciar','v.t. kuiai - (gen. la cabeza, ej. a un nene) lambiai/llambiai, llambuchii','kuiai- lambiai-llambiai- llambuchii'),
(34,'acarrear','v.t. astai -, hacer astachii -se (uno mismo) v.r. astarii','astai- astachii'),
(35,'acarrearse','astarii','astarii'),
(36,'acÃ¡','adv kasama','kasama'),
(37,'hacia','adv kasama','kasama'),
(38,'para','adv kasama','kasama'),
(39,'aceite','s wira','wira'),
(40,'acercarse','v.i. kaillaiai v.r. tuparii -, hacer v.t. llutachii','kaillaiai- tuparii- llutachii'),
(41,'Ã¡cido, volverse','v.i. puchkui','puchkui'),
(42,'aclarar','v.i. punchaiai -, hacer v.t. punchaiachii','punchaiai'),
(43,'aco','s kamcha/kancha arina','kamcha-kancha arina'),
(44,'acobardarse','v.i. sambaiai v.r. plujiarii\n-, hacer v.t. sambaiachii','sambaiai- plujiarii- sambaiachii'),
(45,'acogerse','chaskii','chaskii'),
(46,'acogerse a','v.t. chaskii','chaskii'),
(47,'acomodado','p.p. allichiska - en el rebozo kipiska - (un dislocado, una lesiÃ³n) kakuchiska -, estar v.i. kawituraiai','allichiska- kipiska- kakuchiska- kawituraiai- kakuchirii'),
(48,'acomodarse',NULL,'allichirii- kawiturii- pagtarii- tamburii'),
(49,'acomodar','v.t. allichii - (en una cama, estante, andamio) kawituchii - (lesiones) kakui\n- en el rebozo kipii\n-, hacer allichichii, kakuchichii, kakuchii \n-se v.r. allichirii, kawiturii \n-se en el estrecho pagtarii \n-se para dormir tamburii \n- (un dislocado, una les','allichii- kawiturii - kakui- kipii'),
(50,'acompaÃ±ar','v.t. katii, kumpaÃ±ai -se v.r. katirii','katii- kumpaÃ±ai'),
(51,'acompaÃ±arse','katirii','katirii'),
(52,'acomplejarse','v.r. plujiarii','plujiarii'),
(53,'aconsejar','v.t. iachii/iuiachii - que no se coman ciertos alimentos sasichii -, hacerse v.r. iachirii/iuiachirii, kunsijarii/ kunsikarii','iachii- iuiachii-sasichii-iachirii- iuiachirii-  kunsijarii- \nkunsikarii '),
(54,'acontecer','v.t. ialii/iallii/llallii','ialii-iallii-llallii'),
(55,'acordarse','iuiarii- pagcharii','iuiarii- pagcharii'),
(56,'acordar','v.t. iuiai -se v.r. iuiarii, pagcharii','iuiai'),
(57,'acostado','v.i. kamiraiai, sirikui/sirinakui, siriraiai','kamiraiai- sirikui-sirinakui- siriraiai'),
(58,'acostar','v.t. sirichii -se v.r. siririi','sirichii'),
(59,'acostarse','iuiarii- pagcharii ','iuiarii- pagcharii '),
(60,'acostumbrado','p.p. iachariska -, estar v.i. iacharaiai','iachariska- iachariska'),
(61,'acostumbrarse','iacharii- iukarii','iacharii- iukarii'),
(62,'acostumbrar','kustumbrai','kustumbrai'),
(63,'acrecentar','v.i. pungii','pungii'),
(64,'acudir','tandarii','tandarii'),
(65,'acudir a','v.r. tandarii','tandarii'),
(66,'achicarse','v.i. kuruiai v.r. kuruiarii','kuruiai- kuruiarii'),
(67,'achiote','s mandur','mandur'),
(68,'achupalla','s achupala','achupala'),
(69,'adelantarse','v.r. Ã±ugparii -, hacer v.t. Ã±ugpachii','Ã±ugparii- Ã±ugpachii'),
(70,'adelante','adv Ã±ugpa, Ã±ugpa ladu/Ã±ugpag ladu','Ã±ugpa- Ã±ugpa ladu-Ã±ugpag ladu'),
(71,'adelgazar','v.t. Ã±aÃ±uiachii -se v.i. amchiai','Ã±aÃ±uiachii'),
(72,'adelgazarse','amchiai','amchiai'),
(73,'adivinar','v.t. malisiai','malisiai'),
(74,'admiraciÃ³n','interj Ai, Jai',' Ai- Jai'),
(75,'admirar','v.t. ujnai -, hacer ujnachii -se v.r. ujnarii','ujnai- ujnachii'),
(76,'admirarse','ujnarii','ujnarii'),
(77,'adolescente','adj, n (un varÃ³n) musu - (una mujer) sipas','musu(Hombre) - sipas(mujer)'),
(78,'adÃ³nde','interrog maimatak','maimatak'),
(79,'adornarse','tugturii','tugturii'),
(80,'adornar','v.t. tugtuchii -se v.r. tugturii','tugtuchii'),
(81,'adulado','p.p kuiaska','kuiaska'),
(82,'de afÃ¡n','utka','utka'),
(83,'afÃ¡n','adv utka','utka'),
(84,'afeitarse','v.r. pilarii','pilarii'),
(85,'afianzarse','v.i. tanuai/taunai/tawinai v.r. tanuarii/taunarii/tawinarii','tanuai- taunai- tawinai \ntanuarii- taunarii- tawinarii'),
(86,'aficionada','kuiai','kuiai'),
(87,'aficionado','v.t. kuiai','kuiai'),
(88,'afilado','adj filu/pilu','filu-pilu'),
(89,'afinar','filuiachii- piluiachii','filuiachii- piluiachii'),
(90,'afilar','v.t. filuiachii/ piluiachii -se v.i. filuiai/piluiai','filuiachii- piluiachii'),
(91,'afinarse ','filuiai- piluiai','filuiai- piluiai'),
(92,'afilarse','filuiai- piluiai','filuiai- piluiai'),
(93,'afligido','v.i. llakii','llakii'),
(94,'aflojarse','v.r. plujiarii','plujiarii'),
(95,'afortunadamente','interj antis',' antis'),
(96,'afrecho','s kunchu','kunchu'),
(97,'afuera','adv kanchapi','kanchapi'),
(98,'agachado','p.p. kumuriska','kumuriska'),
(99,'agachar','v.t. pagchai -, hacer pagchachii -se v.r. kumurii, pagcharii','pagchai- pagchachii'),
(100,'agacharse','kumurii- pagcharii','kumurii- pagcharii'),
(101,'agarrado','v.i. chariraiai','chariraiai'),
(102,'agarrarse','apirii- charirii- ugllarii- waiungarii- wangurii',NULL),
(103,'agarrar','v.t. aisai, apii - (con la mano) charii -, hacer aisachii -se v.r. apirii, charirii, ugllarii, waiungarii -se (en alguna raÃ­z, palo, etc.) wangurii','aisai- apii- charii- aisachii'),
(104,'agradable','adj chaia -, aparecer v.i. miskii -, volverse miskiai','chaia- miskii- miskiai'),
(105,'agradecer','v.t. Pai nii -, expresiÃ³n para interj Pai Mamita, Pai SiÃ±ur','Pai nii -  Pai Mamita- Pai SiÃ±ur'),
(106,'agregar','v.t. iapai','iapai'),
(107,'agrio','adj puchku -, poco p.p. puchkuriska -, volverse v.i. puchkui -, volverse un poco v.r. puchkurii','puchku- puchkuriska- puchkui- puchkurii'),
(108,'agua barrosa','turu iaku','turu iaku'),
(109,'agua turbia','turu iaku','turu iaku'),
(110,'yacimiento de agua','iaku Ã±awi','iaku Ã±awi'),
(111,'agua','s iaku - barrosa turu iaku - turbia turu iaku -, yacimiento de iaku Ã±awi -, (bebida o comida) con mucha adj chuia','iaku'),
(112,'aguantado','p.p. awantadu','awantadu'),
(113,'aguantar','v.i. awantai','awantai'),
(114,'aguardiente','s puncha iaku, chuta, tragu','puncha iaku- chuta- tragu'),
(115,'agÃ¼ero','s tapia -, efectuar un mal v.i. tapiai','tapia- tapiai'),
(116,'agujerear','v.t. jutkuchii/utkuchii','jutkuchii-utkuchii'),
(117,'agujero','s jutku/utku','jutku-utku'),
(118,'ahijada de matrimonio','saiariska wawa','saiariska wawa'),
(119,'ahijado de matrimonio','saiariska wawa','saiariska wawa'),
(120,'ahijada de confirmaciÃ³n','kumpirmaska-kunfirmaska wawa','kumpirmaska-kunfirmaska wawa'),
(121,'ahijado de confirmaciÃ³n','kumpirmaska-kunfirmaska wawa','kumpirmaska-kunfirmaska wawa'),
(122,'ahijada de bautismo','markas- markaska \nwawa ','markas- markaska \nwawa '),
(123,'ahijado de bautismo','markas- markaska \nwawa ','markas- markaska \nwawa '),
(124,'ahÃ­','adv rel maita','maita'),
(125,'por ahÃ­','adv rel maita','maita'),
(126,'ahogarse','v.r. iakupi chingarii - (ej. al tomar algÃºn lÃ­quido) chukarii','iakupi chingarii- chukarii'),
(127,'ahora','adv kaiura, kuna/kunaura, Ã±a','kaiura- kuna-kunaura- Ã±a'),
(128,'ahorcar','v.t. sipii -se v.r. sipirii','sipii'),
(129,'ahorcarse','sipirii','sipirii'),
(130,'ahorrar','v.t. mirachii','mirachii'),
(131,'ahumado','p.p. juliniaska/julliniaska, rupaska','juliniaska-julliniaska- rupaska'),
(132,'ahumar','v.t. chakichii -, hacer puiuiachii','chakichii - puiuiachii'),
(133,'aislarse','laduiai- almarii','laduiai- almarii'),
(134,'aislar','v.t. laduiachii -se v.i. laduiai v.r. almarii','laduiachii'),
(135,'ajÃ­','s uchu','uchu'),
(136,'muy ajustado','sipigta','sipigta'),
(137,'ajustado','adv sipigta','sipigta'),
(138,'alancarse','v.r. alankarii','alankarii'),
(139,'alargado','adj susuka','susuka'),
(140,'alargar','v.t. suniachii -, hacer suniachii -se v.i. atuniai, suniai, susukaiai v.r. atuniarii, \nsuniarii','suniachii- suniachii'),
(141,'alargarse','atuniai- suniai- susukaiai - atuniarii- suniarii','atuniai- suniai- susukaiai - atuniarii- suniarii'),
(142,'alas','v.i. ugllaraiai -, puesto bajo las p.p. ugllariska','ugllaraiai- ugllariska'),
(143,'alborotar','v.t. killachii','killachii'),
(144,'alcalde','s alkaldi','alkaldi'),
(145,'alcanzado','p.p. alkansadu','alkansadu'),
(146,'alcanzar','v.t. pagtai -, hacer pagtachii -se v.r. alkansarii, pagtarii','pagtai- pagtachii'),
(147,'alcanzarse','alkansarii- pagtarii','alkansarii- pagtarii'),
(148,'alegar','v.r. piliarii','piliarii'),
(149,'alegrar','v.t. aligriachii, kuntintachii, kusikuchii -se v.i. aligriai, kusikuiv.r. aligriarii, alli iuiachirii, kuntintarii','aligriachii- kuntintachii- kusikuchii '),
(150,'alegrarse','aligriai- kusikui- aligriarii- alli iuiachirii- kuntintarii','aligriai- kusikui- aligriarii- alli iuiachirii- kuntintarii'),
(151,'alegre','adj aligri, alli iachi/iuiachi -, (sintiendo) alliachi','aligri- alli iachi-iuiachi - alliachi'),
(152,'me alegrÃ³ tanto','(Ud) me interj Kusikuchiwangi/ Kushichiwangi','Kusikuchiwangi- Kushichiwangi'),
(153,'alejarse','v.i. chasama tukui v.r. anchurii - un poco (de) v.i. karuiai','chasama tukui- anchurii- karuiai'),
(154,'alentarse','v.i. aliai/alliai -, hacer v.t. aliachii/alliachii','aliai- alliai- aliachii- alliachii'),
(155,'algo','intens tinlla','tinlla'),
(156,'alguacil','s alwasil, justisia - menor lutrin','alwasil- justisia - lutrin'),
(157,'alguna cosa','rel ima','ima'),
(158,'aliento','s samai -, dar v.t. samai churai','samai'),
(159,'dar aliento','samai churai','samai churai'),
(160,'alimentarse','e v.r. kuidarii, mikurii','kuidarii- mikurii'),
(161,'alimento','s mikui','mikui'),
(162,'alisar','v.t. lambiai/llambiai, llambuiachii - una olla de barro ruÃ±ii/druÃ±ii','lambiai-llambiai- llambuiachii - una olla de barro ruÃ±ii-druÃ±ii'),
(163,'aliviar','v.t. askaiachii, chaskichii','askaiachii- chaskichii'),
(164,'almohada','s sanua/sawina/shauna','sanua-sawina-shauna'),
(165,'alrededor','adv kuchu kuchu, muiundi -, todo muiugta','kuchu kuchu- muiundi- muiugta'),
(166,'alto','adj awa p.p. ataridu - de, en lo adv awapi -, llegar a ser v.i. atun tukui - y flaco adj chalangu - pero delgadito, apodo para alguien s susuka','awa- ataridu- awapi- atun tukui- chalangu'),
(167,'alucinaciÃ³n','adv muskui ukupisina','muskui ukupisina'),
(168,'alumbrarse','v.i. punchaiai -, hacer v.t. punchaiachii','punchaiai- punchaiachii'),
(169,'alzar','v.t. atarichii, awaiachii - una manojada Ã±ibui -se v.r. suniarii -, hacerse sikachirii','atarichii- awaiachii- Ã±ibui- sikachirii'),
(170,'alzarse','suniarii','suniarii'),
(171,'allÃ¡','adv chaipi','chaipi'),
(172,'allÃ­','adv chipi','chipi'),
(173,'amado','p.p kuiaska, munaska','kuiaska- munaska'),
(174,'amanecer','v.r. pakarii -, hacer v.t. pakarichii -, hasta adv pakarigta','pakarii- pakarichii- pakarigta'),
(175,'amante','s rigsi','rigsi'),
(176,'amaÃ±ado','v.i. iacharaiai','iacharaiai'),
(177,'amarse','kuiarii- munarii','kuiarii- munarii'),
(178,'amar','v.t. kuiai, munai -, hacer kuiachii, munachii -se (el uno al otro) v.r. kuiarii, munarii','kuiai- munai- kuiachii-munachii'),
(179,'amargo','adj winja -, volverse v.i. winjaiai','winja- winjaiai'),
(180,'amarillarse','v.i. killuiai v.r. killuiarii -, hacer v.t. killuiachii','kulluiai-kulluiarii- killuiachii'),
(181,'amarillo','adj killu','killu'),
(182,'amarrado','p.p. wanguska, wataska - (ej. de esteras) simbaska -, estar v.i. simbaraiai, wataraiai','wangusk- wataska- simbaraiai- wataraiai'),
(183,'amarrar','v.t. wangui, watai - paja maitui - (ej. esteras) simbai -se v.r. simbarii, wangurii, watarii','wangui- watai- maitui- simbai'),
(184,'amarrarse','simbarii- wangurii- watarii',NULL),
(185,'amasarse','mukuiai','mukuiai'),
(186,'amasar','v.t. masachii -se (ej. papas), llegar a v.i. mukuiai','masachii'),
(187,'ambos','adj iskandi a - lados adv kadama','iskandi'),
(188,'a ambos lados','ambos adj iskandi a - lados adv kadama','kadama'),
(189,'amenaza','interj Ja, Jajai',' Ja- Jajai'),
(190,'amigablemente, compartir una bebida','v.r. awirii, uiansarii -, hacer compartir una bebida v.t. uiansachi','awirri- uiansarii- uiansachii'),
(191,'amigo','p.p. iacharidu -s, ser buenos v.i. iacharaiai','iacharidu'),
(192,'amigos','iacharaiai','iacharaiai'),
(193,'amoldarse','v.r. iacharii','iacharii'),
(194,'amontonado','v.i. tularaiai','tularaiai'),
(195,'amontonar','v.t. muntunai - (arena, polvo) juibutui/tibutui','muntunai - juibutui-tibutui'),
(196,'amortajar','v.t. murtajai','murtajai'),
(197,'amortiguaciÃ³n','s shabujui','shabujui'),
(198,'amortiguado','adv shabuju p.p. shabujuriska','shabuju- shabujuriska'),
(199,'amortiguarse','v.impers. shabujui - (en el momento) v.r. shabujurii','shabujui- shabujurii'),
(200,'anciana','s achala mama (gen. en sentido despectivo) awila','achala mama'),
(201,'anciano','s achala, achala taita - de una edad mayor al hablante achala tiu','achala- achala taita '),
(202,'andar','v.i. purii - a gatas llukai - en fila, en orden suiu rii - vagando bandiriai, bandiriarii - despacio (ej. en meditaciÃ³n) v.r. puririi - sin saber quÃ© hacer abintarii -, hacer v.t. purichii - desfilando o vagando, hacer bandiriachii - con alguien (de una f','Purii \nllukaia gatas\nsuiu rii en fila\nbandiriai vagando\npuririi despacio\nabintarii sin saber que hacer \n katiraiai con alguien (de una forma constante)'),
(203,'anÃ©mico','adj killu -, volverse v.i. killuiai','killu- killuiai'),
(204,'angosto','adj kichki, kichkiri','kichki- kichkiri'),
(205,'angustiar','v.t. llakichii','llakichii'),
(206,'ano','s siki','siki'),
(207,'anochecer','v.i. tutaiai','tutaiai'),
(208,'anteayer','adv sug punchata','sug punchata'),
(209,'anterior','adv Ã±ugpamanda -mente Ã±ugpata','Ã±ugpamanda '),
(210,'anteriormente','Ã±ugpata','Ã±ugpata'),
(211,'antes','adv Ã±ug - del amanecer amsamsa -, lo de Ã±ugpamanda','Ã±ug-\namsamsa del amanecer- \nÃ±ugpamanda de lo'),
(212,'antojado','adj karchu','karchu'),
(213,'anular','s surtija churaridiru didu','surtija churaridiru didu'),
(214,'aÃ±adir','v.t. iapai','iapai'),
(215,'aÃ±os','achala','achala'),
(216,'aÃ±o','s wata -s, que tiene muchos adj achala','wata'),
(217,'apaciguar','v.t. chaskichii','chaskichii'),
(218,'apagar','v.i. waÃ±ui','(fuego) waÃ±ui'),
(219,'aparecer','v.r. kawarii','kawarii'),
(220,'apartarse','anchurii','anchurii'),
(221,'apartar','v.t. anchuchii -se v.r. anchurii','anchuchii'),
(222,'apegar','v.t. llutai -, hacer llutachii -se v.r. llutarii, tuparii','llutarii- llutachii'),
(223,'apegarse','llutarii- tuparii','llutarii- tuparii'),
(224,'apelmazado','v.r. apiarii','apiarii'),
(225,'apelmazar','v.t. apiachii','apiachii'),
(226,'apetecible','adj manancha','manancha'),
(227,'apetitoso','adj pisiag','pisiag'),
(228,'apetito','adv iarkaimanda/iarkaiwa, diiarkai - para comer carne, tener v.impers. aichanaiai','iarkaimanda- iarkaiwa- diiarkai'),
(229,'aplanarse','pambaiai','pambaiai'),
(230,'aplanar','v.t. pambaiachii -se v.i. pambaiai','pambaiachii'),
(231,'aplanchar','v.t. planchai','planchai'),
(232,'aplastado','v.i tablaiai','tablaiai'),
(233,'aplicado','p.p. awiska - con la mano, (barro) llunchiska','awiska -  llunchiska'),
(234,'aplicar','v.t. awii - (barro con la mano) llunchii -, hacer awichii -se v.r. awirii, kakurii -, hacerse awichirii','awii- llunchii- awichii-\nhacerse awichirii'),
(235,'apolillado','p.p. mukuska','mukuska'),
(236,'aportar','v.i. luariai','luariai'),
(237,'aporte','s rama, ramai','rama- ramai'),
(238,'apreciado','s kulki wambra, kuri wambra','kulki wambra- kuri wambra'),
(239,'aprecio','interj animal',' animal'),
(240,'aprender','v.t. iachaikui -, llegar a v.r. iachaikurii','iachaikui- iachaikurii'),
(241,'apretado','adj sipi','sipi'),
(242,'apretarse','muruiai','muruiai'),
(243,'apretar','v.t. kapii - (el puÃ±o) muruiachii -se (el puÃ±o) v.i. muruiai','kapii- muruiachii'),
(244,'aprisa','adv kalpa, utka','kalpa- utka'),
(245,'aprisionado','adv sipigta','sipigta'),
(246,'aquel','adj, dem chi/chin','chi-chin'),
(247,'aquÃ­','adv kaipi','kaipi'),
(248,'arÃ¡cea','s kuna, sigsi','kuna- sigsi'),
(249,'araÃ±ar','v.t. aspii -, hacer aspichii','aspii - hacer aspichii'),
(250,'arar','v.t. rastrujiai','rastrujiai'),
(251,'Ã¡rbol','s sacha -, clases de armanga iuiu, asna sacha, bamba, buma maki, chani, chilku, chimbalu, chipa, chunta, damni, idrun/sidrun, imbabi, inchi, insiÃ±u, kanchu, kanilun, karacha (sacha), killu iuiu, kindi ispina, kuilalun, kujaka, kujakillu, uku sacha, llaugs','sacha'),
(252,'arbusto','s chilka, chishaja/shishaja/paramu shishaja','chilka'),
(253,'arco','v.t. arkuiachii/arkusiachii -, hacerse v.i. arkuiai/arkusiai','arkuiachii- arkusiachii- arkuiai-arkusiai'),
(254,'Arco iris','s kuichi','kuichi'),
(255,'arderse','raurarii','raurarii'),
(256,'arder','v.t. raurai v.i. rupai -se v.r. raurarii','raurai- rupai'),
(257,'ardiente','de tierra iuga','de tierra iuga'),
(258,'ardiencia','s raura','raura'),
(259,'ardilla','s ardita','ardita'),
(260,'arepa de choclo','chugllu turtilla','chugllu turtilla'),
(261,'arete','s birindinga/pirindinga','birindinga-pirindinga'),
(262,'arma antigua','makana- chunta makana','makana- chunta makana'),
(263,'armadillo','s matiwaja','matiwaja'),
(264,'aroma','s kupal','kupal'),
(265,'arquear','v.t. arkuiachii/arkusiachii - (Ã¡rbol) patarichii -se v.r. pataririi','arkuiachii- arkusiachii- patarichii'),
(266,'arquearse','pataririi','pataririi'),
(267,'arracacha','s malki','malki'),
(268,'arrancar','(ej. un palo) v.t. pitii -se v.r. pitirii','pitii'),
(269,'arrancarse','pitirii','pitirii'),
(270,'arrastrar','v.t. aliui -, hacer aliuchii -se v.r. aliurii','aliui- aliuchii'),
(271,'arrastrarse','aliurii','aliurii'),
(272,'arreglado','p.p. allichiska','allichiska'),
(273,'arreglar','v.t. allichii -, hacer allichichii -se v.r. allichirii -se el cabello llamburii -se en la cama como para descansar kamirii','allichii- allichichii'),
(274,'arreglarse','allichirii- kamirii\nllamburii el cabello\n',NULL),
(275,'arrepentirse','v.r. wanarii','wanarii'),
(276,'arriba','adv awapi -, hacia wichai -, hasta awama','awapi-\nHacia wichai-\nHasta awama-'),
(277,'arrimar','v.t. kimii, llutai -, hacer kimichii, llutachii -se v.r. kimirii, tangarii, tuparii','kimii- llutai-\nhacer kimichii- llutachii'),
(278,'arrodillar','v.r. kungurii -, hacer v.t. kungurichii','kungurii - \nhacer kungurichii '),
(279,'arrodillarse','kungurii - \nhacer kungurichii ','kungurii - \nhacer kungurichii '),
(280,'arrojar','v.t. sitai -, hacer sitachii - sangre v.i. iawar kibnai/kimna','sitai- \nhacer sitachii- \niawar kibnai- kimnai (arrojar sangre)'),
(281,'arroyo','s iaku Ã±awi -, salir un v.r. tugiarii, wakarii','iaku Ã±awi- '),
(282,'arroz','s arus','arus'),
(283,'arruinar','v.t. wagllichii','wagllichii'),
(284,'mal asado ','chawaiaska','chawaiaska'),
(285,'asado','p.p. kusaska - envuelto en hojas debajo de la ceniza wansmiska - (ej. de una arepa), mal chawaiaska','kusaska'),
(286,'asar','v.t. chamuskai - (carne, maÃ­z tierno) kusai - sin quitar las hojas pangawanta kusai - (ej. choclo) envuelto en hojas debajo de \nla ceniza wansmii \n-se v.r. kusarii ','chamuskai- kusai- pangawanta kusai - wansmii '),
(287,'asarse','kusarii','kusarii'),
(288,'asco','dar v.t. millachii -, Que interj Atstsai/Tsatsai, Tatai','millachii -  Atstsai-Tsatsai- Tatai'),
(289,'asfixiante','adj chukari','chukari'),
(290,'asfixiar','v.t. chukachii','chukachii'),
(291,'asÃ­','adv chasa, kasa - mismo chasallata(ta)/chisinalla, kasallata','chasa- kasa '),
(292,'asi mismo','chasallata- kasallata- chisinalla','chasallata- kasallata- chisinalla'),
(293,'asiento','s tiaridiru - para niÃ±o wawa banku','tiaridiru- banku'),
(294,'asmÃ¡tico','adj samai arkari','samai arkari'),
(295,'Ã¡spero','adj sagra/sarga -, dejar que algo se quede v.t. sagraiachii/ sargaiachii -, volverse v.i. sagraiai/sargaiai','sagra- sarga- sagraiachii- sargaiachii- sagraiai- sargaiai'),
(296,'asquiarse','v.r. amirii','amirii'),
(297,'astilla','s tupulli','tupulli'),
(298,'astuto','adj mishu -, ladrÃ³n muy s kuku sisai/sisag, pinu sisai','mishu'),
(299,'ladron astuto','kuku sisai- sisag- pinu sisai','kuku sisai- sisag- pinu sisai'),
(300,'asustado','p.p. samaikuriska -, quedar v.i. samaikui','samaikuriska-samaikui'),
(301,'asustar','v.t. manchachii -se v.r. mancharii - a un gato, expresiÃ³n para interj Sapi sapi','manchachii'),
(302,'asustarse','mancharii','mancharii'),
(303,'atado','p.p. wataska s iamta wangu, waiunga','wataska- iamta wangu- waiunga'),
(304,'atajar','v.t. arkai -, hacer arkachii','arkai- arkachii'),
(306,'atar','v.t. maniai, watai - dos curÃ­es en la cumbrera de la casa, acto de s mishan','maniai- watai'),
(307,'atardecer','v.i. chisiai, tutaiai -se amsaiai','chisiai- tutaiai'),
(308,'atardecerse','amsaiai','amsaiai'),
(309,'atarraya','s lika','lika'),
(310,'atascar','v.t. chukachii -se v.r. trankarii','chukachii'),
(311,'atascarse','trankarii','trankarii'),
(312,'atento','adj uia','uia'),
(313,'aterrizar','v.t. asintai v.r. asintarii','asintai- asintarii'),
(314,'atizar','v.t. tangachi','tangachii'),
(315,'atontado','v.t. tuntiadusina kawai','tuntiadusina kawai'),
(316,'atontar','v.t. upaiachii -se v.i. upaiai -se, llegar a v.r. upaiarii','upaiachii'),
(317,'atontarse','upaiai- upaiarii','upaiai- upaiarii'),
(318,'atorarse','v.r. chukarii - (tomando algÃºn sÃ³lido) trankarii','chukarii - trankarii'),
(319,'atractivo','adj munachi','munachi'),
(320,'atrancado','adj arkari -, quedar v.r. arkarii','arkari- arkarii'),
(321,'atrancarse','arkarii- trankarii','arkarii- trankarii'),
(322,'atrancar','v.t. arkai, trankai -se v.r. arkarii, trankarii','arkai- trankai'),
(323,'atrÃ¡s','adv kati, wasa ladu -, de katimanda, kipamanda -, hacia, para katigma/katima -, hacerse hacia v.i. chasama tukui','kati- wasa ladu-atrÃ¡s de(katimanda- kipamanda)'),
(324,'para atrÃ¡s ','katigma- katima','katigma- katima'),
(325,'hacia atrÃ¡s ','katigma- katima','katigma- katima'),
(326,'atrasado','v.i. katiai','katiai'),
(327,'atrasarse','v.i. katiai, kipaiai, punchaiai','katiai- kipaiai- punchaiai'),
(328,'atravesado','adv kingrai/kinrai','kingrai-kinrai'),
(329,'atrayente','adj munachi, suma/shuma s miski simi','munachi- suma- shuma- miski simi '),
(330,'augurar','v.r. juajuarii/wajuarii','juajuarii-wajuarii'),
(331,'augurio','v.i. juajuai/wajuai','juajuai-wajuai'),
(332,'aumentar','v.t. iapachii, mirai -se (algo) v.r. iaparii','iapachii- mirai'),
(333,'aumentarse','iaparii','iaparii'),
(334,'aunque','conj maski','maski'),
(335,'aun cuando','maski','maski'),
(336,'ausentarse','v.r. illarii','illarii'),
(337,'ausente','estar v.i. illai','illai'),
(338,'automÃ³vil','s augtu/autu, karu','augtu-autu- karu'),
(339,'autoridad','s justisia -es indÃ­genas, conjunto de kabildu','justisia'),
(340,'auxiliar','v.i. ramai','ramai'),
(341,'avara','nterj kulis wangu/printi, tsitsi (llaugtu), tsitsi wangu','kulis wangu- printi- tsitsi- tsitsi wangu'),
(342,'ave','s pisku','pisku'),
(343,'aventar','v.t. abintai -se v.r. abintari','abintai'),
(344,'aventarse','abintarii','abintarii'),
(345,'avergonzado','p.p. kumuridu','kumuridu'),
(346,'avergonzar','hacer v.t. pingachii/pingaichii -se v.r. pingarii','pingachii- pingaichii '),
(347,'avergonzarse','pingarii','pingarii'),
(348,'averiguar','tapuchii','tapuchii- tapurii'),
(349,'avÃ­o','s kukawi - que se lleva al trabajo s waglla -, hacer v.t. wagllai \n-, llegar a estar listo v.r. wagllarii ','kukawi- waglla- wagllai- wagllarii'),
(350,'avisar','v.t. willai v.r. willarii','willai- willarii '),
(351,'avisparse','v.r. abisparii','abisparii'),
(352,'axila','s kushkila','kushkila'),
(353,'ayer','adv kaina','kaina'),
(354,'ayudar','v.t. aidai/aiudai -, hacer aidachii/aiudachii - (con dinero), hacer ramachii -se (con dinero) v.r. ramarii','aidai- aiudai- aidachii- aiudachii- ramachii (con dinero)'),
(355,'ayudarse','ramarii','ramarii (con dinero)'),
(356,'AyÃºdeme ','interj Ianapawai',' Ianapawai'),
(357,'azadÃ³n','s kuti','kuti'),
(358,'azotar','v.t. asutii, libachii -, hacer asutichii','asutii- libachii - asutichii'),
(359,'azotes','v.i. libai','libai'),
(360,'azulejo','s paramu pisku','paramu pisku'),
(361,'azuzar','v.t. uskachii','uskachii'),
(362,'babosa','clases de s taka kallu, taka kallu churu','taka kallu- taka kallu churu'),
(363,'baboso','adj llaugsa','llaugsa- llaugsaiai'),
(364,'bailar','v.i. bailai, karnabaliai, muiui','bailai- karnabaliai- muiui- bailachii'),
(365,'bajado','p.p. uchullaiaska','uchullaiaska'),
(366,'bajar','v.t. uchullaiachii, uraikuchii v.i. uraikui - bajar de un Ã¡rbol -lluspii-bajar la cantidad- v.t. pisiachii v.i. pisiai- bajar el nivel del rio- chakirii','uchullaiachii- uraikuchii- uraikui\n- (de un Ã¡rbol) lluspii \n- (la cantidad )pisiachii- pisiai\n- (el nivel del rÃ­o )chakirii'),
(367,'bajarse','v.r. lluspirii- bajarse en sentido vertical- asllaiai','lluspirii- asllaiai'),
(368,'bajo','adv urapi','urapi- uraiai- uchullaiai'),
(369,'balanza','s- libra mati','libra mati'),
(370,'balsa','s- balsa','balsa- balsaiai'),
(371,'bÃ¡lsamo','s- balsamu, kuasia','balsamu- kuasia'),
(372,'balso','adj atarichi','atarichi'),
(373,'bambÃº','clase de s pukuna/pukunga','pukuna-pukunga'),
(374,'baÃ±arse','v.t. armachii','armai- armarii'),
(375,'baÃ±ar','v.i. armai v.r. armarii','armachii'),
(376,'bararse','v.i. mana kulkiwa kai v.r. bararii','mana kulkiwa kai- bararii'),
(377,'barranco','s- pata, waiku','pata- waiku'),
(378,'barrer','v.t. pichai','pichai'),
(379,'barriga','wigsa','wigsa'),
(380,'barrigÃ³n','s- butijun','butijun'),
(381,'barrizal','v.i. turuiai , volverse un  turuiai','turuiai '),
(382,'barro','s- turu  - de la cara (pus blanco) ishmaia/izmaia \n- de teÃ±ir tinin/tiÃ±inga turu','turu- ishmaia- izmaia-  tinin- tiÃ±inga turu'),
(383,'Basta','interj Chilla','Chilla'),
(384,'bastante','adj achka, ajai/jai','achka- ajai- jai- sambungiru'),
(385,'bastÃ³n','s tanua- tauna- tawina','tanua- tauna- tawina'),
(386,'batata','s kumal- kumala','kumal- kumala'),
(387,'batea','s- batia','batia'),
(388,'baÃºl','s- wabli- bauli','wabli- bauli'),
(389,'No bautizado','adj auka/augka','auka- augka'),
(390,'bebÃ©','s- wawa','wawa'),
(391,'beber','v.t. upiai','upiai- upiachii- upiarii'),
(392,'dar a beber','upiachii','upiachii'),
(393,'ponerse  a beber','v.r. upiarii','upiarii'),
(394,'chicha','s aswa','aswa'),
(395,'bejuco','s waska','waska'),
(396,'bendecir','v.t. bindisai','bindisai- bindisachii'),
(397,'besarse','v.t. muchai','mucharii'),
(398,'besar','v.r. mucharii','muchai'),
(399,'beso','s muchai','muchai'),
(400,'bien','adj alli- sumaglla; adv allilla- allita; interj Allilla- Allisia-  Ari','alli- sumaglla- allilla- allita- allisia- Wanachu- Wanai-Wanakushi\n- sipigta apretado\n-killu killu dulce\n-chisima tarde\n-apia cocido\n-tulaska amontonado\n-parisidu presentado\n-Hacer bin rurai\n-Sentir alli iuiachii- alliachii'),
(401,'hacer bien','v.t. bin rurai','bin rurai'),
(402,'sentir bien','alli iuiachii- alliachii','alli iuiachii- alliachii'),
(403,'que bien','Wanachu- Wanai- Wanakushi','Wanachu- Wanai- Wanakushi'),
(404,'estÃ¡ bien ','Saludulla- Â¿Allillachu kapuangi?',' Â¿Allillachu kapuangi?'),
(405,'bienvenida','dar la v.t. chaskii','chaskii'),
(406,'billete','s- billiti','billiti'),
(407,'bizco','adj chubiku, chingual, Ã±awi wistu','chubiku- chingual- Ã±awi wistu'),
(408,'blanco','s- lanku adj iura','lanku- iura'),
(409,'blando','adj apia p.p. apiaska','apia- apiaska'),
(410,'blanquearse','v.t. iuraiachii','iuraiai'),
(411,'blanquear','v.i. iuraiai','iuraiachii'),
(412,'blusa','tela que se pone como s- tupulli','tupulli'),
(413,'bobo','adj upa','upa'),
(414,'boca','s- simi','simi'),
(415,'boca abajo ','(referiÃ©ndose a la persona) adv urai singa','urai singa- pagchaska'),
(416,'bocio','s- kutu','kutu'),
(417,'bodoquera','s- budukira','budukira'),
(418,'boje','s- iura sungu','iura sungu- sungu(animal)'),
(419,'bolsa','s- jigra','jigra'),
(420,'bonito','adj suma- shuma','suma- shuma- achalai-chalai '),
(421,'que bonito','interj Achalai- Chalai','Achalai- Chalai'),
(422,'borde','s- pata','pata'),
(423,'bordÃ³n','s- tanua- tauna- tawina','tanua- tauna- tawina'),
(424,'borracho','s- machag- machangichu p.p. alkansadu- machaska','machag- machangichu- alkansadu- machaska'),
(425,'borrachÃ³n','s- upiangichu, upiangiru','upiangichu- upiangiru'),
(426,'bosque','s- sachaiug, sachuku (sacha uku)','sachaiug- sachuku- sachukuiai'),
(427,'volverse bosque','sachukuiai','volverse sachukuiai'),
(428,'botar','v.t. sitai, urmachii','sitai- urmachii- sitachii'),
(429,'boxear','v.i. puÃ±itianakui v.r. puÃ±utiarii','puÃ±itianakui-  puÃ±utiarii'),
(430,'bramar','v.i. ramai','ramai'),
(431,'bramarse','v.r. ramarii','ramarii'),
(432,'bravo','adj kunu kunu, rabiari','kunu kunu- rabiari- micha- rabiarii'),
(433,'brava','adj kunu kunu- rabiari- kuku mamita','kunu kunu- rabiari- micha- rabiarii'),
(435,'braza','s nina','nina- ninaiai- ninaiachii'),
(436,'brazo','s razu','razu'),
(437,'brazo auperior','juakimi- kuniju','juakimi- kuniju'),
(438,'brazuelo de un rÃ­o','s- iaku malki','iaku malki'),
(439,'brillante','adj puncha- punchalla','puncha- punchalla'),
(440,'brillar','v.i. punchaiai','punchaiai- punchaiachii'),
(441,'brincar','v.i. pawai- saltai','pawai- saltai\n-tingirii un poco \n-ponerse a (pawarii- saltarii)\n-hacer chungai'),
(442,'brindar','v.t. kaiajuachii','kaiajuachii- mingachii- kaiajuachidiru- aidachii- aiudachii'),
(443,'brotado','p.p. chawaiaska','chawaiaska'),
(444,'brotar','v.r. nasirii','nasirii- malkirii'),
(446,'bruja','s- kuku awila- kuku mamita','kuku awila- kuku mamita'),
(447,'brujeado','p.p. mana alli juajuachiska- wajuachiska','mana alli juajuachiska- wajuachiska'),
(448,'brujear','v.t. daÃ±ui v.i. samai','daÃ±ui- samai'),
(449,'brujo','s- millaipa iacha- samai pagta- sinch','millaipa iacha- samai pagta- sinchi- jiru iacha- jiru runa- mana \nalli iacha'),
(450,'buche','s- wichi','wichi'),
(451,'buena','adj alli, alli uma, chaia, suma/shuma p.p. ajustadu','alli- alli uma- chaia- suma-shuma- ajustadu'),
(452,'bueno','adj alli, alli uma, chaia, suma/shuma p.p. ajustadu','alli- alli uma- chaia- suma-shuma- ajustadu'),
(453,'buen olor ','miski asna- suma asna','miski asna- suma asna'),
(454,'buena suerte','v.t. alli juajuachii/wajuachii','alli juajuachii- wajuachii'),
(455,'que bueno','interj Achalai/Chalai','Achalai- Chalai'),
(456,'ser bueno','alli kai','alli kai'),
(457,'buenas tardes','Chisiapuangi','Chisiapuangi- respuesta (Allilla-Allisia)'),
(458,'buenas noches','tutaiapuangi','tutaiapuangi- respuesta (Allilla-Allisia)'),
(459,'buenos dias','Allisiapuangi','Allisiapuangi- respuesta (Allilla-Allisia)'),
(460,'buey','wagra','wagra'),
(462,'buitre','s- kurikingi','kurikingi'),
(464,'burlarse','v.r. un arii','un ai\n- burlarse de(uno mismo) papa\n- burlarse de  asipaiai- un ai'),
(465,'bus','augtu- autu- karu','augtu- autu- karu'),
(466,'buscar','v.t. maskai','maskai- maskachii '),
(467,'buscarse','v.r. maskarii','maskarii'),
(469,'cabalgar','v.i. changalai','changalai'),
(470,'cabalgarse','v.r changalarii','changalarii'),
(471,'cabecear','v.i. singui','singui'),
(472,'cabecera','sanua- sawina- shauna','sanua- sawina- shauna'),
(473,'cabello','s- agcha','agcha'),
(474,'cabello rubio','chawar agcha','chawar agcha'),
(475,'cabello blanco','chawar agcha','chawar agcha'),
(476,'caber','pagtai','pagtai- pagtachii '),
(477,'cabeza','s-  uma','uma'),
(478,'cabildo','los miembros del s-  justisiakuna','justisiakuna'),
(479,'cabuya','s- chawar','chawar'),
(480,'cacique','s- iaia','iaia'),
(481,'cacho','s- bututu','bututu'),
(482,'cada lado','adv kadama','kadama'),
(483,'a cada lado','kadama','kadama'),
(484,'caer','v.i. urmai-;caer(derrumbe)- lluspii; caer hielo- ilui;caer algo al ojo- juiturii;caer  al suelo (un Ã¡rbol)- mandarii; caer en una trampa- tugllarii; caer gotas- suturii','urmai- lluspii- ilui- juiturii- mandarii- tugllarii- suturii'),
(485,'caerse','urmarii','urmarii- urmanaiai- '),
(486,'caer','estar al punto de v.i. urmanaiai','urmanaiai'),
(487,'cafÃ©','de color adj ianusu','ianusu'),
(488,'cajÃ³n','s- wabli- bauli','wabli- bauli'),
(489,'calabaza de arbol','sacha puru','sacha puru'),
(490,'calambre','s- angukuna timplarii-  shabuju- shabujui','angukuna timplarii-  shabuju- shabujui- angukuna timplarii'),
(491,'calavera','s- uma tullu','uma tullu'),
(492,'calentar','v.t. kunuchii, rupaiachii','kunuchii- rupaiachii- kunuiachii'),
(493,'calentarse','v.i. rupaiai- v.r. kusarii','rupaiai- kusarii- kunuiai'),
(494,'calentura','s- rupai','rupai'),
(495,'caliente','adj kunu, rupa','kunu- rupa- iunga'),
(496,'que caliente','Achuchui- Achuchuka- Chuchui- Chui- \nChuka','Achuchui- Achuchuka- Chuchui- Chui- \nChuka'),
(497,'calmar','v.r. samarii- chaskirii','samarii- chaskirii'),
(498,'calmarse','pasinsiarii','pasinsiarii'),
(499,'calor','s- rupai- v.i. kunui- v.r. ruparii \n','rupai\n- kunui- ruparii (sentir calor)'),
(500,'calumniar','v.t. juchachii- v.r. juchachirii','juchachii'),
(501,'calumniarse','juchachirii (entres si)','juchachirii (entres si)'),
(502,'calzar','v.t. churachii','churachii'),
(503,'callada','adj, adv upalla','upalla'),
(504,'callado','v.r. disimularii','disimularii'),
(505,'callar','v.t. upallachii','upallachii'),
(506,'callarse','v.i. upallai- v.r. upallarii','upallai- upallarii'),
(507,'calle','s- kalli','kalli'),
(508,'callo','adv shina jaiagta','shin a jaiagta'),
(509,'cama','s- kawitu- puÃ±udiru','kawitu- puÃ±udiru'),
(510,'cambiar','v.t. trukai','trukai'),
(511,'cambiarse','v.r. kambiarii- trukarii','kambiarii- trukarii'),
(512,'camilla','s- chakana','chakana'),
(513,'caminar','v.i. purii - en la punta de los dedos de los pies v.r. amchisina tukuspa sarurii -, hacer v.t. purichii','purii- purichii'),
(514,'camino','s- Ã±ambi','Ã±ambi'),
(515,'camote','s- kumal- kumala','kumal- kumala'),
(516,'canalete','s- walmu','walmu'),
(517,'canasta','canasta tejida s- saparu \n- bien tupida con tapa puti','saparu'),
(518,'candela','s- nina','nina- ninaiachii '),
(519,'cangrejo','s- kangariju','kangariju'),
(520,'canilla','s- chiuka- shibka','chiuka- shibka'),
(521,'cansado','p.p. saijuska- saikuska; muy cansado- adj samba','saijuska- saikuska'),
(522,'Muy cansado','samba','samba'),
(523,'cansar','saijuchii- saikuchii- v.i. saijui- saikui','saijuchii- saikuchii- saijui- saikui- sambaiachii '),
(524,'cansarse','v.i. amii, sambaiai-  v.r. saijurii/saikurii -se, hasta adv saijugta/saikugta','amii- sambaiai- saijurii- saikurii -saijugta- saikugta'),
(525,'cantar','v.i. birsiai, kantai - (el mÃ©dico tradicional) takii, tunai - (para sÃ­ mismo o sin efectuar nada) v.r. takirii, tunarii','birsiai- kantai-  takii- tunai- takirii- tunarii'),
(526,'caÃ±a','s- wiru - de maÃ­z sara wiru - sin dar lugar a cosecha, volverse v.i. wiruiai','wiru'),
(527,'caÃ±a de maiz','sara wiru','sara wiru'),
(528,'capar','v.t. kapai','kapai'),
(529,'caprichoso','v.r. rabiarii','rabiarii'),
(530,'capture','v.t. apichii','apichii'),
(531,'cara','s- kachitis, Ã±awi','kachitis- Ã±awi'),
(532,'caracol','s- churu','churu'),
(533,'Caramba','interj Karachu, TsajuaÃ±i','Karachu- TsajuaÃ±i'),
(534,'carbÃ³n','s- kilimsa','kilimsa'),
(535,'cardar','v.t. Ã±agchachii','Ã±agchachii'),
(536,'carecer','v.impers. pisii','pisii'),
(537,'cargar','v.t. aparii, llutai - a las espaldas con un segundo rebozo v.r. kinchanarii/sikincharii - algo a la cintura (los hombres) bugnarii - en el rebozo kipirii - en los brazos, en los hombros markarii \n-, hacer v.t. aparichii, llutachii, markachii ','aparii- llutai -aparichii- llutachii- markachii'),
(538,'carga de leÃ±a','iamta wangu','iamta wangu- watsibi'),
(539,'cargo','hacer v.t. karguchii','karguchii'),
(540,'carnaval','s- kalusturinda-karustulinda-  wata-  wataura- -, canto de wata takii\n-, llegar el v.i. karnabaliai','kalusturinda- karustulinda-  wata- wataura- wata takii-karnabaliai '),
(541,'carne','s- aicha -de cacerÃ­a sachuku aicha -de rÃ­o iaku aicha -, tener ganas de comer v.impers. aichanaiai','aicha- sachuku aicha- iaku aicha- aichanaiai \n'),
(542,'carretera','s- Ã±ambi','Ã±ambi'),
(543,'carro','s- augtu- aut- karu','augtu- aut- karu'),
(544,'casa','s- wasi - propia, el que tiene wasiiug -, hacer una v.t. wasichii -, hacerse una v.r. wasichirii','wasi- wasiiug- wasichii- wasichirii'),
(545,'casada','s- kusaiug','kusaiug'),
(546,'casamiento','s- kasarai','kasarai'),
(547,'casarse','v.i. kasarai- kapii- maki kapinakui- v.r. katirii- kumpaÃ±arii','kasarai- kapii- maki kapinakui-katirii- kumpaÃ±arii'),
(548,'casi','adv Ã±alla- (curado, bueno) aska; casi que no- manancha','Ã±alla- aska'),
(549,'casi que no','manancha','manancha'),
(550,'casita pequeÃ±a ','tambu','tambu'),
(551,'caso','v.i. juisiui','juisiui'),
(552,'castaÃ±o','adj pukusu','pukusu'),
(553,'castigado','v.i. libai','libai'),
(554,'castigar','v.t. aiachii-  asnachii- asutii- iachii- iuiachi- libachii- pukuiachii -, hacer asutichii','aiachii-  asnachii- asutii- iachii- iuiachi- libachii- pukuiachii -asutichii'),
(555,'castrar','v.t. kapai','kapai'),
(556,'cavar','v.t. jutkuchii/utkuchii, jutkui/utkui','jutkuchii- utkuchii- jutkui- utkui'),
(557,'cavidad','s- sumbu -, hacer v.t. sumbuiachii -, llegar a ser una v.i. sumbuiai','sumbu- sumbuiachii- sumbuiai'),
(558,'cazar','v.t. tarukiai','tarukiai'),
(559,'cazuela','s- kallana','kallana'),
(560,'cegar','v.t. tutaiachii','tutaiachii'),
(561,'cedazo','s- susunga','susunga'),
(562,'ceniza','s- uchpa- adj uchpintu','uchpa- uchpintu(color)'),
(563,'centavos','s- kuartillu -, moneda de 40 patakun\n-, moneda de 50 fuirti','kuartillu - patakun- fuirti'),
(564,'centro','s- chaugpi -, colocarse al v.r. chaugpirii','chaugpi - chaugpirii'),
(565,'cepo','s- kabildu','kabildu'),
(566,'cerbatana','s- budukira','budukira'),
(567,'cerca de','adv kailla','kailla'),
(568,'cercar','v.t. kinchai','kinchai'),
(569,'cerco','s- kincha','kincha'),
(570,'cerdo','s- kuchi - montaraz sainu','kuchi- sainu'),
(571,'cerebro','s- tutaÃ±u','tutaÃ±u'),
(572,'ceremonias','hacer efectuar ciertas (el mÃ©dico tradicional) v.t. takichii -, efectuarse ciertas v.r. takichirii','takichii- takichirii'),
(573,'cernidor','s- susunga','susunga'),
(574,'cernir','v.t. susui -, hacer susuchii -se v.r. susurii','susui- susuchii'),
(575,'cernirse','susurii','susurii '),
(576,'cerrada','p.p. wichkaska','wichkaska'),
(577,'cerrado','p.p. wichkaska','wichkaska'),
(578,'cerrar','v.t. wichkai','wichkai'),
(579,'cerrarse','v.r. wichkarii','wichkarii'),
(580,'cerveza','s- chiri- winja','chiri-  winja'),
(581,'cicatrizar','v.t. aichaiachii','aichaiachii'),
(582,'ciempiÃ©s','s- pasag chakiiug- santu pisu- waranga -, clase de chanchu','pasag chakiiug- santu pisu- waranga'),
(583,'cien','adj pasag- patsa- patsag','pasag- patsa- patsag'),
(584,'cierto','adv sutipa','sutipa'),
(585,'cigarra','s- chapuli','chapuli'),
(586,'cinco','adj pichka','pichka'),
(587,'cincuenta centavos','fuirti','fuirti'),
(588,'cinta delgada','kari chumbi','kari chumbi'),
(589,'cincuenta','adj pichka chunga','pichka chunga'),
(590,'cinturÃ³n','v.i. chumbillii v.r. chumbillirii','chumbillii-  chumbillirii'),
(591,'ciruela','s- siluira- siruila','siluira- siruila'),
(592,'ciudad','s- atun puiblu','atun puiblu'),
(593,'No civilizado ','auka/augka','auka/augka'),
(594,'civilizado','adj auka- augka','auka- augka'),
(595,'claridad','s- puncha','puncha'),
(596,'claro','adj punchalla- interj Ari','Punchalla- Ari'),
(597,'clase','s- kasta','kasta'),
(598,'cobarde','adj chucha','chucha'),
(599,'cobija','s- katanga','katanga'),
(600,'cobijado','v.i. kataraiai','kataraiai'),
(601,'cobijar','v.t. katachii','katachii'),
(602,'cobijarse','v.i. katai v.r. katachirii','katai- katachirii'),
(603,'cocido','p.p. ianuska; mal cocido-chawaiaska','ianuska'),
(604,'mal cocido','chawaiaska','chawaiaska'),
(605,'medio cocido','adj chawa chawa','chawa chawa'),
(606,'cocinado','p.p. ianuska','ianuska'),
(607,'cocinar','v.t. ianui -, hacer ianuchii','ianui- ianuchii'),
(608,'cocinar bien','v.i. apiai','apiai'),
(609,'cocinarse','v.r. ianurii','ianurii'),
(610,'cocoyo','s- nina kuru','nina kuru'),
(611,'cochino','adj mapa','mapa'),
(612,'codo','s- kunija- Ã±udu','kunija- Ã±udu'),
(613,'coger','v.t. aisai - apii - un mal viento v.i. wairai - en la mano v.r. charirii - para sÃ­ mismo - aisarii - una cosa (de su propia casa) sin permiso para comerla sisarii -, hacer v.t. aisachii, apichii','aisai- apii- wairai- charirii- aisarii- sisarii- aisachii- apichii'),
(614,'cogerse','v.r. apirii, warkurii','apiri- warkurii'),
(615,'cogote','s- kuguti','kuguti'),
(616,'col','s- iuiu','iuiu'),
(617,'col de monte','ruku sacha iuiu','ruku sacha iuiu'),
(618,'cola','s- chupa- adv\nchupintu, katingiru ','chupa- chupintu- katingiru '),
(619,'colaborar mutuamente','v.r. ramarii (con dinero)','ramarii'),
(620,'colada','s- api','api'),
(621,'colador','s- susunga','susunga'),
(622,'colegio','s- iachaikudiru wasi-  iachaikui wasi','iachaikudiru wasi-  iachaikui wasi'),
(623,'colgar','v.t. warkui - a alguien en el acabado de la casa wachishai -, hacer warkuchii','warkui- wachishai- warkuchii'),
(624,'colgarse','v.r. warkurii','warkurii'),
(625,'colibrÃ­','s- kindi','kindi'),
(626,'colocado','estar v.i. churaraiai  - en orden, estar wachuraiai \n','churaraiai- wachuraiai'),
(627,'colocar baras','chagllai','chagllai'),
(628,'colocar','v.t. asintai, churai, kimichii, saiachii - baras chagllai - como almohada sanuai/sawinai/shaunai - en agua para que se formen raÃ­ces angiachii - trampas, lazo corredizo tugllai','asintai- churai- kimichii- saiachii- sanuai-sawinai- shaunai -angiachii- tugllai'),
(629,'colocarse al centro','v.r. chaugpirii','chaugpirii'),
(630,'color','s- rigcha','rigcha'),
(631,'colorado','adj pichi, puka','pichi- puka'),
(632,'collar','s- walka - de cuentas chakira - de chakira waiunga -, ponerse v.r. walkarii','walka- chakira- waiunga- walkarii'),
(633,'comadreja','s- chukuri','chukuri'),
(634,'comadrona','s- kakug','kakug'),
(635,'comelÃ³n','adj galgu','galgu'),
(636,'comenzar','v.i. kallarii\n- a pararse (un nene) v.r. pininarii ','kallarii- pininarii'),
(637,'comer','v.t. kastui, mikui - sin desgranar kachkai - y beber segÃºn la voluntad del que le invitÃ³ trabaju kuai - (en el momento) v.r. kasturii - (un poquito) con aprecio amullirii -, dar de v.t. mikuchii - carne con ajÃ­, hacer aiachii','kastui- mikui- kachkai-trabaju kuai- kasturii- amullirii- mikuchii- aiachii'),
(638,'comestible','s- kukawi- mikui','kukawi- mikui'),
(639,'gula','galgu','galgu'),
(640,'cometer una falta','v.i. faltai- paltai - v.r. faltarii- paltarii','faltai- paltai -faltarii- paltarii'),
(641,'comezÃ³n','s- sigsii -, sentir un poco de v.i. sigsii -, dar un poco de v.t. sigsichii','sigsii - sigsii - sigsichii'),
(642,'comida','s- mikui - especial de mote con carne y huevos buda \n-, ofrecerse mutuamente v.r. mikuchirii','mikui- buda- mikuchirii'),
(643,'comilÃ³n','s- sambungiru','sambungiru'),
(644,'comino','s- mangas','mangas'),
(645,'como','post kuinta','kuinta'),
(646,'cÃ³mo','interrog imasatak','imasatak'),
(647,'cÃ³mo amanecio ','interj Pakaripuangi','Pakaripuangi'),
(648,'completamente','adv impas, lim intens diltudu','impas-lim- diltudu'),
(649,'comprar','v.t. randii -, orientar para randichii','randii- randichii'),
(650,'comprometerse','v.r. animarii-animurii -, hacer v.t. animachii- animuchii','animarii- animurii- animachii- animuchii'),
(651,'con que','adv rel imawa, imawanta','imawa- imawanta'),
(652,'con quÃ©','interrog imawantak','imawantak'),
(653,'concavidad','s- kingu','kingu'),
(654,'concubina','s- rigsi','rigsi'),
(655,'conducir','v.t. pusai - hacia acÃ¡ pusamui -, hacer pusachii, pusachimui','pusai- pusamui-  pusachii- pusachimui'),
(656,'conejillo de indias','s- kui','kui'),
(657,'conejo','s- juiniku- kuniju','juiniku- kuniju'),
(658,'confeccionar','v.t. rurai/ruai - algo, hacerse v.r. rurachirii/ruachirii','rurai- ruai- rurachirii- ruachirii'),
(659,'confesar','v.r. willarii','willarii'),
(660,'conga','s- iana aÃ±angu','iana aÃ±angu'),
(661,'conocer','v.t. rigsii -, hacer rigsichii -, darse a v.r. rigsichirii','rigsii- rigsichii'),
(662,'darse a conocer','rigsichirii','rigsichirii'),
(663,'conoce','que adj rigsi -, que se rigsiri','rigsi- rigsiri'),
(664,'conocido','p.p. rigsidu','rigsidu'),
(665,'consciente','hacerse v.r. abisparii','abisparii'),
(666,'conservar','v.t. wakachii','wakachii'),
(667,'construcciÃ³n de ramos','s- kastillu- astillu','kastillu- astillu'),
(668,'construir','(una casa) v.t. wasichii - un cerco kinchai','wasichii- kinchai'),
(669,'contar','- cuentos parlai - un â€œcachoâ€ v.r. llullarii','willai- parlai- llullarii'),
(670,'contentar','v.t. kuntintachii, kusikuchii','kuntintachii- kusikuchii'),
(671,'contentarse','v.r. kuntintarii','kuntintarii'),
(672,'contento','adj kuntintu','kuntintu'),
(673,'contestar','v.t. ainii \n-, hacer ainichii','ainii- ainichii'),
(674,'ContracciÃ³n muscular','s- rapiai- , dar v.i. aisai, rapiai , dar (en el momento) v.r. rapiarii','rapiai- aisai- rapiai- rapiarii'),
(675,'contrario','adv, conj chasapaka','chasapaka'),
(676,'al contrario','adv, conj chasapaka','chasapaka'),
(677,'contribuciÃ³n','s- rama, ramai','rama- ramai'),
(678,'contribuir','v.i. ramai - (entre varios) v.r. ramarii','ramai- ramarii'),
(679,'convencer','v.t. krichii -, casi llegar a flaugtai/flaugtiai/laugtai','krichii- flaugtai- flaugtiai- laugtai'),
(680,'convenir','v.r. animarii/animurii','animarii- animurii'),
(681,'conversar','v.t. parlai','parlai'),
(682,'convertirse en monte','v.i. chaparuiai','chaparuiai'),
(683,'convidado','p.p. kunbidaska','kunbidaska'),
(684,'convidar','v.t. kunbidai -, hacerse v.r. kunbidarii ','kunbidai- kunbidarii'),
(685,'convincente','s- krichig, miski simi','krichig- miski simi'),
(686,'convivir con','v.i. kawituraiai','kawituraiai'),
(687,'coqueto','adj pingari','pingari'),
(688,'corajudo','s- muruchu sungu','muruchu sungu'),
(689,'coraza del asna iuiu','s- suma asnai','suma asnai'),
(690,'corazÃ³n','s- sungu, kurasun - (dedo) chaugpi didu','sungu- kurasun- chaugpi didu(dedo)'),
(691,'corona','s- llaugtu, walka -, ponerse v.r. llaugturii','llaugtu- walka- llaugturii '),
(692,'corral','s- kincha','kincha'),
(693,'correa','s- siÃ±idur','siÃ±idur'),
(694,'correctamente','adv juisiu','juisiu'),
(695,'correr','(aprisa) v.i. kalpai -, hacer v.t. kalpachii','kalpai- kalpachii'),
(696,'corromper','v.t. wagllichii','wagllichii'),
(697,'corta','(persona) que adj kuchug','kuchug'),
(698,'cortadera','hierba s kuchuringa','kuchuringa'),
(699,'cortado','p.p. kuchuska - (de encima) rutuska - en las construcciones, listo para amarrar tarkiadu','kuchuska- rutuska- tarkiadu'),
(700,'cortar','v.t. kuchui, lisiachii  - Ã¡rboles con hacha achai/achiai - hierbas y Ã¡rboles pequeÃ±os sukalai - (a alguien) nanachii - (de encima) rutui - (madera en tablas, trocitos o pedazos) pikai - (ramas) susuchii - (tela, violentamente) shuchui -, hacer kuchuchii-,','kuchui- lisiachii- achai- achiai- sukalai- nanachii- rutui- pikai- susuchii- shuchui- kuchuchii- kuchuchirii'),
(701,'cortarse ','v.r. kuchurii, lisiarii','kuchurii- lisiarii- ruturii- puchkui'),
(703,'corte','s- tarka - en una madera, en la cual se puede amarrar un lazo p.p. kungaiachiska, kungiaska - en una madera, hacer una v.t. kungaiachii','tarka- kungaiachiska- \nkungiaska- kungaiachii'),
(704,'corteza','s- ispingu- kara- kaspi kara','ispingu- kara- kaspi kara'),
(705,'cortico','adj muchilingu','muchilingu'),
(706,'corto','adjumutu','umutu'),
(707,'cosecha','s- pallai -, estar a punto de v.r. pallarii','pallai- pallarii'),
(708,'cosechar','v.t. pallai - algo de la sementera chagrai/chagriai - (una fruta) pitii -, hacer que vaya a pallachii - algo de la sementera, hacer chagrachii/ chagriachii - (para uno mismo) v.r. bidarii','pallai- chagrai- chagriai- pitii- pallachii- chagrachii-  \nchagriachii- bidarii'),
(709,'coser','v.t. sirai - a medias apichii','sirai- apichii'),
(710,'coserse','v.r. sirarii','sirarii'),
(711,'cosquillas','hacer v.i. kushkilai - a alguien, hacerle v.t. kushkilachii','kushkilai- kushkilachii'),
(712,'coto','s- kutu','kutu'),
(713,'crecer','v.i. susukaiai, wiÃ±ai -, volver a chawaiai -, vuelto a p.p. chawaiaska','susukaiai- wiÃ±ai- chawaiai- chawaiaska'),
(714,'crecido','p.p. wiÃ±aska - un poco, que ha adj maltu','wiÃ±aska- maltu'),
(715,'creciente','(del rÃ­o) s-  iaku jundai','iaku jundai(del rÃ­o)'),
(716,'creer','hacer v.t. krichii','krichii'),
(717,'crespo','adj chirapa- chirapu','chirapa- chirapu'),
(718,'crÃ­a','dar v.t. urmachii, wawa urmachii v.r. wacharii','urmachii- wawa urmachii- wacharii'),
(719,'criada','s- wawa','wawa'),
(720,'criado moho','p.p. mujusiaska','mujusiaska'),
(721,'criar','v.t. wiÃ±achii, wamnai v.i. wiÃ±ai - moho mujusiai - Ã¡rboles, monte, dejar v.t. sachukuiachii','wiÃ±achii- wamnai- wiÃ±ai - mujusiai - sachukuiachii'),
(722,'criarse','v.r. wiÃ±arii','wiÃ±arii'),
(723,'crin','s- agcha','agcha'),
(724,'criticado','ser v.i. uiachii tukui','uiachii tukui'),
(725,'criticÃ³n','s- un adur','un adur'),
(726,'crudo','(carne, comida) adj chawa','chawa'),
(727,'cruzado','adv kingrai- kinrai','kingrai- kinrai'),
(728,'cruzar a la otra ribera','v.t. chimbai','chimbai'),
(729,'cuaderno','s-  iachaikudiru panga','iachaikudiru panga'),
(730,'cual','rel mai, maikan','mai- maikan'),
(731,'cualquiera','maikanpas- pipas','maikanpas- pipas'),
(732,'cualquier parte','maita','maita'),
(733,'Por cualquier','maita','maita'),
(734,'cualquier cosa','imapas- imas','imapas- imas'),
(735,'cualquier','rel maikan - cosa imapas/imas - parte, por adv rel maita -a pron maikanpas, pipas','maikan'),
(736,'cuÃ¡ndo','interrog imauratak','imauratak'),
(737,'cuanto','cuanto hace (de tiempo) adv rel maituku -(s) masa, machka','maituku'),
(738,'cuantos','cuanto hace (de tiempo) masa- machka ','masa- machka '),
(739,'cuÃ¡nto','interrog masatak','interrog masatak'),
(740,'cuÃ¡ntos','interrog masatak','masatak'),
(741,'cuarenta','adj chusku chunga','chusku chunga'),
(742,'cuarto creciente','s- chaugpuncha killa','chaugpuncha killa'),
(743,'cuarto menguante','s- chaugpuncha killa','chaugpuncha killa'),
(744,'cuatro centavos','kuartillu','kuartillu'),
(745,'cuatro','adj chusku - centavos kuartillu','chusku'),
(746,'cuatrocientos','adj chusku pasag/patsa/patsag','chusku pasag- patsa- patsag'),
(747,'cubierto','p.p. ugllariska -, estar v.i. kataraiai','ugllariska- kataraiai'),
(748,'cubrir','v.t. maitui, pakachii - (con bejuco, cuerda, etc.) maituchii - (con cobija) katachii - (ej. una casa) kilpai -, hacer kilpachii','maitui- pakachii -maituchii - katachii -  kilpai - kilpachii'),
(749,'cubrirse','v.i. katai- v.r. katarii- kilparii- pakakurii ;  (a sÃ­ mismo) maiturii ; para protegerse del agua v.i. washabai','katai-  katarii- kilparii- pakakurii- maiturii(a si mismo)- washabai'),
(750,'cucarrÃ³n','s- isma muru','isma muru'),
(751,'cuclillas','ponerse en v.r. kurparii, kuruiarii','kurparii- kuruiarii'),
(752,'cuchillo','s- kuchillu','kuchillu'),
(753,'cuello','s kunga - del puru puru singa','kunga'),
(754,'cuenta de','cuenta de, a la adv kuinta - -, sin darse adv kungailla','kuinta- kungailla'),
(755,'sin darse cuenta','kungailla','kungailla'),
(756,'a la cuenta de ','kuinta','kuinta'),
(757,'cuento','s- parlu','parlu'),
(758,'cuento chistoso','urdimal parlu','urdimal parlu'),
(759,'cuerda','s- waska','waska'),
(760,'cuerno','s- kachu','kachu'),
(761,'cuerno de ganado','bututu','bututu'),
(762,'cuero','cuero (animal) s kara \n- de res uma kara','kara'),
(763,'cuero de res','uma kara','uma kara'),
(764,'cuesta','s- saia','saia'),
(765,'cuidador da la casa','s- chagrakama, wasikama','chagrakama-  wasikama'),
(766,'cuidar','v.t. charii - a los pequeÃ±os wamnai - la casa, hacer que quede para shanachii','charii- wamnai- shan achii'),
(767,'cuidarse','v.r. kuidarii','kuidarii'),
(768,'culebra','sobrenombre para una s mana alli waska','mana alli waska'),
(769,'cura las enfermedades','que adj alli(pa) iuiaiiug, ambig/ambidur','alli iuiaiiug- ambig- ambidur'),
(770,'curaciÃ³n','s- ambii','ambii'),
(771,'curandero','s- ambig/ambidur, iacha, sinchi -, persona que se hace pichangiru, sambungiru','ambig- ambidur- iacha- sinchi- pichangiru- sambungiru'),
(772,'curar','v.t. aliachii/alliachii, ambii - las manos maki sinchiachii - (el cuerpo) de los malos vientos waira pichai -, hacer ambichii','aliachii- alliachii-  ambii - maki sinchiachii - waira pichai- ambichii'),
(773,'curarse','v.i. aliai/alliai v.r. aliarii/alliarii, ambirii, medio v.i. askaiai','aliai- alliai- aliarii- alliarii- ambirii-askaiai'),
(774,'curÃ­','s- kui, shanita','kui- shan ita'),
(775,'curisito','s- kuitum','kuitum'),
(776,'curuba','s- purupuru','purupuru'),
(777,'curva','s- kingu','kingu'),
(778,'curvarse','v.i. arkuiai- arkusiai','arkuiai- arkusiai'),
(779,'curvo','hacerse v.r. pataririi','pataririi'),
(780,'cusma','clase de s kurunchi/kurunchu kusma','kurunchi- kurunchu kusma'),
(781,'cÃºspide','formar una v.t. tulai','tulai'),
(782,'chacla','s- chaglla - que se emplea como medida chaglla tupu/tupu chaglla','chaglla- chaglla tupu- tupu chaglla'),
(783,'chalina','s- baita','baita'),
(784,'chamuscar','v.t. chamuskai','chamuskai'),
(785,'chanda','s- karacha','karacha'),
(786,'chaparral','s-  chaparu','chaparu'),
(787,'chaquÃ­n','palito s tarpunga (kaspi)','tarpunga'),
(788,'chaquira','s- walka','walka'),
(789,'charco','(profundo) s kucha -, hacer v.t. kuchaiachii -, llegar a formarse un v.i. kuchaiai','kucha- kuchaiachii- kuchaiai'),
(790,'charlatÃ¡n','s- chankual/chankuan simi','chankual- chankuan simi'),
(791,'chicha','s- aswa - hacer que prepare v.t. aswachii','aswa- aswachii'),
(792,'chicha simple','mananchalla aswa','mananchalla aswa'),
(793,'chicharra','s- chapuli','chapuli'),
(794,'chiltado','p.p. chigtaska','chigtaska'),
(795,'chiltar','v.t. chigtai -, hacer chigtachii','chigtai-chigtachii'),
(796,'chiltarse','v.r. chigtarii','chigtarii'),
(797,'chiquitico','adj uchullatum','uchullatum'),
(798,'chiquito','s- wawa- adj uchulla','wawa- uchulla'),
(799,'chirilla','s- kuitinsa muiu','kuitinsa muiu'),
(800,'chirimoyo','s- wanamna','wanamna'),
(801,'chismear','v.i. chiltiai - de alguien v.t. wasa rimai','chiltiai- wasa rimai'),
(802,'chismoso','adj chankual/chankuan p.p. mana awantadu','chankual- chankuan- mana awantadu'),
(803,'chistoso','adj rasia- millai -, (apodo para) alguien s urdimal','rasia- millai- urdimal'),
(804,'chiza','larva s kusu','kusu'),
(805,'choclo','s- chugllu- hacerse v.i. chuglluiai ','chugllu- chuglluiai'),
(806,'chonta','s- chunta','chunta'),
(807,'chontaduro','s- chuntaruru- chuntaduru','chuntaruru- chuntaduru'),
(808,'choza','s- tambu','tambu'),
(809,'chueco','adj wingu','wingu'),
(810,'chundur','s- chundur','chundur'),
(811,'chupaflor','s- kindi','kindi'),
(812,'chupar','(ej. un huevo crudo) v.t. ubsii - (el seno) chuchui -, hacer ubsichii','ubsii- chuchui- ubsichii'),
(813,'chuparse','(ej. un huevo crudo) v.r. ubsirii - (el seno) chuchurii -(se) caÃ±a wirurii','ubsirii- chuchurii- wirurii'),
(814,'chuzar','v.t. tugsii -, dejar tugsichii','tugsii- tugsichii'),
(815,'chuzarse','v.r. tugsirii','tugsirii'),
(816,'danta','s- sacha wagra','sacha wagra'),
(817,'daÃ±ado','en todo p.p. wajujudu -, (huevo) adj wabka (wibus)','wajujudu- wabka'),
(818,'daÃ±ar','v.t. wagllii','wagllii'),
(819,'daÃ±arse','v.r. wagllirii','wagllirii'),
(820,'daÃ±os','causar v.t. wagllichii','wagllichii'),
(821,'dar','v.t. karai, kuai - (golpes, enfermedad) piai/pigai, apii -, hacer karachii, kuachii',' karai- kuai- piai- pigai- apii- karachii, kuachii'),
(822,'darse','v.r. kararii, kuarii - a conocer rigsirii -se de beber mutuamente upiachirii -respuestas (en forma de alegato) ainichirii - de puÃ±os puÃ±utiarii v.i. makanakui, puÃ±itianakui - cuenta de, sin adv kungailla','kararii- kuarii- rigsirii- upiachirii- ainichirii-puÃ±utiarii- makanakui- puÃ±itianakui- kungailla'),
(823,'datura','s- ambi waska, aia waska','ambi waska, aia waska'),
(824,'debajo de','adv ukupi','ukupi'),
(825,'debatir con','v.r. piÃ±achirii','piÃ±achirii'),
(826,'dÃ©bil','adj binsi- lakisa junda- dipurdundi-samba- p.p. sambaiaska-sambaiadu -, como adj bandari -, muy pakiringalla','binsi- lakisa junda- dipurdundi- samba- sambaiaska-sambaiadu- bandari- pakiringalla'),
(827,'debilitarse','v.i. sambaiai -, hacer v.t. sambaiachii','sambaiai- sambaiachii'),
(828,'decir','v.t. nii - una mentira v.i. llullai -se (a uno mismo) v.r. nirii','nii- llullai'),
(829,'decirse','nirii','nirii (a uno mismo)'),
(830,'dedo','s- didu - del medio chaugpi didu - del pie chaki didu- que sirve para seÃ±alar kawachidiru didu','didu'),
(831,'dedo del medio','chaugpi didu','chaugpi didu'),
(832,'dedo pequeÃ±o del pie ','chaki wawa didu','chaki wawa didu'),
(833,'dedo del pie','chaki didu','chaki didu'),
(834,'defecar','v.i. ismai - (dicho para los niÃ±os) kakai -, hacer v.t. ismachii, kakachii-, tener ganas de v.impers. ismanaiai, kakanaiai','ismai - kakai - ismachii- kakachii- ismanaiai- kakanaiai'),
(835,'defecarse','v.r. ismarii- (en el momento) mapaiarii','ismarii- mapaiarii(en el momento)'),
(836,'defender','v.t. kichuchii, kispichii, michai -, hacerse kispichirii ','kichuchii- kispichii- michai- kispichirii '),
(837,'defenderse','v.r. kichuchirii, micharii','kichuchirii- micharii'),
(838,'dejar','v.t. sakii, wanai - aislado almai - algÃºn resto puchuchii -, hacer sakichii - de llover v.r. usiarii','sakii- wanai- puchuchii- sakichii- usiarii'),
(839,'dejar aislado','almai','almai'),
(840,'dejarse','sakirii- wanarii-alcanzar (de algo) alkansarii- tocar tantiachirii','sakirii- wanarii- alkansarii- tantiachirii'),
(841,'deladearse','v.r. ririi','ririi'),
(842,'por delante',' Ã±ugpa ladu- Ã±ugpagladu',' Ã±ugpa ladu- Ã±ugpagladu'),
(843,'delante','por adv Ã±ugpa ladu/Ã±ugpagladu',' Ã±ugpa ladu- Ã±ugpagladu'),
(844,'delata nada','persona que no s muruchu simi','muruchu simi'),
(845,'delatar','v.r. willarii','willarii'),
(846,'delgadito','adj amchishitu -, apodo para alguien alto pero s susuka','amchishitu- susuka'),
(847,'delgado','adj amchi, chalangu, Ã±aÃ±u -, hacer que se vuelva v.t. Ã±aÃ±uiachii -, volverse v.i. Ã±aÃ±uiai','amchi- chalangu- Ã±aÃ±u- Ã±aÃ±uiachii- Ã±aÃ±uiai'),
(848,'demasiado','adv iali/ialli/llalli - (pasado) pasagta - corto (un vestido) adj kurunchi/kurunchu- comelÃ³n karchu','iali- ialli- llalli- pasagta -kurunchi(corto)- kurunchu(corto)- karchu(comelÃ³n)'),
(849,'demora','sin adv manancha unaillapi','manancha unaillapi'),
(850,'sin demora','manancha unaillapi','manancha unaillapi'),
(851,'demorado','p.p. unaiaska','unaiaska'),
(852,'demorar','v.i. unaiai -, hacer v.t amsaiachii, unaiachii','unaiai- amsaiachii- unaiachii'),
(853,'demorarse','kipaiai','kipaiai'),
(854,'dentro de','adv ukupi','ukupi'),
(855,'dentro de  un momento','manancha unaillapi','manancha unaillapi'),
(856,'dentro un rato','kipa','kipa'),
(857,'deprevenido','medio p.p. kungaska','kungaska'),
(858,'derecha','a la adv, s allima, alli ladu','allima- alli ladu'),
(859,'derramar','v.t. ichai -, hacer susuchii - por gotas, hacer sutuchii- -se por gotas v.r. suturii','ichai- susuchii-  sutuchii- suturii'),
(860,'derretir','v.t. iakuiachii','iakuiachii'),
(861,'derretirse','v.i. iakuiai v.r. iakuiarii','iakuiai- iakuiarii'),
(862,'derribar','v.t. urmachii - (al suelo) (ej. Ã¡rboles) mandachii','urmachii- mandachii'),
(863,'derrumbado','p.p. dirumbaska, tunichiska','dirumbaska- tunichiska'),
(864,'derrumbar','(algo) v.t. tunichii','tunichii'),
(865,'derrumbarse','v.r. tunirii','tunirii'),
(866,'derrumbe','s- dirumbu','dirumbu'),
(867,'desacreditar','v.t. mal juisiuiachii','mal juisiuiachii'),
(868,'desagradable','adj mana chaia, winja - (a la vista) jiru','mana chaia- winja- jiru'),
(869,'desaguar','v.t. bashjai- tusta piai- pigai','bashjai- tusta piai- pigai'),
(870,'desarrollado','maltu','maltu'),
(871,'desarrollarse','maltuiai','maltuiai'),
(872,'desatado','p.p. paskaska','paskaska'),
(873,'desatar','v.t. paskai','paskai'),
(874,'desatarse','v.r. paskarii','paskarii'),
(875,'desbaratar','v.t. wagllichii','wagllichii'),
(876,'desbastar','v.t. jutkui/utkui','jutkui- utkui'),
(877,'descansar','v.i. samai - recostado wasa dirichai -, hacer v.t. samachii -, ponerse a v.r. samarii - (un terreno) watinsarii -, punto para s samanga','samai - wasa dirichai - samachii - samarii - watinsarii-samanga'),
(878,'descascarar','v.t. tibkai- tiubkai- tiukai - (ej. frÃ­joles, uvillas) limpiai','tibkai- tiubkai- tiukai- limpiai'),
(879,'descascarado','adj tibkari- tiubkari- tiukari','tibkari- tiubkari- tiukari'),
(880,'descender','v.i. uraikui','uraikui'),
(881,'descobijarse','v.r. awaiarii','awaiarii'),
(882,'descomponer','(un hueso), volver a v.t. butjii','butjii'),
(883,'descomponerse','volver a v.r. butjirii','butjirii'),
(884,'descontar','(referiÃ©ndose a un trabajo) v.t. diskuintai','diskuintai'),
(885,'descortezar','v.t. limpiai- lluspichii','limpiai- lluspichii'),
(886,'descuartizar','v.t. chunchullai -, hacer chunchullachii','chunchullai- chunchullachii'),
(887,'descubrir','v.t. shachii','shachii'),
(888,'descuerar','v.t. limpiai- lluspichii','limpiai- lluspichii'),
(889,'desde allÃ­','adv, conj chimanda - antes adv kipamandata, Ã±ugpamandata','chimanda'),
(890,'desde antes','kipamandata- Ã±ugpamandata','kipamandata- Ã±ugpamandata'),
(891,'desear','v.t. munai','munai'),
(892,'desecar','v.t. tusta piai- pigai','tusta piai-pigai'),
(893,'desembarazarse','v.i. libriai','libriai'),
(894,'desenvolver','(ej. la lana) v.t. tisai- tisachii','tisai- tisachii'),
(895,'desfilar','v.i. bandiriai','bandiriai'),
(896,'desfilarse','v.r. jilarii','jilarii'),
(897,'desfile de los bandereros','bandiria','bandiria'),
(898,'desgajado','p.p. lluspichiska- malkichiska','lluspichiska- malkichiska'),
(899,'desgajar','v.t. lluspichii- malkichii','lluspichii- malkichii'),
(900,'desgajarse','v.r. malkirii','malkirii'),
(901,'desgranado','adj bushmi','bushmi'),
(902,'desgranar','(ej. el maÃ­z) v.t. iskui - (poroto) tibkai- tiubkai- tiukai -, hacer iskuchii','iskui- tibkai- tiubkai- tiukai-iskuchii'),
(903,'desgranarse','v.r. iskurii','iskurii'),
(904,'deshojado','p.p. almaska','almaska'),
(905,'deshojar','v.t. almai - (el maÃ­z) jabakai/jibikai','almai - jabakai- jibikai'),
(906,'desigual','adj mullu','mullu'),
(907,'desigualado','p.p. mulluiaska','mulluiaska'),
(908,'desigualar','v.t. mulluiachii','mulluiachii'),
(909,'desladearse','v.i. kingraiai- kinraiai','kingraiai- kinraiai'),
(910,'desleÃ­r','v.t. iakuiachii','iakuiachii'),
(911,'desmayarse','v.t. ansias apii- piai','ansias apii- piai'),
(912,'desmayo','s- ansias','ansias'),
(913,'desmenuzar','v.t. Ã±utuchii','Ã±utuchii'),
(914,'desmenuzarse','v.i. Ã±utuiai v.r. Ã±uturii','Ã±utuiai- Ã±uturii'),
(915,'desmontado','p.p. dismuntaska','dismuntaska'),
(916,'desnudar','v.t. llatanai','llatanai'),
(917,'desnudarse','v.r. llatanarii','llatanarii'),
(918,'desnudo','adj llatan','llatan'),
(919,'desocupar','v.t. lugariachii','lugariachii'),
(920,'desocuparse','v.i. lugariai- v.r. disukuparii','lugariai - disukuparii'),
(921,'desollar','v.t. tibkai- tiubkai- tiukai -, fÃ¡cil de adj tibkari- tiubkari- tiukari','tibkai- tiubkai- tiukai- tibkari- tiubkari- tiukari'),
(922,'en desorden','chirapa- chirapu','chirapa- chirapu'),
(923,'desorden','en adj chirapa- chirapu','chirapa- chirapu'),
(924,'despacio','adv allimanda','allimanda'),
(925,'despajar','v.t. lluspichii','lluspichii'),
(926,'despavilarse','v.r. abisparii, kuiuririi','abisparii- kuiuririi'),
(927,'despedazar','v.t. Ã±utuiachii- pitichii','Ã±utuiachii- pitichii'),
(928,'despedazarse','v.i. Ã±utuiai- (un trapo) llachapaiai- (la ropa) v.r. pitichirii','Ã±utuiai-llachapaiai- pitichirii'),
(929,'despedirse','v.r. dispidirii','dispidirii'),
(930,'despeinado','adj uma chirapa/chirapu, kuskungu','uma chirapa-chirapu- kuskungu'),
(931,'despellejado','v.r. tibkarii/tiubkarii/ tiukarii','tibkarii- tiubkarii-  tiukarii'),
(932,'despellejar','v.t. lluspichii','lluspichii'),
(933,'despertar','v.t. kaugsachii, rigchachii','kaugsachii- rigchachii'),
(934,'despertarse','v.r. abisparii, rigcharii','abisparii- rigcharii'),
(935,'despierto','adj kaugsa -, estar v.i. rigcharaiai','kaugsa- rigcharaiai'),
(936,'despiojarse','v.r. ilusarii, sisurii','ilusarii- sisurii'),
(937,'desplomado','p.p. kingraiaska- kinraiaska - adv kingrai- kinrai','kingraiaska- kinraiaska- kingrai- kinrai'),
(938,'desplomarse','v.i. kingraiai- kinraiai- v.r. riririi','kingraiai- kinraiai- riririi'),
(939,'despojar','v.t. kichui','kichui'),
(940,'despreciado','estar v.i. unai tukui','un ai tukui'),
(941,'despreciar','v.t. unai','un ai'),
(942,'desprender','v.t. pitii - (el choclo con toda hoja del tallo) jabakai/jibikai - la mazorca de tal forma que las hojas queden en el tallo v.i. sumbiai -, hacer v.t. susuchii','pitii- jabakai- jibikai- sumbiai- susuchii'),
(943,'desprenderse','v.r. pitirii- susurii','pitirii- susurii'),
(944,'despreocupado','p.p. kungaska - cuando debe preocuparse s kungalla','kungaska- kungalla'),
(945,'despuÃ©s','adv kipamanda- nispa - de mucho tiempo unaipi - de un rato mana unaillapi','kipamanda- nispa- unaipi- mana unaillapi'),
(946,'desquitarse','v.t. randichii','randichii'),
(947,'destapar','v.t. llatanai','llatanai'),
(948,'destripar','v.t. chunchullai -, hacer chunchullachii','chunchullai- chunchullachii'),
(949,'destrozarse','v.i. llachapaiai','llachapaiai'),
(950,'destruir','v.t. wagllichii','wagllichii'),
(951,'desunir','v.t. pitii','pitii'),
(952,'desvestirse','v.r. llatanarii - (del ceÃ±idor, la faja) lluspichirii','llatanarii- lluspichirii'),
(953,'desyerbar','v.t. almai, chabsii/chausii, muntun sitai -, hacer almachii, chabsichii/chausichii, muntun sitachii','almai- chabsii- chausii- muntun sitai- almachii- chabsichii-chausichii- muntun sitachii'),
(954,'detener','v.t. chisiachii- kidachii','chisiachii- kidachii'),
(955,'deternerse de','v.r. kasillarii','kasillarii'),
(956,'detrÃ¡s','adv kati-wasa ladu','kati- wasa ladu'),
(957,'devolver','v.t. kutichii- Pai nii- randichii','kutichii- Pai nii'),
(958,'dÃ­a','s- puncha - de carnaval kusikui puncha - de guarda de la iglesia warda puncha - de invierno o de lluvia tamia puncha - de verano alli puncha - despuÃ©s de la noche de la luna llena, un ishbujita -, este kuna puncha - festivo atun puncha - anterior adv kain','puncha'),
(959,'dia de verano','alli puncha','alli puncha'),
(960,'dia de lluvia','tamia puncha','tamia puncha'),
(961,'dia de invierno','tamia puncha','tamia puncha'),
(962,'dia de guarda','warda puncha','warda puncha'),
(963,'dia festivo','atun puncha','atun puncha'),
(964,'dia anterior','kainandi','kainandi'),
(965,'dia siguiente','kaiandi','kaiandi'),
(966,'dia de carnaval','kusikui puncha','kusikui puncha'),
(967,'diablo','s- kuku- salvanji','kuku- salvanji'),
(968,'diarrea','s- kicha - continua, violenta kichala -, persona que estÃ¡ enferma de kichaliru -, tener v.i. kichai -, hacer que tenga v.t. kichachii \n- continua, hacer que tenga kichaliachii','kicha - kichala- kichaliru- kichai- kichachii- kichaliachii'),
(969,'diactador','atun taita tukui','atun taita tukui'),
(970,'diente','s- kiru','kiru-wawa kiru '),
(971,'diez','adj chunga','chunga'),
(972,'diferente','adj sug rigcha','sug rigcha'),
(973,'diferentes modos','sug rigcha sug rigcha','sug rigcha sug rigcha'),
(974,'de diferentes modos','sug rigcha sug rigcha','sug rigcha sug rigcha'),
(975,'difunto','s- animas','animas'),
(976,'diluido en agua','adj chuia','chuia'),
(977,'diluir','v.t. iakuiachii - (en un lÃ­quido) chuiaiachii','iakuiachii- chuiaiachii'),
(978,'diminutamente','adv Ã±utu Ã±utu','Ã±utu Ã±utu'),
(979,'diminuto','adj Ã±utu- uchulla','Ã±utu- uchulla'),
(980,'dinero','s- kulki -, llegar a estar sin bararii','kulki- bararii'),
(981,'estar sin dinero','mana kulkiwa kai','mana kulkiwa kai'),
(982,'Dios mÃ­o','interj Aitaitiku- Ataitiku- Taitiku','Aitaitiku- Ataitiku- Taitiku'),
(983,'Dios se lo pague','interj Pai','Pai'),
(984,'discutir','v.r. piliarii - mÃºtuamente ainichirii','piliarii- ainichirii'),
(985,'disenterÃ­a','s- (iawar) iallii- iallii- llallii- ialichii- iallichii- llallichii ungui','iallii- iallii- llallii- ialichii- iallichii- llallichii ungui'),
(986,'disgustarse','v.r. rabiachirii - con kuntrarii - con, llegar a amirii -, hacer v.t. piÃ±achii','rabiachirii- kuntrarii- amirii- piÃ±achii'),
(987,'disimular','llegar a v.r. disimularii','disimularii'),
(988,'dislocado','p.p. kiwidu- kiwiska-  kiwiriska- chugridu- chugriska','kiwidu- kiwiska-  kiwiriska- chugridu- chugriska'),
(989,'dislocar','(ej. el tobillo) v.t. kiwii -, hacer kiwichii -, volver a butjii - los tobillos v.i. chugrii','kiwii- kiwichii- butjii- chugrii'),
(990,'dislocarse','kiwirii','kiwirii'),
(991,'disminuido','v.i. uchullaiai','uchullaiai'),
(992,'disminuirse','v.i. pisiai - de longuitud umutiai- umutuiai','pisiai- umutiai- umutuiai'),
(993,'disolver','v.t. chuiaiachii','chuiaiachii'),
(994,'disolverse','(algo en un lÃ­quido) v.i. chuiaiai','chuiaiai'),
(995,'distanciado','adv karu karu- karulla','karu karu- karulla'),
(996,'distante','adv karu','karu'),
(997,'distraer','v.t. kungachii- unaiachii - (para calmar una pena que tiene) kungarichii - (para que no pueda realizar su propÃ³sito) pandachii','kungachii- unaiachii- kungarichii- pandachii'),
(998,'distribuir','v.t. rasiunai','rasiunai'),
(999,'distribuirse','v.r. rasiunarii','rasiunarii'),
(1000,'dividir','v.t. chaugpii','chaugpii'),
(1001,'dividirse','v.r. bandarii- chaugpirii','bandarii- chaugpirii'),
(1002,'doblar','v.t. patarii - (dos o mÃ¡s hilos) kaugpui - (dos o mÃ¡s hilos), hacer kaugchuchii - (dos o mÃ¡s hilos unidos), hacer kaugpuchii - (ropa), hacer patarichii','patarii- kaugpui- kaugchuchii- kaugpuchii- patarichii'),
(1003,'doblarse','v.r. kaugpurii- pataririi','kaugpurii- pataririi'),
(1004,'doler','v.impers. nanai -, hacerse v.r. nanachirii - mucho, hacer v.t. chinichii','nanai- nanachirii- chinichii'),
(1005,'dolor','s- nanai - (a causa de una herida) nanachiri - (mental) llakii -, causar v.t. nanachii -, tener v.i. llakii -, comenzar a v.r. nanarii','nanai - nanachiri- llakii- nanachii- llakii- nanarii'),
(1006,'doloroso','adj nana','nana'),
(1007,'domesticado','p.p. wamnaska','wamnaska'),
(1008,'domingo','dÃ­a s- warda puncha','warda puncha'),
(1009,'donar','v.t. karai, largai','karai- largai'),
(1010,'para donde','maima','maima'),
(1011,'por donde','maita','maita'),
(1012,'a donde','maima','maima'),
(1013,'donde','adv rel maipi -, a, para maima -, por maita','maipi- maima- maita'),
(1014,'dÃ³nde','interrog maipitak -, a, para maimatak \n-, por maitatak','maipitak- maimatak- maitatak'),
(1015,'a dÃ³nde','maimatak','maimatak'),
(1016,'para dÃ³nde','maimatak','maimatak'),
(1017,'por dÃ³nde','maitatak','maitatak'),
(1018,'dondequiera','adv maipipas- maipis','maipipas- maipis'),
(1019,'dormilÃ³n','s- puÃ±u siki','puÃ±u siki'),
(1020,'dormir','v.i. puÃ±ui - (un nene) kulai -, tener ganas de v.impers. puÃ±unaiai -, hacer v.t. puÃ±uchii - (un nene), hacer kulachii -, mueble de s puÃ±udiru','puÃ±ui-  kulai- puÃ±unaiai- puÃ±uchii- kulachii- puÃ±udiru'),
(1021,'dormirse','puÃ±urii- kularii','puÃ±urii- kularii'),
(1022,'dos','adj iskai -, los iskandi -, a adv iskaima - veces paris - veces, hacer un acto v.i. parisiai/pariiai','iskai- iskandi-iskaima- paris- parisiai- pariiai'),
(1023,'dos veces','paris','paris'),
(1024,'doscientos','adj iskai pasag-patsa-patsag','iskai pasag-patsa-patsag'),
(1025,'dragÃ³n','s- amarun','amarun'),
(1026,'duende del agua','iaku waira- turmama','iaku waira- turmama'),
(1027,'dulce','adj miski -, un s dusi -, volverse v.i. miskiai','miski - dusi- miskiai'),
(1028,'duro','adj, adv sinchi p.p. angudu -, muy adj muruchu -, que se hace adv shina jaiagta','sinchi - angudu- shin a jaiagta'),
(1029,'muy duro','muruchu','muruchu'),
(1030,'eco','s- urku','urku'),
(1031,'echar','(fuera) v.t. tallii - humo a alguien kusnichii','tallii- kusnichii'),
(1032,'echarse','v.r. tallirii','tallirii'),
(1033,'edad','achala- achalaiai','achala- achalaiai'),
(1034,'Ã©l','pron pai','pai'),
(1035,'ejercitar el brazo','v.t. warakiai','warakiai'),
(1036,'elaborar','v.t. rurai- ruai -, hacer rurachii-ruachii','rurai- ruai- rurachii-ruachii'),
(1037,'elaborarse','v.r. rurarii- ruarii','rurarii- ruarii'),
(1038,'elevar','v.t. awaiachii- wabajai- wabajui','awaiachii- wabajai- wabajui'),
(1039,'elevarse','v.i. awaiai v.r. wabajarii- wabajurii -se (ej. en el agua), llegar a awaiarii','awaiai- wabajarii- wabajurii- awaiarii'),
(1040,'ella','pron pai','pai'),
(1041,'embarazada','adj wigsawa ungug','wigsawa ungug'),
(1042,'embargo','sin adv mana kagpipas- kag-  chasa kagpipas','mana kagpipas- kag-  chasa kagpipas'),
(1043,'sin embargo','mana kagpipas- kag-  chasa kagpipas','mana kagpipas- kag-  chasa kagpipas'),
(1044,'embarrado','(ej. de comida) adj llunchi p.p. llunchiska','llunchi- llunchiska'),
(1045,'embarrar','v.t. llunchii','llunchii'),
(1046,'embarrarse','v.i. turuiai v.r. llunchirii','turuiai- llunchirii'),
(1047,'embellecer','v.t. sumaiachii','sumaiachii'),
(1048,'embellecerse','v.i. sumaiai','sumaiai'),
(1049,'embobar','v.t. upaiachii','upaiachii'),
(1050,'embobarse','v.i. tuntiadu tukui- upaiai- v.r. upaiarii','tuntiadu tukui- upaiai- upaiarii'),
(1051,'embocar','v.t. amullii','amullii'),
(1052,'emborrachar','v.t. machachii','machachii'),
(1053,'emborracharse','v.i. machai -se un poco v.r. macharii','machai- macharii'),
(1054,'embrujada','(una persona) adj ishnai','ishnai'),
(1055,'empacado','(el avÃ­o) p.p. wagllaska','wagllaska'),
(1056,'empajar','v.t. maitui','maitui'),
(1057,'empalagarse','v.r. amirii','amirii'),
(1058,'empalidecerse','v.i. irkiai','irkiai'),
(1059,'empapado','p.p. sagsariska - de agua adj awachintu- iakusapa- iakusu ','sagsariska - awachintu- iakusapa- iakusu '),
(1060,'empellones','dar v.t. tangai','tangai'),
(1061,'empeorarse','v.r. grabarii','grabarii'),
(1062,'empequeÃ±ecer','v.t. uchullaiachii','uchullaiachii'),
(1063,'empezar','v.i. kallarii','kallarii'),
(1064,'empinado','adj saia','saia'),
(1065,'emplasto','v.t. ambi wansmii','ambi wansmii'),
(1066,'empobrecer','v.i. pugriai- pubriai','pugriai-pubriai'),
(1067,'empollar','v.t. ugllachii','ugllachii'),
(1068,'empujar','v.t. tangai - un poco tangachii','tangai- tangachii'),
(1069,'empujarse','v.r. tangarii','tangarii'),
(1070,'encapricharse','v.r. kapricharii','kapricharii'),
(1071,'encargar','v.t. mingachii- mingai','mingachii- mingai'),
(1072,'encargarse','(a alguien) v.r. mingarii','mingarii'),
(1073,'enceguecerse','v.i. Ã±awi amsaiai','Ã±awi amsaiai'),
(1074,'encender','v.t. sindichii- v.i. sindii','sindichii- sindii'),
(1075,'encenderse','v.r. sindirii','sindirii'),
(1076,'encendido','p.p. sindiska','sindiska'),
(1077,'encerrado','p.p. wichkaska','wichkaska'),
(1078,'encerrarse','v.r. wichkarii','wichkarii'),
(1079,'encÃ­a','s- bungua','bungua'),
(1080,'encima','adv awama - (de) awapi','awama - awapi'),
(1081,'encima de','awapi','awapi'),
(1082,'encino','Ã¡rbol s insiÃ±u','insiÃ±u(arbol)'),
(1083,'encinta','(dÃ­cese de los animales hembras) adj chichu -, estar v.i. wawa aparii','chichu- wawa aparii'),
(1084,'enclenque','adj bandari','bandari'),
(1085,'encogerse','v.i. muruiai v.r. wangurii - la lengua v.i. inin- v.i. muruiai v.r. wangurii \n- la lengua v.i. in in iai-shin iai, ishtataiai-\nishtitaiai ai, ishtataiai- ishtitaiai','muruiai- wangurii- in in iai- shin iai- ishtataiai- \nishtitaiai '),
(1086,'encontrar','v.t. tarii - (a alguien) tupai -se con v.r. taririi, tuparii','tarii-  tupai(a alguien) - taririi- tuparii'),
(1087,'encorvado','adj wasa punta p.p. kumuriska','wasa punta- kumuriska \n'),
(1088,'encorvarse','v.r. kumurii','kumurii'),
(1089,'encubar','v.t. kamachii- ugllachii','kamachii- ugllachii'),
(1090,'enderezar','v.t. dirichai','dirichai'),
(1091,'enderezarse','v.r. diricharii','diricharii'),
(1092,'endeudado','p.p. dibi','dibi'),
(1093,'endeudarse','v.r. alkansarii- dibirii','alkansarii- dibirii'),
(1094,'endurar','v.i. tisuiai','tisuiai'),
(1095,'endurecerse','v.i. angiai, muruchuiai, sinchiai, tisuiai - (el choclo de maÃ­z) sarasuiai -, dejar v.t. sarasuiachii, sinchiachii','angiai- muruchuiai- sinchiai- tisuiai-sarasuiai(el choclo de maiz)- sarasuiachii- sinchiachii'),
(1096,'enemistad','v.t. kuntrai','kuntrai'),
(1097,'enfadado','adj kunu kunu','kunu kunu'),
(1098,'enfermarse','v.impers. ungui apii-piai- v.r. ungurii','ungui apii-piai- ungurii'),
(1099,'enfermedad','s- ungui -, clases de kuku tuglla, paspa','ungui'),
(1100,'enfermo','adj ungug, dipurdundi -, siempre ungu siki - de diarrea, alguien que estÃ¡ s kichaliru -, estar v.i. ungui - con diarrea, estar kichaliai \n-, ponerse v.impers. ungui apii/piai v.r.\nungurii \n','ungug- dipurdundi- ungu siki(siempre enfermo)- kichaliru(diarrea)- ungui-  kichaliai(estar con diarrea)- ungui apii- piai - ungurii \n'),
(1101,'enflacarse','v.r. chakirii','chakirii'),
(1102,'enflaquecerse','v.i. amchiai- Ã±aÃ±uiai- tulluiai- v.r. tustarii','amchiai- Ã±aÃ±uiai- tulluiai- tustarii'),
(1103,'enflorarse','v.i. tugtuiai- (ej. el maizal) tugtui \n-, dejar v.t. tugtuiachii ','tugtuiai- tugtui- tugtuiachii(dejar)'),
(1104,'enfriar','v.t. chiriachii','chiriachii'),
(1105,'enfriarse','v.i. chiriai - v.r. chiriarii','chiriai- chiriarii'),
(1106,'engaÃ±ar','v.t. llullachii- Ã±awi amsaiachii','llullachii- Ã±awi amsaiachii'),
(1107,'engordar','v.t. wiraiachii - un poco alliachii','wiraiachii- alliachii'),
(1108,'engordarse','v.i. alliai- wiraiai','alliai- wiraiai'),
(1109,'engrandecerse','v.i. atun tukui- atuniai','atun tukui- atuniai'),
(1110,'engrosar','v.t. rakuiachii','rakuiachii'),
(1111,'engrosarse','v.i. rakuiai','rakuiai'),
(1112,'enlazarse en una trampa','v.r. tugllarii','tugllarii'),
(1113,'enmascarado',' kukuruchu- p.p. Ã±awi kilpaska','kukuruchu-  Ã±awi kilpaska'),
(1114,'enmendarse','v.r. wanarii - de v.t. wanai','wanarii- wanai'),
(1115,'enmienda','s- shabuju-shabujui','shabuju-shabujui'),
(1116,'enmontado','(sementera) s watsiban -, apenas adj wawa chaparu','watsiban'),
(1117,'apenas enmontado','wawa chaparu','wawa chaparu'),
(1118,'apenas enmontada','wawa chaparu','wawa chaparu'),
(1119,'enmontada','(sementera) s watsiban -, apenas adj wawa chaparu','watsiban- wawa chaparu'),
(1120,'enmudecer','v.i. mana rimaiug tukui, upaiai -, hacer v.t. upaiachii','mana rimaiug tukui- upaiai - upaiachii'),
(1121,'ennegrecer','v.t. ianaiachii - (ej. una ruana) juliniachii/julliniachii','ianaiachii- juliniachii- julliniachii'),
(1122,'ennegrecerse','v.i. ianaiai- juliniai- julliniai','ianaiai- juliniai- julliniai'),
(1123,'ennegrecido','adj julin- julina- jullin- p.p. ianaiachiska- juliniaska- julliniaska','julin- julina- jullin- ianaiachiska- juliniaska- julliniaska'),
(1124,'ennoblecer','v.t. atuniachii','atuniachii'),
(1125,'ennoblecerse','v.r. atuniachirii','atuniachirii'),
(1126,'enojado','adj rabiari p.p. rabiariska','rabiari- rabiariska'),
(1127,'enojar','v.i. rabiai -, hacer v.t. piÃ±achii, rabiachii, winjachii','rabiai - piÃ±achii- rabiachii- winjachii'),
(1128,'enojarse','-se warbuÃ±ii v.r. piÃ±arii, rabiarii -se consigo mismo, mutuamente piÃ±achirii -se consigo mismo, de uno a otro rabiachirii','warbuÃ±ii- piÃ±arii- rabiarii-piÃ±achirii(consigo mismo, mutuamente)- rabiachirii(consigo mismo, de uno a otro)'),
(1129,'enredado','p.p. mulluiaska - (sÃ³lo de hilo, bejuco, cuerdas) washjuriska adj washju - (ej. un bulto, leÃ±a, chaclas) wangu','mulluiaska - washjuriska- washju- wangu'),
(1130,'enredar','v.t. miskuinaiachii- wanguchii- wangui - (sÃ³lo de hilo, bejuco, cuerdas) washjuchii','miskuinaiachii- wanguchii- wangui - washjuchii'),
(1131,'enredarse','v.r. washjurii - demasiado batsikarii','washjurii- batsikarii(demasido)'),
(1132,'enriquecerse','v.i. rikuiai','rikuiai'),
(1133,'enrojecer','v.t. pichiachii- pukaiachii','pichiachii- pukaiachii'),
(1134,'enrojecerse','v.i. pichiai- pukaiai','pichiai- pukaiai'),
(1135,'enrollar','v.t. muruiachii','muruiachii'),
(1136,'enroscado','(ej. alambre, rejo), estar v.i. tasinaraiai','tasinaraiai'),
(1137,'enroscar','v.t. tasinai','tasinai'),
(1138,'ensalar','v.t. kachiachii','kachiachii'),
(1139,'ensartar','v.t. ilpui','ilpui'),
(1140,'enseÃ±a','el que s- iachachig','iachachig'),
(1141,'enseÃ±ado','p.p. iachariska -, estar v.i. iacharaiai','iachariska- iacharaiai'),
(1142,'enseÃ±anza','de adj iachachidiru','iachachidiru'),
(1143,'enseÃ±ar','v.t. iachachii','iachachii'),
(1144,'ensimplecerse','v.i. samsamiai','samsamiai'),
(1145,'ensuciar','v.t. mapaiachii','mapaiachii'),
(1146,'ensuciarse','v.i. mapaiai v.r.ismarii- mapaiarii- (de diarrea) kicharii -continuamente de diarrea kichaliarii','mapaiai - ismarii- mapaiarii- kicharii(de diarrea)- kichaliarii(continuamente de diarrea)'),
(1147,'entender','v.t. intindii- v.r. iuiarii','intindii -iuiarii'),
(1148,'enterrado','estar v.i. pambaraiai','pambaraiai'),
(1149,'enterrar','v.t. pambai -, hacer pambachii','pambai- pambachii'),
(1150,'enterrarse','v.r. pambarii','pambarii'),
(1151,'entiesarse','v.i. tisuiai','tisuiai'),
(1152,'entonces','adv, conj chiura- nigpi-nig-  chimanda','chiura- nigpi-nig-  chimanda'),
(1153,'entontecer','v.i. upaiai','upaiai'),
(1154,'entontecerse','v.i. upaiai','upaiai'),
(1155,'entrambos','adj iskandi','iskandi'),
(1156,'entrar','v.i. iaikui - los moscos que ponen huevos en la carne kirisai -, hacer v.t. iaikuchii, Ã±itichii, satichii -, ponerse a v.r. iaikurii - en una casa, expresiÃ³n que se usa al interj Samusa','iaikui-  kirisai - iaikuchii- Ã±itichii- satichii- iaikurii- Samusa(entrar a una casa)'),
(1157,'entregar','v.t. kuai- kutichii -, hacer kuachii','kuai- kutichii - kuachii'),
(1158,'entregarse','v.r. kararii- kuarii','kararii- kuarii'),
(1159,'entretejer','v.t. simbachii','simbachii'),
(1160,'entretejerse','v.r. simbarii','simbarii'),
(1161,'entretejido','p.p. simbaska','simbaska'),
(1162,'entretener','v.t. wamnai','wamnai'),
(1163,'entretenerse','v.i. unaiai - (gen. a los chiquitos) v.r. wamnarii','unaiai- wamnarii'),
(1164,'entretenido','p.p. kungaska- unaiaska- wamnaska','kungaska- unaiaska- wamnaska'),
(1165,'entristecerse','v.i. irkiai- v.r. llakirii','irkiai- llakirii'),
(1166,'entristecido','p.p. irkiaska','irkiaska'),
(1167,'entumido','adj muru','muru'),
(1168,'envalentonarse','v.i. wapuiai','wapuiai'),
(1169,'envejecer','v.t. rukuiachii -(se) v.i. achalaiai, atuniai, juliniai/julliniai, maukaiai, rukuiai - (en sentido respetuoso) v.r. atuniarii - (una mujer, gen. en sentido despectivo) v.i. awilaiai','rukuiachii- atuniarii- awilaiai'),
(1170,'envejecerse ','achalaiai- atuniai- juliniai- julliniai- maukaia- rukuiai','achalaiai- atuniai- juliniai- julliniai- maukaia- rukuiai'),
(1171,'envejecido','p.p. atuniaska- juliniaska- julliniaska- maukaiaska','atuniaska- juliniaska- julliniaska- maukaiaska'),
(1172,'enviar','v.t. kachai, mandai - a observar chapachii','kachai- mandai- chapachii'),
(1173,'envolver','v.t. maituchii, maitui - (con una faja, etc.) wangui','maituchii- maitui - wangui'),
(1174,'envolverse','v.r. maiturii - (con una faja, manta) chumbillirii','maiturii- chumbillirii'),
(1175,'envuelto','p.p. maituska - (con una faja, etc.) wanguska - de choclo s chugllu builtu, wandicha/wanicha - de maÃ­z sara builtu, pataska builtu','maituska- wanguska- chugllu builtu(de choclo)- wandicha- (de choclo)wan icha(de choclo)- sara builtu(de maiz)- pataska builtu(de maiz)'),
(1176,'enyerbado','adj ugsalla- p.p. ugsaiaska','ugsalla- ugsaiaska'),
(1177,'enyerbarse','v.i. ugsaiai','ugsaiai'),
(1178,'epilepsia','s- waÃ±ui ungui','waÃ±ui ungui'),
(1179,'equivocaciÃ³n','adv panda','panda'),
(1180,'por equivocaciÃ³n','panda','panda'),
(1181,'equivocadamente','adv panda, panda panda','panda- panda panda'),
(1182,'equivocar','v.i. pandai','pandai'),
(1183,'equivocarse','v.r. pandarii','pandarii'),
(1184,'erizo','s- michichin','michichin'),
(1185,'eructar','v.r. asintarii','asintarii'),
(1186,'esbelto','adj Ã±aÃ±usu','Ã±aÃ±usu'),
(1187,'escabullarse','v.r. kichuchirii','kichuchirii'),
(1188,'escamparse','(de la lluvia) v.r. pakakurii- usiarii -, hacer v.t. pakakuchii','pakakurii- usiarii -pakakuchii'),
(1189,'escapar','v.i. kispii -, ayudar a kichuchii -, hacer kispichii','kispii- kichuchii(ayudar a )- kispichii'),
(1190,'escaparse','v.r. kispichirii','kispichirii'),
(1191,'escarcha','s- shabima -, rociar v.i. shabimai v.r. shabimarii','shabima- shabimai(rociar)- shabimarii(rociar)'),
(1192,'escoger','v.t. agllai -, hacer agllachii - (para sÃ­ mismo) v.r. agllarii','agllai- agllachii-agllarii(para si mismo)'),
(1193,'esconder','v.t. pakai- pakakuchii- pakallaiachii','pakai- pakakuchii- pakallaiachii'),
(1194,'esconderse','v.i. pakakui- pakallaiai - pambarii','pakakui- pakallaiai - pambarii'),
(1195,'escondidas','adv pakalla','pakalla'),
(1196,'a escondidas','pakalla','pakalla'),
(1197,'escorbuto','s- bichu','bichu'),
(1198,'escribir','v.t. iskribii- kilkai','iskribii- kilkai'),
(1199,'escuchar','v.t. uiai','uiai'),
(1200,'escuche ','Ala- Au','Ala- Au'),
(1201,'escuela','s- iachaikudiru wasi, iachaikui wasi','iachaikudiru wasi- iachaikui wasi'),
(1202,'escupir','v.i. tukai -, ponerse a v.r. tukarii -, hacer v.t. tukachii','tukai- tukarii(ponerse a)-tukachii'),
(1203,'escurrir','v.t. washjai','washjai'),
(1204,'ese','adj, dem chi/chin - hora adv chiura - manera, de chasa','chi- chin- chiura(hora)- chasa(manera)'),
(1205,'esa','adj, dem chi/chin - hora adv chiura - manera, de chasa','chi- chin- chiura(hora)- chasa(manera)'),
(1206,'eso','adj, dem chi/chin - hora adv chiura - manera, de chasa; para adv, conj chasapaka \n-, por chasa nispa, chimanda ','chi- chin- chiura(hora)- chasa(manera)'),
(1207,'por eso','chasa nispa- chimanda','chasa nispa- chimanda'),
(1208,'para eso','chasapaka','chasapaka'),
(1209,'esfuerzos','(uno mismo), hacer v.r. fuirsarii -, hacer que haga v.t. fuirsachii','fuirsarii- fuirsachii'),
(1210,'espacio','hacer v.t. laduiachii v.i. luariai','laduiachii- luariai'),
(1211,'espalda','s- wasa -, dar la v.t. wasa churai','wasa'),
(1212,'espantajo','s- kuk- manchachig- manchangasina','kuk- manchachig- manchangasina'),
(1213,'espantar','v.t. manchachii - (los loros) ushtachii','manchachii- ushtachii'),
(1214,'espantarse','v.r. mancharii','mancharii'),
(1215,'espanta','el que s- manchachig','manchachig'),
(1216,'espanto','s- manchai','manchai'),
(1217,'esparcir','(agua, polvo) v.t. tallichii - (agua) shabimachii - un puÃ±ado juitui','tallichii- shabimachii- juitui'),
(1218,'esparcirse','v.r. shabimarii- tallirii','shabimarii- tallirii'),
(1219,'esperar','v.t. suiai -, hacer suiachii, kidachii - (en el momento) v.r. suiarii ','suiai - suiachii- kidachii- suiarii '),
(1220,'espeso','(dÃ­cese de comidas, lÃ­quidos) adj sangu -, volverse v.i. sanguiai -, hacer v.t. sanguiachii','sangu- sanguiai(volverse)- sanguiachii'),
(1221,'espiar','v.t. chapai','chapai'),
(1222,'espinilla','s- chiuka- shibka','chiuka- shibka'),
(1223,'espinazo','s- wasa','wasa'),
(1224,'espÃ­ritu maligno','kuku- kuku waira- salvanji','kuku- kuku waira- salvanji'),
(1225,'esponjarse','(con agua) v.r. wabajarii- wabajurii -, dejar v.t. wabajai- wabajui','wabajarii- wabajurii- wabajai- wabajui'),
(1226,'esposa','s- warmi - propia, el que tiene warmiiug -, su warmindi','warmi- warmiiug - warmindi'),
(1227,'esposo','s- kusa- warmiiug','kusa- warmiiug'),
(1228,'esquelÃ©tico','p.p. chakiska','chakiska'),
(1229,'esquina','s- kuchu','kuchu'),
(1230,'estÃ¡','v.i. tia','tia'),
(1231,'estÃ¡ bien','Alintaduchu kangi- Allillachu kapuangi','Alintaduchu kangi- Allillachu kapuangi'),
(1232,'estante','s- kawitu','kawitu'),
(1233,'estar','v.i. kai','kai'),
(1234,'estera','s- puÃ±udiru','puÃ±udiru'),
(1235,'este','adj, dem kai','kai'),
(1236,'esta','adj, dem kai','kai'),
(1237,'esto','adj, dem kai','kai'),
(1238,'este dia','kuna puncha','kuna puncha'),
(1239,'esta noche','kuna tuta- kunantuta','kuna tuta- kunantuta'),
(1240,'este solamente','kailla- kasalla','kailla- kasalla'),
(1241,'esto solamente','kailla- kasalla','kailla- kasalla'),
(1242,'esta solamente','kailla- kasalla','kailla- kasalla'),
(1243,'esta tarde','kuna chisi- kunanchisi','kuna chisi- kunanchisi'),
(1244,'de esta manera','kasa','kasa'),
(1245,'estiÃ©rcol','s- isma - de gallina lingÃ¼ita isma, wangina','isma- lingÃ¼ita isma(de gallina)- wangina(de gallina)'),
(1246,'estimarse','(a uno mismo) v.r. kuiarii','kuiarii(a uno mismo)'),
(1247,'estirado','(en el suelo, en una cama) adj chuta -, estar v.i. chutaraiai','chuta- chutaraiai'),
(1248,'estirar','v.t. chutachii, suniachii','chutachi- suniachii'),
(1249,'estirarse','v.i. suniai- v.r.atuniarii- chutarii- mandachirii- mandarii- (para alcanzar algo) pagtarii','suniai- atuniarii- chutarii- mandachirii- mandarii-pagtarii(para alcanzar algo)'),
(1250,'estÃ³mago','s- wigsa - mayor de los rumiantes pusun','wigsa- pusun'),
(1251,'estornudar','achijai- achijii- jachii','achijai- achijii- jachii'),
(1252,'estrangular','v.t. kunga kaugchui- sipii','kunga kaugchui- sipii'),
(1253,'estrangularse','v.r. sipirii','sipirii'),
(1254,'estrecharse','v.r. kanirii','kanirii'),
(1255,'estrecho','adj kichki- kichkiri -, situarse en un lugar v.r. kichkirii','kichki- kichkiri- kichkirii'),
(1256,'estudiar','v.t. iachaikui- iskuila risai- istudiai','iachaikui- iskuila risai- istudiai'),
(1257,'estudio','adj iachaikudiru','iachaikudiru'),
(1258,'evaporarse','v.r. puiuiarii','puiuiarii'),
(1259,'exagerado','adv iali- ialli-llalli','iali- ialli-llalli'),
(1260,'excavar','v.t. jutkuchii/utkuchii','jutkuchii- utkuchii'),
(1261,'excremento','s- isma- kaka - de la gallina lingi','isma- kaka- lingi(de gallina)'),
(1262,'exigir una contribuciÃ³n','v.t. ramachii','ramachii'),
(1263,'existe','v.i. tia','tia'),
(1264,'exprimir','v.t. surkui - (un lÃ­quido) kapii','surkui -kapii(un liquido)'),
(1265,'extender','v.t. chutachii- suniachii','chutachii- suniachii'),
(1266,'extenderse','v.r. mandarii, suniarii - (ej. las piernas) mandachirii - (ej. la mano) v.i. suniai','mandarii- suniarii- mandachirii- suniai'),
(1267,'extenso','adj suni','suni'),
(1268,'extraer','v.t. surkui -, hacer surkuchii -, hacerse v.r. surkuchirii','surkui - surkuchii - surkuchirii'),
(1269,'extremo','s- kuchu','kuchu'),
(1270,'fabricar','v.t. rurai- ruai','rurai- ruai'),
(1271,'faja tejida','s- chumbi, sinta - de tarea para trabajar wachu','chumbi- sinta- wachu'),
(1272,'fajar','(el cinturÃ³n), (hacer) v.t. chumbillichii -se el cinturÃ³n v.i. chumbillii- v.r. chumbillirii','chumbillichii - chumbillii- chumbillirii'),
(1273,'falda','s- miglla -, clase de s- anaku','miglla'),
(1274,'manta negra','anaku','anaku'),
(1275,'falso ','v.r. ialirii-iallirii-llallirii','ialirii-iallirii-llallirii'),
(1276,'falta','s- pisi - (ej. una mano, un pie), que le adj kuru - de sal kachi pisi -, le interj Washbi - sal, expresiÃ³n para referirse a alguna comida que le Samsam','pisi- kuru- kachi pisi(falta de sal) - Washbi- Samsam(falta de sal a la comida)'),
(1277,'faltar','v.i. faltai/paltai, illai v.impers. pisii -, llegar a faltarii/paltarii -, hacer v.t. faltachii/paltachii','faltai- paltai- illai - pisii- faltarii-paltarii - faltachii- paltachii'),
(1278,'faltarse','illarii','illarii'),
(1279,'fallar','v.t. pandachii','pandachii'),
(1280,'fallecer','v.i. waÃ±ui- v.r. puchukarii','waÃ±ui- puchukarii'),
(1281,'fallecido','adj waÃ±ug p.p. waÃ±uska','waÃ±ug - waÃ±uska'),
(1282,'familia','s- aillu- pamilia','aillu- pamilia'),
(1283,'fantasma','s- kuku- kuku awila- kuku waira','kuku- kuku awila- kuku waira'),
(1284,'fecundado','adj washbi','washbi'),
(1285,'feo','adj jiru -, Que interj Atsatsai/Tsatsai, Tatai','jiru- Atsatsai- Tsatsai- Tatai'),
(1286,'fermentado','p.p. timbuska -, poco puchkuriska -, que estÃ¡ adj timbu','timbuska- puchkuriska(poco)- timbu'),
(1287,'fermentar','v.i. timbui-, dejar v.t. timbuchii','timbui- timbuchii'),
(1288,'fermentarse','v.r. timburii','timburii'),
(1289,'fiambre','s- kukawi','kukawi'),
(1290,'fiar','v.t. largai','largai'),
(1291,'fiebre','s- rupai - que hace temblar chugchui ','rupai- chugchui(que hace temblar)'),
(1292,'fiesta','s- atun puncha','atun puncha'),
(1293,'figura','s- rigcha','rigcha'),
(1294,'fila','v.i. suiui-  v.r. jilarii- suiurii','suiui- jilarii- suiurii'),
(1295,'filo','s- pata','pata'),
(1296,'filoso','adj filu- pilu','filu- pilu'),
(1297,'filuda','adj kuchug','kuchug'),
(1298,'fin','por adv katigma-katima - del mundo s- juisiu','katigma- katima'),
(1299,'por fin','katigma- katima','katigma- katima'),
(1300,'fin del mundo','juisiu','juisiu'),
(1301,'final','al adv impas','impas'),
(1302,'al final','impas','impas'),
(1303,'finamente','adv Ã±utu Ã±utu','Ã±utu Ã±utu'),
(1304,'finito','adj amchishitu','amchishitu'),
(1305,'fino','adj amchi-Ã±utu -, hacerse mÃ¡s v.i. Ã±utuiai','amchi- Ã±utu- Ã±utuiai'),
(1306,'fique','s- chawar -, espina de s chawar ispina','chawar'),
(1307,'flaco','p.p. chakiska -, muy adj tullu wangu -, hacer que se vuelva v.t. tulluiachii','chakiska- tullu wangu(muy flaco)- tulluiachii'),
(1308,'flauta','hacer que toque v.t. flaugtachii-laugtachii','flaugtachii-laugtachii'),
(1309,'fleco','s- murui - en la punta del ceÃ±idor siÃ±idur murui','murui'),
(1310,'flecha','s- plicha','plicha'),
(1311,'flechas','flichai- flichiai','flichai- flichiai'),
(1312,'flojo','adj chucha, chuchingu, samba - (la persona) p.p. sambaiadu, sambaiaska','chucha- chuchingu- samba- sambaiadu- sambaiaska'),
(1313,'flor','s- tugtu','tugtu'),
(1314,'florear','v.t. ichachii - (polvo, cafÃ©, sal) jibutui/tibutui','ichachii- jibutui- tibutui'),
(1315,'flotante','adj atarichi - como una balsa, volverse v.i. balsaiai','atarichi- balsaiai(como una balsa)'),
(1316,'flotar','v.i. awaiai- balsaiai','awaiai- balsaiai'),
(1317,'fogÃ³n','al lado del adv uchpa ladu- uchpallapi','uchpa ladu- uchpallapi'),
(1318,'formarse','v.r. furmarii','furmarii'),
(1319,'fraccionar','v.t. pitii','pitii'),
(1320,'fractura del hueso','s- lisiachiri','lisiachiri'),
(1321,'fracturado','p.p. kiwiriska, lisiachiska -, medio kindiaska','kiwiriska- lisiachiska-  kindiaska(medio fracturado)'),
(1322,'fracturar','medio v.i. kindiai','kindiai'),
(1323,'fracturarse','v.r. kiwirii- lisiachirii','kiwirii- lisiachirii'),
(1324,'frÃ¡gil','adj pakiringalla','pakiringalla'),
(1325,'frasquito','s- limita','limita'),
(1326,'fregar','v.t. kakui','kakui'),
(1327,'fregarse','(a uno mismo) v.r. kakurii','kakurii(a uno mismo)'),
(1328,'frÃ­o','s- chirii adj chiri -, con mucho adj chiri wangu -, hacer v.t. chirichii -, Que interj Achichai/Chai/Chichai','chirii- chiri- chiri wangu(con muscho frio)- chirichii-Achichai- Chai- Chichai'),
(1329,'frotar','v.t. jujui, kakui -, hacer jujuchii, kakuchii','jujui- kakui - jujuchii- kakuchii'),
(1330,'frotarse','v.r. jujurii- kakurii','jujurii- kakurii'),
(1331,'fruta','clases de s- chiwilla, maku','chiwilla, maku'),
(1332,'fruto','volverse v.i. muiuiai','muiuiai'),
(1333,'fuego','s- nina -, prender v.t. ninaiachii','nina - ninaiachii'),
(1334,'fuente','s- iaku Ã±awi','iaku Ã±awi'),
(1335,'fuera','(de lugar) adv kanchapi','kanchapi(de lugar)'),
(1336,'fuerte','adj fuirti, wapu -(mente) adj, adv sinchi -, llegar a ser v.i. wapuiai -, ponerse sinchiai - el sol, estar v.r. indi ruparii','fuirti- wapu- wapuiai- sinchiai(ponerse)- indi ruparii(el sol)'),
(1337,'fuertemente','sinchi','sinchi'),
(1338,'fuerzas','sin p.p. sambaiadu, sambaiaska -, quedarse sin v.i. sambaiai','sambaiadu- sambaiaska- sambaiai(Quedarse sin fuerzas)'),
(1339,'sin fuerzas','sambaiadu- sambaiaska','sambaiadu- sambaiaska'),
(1340,'fuete','s- asuti','asuti'),
(1341,'fugarse','v.i. mitikui','mitikui'),
(1342,'fuga','emprender la v.r. mitikurii','mitikurii'),
(1343,'fumar','(y soplar) v.t. kusnichii -, ponerse a v.r. kusnichirii','kusnichii - kusnichirii'),
(1344,'gallina','s- atawalpa- kancha pisku','atawalpa- kancha pisku'),
(1345,'gallineta de monte','s- sacha atawalpa','sacha atawalpa'),
(1346,'gallito del monte','s- sachuku gallu','sachuku gallu'),
(1347,'ganado','s- wagra','wagra'),
(1348,'ganar','v.t. ganai - (comida o bebida en las mingas) wakanai -, hacer ganachii','ganai- wakanai - ganachii'),
(1349,'ganarse','por su propia fuerza v.r. wakanarii- la vida ganarii','wakanarii- ganarii'),
(1350,'ganas','de adv diganas -, que da mÃ¡s adj pisiag - de, hacer tener v.t. munachii','diganas- pisiag - munachii'),
(1351,'gancho','s- urkita','urkita'),
(1352,'garaÃ±Ã³n','s- garaÃ±u- garaÃ±un','garaÃ±u- garaÃ±un'),
(1353,'garganta','s- gargiru','gargiru'),
(1354,'gargantilla','s- walka','walka'),
(1355,'gases','s- supi','supi'),
(1356,'gatear','v.i. llukai v.r. llukarii','llukai- llukarii'),
(1357,'gatico','s- misitutum','misitutum'),
(1358,'gato','s- misitu, michi - selvÃ¡tico s- sacha misitu- mishitu- misitu','misitu- michi- mishitu- misitu'),
(1359,'gente','s- jinti- runa','jinti- runa'),
(1360,'germinar','v.r. wiÃ±arii - (ej. el maÃ­z empacado en hojas) v.i. juraiai','wiÃ±arii- juraiai'),
(1361,'giboso','adj wasa punta- wasa trumpa','wasa punta- wasa trumpa'),
(1362,'girar','v.r. muiurii','muiurii'),
(1363,'glorificar','v.t. sumaiachii','sumaiachii'),
(1364,'glorificarse','v.i. sumaiai','sumaiai'),
(1365,'glotÃ³n','adj galgu','galgu'),
(1366,'gobernador','s- justisia -, hacerse v.i. atun taita tukui','justisia- atun taita tukui'),
(1367,'golpe','dar v.t. piai- pigai-  takai -, - (con el puÃ±o) makai -, - (en el brazo) kunijiai ','piai- pigai-  takai- makai(con el puÃ±o)- kunijiai(con el brazo)'),
(1368,'golpes','dar v.t. piai- pigai-  takai -, - (con el puÃ±o) makai -, - (en el brazo) kunijiai ','piai- pigai-  takai- makai(con el puÃ±o)- kunijiai(con el brazo)'),
(1369,'golpear','v.t. makai, takachii, takai - (ej. con un martillo) wagtai - (el brazo superior) tarukiai -, hacer piachii/pigachii -se el dedo del pie v.r. Ã±itkarii','makai- takachi- takai- wagtai - tarukiai(con el brazo superior)- piachii- pigachii- Ã±itkarii'),
(1370,'golpearse','Ã±itkarii(el dedo del pie)','Ã±itkarii(el dedo del pie)'),
(1371,'golpecito del dedo','s- tingi -, dar un v.t. tingii -, dar un (a una bola para moverla) tingichii','tingi- tingii- tingichii'),
(1372,'gordÃ­sima','persona s- wiraiug','wiraiug'),
(1373,'gordo','adj wira -, volverse v.i. wiraiai','wira- wiraiai'),
(1374,'gorgojo','s- burbuju','burbuju'),
(1375,'gorriÃ³n','s- shulubchi- shulugchi','shulubchi- shulugchi'),
(1376,'gota','s- sutu','sutu'),
(1377,'gotear','v.i. sutui -, hacer v.t. sutuchii - agua en un tiesto caliente para que salga humo mishachii -se v.r. susurii -, hacerse sutuchirii ','sutui-  sutuchii- mishachii -sutuchirii'),
(1378,'gotearse','v.r. susurii \n','susurii \n'),
(1379,'goteras','con adj sutu -, hacerse v.i. sutuiai -, llena de p.p. jutkuriska-utkuriska','sutu- sutuiai- jutkuriska- utkuriska'),
(1380,'gozo','v.t. alli iuiachii','alli iuiachii'),
(1381,'Gracias','interj Pai','Pai- pai nii(dar gracias)'),
(1382,'gracioso','adj rasia','rasia'),
(1383,'grande','adj atun -, hacer v.t. atuniachii -, llegar a ser v.i. atuniai -, hacerse v.r. atuniachirii','atun- atuniachii- atuniai- atuniachirii'),
(1384,'granizo','s- shabima -, caer v.i. shabimai v.r. shabimarii','shabima- shabimai- shabimarii'),
(1385,'grano','s- muiu, muru - de barro de la cara ishmaia/izmaia muiu - de chanda (sarna) karacha -s que parecen como granos de choclo chugllu muiu -s, salir v.i. muiuia','muiu, muru- ishmaia(Barro de la cara) -izmaia muiu(Barro de la cara) - karacha - chugllu muiu-muiuia'),
(1386,'granos','muiuiai(salir)','muiuiai(salir)'),
(1387,'grasa','s- wira ','wira '),
(1388,'gripa','s- rumadisu','rumadisu'),
(1389,'gris','adj iurusu','iurusu'),
(1390,'gritar','v.t. kaparii','kaparii'),
(1391,'grueso','adj raku, sagra- sarga p.p. simbaska -, volverse v.i. rakuiai','raku- sagra-sarga- simbaska- rakuiai'),
(1392,'guabo','Ã¡rbol de s- pakai','pakai'),
(1393,'guarapo de caÃ±a','wiru aswa- wiru iaku','wiru aswa- wiru iaku'),
(1394,'dia de guarda','warda puncha','warda puncha'),
(1395,'guapo','adj wapu -, llegar a ser v.i. wapuiai','wapu - wapuiai'),
(1396,'guardar','v.t. wakachii- v.i. chariraiai - dentro de la cusma v.t.\nkinchullii/kunchullii','wakachii-  chariraiai - kinchullii- kunchullii '),
(1397,'guardarse','v.r. wakachirii','wakachirii'),
(1398,'guÃ­a','s- pusag- Ã±ugpag','pusag- Ã±ugpag'),
(1399,'guiar','v.t. pusai - hacia acÃ¡ pusamui','pusai- pusamui(hacia acÃ¡)'),
(1400,'guinea','sarasa','sarasa'),
(1401,'gusano','s kuru - de choclo chugllu kuru -, clase de chanchu','kuru- chugllu kuru(de choclo)'),
(1402,'gustar','v.impers. sumai','sumai'),
(1403,'haberes','iukag','iukag'),
(1404,'hablar','v.t. parlai, rimai - mal de alguien wasa rimai -, hacer rimachii - dentro de un grupo v.r. rimarii - bien, (persona) que no puede adj simi wata','parlai- rimai- wasa rimai (mal de alguien)- rimachii (dentro de un grupo)- rimarii - simi wata'),
(1405,'hacer','v.t. rurai- ruai -, hacer rurachii- ruachii - para uno mismo v.r. rurarii- ruarii','rurai- ruai- rurachii- ruachii- rurarii- ruarii'),
(1406,'hacerse','v.i. tukui','tukui'),
(1407,'hacha','v.t. achai- achiai','achai- achiai'),
(1408,'halar','v.t. aisai, aliui -, hacer aisachii, aliuchii','aisai- aliui- aisachii- aliuchii'),
(1409,'hallar','v.t. tarii- v.i. suirtiai','tarii-  suirtiai'),
(1410,'hallarse','v.r. taririi','taririi'),
(1411,'hambre','s- iarkai -, con adv iarkaimanda, iarkaiwa, diiarkai -, estar con v.impers. iarkai -, hacer que tenga v.t. iarkachii','iarkai- iarkaimanda(con)- iarkaiwa(con)- diiarkai(con)- iarkai- iarkachii'),
(1412,'hambriento','adv iarkai iarkai','iarkai iarkai'),
(1413,'haragÃ¡n','adj killa wangu -, volverse v.i. Ã±utui v.r. Ã±uturii','killa wangu- Ã±utui-  Ã±uturii'),
(1414,'harina','hacer que algo se vuelva v.t. Ã±utuchii','Ã±utuchii'),
(1415,'harnear','v.t. susui','susui'),
(1416,'harnero','s- susunga','susunga'),
(1417,'hartarse','adv sagsagta','sagsagta'),
(1418,'Hasta luego','interj Kipakama','Kipakama'),
(1419,'Hasta maÃ±ana','Kaiakama- Pakarinkama','Kaiakama- Pakarinkama'),
(1420,'hay','v.i. tia','tia'),
(1421,'heder','v.t. asnai','asnai'),
(1422,'helecho','s- ilichu','ilichu'),
(1423,'hematoma','s- pisku chupu','pisku chupu'),
(1424,'hembra','s- warmi','warmi'),
(1425,'hemorragia nasal','s- sambai','sambai(empezar a dar)'),
(1426,'herida','s anachiri','nanachiri'),
(1427,'herido','p.p. kuchuska- lisiachiska','kuchuska- lisiachiska'),
(1428,'herir','v.t. lisiachii- nanachii','lisiachii- nanachii'),
(1429,'hermana','Ã±aÃ±a(entre mujeres)-pani(entre hombres)','Ã±aÃ±a(entre mujeres)-pani(entre hombres)'),
(1430,'hermanastra','Ã±aÃ±a ninga (entre mujeres)- pani ninga(de un varÃ³n)','Ã±aÃ±a ninga (entre mujeres)- pani ninga(de un varÃ³n)'),
(1431,'hermanastro','wagki(entre varones)- waugki ninga(entre varones)- turi (ninga de una mujer) ','wagki(entre varones)- waugki ninga(entre varones)- turi (ninga de una mujer) '),
(1432,'hermano','wagki(entre varones)- waugki(entre varones)- turi(de una mujer)',NULL),
(1433,'hermosearse','v.i. sumaiai','sumaiai'),
(1434,'hermosito','adj shumatum','shumatum'),
(1435,'hermoso','adj chaia- suma- shuma','chaia- suma- shuma'),
(1436,'hervido','p.p. timbuska','timbuska'),
(1437,'hervir','v.t. timbuchii v.i. timbui -, principiar a v.r. timburii','timbuchii- timbui - timburii'),
(1438,'hielo','iluchii','iluchii'),
(1439,'hierba','s- ugsa - alta ugsuku - en su totalidad adj ugsalla','ugsa- ugsuku(alta) - ugsalla'),
(1440,'hierro','s- iru','iru'),
(1441,'hÃ­gado','s- sungu, iana sungu - de curÃ­ kui sungu','sungu- iana sungu'),
(1442,'higuerÃ³n','s- bamba- igrun','bamba- igrun'),
(1443,'hijastro','s- wambra ninga','wambra ninga'),
(1444,'hijastra','s- wambra ninga','wambra ninga'),
(1445,'hijo','s wambra - muy apreciado kulki wambra, kuri wambra -s, tener v.i. wawaiug kai','wambra- kulki wambra(muy apreciado)- kuri wambra(muy apreciado)'),
(1446,'hijos','wawaiug kai','wawaiug kai'),
(1447,'hilado','p.p. puchkaska','puchkaska'),
(1448,'hilar','v.t. jilai-  puchkai','jilai-  puchkai'),
(1449,'hinchado','adj pungi p.p. pungiska','pungi - pungiska'),
(1450,'hincharse','v.i. pungii v.r. pungirii','pungii- pungirii'),
(1451,'hipar','v.impers. sungu aisachii- sungu aisai- v.i. jipui','sungu aisachii- sungu aisai- jipui'),
(1452,'hipo','s- sungu aisachii, jipui','sungu aisachii- jipui'),
(1453,'hoja','s- panga - bien ancha que se utiliza para envolver algo sacha panga','panga- sacha panga(bien ancha)'),
(1454,'hollÃ­n','adj julin- julina- jullin','julin- julina- jullin'),
(1455,'hombre','s- kari- runa- jinti','kari- runa- jinti'),
(1456,'hombre mujeriego','garaÃ±u- garaÃ±un','garaÃ±u- garaÃ±un'),
(1457,'hombre vago','kukurungu','kukurungu'),
(1458,'homoplato','pala','pala'),
(1459,'honda','s- waraka -, usar una v.t. warakiai','waraka- warakiai'),
(1460,'hondo','adj jundu','jundu'),
(1461,'hongo','s- kallamba','kallamba'),
(1462,'honrado','v.i. unraduiai','unraduiai'),
(1463,'hora','alliura','alliura'),
(1464,'en buena hora','alliura','alliura'),
(1465,'hormiga','s- aÃ±angu','aÃ±angu'),
(1466,'horrible','adj jiru -, Que interj Atsatsai/Tsatsai, Tatai','jiru- Atsatsai- Tsatsai- Tatai'),
(1467,'hospedarse','v.r. pusadarii','pusadarii'),
(1468,'hoy','s- kaiura, kuna/kunaura, kuna puncha','kaiura- kuna- kunaura- kuna puncha'),
(1469,'hoyo','s jutku- utku','jutku- utku'),
(1470,'hubiera','Que interj Amalai','Amalai'),
(1471,'que hubiera','Amalai','Amalai'),
(1472,'huecada','s- waiku','waiku'),
(1473,'hueco','s- pusu, waiku - redondo jutku/utku -, abrir un v.t. puruiachii','pusu-waiku- jutku(redondo)- utku(redondo)- puruiachii(abrir un)'),
(1474,'huÃ©rfano','s- wagcha-wagchu, wagchintu -, quedar v.i. wagchaiai-wagchuiai','wagcha-wagchu- wagchintu- wagchaiai-wagchuiai'),
(1475,'huerta','s- chagra','chagra'),
(1476,'hueso','s tullu - de un difunto animas tullu - cuello kunga tullu','tullu - animas tullu(de un difunto)- kunga tullu(cuello)'),
(1477,'huesudo','adj tullu wangu','tullu wangu'),
(1478,'huevo','s- rundu- wibus','rundu- wibus'),
(1479,'huir','v.i. mitikui -, hacer v.t. mitikuchii','mitikui-  mitikuchii'),
(1480,'humear','v.i. kusnii','kusnii'),
(1481,'humearse','v.r. kusnirii','kusnirii'),
(1482,'humilde','adj, adv upalla','upalla'),
(1483,'humildemente','adj, adv upalla','upalla'),
(1484,'humillado','p.p. kumuridu- uchullaiaska','kumuridu- uchullaiaska'),
(1485,'humillar','v.t. uchullaiachii- kumuchii-  kumurichii- pukuiachii','uchullaiachii- kumuchii-  kumurichii- pukuiachii'),
(1486,'humillarse','v.i. uchullaiai, uma kumurii ','uchullaiai-uma kumurii '),
(1487,'humo','s- kusni -, hacer que salga v.t. puiuiachii -, salir v.i. puiuiai','kusni- puiuiachii - puiuiai'),
(1488,'hundirse','v.r. asintarii','asintarii'),
(1489,'huracÃ¡n','s- waraka waira','waraka waira'),
(1490,'huso','s- puchkanga','puchkanga'),
(1491,'idioma','s- rimai- simi rimai','rimai- simi rimai'),
(1492,'idioma inga','inga- runa simi','inga- runa simi'),
(1493,'ignorar','v.r. disimularii','disimularii'),
(1494,'igual a todos','suiu','suiu'),
(1495,'imitar','v.t. chasallata(ta)/chisinalla rurai','chasallata- chisinalla rurai'),
(1496,'impedir','v.t. arkai, sakichii','arkai- sakichii- arkachii'),
(1497,'impetuoso','adj kurinti','kurinti'),
(1498,'importante','adj atun','atun'),
(1499,'importantes','s- atunkuna','atunkuna(personas)'),
(1500,'incendiar','v.t. nina rupachii- v.i. ninaiai','nina rupachii- ninaiai'),
(1501,'incienso','s- kupal','kupal'),
(1502,'inclinar','v.t. arkuiachii/arkusiachii -, hacer kumurichii','arkuiachii- arkusiachii- kumurichii'),
(1503,'inclinarse','v.i. kingraiai/kinraiai v.r. pagcharii- v.i. arkuiai/arkusiai','kingraiai- kinraiai- pagcharii- arkuiai-arkusiai'),
(1504,'incrustado','p.p. Ã±itiska- satiska','Ã±itiska- satiska'),
(1505,'incrustar','v.t. Ã±itichii- satichii','Ã±itichii- satichii'),
(1506,'incrustarse','v.r. Ã±itirii- satirii','Ã±itirii- satirii'),
(1507,'indemnizaciÃ³n','s- uiansa','uiansa'),
(1508,'indicar','v.t. tupui','tupui(con el dedo)'),
(1509,'Ã­ndice','s- kawachidiru didu','kawachidiru didu'),
(1510,'indÃ­gena','s- ianga runa','ianga runa(en sentido despectivo)'),
(1511,'indisposiciÃ³n','v.i. millai-  v.r. millarii','millai- millarii'),
(1512,'indispuesto','adj jiru iachi- iuiachi','jiru iachi- iuiachi'),
(1513,'infante','s- wawa','wawa'),
(1514,'infecciÃ³n','s- bichu- rikaida- ujna','bichu-  rikaida'),
(1515,'inflamacÃ­on','tabardilla- tabardillu','tabardilla- tabardillu'),
(1516,'inflamado','adj pungi- p.p. pungiska','pungi- pungiska'),
(1517,'inflamar','v.t. pungichii','pungichii'),
(1518,'inflar','v.t. pungichii','pungichii'),
(1519,'inflarse','v.i. pungii- v.r. pungirii','pungii-pungirii'),
(1520,'informar','v.t. willai','willai'),
(1521,'inhalar humo','v.r. kusnichirii','kusnichirii'),
(1522,'inga','inga','inga'),
(1523,'iniciar','v.i. kallarii','kallarii'),
(1524,'inmoral','adj mal juisiu','mal juisiu(persona)'),
(1525,'insecto','s- chuspi- plaga de asna kuku','chuspi'),
(1526,'insectos','asna kuku','asna kuku'),
(1527,'inservible','adj shachina- shachinana','shachina- shachinana'),
(1528,'insÃ­pido','adj mana chaia, mana miski','mana chaia- mana miski'),
(1529,'insultar','v.t. kamii - por medio de alguien kamichii','kamii- kamichii'),
(1530,'insultarse','v.r. kamirii','kamirii'),
(1531,'inteligencia','adj mana iuiaiiug','mana iuiaiiug'),
(1532,'inteligente','p.p. ajustadu- alliiuiaiiug- alli tutaÃ±u- alli uma','ajustadu- alli iuiaiiug- alli tutaÃ±u- alli uma'),
(1533,'intercambio','v.t. kambalachii- kambiai- trukai','kambalachii- kambiai- trukai'),
(1534,'intermedio','s- chaugpi','chaugpi'),
(1535,'interrogar','v.t. tapuchii','tapuchii'),
(1536,'intestinos','s- chunchullu -, parte mÃ¡s delgada de los miski chunchullu','chunchullu - miski chunchullu(parte mas delgada)'),
(1537,'Ã­ntimo','p.p. iacharidu','iacharidu'),
(1538,'inÃºtil','adv ianga -, volverse v.i. wawaiai','ianga- wawaiai'),
(1539,'inventar un chiste','v.t. urdimal nii','urdimal nii'),
(1540,'inventarse un chiste','v.r. llullarii','llullarii'),
(1541,'inversa','v.t. tigrachii','tigrachii'),
(1542,'invertir','v.t. pagchai','pagchai'),
(1543,'invierno','s- tamia','tamia'),
(1544,'invitado','p.p. kunbidaska','kunbidaska'),
(1545,'invitar','v.t. kunbidai-  wasima kaiai-, hacerse v.r. kunbidarii','kunbidai-  wasima kaiai- kunbidarii'),
(1546,'ir','v.i. rii - afianzÃ¡ndose con el bordÃ³n tanuai- taunai- tawinai - alrededor de muiui - con buena suerte alli rikui - otra vez ikuti- kuti rii -le bien (a alguien) alli rikui - delante de alguien v.t. Ã±ugpai','rii- tanuai- taunai-  tawinai- alli rikui(con buena suerte)- ikuti- kuti rii - alli rikui(irle bien a alguien)- Ã±ugpai(delante de alguien)'),
(1547,'izquierdo','adj lluki - adj llukiru','lluki- llukiru'),
(1548,'izquierda','adj lluki - adj llukiru','lluki- llukiru'),
(1549,'jabonar','v.t. tagsai','tagsai'),
(1550,'jadeante','adj samai arkari','samai arkari'),
(1551,'jadear','v.t. suspirachii- v.i. pujai','suspirachii- pujai'),
(1552,'jadearse','v.r. samai arkarii','samai arkarii'),
(1553,'jalar','v.t. aisai- aliui -, hacer aisachii- aliuchii','aisai- aliui - aisachii-  aliuchii'),
(1554,'jamÃ¡s','adv ni- Ã±i imaurapas- imauras','ni- Ã±i imaurapas- imauras'),
(1555,'jefe','s- iaia','iaia'),
(1556,'jeme','s jimi','jimi'),
(1557,'joven','(varÃ³n) s- musu - (mujer) sipas','musu(varÃ³n)- sipas(Muejer)'),
(1558,'juez','s- justisia','justisia'),
(1559,'jugar',' -, hacer pugllachii \n- (uno mismo, uno con otro) v.r. pugllarii v.t. pugllai - al conejo kunijiai','pugllai- kunijiai- pugllachii- pugllarii(uno mismo, uno con otro)'),
(1560,'juguetear','v.t. pugllai','pugllai'),
(1561,'juguetÃ³n','adj puglla siki','puglla siki'),
(1562,'junco','s- bunju- pukuna','bunju- pukuna'),
(1563,'juntar','v.t. llutai- tandachii -, hacer llutachii','llutai- tandachii - llutachii'),
(1564,'juntarse','v.r. llutarii','llutarii'),
(1565,'juntos','adv pariju','pariju'),
(1566,'jurar','v.i. jurai','jurai'),
(1567,'juventud','(un varÃ³n), llegar a la v.i. musuiai - (una mujer) sipasiai','musuiai(varÃ³n)- sipasiai(Mujer)'),
(1568,'juzgar','v.t. justisiai','justisiai'),
(1569,'labio','s- simi kara','simi kara'),
(1570,'labrar','(piedra) v.t. kantiai - la tierra para la primera siembra rastrujiai ','kantiai'),
(1571,'lactar','v.t.chuchui -, hacer chuchuchii','chuchui - chuchuchii'),
(1572,'lado','s- banda -, (al) adv ladu -, ponerse a un v.i. laduiai','banda- ladu- laduiai'),
(1573,'al lado','ladu','ladu'),
(1574,'ladrar','v.t. kaninaiai','kaninaiai'),
(1575,'ladrÃ³n','s- sisai- aisangiru- misitu- misi- misu','sisai- aisangiru- misitu- misi- misu'),
(1576,'lagaÃ±a','s- lagaÃ±u','lagaÃ±u'),
(1577,'lago','s- kucha','kucha'),
(1578,'lÃ¡grima','s- wiki','wiki'),
(1579,'lagrimoso','adj wikiiug- wikintu','wikiiug- wikintu'),
(1580,'laguna','s- kucha','kucha'),
(1581,'lamer','v.t. llakuai','llakuai'),
(1582,'lamerse','v.r. llakuarii','llakuarii'),
(1583,'lana','s- milma -, salir v.i. milmaiai','milma - milmaiai'),
(1584,'lanudo','adj milmunchu','milmunchu'),
(1585,'lanzar polvo','v.t. juituchii','juituchii'),
(1586,'lanzar flechas','v.i. flichai- flichiai','flichai- flichiai'),
(1587,'largo','adj suni -, sumamente sunichu -, tiempo adj, adv unai \n-s ratos, a adv unaipi unaipi ','suni- sunichu(sumamente)- unai- unaipi unaipi (largos ratos)'),
(1588,'larva','s- kuru- kusu','kuru- kusu'),
(1589,'laso','s- waska','waska'),
(1590,'lastimado','adj kachi salas','kachi salas'),
(1591,'lavado','p.p. maillaska','maillaska'),
(1592,'lavar','v.t. maillachii- maillai','maillachii- maillai'),
(1593,'lavarse','v.r. maillarii','maillarii'),
(1594,'lazo','s tuglla- v.t. tugllachii ','tuglla- tugllachii '),
(1595,'lejos','s- karu sachuku- (de) adv karu -, muy karulla - y alto, hasta adv awama - (hasta que no alcance la vista), de adv pisiglla','karu sachuku- karu(de)- karulla(muy)- awama-  pisiglla()'),
(1596,'lejos de','karu','karu'),
(1597,'lengua','s- kallu- rimai- simi rimai - inga inga- runa simi','kallu- rimai- simi rimai'),
(1598,'lengua inga','inga- runa simi','inga- runa simi'),
(1599,'lenguaje','s- rimai- simi rimai','rimai- simi rimai'),
(1600,'lentamente','adv allimanda','allimanda'),
(1601,'lento','adj chucha','chucha'),
(1602,'leÃ±a','s- iamta - consagrada al uso de la iglesia salbi iamta (-) casi podrida, que se convierte en polvo adj shama (iamta) -, conseguir v.i. iamtai','iamta- iamtai'),
(1603,'leÃ³n americano','puma','puma'),
(1604,'lesionar','v.t. kiwichii- lisiachii','kiwichii- lisiachii'),
(1605,'lesionarse','v.r. kiwiri-lisiarii','kiwiri-lisiarii'),
(1606,'levantado','(verticalmente) p.p. ataridu -, estar v.i. atariraiai','ataridu- atariraiai'),
(1607,'levantar','v.t. atarichii','atarichii'),
(1608,'levantarse','v.i. atarii','atarii'),
(1609,'libertad','v.t. libriachii','libriachii'),
(1610,'libertar','v.t. kacharii','kacharii'),
(1611,'librar','v.t. libriachii','libriachii'),
(1612,'libre','v.i. libriai','libriai'),
(1613,'lÃ­der de una vereda','s- kapural','kapural'),
(1614,'liendre','chia','chia'),
(1615,'lienzo','s- linsu','linsu'),
(1616,'lÃ­mite','adv iali- ialli- llalli','iali- ialli- llalli'),
(1617,'limosna','v.i. limusnai','limusnai'),
(1618,'limpiar','v.t. limpiai- picha- pikai- tibkai- tiubkai-tiukai - el cuerpo a un paciente, hacer la ceremonia para wairachii - la plaza, costumbre de v.t., s. kalli pichai','limpiai- picha- pikai- tibkai- tiubkai-tiuka'),
(1619,'limpiarse','(una cosa seca) v.r. picharii -se los mocos v.i. sunai','picharii- sunai(los mocos)'),
(1620,'limpio','p.p. tibkariska- tiubkariska- tiukariska','tibkariska- tiubkariska- tiukariska'),
(1621,'linderos','adv kuchu kuchu','kuchu kuchu'),
(1622,'lÃ­quido','s- iaku -, que tiene mucho adj iakusu','iaku- iakusu'),
(1623,'liso','adj kalpari- llambu- lluchka -, que no es sagra- sarga -, volverse v.i. llambuiai- lluchkaiai','kalpari- llambu- lluchka- sagra(que no es)- sarga(que no es)-  llambuiai- lluchkaiai'),
(1624,'liviano','adj mana llasa -, muy atarichi - como una balsa, volverse v.i. balsaiai','mana llasa- atarichi(muy)- balsaiai(como una balsa)'),
(1625,'lobo','s- sacha alku','sacha alku'),
(1626,'loma de piedra','tula','tula'),
(1627,'loma mas alta','pata','pata'),
(1628,'localizar','v.t. shachii- tarii','shachii- tarii'),
(1629,'locro','s- lugru','lugru'),
(1630,'lodo','s- turu -, hacer v.t. turuiachii','turu- turuiachii'),
(1631,'lombriz gruesa','s- murkilla','murkilla'),
(1632,'loro','s- uritu- wiritu','uritu- wiritu'),
(1633,'luciÃ©rnaga','s- nina kuru','nina kuru'),
(1634,'luchar','v.t. makai','makai'),
(1635,'luego','adv kipa- nispa','kipa- nispa'),
(1636,'lulo','s- naranjilla','naranjilla'),
(1637,'luna','s- killa - creciente, entre el tercer dÃ­a y el sÃ©ptimo \nkilla kachudu - nueva wawa killa \n- llena, dÃ­a despuÃ©s de la noche de la \nshibuju \n- llena, dos dÃ­as despuÃ©s de la kuku shibuju \n- llena, tiempo de (atun) minguanti \n- llena, vÃ­speras de la kallarii ','killa'),
(1638,'luna creciente','killa kachudu','killa kachudu'),
(1639,'luna nueva','wawa killa','wawa killa'),
(1640,'luna llena','minguanti','minguanti'),
(1641,'lunar','s- micha- michi muiu','micha- michi muiu'),
(1642,'luz','dar a v.t. nasichii- wawa urmachii- v.i. libriai- v.r. iukarii -, darse a ungurii -, ayudar a dar a v.t. libriachii','nasichii- wawa urmachii- libriai- iukariI- ungurii(darse a)-libriachii'),
(1643,'dar a luz','nasichii- wawa urmachii- libriai- iukariI','nasichii- wawa urmachii- libriai- iukariI'),
(1644,'llama','s- sindi','sindi'),
(1645,'llamar','v.t. iaikuchii- kaiai - (a la puerta, golpeando) takachii - a la puerta, expresiÃ³n para interj Tantantan - a un niÃ±o varÃ³n, expresiÃ³n de cariÃ±o para Kusha','iaikuchii- kaiai- takachii(golpear a la puerta)- Tantantan'),
(1646,'llano','s- pamba','pamba'),
(1647,'llegar','v.i. chaiai - acÃ¡ chaiamui -, hacer v.t. chaiachii, chaiachimui - una idea sin fundamento malisiai','chaiai- chaiamui(acÃ¡)- chaiachii- chaiachimui'),
(1648,'llenar',' v.t. jundachii- jundai \n- (la barriga) sagsachii\n- (un costal, una mochila), abriendo la \nboca para meter las cosas wansai \n- demasiado hasta que se derrame \ntallinaiagta karai \n-, hacer. churachii, jundachii, wansachii','jundachii- jundai- sagsachii(barriga)- wansai- churachii-  jundachii- wansachii'),
(1649,'llenarse','v.i. chichuiai v.r. jundarii- (uno mismo) jundachirii -de plata v.i. kulkii v.r. kulkirii - (la barriga), llegar a sagsarii - de gorgojos (el maÃ­z) v.i. burbujiai - (la barriga), hasta adv sagsagta - (un costal, una mochila), llegar a v.r. wansarii',' chichuiai- jundarii-jundachirii(uno mismo)- kulkii(de dinero)- kulkirii(de dinero)- sagsarii(la barriga)- burbujiai(de gorgojos)- sagsagta(la barriga)- wansarii'),
(1650,'lleno','adj junda - de goteras (ej. una casa) suturi \n- (de sabidurÃ­a) pagta\np.p. jundaska, sagsariska \n- (el estÃ³mago) sagsaska \n- (un costal, una mochila) wansaska \n','junda- suturi(de goteras)- pagta(de sabidurÃ­a)- jundaska, sagsariska- sagsaska(el estÃ³mago)-wansaska(un costal)\n'),
(1651,'llevado','(entre dos o cuatro) adv wandupi - (en los brazos, en los hombros) p.p. markaska','wandupi- markaska(en los brazos o Hombros)'),
(1652,'llevar','v.t. apai- pusai - (a alguien entre dos o cuatro) wandui - (en la espalda) aparii - (en los brazos, en los hombros) markai - a la cintura en una bolsa formada de las puntas del capisayo bugnai - a las espaldas con un segundo rebozo kinchanai/sikinchai - a','apai- pusai - wandui(a alguien entre dos o cuatro) - aparii(en la espalda)- markai(en los brazos o hombros)- kukawii(el fiambre)- apachii- aparichii- pusachii -  kukawirii( el fiambre para uno mismo)'),
(1653,'llevarse','(entre dos o cuatro) wandurii','wandurii(entre dos o cuatro)'),
(1654,'lleva','el que s- pusag','pusag'),
(1655,'llorar','v.i. wakai -, hacer v.t. wakachii','wakai- wakachii'),
(1656,'llorÃ³n','s- waka siki','waka siki'),
(1657,'llover','v.i. tamiai - un poco v.r. tamiarii','tamiai - tamiarii(un poco)'),
(1658,'llovizna','s- shabima - cuando hay arco iris kuichi tamia - de entre sol, con la expectaciÃ³n de que lloverÃ¡ mÃ¡s tarde chuntaruku tamia','shabima- chuntaruku tamia(cuando hay arco iris)'),
(1659,'lloviznar','v.r. shabimarii - (mÃ¡s intenso) tamiarii - soleado v.i. chuntarukuiai','shabimarii- tamiarii(mÃ¡s intenso) - chuntarukuiai(soleado)'),
(1660,'lluvia','s tamia -, rocÃ­o de sirinu tamia','tamia- sirinu tamia'),
(1661,'machacado','p.p. apiachiska','apiachiska'),
(1662,'machacar','v.t. apiachii- takai','apiachii- takai'),
(1663,'machacarse','v.i. apiai','apiai'),
(1664,'machete','s- kuchillu','kuchillu'),
(1665,'macho','s- kari','kari'),
(1666,'machucado','p.p. kapiska','kapiska'),
(1667,'machucar','v.t. kapii','kapii'),
(1668,'machucarse','v.r. kapirii','kapirii'),
(1669,'madera','s- kaspi','kaspi'),
(1670,'madera rolliza','manta kiru','manta kiru'),
(1671,'madrastra','s- mama ninga','mama ninga'),
(1672,'madre','s- mama','mama'),
(1673,'madrina ','s- marka- markaska mama - de confirmaciÃ³n kumpirmaska-kunfirmaska mama - de matrimonio saiariska mama','marka(bautismo)- markaska mama(bautismo)- kumpirmaska(confirmaciÃ³n)-kunfirmaska mama(confirmaciÃ³n)-  saiariska mama(matrimonio)'),
(1674,'madrugada','muy de adv tutatalla - antes del amanecer tutapita','tutatalla- tutapita(antes de amanecer)'),
(1675,'madurar','(algo) v.t. pukuchii - (una calabaza, una fruta), dejar ichuiachii/ jichuiachii -, hacer killuiachii','pukuchii- ichuiachii- jichuiachii- killuiachii'),
(1676,'madurarse','v.i. killuiai, pukui v.r. pukurii -se, medio v.i. ichuiai-jichuiai','killuiai- pukui- pukurii-ichuiai-jichuiai'),
(1677,'madurez','v.r. killuiarii, ukurii','killuiarii- ukurii'),
(1678,'maduro','p.p. killuiaska, pukuska - (del plÃ¡tano) adj apia, juchu -, medio adj ichu- jichu','killuiaska- pukuska-  apia- juchu- ich-jichu'),
(1679,'medio maduro','ichu- jichu','ichu- jichu'),
(1680,'maestro','s- iachachig','iachachig'),
(1681,'magia','s- salamanga- salamangiai','salamanga- salamangiai'),
(1682,'maÃ­z','s- sara - cuando la mazorca se estÃ¡ formando kiki - cocido muti - molido que se pone en fermento masatu','sara- kiki- muti(cocido)- masatu(molido en fermento)'),
(1683,'majado','p.p. takaska','takaska'),
(1684,'majar','v.t. takai','takai'),
(1685,'mal aire','s- kuku waira; mal viento-kuku waira','kuku waira'),
(1686,'mal viento','kuku waira','kuku waira'),
(1687,'malo','adj millai','millai'),
(1688,'mala','adj millai','millai'),
(1689,'mamÃ¡','s- mama','mama'),
(1690,'mamar','v.t. chuchui','chuchui'),
(1691,'manco','adj maki kuru','maki kuru'),
(1692,'mandar','v.t. kachai- mandai','kachai- mandai'),
(1693,'mandÃ­bula','s- kumbamba','kumbamba'),
(1694,'manera','de esa adv chasa -, - esta kasa \n-, - la misma chasallata(ta)/chisinalla \n- que, de igual adv rel imasa \n-, - quÃ© interrog imasatak','chasa- kasa - chasallata(la misma manera)- chisinalla - imasa- imasatak'),
(1695,'de igual manera','imasa','imasa'),
(1696,'que manera','imasa','imasa'),
(1697,'quÃ© manera','imasatak','imasatak'),
(1698,'mano','s- maki - bien armada puÃ±iti - derecha alli maki - izquierda lluki maki - no firme, que tiene la adj chugchu siki, tiritingu','maki- puÃ±iti(bien armada)- alli maki(derecha)- lluki maki(izquierda)- chugchu siki-tiritingu'),
(1699,'manta','especies de s- anaku- pacha','anaku- pacha'),
(1700,'manteca','s- wira','wira'),
(1701,'mantenerse fuerte','sinchiai','sinchiai'),
(1702,'maÃ±ana','kaia- tutamanda- tutata- kaia tutata- kaia tutamanda - kaia tutapita','kaia- tutamanda(de madrugada)- tutata-kaia tutata(por la maÃ±ana)- kaia tutamanda(desde la maÃ±ana)- kaia \ntutapita(de madrugada)'),
(1703,'maÃ±anita','adv amsamsa','amsamsa'),
(1704,'maravillado','v.t. tuntiadusina kawai','tuntiadusina kawai'),
(1705,'quedar maravillado','tuntiadusina kawai','tuntiadusina kawai'),
(1706,'maravillarse','v.i. tuntiadu tukui - v.r. tuntiarii','tuntiadu tukui- tuntiarii'),
(1707,'marco de la puerta','kisiu','kisiu'),
(1708,'marchitarse','v.r. waÃ±urii','waÃ±urii'),
(1709,'mareada','(la cabeza), persona s- uma muiui','uma muiui'),
(1710,'marearse','v.impers. Kibnanaiai- kimnanaiai','Kibnanaiai- kimnanaiai- uma muiurii(la cabeza)'),
(1711,'marido','s- kusa','kusa'),
(1712,'maridos','adj karisapa- rigsiiug','karisapa- rigsiiug'),
(1713,'marrano','s- kuchi','kuchi'),
(1714,'mÃ¡s o menos','rel mai','mai'),
(1715,'masa','s- muku -, volverse una v.i. sanguiai','muku- sanguiai'),
(1716,'mascado','p.p. mukuska','mukuska'),
(1717,'mascar','v.t. mukui - un poco v.r. mukurii','mukui- mukurii(un poco)'),
(1718,'masticado','p.p. mukuska','mukuska'),
(1719,'masticar','v.t. kastui - (con las muelas) mukui - (en el momento) v.r. kasturii- mukurii','kastui- mukui (con las muelas)- kasturii (en el momento) - mukurii (en el momento) '),
(1720,'matar','v.t. waÃ±uchii- puchukai - kunga kaugchui','waÃ±uchii- puchukai - kunga kaugchui'),
(1721,'matarse','v.r. waÃ±uchirii','waÃ±uchirii'),
(1722,'mate','s- mati- sacha kuashag - grande para chicha kambra mati','mati- sacha kuashag- kambra mati(mate grande)'),
(1723,'matrimonio','s- kasarai','kasarai'),
(1724,'matriz','s- wawa mama','wawa mama'),
(1725,'mazamorra','s- sara api- sambungi','sara api- sambungi'),
(1726,'mecer','v.t. wagtachii','wagtachii'),
(1727,'mecerse','v.r. wagtarii','wagtarii'),
(1728,'medicina','s- ambi -, dar v.t. ambi karai','ambi- ambi karai'),
(1729,'mÃ©dico','s- ambig- ambidur- iacha - (que siempre hace el bien) suma iacha - falso que cura soplando pichangiru','ambig- ambidur- iacha-suma iacha '),
(1730,'medida','s- tupu- jimi- palmu- simaniru tupu','tupu- jimi- palmu- simaniru tupu'),
(1731,'medio','adv asllita- astikalla- ashllita - (sano o enfermo) aska - dÃ­a s chaugpuncha- chaugpi puncha - noche chaugpi tuta- chaugtuta','asllita- astikalla- ashllita- aska(sano o enfermo)- chaugpuncha(medio dÃ­a)- chaugpi puncha(medio dÃ­a)-  chaugpi tuta(media noche)- chaugtuta(media noche)'),
(1732,'medio dia','chaugpuncha- chaugpi puncha','chaugpuncha- chaugpi puncha'),
(1733,'media noche','chaugpi tuta- chaugtuta','chaugpi tuta- chaugtuta'),
(1734,'medir','v.t. tupui ','tupui- jimii(en jemes)- palmui (una cuarta)'),
(1735,'medirse','v.r. tupurii- jimirii- palmurii','tupurii- jimirii- palmurii'),
(1736,'mejorar','v.i. aliai- alliai','aliai- alliai'),
(1737,'mejorarse','aliai- alliai','aliai- alliai'),
(1738,'melenudo','adj agchasapa','agchasapa'),
(1739,'memoria','s- iuiai -, que tiene buena alli(pa) iuiaiiug, alli uma','iuiai- alli iuiaiiug- alli uma'),
(1740,'menear','v.t. kuiuchii','kuiuchii'),
(1741,'menearse','v.r. kuiurii- kuiuririi','kuiurii- kuiuririi'),
(1742,'mentalidad daÃ±ada','ishnai','ishnai'),
(1743,'mentir','v.t. llullachii- kunijiai- v.i. llullai','llullachii- kunijiai- llullai'),
(1744,'mentira','s- llullai','llullai'),
(1745,'mentiroso','adj llulla- pipanu; muy mentiroso-llulla siki','llulla- pipanu'),
(1746,'muy mentiroso','llulla siki','llulla siki'),
(1747,'menudo','adj Ã±utu','Ã±utu'),
(1748,'a menudo','kati kati- mana unaillapi','kati kati- mana unaillapi'),
(1749,'meÃ±ique','s- wawa didu','wawa didu'),
(1750,'merecerun castigo','wakanai','wakanai'),
(1751,'mermado','p.p. uchullaiaska','uchullaiaska'),
(1752,'mermar','v.t. asllaiachii- pisiachii- uchullaiachii v.i. pisiai - un poquito v.t. asllitaiachii','asllaiachii- pisiachii- uchullaiachii-pisiai -asllitaiachii(un poquito)'),
(1753,'mermarse','v.i. asllaiai- uchullaiai v.r. pisirii -se un poquito v.i. asllitaiai','asllaiai- uchullaiai - pisirii-  asllitaiai(un poquito)'),
(1754,'mes','s- killa','killa'),
(1755,'meter','v.t. Ã±itii, satii - (una cosa en otra) satichii -, dejar Ã±itichii, satichii - a uno mismo, hacer v.r. Ã±itichirii, satichirii','Ã±itii- satii- satichii- Ã±itichii, satichii- Ã±itichirii(a uno mismo)- satichirii(a uno mismo)'),
(1756,'meterse','chapurii- Ã±itirii- satirii- (dentro de) iaikurii','chapurii- Ã±itirii- satirii- iaikurii(dentro de)'),
(1757,'metido','p.p. Ã±itiska- satiska','Ã±itiska- satiska'),
(1758,'mezcla','adj chapu','chapu'),
(1759,'mezclado','p.p. chapuchiska- chapuriska - (ej. diferentes comidas) nabjuchiska- nabujuchiska','chapuchiska- chapuriska- nabjuchiska- nabujuchiska'),
(1760,'mezclar','v.t. chapui -, hacer chapuchii','chapui- chapuchii'),
(1761,'mezclarse','v.r. chapurii','chapurii'),
(1762,'mi','pron poses nuka- nukapa','nuka- nukapa'),
(1763,'mico','clase de s- kurunchu','kurunchu'),
(1764,'miedo','s- manchai -, (persona) sin muruchu sungu -, con adv dimanchai -, sin wapu -, tener v.i. manchakui- manchanakui -, hacer que tenga v.t. manchachii','manchai- wapu - manchakui(tener)- manchanakui(tener)- manchachii'),
(1765,'sin miedo','muruchu sungu','muruchu sungu(persona)- wapu'),
(1766,'con miedo','dimanchai','dimanchai'),
(1767,'miedoso','adj mancha siki','mancha siki'),
(1768,'miel','adj miski -, depÃ³sito de s- miski puru ','miski'),
(1769,'mil','adj waranga','waranga'),
(1770,'mimado','p.p kuiaska','kuiaska'),
(1771,'mimar','v.t. kuiai','kuiai'),
(1772,'miope','adj amsa Ã±awi','amsa Ã±awi'),
(1773,'mirar','v.t. kawai - un tiempo largo chapai - sorprendido tuntiadusina kawai- hacia atrÃ¡s builtiarii - bien, que no alcanza adj amsa Ã±awi','kawai- chapai(un tiempo largo)- tuntiadusina kawai(sorprendido)- builtiarii (hacia atrÃ¡s)'),
(1774,'mirarse','kawarii','kawarii'),
(1775,'mire ','Ala- Au- Kawamui','Ala- Au- Kawamui'),
(1776,'miserable','adj atun puibl-  kulis printiÂ´- kulis wangu- micha- sinchi sungu- tsitsi- tsitsi wangu','tsitsi wangu'),
(1777,'mismo','uno adj kikin -, sÃ³lo uno kikinlla -, lo adv chasalla, kaskalla -a manera, de la chasallata(ta)/chisinalla -, hacer lo v.t. chasallata(ta)/chisinalla rurai','kikin- kikinlla(solo uno mismo)- chasalla- kaskall- chasallata- chisinalla rurai- de la Chasata/chisinalla manera'),
(1778,'mitad','s- chaugpi','chaugpi'),
(1779,'mitigar','(el dolor) v.t. chaskichii','haskichii'),
(1780,'mixto','e un color adj sarasa','sarasa'),
(1781,'mocos','s- rumadisu -, limpiarse los v.i. sunai','rumadi- sunai'),
(1782,'mochila','s- jigra','jigra'),
(1783,'modo','de otro adj sug rigcha','sug rigcha'),
(1784,'de otro modo','sug rigcha','sug rigcha'),
(1785,'moho','criar v.i. mujusiai -, criado p.p. mujusiaska','mujusiai-  mujusiaska'),
(1786,'mojado','adj juku -, todo chalangu - (ej. un camino enyerbado) shiba p.p. jukuska','juku - chalangu- shiba- jukuska'),
(1787,'mojar','v.t. jukuchii','jukuchii'),
(1788,'mojarse','v.i. jukui v.r. shibarii - uno mismo jukuchirii -, llegar a v.i. jukuiai v.r. jukurii','jukui- shibarii- jukuchirii(uno mismo)- jukuiai-  jukurii'),
(1789,'moler','v.t. kutai - (ej. el ajÃ­) takai - (una cosa suave) apiachii','kutai- takai- apiachii'),
(1790,'molerse','v.r. kutarii','kutarii'),
(1791,'molestarel oido','killachii','killachii'),
(1792,'molido','llegar a estar v.r. apiarii- kutarii','apiarii- kutarii'),
(1793,'molusco','s- taka kallu','taka kallu'),
(1794,'molleja','s- mulija','mulija'),
(1795,'momento','manancha unaillapi','manancha unaillapi'),
(1796,'dentro de un momento','manancha unaillapi','manancha unaillapi'),
(1797,'moneda de ocho reales','patakun','patakun'),
(1798,'montaÃ±a adentro','karu sachuku','karu sachuku'),
(1799,'montaÃ±a virgen','ruku sacha','ruku sacha'),
(1800,'monte','s- sachuku (sacha uku) - viejo ruku sacha, karu sachuku -, espÃ­ritu del sacha waira, shachimakuna -, pie del urku siki -, (potrero) abandonado que se ha convertido en adj chaparu -, volverse v.i. sachukuiai','sachuku- sachukuiai'),
(1801,'monte viejo','ruku sacha- karu sachuku','ruku sacha- karu sachuku'),
(1802,'espiritu del monte','sacha waira- shachimakuna','sacha waira- shachimakuna'),
(1803,'moquillo','Ã¡rbol s- kuilalun- mukillu','kuilalun- mukillu'),
(1804,'morder','v.t. kanii -, medio kachkai','kanii - kachkai(medio)'),
(1805,'morderse','v.r. kanirii - las uÃ±as con los dientes kachkarii','kanirii - kachkarii(las uÃ±as con los dientes)'),
(1806,'morir','v.i. waÃ±ui','waÃ±ui'),
(1807,'morirse','v.r. chingarii','chingarii'),
(1808,'morral','s- jigra','jigra'),
(1809,'mosca','s- chuspi','chuspi'),
(1810,'mosquito','s- chuspi','chuspi'),
(1811,'mostrar','v.t. kawachii','kawachii'),
(1812,'mote','s- muti','muti'),
(1813,'moteado','adj sarasa','sarasa'),
(1814,'motilÃ³n','s- chani- sisinda','chani- sisinda'),
(1815,'mover','v.t. kuiuchii- tangachii','kuiuchii- tangachii'),
(1816,'moverse','v.r. kuiurii - (de adelante hacia atrÃ¡s) kuiuririi - los pies aitarii - por el viento wairarii','kuiurii - kuiuririi (de adelante hacia atrÃ¡s)- aitarii(los pies) - wairarii(por el viento)'),
(1817,'movimiento','s- kuiui -, estar en v.i. kuiukui/kuiunakui','kuiui- estar en (kuiukui/ kuiunakui)'),
(1818,'muchacho','s- wambra','wambra- musu(varÃ³n)- sipas (mujer)'),
(1819,'muchacha','s- wambra - adolescente (varÃ³n) musu\n- adolescente (mujer) sipas','wambra- musu(varÃ³n)- sipas (mujer)'),
(1820,'muchedumbre','s- achka runakuna- achka jinti -, en adv waiunga','achka runakuna- achka jinti- (en)waiunga'),
(1821,'mucho','adj achka intens ajai, iapa - tiempo adj, adv unai','achka - ajai- iapa- unai(tiempo)'),
(1822,'muchos','achka - ajai- iapa- unai','achka - ajai- iapa- unai(tiempo)'),
(1823,'mudo','adj upa, mana rimag','upa- mana rimag'),
(1824,'muela','s- kiru ','kiru'),
(1825,'muela superior','mama kiru','mama kiru'),
(1826,'muerte','waÃ±ui','waÃ±ui'),
(1827,'muerto','adj waÃ±ug- p.p. waÃ±udu- waÃ±uska','waÃ±ug- waÃ±udu- waÃ±uska'),
(1828,'muesca','p.p. kungaiachiska- kungiaska','kungaiachiska- kungiaska'),
(1829,'mujer','s- warmi - casada kusaiug - vieja awila','warmi- kusaiug (casada)- awila(viaje)'),
(1830,'mujeriego','adj alkuag- warmisapa','alkuag- warmisapa'),
(1831,'murciÃ©lago','s- chimbilaku','chimbilaku'),
(1832,'mÃºsica','ejecutar una v.r. tunarii','tunarii'),
(1833,'muslo','s- changa','changa'),
(1834,'mutilado','adj puchu- suchu- shuchu','puchu- suchu- shuchu'),
(1835,'muy','intens ajai- askurinti- iapa- pinu','ajai- askurinti- iapa- pinu'),
(1836,'nacer',' v.i. tiagsamui - (semilla) wiÃ±arii','tiagsamui - wiÃ±arii(semilla)'),
(1837,'nacerse','nasirii','nasirii'),
(1838,'nada','pron ni- Ã±i ima- ni- Ã±i imapas adv manima - en realidad, que no es ianga -, que no tiene adj kurunchi/kurunchu','ni- Ã±i ima- ni- Ã±i imapas- manima- ianga- kurunchi- kurunchu'),
(1839,'nadar','v.i. waitai -, ponerse a v.r. waitarii','waitai- waitarii'),
(1840,'nadie','pron (ni/Ã±i) pipas','ni- Ã±i- pipas'),
(1841,'nalgas','s- siki','siki'),
(1842,'narices','s- singa','singa'),
(1843,'nariz','s- singa','singa'),
(1844,'nauseas','que tiene adj millai -, sentir v.r. millarii -, hacer que sienta v.t. millachii','millai - millarii - millachii'),
(1845,'necesidad','v.t. ministii- nimistii','ministii- nimistii'),
(1846,'necesidad de','ministii- nimistii','ministii- nimistii'),
(1847,'necesitado','p.p. ministidu- nimistidu- ministiska-  nimistiska','ministidu- nimistidu- ministiska-  nimistiska'),
(1848,'necesitar','llegar a v.r. ministirii/nimistirii','ministirii-nimistirii'),
(1849,'necio','adj argan','argan'),
(1850,'negar','v.r. piÃ±arii','piÃ±arii'),
(1851,'negrear','v.t. tisnai -, hacer tisnachii','tisnai- tisnachii'),
(1852,'negrearse','v.r. tisnarii','tisnarii'),
(1853,'negro','iana','iana'),
(1854,'nene','s- wawa','wawa'),
(1855,'ni','conj ni- Ã±i','ni- Ã±i'),
(1856,'nido','(de la gallina) s- tasin, wachadiru - (de pÃ¡jaro) pisku wasi','tasin- wachadiru- pisku wasi(de pÃ¡jaro)'),
(1857,'nieto','s- Ã±itu','Ã±itu'),
(1858,'nieve','caer v.i. ilui -, hacer que caiga v.t. iluchii','ilui- iluchii'),
(1859,'ninguno','pron ni-Ã±i- pipas','ni-Ã±i- pipas'),
(1860,'niÃ±ero','s- wamniru','wamniru'),
(1861,'niÃ±era','s- wamniru','wamniru'),
(1862,'niÃ±o','s- wambra -(varÃ³n) mÃ¡s grande atun kusha \n-, tener un v.i. wawa aparii','wambra- atun kusha(varÃ³n mas grande)- wawa aparii'),
(1863,'niÃ±a','s- wambra -(varÃ³n) mÃ¡s grande atun kusha \n-, tener un v.i. wawa aparii','wambra- atun kusha- wawa aparii'),
(1864,'no','adv mana, manima - (en prohibiciones) ama - interj Amaa - puede ser JuaÃ±i - bautizado, - civilizado adj auka/augka - es buena, que manancha - indÃ­gena s lanku - madurado p.p. mana pukuska - comer ciertos alimentos v.t. sasii','mana- manima- amaa- ama (en prohibiciones) -JuaÃ±i(no puede ser)- lanku(no indigena)'),
(1865,'noche','s- tuta - de luna killa tuta -, esta kuna tuta/kunantuta - oscura iana tuta','tuta '),
(1866,'noche de luna','killa tuta','killa tuta'),
(1867,'esta noche','kuna tuta- kunantuta','kuna tuta- kunantuta'),
(1868,'noche oscura','iana tuta','iana tuta'),
(1869,'noche media oscura','iamtuta','iamtuta'),
(1870,'nombrar','v.t. sutichii','sutichii'),
(1871,'nombrarse','v.r. sutichirii','sutichirii'),
(1872,'nombre','s- suti','suti'),
(1873,'nosotros','pron nukanchi','nukanchi'),
(1874,'noticias','v.r. iacharii','iacharii'),
(1875,'notificar','v.t. chaiachii- willai','chaiachii- willai'),
(1876,'novecientos','adj iskun pasag- patsa- patsag','iskun pasag- patsa- patsag'),
(1877,'noventa','adj iskun chunga','iskun chunga'),
(1878,'nube','s- puiu - de lluvia tamia puiu','puiu- tamia puiu '),
(1879,'nube de lluvia','tamia puiu','tamia puiu'),
(1880,'nubes','-s, salir v.i. puiuiai','puiuiai'),
(1881,'nublarse','v.i. puiu jundai- v.r. amsaiarii','puiu jundai- amsaiarii'),
(1882,'nuca','s- kunga','kunga'),
(1883,'nudillo','hierba s kiwa','kiwa'),
(1884,'nudo','s- Ã±udu- de la mano maki Ã±udu','Ã±udu- maki Ã±udu(de la mano)'),
(1885,'nudos','con adj angudu- wangudu','angudu- wangudu'),
(1886,'nuestro','pron poses nukanchi- nukanchipa','nukanchi- nukanchipa'),
(1887,'nuevamente','adv ikuti- kuti','ikuti- kuti'),
(1888,'nueve','adj iskun','iskun'),
(1889,'nuevo','adj musu -, de adv ikuti- kuti, musuglla -, volverse v.i. musuiai','musu- ikuti- kuti- musuglla-  musuiai'),
(1890,'de nuevo','ikuti- kuti- musuglla','ikuti- kuti- musuglla'),
(1891,'nuez','s- gargiru','gargiru'),
(1892,'nunca','adv ni- Ã±i imaurapa- imauras','ni- Ã±i imaurapa- imauras'),
(1893,'nutria','s- iaku alku','iaku alku'),
(1894,'obedecer','v.t. uiai','uiai'),
(1895,'obligar','v.t. ubligai - (a la fuerza) ubligachii','ubligai- ubligachii'),
(1896,'obligarse','v.r. ubligarii','ubligarii'),
(1897,'obsequiar','v.t. largai- v.i. bajnai','largai- bajnai'),
(1898,'obsequio','s- kamariku - de comida para llevar a la familia waglla - ofrecido por un huÃ©sped bajna','kamariku- waglla- bajna'),
(1899,'observar','v.t. chapai','chapai'),
(1900,'obstÃ¡culos','poner v.t. arkachii','arkachii'),
(1901,'oca','s- uka','uka'),
(1902,'occidente','s- adv indi \nchingaridiru(nigmanda)','indi chingaridiru(nigmanda)'),
(1903,'del occidente','indi chingaridiru(nigmanda)','indi chingaridiru(nigmanda)'),
(1904,'ocioso','adj argan- killa wangu','argan- killa wangu'),
(1905,'ocultar','v.t. pakai- pakallaiachii -, (hacer) pakakuchii','pakai- pakallaiachii- pakakuchii'),
(1906,'ocultarse','v.r. chingarii, pambarii -se (algo) v.i. pakallaiai','chingarii- pambarii -pakallaiai(algo)'),
(1907,'ocultas','a adv pakalla','pakalla'),
(1908,'ochenta','pusag chunga','pusag chunga'),
(1909,'ocho','adj pusag','pusag'),
(1910,'ochocientos','pusag pasag- patsa- patsag','pusag pasag- patsa- patsag'),
(1911,'odiar','v.t. kuntrai - un poco v.r. kuntrarii','kuntrai- kuntrarii(un poco)'),
(1912,'ofrenda','s- kamariku- uprinda','kamariku- uprinda'),
(1913,'oiga','Ala- Au','Ala- Au'),
(1914,'oÃ­do','s- ringri- rinri','ringri- rinri'),
(1915,'oÃ­r','v.t. uiai -, hacer uiachii','uiai- uiachii'),
(1916,'oÃ­rse','v.r. uiarii','uiarii'),
(1917,'OjalÃ¡ que','adv simpri; OjalÃ¡ que no- Ujala','simpri- Ujala (OjalÃ¡ que no)'),
(1918,'ojo','s- Ã±awi -, pupila del Ã±awi muru - de color claro ubillas Ã±awi - de Ã¡guila, que tiene adj alli Ã±awi -, dar un tirÃ³n del v.impers. Ã±awi aisai','Ã±awi'),
(1919,'ojo de color claro','ubillas Ã±awi','ubillas Ã±awi'),
(1920,'ojo de aguila','alli Ã±awi','alli Ã±awi'),
(1921,'dar un tiron del ojo','Ã±awi aisai','Ã±awi aisai'),
(1922,'oler','v.t. asnai -, hacer asnaiachii -, llegar a v.i. asnaia','asna- asnaiachii- asnaia'),
(1923,'olerse','v.r. asnarii','asnarii'),
(1924,'olor','asna -sentir un v.r. asnarii','asna -asnarii'),
(1925,'buen olor','miski asna- suma asna','miski asna- suma asna'),
(1926,'mal olor','jiru asna- mana suma asna','jiru asna- mana suma asna'),
(1927,'oloroso','adj asna','asna'),
(1928,'olvidadizo','adj ardita uma- mana iuiaiiug','ardita uma- mana iuiaiiug'),
(1929,'olvidarse','v.r. kungarii -, hacer v.t. kungachii, kungarichii','kungarii- kungachii- kungarichii '),
(1930,'olla','s- manga','manga'),
(1931,'ombligo','s- pupu','pupu'),
(1932,'ondulacÃ­on','s- kingu','kingu'),
(1933,'orden','en adv suiumanda, wachuspa -, por todas partes en suiu -, por todas partes sistemÃ¡ticamente en suiunigmanda - desde el principio, todo en suiumandata \n-, andar en v.i. suiu rii \n-, ponerse en suiui, wachui\n-, hacer que pasen en v.t. suiuchii ','suiumanda- wachuspa- (todo en)suiumandata- (andar en)suiu rii- (ponerse en) suiui/ wachui- hacer que pase en suiuchii'),
(1934,'en orden','suiumanda- wachuspa','suiumanda- wachuspa'),
(1935,'ordeÃ±ar','v.t. kapii','kapii'),
(1936,'oreja','s- ringri- rinri','ringri- rinri'),
(1937,'orgulloso','estar v.i. atun tukui','atun tukui'),
(1938,'orientaciones','dar buenas v.t. juisiuchi','juisiuchii'),
(1939,'orientar','v.t. iuiachispa iachachii','iuiachispa iachachii'),
(1940,'oriente','s- adv indi llugsikuska(nigmanda)','indi llugsikuska(nigmanda)'),
(1941,'del oriente','indi llugsikuska(nigmanda)','indi llugsikuska(nigmanda)'),
(1942,'orilla','s- kuchu - del agua iaku pata','kuchu- iaku pata(del agua)'),
(1943,'orina','s- ispa','ispa'),
(1944,'orinar','v.i. ispai - (utilizado para los pequeÃ±os) chichii -, tener ganas de v.impers. chichinaiai -, hacer v.t. ispachii, chichichii','ispai- chichii -  chichinaiai- ispachii- chichichii'),
(1945,'orinarse','v.r. isparii- chichirii','isparii- chichirii'),
(1946,'oro','s- kuri -, de color adj kurilla','kuri-  kurilla'),
(1947,'ortiga','s- chini','chini-kurilla(color)'),
(1948,'ortigar','v.t. chinichii- chinii','chinichii- chinii'),
(1949,'ortigarse','v.r. chinirii','chinirii'),
(1950,'oruga','s- chini kuku- kuru-  ubijita ','chini kuku- kuru-  ubijita '),
(1951,'oscuras','a adv amsamsa','amsamsa'),
(1952,'a oscuras','amsamsa','amsamsa'),
(1953,'oscurecer','v.t. amsaiachii- tutaiachi - un poco v.r. amsaiarii','amsaiachii- tutaiachi- amsaiarii(un poco)'),
(1954,'oscurecerse','v.i. amsaiai- tutaiai','amsaiai- tutaiai'),
(1955,'oscuro','adj amsa, tuta, tutuku -, todavÃ­a adv amsamsa','amsa- tuta- tutuku- amsamsa(todavia)'),
(1956,'otra','adj sug- sugka - modo, de sug rigcha - lado de la ribera s banda - vez adv ikuti/kuti - vida, en la sug luarpi/lugarpi - lado, al chimba - lado, cruzar al v.i. chimbai - lado, hacer pasar al v.t. chimbachii - lado, pasarse al v.r. chimbarii','sug- sugka'),
(1957,'otro','adj sug- sugka - modo, de sug rigcha - lado de la ribera s banda - vez adv ikuti/kuti - vida, en la sug luarpi/lugarpi - lado, al chimba - lado, cruzar al v.i. chimbai - lado, hacer pasar al v.t. chimbachii - lado, pasarse al v.r. chimbarii','sug- sugka- cruzar al chimbai lado- hacer pasar al chimbachii lado- pasarse al chimbarii lado'),
(1958,'otra vez','ikuti- kuti','ikuti- kuti'),
(1959,'en la otra vida','sug luarpi- lugarpi','sug luarpi- lugarpi'),
(1960,'al otro lado','chimba','chimba'),
(1961,'ovillar','v.t. kuruiai- kururui','kuruiai- kururui'),
(1962,'ovillarse','v.r. kuruiarii-kurururii','kuruiarii-kurururii'),
(1963,'ovillo redondo','kururu','kururu'),
(1964,'oxidado','p.p. wakariska, wakaska - (el hierro) kiiaiaska','wakariska- wakaska- kiiaiaska(el hierro)'),
(1965,'oxidarse','v.r. wakarii','wakarii'),
(1966,'pacÃ­fica','adj, adv upalla','upalla'),
(1967,'pacÃ­ficamente','adj, adv upalla','upalla'),
(1968,'padrastro','s- taita ninga','taita ninga'),
(1969,'padre','s- taita -s, los atunkuna','taita- atunkuna'),
(1970,'padres','atunkuna','atunkuna'),
(1971,'padrino de bautismo','s- markas/markaska taita - de confirmaciÃ³n kumpirmaska/kunfirmaska taita - de matrimonio saiariska taita - de bautismo o de confirmaciÃ³n achala','markas- markaska taita'),
(1972,'padrino de matrimonio','saiariska taita','saiariska taita'),
(1973,'padrino de confirmacion ','kumpirmaska- kunfirmaska taita','kumpirmaska- kunfirmaska taita'),
(1974,'paico','paiku','paiku'),
(1975,'pagar','hacer v.t. pagachii','pagachii'),
(1976,'paisaje','s- kawari','kawari'),
(1977,'paja comÃºn','s- tisnachi, San Andris panga -, amarrar la v.t. wasi maitui','tisnachi- San Andris panga'),
(1978,'amarrar la paja','wasi maitui','wasi maitui'),
(1979,'pÃ¡jaro','s- pisku','pisku'),
(1980,'pala','s- pala - de madera hecha de una tabla walmu','pala-  walmu'),
(1981,'palabra','s- rimai','rimai'),
(1982,'pÃ¡lido','adj irki - irki siki- linsu Ã±awi- p.p. irkiaska- killuiaska','irki - irki siki- linsu Ã±awi- irkiaska- killuiaska'),
(1983,'palma','clases de s bumbum, witsaja - de la mano maki pamba - del pie chaki pamba','bumbum- witsaja- maki pamba(de la mano)- chaki pamba(del pie)'),
(1984,'palo','s- kaspi -, clases de chaki/purig kaspi, pichinga, sibuju - demasiado corto kuru kaspi, umutu kaspi -s llevados por la represa de un rÃ­o iaku iamta','kaspi - kuru kaspi(demasiado corto)- umutu kaspi(demasiado corto)'),
(1985,'palpar','(con la mano) v.t. llamkai','llamkai(con la mano)'),
(1986,'pan','s- tanda - de maÃ­z sara tanda','tanda'),
(1987,'pan de maiz','sara tanda','sara tanda'),
(1988,'panal','s- miski puru','miski puru'),
(1989,'panela','s- dusi- miski','dusi- miski'),
(1990,'pantalonsito','s- muchingu','muchingu'),
(1991,'pantorrilla','s- chaki butijun- jinsa','chaki butijun- jinsa'),
(1992,'paÃ±al','s- lachapa','lachapa'),
(1993,'paÃ±olÃ³n','s- baita','baita'),
(1994,'paÃ±uelo','s- llachapa','llachapa'),
(1995,'papagayo','s- uritu-wiritu','uritu-wiritu'),
(1996,'papÃ¡','s- taita','taita'),
(1997,'papas','s- papa','papa'),
(1998,'papayuela','s- chilakuan- chilwakan','chilakuan- chilwakan'),
(1999,'para quÃ©','interrog imapatak','imapatak'),
(2000,'parado','p.p. saiakuska- saianakuska -, estar v.i. saiakui- saianakui','saiakuska- saianakuska- saiakui- saianakui'),
(2001,'pÃ¡ramo','s- paramu','paramu'),
(2002,'pararse','v.r. saiarii- v.i. pininai','saiarii- pininai'),
(2003,'parasitos','sisurii','sisurii'),
(2004,'parecer','v.t. rigchai','rigchai'),
(2005,'pared de barro','llunchi','llunchi'),
(2006,'pared de la casa','wasi kincha(de madera)','wasi kincha(de madera)'),
(2007,'parir','v.t. wawa urmachii- nasichii v.r. iukarii- ungurii - (los animales) v.i. wachai','wawa urmachii- nasichi- iukarii- ungurii-wachai(los animales)'),
(2008,'partera','s- kakudur- kakug ','kakudur- kakug- kakudura'),
(2009,'participar','v.r. budarii -, hacer v.t. bidachii','budarii- bidachii'),
(2010,'partido','p.p. chigtaska - (maÃ­z) adv arus arus','chigtaska- arus arus(maÃ­z)'),
(2011,'partir','v.t. bandai- bandiai - (ej leÃ±a) chigtai - de anchui - en dos chaugpii -, hacer chigtachii','bandai- bandiai- anchui(partir de)- chaugpii(partir en dos)- chigtachii'),
(2012,'partirse','v.r. bandarii- chigtarii - v.i. chigtaiai','bandarii- chigtarii- chigtaiai'),
(2013,'pasado','adv ialigta- ialligta -, lo Ã±ugpamanda','ialigta- ialligta- Ã±ugpamanda(lo pasado)'),
(2014,'lo pasado','Ã±ugpamanda','Ã±ugpamanda'),
(2015,'pasados','iali- ialli- llalli','iali- ialli- llalli'),
(2016,'pasar','v.t apamui, ialichii/iallichii/llallichii - a la otra ribera chimbai - hacia acÃ¡ ialichimui/iallichimui/llallichimui - de mano en mano kuai - la trama awai -, hacer chimbachii, pasachii - en orden, hacer suiuchii - (a travÃ©s de) v.i. ialii/iallii/llallii ','apamui- ialichii- iallichii- llallichii- chimbai- ialichimui- iallichimui- llallichimui- kuai(pasar de mano a mano)- awai(pasar la trama)- chimbachii- pasachii- suiuchii(pasar en orden)-ialii- iallii- llallii(a travÃ©s de)- chisiai(pasar la vida)-pasai (el'),
(2017,'pararse','v.r. ialirii- iallirii- llalliri- chimbarii','ialirii- iallirii- llalliri- chimbarii'),
(2018,'pasear','v.i. purii -, hacer v.t. purichii','purii - purichii'),
(2019,'pasearse','v.r. puririi','puririi'),
(2020,'pasos','pinina(los primeros)-(dar los primeros) pininai- tarkii- dar ialirii/iallirii/llallirii en falso','pinina(los primeros)-(dar los primeros) pininai- tarkii- dar ialirii/iallirii/llallirii en falso'),
(2021,'patadas','dar v.t. aitai','aitai'),
(2022,'patalearse','v.r. aitarii','aitarii'),
(2023,'patear','v.t. aitai -, hacer aitachii','aitai- aitachii'),
(2024,'patearse','v.r. aitarii','aitarii'),
(2025,'patilla','s- argan agcha- kuku agcha','argan agcha- kuku agcha'),
(2026,'patio','s- kancha - de la casa wasi kancha','kancha'),
(2027,'patio de la casa','wasi kancha','wasi kancha'),
(2028,'pato triste','iaku patu','iaku patu'),
(2029,'pavo','s- chumbu','chumbu'),
(2030,'paz','en adv impas -, sentir v.t. alli iuiachii','impas- alli iuiachii(sentir)'),
(2031,'en paz','impas','impas'),
(2032,'pedazo','s- piti','piti'),
(2033,'pedazos','a adv piti piti - rotos p.p. llikichiskakuna','piti piti - llikichiskakuna(pedazos rotos)'),
(2034,'a pedazos','piti piti','piti piti'),
(2035,'pedir','v.t. maÃ±ai- ruai- rugai - para uno mismo v.r. maÃ±arii','maÃ±ai- ruai- rugai- maÃ±arii(para uno mismo)'),
(2036,'pedregoso','adj rumisu','rumisu'),
(2037,'pegajoso','adj llaugsa- wikiiug -, volverse v.i. llaugsaiai','llaugsa- wikiiug- llaugsaiai'),
(2038,'pegar','v.t. iachii- iuiachii- piai- pigai- wagtai','iachii- iuiachii- piai- pigai- wagtai'),
(2039,'pegarse','(casualmente) v.r. piaririi- pigaririi','piaririi- pigaririi'),
(2040,'peinado','bien adv lipia lipia- llambu llambu','lipia lipia- llambu llambu'),
(2041,'bien peinado','lipia lipia- llambu llambu','lipia lipia- llambu llambu'),
(2042,'peinar','v.t. Ã±agchai - la cabeza de otro con las manos lambiai/ llambiai -, hacer Ã±agchachii','Ã±agchai- lambiai- llambiai- Ã±agchachii'),
(2043,'peinarse','v.r. lambiarii- llambiarii- llamburii- Ã±agcharii','lambiarii- llambiarii- llamburii- Ã±agcharii'),
(2044,'peine','s- Ã±agcha','Ã±agcha'),
(2045,'pelado','adj tibkari- tiubkari-  tiukari p.p. tibkariska- tiubkariska- tiukariska -, (mote) pataska (muti) -, llegar a estar v.r. tibkarii- tiubkarii- tiukarii','tibkari- tiubkari-  tiukari - tibkariska- tiubkariska- tiukariska - pataska(mote)- tibkarii- tiubkarii- tiukarii'),
(2046,'pelada','tibkari- tiubkari-  tiukari - tibkariska- tiubkariska- tiukariska - pataska- tibkarii- tiubkarii- tiukarii','tibkari- tiubkari-  tiukari - tibkariska- tiubkariska- tiukariska - pataska(mote)- tibkarii- tiubkarii- tiukarii'),
(2047,'pelar','v.t. lluspichii-  tibkai- tiubkai- tiukai - con ceniza el maÃ­z para cocinarlo pataskai - con fuego chamuskai','lluspichii-  tibkai- tiubkai- tiukai- pataskai(con ceniza el maiz)- chamuskai(con fuego)'),
(2048,'pelarse','v.r. pilarii- tibkarii- tiubkarii- tiukarii','pilarii- tibkarii- tiubkarii- tiukarii'),
(2049,'pelea','s- makanakui- piliai','makanakui- piliai'),
(2050,'pelear','v.t. makanakui- piliai','makanakui- piliai'),
(2051,'pelearse','v.r. piliarii','piliarii'),
(2052,'peligroso','adj risku','risku'),
(2053,'pelo','s- agcha, milma -, llegar a tener v.i. agchaiai/agcha wiÃ±ai, milmaiai','agcha- milma-agchaiai- agcha wiÃ±ai- milmaiai'),
(2054,'llegar a tener pelo','agchaiai- agcha wiÃ±ai- milmaiai','agchaiai- agcha wiÃ±ai- milmaiai'),
(2055,'peludo','adj milmunchu','milmunchu'),
(2056,'peluquear','v.t. agcha kuchui','agcha kuchui'),
(2057,'pellizcar','v.t. tibsii- tiusii','tibsii- tiusii'),
(2058,'pellizcarse','v.r. tibsirii- tiusirii','tibsirii- tiusirii'),
(2059,'pena','s - llakii -, con adv dillakii -, tener v.i. llakiiwa kai','llakii- dillakii - llakiiwa kai'),
(2060,'con pena','dillakii','dillakii'),
(2061,'tener pena','llakiiwa ka','llakiiwa ka'),
(2062,'pene','ullu','ullu'),
(2063,'pensamiento','s- iuiai','iuiai'),
(2064,'pensar','v.t. iuiai','iuiai'),
(2065,'peÃ³n','s- pigun- piun','pigun- piun'),
(2066,'pepa','s- muiu ','muiu'),
(2067,'pepas','adv muiundi','muiundi'),
(2068,'pepita','s- muiu','muiu'),
(2069,'pequeÃ±ito','adj uchullatum','uchullatum'),
(2070,'pequeÃ±o','adj amchi, uchulla -, abnormalmente adv panagta -, hacerse v.r. kuruiarii','amchi- uchulla- panagta(anormalmente)- kuruiarii'),
(2071,'percibir','(un olor) v.t. asnai -, hacer asnachii','asnai- asnachii'),
(2072,'perder','v.t. chingachii','chingachii'),
(2073,'perderse','de chingai - v.r. chingarii','chingai(perderse de)- chingarii'),
(2074,'perdido','p.p. chingaska - parcialmente la vista adj Ã±awi amsa','chingaska- Ã±awi amsa'),
(2075,'perdida','p.p. chingaska - parcialmente la vista adj Ã±awi amsa','chingaska- Ã±awi amsa'),
(2076,'perdonar','v.t. pasinsiai- pirdunai','pasinsiai- pirdunai'),
(2077,'perdonarse','v.r. pasinsiarii- pirdunarii','pasinsiarii- pirdunarii'),
(2078,'Perdone','interj Pasinsia','Pasinsia'),
(2079,'pereza','s- killai -, dar v.impers. killai','killai- killai'),
(2080,'perezoso','adj argan- killa wangu -, hombre s kukurungu -, muy killaiug','argan- killa wangu- (hombre)kukurung- (muy)killaiug'),
(2081,'perforar','v.t. jutkuchii- utkuchii','jutkuchii- utkuchii'),
(2082,'perforarse','v.r. jutkurii- utkurii','jutkurii- utkurii'),
(2083,'perfume','s- suma asna','suma asna'),
(2084,'permanecer','v.i. tiakui- tianakui - en el nido cubierto por las alas ugllaraiai','tiakui- tianakui'),
(2085,'permiso','dar v.t. lisinsiai -, Con interj Lisinsia','lisinsiai- Lisinsia'),
(2086,'con permiso','Lisinsia','Lisinsia'),
(2087,'dar permiso','lisinsiai','lisinsiai'),
(2088,'permitir','v.t. lisinsiai - que alguien reciba (algo) rikuchii','lisinsiai- rikuchii'),
(2089,'permitirse','v.r. lisinsiarii -se recibir (algo, uno mismo) rikuchirii','lisinsiarii - rikuchirii'),
(2090,'pernoctar','hacer v.t. chisiachii','chisiachii'),
(2091,'perrero','s- asuti','asuti'),
(2092,'perrito','s- alkitu- alkuag- alkutum','alkitu- alkuag- alkutum'),
(2093,'perro','s- alku - de monte sacha alku - pequeÃ±o que come la caca de gallina shachinan','alku -sacha alku(perro de monte) -shachinan'),
(2094,'perro de monte','sacha alku','sacha alku'),
(2095,'perseguir','v.t. kalpachii','kalpachii'),
(2096,'persona','s- runa- jinti','runa- jinti'),
(2097,'personaje grande','iaia','iaia'),
(2098,'pesadilla','s- muspai -, tener una v.r. musparii -, hacer que tenga una v.t. muspachii','muspai- musparii- muspachii'),
(2099,'pesado','adj llasa -, volverse v.i. llasaiai- v.r. llasarii','llasa- llasaiai- llasarii'),
(2100,'pesar','v.t. llasai','llasai'),
(2101,'pescado','s- chalwa- iaku aicha','chalwa- iaku aicha'),
(2102,'pescar','v.i. chalwai - con atarraya ataraiai - con anzuelo ansuilai -, hacer v.t. ataraiachii','chalwai- ataraiai(con atarraya) - ansuilai(con anzuelo)- ataraiachii'),
(2103,'pescuezo','s- kunga','kunga'),
(2104,'peso','s- billiti- patakun -, llegar a tener v.i. llasaiai','billiti- patakun- llasaiai'),
(2105,'pestaÃ±a','s- Ã±awi milma','Ã±awi milma'),
(2106,'pez','s- chalwa','chalwa'),
(2107,'picaflor','s- kindi','kindi'),
(2108,'picante','adj aia- tugsi -, volverse v.i. tugsiai','aia- tugsi - tugsiai'),
(2109,'picar','v.t. aiai-  tugsii- pikai - (la piel) raurai -, hacer aiachii, tugsichii -, hacerse v.r. aiachirii','aiai-  tugsii- pikai -  raurai(la piel) - aiachii- tugsichii- aiachirii'),
(2110,'picarse','tugsirii- raurarii','tugsirii- raurarii'),
(2111,'picatear','v.t. chungai','chungai'),
(2112,'pico de ave','s- pisku singa','pisku singa'),
(2113,'pie','s- chaki - plano chaki pamba - del Ã¡rbol sacha siki','chaki- chaki pamba(pie plano) - sacha siki(pie del arbol)'),
(2114,'pies','estar de v.i. saiakui/saianakui -, ponerse de v.r. saiarii -, ponerse de (un nene) v.i. pininai \n-, ponerse en los puntos de los v.r.\natuniachirii \n- (un nene), acto de ponerse de s pinina','saiakui- saianakui- saiarii - pininai-\natuniachirii - pinina'),
(2115,'piedra','s- rumi - de afilar apilanga rumi - de fogÃ³n tulpa - de moler kutan/kutanga rumi - del monte urku siki - que se utiliza para producir fuego islabun - que, al calentarse, produce un aroma piÃ±a kupal -s amontonadas, conjunto de s tula','rumi'),
(2116,'piedra de afilar','apilanga rumi','apilanga rumi'),
(2117,'piedra de fogon','tulpa','tulpa'),
(2118,'piedra del monte','urku siki','urku siki'),
(2119,'piedra de moler','kutan- kutanga rumi','kutan- kutanga rumi'),
(2120,'piel','s- kara','kara'),
(2121,'pierna','s- changa - inferior (la parte de adelante) chiuka- shibka -, a quien le falta una adj chaki kuru, mana chakiiug','changa -chiuka(inferior)-shibka(inferior) - chaki kuru(que le fala una pierna)- mana chakiiug(que le fala una pierna)'),
(2122,'pieza','s- uku','uku'),
(2123,'pinchar','v.t. tugsii -, dejar tugsichii','tugsii- tugsichii'),
(2124,'pincharse','v.r. tugsirii','tugsirii'),
(2125,'pininos','tatkii(un nene)','tatkii(un nene)'),
(2126,'pintadillo','s- sacha kui','sacha kui'),
(2127,'pintar','v.t. sumaiachii - (ej. una casa) musuiachii - con carbÃ³n tisnai - de negro ianaiachii - con carbÃ³n, hacer tisnachii','sumaiachii - musuiachii - tisnai(con carbÃ³n) - ianaiachii(de negro))- tisnachii- tisnarii'),
(2128,'pipÃ³n','s- butijun','butijun'),
(2129,'piojo','usa','usa'),
(2130,'piojo blanco','pilis','pilis'),
(2131,'pisar','v.t. sarui - lento v.r. sarurii','sarui'),
(2132,'pisar lento','sarurii','sarurii'),
(2133,'piscina','formarse una v.i. kuchaiai -, hacer v.t. kuchaiachii','kuchaiai -kuchaiachii'),
(2134,'placenta','wawa kukawi','wawa kukawi'),
(2135,'placer','placer, sentir v.r. miskirii -, hacer que sienta v.t. miskichii','miskirii(sentir) - miskichii(hacer que sienta)'),
(2136,'plaga de insectos','asna kuku','asna kuku'),
(2137,'plan','s- pamba','pamba'),
(2138,'planazos','dar v.t. planiai','planiai'),
(2139,'plano','adj llambu- pamba -, volverse v.i. pambaiai','llambu-pamba- pambaiai'),
(2140,'planta del pie','chaki uku ladu- chaki ukuma','chaki uku ladu- chaki ukuma'),
(2141,'plantado','estar v.i. saiakui- saianakui','saiakui- saianakui'),
(2142,'plantar','v.t. saiachii- tarpui','saiachii- tarpui'),
(2143,'plata','s- kulki','kulki'),
(2144,'plato de barro','s- kallana','kallana'),
(2145,'plaza','s- kalli','kalli'),
(2146,'plomo','de color adj iurusu','iurusu'),
(2147,'plumaje','corona de s walka- llaugtu','walka- llaugtu'),
(2148,'pobre','adj pugri- wagchintu- chalangu- kurunchi- kurunchu','pugri- wagchintu- chalangu- kurunchi- kurunchu'),
(2149,'pobre niÃ±ito','Mushilajim- Shushunajim','Mushilajim- Shushunajim'),
(2150,'pobresito','Apai- Apaijim','Apai- Apaijim'),
(2151,'poco','intens tinlla -, un adj mailla - (casi ocurre lo contrario) adv aslla','tinlla- mailla(un poco)- aslla(casi no pasa)'),
(2152,'un poco','mailla','mailla'),
(2153,'podar','v.t. susuchii, shuchui - (una calabaza) kapai','susuchii- shuchui- kapai'),
(2154,'poderoso','adj wapu','wapu'),
(2155,'podrido','adj wabka (wibus) p.p. ismuska -, (leÃ±a) casi adj shama (iamta), chakidu tusta','wabka- ismuska - shama(casi)- chakidu tusta(casi)'),
(2156,'podrirse','v.i. ismui -, llegar a v.r. ismurii','ismui- ismurii'),
(2157,'polverizarse','v.i. shamaiai','shamaiai'),
(2158,'polvo','volverse Ã±utui v.r. Ã±uturii -, hacer que algo se vuelva v.t. Ã±utuchii','Ã±utui- Ã±uturii- Ã±utuchii'),
(2159,'ponedora','(dÃ­cese de las gallinas) s- wachadura','wachadura'),
(2160,'poner','v.t. churai, kacharii - a la inversa tigrachii - a un lado laduiachii - alrededor muiuchii - boca abajo (un objeto) pagchai - candela nina churai - collar walkachii - corona llaugtuchii - el hilo largo de un telar awillii - en cuclillas kurpachii - en la ','churai- kacharii- (poner a la inversa)tigrachii- (poner a un lado) laduiachii-( poner alrededor)muiuchii- (poner boca abajo)pagchai- (poner collar)walkachii- (poner corona)llaugtuchii- (poner el hilo largo de un telar)awillii- (poner en cuchillas)kurpachi'),
(2161,'poner candela','nina churai','nina churai'),
(2162,'ponerse','churarii(vestido)','churarii(vestido)'),
(2163,'ponsoÃ±a','s- punsuÃ±u','punsuÃ±u'),
(2164,'poquito','un adv asllita- astikalla- ashtilla','asllita- astikalla- ashtilla'),
(2165,'un poquito','asllita- astikalla- ashtilla','asllita- astikalla- ashtilla'),
(2166,'por ahÃ­','adv maita - eso chimanda','maita'),
(2167,'por eso','chimanda','chimanda'),
(2168,'por quÃ©','imapatak- imawantak ','imapatak- imawantak '),
(2169,'poseer','v.t. charii- iukai -, hacer charichi- iukachii','charii- iukai - charichi- iukachii'),
(2170,'posible','ser v.i. alli kai','alli kai'),
(2171,'ser posible','alli kai','alli kai'),
(2172,'posillo','s- wisinga','wisinga'),
(2173,'postema','s- chupu','chupu'),
(2174,'potro','s- kuku chupu','kuku chupu'),
(2175,'pozo','s- pusu','pusu'),
(2176,'pregnar','v.t. wawa aparichii','wawa aparichii'),
(2177,'preguntar','v.t. tapui','tapui'),
(2178,'preguntarse','v.r. tapurii','tapurii'),
(2179,'preguntas','hacer v.t. tapuchii','tapuchii'),
(2180,'preguntÃ³n','adj tapu siki','tapu siki'),
(2181,'premio','s- uiansa -, dar v.t. uiansa karai','uiansa - uiansa karai(dar premio)'),
(2182,'prender','v.t. apii- sindichii -v.i. sindii - candela v.t. nina churai - fuego ninaiachii','apii- sindichii - sindii - nina churai - ninaiachii'),
(2183,'prender candela','nina churai','nina churai'),
(2184,'prender fuego','ninaiachii','ninaiachii'),
(2185,'prenderse','v.r. apirii- sindirii- wangurii','apirii- sindirii- wangurii'),
(2186,'prendido','p.p. sindiska','sindiska'),
(2187,'preÃ±ada','adj chichu -, estar v.i. chichuiai','chichu - chichuiai'),
(2188,'preÃ±ar','chichuiachii','chichuiachii'),
(2189,'prescindir','chakarii- chakachirii- chakachii','chakarii- chakachirii- chakachii'),
(2190,'preocupaciones','sentirse sin v.t. alli iuiachii','alli iuiachii'),
(2191,'preparado','adj pagta p.p. allichiska','pagta- allichiska'),
(2192,'preparar','v.t. allichii - lodo turuiachii - el fiambre del dÃ­a (a otra persona) kukawichii - (la comida) un poco simple samsamiachii - masatu masatui -, hacer allichichii - chicha v.i. aswai','allichii- turuiachii(preparar lodo)-samsamiachii- masatui- allichichii- aswai(prepar chicha)'),
(2193,'prepararse','v.r. allichirii','allichirii'),
(2194,'presentable','volverse medio v.r. parikirii','parikirii'),
(2195,'presentarse','v.r. kawarii','kawarii'),
(2196,'presiÃ³n','salir a (un lÃ­quido) v.r. chiplarii','chiplarii'),
(2197,'prestar','v.t. maÃ±achii- bin rurai - ayuda aidachii-aiudachii - ayuda (en dinero) ramai - trabajo dibichii','maÃ±achii- bin rurai- aidachii(ayuda)- aiudachii(ayuda) - ramai(ayuda en dinero)- dibichii(trabajo)'),
(2198,'pretender ser','v.i. tukui',' tukui'),
(2199,'primero','adv Ã±ugpa -a vez adv musuglla','Ã±ugpa - musuglla'),
(2200,'primera vez','musuglla','musuglla'),
(2201,'principiar','v.i. kallarii','kallarii'),
(2202,'prisa','de adv kalpa -, a toda kalpa kalpa','kalpa- kalpa kalpa(a toda prisa)'),
(2203,'de prisa','kalpa','kalpa'),
(2204,'privar','v.t. sasichii','sasichii'),
(2205,'probar','v.t. tantiai- trubai -, hacer tantiachii, trubachii - (al paladar) v.r. mikurii','tantiai- trubai- tantiachii- trubachii- mikurii(al paladar)'),
(2206,'probarse','tantiarii- trubarii','tantiarii- trubarii'),
(2207,'profesor','s- iachachig','iachachig'),
(2208,'pronto','adv mana unailla -, de dipanda- diulpi- mana sintiglla','mana unailla- dipanda- diulpi- mana sintiglla'),
(2209,'propio','adj kikin','kikin'),
(2210,'proteger','v.t. kispichii- michai v.r. kispichirii','kispichii- michai- kispichirii'),
(2211,'protegerse','arkarii- kincharii- kispirii- pakakurii -se de micharii','arkarii- kincharii- kispirii- pakakurii -micharii(protegerse de)'),
(2212,'provecho','sin adv ianga','ianga'),
(2213,'sin provecho','ianga','ianga'),
(2214,'provisiones','s- kukawi','kukawi'),
(2215,'prÃ³ximo','adv kailla - a cosechar, estar v.r. killuiarii','kailla '),
(2216,'pueblo','s- llagta- puiblu','llagta- puiblu'),
(2217,'puente','s- chaka -, tender un v.t. chaka churai- chakachii','chaka'),
(2218,'tender un puente',' chaka churai- chakachii',' chaka churai- chakachii'),
(2219,'puerco','s- kuchi','kuchi'),
(2220,'puercoespÃ­n','michichin','michichin'),
(2221,'puerta','s- pungu','pungu'),
(2222,'puesta del sol','s- indi chingai','indi chingai'),
(2223,'pulga','s- piki','piki'),
(2224,'pulgar del pie','chaki mama didu','chaki mama didu'),
(2225,'pulgar','s- mama didu','mama didu'),
(2226,'pulido','adj llambu -, volverse v.i. llambuiai','llambu- llambuiai'),
(2227,'pulir','v.t. lambiai- llambiai- llambuiachii- ruÃ±ii-druÃ±ii','lambiai- llambiai- llambuiachii- ruÃ±ii-druÃ±ii'),
(2228,'pulmÃ³n','s- iura sungu','iura sungu'),
(2229,'puntapies','dar v.t. aitai','aitai(dar puntapies)'),
(2230,'puÃ±etazos','asnachii-  libachii-  makai- puÃ±itiai- warakiai','asnachii-  libachii-  makai- puÃ±itiai- warakiai'),
(2231,'dar puÃ±etazos','asnachii-  libachii-  makai- puÃ±itiai- warakiai','asnachii-  libachii-  makai- puÃ±itiai- warakiai'),
(2232,'puÃ±o','s- puÃ±iti','puÃ±iti'),
(2233,'punzar','v.t. tugsii','tugsii'),
(2234,'pupila del ojo','s- Ã±awi muru','Ã±awi muru'),
(2235,'purga','dar v.t. kichachii','kichachii'),
(2236,'pÃºrpura','adj pichi','pichi'),
(2237,'pus','awadija','awadija'),
(2238,'que','rel ima intens tilla- tinlla','ima- tilla- tinlla'),
(2239,'quÃ©','nterj Ima interrog imatak -, con imawantak - manera, de imasatak -, para imapatak -, por imapatak, imawantak','Ima- imatak'),
(2240,'con quÃ©','imawantak','imawantak'),
(2241,'de que manera','imasatak','imasatak'),
(2242,'para quÃ©','imapatak','imapatak'),
(2243,'quebrado','p.p. pakiska','pakiska'),
(2244,'quebrar','v.t. pakii -, hacer chigtachii- pakichii','pakii - chigtachii- pakichii'),
(2245,'quebrarse','v.r. pakirii','pakirii'),
(2246,'quedar','v.i. kidai -, hacer v.t. kidachii - en la casa para cuidarla, hacer shanachii - poco, hacer asllaiachii','kidai- kidachii- shan achii- asllaiachii'),
(2247,'quedarse','v.r. kidarii','kidarii'),
(2248,'quejarse','v.i. uchinai- uchnai - (en el momento) v.r. uchinarii-uchnarii - a causa de una pesadilla musparii','uchinai- uchnai - uchinarii(en el momento)-uchnarii(en el momento)- musparii'),
(2249,'quemado','p.p. rupaska','rupaska'),
(2250,'quemar','v.t. rupachii','rupachii'),
(2251,'quemarse','v.i. rupai','rupai'),
(2252,'querer','v.t. munai- kuiai - decir niraiai -, hacer munachii','munai- kuiai -niraiai- munachii'),
(2253,'quererse','v.r. munarii','munarii'),
(2254,'querido','p.p kuiaska- munaska','kuiaska- munaska'),
(2255,'quien','rel pi','pi'),
(2256,'quiÃ©n','interrog pitak','pitak'),
(2257,'quienquiera','pron pipas','pipas'),
(2258,'quieto','adj kasilla -, estar v.i. saiakui- saianakui -, quedarse kasillaiai \n-, hacer que se quede v.t. sinchiachii','kasilla - saiakui- saianakui - kasillaiai- sinchiachii'),
(2259,'quijada','s- kumbamba','kumbamba'),
(2260,'quinientos','adj pichka pasag- patsa-patsag','pichka pasag- patsa-patsag'),
(2261,'quitar','v.t. anchuchii- kichui - lo mojado con una rama shibachii - las primeras hojas jabakai- jibikai - la gana (a alguien) amichii - para uno mismo v.r. kichurii','anchuchii- kichui -shibachii- jabakai- jibikai - amichii - kichurii'),
(2262,'quitarse','se anchurii, lluspichirii - la ropa llatanarii - (algo) v.t. anchui v.r. anchuchirii','anchurii- lluspichirii-llatanarii(quitarse la ropa)- anchui(algo) -anchuchirii(algo)'),
(2263,'rabia','con adv winjadu','winjadu'),
(2264,'rabiar','v.i. rabiai','rabiai'),
(2265,'rabo','s- chupa','chupa'),
(2266,'racimo','s- waiunga','waiunga(De plÃ¡tano)'),
(2267,'racionar','v.t. rasiunai','rasiunai'),
(2268,'raÃ­z','raices s- angu -, formarse v.i. angiai -, formar v.t. angiachii','angu- angiachii'),
(2269,'raices','angu- angiai- angiachii','angu- angiai- angiachii'),
(2270,'rajado','p.p. chigtaska -, un s chigta','chigtaska -chigta'),
(2271,'rajar','v.t. chigtai -, hacer chigtachii','chigtai- chigtachii'),
(2272,'rajarse','v.r. chigtarii','chigtarii'),
(2273,'ralearse','llegar a v.i. likaiai','likaiai'),
(2274,'ralo','adv iali- ialli- llalli - (tejido) p.p. simbaska -, muy adj lika','iali- ialli- llalli- simbaska(tejido)-lika(muy ralo)'),
(2275,'rallar','v.t. jujui -, hacer jujuchii','jujui - jujuchii'),
(2276,'rama','s- malki','malki'),
(2277,'ramas','cortar v.t. susuchii','susuchii'),
(2278,'ramo bendito','s- bindisaska-bindisiska ramus','bindisaska-bindisiska ramus'),
(2279,'ranchito','s- tambu','tambu'),
(2280,'rancho','s- tambu','tambu'),
(2281,'construir un rancho','v.i. tambui','tambui'),
(2282,'rÃ¡pidamente','adv utka- waira waira- wairalla','utka- waira waira- wairalla'),
(2283,'raposa','s- chucha','chucha'),
(2284,'rara vez','adv dipanda','dipanda'),
(2285,'rascarse','v.r. aspirii - un animal con las patas kitararii -, hacer v.t. sigsichii','aspirii - kitararii - sigsichii'),
(2286,'rasgarse','v.r. llikirii','llikirii'),
(2287,'raspar','(con las uÃ±as) v.t. aspii -, hacer aspichii','aspii(con las uÃ±as) - aspichii'),
(2288,'rasquiÃ±a','sentir mucha v.i. sigsii -, -(en el momento) v.r. sigsirii','sigsii- sigsirii'),
(2289,'rastrojo','s- watsiban','watsiban'),
(2290,'rata','s- ukucha','ukucha'),
(2291,'ratero','adj aisangiru- mishu- sisai','aisangiru- mishu- sisai'),
(2292,'ratÃ³n','s- ukucha','ukucha'),
(2293,'realidad','en adv sutipa','sutipa'),
(2294,'rebaladizo','volverse v.i. lluchkaiai','lluchkaiai'),
(2295,'rebalsar','v.i. shamaiai- v.r. awaiarii','shamaiai- awaiarii'),
(2296,'rebalsarse','v.i. shamaiai- v.r. awaiarii','shamaiai- awaiarii'),
(2297,'rebelde','volverse v.r. ainirii','ainirii'),
(2298,'rebozo','s- baita','baita'),
(2299,'rebullir','v.t. kuiuchii','kuiuchii'),
(2300,'rebuscarse','v.r. maskarii','maskarii'),
(2301,'recaÃ­da','s- rikaida','rikaida'),
(2302,'recargado','p.p. kipiska','kipiska'),
(2303,'recibir','v.t. chaskii - (en la ruana, en el rebozo) migllai - en la casa wasima kaiai - noticias iachai -, hacer chaskichii -, permitir rikuchii - un corte v.r. nanachirii -, permitirse rikuchirii','chaskii - migllai- wasima kaiai- iachai -chaskichii - rikuchii -nanachirii - rikuchirii'),
(2304,'reciÃ©n hecho','adj llullu','llullu'),
(2305,'recillo','s- kunchu','kunchu'),
(2306,'recoger','v.t. mirachii- pallai- tandachii - leÃ±a v.i. iamtai ','mirachii- pallai- tandachii - iamtai '),
(2307,'recogerse','(la ropa) v.r. aisarii','aisarii'),
(2308,'recolectar','v.t. mirachii- tandachii','mirachii- tandachii'),
(2309,'reconvaleciente','adv aska','aska'),
(2310,'reconvalecerse','v.i. askaiai -, hacer v.t. askaiachii','askaiai -askaiachii'),
(2311,'recordar','v.r. iuiarii -, hacer v.t. iachii- iuiachii -, hacerse v.r. iachirii- iuiachirii','iuiarii- iachii- iuiachii- iachirii- iuiachirii'),
(2312,'recortar','v.t. kuruiachii- murui- umutiachii- umutuiachii','kuruiachii- murui- umutiachii- umutuiachii'),
(2313,'recto','adv recto','recto'),
(2314,'rechazar','v.t wabutii','wabutii'),
(2315,'red grande','s- lika','lika'),
(2316,'redondear','v.t. muruiachii','muruiachii'),
(2317,'redondearse','v.i. muruiai','muruiai'),
(2318,'redondo','adj muru','muru'),
(2319,'reducido','p.p. uchullaiaska','uchullaiaska'),
(2320,'reducir','v.t. uchullaiachii - el volumen muruiachii','uchullaiachii - muruiachii'),
(2321,'reducirse','v.i. uchullaiai','uchullaiai'),
(2322,'reflexionar','v.r. iachirii- iuiachirii','iachirii- iuiachirii'),
(2323,'reforzar','v.t. sikinchachii','sikinchachii'),
(2324,'regalar','v.t. iukachii- karai- limusnai','iukachii- karai- limusnai'),
(2325,'regalarse','v.r. iukachirii- iukarii','iukachirii- iukarii'),
(2326,'regaÃ±ar','v.t. piÃ±ai ','piÃ±ai '),
(2327,'regar','v.t. ichachii, ichai \n- (poco a poco) tallichii ','v.t. ichachii, ichai \n- (poco a poco) tallichii '),
(2328,'regarse','v.r. icharii','icharii'),
(2329,'regiÃ³n','s- llagta','llagta'),
(2330,'regresar','v.i. kutii-  tigrai -, hacer v.t. tigrachii','kutii-  tigrai - tigrachii'),
(2331,'reÃ­rse','v.r. asirii - (de alguien) v.t. asii -, hacer asichii','asirii-  asii - asichii'),
(2332,'rejo','s- asuti- tuglla -, dar v.t. asutii','asuti- tuglla- asutii'),
(2333,'rejuntar','v.t. mirachii-  mirai-  tandachii','mirachii-  mirai-  tandachii'),
(2334,'rejuntarse','v.r. mirarii','mirarii'),
(2335,'rejuvenecerse','v.i. musuiai','musuiai'),
(2336,'relÃ¡mpago','s- rilampa','rilampa'),
(2337,'relampaguear','v.i. rilampai','rilampai'),
(2338,'relatar','v.t. willai','willai'),
(2339,'rellena','s- murkilla','murkilla'),
(2340,'remedar','v.t. asipaiai- v.r. asipaiarii','asipaiai- asipaiarii'),
(2341,'remedio','s- ambi - dar v.t. ambi karai','ambi -ambi karai'),
(2342,'remedÃ³n','s- asipaiangichu','asipaiangichu'),
(2343,'remendar','v.t. sirai','sirai'),
(2344,'remojarse','v.r. wabajarii- wabajurii -, dejar v.t. wabajai- wabajui','wabajarii- wabajurii - wabajai- wabajui'),
(2345,'renegar','v.r. ainichirii - (contra sÃ­ mismo) kamirii','ainichirii - kamirii'),
(2346,'renegÃ³n','s- ainichig- ainichiridur- ainidur- ainirig- ainiringichu','ainichig- ainichiridur- ainidur- ainirig- ainiringichu'),
(2347,'renovar','v.t. musuiachii','musuiachii'),
(2348,'renovarse','v.t. musuiachii','musuiachii'),
(2349,'repartir','v.t. chaugpii','chaugpii'),
(2350,'repartirse','bandarii- rasiunarii','bandarii- rasiunarii'),
(2351,'repelar','v.t. muntun sitai','muntun sitai'),
(2352,'repente','de adv diulpi- mana sintiglla','diulpi- mana sintiglla'),
(2353,'repercuta','hacer que v.t. ainichii',' ainichii'),
(2354,'repetir','v.i. pariiai- parisiai','pariiai- parisiai'),
(2355,'reponerse','v.i. askaiai','askaiai'),
(2356,'reprender','v.t. piÃ±aspa iuiachii','piÃ±aspa iuiachii'),
(2357,'represa','s- iaku jundai','iaku jundai'),
(2358,'repugnante','adj millai- millanga- millangasina','millai- millanga- millangasina'),
(2359,'repugnar','v.t. millachii','millachii'),
(2360,'resbaladizo','adj lluchka -, hacer que algo se vuelva v.t. lluchkaiachii','lluchka- lluchkaiachii'),
(2361,'resbalarse','v.i. lluspii- v.r. lluchkarii- lluspirii -, hacer v.t. lluspichii','lluspii- lluchkarii- lluspirii -lluspichii'),
(2362,'resembrar','v.t. tajuashinsai- tajuashinshai- washinshai','tajuashinsai- tajuashinshai- washinshai'),
(2363,'residuo','s- puchu','puchu'),
(2364,'resinoso','adj wikiiug','wikiiug'),
(2365,'respetarse mutuamente','v.r. rispitarii','rispitarii'),
(2366,'respeto','tÃ©rminos de s- mama-  taita','mama-  taita'),
(2367,'respiraciÃ³n','s- samai -, que le falta adj samai arkari','samai - samai arkari'),
(2368,'respirar','v.i. samai kachai - muy fuerte v.r. pujarii','samai kachai - v.r. pujarii'),
(2369,'responder','v.t. ainii - con insultos kamii -(se) v.r. ainirii','ainii- kamii - ainirii'),
(2370,'respondÃ³n','s- ainichig- ainichiridur- ainidur-  ainirig- ainiringichu','ainichig- ainichiridur- ainidur-  ainirig- ainiringichu'),
(2371,'responsabilizar','v.t. karguchii','karguchii'),
(2372,'respuestas','darse v.r. ainichirii','ainichirii'),
(2373,'restante','s- puchu','puchu'),
(2374,'restaurar','v.t. kutichii','kutichii'),
(2375,'resto','(de la chicha) s kunchu - (de la comida) del dragÃ³n kuku puchu- puchuchiska -, dejar algÃºn v.t. puchuchii','kunchu - kuku puchu- puchuchiska -puchuchii'),
(2376,'restos','puchu','puchu'),
(2377,'resucitar','v.t. kaugsachii- v.r. kaugsarii','kaugsachii- kaugsarii'),
(2378,'resultar','v.i. tukui','tukui'),
(2379,'retirar','v.t. anchuchii','anchuchii'),
(2380,'retirarse','v.i. karuiai- v.r. almarii- anchurii','karuiai- almarii- anchurii'),
(2381,'retoÃ±o','s- malki','malki'),
(2382,'retorcer','(cabuya, hilo) v.t. kaugchui - (hilo) kaugpui - y desigualar (ej. una cuerda) mulluiachii -, hacer kaugchuchii, kaugpuchii','kaugchui - kaugpui -mulluiachii - kaugchuchii, kaugpuchii'),
(2383,'retorcerse','v.i. mulluiai- v.r. kaugchurii- kaugpurii','mulluiai- kaugchurii- kaugpurii'),
(2384,'retorcido','adj kaugchuri- mullu- p.p. mulluiaska -kaugchuska','kaugchuri- mullu- mulluiaska -kaugchuska'),
(2385,'retrasado',' v.i. katiai','katiai'),
(2386,'quedarse',' v.i. katiai','katiai'),
(2387,'retroceder','v.r. kutirii- tigrarii','kutirii- tigrarii'),
(2388,'reunidos','p.p. tandariskakuna','tandariskakuna'),
(2389,'reunir','v.t. tandachii','tandachii'),
(2390,'reunirse','v.r. tandarii','tandarii'),
(2391,'revenirse','v.i. mukuiai','mukuiai'),
(2392,'reventar','v.t. tugiachii- v.i. tugiai','tugiachii- tugiai'),
(2393,'reventarse','v.r. tugiarii - v.i. chigtaiai','tugiarii -chigtaiai'),
(2394,'reverdecer','v.t. pangaiachii','pangaiachii'),
(2395,'reverdecerse','v.i. pangaiai','pangaiai'),
(2396,'revÃ©s','al p.p. trukadu','trukadu'),
(2397,'revivir','v.t. kaugsachii','kaugsachii'),
(2398,'revivirse','v.r. kaugsarii','kaugsarii'),
(2399,'revolcarse','v.r. aitarii','aitarii'),
(2400,'ribera','a la otra adv chimba','chimba'),
(2401,'ricachÃ³n','adj, s- iukaiug','iukaiug'),
(2402,'rico','adj iukag- iukari','iukag- iukari'),
(2403,'riegos','hacer v.i. wasi chiriachii',' wasi chiriachii'),
(2404,'rÃ­e','que por todo se adj asisapa','sisapa'),
(2405,'riesgo','s- risku','risku'),
(2406,'rincÃ³n','s- kuchu','kuchu'),
(2407,'rÃ­o','s- iaku - abajo adv urai','iaku - urai'),
(2408,'risa','de adv asii','asii'),
(2409,'risueÃ±o','adj asisapa -, un poco adj pingari','asisapa - pingari'),
(2410,'robar','v.t. aisai- sisai- juai','aisai- sisai- juai'),
(2411,'robarse','v.r. sisarii','sisarii'),
(2412,'robusto','adj wira','wira'),
(2413,'rociar','v.t. shabimachii- v.i. shabimai','shabimachii- shabimai'),
(2414,'rocÃ­o de lluvia ','s- shabima- sirinu tamia','shabima- sirinu tamia'),
(2415,'rodar','hacer v.t. tunichii - (una bola) kalparii','tunichii- kalparii'),
(2416,'rodarse','v.r. tunirii','tunirii'),
(2417,'rodear','v.t. muiuchii','muiuchii'),
(2418,'rodilla','s- kungur','kungur'),
(2419,'roer','v.t. kachkai','kachkai'),
(2420,'rogar','v.t. ruai- rugai \n','ruai- rugai \n'),
(2421,'rojo','adj pichi- puka','pichi- puka'),
(2422,'romper','v.t. llikii - pakii - (en pedazos) llikichii -, hacer llikichii, pakichii','llikii -pakii - llikichii - llikichii- pakichii'),
(2423,'romperse','v.r. llikirii','llikirii'),
(2424,'rondador','s- rundadur','rundadur'),
(2425,'ropa','s- churaridiru- katanga- pacha - interior tambu','churaridiru- katanga- pacha - tambu'),
(2426,'rosca','s- tasin','tasin'),
(2427,'roto','p.p. pakiska -  adj lliki -, llegar a estar v.r. jutkurii- utkurii, llikirii','pakiska- liki - jutkurii- utkurii- llikirii'),
(2428,'rozar','v.t. sukalai','sukalai'),
(2429,'rugoso','volverse v.i. sagraiai- sargaiai','sagraiai- sargaiai'),
(2430,'ruido','s- uiari -, hacer mucho v.t. killachii ','uiari - killachii'),
(2431,'ruta','s- Ã±ambi','Ã±ambi'),
(2432,'sabe','que adj rigsi - (curar), quien s iacha','rigsi - iacha'),
(2433,'saber','v.t. iachai - agradablemente v.i. miskii','iachai - miskii'),
(2434,'sabio','p.p. ajustadu','ajustadu'),
(2435,'sabor','s- mikuri - desagradable, de adj in in i- shin - que hace reaccionar ishtata- ishtita','mikuri - in in i- shin - ishtata- ishtita'),
(2436,'saborear','v.r. mikurii','mikurii'),
(2437,'sabroso','adj miski -, sabroso v.i. miskii -, volverse miskiai -, Que interj Achalai-Chalai','miski - miskii - miskiai - Achalai-Chalai'),
(2438,'sacar','v.t. llugsichii, surkui - agua de una olla y taparla para que el contenido se seque washjai - con los dientes kachkai - el afrecho (de un lÃ­quido) kunchui - (lÃ­quido) (ej. con una totuma) wisii -, hacer surkuchii, wisichii - con los dientes v.i. pilisai v','llugsichii-surkui '),
(2439,'sacarse','pilarii- surkurii','pilarii- surkurii'),
(2440,'saciarse','v.i. sagsai -, hasta adv sagsagta -, hacer v.t. sagsachii','sagsai - sagsagta - sagsachii'),
(2441,'sacudir','chabsii- chausii- chabsichii-chausichii- kuiuchii\n','chabsii- chausii- chabsichii-chausichii- kuiuchii\n'),
(2442,'sacudirse','v.r. chabsirii- chausirii','chabsirii- chausirii'),
(2443,'sahumar','v.t. mishachii -, hacerse v.r. mishachirii','mishachii - mishachirii'),
(2444,'saÃ­no','s- sainu','sainu'),
(2445,'sal','s- kachi -, falta de adj kachi pisi -, tener poca v.i. samsamiai -, preparar con poca v.t. samsamiachii -, expresiÃ³n para referirse a alguna comida que le falta interj Samsam','kachi'),
(2446,'salarse','llegar a v.i. kachiai','kachiai'),
(2447,'salir','v.i. llugsii -, disponerse a v.r. llugsirii - a presiÃ³n (un lÃ­quido) chiplarii - un arroyo tugiarii, wakarii -, hacer v.t. llugsichii','llugsii - llugsirii - chiplarii -tugiarii- wakarii -llugsichii'),
(2448,'saliva','s- tuka','tuka'),
(2449,'salÃ³n','s- uku - de clase iachaikudiru uku','uku'),
(2450,'salpicar','v.t. tibunsai - (a alguien) tibunsachii','tibunsai - tibunsachii'),
(2451,'salpicarse','v.r. tibunsarii','tibunsarii'),
(2452,'saltar','v.i. pawai- saltai -, ponerse a v.r. pawarii- saltarii','pawai- saltai -pawarii- saltarii'),
(2453,'Salud','interj Upiai- Upiasu','Upiai- Upiasu'),
(2454,'salvaje','adj auka- augka','auka- augka'),
(2455,'salvar','v.t. kispichii','kispichii'),
(2456,'salvarse','v.r. kispichirii- kispirii','kispichirii- kispirii'),
(2457,'sanar','v.i. aliai- alliai -, hacer v.t. aliachii- alliachii- ambichi','aliai- alliai -aliachii- alliachii- ambichi'),
(2458,'sanarse','v.r. ambirii -se al volver la carne v.i. aichaiai','ambirii - aichaiai'),
(2459,'sancochado','p.p. apiaska','apiaska'),
(2460,'sancochar','v.i. apiai','apiai'),
(2461,'sangre','s- iawar','iawar'),
(2462,'satisfacer','v.t. sagsachii','sagsachii'),
(2463,'satisfecho','p.p. sagsaska','sagsaska'),
(2464,'savia de Ã¡rbol','s- kaspimanda wiki','kaspimanda wiki'),
(2465,'secar','v.t. chakichii- chakii- tustachii- v.i. tustai','chakichii- chakii- tustachii-tustai'),
(2466,'secarse','v.r. chakirii- tustarii','chakirii- tustarii'),
(2467,'seco','adj tusta- p.p. chakiska- tustaska','tusta- chakiska- tustaska'),
(2468,'secretamente','adv pakalla','pakalla'),
(2469,'sed','s- iakunaiai- iakunai -, tener v.impers. Iakunaiai- iakunai','iakunaiai- iakunai - Iakunaiai-iakunai'),
(2470,'seguida','en adv suiumanda','suiumanda'),
(2471,'seguir','v.t. katiraiai - (juntos) katii - (a cierta distancia) katichii - delante de Ã±ugpai - amontonado tulai - en fila (en el agua) v.i. chutai - (haciendo) aux infinitivo mÃ¡s apai','katiraiai '),
(2472,'segunda vez','adv parisma','parisma'),
(2473,'seis','adj sugta','sugta'),
(2474,'seis meses','tirsiu','tirsiu'),
(2475,'seiscientos','adj sugta pasag- patsa- patsag','sugta pasag- patsa- patsag'),
(2476,'seleccionar','v.t. agllai -, hacer agllachii','agllai -  agllachii'),
(2477,'seleccionarse','v.r. agllarii','agllarii'),
(2478,'sembrado','estar v.i. tarpuraiai','tarpuraiai'),
(2479,'sembrar','v.t. tarpui -, hacer tarpuchii -, volver a tajuashinsai- tajuashinshai- washinshai','tarpui - tarpuchii - tajuashinsai- tajuashinshai- washinshai'),
(2480,'sembrarse','v.r. tarpurii','tarpurii'),
(2481,'semejante','s- rigcha','rigcha'),
(2482,'sementera','s chagra - enmontada watsiban','chagra - watsiban'),
(2483,'semilla','s- muiu','muiu'),
(2484,'semillas','adv muiundi','muiundi'),
(2485,'senda','s- Ã±ambi',' Ã±ambi'),
(2486,'seno','dar el v.t. chuchuchii','chuchuchii'),
(2487,'sentado','v.i tiakui-tianakui','tiakui-tianakui'),
(2488,'sentido','adj iuiachi','iuiachi'),
(2489,'sentir','v.t. iachii - bien alli iuiachii- alliachii  -, hacerse iachirii- iuiachirii -, hacerse bien alli iuiachirii -, sin adv kungailla','iachii '),
(2490,'sentirse','(triste) v.r. llakirii- sintirii','llakirii- sintirii'),
(2491,'seÃ±alar','v.t. kawachii- tupui','kawachii- tupui'),
(2492,'seÃ±orita','s- sipas','sipas'),
(2493,'separar','v.t. anchuchii- pitii','anchuchii- pitii'),
(2494,'separarse','anchui','anchui'),
(2495,'sepultar','v.t. pambai','pambai'),
(2496,'ser','v.i. kai -, llegar a tukui','kai - tukui'),
(2497,'serpiente','s- amarun','amarun'),
(2498,'servir','v.t. mikuchii - algo picante aiai','mikuchii - aiai'),
(2499,'servirse','(algo) amullii - v.r. kuidarii - ajÃ­ o picante aiarii - (la parte que le corresponde) rasiunarii','amullii -  kuidarii'),
(2500,'sesenta','adj sugta chunga','sugta chunga'),
(2501,'seso','s- tutaÃ±u','tutaÃ±u'),
(2502,'setecientos','adj kanchis pasag- patsa- patsag','kanchis pasag- patsa- patsag'),
(2503,'setenta','adj kanchis chunga','kanchis chunga'),
(2504,'sexual','v.t. iumachii','iumachii'),
(2505,'siete','adj kanchis','kanchis'),
(2506,'significar','v.t. niraiai','niraiai'),
(2507,'siguiente','adv kati','kati'),
(2508,'silbando','adv chipluwa','chipluwa'),
(2509,'silbar','v.i. chiplai','chiplai'),
(2510,'silbidos','adv chipluwa','chipluwa'),
(2511,'silenciosamente','adj, adv upalla','upalla'),
(2512,'silenciosa','adj, adv upalla','upalla'),
(2513,'simpÃ¡tico','adj suma/shuma','suma- shuma'),
(2514,'sin embargo','adv mana kagpipas-kag, chasa kagpipas','mana kagpipas-kag- chasa kagpipas'),
(2515,'sinuosidad','s- kingu','kingu'),
(2516,'sirena','s- iaku waira','iaku waira'),
(2517,'sobar','v.t. kakuchii -, hacer kakuchichii','kakuchii - kakuchichii'),
(2518,'sobra','p.p. puchuska','puchuska'),
(2519,'sobrado','s- puchui p.p. puchuska','puchui - puchuska'),
(2520,'sobrar','v.t. puchui -, hacer puchuchii','puchui - puchuchii'),
(2521,'sobras','s- puchu','puchu'),
(2522,'sobre','adv awapi','awapi'),
(2523,'sobrecarga','s-kipi','kipi'),
(2524,'sobrecargarse','v.r. kipirii','vkipirii'),
(2525,'sobrecargado','p.p. kipiska','kipiska'),
(2526,'sobremontar','v.r. alankarii','alankarii'),
(2527,'sobresalir','v.t. binsii','binsii'),
(2528,'sobresaltos','dar v.r. pawarii- saltarii ','pawarii- saltarii '),
(2529,'sol','s- indi','indi'),
(2530,'solamente aquÃ­','adv kaillapi - asÃ­ chasalla - uno adj chulla- chunlla','kaillapi - chasalla --chulla- chunlla'),
(2531,'soleado','adj indiri -, hacer v.i. indii','indiri -  indii'),
(2532,'soledad','s- chankual- chankuan\n','s- chankual- chankuan\n'),
(2533,'sÃ³lido','adj muruchu','muruchu'),
(2534,'solitario','adj sapalla- wagchintu','sapalla- wagchintu'),
(2535,'solamente Ã©ste','pron kailla','kailla'),
(2536,'solamente uno','adj suglla','suglla'),
(2537,'solo','adj sapalla - uno mismo kikinlla','sapalla - kikinlla'),
(2538,'soltar','v.t. kacharii','kacharii'),
(2539,'soltura','s- kicha -, hacer que tenga v.t. kichachii','kicha - kichachii'),
(2540,'sombra','hacer v.t. tutaiachii','tutaiachii'),
(2541,'sombrero','s- chuta - redondo tanda sumbriru','chuta - tanda sumbriru'),
(2542,'sonido claro','s- uiari','uiari'),
(2543,'sonreÃ­r','v.r. asirii','asirii'),
(2544,'sonriente','adj asiri- pingari','asiri- pingari'),
(2545,'soÃ±ar','v.i. muskui -, hacer v.t. muskuchii -, ponerse a v.r. muskurii','muskui - muskuchii - muskurii'),
(2546,'soÃ±oliento','adj puÃ±ui Ã±awi','puÃ±ui Ã±awi'),
(2547,'sopa','s- api','api'),
(2548,'soplar','v.t. pukui- abintai \n- con tabaco para que deje de llover \nusiachii \n-, hacer pukuchii\n- flechas (con bodoquera) v.i. flichai/flichiai \n- (el viento) wairai ','pukui- abintai'),
(2549,'soplarse','v.r. pukurii','pukurii'),
(2550,'soportado','p.p. awantadu','awantadu'),
(2551,'soportar','v.i. awantai','awantai'),
(2552,'sorbos','tomar a v.t. ubsii','tubsii'),
(2553,'sordo','adj mana uiag- upa rinri','mana uiag- upa rinri'),
(2554,'sorprender','v.t. shachii - (en el momento) v.r. shachirii ','shachii- shachirii'),
(2555,'sorprendido','v.r. tuntiarii','tuntiarii'),
(2556,'sostener','v.t. sinchiachii','sinchiachii'),
(2557,'su','pron poses kamba - (de Ã©l/ella) paipa - (de Uds.) kamkunapa - (de ellos/ellas) paikunapa','pron poses kamba - (de Ã©l/ella) paipa - (de Uds.) kamkunapa - (de ellos/ellas) paikunapa'),
(2558,'suave','adj apia','apia'),
(2559,'suavizarse','v.i. apiai','apiai'),
(2560,'subir','v.i. sikai - (a un carro) iaikui - (algo, a alguien) v.t. sikachii -, hacerse sikachirii','sikai -iaikui - sikachii - sikachirii'),
(2561,'subirse','v.r. sikarii','sikarii'),
(2562,'suceder','v.i. ialii- iallii- llallii- v.r. pasarii','ialii- iallii- llallii- pasarii'),
(2563,'suciedad','s- isma- kaka','isma- kaka'),
(2564,'sucio','adj mapa','mapa'),
(2565,'sudar','v.i. jumbii -, hacer v.t. jumbichii -, llegar a v.r. jumbirii','jumbii -jumbichii -jumbirii'),
(2566,'sudor','s- jumbi','jumbi'),
(2567,'sudoroso','adv jumbi jumbi','jumbi jumbi'),
(2568,'suelo','s- alpa \n- adentro uku ','alpa- uku '),
(2569,'sueÃ±o','s- muskui- puÃ±ui -, tener v.impers. puÃ±unaiai','muskui- puÃ±ui - puÃ±unaiai'),
(2570,'suerte','adj alli wasa','alli wasa'),
(2571,'sufrimiento','s- mana alli pasai- pasai','mana alli pasai- pasai'),
(2572,'sufrir','v.i. mana alli pasai, pasai','mana alli pasai- pasai'),
(2573,'sumamente','intens askurinti, pinu','askurinti- pinu'),
(2574,'surco','s- wachu','wachu'),
(2575,'suspirar','v.impers. Jipui- sungu aisachii- sungu aisai','Jipui- sungu aisachii- sungu aisai'),
(2576,'suyo','de Ud.) pron poses kamba - (de Ã©l/ella) paipa de Ud.) pron poses kamba \n- (de Ã©l/ella) paipa\n','(de Usted)kamba - (de Ã©l/ella) paipa de Ud.) pron poses kamba \n- (de Ã©l/ella) paipa\n'),
(2577,'tacaÃ±a','persona interj kulis printi- kulis wangu- minguadu- uma nana- uma wangu- tsitsi- tsitsi wangu','kulis printi- kulis wangu- minguadu- uma nana- uma wangu- tsitsi- tsitsi wangu'),
(2578,'tajada','s- chigta','chigta'),
(2579,'taladrar','v.t. jutkuchii- utkuchii','jutkuchii- utkuchii'),
(2580,'tambalearse','v.r. riririi ','riririi '),
(2581,'tangÃ¡n','s- juatish- kuatisha- wachisha-washisha','juatish- kuatisha- wachisha-washisha'),
(2582,'tantear','v.t. tantiai','tantiai'),
(2583,'tanto','adv tuku','tuku'),
(2584,'tapado','v.i. kataraiai','kataraiai'),
(2585,'tapar','v.t. katachii- kilpai','katachii- kilpai'),
(2586,'taparse','v.r. katarii- kilparii','katarii- kilparii'),
(2587,'tardar','v.t. chisiachii- v.i. chisiai','chisiachii- chisiai'),
(2588,'tarde','la s- chisi','chisi'),
(2589,'tarea','s- wachu','wachu'),
(2590,'tauso','s- purupuru','purupuru'),
(2591,'taza','s- kuashag- kuazag- mati- wisinga','kuashag- kuazag- mati- wisinga'),
(2592,'techar','v.i. tambui','tambui'),
(2593,'tejer','v.t. awai- simbai','awai- simbai'),
(2594,'tejido','p.p. awaska','awaska'),
(2595,'temblar','v.i. chugchui','chugchui'),
(2596,'temblor','s- alpa chugchurii- alpa kuiurii','alpa chugchurii- alpa kuiurii'),
(2597,'temeroso','adj manchaiug','manchaiug'),
(2598,'temerosa','adj manchaiug','manchaiug'),
(2599,'templado','adj lipia ','lipia '),
(2600,'tender','v.t. mandai','mandai'),
(2601,'tenderse','v.r. mandarii - hacer un esfuerzo para mandachirii','mandarii-mandachirii'),
(2602,'tendÃ³n','s- angu','angu'),
(2603,'tener','v.t. iukai - (en la mano) charii -, hacer charichii','iukai -charii - charichii'),
(2604,'Tenga','interj chikÃ¡','chikÃ¡'),
(2605,'tenido','v.i. chariraiai','chariraiai'),
(2606,'teÃ±ir','v.t. tiÃ±ii','tiÃ±ii'),
(2607,'tercero','adv kimsama','kimsama'),
(2608,'terco','adv shabuju- shabujui','shabuju- shabujui'),
(2609,'terminaciÃ³n','s- puchukai','puchukai'),
(2610,'terminar','v.t. puchukai- tukuchii - (un trabajo) piliai - de tomar kunchui - las discordias palabra puchukai','puchukai- tukuchii- piliai -kunchui -puchukai'),
(2611,'terminarse','puchukarii- tukurii-puchukarii- uiansarii',NULL),
(2612,'terremoto','s- alpa builtiarii- alpa chapurii','alpa builtiarii- alpa chapurii'),
(2613,'testÃ­culos','s- kuruta','kuruta'),
(2614,'teta','s- chuchu','chuchu'),
(2615,'tibiar','v.t. kunuchii','kunuchii'),
(2616,'tibiarse','v.i. rupaiai','rupaiai'),
(2617,'tibio','adj kunu','kunu'),
(2618,'tiempo','adv rel imaurapas- imauras -, hacer v.i. luariai','imaurapas- imauras - luariai'),
(2619,'tierno','adj llullu -, todavÃ­a kikilla \n-, mazorca de maÃ­z s kiki\n-, hacer que algo se vuelva v.t. llulluiachii \n-, volverse v.i. llulluiai','llullu '),
(2620,'tierra','s- alpa','alpa'),
(2621,'tieso','v.i. tisuiai','tisuiai'),
(2622,'tiesto','s- kallana','kallana'),
(2623,'tifo','s- atun ungui','atun ungui'),
(2624,'tigrillo','s- sacha misitu- mishitu, misitu','sacha misitu- mishitu, misitu'),
(2625,'tÃ­mido','muy adj kui sungu- mancha siki','kui sungu- mancha siki'),
(2626,'tingazos','v.i. tingii','tingii'),
(2627,'tinieblas','s- tuta','tuta'),
(2628,'tirar','v.t. sitai -, hacer sitachii','sitai - sitachii'),
(2629,'tiritar','v.r. chugchurii','chugchurii'),
(2630,'tirÃ³n','s- rapiai -, dar v.i. rapiai','rapiai - rapiai'),
(2631,'tizar','v.t. tisai- tisachii','tisai- tisachii'),
(2632,'tobillo','s- chiuka- shibka','chiuka- shibka'),
(2633,'tocar','v.t. llamkai, tantiai, tupai, uiachii - (instrumento) tunai - ligeramente tingii - (violÃ­n para sÃ­ mismo) kakui - (violÃ­n para otras personas) kakuchii - flauta, hacer flaugtachii/laugtachii - guitarra v.i. kitarai','llamkai-  tantiai- tupai, uiachii - (instrumento) tunai - ligeramente tingii - (violÃ­n para sÃ­ mismo) kakui - (violÃ­n para otras personas) kakuchii - flauta- hacer flaugtachii/laugtachii - guitarra- kitarai'),
(2634,'tocarse','v.r. llamkarii- tantiarii- tuparii','llamkarii- tantiarii- tuparii'),
(2635,'todas partes','adv tukuinigmanda','tukuinigmanda'),
(2636,'todavÃ­a','adv chara- chaira- chira','chara- chaira- chira'),
(2637,'todo','adj tukui','tukui'),
(2638,'todos','adj tukui','tukui'),
(2639,'tomar','(lÃ­quido) v.t. upiai - a sorbos ubsii - rÃ¡pido pagchai -, hacer upiachii -, ponerse a v.r. upiarii - (en la mano) charirii - (en la falda) migllarii - una manojada, una puÃ±adita Ã±iburii - el seno (hablando a un nene) chuchurii - la palabra rimarii','(lÃ­quido) v.t. upiai - a sorbos ubsii - rÃ¡pido pagchai -, hacer upiachii -, ponerse a v.r. upiarii - (en la mano) charirii - (en la falda) migllarii - una manojada, una puÃ±adita Ã±iburii - el seno (hablando a un nene) chuchurii - la palabra rimarii'),
(2640,'Tome','interj Upiai','Upiai'),
(2641,'tonto','adj upa -, medio mana iuiaiiug -, hacerse v.i. tuntiadu tukui','upa - mana iuiaiiug - tuntiadu tukui'),
(2642,'topar','v.t. tupai - una cosa v.i. suirtiai','tupai - suirtiai'),
(2643,'toparse','v.r. tuparii','tuparii'),
(2644,'torcer','v.t. kaugpui- kiwii- puchk- wingiachii- wistuiachii','kaugpui- kiwii- puchk- wingiachii- wistuiachii'),
(2645,'torcerse','v.i. wingiai- wistuiai- v.r. kaugchurii, kaugpurii- kuiuririi','wingiai- wistuiai- kaugchurii- kaugpurii- kuiuririi'),
(2646,'torcido','adj wingu, wistu- p.p. kaugchuska - (dos o mÃ¡s hilos) kaugpuska','wingu- wistu- kaugchuska - kaugpuska'),
(2647,'tordo','s- chiwaku','chiwaku'),
(2648,'toro','s- wagra','wagra'),
(2649,'tos','s- ujui','ujui'),
(2650,'toser','v.i. ujui - hacer v.t. ujuchii -, ponerse a v.r. ujurii','ujui - ujuchii - ujurii'),
(2651,'tostado','adj kamcha-kancha - en un tiesto bushmi','kamcha-kancha - bushmi'),
(2652,'tostar','(granos) v.t. kamchai/kanchai - choclos desgranados en un tiesto bushmii','kamchai- kanchai -  bushmii'),
(2653,'tostarse','v.r. kamchari- kancharii','kamchari- kancharii'),
(2654,'totalmente','intens lim- limpi- limpu- lin- pinu','lim- limpi- limpu- lin- pinu'),
(2655,'totuma','s- kaiajuachidir- kuashag- kuazag- kuishag- kuizag- pilchi- wisinga','kaiajuachidir- kuashag- kuazag- kuishag- kuizag- pilchi- wisinga'),
(2656,'trabajar','v.t. trabajai - con una pala paliachii - sin cobrar dibichii -, hacer v.t. rurachii/ruachii, trabajachii \n- una sementera por fajas v.i. wachiai \n- algo (para uno mismo), hacer v.r.\nrurachirii/ ruachirii \n-, ponerse a trabajarii ','trabajai'),
(2657,'minga','s- mingai','mingai'),
(2658,'traer','v.t apamui- ialichimui- pusamui - augurio juajuachii- wajuachii -, hacer apachimui, pusachimui','apamui- ialichimui- pusamui - augurio juajuachii- wajuachii -apachimui- pusachimui'),
(2659,'trama','s- mini -, pasar la v.t. awai','mini - awai'),
(2660,'trampa','s- tuglla -, clase de tingi -, colocar v.t. tugllai -, hacer que ponga tugllachii -, enlazarse en una v.r. tugllarii','tuglla'),
(2661,'tranquila','adj, adv upalla','upalla'),
(2662,'tranquilamente','adj, adv upalla','upalla'),
(2663,'tranquilizar','v.t. kasillachii','kasillachii'),
(2664,'tranquilizarse','v.r. kasillarii','kasillarii'),
(2665,'tranquilo','adj kasilla p.p. kungaska -, quedarse v.i. kasillaiai -, sentir v.t. alli iuiachii','kasilla- kungaska - kasillaiai - alli iuiachii'),
(2666,'transparente','adj puncha','puncha'),
(2667,'trapo muy viejo','lamucha- lamuchi- llachapa','lamucha- lamuchi- llachapa'),
(2668,'trasboco','provocar el v.r. kibnarii/kimnarii','kibnarii-kimnarii'),
(2669,'trasero','s- siki','siki'),
(2670,'trasladar','v.t. ialichii- iallichii- llallichii','ialichii- iallichii- llallichii'),
(2671,'trasplantar','v.t. malkichii','malkichii'),
(2672,'trasquilado','p.p. rutuska','rutuska'),
(2673,'trasquilar','v.t. rutui','rutui'),
(2674,'trasquilarse','v.r. ruturii','ruturii'),
(2675,'trastrabillando','adv wingu wingu','wingu wingu'),
(2676,'trastrabillar','v.r. riririi','riririi'),
(2677,'tratamiento','s- ambii','ambii'),
(2678,'tratar','v.t. ambii','ambii'),
(2679,'treinta','adj kimsa chunga','kimsa chunga'),
(2680,'trenzar','v.t. simbai','simbai'),
(2681,'treparse','v.r. llukarii','llukarii'),
(2682,'tres','adj kimsa','kimsa'),
(2683,'trescientos','adj kimsa pasag- patsa- patsag','pasag- patsa- patsag'),
(2684,'triangular','de forma adj kitara','kitara'),
(2685,'tripas','s- chunchullu','chunchullu'),
(2686,'triste','adj irki -, estar v.i. irkiaska kai, llakii -, ponerse irkiai v.r. llakirii','irki - irkiaska kai- llakii - irkiai - llakirii'),
(2687,'tristeza','s- llakii','llakii'),
(2688,'triturado','p.p. apiachiska, pakichiska -, medio adv arus arus','apiachiska- pakichiska- arus arus'),
(2689,'triturar','v.t. apiachii- Ã±utuiachii ','apiachii- Ã±utuiachii '),
(2690,'triturarse','v.i. Ã±utuiai','Ã±utuiai'),
(2691,'trocados','v.t. chakachii','chakachii'),
(2692,'trocar','v.t. kambalachii- kambiai- trukai','kambalachii- kambiai- trukai'),
(2693,'trocha','s- Ã±ambi','Ã±ambi'),
(2694,'trocha','v.t. Ã±ambichii','Ã±ambichii'),
(2695,'trompa','s- puru singa','puru singa'),
(2696,'tronar','v.i. triwinai','triwinai'),
(2697,'tropezarse','v.r. Ã±itkarii- takarii','Ã±itkarii- takarii'),
(2698,'tropezÃ³n','s- takarii','takarii'),
(2699,'trucos','salamanga- salamangiai','salamanga- salamangiai'),
(2700,'trueno','s- triwinu','triwinu'),
(2701,'trueque','s- kambalachi','kambalachi'),
(2702,'truncado','adj puchu','puchu'),
(2703,'trunco','s- puchu','puchu'),
(2704,'tÃº','pron kam','kam'),
(2705,'tu','pron poses kamba','kamba'),
(2706,'tubÃ©rculo','s- achira','achira'),
(2707,'tucÃ¡n','s- pikudu','pikudu'),
(2708,'tuerto','adj chingual- chubiku','chingual- chubiku'),
(2709,'tuÃ©tano','s- tutaÃ±o','tutaÃ±o'),
(2710,'tumbar','v.t. urmachii','urmachii'),
(2711,'tumor','s- chupu -, formarse un v.i. chupuiai','chupu - chupuiai'),
(2712,'turbarse','v.i. irkiai','irkiai'),
(2713,'tuyo','pron poses kamba','kamba'),
(2714,'uchuva','s- ubillas','ubillas'),
(2715,'Ãºltimo','adj, adv katimanda -, al adv katigma/katima -, del kati','katimanda - katigma- katima- kati'),
(2716,'Ãºnico','adj chulla- chunlla','chulla- chunlla'),
(2717,'uniforme','adv pariju','pariju'),
(2718,'unir','v.t. llutai - (dos o mÃ¡s hilos) kaugpui -, (hacer) kaugpuchii- llutachii','llutai -kaugpui - kaugpuchii- llutachii'),
(2719,'unirse','v.r. piarii- pigarii - (dos o mÃ¡s hilos) kaugpurii - katirii -se con otro llutarii -se sexualmente v.i. iumai','piarii- pigarii - kaugpurii - katirii- llutarii - iumai'),
(2720,'uno','adj sug - mismo kikin -, solamente chulla/chunlla - solo suglla - sobre otro adv kati kati - tras otro suiulla/suiuglla','sug-  kikin - chulla- chunlla - suglla -kati kati -suiulla- suiuglla'),
(2721,'untado','p.p. awiska','awiska'),
(2722,'untar','v.t. awii \n-, hacer awichii -, dejar (uno mismo) awichirii','awii- awichii- awichirii'),
(2723,'untarse','v.r. awirii','awirii'),
(2724,'uÃ±a','s- sillu','sillu'),
(2725,'urdido','adj awilli','awilli'),
(2726,'urdir','v.t. awillii','awillii'),
(2727,'usado','un poco adj mauka- p.p. maukaiaska -, volverse v.i. maukaiai','mauka- maukaiaska - maukaiai'),
(2728,'usar','medio v.t. maukaiachii','maukaiachii'),
(2729,'usted','pron kam -, de kamba','kam-  kamba'),
(2730,'Ãºtero','s- wawa mama','wawa mama'),
(2731,'vaca','s- wagra','wagra'),
(2732,'vaciar','v.t. chusaiachii- sumbuiachii- tallichii- tallii','chusaiachii- sumbuiachii- tallichii- tallii'),
(2733,'vacÃ­o','adj chusa - (dÃ­cese de cosas espaciosas) sumbu -, llegar a estar v.i. sumbuiai -, volverse chusaiai','chusa'),
(2734,'vagarse','v.r. chungarii','chungarii'),
(2735,'vagina','s- raka','raka'),
(2736,'vago','s- kukurungu','kukurungu'),
(2737,'valerse','v.r. balirii','balirii'),
(2738,'valiente','adj wapu -, llegar a ser v.i. wapuiai -, hacer que se vuelva v.t. wapuiachii','wapu - wapuiai - wapuiachii'),
(2739,'VÃ¡mos','interj Rinchi- Ringa- Risunchi','Rinchi- Ringa- Risunchi'),
(2740,'vano','adv dibaldi, ianga','dibaldi- ianga'),
(2741,'varios','adj achka rel machka','achka- machka'),
(2742,'varita','s- chaglla','chaglla'),
(2743,'varÃ³n','s- kari','kari'),
(2744,'Vea','interj Ala-Au- Kawamui','Ala-Au- Kawamui'),
(2745,'vehÃ­culo','s- augtu- autu- karu','augtu- autu- karu'),
(2746,'veinte','adj iskai chunga','iskai chunga'),
(2747,'vejiga','s- bijia','bijia'),
(2748,'vello','s- milma - de la axila kushkila milma - del brazo maki milma -, salir v.i. milmaiai','milma '),
(2749,'velludo','adj milmunchu','milmunchu'),
(2750,'Ven','interj Samui','Samui'),
(2751,'vena','s- angu','angu'),
(2752,'venadillo','s- chuntaruku','chuntaruku'),
(2753,'vencer','v.t. binsii','binsii'),
(2754,'vencerse','v.r. binsirii','binsirii'),
(2755,'vencido','adj binsi','binsi'),
(2756,'vender','v.t. katui','katui'),
(2757,'venderse','v.r. katurii','katurii'),
(2758,'vendible','adj katuri','katuri'),
(2759,'venir','v.i. samui','samui'),
(2760,'ventear','v.r. wairarii','wairarii'),
(2761,'ventilarse','v.r. abintarii','abintarii'),
(2762,'ventosidad','s- supi','supi'),
(2763,'ver','v.t. kawai -, hacerse v.r. kawarii','kawai - kawarii'),
(2764,'verano','s- indi -, hacer v.i. indii ','indi - indii '),
(2765,'veras','de adv sutipa','sutipa'),
(2766,'VerÃ¡s','interj Rikungi- Rikungillapas','Rikungi- Rikungillapas'),
(2767,'TRUE','p.p. ajustadu','ajustadu'),
(2768,'verde','p.p. mana pukuska - (madera) adj chawa -, volverse v.i. chawaiai','mana pukuska -chawa -chawaiai'),
(2769,'verdura silvestre','s- waka mullu','waka mullu'),
(2770,'vergonzoso','adj pinga- pinga siki','pinga- pinga siki'),
(2771,'vergÃ¼enza','s- pingai','pingai'),
(2772,'sinvergÃ¼enza','adj mana pinga','mana pinga'),
(2773,'verruga','s- micha- michi muiu','micha- michi muiu'),
(2774,'vertical','adj saia','saia'),
(2775,'vÃ©rtigo','s- ansias','ansias'),
(2776,'vestido','s- katanga- kusma','katanga- kusma'),
(2777,'vestir','v.t. churachii','churachii'),
(2778,'vestirse','v.r. churarii','churarii'),
(2779,'vez','s- biaji','biaji'),
(2780,'viajar','v.i. purii','purii'),
(2781,'viaje','en el adv riipi- rimpi','riipi- rimpi'),
(2782,'vicundo','s- wikundu','wikundu'),
(2783,'vida','s- kaugsai -, en la otra adv sug luarpi/lugarpi \n-, pasar la v.i. chisiai','kaugsai'),
(2784,'viejo','adj achala, ruku - (referiÃ©ndose a telas usadas, etc.) adj mauka -, un (gen. un poco despectivo) s ruku -a del monte (de las fÃ¡bulas) kuku awila -, llegar a ser v.i. rukuiai -, llegar a ser muy achalaiai -, volverse un poco maukaiai','achala- ruku'),
(2785,'vieja','adj achala, ruku - (referiÃ©ndose a telas usadas, etc.) adj mauka -, un (gen. un poco despectivo) s ruku -a del monte (de las fÃ¡bulas) kuku awila -, llegar a ser v.i. rukuiai -, llegar a ser muy achalaiai -, volverse un poco maukaiai','achala- ruku'),
(2786,'viento','s- waira -, mal kuku waira - que viene de la direcciÃ³n de Aponte uprinda waira -, como el adv waira waira, wairalla','waira'),
(2787,'vigilante','s- chapa- chapag','chapa- chapag'),
(2788,'vigilar','v.t. chapachii- chapai','chapachii- chapai'),
(2789,'visitador','s- chaiag','chaiag'),
(2790,'visitar','v.i. chaiai ','chaiai '),
(2791,'vista','s- Ã±awi - panorÃ¡mica kawari -, perdida parcialmente la adj Ã±awi amsa','Ã±awi'),
(2792,'vistazo','p.p. kawaska','kawaska'),
(2793,'visto','p.p. kawaska','kawaska'),
(2794,'vivir','v.i. kaugsai- tiakui- tianakui','kaugsai- tiakui- tianakui'),
(2795,'vivo','adj kaugsa','kaugsa'),
(2796,'voltear','v.t. builtiachii- tigrachii- urmachii - (en una sola acciÃ³n) tallii','builtiachii- tigrachii- urmachii -tallii'),
(2797,'voltearse','v.t. builtiachii, tigrachii, urmachii - (en una sola acciÃ³n) talliiv.i. urmai v.r. builtiarii, tigrarii \n-, estar en peligro de v.i. singui ','builtiachii- tigrachii- urmachii-tallii- urmai- builtiarii- tigrarii- singui '),
(2798,'volver','kutii- tigrai','kutii- tigrai'),
(2799,'vomitar','v.i. kibnai- kimnai','kibnai- kimnai'),
(2800,'vomitarse','v.r. kibnarii- kimnarii','kibnarii- kimnarii'),
(2801,'vÃ³mito','v.impers. Kibnanaiai- kimnanaiai','Kibnanaiai- kimnanaiai'),
(2802,'vuelta','-, dar media v.i. kingui v.r. kingurii -, dar la v.i. muiui v.r. tigrarii -s en un cÃ­rculo, dar muiurii -, hacer que dÃ© media v.t. kinguchii','kingu'),
(2803,'vulva','s- raka','raka'),
(2804,'yajÃ©','s- aia waska, ambi waska, (suma) tugtu','aia waska- ambi waska- tugtu'),
(2805,'yarumo','s- buma- puma maki','s- buma- puma maki'),
(2806,'yegÃ¼ita','s- chapa parka','chapa parka'),
(2807,'yerbatero','s- ambig- ambidur- iacha- samai pagta- sinchi','ambig- ambidur- iacha- samai pagta- sinchi'),
(2808,'yerbatero falso','pichangiru- samungiru','pichangiru- samungiru'),
(2809,'yo','pron nuka - mismo nukikin- nuka kikin','nuka- nukikin- nuka kikin'),
(2810,'yota','s- kuna -, variedad de biguiÃ±a','kuna - biguiÃ±a'),
(2811,'yuca','s- rumu -, clase de chaugcha','rumu -chaugcha'),
(2812,'zafarse','v.r. kichuchirii, kichuririi -, hacer v.t. kispichii -, ayudar a kichuchii','kichuchirii- kichuririi - kispichii -kichuchii'),
(2813,'zanja','s- chamba \n-s, hacer v.i. chambai','chamba- chambai'),
(2814,'zapallo','s- sapallu','sapallu'),
(2815,'zarazo','adj ichu- jichu','ichu- jichu'),
(2816,' zig-zag','adj, adv kingu kingu','kingu kingu'),
(2817,'zumbar','v.r. chinchimirii -, hacer v.t. chinchimirichii \n','chinchimirii - chinchimirichii'),
(2818,'zumbarse','sitarii','sitarii');

/*Table structure for table `palabras_inga` */

DROP TABLE IF EXISTS `palabras_inga`;

CREATE TABLE `palabras_inga` (
  `id` int NOT NULL AUTO_INCREMENT,
  `palabra_inga` varchar(500) NOT NULL,
  `traduccion` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3336 DEFAULT CHARSET=utf8mb3;

/*Data for the table `palabras_inga` */

insert  into `palabras_inga`(`id`,`palabra_inga`,`traduccion`) values 
(1,'abijun','abeja'),
(2,'abijun kindi','colibrÃ­ pequeÃ±o con pecho blanco'),
(3,'abilla','pepa grande con corteza doble aplanada del Medio Putumayo'),
(4,'abintai','aventar- soplar'),
(5,'abintarii','aventarse-ventilarse-andar sin saber quÃ© hacer'),
(6,'abisparii','avisparse-hacerse consciente-despavilarse-despertarse'),
(7,'achai','cortar Ã¡rboles con hacha'),
(8,'achala','viejo'),
(9,'achala','abuelo- anciano- padrino de bautismo o de confirmaciÃ³n'),
(10,'achala mama','tÃ­a de la mamÃ¡ - abuela- anciana'),
(11,'achala taita','tÃ­o del papÃ¡- abuelo- anciano'),
(12,'achala tiu','anciano de una edad mayor al hablante- con o sin sanguinidad'),
(13,'Achalai','Que bonito- Que bueno- Que sabroso'),
(14,'achalaiai','envejecer'),
(15,'Achichai','Que frÃ­o'),
(18,'achijai','estornudar'),
(21,'achka','bastante- mucho- varios'),
(22,'achka runakuna','muchedumbre- muchas personas'),
(24,'Achuchui','Que quemando- Que caliente'),
(26,'agcha','cabello- pelo'),
(27,'agcha kuchu','peluquear'),
(28,'agchaiai','llegar a tener pelo'),
(29,'agchasapa','melenudo'),
(30,'agllachii','hacer que alguien escoja-hacer que alguien seleccion'),
(31,'agllai','escoger- seleccionar'),
(32,'agllarii','escoger- seleccionar - seleccionarse'),
(33,'Ai','susto- mala gana- pena'),
(34,'aia','picante'),
(35,'aia waska','yajÃ©- datura'),
(36,'aiachii','hacer que alguien coma carne con ajÃ­- compartir- castigar'),
(37,'aiachirii','compartir carne'),
(39,'aiai','picar- servir algo picante'),
(40,'aiarii','servirse ajÃ­ o picante'),
(41,'aicha','carne'),
(42,'aicha chundur ','chundur que se frota cuando va a ir a cacerÃ­a'),
(43,'aichaiachii','cicatrizar'),
(44,'aichaiai','vivir en uniÃ³n libre'),
(45,'aichanaiai','tener ganas o necesidad de comer carne-tener apetito para comer carne.'),
(46,'aidachii','hacer que alguien ayude- prestar ayuda- brindar ayuda'),
(47,'aidai','ayudar'),
(48,'aillu','familia'),
(49,'ainichii','hacer que alguien conteste'),
(50,'ainichirii','renegar-darse respuestas'),
(51,'ainii','contestar- responder'),
(52,'ainirii','volverse rebelde- responder- responderse'),
(53,'ainiringichu','renegÃ³n- respondÃ³n'),
(54,'aisachii','hacer que alguien agarre- hacer que alguien hale - hacer que alguien coja'),
(55,'sungu aisachii','hipo- hipar'),
(56,'aisai','agarrar- coger- halar - robar'),
(57,'Ã±awi aisai','dar una contracciÃ³n- un tirÃ³n del ojo'),
(58,'sungu aisai ','hipar- suspirar'),
(59,'aisangiru','ladrÃ³n- ratero'),
(60,'aisarii','recogerse - coger para sÃ­ mismo'),
(61,'aitachii','hacer que alguien patee'),
(62,'aitai','patear- dar patadas o puntapies'),
(63,'aitarii','patearse- moverse los pies- patalearse- revolcarse'),
(64,'aiudachii','hacer que alguien ayude- prestar ayuda- brindar ayuda'),
(65,'aiudai','ayudar'),
(66,'Aja','SÃ­'),
(67,'Ajaa','Que sorpresa'),
(68,'Ajai','bastante- muchos'),
(69,'ajinjibli','remedio de la familia del chundur'),
(70,'ajustadu','inteligente- sabio- verdadero- bueno'),
(71,'Aku','VÃ¡mos (dirigiÃ©ndose a dos personas)'),
(72,'Akuichi','VÃ¡mos (dirigiÃ©ndose a varias \npersonas)'),
(73,'Akushi','VÃ¡mos (invitaciÃ³n para ir a otra \nparte)'),
(74,'Ala','Oiga!- Â¡Mire!- Â¡Vea!- Â¡Escuche!'),
(75,'alankarii','alancarse- sobremontar'),
(76,'aliachii','hacer que alguien se sane- hacer que alguien se aliente- curar'),
(77,'aliai','mejorar- sanar- alentarse- curarse'),
(78,'aliarii','curarse'),
(79,'aligri','alegre'),
(80,'aligriachii','alegrar'),
(81,'aligriai','alegrarse'),
(82,'aligriarii','alegrarse'),
(83,'Alintaduchu kangi','Â¿EstÃ¡ bien?'),
(84,'Alita','Mi amor'),
(85,'aliuchii','hacer que alguien arrastre- hacer que alguien hale'),
(86,'aliui','arrastrar- halar'),
(87,'aliurii','arrastrarse'),
(88,'alkaldi','alcalde'),
(89,'alkansadu','alcanzado'),
(90,'alkansarii','alcanzarse- dejarse alcanzar - endeudarse'),
(91,'alku','perro'),
(92,'alku kiru','listo para comer'),
(93,'alku kiru','diente de perro'),
(94,'alku tuta munu','mono muy grande y daÃ±ino que antes vivÃ­a en el Valle de Sibundoy'),
(95,'alku wasa','que atrae a los perros'),
(96,'alkuag','mujeriego-perro- perrito'),
(98,'alkutum','perrito'),
(99,'almachii','hacer que alguien haga la Ãºltima desyerba'),
(100,'almai','hacer la Ãºltima desyerba - deshojar'),
(101,'almarii','aislarse- retirarse- sacar el cuerpo'),
(102,'almaska','deshojado'),
(103,'alpa','tierra- suelo'),
(104,'alpa chapurii','terremoto'),
(105,'alpa kuiurii','temblor'),
(106,'alpa pikudu','pÃ¡jaro verde â€œcurucÃºâ€ con pico largo y grueso que vivÃ­a en las peÃ±as'),
(107,'alwasil','alguacil'),
(108,'alli','bueno- bien'),
(109,'alli iach','que siente bien- que siente alegre'),
(110,'alli iuiachi','bien- alegre'),
(111,'alli iuiachii','sentir bien'),
(112,'alli iuiachirii ','alegrarse'),
(113,'alli iuiaiiug','inteligente- que tiene buena memoria- que cura las enfermedades'),
(114,'alli juajuachii','traer buen augurio- dar buena suerte'),
(115,'alli kai','ser bueno- ser posible'),
(116,'alli ladu','a la derecha- lado derecho- parte buena'),
(117,'alli maki','que tiene buena mano para las siembras- para curar'),
(118,'alli maki','mano derecha'),
(119,'Alli mas chisiapuangi','Buenas tardes'),
(120,'Alli mas pakaripuangi','Buenos dÃ­as'),
(121,'Alli mas tutaiapuangi','Buenas noches'),
(122,'alli Ã±awi','que tiene visiÃ³n del fÃºturo- que tiene ojo de Ã¡guila'),
(123,'alli puncha','buen dÃ­a- dÃ­a de verano'),
(124,'alli rikui','irle bien - ir con buena suerte'),
(125,'alli tutaÃ±u','inteligente- que tiene buen cerebro'),
(126,'alli uma','que tiene buena memoria- inteligente- bueno'),
(127,'alli wajuachii','traer buen augurio- dar buena suerte'),
(128,'alli wasa','buena suerte'),
(129,'alliachi','alegre- bien'),
(130,'alliachii','hacer que alguien se sane- hacer que se aliente engordar un poco- sentir bien'),
(131,'alliai','mejorar- sanar- alentarse- curarse engordarse un poco'),
(132,'alliarii','curarse'),
(133,'allichichii','hacer que alguien acomode- hacer que arregle- hacer que prepare'),
(134,'allichii','acomodar- arreglar- preparar'),
(135,'allichirii','acomodarse- arreglarse- prepararse'),
(136,'allichiska','acomodado- arreglado- preparado'),
(137,'Allilla','Buenos dÃ­as'),
(138,'allilla','Estoy bien'),
(139,'allima','a la derecha'),
(140,'allimanda','despacio- lentamente'),
(141,'allipa iuiaiiug','que cura las enfermedades'),
(142,'Allisia','bien- Buenos dÃ­as'),
(143,'Allisiapuangi','Buenos dÃ­as'),
(144,'allita','que bueno- bien'),
(145,'alliura','en buena hora'),
(146,'Ama','No...'),
(147,'Amaa','Â¡No!-Â¡Deje!'),
(148,'Amalai','Que hubiera'),
(149,'Amara','TodavÃ­a no...'),
(150,'amarun','serpiente- dragÃ³n'),
(152,'ambi','medicina- remedio'),
(153,'ambi karai','dar remedio- dar medicina'),
(154,'ambi wansmii','preparar un emplasto con ciertas plantas cocidas envueltas en hojas debajo de las cenizas'),
(155,'ambi waska','yajÃ©- datura'),
(156,'ambichii','hacer que sane'),
(157,'ambig','mÃ©dico- curandero- yerbatero'),
(158,'ambii','curar- tratar'),
(159,'ambirii','curarse- sanarse'),
(160,'amchi','delgado- fino'),
(161,'amchiai','enflaquecerse- adelgazarse'),
(162,'amchisina tukuspa sarurii','caminar en la punta de los dedos de los pies'),
(163,'amchishitu','delgadito- finito'),
(164,'amichii','quitar la gana'),
(165,'amii','aborrecerse- cansarse'),
(166,'amirii','empalagarse- asquiarse'),
(167,'ampullai','hacer ampollas'),
(168,'amsa','oscuro'),
(169,'amsa Ã±awi','miope'),
(170,'amsaiachii','oscurecer - hacer que alguien se demore'),
(171,'amsaiai','oscurecerse- atardecerse'),
(172,'amsaiarii','nublarse- oscurecerse un poco'),
(173,'amsamsa','a oscuras- de maÃ±anita- todavÃ­a oscuro- antes del amanecer'),
(174,'amulli','listo para colocar en la boca'),
(175,'amullichii','ponerle en la boca'),
(176,'amullii','embocar- poner en la boca- servirse'),
(177,'amullirii','comer con aprecio'),
(178,'anaku','manta negra- especie de falda de la mujer indÃ­gena'),
(179,'anchuchii','quitar - apartar- retirar- separar'),
(180,'anchuchirii','quitarse'),
(181,'anchui','quitarse - separarse de- partir de'),
(182,'anchurii','quitarse- alejarse- apartarse- retirarse'),
(183,'anduchi','preparaciÃ³n del plÃ¡tano verde- envuelta en hojas para que se fermente'),
(184,'angiachii','formar raÃ­ces- colocar en agua para que se formen raÃ­ces'),
(185,'angiai','formarse raices- endurecerse'),
(186,'angu','raÃ­z- tendÃ³n- vena'),
(187,'angudu','con nudos- duro'),
(188,'angukuna timplarii','calambre- dar calambre'),
(189,'animachii','hacer que alguien se compromete'),
(191,'animarii','animarse- comprometerse- convenir'),
(192,'animas','difunto'),
(193,'animas misa','misa de difuntos'),
(194,'animas pisku','gabilÃ¡n pequeÃ±o- parecido a la lechuza- que se cree sale a malas horas de la noche'),
(195,'animas sacha','planta de flores blancas que tienen mal olor- las utilizan los mÃ©dicos tradicionales para remedio'),
(196,'animas tullu','hueso de un difunto'),
(197,'animas waira','espÃ­ritu del cementerio- espÃ­ritu de los muertos.'),
(198,'ansias','desmayo- vÃ©rtigo'),
(199,'ansias apii','desmayarse'),
(200,'ansuilai','pescar con anzuelo'),
(201,'antis','Que bueno que...'),
(202,'aÃ±angu','hormiga'),
(203,'apachii','hacer que alguien lleve'),
(204,'apachimui','hacer que alguien traiga'),
(205,'Apai','Â¡Pobresito!- llevar'),
(206,'apamui','traer- pasar'),
(207,'aparichii','hacer que alguien \ncargue '),
(208,'aparidu','cargado- en montÃ³n'),
(209,'aparii','cargar un niÃ±o- tener un \nniÃ±o- estar encinta'),
(210,'apariska','cargado'),
(211,'api','sopa en base de arroz- cebada- trigo'),
(212,'apia','bien cocido - suave- blando- maduro'),
(213,'apiachii','machacar- triturar- moler - apelmazar'),
(214,'apiachiska','machacado- triturado'),
(215,'apiai','suavizarse- machacarse- sancochar- cocinar bien'),
(216,'apiarii','llegar a estar molido- llegar a estar apelmazado'),
(217,'apiaska','sancochado- blando'),
(218,'apichii','hacer que alguien capture- hacer que alguien coja coser a medias'),
(219,'apii','coger - prender- agarrar dar'),
(220,'apilanga rumi','piedra de afilar'),
(221,'apirii','prenderse- cogerse- estar cogido- agarrarse'),
(222,'arakacha','planta de las umbelÃ­feras- de raÃ­z larga y comestible'),
(223,'ardita','ardilla'),
(224,'ardita asnanga','yerbita aromÃ¡tica'),
(225,'ardita uma','olvidadizo'),
(226,'argan','perezoso- ocioso- necio'),
(227,'argan agcha','patilla'),
(228,'Ari','Â¡SÃ­!- Â¡Claro!- Â¡Bien!'),
(229,'arkachii','poner obstÃ¡culos- hacer que alguien ataje- hacer que impida'),
(230,'arkai','atajar- impedir- atrancar'),
(231,'Arkanchi','vereda santiagueÃ±a'),
(232,'arkari','atrancado'),
(233,'arkarii','atrancarse- quedar atrancado- protegerse'),
(234,'arkuiachii','hacer arco como una rueda- arquear- inclinar'),
(235,'arkuiai','Hacerse arco como una rueda- curvarse- inclinarse'),
(236,'armachii','baÃ±ar'),
(237,'armai','baÃ±arse'),
(238,'armanga iuiu','Ã¡rbol cuyas hojas sirven para baÃ±arse y como remedio para quitarse la caspa'),
(239,'armarii','baÃ±arme'),
(240,'artisa','batea en forma de canoa'),
(241,'arus','arroz'),
(242,'arus api','mazamorra al estilo antioqueÃ±o'),
(243,'arus arus','partido- medio triturado'),
(244,'asichii','hacer que alguien rÃ­a'),
(245,'asii','reÃ­rse'),
(246,'asintai','colocar- aterrizar'),
(247,'asintarii','hundirse- aterrizar- eructar'),
(248,'asipaiai','remedar- burlarse de alguien'),
(249,'asipaiangichu','remedÃ³n'),
(250,'asipaiarii','burlarse de - remedar'),
(251,'asiri','sonriente'),
(252,'asirii','reÃ­rse- sonreÃ­r'),
(253,'asisapa','risueÃ±o- que por todo se rÃ­e'),
(254,'aska','medio - casi - reconvaleciente'),
(255,'askaiachii','aliviar- hacer que alguien se reconvalezca'),
(256,'askaiai','medio curarse- reconvalecerse- reponerse'),
(257,'askurinti','intens muy- sumamente'),
(258,'aslla','poco'),
(259,'asllaiachii','mermar- hacer que quede poco'),
(260,'asllaiai','mermarse- bajarse'),
(261,'asllita','un poquito- medio'),
(262,'asllitaiachii','mermar un poquito'),
(263,'asllitaiai','mermarse un poquito'),
(264,'asna','oloroso'),
(265,'asna iuiu','planta de perfume que amarran al brazo los del Medio Putumayo'),
(266,'asna kuku','sobrenombre para la comadreja'),
(267,'asna sacha','Ã¡rbol con flores rojas que tiene un olor desagradable - cualquier clase de Ã¡rbol que tiene olor'),
(268,'asnachii','despedir un olor- hacer que alguien perciba - castigar- dar puÃ±etazos'),
(269,'asnai','oler- heder- percibir'),
(270,'asnaiachii','hacer que llegue a oler'),
(271,'asnaiai','llegar a oler'),
(272,'asnarii','olerse- sentir un olor'),
(273,'aspichii','hacer que alguien raspe - hacer que alguien araÃ±e'),
(274,'aspii','raspar - araÃ±ar'),
(275,'aspirii','rascarse'),
(276,'astachii','hacer que alguien acaree'),
(277,'astai','acarrear'),
(278,'astarii','acarrear'),
(279,'astikalla','un poquito- medio'),
(280,'Asuti','expresiÃ³n para regaÃ±ar a un perro'),
(281,'asutichii','hacer que alguien azote- hacer que castigue'),
(282,'asutii','azotar- dar rejo- castigar'),
(283,'aswa','chicha- bebida de la cultura inga'),
(284,'aswa mingai','trabajo comunitario en el cual se ganan chicha y mote'),
(285,'aswa randii','cantina donde se vende chicha'),
(286,'aswachii','hacer que alguien prepare chicha'),
(287,'aswai','preparar chicha'),
(288,'Ataitiku','Dios mÃ­o'),
(289,'ataki','ataque de epilepsia'),
(290,'ataraiachii','hacer que alguien pesque'),
(291,'ataraiai','pescar con atarraya'),
(292,'atarichi','balso- muy liviano- flotante'),
(293,'atarichii','levantar- alzar'),
(294,'ataridu','levantado - alto'),
(295,'atarii','levantarse'),
(296,'atariraiai','estar levantado'),
(297,'atawalpa','gallina'),
(298,'atun','grande- importante'),
(299,'atun mama','abuela'),
(300,'atun puiblu','ciudad- miserable- tacaÃ±o-  tacaÃ±a'),
(302,'atun puncha','fiesta- dÃ­a festivo'),
(303,'atun taita','abuelo'),
(304,'atun taita tiu','cualquier hombre mayor que el hablante- hablando con respeto'),
(305,'atun taita tukui','hacerse dictador- hacerse gobernador'),
(306,'atun tukui','engrandecerse- estar orgulloso- llegar a ser alto'),
(307,'atun uku','pieza grande- sala'),
(308,'atun ungui','tifo'),
(309,'atuniachii','hacer grande- ennoblecer'),
(310,'atuniachirii','ennoblecerse- hacerse grande- ponerse en los puntos de los pies'),
(311,'atuniai','llegar a ser grande- engrandecerse- envejecer - alargarse'),
(312,'atuniarii','estirarse- alargarse- envejecerse'),
(313,'atuniaska','envejecido'),
(314,'atunkuna','los padres- los grandes- personas importantes'),
(315,'Au','Escuche'),
(316,'augtu','automÃ³vil- carro- bus- vehÃ­culo'),
(317,'auka','salvaje- no civilizado- no bautizado'),
(318,'augka','salvaje- no civilizado- no bautizado'),
(319,'auka muti','mote sin pelar- con toda la pluma- mote sin frÃ­joles'),
(320,'auka waska','clase de yajÃ©'),
(321,'augka waska','clase de yajÃ©'),
(322,'awa','alto'),
(323,'awachii','hacer que alguien teja'),
(324,'awachintu','empapado de agua'),
(325,'awadija','pus que sale de una herida'),
(326,'awai','tejer- pasar la trama'),
(327,'awaiachii','elevar- alzar'),
(328,'awaiai','elevarse- pararse en el punto de los pies para hacerse mÃ¡s alto- flotar'),
(329,'awaiarii','rebalsar- llegar a elevarse descobijarse'),
(330,'awama','hasta lejos y alto - arriba- encima'),
(331,'awanga','telar rÃºstico- armazÃ³n para tejer'),
(332,'awantadu','aguantado- soportado'),
(333,'awantai','aguantar- soportar'),
(334,'awapi','arriba- encima - sobre- en lo alto de'),
(335,'awaska','tejido- cualquier cosa tejida'),
(336,'awichii','hacer que alguien unte- hacer que aplique- hacer que comparta'),
(337,'awichirii','dejar que alguien le unte- hacer que le aplique dejar que alguien comparta'),
(338,'awii','untar- aplicar'),
(339,'awila','mujer vieja- anciana'),
(340,'awilaiai','envejecerse'),
(341,'awilli','urdido'),
(342,'awillii','urdir- poner el hilo largo de un telar- principiar cualquier tejido'),
(343,'awilliska','urdido- urdimbre preparada y lista para tejer'),
(344,'awirii','untarse- aplicarse compartir'),
(345,'awiska','untado- aplicado'),
(347,'bailachii','hacer que alguien baile'),
(348,'bailai','bailar'),
(349,'baita','chalina- paÃ±olÃ³n- rebozo'),
(351,'bajnai','obsequiar'),
(352,'balirii','valerse'),
(353,'balsa','balsa'),
(354,'balsaiai','volverse liviano como una balsa- flotar'),
(355,'balsamu','bÃ¡lsamo'),
(356,'bamba','Ã¡rbol â€œhiguerÃ³nâ€ que servÃ­a para hacer bateas'),
(357,'banda','lado- otro lado de la ribera'),
(358,'bandai','v.t.-partir'),
(359,'bandari','enclenque- como dÃ©bil'),
(360,'bandarii','partirse- repartirse- dividirse'),
(361,'bandiria','desfile de los bandereros'),
(362,'bandiriachii','hacer que ande vagando- hacer que ande desfilando'),
(363,'bandiriai','andar vagando- desfilar'),
(364,'bandiriarii','andar vagando'),
(365,'bangisha','banco de 2 a 3 metros de largo- hecho de una sola madera- con patas en los extremos como las del banco tÃ­pico'),
(366,'banku','banco tÃ­pico de sentarse'),
(367,'bararii','bararse- llegar a estar sin dinero'),
(368,'bashjai','desaguar'),
(369,'bata','traje de la mujer joven'),
(370,'batan','tabla que se utiliza en la cocina en vez de una batea'),
(371,'batia','batea tÃ­pica- platÃ³n grande labrado en madera'),
(372,'batsikarii','enredarse demasiado'),
(373,'biaji','vez'),
(374,'bichu','escorbuto- infecciÃ³n â€œholandaâ€ en la boca- ampollas de â€œfuegoâ€ '),
(375,'bida maskai ','cazar- ir de cacerÃ­a'),
(376,'bidachii','hacer que alguien participe'),
(377,'bidarii','participar - cosechar'),
(378,'biguiÃ±a','variedad de yota- planta comestible'),
(379,'bijia','vejiga'),
(380,'billiti','billete- peso'),
(381,'bin rurai','hacer el bien- prestar'),
(382,'bina','hierba pequeÃ±a con hojitas redondas y gruesas- de las cuales se saca el jugo para muchos usos medicinales incluye las siguientes clases: alli bina - kuiangilla binan - kuri bina - Ã±awi bina - pajaku binan - prisku bina - trabajai bina - tugsi bina'),
(383,'bindisachii','hacer que alguien bendiga'),
(384,'bindisai','bendecir'),
(385,'bindisaska ramus','ramo bendito'),
(386,'binia papa','papa natural- blanca y larga- semejante a la oca- que antiguamente se cultivaba'),
(387,'binsi','vencido- dÃ©bil'),
(388,'binsii','vencer- sobresalir'),
(389,'binsirii','vencerse'),
(390,'birindinga','arete'),
(391,'birsiai','cantar'),
(392,'buda','comida especial de mote con carne y huevos que se sirve en las reuniones de fiestas tradicionales'),
(393,'budachii','festejar a alguien una comida buda'),
(394,'budarii','participar en una fiesta tradicional- recibiendo una comida buda'),
(395,'budukira','bodoquera- cerbatana'),
(396,'bugna','doblada y cruzada para llevar objetos'),
(397,'bugnai','llevar algo a la cintura en una bolsa formada de las puntas de la ruana- dichas puntas van prendidas en el siÃ±idur'),
(398,'bugnarii','cargar algo a la cintura'),
(399,'builtiachii','voltear'),
(400,'builtiarii','voltearse- mirar hacia atrÃ¡s'),
(401,'bujunsi kaiu','planta que sirve de remedio para la fiebre'),
(402,'bukuchiku','especie de pez'),
(403,'bukuia','planta â€œparagÃ¼illaâ€ o â€œparasolâ€- con tallo espinoso- el cual se usa para teÃ±ir de negro'),
(404,'buma maki','Ã¡rbol â€œyarumoâ€'),
(405,'bumbum','especie de palma'),
(406,'bunginsi kallu','pequeÃ±o animal- negro como el lagarto- la gente la dejaba correr dentro de su ropa por todo el cuerpo para que le limpiara de todos los malos'),
(407,'bungu artisa','especie de canoa donde se fermenta la chicha'),
(408,'bungua','encÃ­a'),
(409,'bungua kucha','lago movedizo y grande que se ubicaba casi en el centro del Valle de Sibundoy- se creÃ­a que los mÃ©dicos tradicionales lo curaron- enterrando un muÃ±eco de oro- para proteger el Valle de Sibundoy de la colonizaciÃ³n'),
(410,'bunju','junco- planta herbasea con caÃ±uto- las hojas sirven para alimentar los curÃ­es'),
(411,'burbujiai','llenarse de gorgojos'),
(412,'burbuju','gorgojo- insecto pequeÃ±ito parecido al escarabajo que se come el maÃ­z'),
(413,'burbuju sara','maÃ­z lleno de gorgojos'),
(414,'bushjutu','tierra blanca arcillosa'),
(415,'bushmi','desgranado- tostado en un tiesto'),
(416,'bushmii','tostar choclos desgranados en un tiesto'),
(417,'butijiru','persona que brinda la chicha en nombre del dueÃ±o del barril de chicha- luego devolvÃ­a el barril lavado'),
(418,'butijun','niÃ±o barrigÃ³n- pipÃ³n'),
(419,'butjii','volver a descomponer- volver a dislocar'),
(420,'butjirii','volver a descomponerse'),
(421,'butjuia','bejuco que utilizan para amarrar las construcciones de las casas de paja'),
(422,'butunachii','hacer que alguien abotone'),
(423,'butunai','abotonar'),
(424,'bututu','cacho'),
(425,'chabsichii','hacer que alguien haga la segunda desyerba sacudir a alguien'),
(426,'chabsii','desyerbar- hacer la segunda \ndesyerba'),
(427,'chabsirii','sacudirse'),
(428,'chaglla','chacla- varita delgada'),
(429,'chaglla tupu','chacla que se emplea como medida'),
(430,'chagllai','colocar baras'),
(431,'chagra','sementera- huerta'),
(432,'chagrakama','cuidador da la casa'),
(433,'chagriachii','hacer que alguien coseche algo de la sementera'),
(434,'chagriai','cosechar un poco de la sementera'),
(435,'Chai','Que frÃ­o'),
(436,'chaia','agradable - hermoso- bueno'),
(437,'chaiachii','hacer que alguien llegue- notificar'),
(438,'chaiachimui','hacer que alguien llegue acÃ¡'),
(439,'chaiag','visitador'),
(440,'chaiai','llegar- visitar'),
(441,'chaiamui','llegar acÃ¡'),
(442,'chaipi','allÃ¡'),
(443,'chaira','todavÃ­a'),
(444,'chaka','puente'),
(445,'chakachii','prescindir de alguien en una reuniÃ³n- â€œhacer puenteâ€ poner objetos trocados- el uno encima del otro tender un puente'),
(446,'chakachirii','hacerse prescindir'),
(447,'chakana','camilla para llevar un enfermo'),
(448,'chakaraiai','estar puesto uno sobre otro'),
(449,'chakarii','prescendir uno mismo'),
(450,'chaki','pie'),
(451,'chaki butijun','pantorrilla'),
(452,'chaki didu','dedo del pie'),
(453,'chaki kaspi','a quien le falta una pierna'),
(454,'chaki lulu','planta cuyas pepas son comestibles- que sirve Ãºnicamente seca para leÃ±a'),
(455,'chaki mama didu','pulgar del pie'),
(456,'chaki Ã±udu','tobillo del pie'),
(457,'chaki pamba','palma del pie- pie plano'),
(458,'chaki uku ladu','planta del pie'),
(459,'chaki wawa didu','dedo pequeÃ±o del pie'),
(460,'chakichii','secar- ahumar'),
(461,'chakidu tusta','casi podrida- que se convierte en polvo'),
(462,'chakii','secar'),
(463,'chakira','collar de cuentas de porcelana- de diferentes tamaÃ±os y colores'),
(464,'chakirii','secarse- bajar el nivel del rÃ­o- enflacarse'),
(465,'chakiska','flaco- seco- esquelÃ©tico'),
(466,'chakuai','recolectar lo Ãºltimo de la cosecha'),
(467,'Chalai','Que bonito'),
(468,'Chalan chalan','sonido de cascabeles'),
(469,'chalangu','todo mojado - pobre- delgado- alto y flaco'),
(470,'chalwa','pescado- pez'),
(471,'chalwa pisku','pÃ¡jaro que canta Chalwai chalwai'),
(472,'chalwai','pescar'),
(473,'chamba','zanja'),
(474,'chambai','hacer zanjas'),
(475,'champus api','colada de maÃ­z fermentadaya que no se toman bebidas alcohÃ³licas durante estos dÃ­as'),
(476,'chamun','pÃ¡jaro que roba el maÃ­z'),
(477,'chamuskai','chamuscar- pelar con fuego- asar'),
(478,'chanchala','palo no raspado'),
(479,'chanchala wasi','casa abandonada'),
(480,'chanchana','pÃ¡jaro azul brillante â€œpiojosaâ€ que asusta a los otros que comen en la sementera'),
(481,'chanchu','clase de ciempiÃ©s o gusano que vive en pantanos y quebradas'),
(482,'changa','pierna- muslo'),
(483,'changalai','cabalgar'),
(484,'changalarii','cabalgar'),
(485,'chani','Ã¡rbol motilÃ³n silvestre cuya madera sirve para hacer bancos- bateas y tablas en general- se parece al pino'),
(486,'chankual','chismoso'),
(487,'chankual simi','charlatÃ¡n- que divulga todo'),
(488,'chapa','vigilante'),
(489,'chapachii','enviar a observar- vigilar'),
(490,'chapag','vigilante- el que vigila'),
(491,'chapai','espiar- observar- vigilar- mirar un tiempo largo'),
(492,'chapal','clase de kapisaiu de color blanco y negro'),
(493,'chaparu','abandonado que se ha convertido en monte'),
(494,'chaparuiai','convertirse en monte'),
(495,'chapu','mezcla- mezclado'),
(496,'chapuchii','hacer que alguien mezcle'),
(497,'chapuchiska','mezclado'),
(498,'chapui','mezclar'),
(499,'chapuli','cigarra- chicharra'),
(500,'chapurii','mezclarse- meterse'),
(501,'chapuriska','mezclado'),
(502,'chara','todavÃ­a'),
(503,'charichii','hacer que alguien tenga - hacer que posea'),
(504,'charii','tener - agarrar - cuidar- poseer'),
(505,'chariraiai','guardar'),
(506,'charirii','tomar- coger en la mano- agarrarse'),
(507,'chasa','asÃ­- de esa manera'),
(508,'chasa kagpipas','aunque estÃ© asÃ­'),
(509,'chasa nispa','diciendo eso- por eso'),
(510,'chasalla','lo mismo- solamente asÃ­'),
(511,'chasallata','asÃ­ mismo- de la misma manera'),
(512,'chasallata rurai','hacer lo mismo- imitar'),
(513,'chasapaka','para eso- al contrario'),
(514,'chaskichii','hacer que alguien reciba - aliviar- apaciguar- mitigar'),
(515,'chaskii','recibir- acogerse a- dar la bienvenida'),
(516,'chaskirii','recibirse- calmarle'),
(517,'Chasnalla','expresiÃ³n utilizada al saludar'),
(518,'Chash','sonido que produce una rama seca al pisarla'),
(519,'Chashlla','sonido de caer en agua'),
(520,'chaugcha','papa o yuca que se cocina rÃ¡pido'),
(521,'chaugchilla','bejuco que se cultiva,parecido a la cidrayota'),
(522,'chaugpi','mitad- centro- intermedio'),
(523,'chaugpi didu','dedo del medio- corazÃ³n'),
(524,'Chaugpi Sibundui','pueblo de ColÃ³n'),
(525,'chaugpi tuta','s media noche'),
(526,'chaugpii','dividir- partir en dos- reparti'),
(527,'chaugpirii','dividirse- colocarse al centro'),
(528,'chaugpuncha','medio dÃ­a'),
(529,'chaugpuncha killa','cuarto creciente- cuarto menguante'),
(530,'chawa','crudo - verde - chawa iamta :leÃ±a fresca'),
(531,'chawa chawa','medio cocido'),
(532,'chawaiai','volverse verde- volver a crecer'),
(533,'chawaiaska','mal asado - mal cocido- vuelto a crecer- brotado'),
(534,'chawar','fique- cabuya'),
(535,'chawar agcha','cabello rubio o blanco'),
(536,'Chawar iaku','nombre de una quebrada en el municipio de Sibundoy- y de otra en el municipio de Pasto'),
(537,'chawar iiska','tallo seco de la cabuya'),
(538,'chawar ispina','espina de fique'),
(539,'chawar muiu','semilla de fique'),
(540,'chi','ese- aquel'),
(541,'chia','liendre del piojo'),
(542,'Chichai','Que frÃ­o'),
(544,'chichichii','hacer que un niÃ±o orine'),
(545,'chichii','orinar'),
(546,'chichiku','mono piel roja â€œtintinâ€ '),
(547,'chichinaiai','tener ganas de orinar'),
(548,'chichirii','orinarse'),
(549,'chichu','preÃ±ada- encinta'),
(550,'chichuiachii','preÃ±ar'),
(551,'chichuiai','estar preÃ±ada - llenarse la barriga'),
(552,'chigta','rajado - tajada'),
(553,'chigtachii','hacer que alguien quiebre- hacer que parta- hacer que raje- hacer que chilte'),
(554,'chigtai','rajar- partir - chiltar'),
(555,'chigtaiai','partirse - reventarse'),
(556,'chigtarii','rajarse- partirse- chiltarse'),
(557,'chigtaska','rajado- partido- chiltado'),
(558,'ChikÃ¡','Tenga'),
(559,'chikig chikig','sonido de guitarra'),
(560,'chilakuan','papayuela- papaya de tierra frÃ­a'),
(561,'chilangu','pÃ¡jaro â€œpollo de aguaâ€'),
(562,'chilin chilin','sonido de un toque de campanillas'),
(563,'chilka','arbusto Bacharis Empatorium con hojas muy verdes '),
(564,'chilku','Ã¡rbol que crÃ­a alto u grueso, la madera es amarilla o roja'),
(565,'chiltiai','chismear'),
(566,'Chilla','Basta'),
(567,'chimanda','esde allÃ­- por eso- entonces'),
(568,'chimba','al otro lado- a la otra ribera'),
(569,'chimbachii','hacer que alguien pase a la otra ribera'),
(570,'chimbai','pasar- cruzar a la otra ribera'),
(571,'chimbalu','Ã¡rbol silvestre que da una fruta parecida al tomate'),
(572,'chimbarii','pasarse a la otra ribera'),
(573,'chimbilaku','murciÃ©lago'),
(574,'chimchim','sonido de guitarra'),
(575,'china','empleada del servicio domÃ©stico en la casa del gobernador durante el aÃ±o - aparato sobre el cual se sostiene la lana \npara ovillarla'),
(576,'chinchi balin','hierba â€œSanta MarÃ­aâ€'),
(577,'chinchimirichii','hacer que alguien zumbe'),
(578,'chinchimirii','zumbar para que otro lo recoja'),
(579,'chindia','canasto hecho de bejuco- utilizado para lavar mote de maÃ­z pelado'),
(580,'chingachii','perder'),
(581,'chingai','perder- perderse de'),
(582,'chingarii','perderse- ocultarse- morir'),
(583,'chingaska','perdido'),
(584,'chingual','tuerto- bizco'),
(585,'chini','ortiga'),
(586,'chini kuku','oruga- monchira'),
(587,'chinichii','hacer que duela mucho- ortigar a alguien'),
(588,'chinichimirii','zumbar para que otra persona recoja'),
(589,'chinii','ortigar'),
(590,'chinirii','ortigarse'),
(591,'chipa','Ã¡rbol silvestre que sirve para leÃ±a'),
(592,'chipi','allÃ­'),
(593,'chiplai','silbar'),
(594,'chiplarii','salir a presiÃ³n silbar'),
(595,'chipluwa','con silbidos- silbando'),
(596,'chira','todavÃ­a'),
(597,'chirapa','crespo- en desorden'),
(598,'chiri','frÃ­o'),
(599,'chiri','cerveza'),
(600,'chiri wangu','frÃ­o lento- con mucho frÃ­o'),
(601,'chiriachii','enfriar- hacer que algo se enfrÃ­e'),
(602,'chiriai','enfriarse'),
(603,'chiriarii','enfriarse'),
(604,'chirichii','hacer frÃ­o'),
(605,'chirii','frÃ­o'),
(606,'chisi','la tarde'),
(607,'chisiachii','detener- tardar'),
(608,'chisiagta','todo el dia'),
(609,'chisiai','atardecer- tardar- pasar la vida'),
(610,'Chisiapuangi','Buenas tardes'),
(611,'chisima','bien tarde- despuÃ©s de las cinco'),
(612,'chishaja','arbusto del pÃ¡ramo que cocinado se utiliza como halucinÃ³gino- como pulgante y para el reumatismo'),
(613,'chiuka','canilla- tobillo- pierna inferior'),
(614,'chiura','esa hora- entonces'),
(615,'chiwaku','tordo- pÃ¡jaro negro de paticas rojas y de pico amarillo'),
(616,'chiwilla','piÃ±uela'),
(617,'chubiku','tuerto- bizco'),
(618,'chucha','flojo- cobarde- lento'),
(619,'chuchingu','flojo'),
(620,'chuchu','teta'),
(621,'chuchuchii','hacer que lacte- dar el seno'),
(622,'Chuchui','mamar- chupar - lactar'),
(623,'chuchuka','choclo cocinado'),
(624,'chuchuka muti','mote hecho de choclo cocinado'),
(625,'chuchurii','chupar - tomar el seno'),
(626,'chugchu siki','que tiene la mano no firme'),
(627,'chugchui','fiebre que hace temblar'),
(628,'chugchui','temblar'),
(629,'chugchurii','temblor'),
(630,'chugchurii','tiritar- medio temblar'),
(631,'chugllu','choclo- mazorca tierna de maÃ­z '),
(632,'chugllu api','sopa de maÃ­z - puede ser de sal o de dulce'),
(633,'chugllu aswa','chicha de choclo'),
(634,'chugllu builtu','envuelto de choclo- puede ser de sal o de dulce'),
(635,'chugllu bushmi','choclo desgranado- tostado en un tiesto'),
(636,'chugllu kiru','los primeros dientes del niÃ±o o de la mazorca'),
(637,'chugllu kuru','gusano de choclo'),
(638,'chugllu muiu','granos'),
(639,'chugllu muti','mote de choclo con frÃ­joles'),
(640,'chugllu pritai','choclo frito'),
(641,'chugllu turtilla','arepa de choclo envuelto en hojas de achira y frito o asado en un tiesto'),
(642,'chuglluiai','hacerse choclo'),
(643,'chugridu','dislocado'),
(644,'chugrii','dislocarse los tobillos'),
(645,'Chugsii','expresiÃ³n para regaÃ±ar a un perro'),
(646,'Chui','Que caliente'),
(647,'chuia','diluido en agua- con mucha agua'),
(648,'chuiaiachii','disolver- diluir'),
(649,'chuiaiai','disolverse'),
(650,'chukachii','atascar- asfixiar'),
(651,'chukari','asfixiante'),
(652,'chukarii','atorarse- ahogarse'),
(653,'chukuri','comadreja- pequeÃ±o carnÃ­voro que mata las gallinas y curÃ­es'),
(654,'chulku','planta medicinal de tierra frÃ­a â€œacederaâ€ que se utiliza para escorbutos y quemados'),
(655,'Chulum','sonido producido cuando alguien cae al rÃ­o'),
(656,'chulla','Ãºnico- solamente uno'),
(657,'Chum','ruÃ­do producido por el agua cuando algo se lanza'),
(658,'chumbi','faja tejida con figuras que usan las mujeres indÃ­genas para fajarse'),
(659,'chumbillichii','fajar'),
(660,'chumbillii','fajarse el cinturÃ³n'),
(661,'chumbillirii','fajarse- envolverse'),
(662,'chumbu','pavo'),
(663,'chumbu muti','mote medio hervido'),
(664,'chunchullachii','hacer que alguien destripe- hacer que descuartice'),
(665,'chunchullai','destripar- descuartizar'),
(666,'chunchullu','tripas- intestinos'),
(667,'chundur','planta medicinal que se encuentra en la selva y que se siembra en el Valle de Sibundoy- la usan los mÃ©dicos tradicionales incluye las siguientes clases: aicha chundur- iawar chundur- jinti chundur- kari chundur- kuku chundur- wagra chundur- waira chundur-'),
(668,'chunga','diez\n'),
(669,'chungai','hacer que brinque- picatear'),
(670,'chungarii','vagarse'),
(671,'chunlla','Ãºnico- solamente uno'),
(672,'chunta','chonta- especie de palmera de madera dura'),
(673,'chunta makana','arma antigua'),
(674,'chuntarukiai','cazar- lloviznar soleado'),
(675,'chuntaruku','venadillo- venado chiquito colorado o amarillo que se encuentra principalmente en las ciÃ©nagas'),
(676,'chuntaruku tamia','llovizna de entre sol- con la expectaciÃ³n de que lloverÃ¡ mÃ¡s tarde'),
(677,'chuntaruru','chuntaduro'),
(678,'chupa','cola- rabo'),
(679,'chupa parka','cola de tijeras'),
(680,'chupana','hierba con hojas redondas y bien verdes que se usa para madurar tumores'),
(681,'chupintu','que siempre anda atrÃ¡s como cola'),
(682,'chupu','tumor- postema'),
(683,'chupuiai','formarse un abceso- formarse un tumor'),
(684,'churachii','calzar- vestir - hacer que alguien llene'),
(685,'churai','poner- colocar'),
(686,'churaraiai','estar puesto- estar colocado'),
(687,'churaridiru','ropa'),
(688,'churarii','vestirse- ponerse'),
(689,'churillu','clase de hierba que comen los conejos silvestres'),
(690,'churu','caracol'),
(691,'chusa','vacÃ­o'),
(692,'chusaiachii','vaciar'),
(693,'chusaiai','volverse vacÃ­o'),
(694,'chusku','cuatro'),
(695,'chusku chunga','cuarenta'),
(696,'chusku patsa','cuatrocientos'),
(697,'chuspi','insecto- mosca- mosquito'),
(698,'chuta','sombrero aguardiente de \ncontrabando'),
(699,'chutachii','extender- estirar'),
(700,'chutai','seguir en fila'),
(701,'chutaraiai','estar estirado'),
(702,'chutarii','estirarse'),
(703,'damni','Ã¡rbol de la montaÃ±a'),
(704,'daÃ±ui','brujear'),
(705,'dibaldi','en vano'),
(706,'dibi','endeudado'),
(707,'dibichii','prestar trabajo- trabajar sin cobrar'),
(708,'dibirii','Endeudarse'),
(709,'didu','dedo'),
(710,'diganas','de ganas- teniendo antojos de'),
(711,'diltudu','completamente- para siempre'),
(712,'dillakii','con pena'),
(713,'dipanda','rara vez- de pronto'),
(714,'dipanda dipanda','de vez en cuando'),
(715,'dipurdundi','dÃ©bil- enfermo'),
(716,'dirichai','enderezar'),
(717,'diricharii','enderezarse'),
(718,'dirumbaska','derrumbado'),
(719,'dirumbu','derrumbe'),
(720,'disimularii','llegar a disimular- hacerse ignorar- quedar callado'),
(721,'diskansi','remedio que sirve para la fiebre'),
(722,'diskuintai','Descontar'),
(723,'dismuntaska','Desmontado'),
(724,'dispidirii','Despedirse'),
(725,'disukuparii','Desocuparse'),
(726,'diulpi','de repente- de pronto'),
(727,'dusi','panela- un dulce'),
(728,'dusi api','colada dulce'),
(729,'faltachii','hacer que alguien falte - hacer que cometa una falta'),
(730,'faltai','faltar- cometer una falta'),
(731,'faltarii','llegar a faltar- cometer una falta\n'),
(732,'filu','filoso- afilado'),
(733,'filuiachii','afilar- afinar'),
(734,'filuiai','afilarse- afinarse'),
(735,'flaugtachii','Hacer que alguien toque una flauta'),
(736,'flaugtai','casi llegar a convencer con la lengua tocar la flauta'),
(737,'flichai','Lanzar flechas- soplar flechas'),
(738,'fuirsachii','Hacer que alguien haga esfuerzos'),
(739,'fuirsarii','Hacer esfuerzos'),
(740,'fuirti','Cincuenta centavos'),
(741,'fuirti','fuerte'),
(742,'furmarii','Formarse'),
(743,'Gal gal gal','graznido del pavo'),
(744,'galgu','GlotÃ³n- comelÃ³n'),
(745,'galpun wasi','rancho donde se depositaban los materiales de construcciÃ³n'),
(746,'ganachii','Hacer que alguien gane'),
(747,'ganai','Ganar'),
(748,'ganarii','Ganarse la vida'),
(749,'garaÃ±u','garaÃ±Ã³n- hombre mujeriego'),
(750,'gargiru','garganta- nuez'),
(751,'gatsu','moscardÃ³n con cachos'),
(752,'grabarii','Empeorarse'),
(753,'iacha','mÃ©dico tradicional- curandero- yerbatero- quien sabe'),
(754,'iacha takii','canto de mÃ©dico tradicional'),
(755,'iachachidiru','de enseÃ±anza'),
(756,'iachachig','profesor- maestro- el que enseÃ±a'),
(757,'iachachii','enseÃ±ar'),
(758,'iachai','saber- recibir noticias'),
(759,'iachaikudiru','de estudio'),
(760,'iachaikudiru panga','cuaderno'),
(761,'iachaikudiru uku','salÃ³n de clase'),
(762,'iachaikudiru wasi','escuela- colegio'),
(763,'iachaikui','aprender- estudiar'),
(764,'iachaikurii','llegar a aprender'),
(765,'iacharaiai','estar acostumbrado- estar amaÃ±ado- ser buenos amigos- estar enseÃ±ado'),
(766,'iacharidu','Ã­ntimo- muy amigo'),
(767,'iacharii','acostumbrarse- amoldarse- llegar a tener noticias'),
(768,'iachariska','enseÃ±ado- acostumbrado'),
(769,'iachi','lo que siente'),
(770,'iachii','sentir- hacer que alguien recuerde- aconsejar'),
(771,'iachirii','sentir - hacerse sentir- reflexionar- hacer algo para recordar- hacerse aconsejar'),
(772,'iaia','cacique- jefe- personaje grande'),
(773,'iaia patrun','el santo patrÃ³n'),
(774,'iaikuchii','hacer que entre - llamar'),
(775,'iaikui','entrar- subir'),
(776,'iaikurii','ponerse a entrar- meterse'),
(777,'iaku','agua- lÃ­quido- rÃ­o'),
(778,'iaku aicha','carne de rÃ­o- pescado'),
(779,'iaku alku','perro de agua'),
(780,'iaku iamta','palos llevados por la represa de un rÃ­o'),
(781,'iaku jundai','creciente - represa'),
(782,'iaku kucha','laguna'),
(783,'iaku malki','brazuelo de un rÃ­o'),
(784,'iaku Ã±awi','yacimiento de agua- arroyo- fuente'),
(785,'iaku pata','orilla del agua- rÃ­o'),
(786,'iaku patu','pato silvestre'),
(787,'iaku waira','sirena- duende del agua- mal viento del agua'),
(788,'iakuiachii','derretir- desleÃ­r- diluir'),
(789,'iakuiai','derretirse'),
(790,'iakuiarii','derretirse'),
(791,'iakunaiai','tener sed'),
(792,'iakupi chingarii','perderse en el agua- ahogarse'),
(793,'iakusapa','empapada de agua'),
(794,'iakusu','que tiene mucho lÃ­quido'),
(795,'iali','pasados- exagerado- un poco mÃ¡s del lÃ­mite - ralo'),
(796,'ialichii','trasladar - pasar'),
(797,'ialichii ungui','disenterÃ­a'),
(798,'ialichimui','pasar hacia acÃ¡- traer'),
(799,'ialidiru','sitio por donde uno pasa'),
(800,'ialigta','pasado'),
(801,'ialii','pasar - suceder- acontecer'),
(802,'ialii','disenterÃ­a'),
(803,'ialirii','pasarse- dar un paso en falso'),
(804,'ialli','pasados- un poco mÃ¡s del lÃ­mite - demasiado'),
(805,'iamta','leÃ±a'),
(806,'iamta wangu','atado- carga de leÃ±a'),
(807,'iamtai','conseguir leÃ±a- recoger leÃ±a'),
(808,'iamtawa aswa mingai','trabajo comunitario cuando alguien solicita leÃ±a a los asistentes y les brinda chicha y mote'),
(809,'iamtuta','media oscura'),
(810,'iana','negro'),
(811,'iana abijun','abeja negra'),
(812,'iana aÃ±angu','conga- hormiga grande y negra de tierra caliente'),
(813,'iana bijuku','clase de bejuco que se usa para hacer canastos'),
(814,'ana muiu','pepa negra y comestible, parecida a la uvilla'),
(815,'iana sungu','hÃ­gado'),
(816,'iana tuta','noche oscura'),
(817,'ianaiachii','pintar de negro- ennegrecer'),
(818,'ianaiachiska','ennegrecido'),
(819,'ianaiai','ennegrecerse'),
(820,'Ianapawai','AyÃºdeme'),
(821,'ianga','sin provecho- en vano- inÃºtil- que no es nada/-nadie en realidad'),
(822,'ianga aswa','chicha sin alcohol'),
(823,'ianga papa','papa inÃºtil'),
(824,'ianga runa','imagen que en la distancia se parece a un hombre- ilusiÃ³n - indÃ­gena'),
(825,'ianuchii','hacer que alguien cocine'),
(826,'ianui','cocinar'),
(827,'ianurii','cocinarse'),
(828,'ianuska','cocido- cocinado'),
(829,'ianusu','de color cafÃ©'),
(830,'iapa','muy- mucho'),
(831,'iapachii','aumentar'),
(832,'iapai','agregar- aÃ±adir'),
(833,'iaparii','aumentarse'),
(834,'iarkachii','hacer que alguien tenga hambre'),
(835,'iarkai','estar con hambre'),
(836,'iarkai iarkai','hambriento'),
(837,'iarkaimanda','con mucho apetito- con hambre'),
(838,'iawar','sangre'),
(839,'iawar sutuchii','gotear sangre'),
(840,'ichachii','regar- florear'),
(841,'ichai','derramar- regar'),
(842,'icharii','regarse'),
(843,'ichu','zarazo- un poco maduro- entre tierno y maduro'),
(844,'ichuiachii','dejar que se madure'),
(845,'ichuiai','medio madurarse'),
(846,'idrun','cidron'),
(847,'igrun','higuerÃ³n'),
(848,'ikuti','de nuevo- otra vez- nuevamente'),
(849,'ikuti rii','ir otra vez'),
(850,'ilichu','Helecho'),
(851,'ilili','el gabilÃ¡n mÃ¡s pequeÃ±o pero mÃ¡s daÃ±ino'),
(852,'ilpui','ensartar'),
(853,'iluchii','Hacer que caiga hielo- hacer que caiga nieve'),
(854,'ilui','Caer hielo- caer nieve'),
(855,'ilusarii','Despiojarse'),
(856,'illai','estar ausente- faltar'),
(857,'illarii','ausentarse- faltar'),
(858,'Ima','QuÃ©?- alguna cosa- que'),
(859,'imapas','cualquier cosa'),
(860,'imapatak','para quÃ©- por quÃ©'),
(861,'imasa','de igual manera que'),
(862,'imasatak','cÃ³mo- de quÃ© manera'),
(863,'imatak','quÃ©'),
(864,'imaurapas','cualquier tiempo'),
(865,'imauratak','cuÃ¡ndo'),
(866,'imawa','con que'),
(867,'imawantak','con quÃ©- por quÃ©'),
(868,'imbabi','Ã¡rbol de la montaÃ±a cuya madera sirve de leÃ±a y para construir casas'),
(869,'impas','en paz- al final- completamente'),
(870,'impullai','Hacer ampollas'),
(871,'inchi','Ã¡rbol que da un fruto semejante al manÃ­'),
(872,'indi','sol- verano'),
(873,'indi chingai','puesta del sol'),
(874,'indi chingaridiru','occidente'),
(875,'indi kaballu','insecto semejante al saltamonte'),
(876,'indi kuchara','pÃ¡jaro no muy bravo- colorado- con cola larga'),
(877,'indi kunurii','abrigarse el sol'),
(878,'indi llugsikuska(nigmanda)','oriente'),
(879,'indi ruparii','estar fuerte el sol'),
(880,'indi tigraska','a la una'),
(881,'indii','hacer verano- hacer soleado'),
(882,'indiri','soleado'),
(883,'inga','idioma inga'),
(884,'inga rimag','persona que habla el idioma inga'),
(885,'ingiru','que habla bien el idioma inga'),
(886,'insiÃ±u','Ã¡rbol encino'),
(887,'intindii','entender'),
(888,'in in i','de sabor desagradable'),
(889,'in in iai','encogerse la lengua'),
(890,'in uga','hierba de vida transitoria con flores blancas'),
(891,'irki','triste- pÃ¡lido'),
(892,'irki Ã±awi','pÃ¡lido'),
(893,'irkiai','empalidecerse- ponerse triste- entristecerse- turbarse'),
(894,'irkiaska','pÃ¡lido- entristecido'),
(895,'irkiaska kai','estar triste'),
(896,'iru','hierro'),
(897,'iskai','dos'),
(898,'iskai chunga ','veinte'),
(899,'iskai patsa','doscientos'),
(900,'iskaima','a dos'),
(901,'iskandi','entrambos- los dos- ambos'),
(902,'iskribii','Escribir'),
(903,'iskuchii','hacer que alguien desgrane'),
(904,'iskui','desgranar'),
(905,'iskuila risai','estudiar'),
(906,'iskun','nueve'),
(907,'iskun chunga','noventa'),
(908,'iskun patsa','novecientos'),
(909,'iskurii','desgranarse'),
(910,'islabun','piedra que se utiliza para producir fuego'),
(911,'isma','excremento- estiÃ©rcol- suciedad'),
(912,'isma muru','cucarrÃ³n- moscardÃ³n'),
(913,'ismachii','hacer que otro defeque'),
(914,'ismai','defecar'),
(915,'ismanaiai','tener ganas de defecar'),
(916,'ismarii','defecarse- ensuciarse'),
(917,'ismui','podrirse'),
(918,'ismurii','llegar a podrirse'),
(919,'ismuska','podrido'),
(920,'ispa','orina'),
(921,'ispachii','hacer que alguien orine'),
(922,'ispai','orinar'),
(923,'ispanaiai','tener ganas de orinar'),
(924,'isparii','orinarse'),
(925,'ispingu','corteza de un Ã¡rbol que sacan los del Medio Putumayo'),
(926,'istudiai','Estudiar'),
(927,'ishbujita','DÃ­a despuÃ©s de la noche de la luna llena'),
(928,'ishmaia','barro de la cara'),
(929,'ishmaia muiu','grano de barro de la cara'),
(930,'ishnai','se dice de una persona embrujada'),
(932,'ishtataiai','encogerse la lengua'),
(933,'iuiachi','con sentido'),
(934,'iuiachii','hacer que alguien recuerde- aconsejar- castigar - pegar con el puÃ±o'),
(935,'iuiachirii','reflexionar- hacer algo para recordar- sentir - hacerse sentir- hacerse aconsejar'),
(936,'iuiachispa iachachii','orientar'),
(937,'iuiai','pensar- acordar'),
(938,'iuiarii','acordarse- entender- recordar'),
(939,'iuiu','col'),
(940,'iukachii','regalar- hacer que alguien posea'),
(941,'iukachirii','regalarse'),
(942,'iukag','rico- el que tiene haberes'),
(943,'iukai','tener- poseer'),
(944,'iukaiug','ricachÃ³n'),
(945,'iukari','rico'),
(946,'iukarii','acostumbrarse- regalarse'),
(947,'iumachii','hacer el acto sexual'),
(948,'iumai','unirse sexualmente'),
(949,'iunga','de tierra ardiente- de tierra caliente'),
(950,'iunga uchu','clase de ajÃ­ de clima caliente'),
(951,'iura','blanco'),
(952,'iura sungu','boje- pulmÃ³n'),
(953,'iuraiachii','blanquear'),
(954,'iuraiai','blanquearse'),
(955,'iurusu','de color plomo- gris'),
(956,'Ja','SÃ­'),
(957,'jabaka','muÃ±eca hecha de hojas de maÃ­z'),
(958,'jabakai','deshojar - quitar las primeras hojas cuando se secan- desprender'),
(959,'jachichii','hacer que alguien estornude'),
(960,'jachii','estornudar'),
(961,'jachirii','medio estornudar- sonarse las narices'),
(962,'Jai','expresiÃ³n de admiraciÃ³n'),
(966,'jichu','medio maduro'),
(967,'jichuiachii','dejar que se madure'),
(968,'jichuiai','medio madurarse'),
(969,'jigra','bolsa- morral- mochila- saco de cabuya'),
(970,'jijin','mosquito diminuto de tierra caliente'),
(971,'jijin aÃ±angu','hormiga diminuta'),
(972,'jilai','Hilar- poner sobre la hilada'),
(973,'jilarii','Ponerse en fila- desfilar'),
(974,'jimi','jeme'),
(975,'jimii','medir en jemes'),
(976,'jimirii','medirse en jemes'),
(977,'jinsa','pantorrilla'),
(978,'jinti','gente- hombre- persona'),
(979,'jipui','hipo- hipar'),
(980,'jirgu','clase â€œtinduâ€ de capisayo'),
(981,'jiru','feo- horrible- desagradable'),
(982,'jiru asna','mal olor'),
(983,'jiru iacha','brujo que trata siempre de hacer mal en sus ceremonias'),
(984,'jiru iachi','indispuesto'),
(985,'Jua jua jua','sonido de risa'),
(986,'juai','robar'),
(987,'juajuachii','traer augurio'),
(988,'juajuai','hacerse augurio'),
(989,'juajuarii','augurar'),
(990,'juakimi','brazo superior'),
(991,'JuaÃ±i','No puede ser'),
(992,'juchachii','calumniar'),
(993,'juchachirii','calumniarse entre sÃ­'),
(994,'juchu','maduro- al punto de comer'),
(995,'juibutuchii','hacer montones'),
(996,'juibutui','amontonar'),
(997,'juiniku','conejo'),
(998,'juisiu','fin del mundo- nombre de un ave \nque pÃ­a Juisiu'),
(999,'juisiuchii','Dar buenas orientaciones'),
(1000,'juisiui','Hacer caso'),
(1001,'juituchii','lanzar polvo'),
(1002,'juitui','esparcir un puÃ±ado'),
(1003,'juiturii','caer algo al ojo'),
(1004,'jujuchii','hacer rallar- hacer frotar'),
(1005,'jujui','frotar- rallar'),
(1006,'jujurii','frotarse'),
(1007,'juku','mojado'),
(1008,'jukuchii','mojar'),
(1009,'jukuchirii','mojarse uno mismo'),
(1010,'jukui','mojarse'),
(1011,'jukuiai','llegar a mojarse'),
(1012,'jukurii','llegar a mojarse'),
(1013,'jukuska','mojado'),
(1014,'julin','ennegrecido'),
(1015,'juliniachii','ennegrecer'),
(1016,'juliniai','Ennegrecerse - envejecer'),
(1017,'juliniaska','Ennegrecido- ahumado- envejecido'),
(1018,'jumbi','sudor'),
(1019,'jumbi jumbi','sudoroso'),
(1020,'jumbichii','hacer que alguien sude'),
(1021,'jumbii','sudar'),
(1022,'jumbirii','llegar a sudar'),
(1023,'Jumm jumm','ladrido del perro'),
(1024,'junda','lleno'),
(1025,'junda junda','en abundancia'),
(1026,'jundachii','llenar- hacer que se llene'),
(1027,'jundachirii','llenarse'),
(1028,'jundai','llenar'),
(1029,'jundarii','llenarse'),
(1030,'jundaska','lleno'),
(1031,'jundu','hondo'),
(1032,'jura','remojado en agua'),
(1033,'jura aswa','chicha hecha de maÃ­z jura'),
(1034,'jurai','jurar'),
(1035,'juraiai','germinar'),
(1036,'justisia','juez- autoridad- alguacil- \ngobernador'),
(1037,'justisiai','juzgar'),
(1038,'justisiakuna','los miembros del cabildo'),
(1039,'jutku','agujero- hoyo- hueco redondo'),
(1040,'jutkuchii','agujerear- cavar- excavar- perforar- taladrar'),
(1041,'jutkui','cavar- desbastar'),
(1042,'jutkurii','perforarse - llegar a estar roto'),
(1043,'jutkuriska','llena de goteras'),
(1044,'Ka ka ka ka','cacareo de la gallina'),
(1045,'kabildu','conjunto de autoridades indÃ­genas'),
(1046,'kachai','enviar- mandar'),
(1047,'kacharii','soltar- libertar- poner'),
(1048,'kachi','sal'),
(1049,'kachi pisi','falta de sal'),
(1050,'kachi salas','todo lastimado'),
(1051,'kachiachii','ensalar'),
(1052,'kachiai','llegar a salarse- tener sal'),
(1053,'kachitis','cara'),
(1054,'kachitis','tacaÃ±o'),
(1055,'kachkai','comer sin desgranar- roer- sacar con los dientes- medio morder'),
(1056,'kachkarii','sacar con los dientes la parte carnosa de una fruta'),
(1057,'kachu','cuerno'),
(1058,'kadama','a cada lado- a ambos lados'),
(1059,'kai','estar- ser- este- esta- esto'),
(1060,'kaia','maÃ±ana'),
(1061,'kaia tutamanda','maÃ±ana por la maÃ±ana'),
(1062,'kaia tutapita','maÃ±ana de madrugada'),
(1063,'kaia tutata','maÃ±ana por la maÃ±ana'),
(1064,'kaiai','llamar- invitar'),
(1065,'Kaiajua','palabra utilizada por la persona que hace el brindis'),
(1066,'kaiajuachidiru','totuma u otra cosa de brindar'),
(1067,'kaiajuachii','brindar'),
(1068,'Kaiakama','Hasta maÃ±ana'),
(1069,'kaiandi','al dÃ­a siguiente'),
(1070,'kailla','cerca de- prÃ³ximo'),
(1071,'kailla','solamente Ã©ste'),
(1072,'kaillaiai','acercarse'),
(1073,'kaillapi','solamente aquÃ­'),
(1074,'kaina','ayer'),
(1075,'kainandi','el dÃ­a anterior'),
(1076,'kaipi','aquÃ­'),
(1077,'kaiura','hoy- ahora'),
(1078,'kaka','excremento- cualquier suciedad'),
(1079,'kakachii','hacer que otro defeque'),
(1080,'kakai','defecar'),
(1081,'kakanaiai','tener ganas de defecar'),
(1082,'kakuchichii','hacer que otro acomode- hacer que sobe'),
(1083,'kakuchii','hacer que otro acomode - sobar- tocar violÃ­n'),
(1084,'kakuchirii','hacerse acomodar'),
(1085,'kakuchiska','acomodado'),
(1086,'kakudur','indÃ­gena que acomoda o arregla \nlesiones y dislocados- partera'),
(1087,'kakug','comadrona- partera- persona que acomoda lesiones y dislocados'),
(1088,'kakui','frotar- fregar- acomodar - tocar violÃ­n'),
(1089,'kakurii','frotarse- fregarse - aplicarse'),
(1090,'kalpa','aprisa- de prisa'),
(1091,'kalpa kalpa','al trote- a toda prisa'),
(1092,'kalpachii','hacer que alguien corra- perseguir'),
(1093,'kalpai','correr'),
(1094,'kalpari','liso'),
(1095,'kalparii','rodar'),
(1096,'kalusturinda','carnaval'),
(1097,'kalusturinda sacha','rama que se agregaba en el cocimiento del teÃ±ido'),
(1098,'kalusturinda tugtu','flor amarilla cuyos pÃ©talos \nse esparcen durante los dÃ­as de Carnaval\n'),
(1099,'kallamba','hongo'),
(1100,'kallana','tiesto- plato de barro- cazuela'),
(1101,'kallarii','comenzar- empezar- iniciar- principiar'),
(1102,'kallarii minguanti','vÃ­speras de la luna llena'),
(1103,'kalli','plaza- calle'),
(1104,'kalli pichai','limpiar la plaza'),
(1105,'kallu','lengua mitad de una ruana tejida'),
(1106,'kam','tÃº- usted'),
(1107,'kamachii','hacer abarcar- encubar'),
(1108,'kamaradu','persona de La Laguna'),
(1109,'kamariku','obsequio que se da a una persona importante'),
(1110,'kamba','su - tu- suyo- tuyo'),
(1111,'kambalachi','trueque'),
(1112,'kambalachii','trocar- hacer un \nintercambio- hacer un trueque'),
(1113,'kambalachiru','persona que hace trueques'),
(1114,'kambiai','trocar- hacer un intercambio- hacer un trueque'),
(1115,'kambiarii','Cambiarse'),
(1116,'kambra mati','mate grande para chicha'),
(1117,'kamcha','tostado'),
(1118,'kamcha api','sopa de maÃ­z tostado'),
(1119,'kamcha arina','aco- maÃ­z tostado- molido con panela'),
(1120,'kamchai','tostar'),
(1121,'kamcharii','tostarse'),
(1122,'kamichii','insultar por medio de alguien'),
(1123,'kamii','insultar- responder con insultos'),
(1124,'kamiraiai','estar acostado'),
(1125,'kamirii','renegar - insultarse- arreglarse en la cama como para descansar'),
(1126,'kancha','patio- tostado'),
(1127,'kancha pisku','gallina'),
(1128,'kanchai','tostar'),
(1129,'kanchapi','afuera- fuera'),
(1130,'kancharii','tostarse'),
(1131,'kanchis','siete'),
(1132,'kanchis chunga','setenta'),
(1133,'kanchis patsa','setecientos'),
(1134,'kanchu','Ã¡rbol de la montaÃ±a cuya madera es muy buena'),
(1135,'kangariju','cangrejo- mosco del agua'),
(1136,'kanii','morder'),
(1137,'kanilun','Ã¡rbol silvestre de la sierra- cuya corteza es muy picante- sirve como remedio para Ãºlceras- catarro- etc.'),
(1138,'kaninaiai','ladrar'),
(1139,'kanirii','morderse ubicarse estrechamente o ligeramente en medio- estrecharse'),
(1140,'kantai','cantar'),
(1141,'kantiai','labrar'),
(1142,'kapachu','bola de maÃ­z o veneno que se pone debajo de la cama de una persona muy brava'),
(1143,'kapai','capar- castrar- podar'),
(1144,'kaparii','gritar'),
(1145,'kapia sara','maÃ­z capia- seco pero blando'),
(1146,'kapii','apretar - exprimir - machucar- ordeÃ±ar'),
(1147,'maki kapinakui','casarse'),
(1148,'kapirii','machucarse'),
(1149,'kapisaiu','ruana del hombre indÃ­gena'),
(1150,'kapisaiu tambu','ranchito de medio techo'),
(1151,'kapiska','machucado'),
(1152,'kapricharii','llegar a encaprichars'),
(1153,'kapural','LÃ­der de una vereda-exgobernador- persona influente de la vereda'),
(1154,'kara','corteza - cuero - piel \n'),
(1155,'karacha','grano de chanda - herida que ya estÃ¡ mejorÃ¡ndose'),
(1156,'karacha iamta','madera del Ã¡rbol karacha- que \nno se utiliza para leÃ±a'),
(1157,'karacha','Ã¡rbol cuya leche hace granos'),
(1158,'karachii','hacer que alguien dÃ©'),
(1159,'Karachu','Caramba'),
(1160,'Karai','dar- donar- regalar'),
(1161,'karaÃ±a','resina de una planta selvÃ¡tica'),
(1162,'kararii','darse- entregarse'),
(1163,'karawaja','especie de pez'),
(1164,'karchu','antojado- demasiado comelÃ³n'),
(1165,'karguchii','Hacer cargo- responsabilizar'),
(1166,'kari','hombre- macho- varÃ³n'),
(1167,'kari banku','banco redondo'),
(1168,'kari chumbi','cinta delgada- faja delgada'),
(1169,'karisapa','que tiene muchos maridos'),
(1170,'karnabaliai','llegar el carnaval- bailar'),
(1171,'karu','lejos - distante'),
(1172,'karu karu','distanciado'),
(1173,'karuiai','alejarse un poco - retirarse'),
(1174,'karulla','muy lejos- distanciado'),
(1175,'karustulinda','carnaval'),
(1176,'kasa','asÃ­- de esta manera'),
(1177,'kasama','hacia acÃ¡- para acÃ¡'),
(1178,'kasarai','casamiento- matrimonio'),
(1179,'kasarai','casarse'),
(1180,'kasilla','quieto- tranquilo'),
(1181,'kasillachii','tranquilizar a alguien'),
(1182,'kasillaiai','quedarse quieto- quedarse tranquilo'),
(1183,'kasillarii','tranquilizarse- detenerse de'),
(1184,'kaskalla','lo mismo'),
(1185,'kaskarilla','Planta selvÃ¡tica que se recogÃ­a para quinina'),
(1186,'kaspa','mazorca de maÃ­z en estado de madurez'),
(1187,'kaspi','Palo- madera'),
(1188,'kaspi kara','corteza de Ã¡rbol'),
(1189,'kaspi puru','tronco hondo y vacÃ­o'),
(1190,'kaspimanda wiki','savia de Ã¡rbol'),
(1191,'kasta','clase'),
(1192,'kastillu','ConstrucciÃ³n de ramos que se edificaba frente a la casa del cabildo o del gobernador para aÃ±o nuevo'),
(1193,'kastui','comer- masticar'),
(1194,'kasturii','comer- masticar (en el momento)'),
(1195,'katachii','cobijar- cubrir - tapar'),
(1196,'katachirii','cobijarse uno mismo- hacer un esfuerzo para cobijarse'),
(1197,'katai','cobijarse- cubrirse'),
(1198,'katanga','cobija- ropa'),
(1199,'kataraiai','estar cobijado- estar cubierto- estar tapado'),
(1200,'katarii','cubrirse- taparse'),
(1201,'kati','detrÃ¡s- atrÃ¡s- siguiente- del Ãºltimo'),
(1202,'kati kati','a menudo- uno sobre otro'),
(1203,'katiai','atrasarse- quedarse atrasado- quedarse retrasado'),
(1204,'katichii','seguir - hacer que alguien siga'),
(1205,'katii','seguir - acompaÃ±ar'),
(1206,'katima','hacia atrÃ¡s- para atrÃ¡s- al Ãºltimo- por fin'),
(1207,'katimanda','el Ãºltimo- de atrÃ¡s'),
(1208,'katingiru','que siempre anda atrÃ¡s como cola'),
(1209,'katiraiai','seguir- andar con alguien'),
(1210,'katirii','unirse - acompaÃ±arse- casarse'),
(1211,'katsu','MoscardÃ³n que brama- el macho tiene cuernos'),
(1212,'katui','vender'),
(1213,'katuri','vendible'),
(1214,'katurii','venderse'),
(1215,'kaugchuchii','hacer que algo se retuerza- hacer que se doble'),
(1216,'kaugchui','torcer - retorcer'),
(1217,'kaugchuri','retorcido'),
(1218,'kaugchurii','torcerse- retorcerse'),
(1219,'kaugchuska','torcido- retorcido'),
(1220,'kaugka (muti)','mote sin pelar- con toda la pluma'),
(1221,'kaugpuchii','hacer que se retuerzan- hacer que \nse doblan - hacer que \nse unan'),
(1222,'kaugpui','torcer- retorcer - doblar - unir'),
(1223,'kaugpurii','torcerse- retorcerse- doblarse- unirse'),
(1224,'kaugpuska','torcido'),
(1225,'kaugsa','vivo- despierto'),
(1226,'kaugsachii','revivir- resucitar- despertar'),
(1227,'kaugsai','vivir'),
(1228,'kaugsarii','revivirse- volverse en sÃ­ - resucitar'),
(1229,'kawachidiru didu','Ã­ndice- dedo que sirve para \nseÃ±alar'),
(1230,'kawachii','mostrar- seÃ±alar'),
(1231,'kawai','ver- mirar'),
(1232,'Kawamui','Mire'),
(1233,'kawari','vista panorÃ¡mica- paisaje'),
(1234,'kawarii','aparecer- mirarse- presentarse'),
(1235,'kawaska','visto- vistazo'),
(1236,'kawitu','cama- estante- andamio para cuidar las sementeras'),
(1237,'kawituchii','acomodar'),
(1238,'kawituraiai','estar acomodado- convivir con alguien- gen. del sexo opuesto'),
(1239,'kawiturii','acomodarse en una cama- estante- andamio'),
(1240,'kibnachii','hacer que alguien vomite- hacer que trasboque'),
(1241,'kibnai','vomitar'),
(1242,'kibnanaiai','marearse- provocar vÃ³mito- tener ganas de vomitar'),
(1243,'kibnarii','vomitarse- provocar el trasboco'),
(1244,'kicha','diarrea- soltura'),
(1245,'kichachii','hacer que alguien tenga diarrea- hacer que tenga soltura- dar purga'),
(1246,'kichai','tener diarrea'),
(1247,'kichala','diarrea continua- violenta'),
(1248,'kichaliachii','hacer que alguien tenga diarrea continua'),
(1249,'kichaliai','estar enfermo con diarrea'),
(1250,'kichaliarii','ensuciarse continuamente de diarrea'),
(1251,'kichaliru','persona que estÃ¡ enferma de diarrea'),
(1252,'kicharii','ensuciarse'),
(1253,'kichki','angosto- estrecho'),
(1254,'kichkiri','angosto- estrecho'),
(1255,'kichkirii','situarse en una parte estrecha'),
(1256,'kichuchii','ayudar a que alguien se zafe-'),
(1257,'kichuchirii','defenderse- zafarse- escabullarse'),
(1258,'kichui','quitar- despojar'),
(1259,'kichurii','quitar para uno mismo'),
(1260,'kichuririi','zafarse'),
(1261,'kidachii','detener- hacer que alguien se quede- hacer que espere'),
(1262,'kidai','quedar'),
(1263,'kidarii','quedarse'),
(1264,'Kiia kiia','cacareo de susto que produce la gallina'),
(1265,'kiiaiaska','oxidado'),
(1266,'kijin','mosquito diminuto de tierra caliente'),
(1267,'kiki','mazorca de maÃ­z tierno- maÃ­z cuando la mazorca se estÃ¡ formando'),
(1268,'kikiai','formarse la mazorca de maÃ­z'),
(1269,'kikilla','todavÃ­a tierno'),
(1270,'kikin','propio- uno mismo'),
(1271,'kikinlla','sÃ³lo uno mismo'),
(1272,'kilimsa','carbÃ³n de la leÃ±a'),
(1273,'kilkai','escribir'),
(1274,'kilpachii','hacer que alguien cubra'),
(1275,'kilpai','tapar- cubrir'),
(1276,'kilparii','cubrirse- taparse'),
(1277,'killa','luna- mes'),
(1278,'killa kachudu','luna creciente entre el tercer dÃ­a y el sÃ©ptimo'),
(1279,'killa mama','clase de buho'),
(1280,'killa tuta','noche de luna'),
(1281,'killa wangu','perezoso- haragÃ¡n- ocioso'),
(1282,'killachii','molestar el oÃ­do- alborotar- hacer mucho ruido'),
(1283,'killai','dar pereza'),
(1284,'killaiug','muy perezoso'),
(1285,'killu','amarillo- anÃ©mico'),
(1286,'killu iuiu','Ã¡rbol â€œpalo amarilloâ€ '),
(1287,'killu killu','bien dulce'),
(1288,'killu muruchu','maÃ­z amarillo y sÃ³lido'),
(1289,'killu tugtu','planta que sirve como remedio para el dolor de estÃ³mago'),
(1290,'killuiachii','hacer que algo se amarille- hacer \nque se madure'),
(1291,'killuiai','volverse anÃ©mico- amarillarse- madurarse'),
(1292,'killuiarii','amarillarse- estar prÃ³ximo a cosechar- llegar a la madurez'),
(1293,'killuiaska','maduro- pÃ¡lido'),
(1294,'kimichii','arrimar- hacer que alguien arrime- colocar'),
(1295,'kimii','arrimar'),
(1296,'kimirii','arrimarse'),
(1297,'kimnachii','hacer que alguien trasboque- hacer que vomite'),
(1298,'kimnai','vomitar'),
(1299,'kimnanaiai','tener ganas de vomitar- provocar vÃ³mito- marearse'),
(1300,'kimnarii','vomitarse- provocar el trasboco'),
(1301,'kimsa','tres'),
(1302,'kimsa chunga','treinta'),
(1303,'kimsa patsa','trescientos'),
(1304,'kimsama','a tres- para tres- tercero- cerca de tres'),
(1305,'kincha','cerco- corral'),
(1306,'kinchai','cercar- construir un cerco- poner paredes de madera a una casa'),
(1307,'kinchanai','llevar a las espaldas con un \nsegundo rebozo'),
(1308,'kinchanaraiai','estar cargado a las espaldas con un segundo rebozo'),
(1309,'kinchanarii','cargar a las espaldas con un segundo rebozo'),
(1310,'kinchanaska','cargado a las espaldas con un segundo rebozo'),
(1311,'kincharii','protegerse'),
(1312,'kinchullii','guardar dentro de la cusma'),
(1313,'kindi','colibrÃ­- chupaflor- picaflor '),
(1315,'kindi kuchara','pÃ¡jaro medio manso '),
(1316,'kindi manga','olla pequeÃ±a'),
(1317,'kindiai','medio fracturar'),
(1318,'kindiaska','medio fracturado'),
(1319,'kingu','concavidad- curva- ondulacÃ­on- sinuosidad'),
(1320,'kingu kingu','zig-zag'),
(1321,'kinguchii','hacer que alguien dÃ© media vuelta- hacer que tuerza'),
(1322,'kingui','dar media vuelta'),
(1323,'kingurii','dar media vuelta(uno mismo)'),
(1324,'kinrai','atravesado- cruzado- desplomado'),
(1325,'kinrai kinrai','volteÃ¡ndose de un lado a otro'),
(1326,'kinraiai','inclinarse- desplomarse- desladearse'),
(1327,'kinraiaska','desplomado'),
(1328,'kipa','luego- dentro de un rato'),
(1329,'kipaiai','atrasarse- demorarse'),
(1330,'Kipakama','Hasta luego'),
(1331,'kipamanda','de atrÃ¡s- despuÃ©s'),
(1332,'kipamandata','desde ante'),
(1333,'kipi','sobrecarga cosa pequeÃ±a que se acomoda en el rebozo'),
(1334,'kipii','poner una sobrecarga acomodar una cosa pequeÃ±a en el rebozo'),
(1335,'kipirii','sobrecargarse cargar una cosa pequeÃ±a en el rebozo'),
(1336,'kipiska','recargado- sobrecargado acomodado en el rebozo '),
(1337,'kirisa','mosco grande que pone \nhuevos en la carne'),
(1338,'kirisai','entrar los moscos que ponen huevos en \nla carne'),
(1339,'kirisarii','poner huevos en la carne'),
(1340,'kiru','muela- diente'),
(1341,'kiru mukui','hacer rechinar los dientes'),
(1342,'kisiu','marco de la puerta'),
(1343,'kispichii','defender- proteger- salvar- hacer que alguien se zafe- hacer que escape'),
(1344,'kispichirii','hacerse defender- escapar- \nproteger- salvar'),
(1345,'kispii','escapar'),
(1346,'kispirii','protegerse- salvarse'),
(1347,'kitara','de forma triangular- semejante a una guitarra'),
(1348,'kitara chumbi','faja triangular'),
(1349,'kitarai','tocar la guitarra'),
(1350,'kitararii','rascarse un animal con las \npatas'),
(1351,'kiwa','hierba â€œnudilloâ€ '),
(1352,'kiwichii','hacer que alguien se tuerza- hacer que se lesione- hacer que se disloque'),
(1353,'kiwidu','dislocado'),
(1354,'kiwii','torcer- dislocar'),
(1355,'kiwirii','dislocarse- fracturarse- lesionarse'),
(1356,'kiwiriska','dislocado- fracturado'),
(1357,'krichig','el que hace creer'),
(1358,'krichii','convencer- hacer que alguien \ncrea'),
(1359,'kuachii','hacer que alguien entregue- hacer que alguien dÃ©'),
(1360,'kuadrilla','grupo de personas que se unen \npara hacer trabajos comunitarios'),
(1361,'Kuag kuag','sonido del sapo verde'),
(1362,'Kuaglla','sonido que hacen los intestinos'),
(1363,'kuai','dar trabajo comer y \nbeber segÃºn la voluntad del que le invitÃ³'),
(1364,'kuarii','entregarse- darse'),
(1365,'kuartillu','cuatro centavos'),
(1366,'kuasia','bÃ¡lsamo muy amargo que se usa- \nraspÃ¡ndolo en agua- para la tos- la fiebre y \nvarios dolores'),
(1367,'kuashag','s taza- totuma'),
(1368,'kuatinsa muiu','planta â€œchirillaâ€'),
(1369,'kuatisha','lugar encima del fogÃ³n donde se guarda carne,sal, panela'),
(1370,'kuatsimba','planta de flores rojas cuyo tubÃ©rculo es comestible'),
(1371,'kucha','charco- lago- laguna'),
(1372,'kuchaiachii','hacer charco - hacer piscina'),
(1373,'kuchaiai','llegar a formarse un charco- llegar a formarse una piscina'),
(1374,'kuchi','puerco- marrano- cerdo'),
(1376,'kuchillu','machete- cuchillo'),
(1377,'kuchu','orilla- esquina- rincÃ³n- extremo'),
(1378,'kuchu kuchu','alrededor- en los linderos'),
(1379,'kuchuchii','hacer que alguien corte'),
(1380,'kuchuchirii','hacerse cortar'),
(1381,'kuchug','filuda - que corta'),
(1382,'kuchui','cortar'),
(1383,'kuchurii','cortarse'),
(1384,'kuchuringa','hierba filuda â€œcortaderaâ€- utilizada para entejer la casa'),
(1385,'kuchuska','cortado- herido'),
(1386,'Kuglla','sonido que hacen los intestinos'),
(1387,'kuguti','cogote'),
(1388,'kui','curÃ­- conejillo de indias'),
(1389,'kui sungu','muy tÃ­mido'),
(1390,'kuiachii','hacer que alguien ame'),
(1391,'kuiai','acariciar- mimar- ser aficionado a- querer - amar'),
(1392,'kuiangilla','hierba pequeÃ±a â€œcuyanguilloâ€ o â€œqueremeâ€- los mÃ©dicos tradicionales dicen que la hoja sirve para curar a los que estÃ¡n muy enfermos y para asuntos de amor comprende las siguientes clases: lanku kuiangilla - runa kuiangilla'),
(1393,'kuiarii','amarse - estimarse'),
(1394,'kuiaska','adulado- mimado- querido- amado'),
(1395,'kuibibi','pÃ¡jaro que llega en tiempo de invierno- pasando de un volcÃ¡n a otro'),
(1396,'kuichi','arco iris'),
(1397,'kuichi panga','planta que se utiliza en baÃ±os contra las infecciones de la piel'),
(1398,'kuichi tamia','llovizna cuando hay arco iris'),
(1399,'kuidarii','cuidarse- servirse- alimentarse'),
(1400,'kuilalun','moquillo'),
(1401,'kuilla','arbolito con palo huecoso que sirve para canales y para cercar casas de helecho'),
(1402,'kuinta','a la cuenta de- en vez de- como'),
(1403,'kuisu','pÃ¡jaro negro y amarillo â€œjilgueroâ€'),
(1404,'Kuish kuish','sonido que hace el curÃ­'),
(1405,'kuishag','totuma de calabaza'),
(1406,'kuitinsa muiu','chirilla'),
(1407,'kuitum','curisito'),
(1408,'kuiuchii','sacudir - menear - mover- rebullir'),
(1409,'kuiui','movimiento'),
(1410,'kuiukui','estar en movimiento'),
(1411,'kuiurii','menearse- moverse'),
(1412,'kuiuririi','menearse- moverse - torcerse- despavilarse'),
(1413,'kujaka','Ã¡rbol de pepitas parecidas a las uvas'),
(1414,'kujakillu','Ã¡rbol blanco'),
(1415,'kukawi','fiambre- avÃ­o- comestible'),
(1416,'kukawichii','preparar y entregar el fiambre del dÃ­a'),
(1417,'kukawii','llevar el fiambre'),
(1418,'kukawirii','llevar el fiambre para uno mismo'),
(1419,'kukindus','pepa fragante del Medio Putumayo'),
(1420,'kuku','diablo- espÃ­ritu maligno - fantasma- \nespantajo- cualquier hecho que no sea \nhumano'),
(1421,'kuku agcha','patilla'),
(1422,'kuku amarun','serpiente enorme de las fÃ¡bulas'),
(1423,'kuku awila','â€œla vieja del monteâ€ de las fÃ¡bulas- bruja- fantasma que aparece de vez en cuando'),
(1424,'kuku chupu','abceso- â€œpotroâ€'),
(1425,'kuku mamita','bruja de mal genio- apodo que se da a una mujer que es muy brava o que tiene cara de bruja'),
(1426,'kuku papa','papa que no tiene sabor o con sabor desagradable'),
(1427,'kuku pisku','pÃ¡jaro que se le oye de noche'),
(1428,'kuku puchu','restos del dragÃ³n'),
(1429,'kuku sacha','Ã¡rbol cuyas cenizas se esparcÃ­an en la puerta de la casa de un difunto'),
(1430,'kuku sisai','ladrÃ³n muy astuto- diestro- refinado'),
(1431,'kuku shibuju','dos dÃ­as despuÃ©s de la luna llena'),
(1432,'kuku tuglla','enfermedad que a veces resulta \ndespuÃ©s de salir al campo- son granos que dan \nmuchas rasquiÃ±as'),
(1433,'kuku waira','mal viento- mal aire- espÃ­ritu maligno- fantasma'),
(1434,'kukuruchu','enmascarado'),
(1435,'Kukurungu','sonido que hace el gallo'),
(1436,'kukurungu','hombre vago- hombre perezoso'),
(1437,'kulachii','hacer que duerma'),
(1438,'kulai','dormir'),
(1439,'kularii','dormirse'),
(1440,'kulis wangu','persona tacaÃ±a- persona avara\n'),
(1441,'kulki','dinero- plata'),
(1442,'kulki wambra','hijo muy apreciado'),
(1443,'kulkii','llenarse de plata(verbo intransitivo )'),
(1444,'kulkirii','llenarse de plata'),
(1445,'kumala','camote- batata'),
(1446,'kumbamba','mandÃ­bula- quijada'),
(1447,'kumpaÃ±ai','acompaÃ±ar'),
(1448,'kumpaÃ±arii','casarse'),
(1449,'kumuchii','humillar'),
(1450,'kumurichii','hacer que alguien o algo incline'),
(1451,'kumuridu','humillado- avergonzado'),
(1452,'kumurii','agacharse- encorvarse'),
(1453,'kumuririi','inclinar la cabeza'),
(1454,'kumuriska','agachado- encorvado'),
(1455,'kuna','yota'),
(1456,'kuna chisi','esta tarde'),
(1457,'kuna puncha','hoy- este dÃ­a'),
(1458,'kunanchisi','esta tarde'),
(1459,'kunantuta','esta noche'),
(1460,'kunaura','ahora- hoy'),
(1461,'kunbidai','invitar- convida'),
(1462,'kunbidarii','hacerse invitar- hacerse \nconvidar'),
(1463,'kunbidaska','invitado- convidado'),
(1464,'kunchu','afrecho- recillo- resto'),
(1465,'kunchui','sacar el afrecho - terminar de tomar'),
(1466,'kunchullii','guardar dentro de la cusma'),
(1467,'kunfirmaska mama','madrina de confirmaciÃ³n'),
(1468,'kunfirmaska taita','padrino de confirmaciÃ³n'),
(1469,'kunfirmaska wawa','ahijado/-a de confirmaciÃ³n'),
(1470,'kunga','cuello- nuka- pescuezo'),
(1471,'kunga kaugchui','estrangular- matar'),
(1472,'kunga tullu','hueso del cuello'),
(1473,'kungachii','distraer- hacer que alguien olvide'),
(1474,'kungaiachii','hacer una muesca o corte en una madera'),
(1475,'kungaiachiska','muesca- corte'),
(1476,'kungailla','sin sentir- sin darse cuenta de'),
(1477,'kungalla','despreocupado cuando debe preocuparse'),
(1478,'kungarichii','distraer - hacer que alguien olvide'),
(1479,'kungarii','olvidarse'),
(1480,'kungaska','medio deprevenido- tranquilo- despreocupado- entretenido'),
(1481,'kungur','rodilla'),
(1482,'kungurichii','hacer que alguien se arrodille'),
(1483,'kungurii','arrodillar'),
(1484,'kunija','codo'),
(1485,'kunijiai','jugar al conejo- dar un golpe en el brazo- mentir'),
(1486,'kuniju','parte anterior del brazo'),
(1487,'kuniju asnanga','yerbita aromÃ¡tica del Medio Putumayo'),
(1488,'kunsikarii','hacerse aconsejar'),
(1489,'kuntintachii','alegrar- contentar a alguien'),
(1490,'kuntintarii','contentarse- alegrarse'),
(1491,'kuntintachii','alegrar- contentar a alguien'),
(1492,'kuntintarii','contentarse- alegrarse'),
(1493,'kuntintu','contento'),
(1494,'kuntrai','odiar- tener enemistad'),
(1495,'kuntrarii','odiar un poco- disgustarse con'),
(1496,'kunu','tibio- caliente- abrigado'),
(1497,'kunu kunu','enfadado- bravo'),
(1498,'kunuchii','tibiar- calentar'),
(1499,'kunuchirii','hacer que se abrigue'),
(1500,'kunui','sentir calor- abrigarse'),
(1501,'kunuiachii','dejar que se caliente'),
(1502,'kunuiai','llegar a calentarse'),
(1503,'kunurii','abrigarse'),
(1504,'kupal','aroma- incienso '),
(1505,'kurasun','Ã³rgano del corazÃ³n'),
(1506,'kuri','oro'),
(1507,'kuri wambra','hijo muy apreciado'),
(1508,'kurikingi','buitre â€œgavilÃ¡n de la montaÃ±aâ€'),
(1509,'kurilla','de color oro'),
(1510,'kurinti','impetuoso- que no quiere que otros lo manden'),
(1511,'kuriwaji','palabra del canto con que los mÃ©dicos tradicionales piden la suerte'),
(1512,'kurpachii','sentar a alguien en un banco pequeÃ±o- poner en cuclillas'),
(1513,'kurparichii','hacer que alguien siente a otra persona en un banco pequeÃ±o'),
(1514,'kurparii','ponerse en cuclillas- sentarse en un banco pequeÃ±o'),
(1515,'kuru','que le falta'),
(1516,'kuru kaspi','palo demasiado corto'),
(1517,'kuruiachii','recortar'),
(1518,'kuruiai','achicarse- ovillar'),
(1519,'kuruiarii','achicarse- hacerse pequeÃ±o- ponerse en cuclillas ovillarse'),
(1520,'kurunchi','demasiado corto - muy pobre- que no tiene'),
(1521,'kurunchi kusma','clase de cusma que ponen los aponteÃ±os- cusma tipo minifalda'),
(1522,'kurunchu','clase de mico de cola corta'),
(1523,'kurunda','tusa de la mazorca del maÃ­z'),
(1524,'kurunta','especie de pez'),
(1525,'kururu','pÃ¡jaro nocturno que canta '),
(1526,'Kururui','ovillar'),
(1527,'kurururii','ovillarse'),
(1528,'kuruta','bolsita en que estÃ¡n los testÃ­culos'),
(1529,'kusa','esposo- marido'),
(1530,'kusai','asar'),
(1531,'kusaiug','mujer casada- mujer que tiene esposo'),
(1532,'kusarii','asarse- calentarse'),
(1533,'kusaska','asado'),
(1534,'kusikuchii','alegrar- contentar a alguien'),
(1535,'Kusikuchiwangi','me alegrÃ³ tanto'),
(1536,'kusikui','alegrarse'),
(1537,'kusikui puncha','dÃ­a de carnaval'),
(1538,'kuskungu','especie de buho- apodo que se da a una \npersona desordenada- despeinada o que tiene \nbastante cabello'),
(1539,'kusma','tÃºnica del varÃ³n indÃ­gena'),
(1540,'kusni','humo'),
(1541,'kusnichii','echar humo a alguien - fumar - hacer que alguien fume'),
(1542,'kusnichirii','ponerse a fumar- inhalar humo'),
(1543,'kusnii','humear'),
(1544,'kusnirii','humearse'),
(1545,'kustumbrai','acostumbrar'),
(1546,'kusu','larva gruesa y blanca â€œchizaâ€ '),
(1547,'kusumbi','animal cuadrÃºpedo- cuya carne es apetecible'),
(1548,'Kusha','niÃ±o mÃ¡s grande'),
(1549,'Kushichiwangi','me alegrÃ³ tanto'),
(1550,'kushkila','axila'),
(1551,'kushkila milma','vello de la axila'),
(1552,'kushkilachii','hacerle cosquillas a alguien'),
(1553,'kushkilai','hacer cosquillas'),
(1554,'kutai','moler'),
(1555,'kutanga rumi','piedra de moler'),
(1556,'kutarii','molerse- llegar a estar molido'),
(1557,'kuti','de nuevo- otra vez- nuevamente'),
(1558,'kuti rii','ir otra vez'),
(1559,'kutichii','devolver- entregar- restaurar- brindar para pagar o descontar una invitaciÃ³n anterior'),
(1560,'kutii','volver- regresar'),
(1561,'kutirii','retroceder'),
(1562,'kutu','coto- bocio'),
(1563,'labur','significado de las figuras de la faja chumbi incluye las siguientes clases: Ã±awi- ramus- sapu wigsa'),
(1564,'lachapa','paÃ±al'),
(1565,'lim','completamente- totalmente'),
(1566,'limita','frasquito'),
(1567,'limpiai','limpiar- descascarar - descuerar- descortezar'),
(1568,'limpi','limpu'),
(1569,'limusnai','dar una limosna- regalar'),
(1570,'lingi','excremento de gallina'),
(1571,'lingÃ¼ita isma','estiÃ©rcol de gallina'),
(1572,'linsu','lienzo'),
(1573,'linsu Ã±awi','pÃ¡lido'),
(1574,'lipia','templado- templada'),
(1575,'lipia lipia','bien peinado'),
(1576,'lipiai','templarse'),
(1577,'lipiaiai','templarse'),
(1578,'lipiarii','llegar a templarse'),
(1579,'lisiachii','lesionar- herir- cortar'),
(1580,'lisiachiri','fractura del hueso'),
(1581,'lisiachirii','fracturarse'),
(1582,'lisiachiska','fracturado- herido'),
(1583,'lisiarii','lesionarse- cortarse'),
(1584,'Lisinsia','permitir- dar permiso'),
(1585,'lisinsiarii','permitirse'),
(1586,'luariai','hacer espacio- hacer tiempo- aportar'),
(1587,'lugariachii','desocupar- dar lugar'),
(1588,'lugariai','desocuparse- abandonar'),
(1589,'lugru','locro- sancocho hecho de comestibles que se cocinan rÃ¡pido'),
(1590,'Luish luish luish','chullido de los curÃ­es pequeÃ±itos cuando tienen hambre.'),
(1591,'lutrin','sirviente de la casa del gobernador durante el aÃ±o que Ã©ste ejerce'),
(1592,'llachapa','vestido que estÃ¡ destrozÃ¡ndose o despedazÃ¡ndose- paÃ±uelo- trapo viejo'),
(1593,'llachapaiai','destrozarse- despedazarse'),
(1594,'llagta','regiÃ³n- pueblo'),
(1595,'llakichii','angustiar'),
(1596,'llakii','estar triste- estar afligido- tener dolor \n'),
(1597,'llakiiwa kai','tener pena'),
(1598,'llakirii','ponerse triste- entristecerse- sentirse'),
(1599,'llakuai','lamer'),
(1600,'llakuarii','lamerse'),
(1601,'llalli','pasados- un poco mÃ¡s del lÃ­mite - ralo'),
(1602,'llallichii','trasladar - pasar'),
(1603,'llallidiru','sitio por donde uno pasa'),
(1604,'llallii','pasar - suceder- acontecer'),
(1605,'llallirii','pasarse- dar un paso en falso'),
(1606,'llambiai','pulir- alisar- peinarle la cabeza con las manos a alguien'),
(1607,'llambiarii','peinarse con las manos'),
(1608,'llambu','liso- pulido- plano'),
(1609,'llambu llambu','bien peinado'),
(1610,'llambuchii','acariciar'),
(1611,'llambuiachii','alisar- pulir'),
(1612,'llambuiai','volverse liso- volverse pulido'),
(1613,'llamburii','peinarse - arreglarse'),
(1614,'llamkai','tocar- palpar'),
(1615,'llamkarii','tocarse'),
(1616,'llasa','pesado'),
(1617,'llasai','pesar'),
(1618,'llasaiai','llegar a tener peso- volverse pesado'),
(1619,'llasarii','volverse pesado'),
(1620,'llatan','desnudo'),
(1621,'llatanai','desnudar- destapar'),
(1622,'llatanarii','desnudarse- desvestirse- quitarse la ropa'),
(1623,'llaugsa','pegajoso- baboso'),
(1624,'llaugsa kara','corteza pegajosa)'),
(1625,'llaugsa tuka','saliva babosa'),
(1626,'llaugsaiai','volverse pegajoso- volverse baboso'),
(1627,'llaugtu','corona'),
(1628,'llaugtuchii','poner corona'),
(1629,'llaugturii','ponerse corona'),
(1630,'lliki','roto'),
(1631,'llikichii','romper - hacer que alguien rompa'),
(1632,'llikichiskakuna','pedazos rotos'),
(1633,'llikii','romper'),
(1634,'llikirii','romperse- llegar a estar roto- rasgarse'),
(1635,'lluchka','resbaladizo- liso'),
(1636,'lluchkaiachii','hacer que algo se vuelva resbaladizo'),
(1637,'lluchkaiai','volverse rebaladizo- volverse liso'),
(1638,'lluchkarii','resbalarse'),
(1639,'llugsichii','sacar- hacer que alguien salga'),
(1640,'llugsii','salir'),
(1641,'llugsirii','salir- disponerse a salir'),
(1642,'llukai','gatear- andar a gatas'),
(1643,'llukarii','gatear- treparse'),
(1644,'lluki','izquierdo'),
(1645,'luki ladu','a la izquierda- lado izquierdo'),
(1646,'lluki maki','mano izquierda'),
(1647,'llukima','a la izquierda'),
(1648,'llukiru','que actÃºa sÃ³lo con la mano izquierda'),
(1649,'llulla','mentiroso'),
(1650,'llulla siki','muy mentiroso'),
(1651,'llullachii','engaÃ±ar- mentir'),
(1652,'llullai','mentir- decir una mentira'),
(1653,'llullarii','inventar - contar un â€œcachoâ€'),
(1654,'llullu','tierno- reciÃ©n hecho'),
(1655,'llullu wawa','reciÃ©n nacido'),
(1656,'llulluiachii','hacer que algo se vuelva tierno'),
(1657,'llulluiai','volverse tierno'),
(1658,'llunchi','embarrado'),
(1659,'llunchi','pared de barro'),
(1660,'llunchii','aplicar barro'),
(1661,'llunchirii','embarrarse'),
(1662,'llunchiska','embarrado- aplicado con la mano'),
(1663,'lluspichii','desgajar- hacer que algo se resbale- despajar- descuerar- despellejar- descortezar- pelar'),
(1664,'lluspichirii','quitarse- desvestirse'),
(1665,'lluspichiska','desgajado'),
(1666,'lluspii','resbalarse - bajar - caer'),
(1667,'lluspirii','resbalarse- bajarse'),
(1668,'llutachii','unir- cargar- hacer que alguien se apegue- hacer que se junte- hacer que se cargue- hacer que se acerque- hacer que se arrime'),
(1669,'llutai','juntar- apegar- unir- arrimar- cargar'),
(1670,'llutarii','juntarse- apegarse- unirse con otro'),
(1671,'Maa a','balido de la oveja'),
(1672,'machachii','emborrachar'),
(1673,'machag','borracho'),
(1674,'machai','emborracharse'),
(1675,'machangichu','borracho'),
(1676,'macharii','emborracharse un poco'),
(1677,'machaska','borracho'),
(1678,'machka','varios- cuantos'),
(1679,'mai','mÃ¡s o menos'),
(1680,'maikan','cualquier- cual'),
(1681,'maikanpas','cualquiera'),
(1682,'mailla','un poco'),
(1683,'maillachii','lavar'),
(1684,'maillai','lavar'),
(1685,'maillarii','lavarse'),
(1686,'maillaska','lavado'),
(1687,'maima','a donde- para donde'),
(1688,'maimatak','adÃ³nde- para dÃ³nde'),
(1689,'maipi','donde'),
(1690,'maipipas','dondequiera'),
(1691,'maipitak','interrog dÃ³nde'),
(1692,'maita','por ahÃ­- por cualquier parte- por donde'),
(1693,'maitatak','por dÃ³nde'),
(1694,'maituchii','envolver- cubrir'),
(1695,'maitui','envolver- cubrir'),
(1696,'maituku','cuanto- cuanto hace'),
(1697,'maiturii','envolverse- cubrirse'),
(1698,'maituska','envuelto'),
(1699,'makai','golpear- luchar- dar golpes - dar puÃ±etazos'),
(1700,'makana','arma antigua'),
(1701,'makanakui','pelea'),
(1702,'makanakui','darse de puÃ±os- pelear'),
(1703,'maki','mano'),
(1704,'maki kapinakui','casarse'),
(1705,'maki kuru','manco'),
(1706,'maki milma','vello del brazo'),
(1707,'maki Ã±udu','nudo de la mano- muÃ±eca'),
(1708,'maki pamba','palma de la mano'),
(1709,'maki sinchiachii','curar las manos a alguien'),
(1710,'maki watanga','cinta- trenza'),
(1711,'maku','fruta redonda- carnosa de Ã¡rbol que tiene pepas'),
(1712,'mal juisiu','inmoral'),
(1713,'mal juisiuiachii','desacreditar'),
(1714,'malisiai','adivinar - llegar una idea sin fundamento'),
(1715,'malki','rama- retoÃ±o \n arracacha rama de rÃ­o'),
(1716,'malkichii','desgajar- trasplantar'),
(1717,'malkichiska','desgajado'),
(1718,'malkirii','desgajarse- brotar'),
(1719,'maltu','que ha crecido un poco- medio desarrollado'),
(1720,'maltuiai','llegar a medio desarrollarse'),
(1721,'mama','madre- mamÃ¡- tÃ©rmino respetuoso para \nreferirse a la esposa de alguien que ha \nprestado servicio en el cabildo'),
(1722,'mama didu','pulgar'),
(1723,'mama kiru','muela superior'),
(1724,'mama ninga','madrastra'),
(1725,'mama Ã±aÃ±a','tÃ©rmino respetuoso que se usa entre mujeres principalmente para la esposa de un gobernador'),
(1726,'mama siÃ±ura','abuela'),
(1727,'mamba','Ã¡rbol como la â€œguayavillaâ€'),
(1728,'mambi','masa que asemeja a la coca.'),
(1729,'mana','no'),
(1730,'mana alli iacha','brujo que trata siempre de hacer el mal en sus ceremonias'),
(1731,'mana alli juajuachiska','brujeado'),
(1732,'mana alli juajuachii','traer mal augurio'),
(1733,'mana alli maki','que no tiene buena mano \npara las siembras'),
(1734,'mana alli pasachii','hacer que alguien sufra'),
(1735,'mana alli pasai','sufrimiento- sufrir'),
(1736,'mana alli simi','de una persona que- despuÃ©s de que pide una cosa y no se le cede- resulta que esa cosa se pierde o se muere'),
(1737,'mana alli wasa','mala suerte'),
(1738,'mana alli waska','sobrenombre para referirse a \nuna culebra'),
(1739,'mana awantadu','chismoso'),
(1740,'mana chaia','desagradable- insÃ­pido'),
(1741,'mana chakiiug','a quien le falta una pierna'),
(1742,'mana iuiaiiug','con poca inteligencia- medio \ntonto- olvidadizo'),
(1743,'mana kagpipas','sin embargo'),
(1744,'mana kulkiwa kai','bararse- estar sin dinero'),
(1745,'mana llasa','liviano'),
(1746,'mana miski','insÃ­pido al paladar'),
(1747,'mana pinga','sin vergÃ¼enza'),
(1748,'mana pukuska','no madurado- verde'),
(1749,'mana rimaiug tukui','enmudecer'),
(1750,'mana sintiglla','de pronto- de repente'),
(1751,'mana suma asna','mal olor'),
(1752,'mana uiag','sordo'),
(1753,'mana unailla','pronto'),
(1754,'mana unaillapi','despuÃ©s de un rato- a menudo'),
(1755,'manancha','casi que no'),
(1756,'manancha unaillapi','dentro de un momento- sin demora'),
(1757,'manara','todavÃ­a no'),
(1758,'mancha siki','miedoso- muy tÃ­mido'),
(1759,'manchachig','espantajo- el que espanta'),
(1760,'manchachii','espantar- asustar- hacer que alguien tenga miedo'),
(1761,'manchai','espanto- miedo'),
(1762,'manchaiug','temerosa'),
(1763,'manchakui','estar con miedo- tener miedo'),
(1764,'manchangasina','espantajo'),
(1765,'mancharii','espantarse- asustarse'),
(1766,'mandachii','derribar'),
(1767,'mandachirii','tenderse- extender - estirarse'),
(1768,'mandai','\nmandar- enviar'),
(1769,'mandarii','tenderse- extenderse- estirarse- caer \nal suelo'),
(1770,'mandur','achiote'),
(1771,'manga','olla'),
(1772,'manga paki ','olla quebrada'),
(1773,'mangas','comino'),
(1774,'maniai','atar las manos- maneatar'),
(1775,'Manima','No hay'),
(1776,'manta kiru','madera rolliza'),
(1777,'maÃ±achii','prestar'),
(1778,'maÃ±ai','pedir'),
(1779,'maÃ±aji','palabra del canto de los mÃ©dicos tradicionales'),
(1780,'maÃ±arii','pedir para uno mismo'),
(1781,'mapa','sucio- cochino'),
(1782,'mapa Ã±awi','sobrenombre para la comadreja'),
(1783,'mapaiachii','ensuciar'),
(1784,'mapaiai','ensuciarse'),
(1785,'mapaiarii','ensuciarse- defecarse'),
(1786,'maraka','calabacita de totuma con pepa adentro- con la cual toca el bombo en las fiestas'),
(1787,'markachii','hacer que alguien cargue'),
(1788,'markai','llevar'),
(1789,'markaraiai','estar cargado'),
(1790,'markarii','cargar'),
(1791,'markariska','cargado'),
(1792,'markaska','llevado'),
(1793,'markaska mama','madrina de bautismo'),
(1794,'markaska taita','padrino de bautismo'),
(1795,'markaska wawa','ahijado/-a de bautismo'),
(1796,'masa','cuanto'),
(1797,'masachii','amasar'),
(1798,'masatak','cuÃ¡nto'),
(1799,'masatu','maÃ­z o plÃ¡tano molido que se pone en fermento y que se utiliza revuelto en agua para que se vuelva chicha'),
(1800,'masatui','preparar masatu moliendo maiz o plÃ¡tano'),
(1801,'maskachii','hacer que alguien busque'),
(1802,'maskai','buscar'),
(1803,'maskarii','buscarse- rebuscarse'),
(1804,'maski','aunque- aun cuando'),
(1805,'Mash mash mash','sonido de comer'),
(1806,'matachin','personaje que dirigÃ­a los bailes en el Carnaval'),
(1807,'mati','mate- taza- calabaza'),
(1808,'matiwaja','armadillo'),
(1809,'mauka','un poco usado- viejo'),
(1810,'maukaiachii','usar'),
(1811,'maukaiai','volverse un poco viejo- volverse usado- envejecer'),
(1812,'maukaiaska','usado- envejecido'),
(1813,'micha','miserable- bravo'),
(1814,'micha muiu','lunar- verruga'),
(1815,'micha muiu kuku','mosco venenoso que se usa \nreventado para quitar verrugas'),
(1816,'michai','defender- proteger'),
(1817,'micharii','defenderse de- protegerse de'),
(1818,'michi','gato'),
(1819,'michichin','erizo- puerco espÃ­n'),
(1820,'miglla','falda'),
(1821,'migllachii','poner'),
(1822,'migllai','recibir'),
(1823,'migllarii','tomar'),
(1824,'mikuchii','dar de comer- servir'),
(1825,'mikuchirii','ofrecerse comida mutuamente'),
(1826,'mikui','comida- alimento- cualquier cosa comestible'),
(1827,'mikui','comer'),
(1828,'mikuri','sabor'),
(1829,'mikurii','saborear- probar - alimentarse'),
(1830,'milma','lana- vello- pelo'),
(1831,'milmaiai','salir lana- salir vello- salir pelo'),
(1832,'milmunchu','lanudo- peludo- velludo'),
(1833,'millachii','repugnar- dar asco- hacer que alguien sienta nauseas'),
(1834,'millai','sentir indisposiciÃ³n.'),
(1835,'millaipa iacha','brujo'),
(1836,'millanga','repugnante- malo'),
(1837,'millarii','sentir nauseas- sentir indisposiciÃ³n'),
(1838,'mindiliku','pÃ¡jaro amarillo- negro y blanco'),
(1839,'mingachii','brindar'),
(1840,'mingai','encargar'),
(1841,'mingarii','encargarse'),
(1842,'minguadu','tacaÃ±o'),
(1843,'minguanti','tiempo de luna llena'),
(1844,'mini','trama'),
(1845,'ministidu','necesitado'),
(1846,'ministii','tener necesidad de'),
(1847,'ministirii','llegar a necesitar'),
(1848,'ministiskakuna','necesitados'),
(1849,'mirachii','recolectar- recoger- ahorrar- rejuntar'),
(1850,'mirai','aumentar- rejuntar'),
(1851,'mirarii','rejuntarse'),
(1852,'misitu','gato'),
(1853,'misitutum','gatico'),
(1854,'miski','dulce- miel- panela- sabroso'),
(1855,'miski asna','buen olor'),
(1856,'miski chunchullu','parte mÃ¡s delgada de los intestinos'),
(1857,'miski puru','panal- depÃ³sito de miel'),
(1858,'miski simi','atrayente- convincente'),
(1859,'miskiai','volverse agradable- volverse dulce- volverse sabroso'),
(1860,'miskichii','aparecer agradable- aparecer sabroso- \nsaber agradablemente.'),
(1861,'miskirii','sentir placer'),
(1862,'miskuinaiachii','enredar'),
(1863,'Misha misha','grito'),
(1864,'mishachii','sahumar'),
(1865,'mishachirii','hacerse sahumar'),
(1866,'mishai','inhalar el humo que sale de la preparaciÃ³n hecha por un mÃ©dico tradicional.'),
(1867,'mishai ispina','clase de espina larga que se encuentra en el monte'),
(1871,'mishu','astuto- ratero'),
(1872,'mitikuchii','hacer huir'),
(1873,'mitikui','huir- fugarse'),
(1874,'mitikurii','emprender la fuga'),
(1875,'muchai','besar'),
(1876,'mucharii','besarse'),
(1877,'muchilingu','cortico'),
(1878,'muchingu','pantalonsito'),
(1879,'muiu','pepa- pepita- grano- semilla'),
(1880,'muiuchii','rodear- poner alrededor'),
(1881,'muiugta','todo alrededor'),
(1882,'muiui','dar la vuelta- ir alrededor de- bailar'),
(1883,'muiuiai','salir granos volverse fruto'),
(1884,'muiundi','con todas las pepas alrededor'),
(1885,'muiurii','dar vueltas en un cÃ­rculo- girar'),
(1886,'mujusiai','criar moho'),
(1887,'mujusiaska','criado moho'),
(1888,'mukillu','Ã¡rbol moquillo'),
(1889,'muku','masa'),
(1890,'mukui','mascar- masticar'),
(1891,'mukuiai','llegar a que se amasen - revenirse'),
(1892,'mukurii','mascar un poco- masticar'),
(1893,'mukuska','mascado- masticado'),
(1894,'Mukutsui','vereda santiagueÃ±a El Diviso'),
(1895,'mulija','molleja'),
(1896,'mullu','retorcido- desigual'),
(1897,'mulluiachii','retorcer y desigualar'),
(1898,'mulluiai','retorcerse y desigualarse'),
(1899,'mulluiaska','enredado- retorcido- desigualado'),
(1900,'munachi','atractivo- atrayente'),
(1901,'munachii','hacer que alguien quiera- tenga ganas de - hacer que alguien ame'),
(1902,'munai','querer- desear- amar'),
(1903,'munarii','llegar a querer- quererse - amarse'),
(1904,'munaska','querido- amado'),
(1905,'muntun sitachii','hacer que alguien haga la primera desyerba del maizal'),
(1906,'muntun sitai','repelar- hacer la primera desyerba del maizal'),
(1907,'muntunai','amontonar'),
(1908,'munu chimbachii tunu','melodÃ­a antigua que se tocaba en el arpa'),
(1909,'murkilla','lombriz gruesa- llena de sangre- hasta un metro de longitud rellena'),
(1910,'murtajai','amortajar'),
(1911,'muru','redondo- entumido'),
(1912,'muruchu','muy duro- sÃ³lido'),
(1913,'muruchu simi','persona que no delata nada- persona que no divulga secretos'),
(1914,'muruchu sungu','corajudo- con coraje- sin miedo'),
(1915,'muruchuiai','endurecerse'),
(1916,'murui','tejer flecos con los dedos - recortar \n'),
(1917,'muruiachii','reducir el volumen- redondear- enrollar- apretar'),
(1918,'muruiai','redondearse- apretarse - encogerse'),
(1919,'muskuchii','hacer que alguien sueÃ±e'),
(1920,'muskui','soÃ±ar'),
(1921,'muskui ukupisina','una visiÃ³n- alucinaciÃ³n'),
(1922,'muskurii','ponerse a soÃ±ar'),
(1923,'muspachii','hacer que alguien tenga pesadillas'),
(1924,'muspai','pesadilla'),
(1925,'musparii','quejarse a causa de una pesadilla- tener una pesadilla'),
(1926,'musu','nuevo'),
(1927,'musuglla','primera vez- de nuevo'),
(1928,'musuiachii','renovar- pintar'),
(1929,'musuiai','llegar a la juventud - rejuvenecerse- volverse nuevo- renovarse'),
(1930,'Mushilajim','Pobre niÃ±ito'),
(1931,'mushuna','papa natural- negra con tubÃ©rculos largos'),
(1932,'muti','maÃ­z cocido- mote'),
(1933,'mutilun','Ã¡rbol cuya fruta es negra y comestible'),
(1934,'nabjuchiska','mezclado'),
(1935,'nabjui','revolver con la papa'),
(1936,'namis aswa','chicha hecha del tubÃ©rculo namis'),
(1937,'nana','doloroso'),
(1938,'nanachii','causar dolor- herir- cortar'),
(1939,'nanachiri','dolor - herida'),
(1940,'nanachirii','tener dolor - recibir un corte'),
(1941,'nanai','Doler'),
(1942,'nanarii','comenzar a doler'),
(1943,'naranjilla','lulo'),
(1944,'nasichii','dar a luz- parir'),
(1945,'nasirii','brotar- nacer'),
(1946,'nawina','clase de Ã¡rbol'),
(1947,'ni','ni'),
(1948,'ni ima','nada'),
(1949,'ni imapas','nada'),
(1950,'nigpi','entonces'),
(1951,'nii','decir'),
(1952,'nimistidu','necesitado'),
(1953,'nina','candela- fuego- braza'),
(1954,'nina churai','poner candela- prender candela'),
(1955,'nina kilimsa','carbÃ³n encendido- ardiendo en la candela'),
(1956,'nina kuru','mosco iluminado'),
(1957,'nina rupachii','incendiar'),
(1958,'nina sindi','llama'),
(1959,'ninaiachii','hacer bastante braza- hacer candela- prender fuego'),
(1960,'ninaiai','hacerse braza- incendiar'),
(1961,'niraiai','significar- querer decir'),
(1962,'nirii','decirse'),
(1963,'nispa','despuÃ©s- luego'),
(1964,'nuka','yo - mi'),
(1965,'nukanchi','pron nosotros'),
(1966,'nukanchi','nuestro'),
(1967,'nukapa','mi'),
(1968,'nukikin','yo mismo'),
(1969,'Ã±a','ahora- ya'),
(1970,'Ã±agcha','peine'),
(1971,'Ã±agchachii','hacer que alguien peine'),
(1972,'Ã±agchai','peinar'),
(1973,'Ã±agcharii','peinarse'),
(1974,'Ã±alla','casi'),
(1975,'Ã±ambi','camino- senda- trocha- ruta- carretera'),
(1976,'Ã±ambichii','abrir camino- hacer trocha'),
(1977,'Ã±aÃ±a','hermana- tÃ©rmino de parentesco empleado entre mujeres de la misma edad'),
(1978,'Ã±aÃ±a ninga','hermanastra'),
(1979,'Ã±aÃ±u','delgado'),
(1980,'Ã±aÃ±uiachii','adelgazar- hacer que alguien se vuelva delgado'),
(1981,'Ã±aÃ±uiai','volverse delgado- enflaquecerse'),
(1982,'Ã±aÃ±usu','esbelto'),
(1983,'Ã±awi','ojo- vista- cara'),
(1984,'Ã±awi amsa','perdida parcialmente la vista'),
(1985,'Ã±awi amsaiachii','engaÃ±ar'),
(1986,'Ã±awi amsaiai ','enceguecerse'),
(1987,'Ã±awi bina','hierba medicinal que se pone en los ojos para curarlos'),
(1988,'Ã±awi kapisaiu','se refiere a las lÃ­neas que tiene la ruana en diferentes colores'),
(1989,'Ã±awi kilpaska','enmascarado'),
(1990,'Ã±awi milma','pestaÃ±a'),
(1991,'Ã±awi muru','pupila del ojo'),
(1992,'Ã±awi ura ladu','pÃ¡rpado inferior'),
(1993,'Ã±awi wistu','bizco'),
(1994,'Ã±i','ni'),
(1995,'Ã±i imaurapas','nunca- jamÃ¡s'),
(1996,'Ã±i ima','nada'),
(1997,'Ã±i imapas','nada'),
(1998,'Ã±i pipas','pron nadie- ninguno'),
(1999,'Ã±ibui','alzar con la mano una puÃ±adita- alzar una manojada'),
(2000,'Ã±iburii','tomar una puÃ±adita con la mano- tomar una manojada'),
(2001,'Ã±itichii','incrustar- hacer que alguien entre- dejar que alguien meta'),
(2002,'Ã±itichirii','hacer meter a uno mismo'),
(2003,'Ã±itii','meter'),
(2004,'Ã±itirii','meterse- incrustarse'),
(2005,'Ã±itiska','incrustado- metido'),
(2006,'Ã±itkarii','golpearse el dedo del pie- tropezarse'),
(2007,'Ã±itu','nieto'),
(2008,'Ã±udu','nudo- codo'),
(2009,'Ã±ug','antes'),
(2010,'Ã±ugpa','adelante- primero'),
(2011,'Ã±ugpa ladu','por delante- adelante'),
(2012,'Ã±ugpachii','guÃ­a'),
(2013,'Ã±ugpai','ir adelante- seguir delante'),
(2014,'Ã±ugpamanda','lo de antiguo- lo anterior- lo de antes- lo pasado'),
(2015,'Ã±ugpamandata','desde antes'),
(2016,'Ã±ugparii','ponerse adelante- adelantarse'),
(2017,'Ã±ugpata','anteriormente'),
(2018,'Ã±utu','diminuto- menudo- fino'),
(2019,'Ã±utu Ã±utu','diminutamente- finamente'),
(2020,'Ã±utuchii','desmenuzar- hacer que algo se vuelva harina- hacer que algo se vuelva polvo'),
(2021,'Ã±utui','volverse harina- volverse polvo'),
(2022,'Ã±utuiachii','triturar- despedazar'),
(2023,'Ã±utuiachiska','triturado- despedazado'),
(2024,'Ã±utuiai','desmenuzarse- triturarse- despedazarse- hacerse mÃ¡s fino'),
(2025,'Ã±uturii','desmenuzarse- volverse harina- volverse polvo'),
(2026,'pacha','especie de manta de la mujer indÃ­gena- ropa'),
(2027,'pagachii','hacer que alguien pague'),
(2028,'pagchachii','hacer que alguien se agache'),
(2029,'pagchai','invertir- agachar- tomar rÃ¡pido - poner boca abajo'),
(2030,'pagcharii','agacharse- inclinarse- acostarse'),
(2031,'pagchaska','boca abajo'),
(2032,'pagta','lleno - preparado'),
(2033,'pagtachii','hacer que alguien alcance- hacer que quepa'),
(2034,'pagtai','alcanzar- caber'),
(2035,'pagtarii','estirarse - acomodarse - alcanzarse'),
(2036,'Pai','Dios se lo pague'),
(2037,'Pai Mamita','expresiÃ³n usada para agradecer: a una mujer - a cualquiera'),
(2038,'Pai nii','agradecer- dar gracias- devolver'),
(2039,'Pai SiÃ±ur','expresiÃ³n usada para agradecer a un hombre'),
(2040,'paiku','hierba medicinal â€œpaicoâ€- de la cual se preparan vermÃ­fugos'),
(2041,'pajaku','Ã¡rbol cuyas pepas sirven para teÃ±ir'),
(2042,'pakachii','cubrir'),
(2043,'pakai','esconder- ocultar'),
(2044,'pakai jinti','inga de Guayuyaco'),
(2045,'pakakuchii','hacer que alguien se esconda- hacer que se oculte- hacer que se escampe- esconder- ocultar'),
(2046,'pakakui','esconderse'),
(2047,'pakakurii','protegerse- cubrirse- escamparse'),
(2048,'pakalla','a ocultas- a escondidas- en secreto- secretamente'),
(2049,'pakallaiachii','esconder- ocultar- hacer que algo se esconda'),
(2050,'pakallaiai','esconderse- ocultarse'),
(2051,'pakarichii','hacer que alguien amanezca'),
(2052,'pakarigta','hasta amanecer'),
(2053,'pakarii','amanecer'),
(2054,'Pakarinkama','Hasta maÃ±ana'),
(2055,'Pakaripuangi','Â¿CÃ³mo amaneciÃ³?'),
(2056,'pakichii','hacer que alguien quiebre- hacer que rompa'),
(2057,'pakichiska','triturado'),
(2058,'pakii','quebrar- romper'),
(2059,'pakirii','quebrarse'),
(2060,'pakiringalla','frÃ¡gil- muy dÃ©bil'),
(2061,'pakiska','quebrado- roto'),
(2062,'pakunga','clase de hierba comÃºn que crÃ­a en los maizales'),
(2063,'pala','pala- hueso del homoplato'),
(2064,'paliachii','trabajar con una pala'),
(2065,'palmu','medida de una cuarta'),
(2066,'palmui','medir una cuarta'),
(2067,'palmurii','medirse una cuarta'),
(2068,'pallachii','hacer que alguien vaya a cosechar'),
(2069,'pallai','cosecha'),
(2070,'pallai','cosechar- recoger'),
(2071,'pallarii','estar a punto de cosecha'),
(2072,'pamba','plan- plano- llano'),
(2073,'pambachii','hacer que alguien entierre'),
(2074,'pambai','enterrar- sepultar'),
(2075,'pambaiachii','aplanar'),
(2076,'pambaiai','volverse plano- aplanarse'),
(2077,'pambaraiai','estar enterrado'),
(2078,'pambarii','enterrarse- esconderse- ocultarse'),
(2079,'pamilia','familia'),
(2080,'panagta','abnormalmente pequeÃ±o'),
(2081,'panda','por equivocaciÃ³n- equivocadamente'),
(2082,'panda panda','equivocadamente'),
(2083,'pandachii','hacer que alguien falle- distraer'),
(2084,'pandai ','equivocar'),
(2085,'pandarii','equivocarse'),
(2086,'panga','hoja'),
(2087,'pangaiachii','reverdecer'),
(2088,'pangaiai','reverdecerse'),
(2089,'pangawanta kusai','asar sin quitar las hojas'),
(2090,'pani','hermana- tÃ©rmino de parentesco empleado por un varÃ³n para referirse a una mujer de la misma edad'),
(2091,'pani ninga','hermanastra'),
(2092,'papa','papas- cualquier planta bulbosa'),
(2093,'paramu','pÃ¡ramo'),
(2094,'paramu pisku','pÃ¡jaro azulejo'),
(2095,'pariju','juntos- uniforme'),
(2096,'parikirii','volverse medio presentable'),
(2097,'paris','dos veces'),
(2098,'parisiai','repetir- hacer un acto dos veces'),
(2099,'parisidu','bien presentado'),
(2100,'parisma','segunda vez'),
(2101,'parlai','contar cuentos- conversar- hablar'),
(2102,'parlu','cuento'),
(2103,'pasachii','hacer que alguien pase - hacer que alguien sufra'),
(2104,'pasag','cien'),
(2105,'pasag chakiiug','ciempiÃ©s'),
(2106,'pasagta','demasiado'),
(2107,'pasai','pasar - sufrir'),
(2108,'pasarii','suceder'),
(2109,'Pasinsia','Perdone'),
(2110,'pasinsiai','perdonar'),
(2111,'pasinsiarii','calmarse - perdonarse'),
(2112,'paska','abierto'),
(2113,'paskachii','hacer que alguien abra'),
(2114,'paskai','abrir- desatar'),
(2115,'paskaraiai','estar abierto'),
(2116,'paskarii','abrirse- desatarse'),
(2117,'paskaska','abierto- desatado'),
(2118,'paspa','enfermedad de la parte inferior de la pierna que resulta de caminar a la intemperie entre el barro y el sol'),
(2119,'pata','borde- filo- barranco- una loma mÃ¡s alta'),
(2120,'patakun','moneda de ocho reales un peso'),
(2121,'patarichii','hacer que alguien doble - arquear'),
(2122,'patarii','doblar'),
(2123,'pataririi','doblarse- arquearse- hacerse curvo'),
(2124,'pataska builtu','envuelto de maÃ­z pelado'),
(2125,'pataska','pelado sin frÃ­joles'),
(2126,'pataskai','pelar con ceniza el maÃ­z para cocinarlo'),
(2127,'pataskaska','pelado'),
(2128,'patsa','cien- ciento'),
(2129,'pawai','brincar- saltar'),
(2130,'pawarii','ponerse a brincar- ponerse a saltar- dar sobresaltos'),
(2131,'pi','rel quien'),
(2132,'piachii','hacer que alguien golpee'),
(2133,'piai','pegar- dar'),
(2134,'piarii','unirse'),
(2135,'piaririi','pegarse'),
(2136,'pichai','barrer- limpiar'),
(2137,'pichangiru','persona que se hace curandero y engaÃ±a a la gente- mÃ©dico o yerbatero falso que cura soplando'),
(2138,'picharii','limpiarse'),
(2139,'pichi','pÃºrpura- rojo- colorado'),
(2140,'pichiachii','enrojecer'),
(2141,'pichiai','enrojecerse- estar enrojeciendo'),
(2142,'pichinga','palo de caÃ±a que se coloca entre una faja chumbi, al tejerla'),
(2143,'pichka','cinco'),
(2144,'pichka chunga','cincuenta'),
(2145,'pichka patsa','quinientos'),
(2146,'pigachii','hacer que alguien golpee'),
(2147,'pigai','pegar- dar golpes'),
(2148,'pigarii','unirse'),
(2149,'pigaririi','pegarse'),
(2150,'pigun','peÃ³n'),
(2151,'pikai','limpiar - picar'),
(2152,'pikangi','pÃ¡jaro negro con patas blancas que canta Chuchui chuchui'),
(2153,'piki','pulga'),
(2154,'pikudu','tucÃ¡n'),
(2155,'pilarii','pelarse- sacarse- afeitarse.'),
(2156,'pilchi','totuma pequeÃ±a- vasija hecha del fruto de un Ã¡rbol'),
(2157,'piliai','pelear- terminar'),
(2158,'piliarii','pelearse- alegar- discutir'),
(2159,'pilis','piojo blanco'),
(2160,'pilisai','sacar con los dientes la parte carnosa de una fruta o de un hueso'),
(2161,'pinachu','corona de plumaje de aves que utilizaba los mÃ©dicos tradicionales'),
(2162,'pinga','vergonzoso'),
(2163,'pinga siki','vergonzoso'),
(2164,'pingachii','avergonzar'),
(2165,'pingai','vergÃ¼enza'),
(2166,'pingari','sonriente- coqueto- un poco risueÃ±o'),
(2167,'pingarii','avergonzarse'),
(2168,'pinina','el acto de ponerse de pies - los primeros pasos'),
(2169,'pininai','pararse- ponerse de pies - dar los primeros pasos'),
(2170,'pininarii','comenzar a pararse - principiar a dar los primeros pasos'),
(2171,'pinllu','planta tÃ³xica cuya leche infecta la piel'),
(2172,'pinu','intens muy- sumamente- totalmente'),
(2173,'pinutilla','arbolito del Valle de Sibundoy que sirve solamente de chaclas'),
(2174,'piÃ±a kupal','piedra â€œdepÃ³sito del avejÃ³n en la peÃ±aâ€ que, al calentarse produce un aroma'),
(2175,'piÃ±achii','hacer que alguien se disguste- enojar a alguien'),
(2176,'piÃ±achirii','enojarse mutuamente- debatir con- enojarse consigo mismo'),
(2177,'piÃ±ai','regaÃ±ar'),
(2178,'piÃ±arii','enojarse - negar'),
(2179,'piÃ±aspa iuiachii','reprender'),
(2180,'pipanu','mentiroso'),
(2181,'pipas','cualquiera- quienquiera'),
(2182,'pirdunai','perdonar'),
(2183,'pirdunarii','perdonarse'),
(2184,'pirindinga','arete'),
(2185,'pisi','falta'),
(2186,'pisiachii','mermar- bajar la cantidad'),
(2187,'pisiag','que da mÃ¡s ganas- apetitoso'),
(2188,'pisiai','mermar- bajar la cantidad- disminuirse'),
(2189,'pisiglla','de lejos'),
(2190,'pisii','faltar- hacer que algo falte- carecer de'),
(2191,'pisirii','mermarse'),
(2192,'pisku','ave- pÃ¡jaro'),
(2193,'pisku chupu','hematoma'),
(2194,'pisku singa','pico de ave'),
(2195,'pisku wasi','nido de pÃ¡jaro'),
(2196,'pitak','interrog quiÃ©n'),
(2197,'piti','pedazo'),
(2198,'piti piti','a pedazos'),
(2199,'pitichii','despedazar'),
(2200,'pitichirii','despedazarse'),
(2201,'pitii','arrancar - cosechar - desprender- desunir- fraccionar- separar'),
(2202,'pitirii','arrancarse- desprenderse'),
(2203,'piun','peÃ³n'),
(2204,'planchai','aplanchar'),
(2205,'planiai','dar planazos'),
(2206,'plicha','flecha'),
(2207,'plujiarii','aflojarse- acobardarse- acomplejarse'),
(2208,'Puangi','Â¿EstÃ¡ bien?- Â¿Buenos dias?'),
(2209,'Puchka','expresiÃ³n de sobresalto'),
(2210,'puchkai','hilar- torcer'),
(2211,'puchkanga','huso'),
(2212,'puchkanga kaspi','palito del huso de hilar'),
(2213,'puchkaska','hilado'),
(2214,'puchku','agrio'),
(2215,'puchkui','volverse agrio- volverse Ã¡cido- cortarse'),
(2216,'puchkurii','volverse un poco agrio'),
(2217,'puchkuriska','un poco agrio- un poco fermentado'),
(2218,'puchu','mutilado- truncado'),
(2219,'puchuchii','dejar algÃºn resto- hacer que algo sobre'),
(2220,'puchui','sobrar'),
(2221,'puchukai','terminaciÃ³n'),
(2222,'puchukai','terminar- acabar - matar'),
(2223,'puchukarii','acabarse - fallecer- terminar'),
(2224,'puchuska','sobrado- la sobra'),
(2225,'pudirii','poder uno mismo'),
(2226,'puglla siki','juguetÃ³n'),
(2227,'pugllachii','hacer que alguien juegue'),
(2228,'pugllai','jugar - juguetear'),
(2229,'pugllarii','jugar - jugar uno con otro'),
(2230,'pugri','pobre'),
(2231,'pugriai','empobrecer'),
(2232,'puiblu','pueblo'),
(2233,'puiu','nube'),
(2234,'puiu jundai','nublarse'),
(2235,'puiuiachii','hacer que se ahumee- hacer que salga humo'),
(2236,'puiuiai','salir nubes- salir humo'),
(2237,'puiuiarii','evaporarse'),
(2238,'pujai','jadear'),
(2239,'pujarii','respirar muy fuerte'),
(2240,'puka','rojo- colorado'),
(2241,'puka puchku wiru','planta que sirve para la disenterÃ­a'),
(2242,'pukaiachii','enrojecer- castigar'),
(2243,'pukaiai','enrojecerse'),
(2244,'pukuchii','madurar hacer que alguien sople'),
(2245,'pukui','soplar'),
(2246,'pukuna','junco- clase de bambÃº'),
(2247,'pukunga','clase de bambÃº que se usa para hacer canastos'),
(2248,'pukurii','madurarse- llegar a la madurez soplarse'),
(2249,'pukuska','maduro- madura'),
(2250,'pukusu','de color castaÃ±o'),
(2251,'pululu sacha','planta â€œsindayoâ€'),
(2252,'Pulun','ruido producido por una caÃ­da o \ngolpe'),
(2253,'puma','leÃ³n americano'),
(2254,'puma maki','Ã¡rbol â€œyarumoâ€ de hojas anchas y digitadas'),
(2255,'puncha','brillante- transparente'),
(2256,'puncha iaku','aguardiente'),
(2257,'punchaiachii','hacer que alguien alumbre- hacer que aclare- hacer que brille'),
(2258,'punchaiai','aclarar- alumbrarse- brillar- llegar el dÃ­a- atrasarse'),
(2259,'punchalla','claro- clarito- brillante'),
(2260,'pungi','hinchado- inflamado'),
(2261,'pungichii','inflar- abultar- inflama'),
(2262,'pungii','hincharse- inflarse- abultarse- acrecentar'),
(2263,'pungirii','hincharse- inflarse'),
(2264,'pungiska','hinchado- inflamado'),
(2265,'pungu','puerta'),
(2266,'punsuÃ±u','ponsoÃ±a'),
(2267,'puÃ±iti','puÃ±o- mano bien armada'),
(2268,'puÃ±itiai','dar puÃ±etazos'),
(2269,'puÃ±itianakui','darse de puÃ±os- boxear'),
(2270,'puÃ±u siki','dormilÃ³n'),
(2271,'puÃ±uchii','hacer que alguien se duerma'),
(2272,'puÃ±udiru','cama- estera- mueble donde uno duerme'),
(2273,'puÃ±ui','sueÃ±o'),
(2274,'puÃ±ui','dormir'),
(2275,'puÃ±unaiai','tener sueÃ±o- tener ganas de dormir'),
(2276,'puÃ±urii','dormirse- ponerse a dormir'),
(2277,'pupu','ombligo parte del banano donde desprende la flor'),
(2278,'purichii','hacer que alguien ande- hacer que camine- hacer que pasee'),
(2279,'purig kaspi','palo utilizado al techar una casa'),
(2280,'purii','andar- caminar- pasear- viajar'),
(2281,'puririi','pasearse- andar despacio'),
(2282,'puru','fruto de Ã¡rbol o de bejuco como la calabaza '),
(2283,'puru singa','trompa- cuello del puru'),
(2284,'puruiachii','abrir un hueco'),
(2285,'purupuru','curuba- bejuco trepador â€œtausoâ€ con flores rosadas- que produce una fruta agridulce'),
(2286,'purutu','frÃ­jol â€œporotoâ€- planta leguminosa'),
(2287,'pusachii','hacer que alguien lleve- hacer que conduzca'),
(2288,'pusachimui','hacer que alguien traiga- hacer que conduzca hacia acÃ¡'),
(2289,'pusadarii','hospedarse'),
(2290,'pusag','ocho'),
(2291,'pusag','guÃ­a- el que lleva'),
(2292,'pusag chunga','ochenta'),
(2293,'pusag patsa','ochocientos'),
(2294,'pusai','conducir- guiar- llevar'),
(2295,'pusamui','conducir hacia acÃ¡- guiar hacia acÃ¡- traer'),
(2296,'pusu','hueco- pozo'),
(2297,'pusun','estÃ³mago mayor de los rumiantes'),
(2298,'puti','canasta bien tupida con tapa'),
(2299,'rabiachii','enojar a alguien'),
(2300,'rabiachirii','enojarse consigo mismo o de uno a otro- disgustarse'),
(2301,'rabiai','rabiar- enojar'),
(2302,'rabiari','bravo- enojado'),
(2303,'rabiarii','enojarse- ponerse bravo- volverse caprichoso'),
(2304,'rabiariska','enojado'),
(2305,'raka','vagina- vulva'),
(2306,'rakacha','planta de las umbelÃ­feras- de raÃ­z larga y comestible'),
(2307,'raku','grueso'),
(2308,'rakuiachii','engrosar- hacer que se engrose'),
(2309,'rakuiai','engrosarse- volverse grueso'),
(2310,'rama','aporte- contribuciÃ³n'),
(2311,'ramachii','exigir una contribuciÃ³n- hacer que ayude'),
(2312,'ramai','auxiliar- contribuir- prestar ayuda \n bramar'),
(2313,'ramarii','colaborar mutuamente - contribuir - ayudarse bramarse'),
(2314,'randichii','desquitarse - devolver un brindis en otra ocasiÃ³n orientar para que compre'),
(2315,'randii','comprar'),
(2316,'rapiai','dar un tirÃ³n- dar una contracciÃ³n \nnerviosa'),
(2317,'rapiarii','dar una contracciÃ³n nerviosa de un mÃºsculo'),
(2318,'rasia','chistoso- gracioso'),
(2319,'rasiunai','racionar- distribuir'),
(2320,'rasiunarii','repartirse- distribuirse- servirse'),
(2321,'rastrujiai','arar- labrar la tierra para la primera siembra'),
(2322,'rastruju','limpieza de la tierra para la primera siembra'),
(2323,'raura','ardiencia- ardor de la piel- por contacto con algo picante'),
(2324,'raurai','arder- picar'),
(2325,'raurarii','arder- picar'),
(2326,'razu','brazo'),
(2327,'ribitiaska','adornado con cinta al filo del rebozo de la mujer'),
(2328,'ribuldarii','eructar'),
(2329,'rigcha','figura- semejante- de color...'),
(2330,'rigchachii','despertar'),
(2331,'rigchai','parecer'),
(2332,'rigcharaiai','estar despierto'),
(2333,'rigcharii','despertarse'),
(2334,'rigsi','que conoce- que sabe'),
(2335,'rigsichii','hacer que alguien conozca'),
(2336,'rigsichirii','darse a conocer'),
(2337,'rigsidu','conocido'),
(2338,'rigsii','conocer'),
(2339,'rigsiiug','que tiene muchos maridos'),
(2340,'rigsiri','que se conoce'),
(2341,'rigsirii','darse a conocer'),
(2342,'rii','ir'),
(2343,'riipi','en el viaje'),
(2344,'rikaida','recaÃ­da- infecciÃ³n causada en una herida por el sol o por el agua'),
(2345,'rikuchii','permitir que alguien reciba'),
(2346,'rikuchirii','permitirse recibir'),
(2347,'rikuiai','enriquecerse'),
(2348,'Rikungillapas','Me las pagarÃ¡s'),
(2349,'rilampa','relÃ¡mpago'),
(2350,'rilampai','relampaguear'),
(2351,'rimachii','hacer que alguien hable'),
(2352,'rimai','hablar'),
(2353,'rimai pakaska','privado del habla'),
(2354,'rimarii','hablar dentro de un grupo- tomar la palabra'),
(2355,'rimpi','en el viaje'),
(2356,'Ringa','Vamos'),
(2357,'rinri','oreja- oÃ­do'),
(2358,'ririi','deladearse'),
(2359,'riririi','desplomarse- trastrabillar- tambalearse'),
(2360,'risku','riesgo- peligroso'),
(2361,'rispitarii','respetarse mutuamente'),
(2362,'Risunchi','VÃ¡mos'),
(2363,'ruachii','solicitar algÃºn favor hacer que alguien trabaje- hacer que alguien haga - hacer que alguien elabore'),
(2364,'ruai','pedir- rogar hacer'),
(2365,'ruku','viejo- un viejo'),
(2366,'ruku sacha','montaÃ±a virgen- monte viejo'),
(2367,'ruku sacha iuiu','col de monte'),
(2368,'rukuiachii','envejecer'),
(2369,'rukuiai','envejecer- llegar a ser viejo'),
(2370,'rukuti','clase de ajÃ­ grande '),
(2371,'rumadisu','gripa- mocos'),
(2372,'rumi','piedra'),
(2373,'rumisu','pedregoso'),
(2374,'rumu','yuca'),
(2375,'runa','hombre- gente- persona'),
(2376,'runa simi','idioma inga'),
(2377,'rundadur','rondador'),
(2378,'rundu','huevo'),
(2379,'ruÃ±ii','alisar - pulir'),
(2380,'rupa','caliente'),
(2381,'rupachii','quemar'),
(2382,'rupai','arder- quemarse'),
(2383,'rupaiachii','calentar'),
(2384,'rupaiai','abrigarse- calentarse- tibiarse'),
(2385,'ruparii','sentir calor'),
(2386,'rupaska','quemado- ahumado'),
(2387,'rurachii','hacer que alguien trabaje- hacer que alguien haga - hacer que alguien elabore'),
(2388,'rurachirii','hacer trabajar algo - hacerse confeccionar algo'),
(2389,'rurai','hacer- confeccionar- elaborar- fabricar'),
(2390,'rurarii','elaborarse- hacer algo para uno mismo'),
(2391,'rustugtu','flor amarilla cuyos pÃ©talos se esparcen durante los dÃ­as de Carnaval'),
(2392,'rutui','trasquilar - cortar'),
(2393,'ruturii','trasquilarse- cortarse el cabello'),
(2394,'rutuska','trasquilado- cortado'),
(2395,'sacha','Ã¡rbol'),
(2396,'sacha alku','perro de monte- lobo'),
(2397,'sacha atawalpa','gallineta de monte'),
(2398,'sacha kuashag','mate'),
(2399,'sacha kui','pintadillo'),
(2400,'sacha misitu','tigrillo'),
(2401,'sacha panga','hoja bien ancha- como la de achira'),
(2402,'sacha papa','tubÃ©rculo silvestre'),
(2403,'sacha puru','calabaza de Ã¡rbol'),
(2404,'sacha siki','pie del Ã¡rbol'),
(2405,'sacha wagra','danta'),
(2406,'sacha waira','espÃ­ritu del monte'),
(2407,'sachaiug','que tiene muchos Ã¡rboles'),
(2408,'sachuku aicha','carne de cacerÃ­a'),
(2409,'sachuku gallu','gallito del monte'),
(2410,'sachuku jinti','guerrilla'),
(2411,'sachuku','bosque- monte- montaÃ±a adentro'),
(2412,'sachukuiachii','dejar que crÃ­en Ã¡rboles- monte'),
(2413,'sachukuiai','volverse monte- volverse bosque'),
(2414,'sagra','Ã¡spero- muy grueso- que no es liso'),
(2415,'sagraiachii','dejar que algo se quede Ã¡spero- dejar que se quede rugoso'),
(2416,'sagraiai','volverse Ã¡spero- volverse rugoso'),
(2417,'sagsachii','hacer que alguien se sacÃ­e- satisfacer - llenar'),
(2418,'sagsagta','hasta hartarse- hasta saciarse- hasta llenarse'),
(2419,'sagsai','saciarse'),
(2420,'sagsarii','llegar a llenarse'),
(2421,'sagsariska','lleno- empapado'),
(2422,'sagsaska','satisfecho - llena'),
(2423,'saia','muy vertical- empinado'),
(2424,'saiachii','colocar- plantar'),
(2425,'saiakui','estar parado- estar de pies- estar plantado- estar quieto'),
(2426,'saiakuska','parado- puesto de pies'),
(2427,'saiarii','pararse- ponerse de pies'),
(2428,'saiariska mama','madrina de matrimonio'),
(2429,'saiariska taita','padrino de matrimonio'),
(2430,'saiariska wawa','ahijado/-a de matrimonio'),
(2431,'saikuchii','cansarle'),
(2432,'saikugta','hasta cansarse'),
(2433,'saikui','cansar'),
(2434,'saikurii','cansarse'),
(2435,'saikuska','cansado'),
(2436,'sainu','saÃ­no- cerdo montaraz'),
(2437,'sakichii','impedir- hacer que deje'),
(2438,'sakii','dejar- abandonar'),
(2439,'sakirii','dejarse'),
(2440,'salamangiai','espiritista que practica la magia- persona que hace trucos'),
(2441,'Salaug salaug','chillido del tordo chiwaku'),
(2442,'salbaji kuku','espÃ­ritu del monte'),
(2443,'salbaji kuku agcha','algo como polen que parece como cabello- se cree que es el cabello del salbaji kuku'),
(2444,'salbi iamta','leÃ±a consagrada al uso de la iglesia'),
(2445,'saltai','saltar- brincar'),
(2446,'saltarii','ponerse a saltar- ponerse a brincar- dar sobresaltos'),
(2447,'salvanji','diablo- espÃ­ritu maligno'),
(2448,'samachii','hacer que alguien descanse'),
(2449,'samai','descansar- brujear'),
(2450,'samai arkari','jadeante- asmÃ¡tico- que le falta respiraciÃ³n'),
(2451,'samai arkarii','jadear'),
(2452,'samai churai','dar aliento- dar suerte'),
(2453,'samai kachai','respirar'),
(2454,'samai karai','exhalar un aliento en las ceremonias para efectuar un secreto- expulsar un mal aire- quitar enfermedades o dar suerte.'),
(2455,'samai pagta','brujo- yerbatero que sabe todo lo relacionado con curaciones'),
(2456,'samaikui','quedar asustado- quedar afectado por un susto'),
(2457,'samaikurii','afectarse por un susto'),
(2458,'samaikuriska','asustado- afectado por un susto \n'),
(2459,'samanga','punto para descansar'),
(2460,'samarii','ponerse a descansar- calmar'),
(2461,'samba','dÃ©bil- flojo- muy cansado'),
(2462,'sambai','sangrar por las narices'),
(2463,'sambaiachii','hacer que alguien se debilite- hacer que se canse- hacer que se acobarde'),
(2464,'sambaiai','debilitarse- quedarse dÃ©bil- quedarse \nsin fuerza- acobardarse- cansarse'),
(2465,'sambaiaska','sin fuerzas- dÃ©bil- flojo'),
(2466,'sambarii','empezar a dar hemorragia nasal'),
(2467,'sambiku','especie de pez'),
(2468,'sambullii','sumergirse en el agua nadando'),
(2469,'sambungiru','bastante comilÃ³n - persona que se hace yerbatero y anda engaÃ±ando a la gente con pomadas'),
(2470,'Samsam','expresiÃ³n que se usa para referirse a alguna comida que le falta sal'),
(2471,'samsamiachii','preparar un poco simple- con poca sal.'),
(2472,'samsamiai','ensimplecerse- tener poca sal'),
(2473,'samui','venir'),
(2474,'Samusa','expresiÃ³n que se usa al entrar en una casa'),
(2475,'sandi','planta medicinal'),
(2476,'sangu','espeso'),
(2477,'sanguiachii','hacer espeso'),
(2478,'sanguiai','volverse espeso- volverse una masa- espesarse'),
(2479,'sansi','planta â€œsancieâ€ con ramitas muy finas y pepas negras que se usaban para teÃ±ir'),
(2480,'santu pisu','ciempiÃ©s'),
(2481,'sanua','almohada- cabecera- lo que se pone debajo de la leÃ±a para rajarla'),
(2482,'sanuai','colocar como almohada'),
(2483,'sapalla','solo- solitario'),
(2484,'sapallu','zapallo- calabaza de gran tamaÃ±o'),
(2485,'saparu','canasta tejida'),
(2486,'Sapi sapi','expresiÃ³n que se usa para asustar o ayentar a un gato'),
(2487,'sara','maÃ­z comprende las siguientes clases: iana sara - iura sara - julin/jullin sara - kapia sara - killu sara - muruchu sara - pintadu sara- puka sara - suma tusta sara'),
(2488,'sara api','mazamorra- sopa de maÃ­z'),
(2489,'sara builtu','envuelto de maÃ­z'),
(2490,'sara tanda','pan de maÃ­z'),
(2491,'sara ukucha','ratoncito del troje â€œdueÃ±o del maÃ­zâ€'),
(2492,'sara wiru','caÃ±a de maÃ­z'),
(2493,'sarasa','moteado- abigarrado- color guinea - de un color mixto'),
(2494,'sarasu','que estÃ¡ menos fresco que chugllu- pero mÃ¡s fresco que shuna'),
(2495,'sarasu api','sopa en base de maÃ­z sarasu'),
(2496,'sarasuiachii','dejar que se endurezca'),
(2497,'sarasuiai','endurecerse'),
(2498,'sarawai','personaje que bailaba en el Carnaval'),
(2499,'sarga','Ã¡spero- muy grueso- que no es liso'),
(2500,'sargaiachii','dejar que algo se quede Ã¡spero- dejar que se quede rugoso'),
(2501,'sargaiai','volverse Ã¡spero- volverse rugoso'),
(2502,'sarui','pisar'),
(2503,'sarurii','pisar lento'),
(2504,'sasichii','privar- hacer que alguien se abstenga- aconsejar que no se coman ciertos alimentos'),
(2505,'sasii','abstenerse de- no comer ciertos alimentos'),
(2506,'sasirii','abstenerse'),
(2507,'satichii','meter - hacer que alguien entre- incrustar'),
(2508,'satichirii','hacer meter a uno mismo'),
(2509,'satii','meter'),
(2510,'satirii','incrustarse- meterse'),
(2511,'satiska','incrustado- metido'),
(2512,'sauki','Ã¡rbol comÃºn que se siembra a orillas de las zanjas'),
(2513,'sauku','arbusto con flores diminutas y blancas'),
(2514,'sawina','almohada- cabecera'),
(2515,'sawinai','colocar como almohada'),
(2516,'sibta','planta morada oscura '),
(2517,'sibuju','clase de palo balsoso que sirve para leÃ±a'),
(2518,'sigsi','planta arÃ¡cea con tubÃ©rculos grandes y de hojas anchas- comida hecha de sigsi'),
(2519,'sigsichii','hacer que alguien se rasque- dar un poco de comezÃ³n'),
(2520,'sigsii','comezÃ³n- sentir un poco de comezÃ³n- sentir \nmucha rasquiÃ±a'),
(2521,'sigsirii','sentir mucha rasquiÃ±a'),
(2522,'sikachii','hacer que suba - subirle'),
(2523,'sikachirii','hacer que uno mismo suba- hacer que alce'),
(2524,'sikai','subir'),
(2525,'sikarii','subirse'),
(2526,'siki','nalgas- ano- trasero'),
(2527,'sikinchachii','reforzar'),
(2528,'sikinchai','llevar a las espaldas con un segundo rebozo'),
(2529,'sikincharaiai','estar cargado a las espaldas con un segundo rebozo'),
(2530,'sikincharii','cargar a las espaldas con un segundo rebozo'),
(2531,'sikinchaska','cargado a las espaldas con un segundo rebozo'),
(2532,'siluira','ciruela'),
(2533,'sillu','uÃ±a'),
(2534,'simaniru','trabajo comÃºn'),
(2535,'simbachii','entretejer'),
(2536,'simbai','amarrar - tejer- trenzar'),
(2537,'simbaraiai','estar amarrado'),
(2538,'simbarii','amarrarse - entretejerse'),
(2539,'simbaska','tejido grueso o ralo- entretejido - amarrado'),
(2540,'simi','boca'),
(2541,'simi kara','labio'),
(2542,'simi rimai','idioma- lengua- lenguaje'),
(2543,'simi wata','que no puede hablar bien'),
(2544,'simpri','ojalÃ¡ que'),
(2545,'sinchi','duro- fuerte'),
(2546,'sinchi sungu','que se sostiene frente a todo lo que sucede con durazÃ³n duro- miserable'),
(2547,'sinchiachii','sostener- hacer que se quede quieto- hacer que se endurezca'),
(2548,'sinchiai','ponerse fuerte- endurecerse- mantenerse fuerte'),
(2549,'sindichii','encender- prender'),
(2550,'sindii','encender- prender'),
(2551,'sindirii','encender- prenderse'),
(2552,'sindiska','encendido- prendido'),
(2553,'sindi','encender- llama'),
(2554,'singa','narÃ­z- narices'),
(2555,'singapalla','sÃ³lo de la nariz'),
(2556,'singui','cabecear- estar en peligro de voltearse'),
(2557,'sinta','faja delgada utilizada para amarrarse el cabello o como manillas en donde se guardaba el dinero'),
(2558,'sintirii','sentirse'),
(2559,'siÃ±idur','correa para el hombre'),
(2560,'sipas','joven- niÃ±a adolescente- seÃ±orita'),
(2561,'sipasiai','llegar a la juventud'),
(2562,'sipi','apretado'),
(2563,'sipigta','bien apretado- muy ajustado- \naprisionado'),
(2564,'sipii','ahorcar- estrangular'),
(2565,'sipirii','ahorcarse- estrangularse'),
(2566,'sirai','coser- remendar'),
(2567,'sirarii','coserse'),
(2568,'sirichii','acostarle'),
(2569,'sirikui','estar acostado'),
(2570,'siriraiai','estar acostado'),
(2571,'siririi','acostarse'),
(2572,'siruila','ciruela silvestre'),
(2573,'sisag','el que roba'),
(2574,'sisai','robar'),
(2575,'sisarii','robarse- coger una cosa sin permiso para comerla'),
(2576,'sisinda','motilÃ³n silvestre'),
(2577,'sisu','parÃ¡sito blanco â€œquÃ© haceresâ€ o â€œsiete luchasâ€ '),
(2578,'sisu sacha','Ã¡rbol que produce rasquiÃ±as'),
(2579,'sisurii','despiojarse- quitarse parÃ¡sitos sisu'),
(2580,'sitachii','hacer que alguien bote- hacer que tire- hacer que arroje'),
(2581,'sitai','botar- tirar- arrojar'),
(2582,'sitarii','zumbarse'),
(2583,'sitaska','abandonado'),
(2584,'subirna','una cosa pequeÃ±a agregada a la carga'),
(2585,'subrina','tÃ©rminos de parentesco para referirse a una persona de menos edad'),
(2586,'subrinu','tÃ©rminos de parentesco para referirse a una persona de menos edad'),
(2587,'suchu','que carece de extremedades - mutilado'),
(2588,'sug','uno- otro'),
(2589,'sug kaia','pasado maÃ±ana'),
(2590,'sug luarpi','en la otra vida'),
(2591,'sug puncha','anteayer- pasado maÃ±ana'),
(2592,'sug rigcha','diferente- de otro modo'),
(2593,'sug rigcha sug rigcha','de diferentes modos'),
(2594,'sugka','otro'),
(2595,'suglla','uno solo'),
(2596,'sugta','seis a uno- a otro'),
(2597,'sugta chunga','sesenta'),
(2598,'sugta patsa','seiscientos'),
(2599,'suiachii','hacer que alguien espere'),
(2600,'suiai','esperar'),
(2601,'suiarii','esperar'),
(2602,'suirtiai','hallar- topar una cosa'),
(2603,'suiu','por igual a todos- por todas partes en orden'),
(2604,'suiu rii','andar en fila- andar en orden'),
(2605,'suiuchii','poner en orden- uno trÃ¡s otro - hacer que pasen en orden'),
(2606,'suiui','ponerse en fila- ponerse en orden'),
(2607,'suiulla','uno tras otro'),
(2608,'suiumanda','en orden- en seguida'),
(2609,'suiumandata','todo en orden- desde el principio'),
(2610,'suiunigmanda','por todas partes sistemÃ¡ticamente en orden'),
(2611,'suiurii','ponerse en fila'),
(2612,'sukalai','rozar- cortar hierbas y Ã¡rboles pequeÃ±os'),
(2613,'sullui','abortar'),
(2614,'sullurii','abortar'),
(2615,'suma','bonito- hermoso- simpÃ¡tico- atrayente- \nbueno'),
(2616,'suma asna','perfume- buen olor'),
(2617,'suma asnai','coraza del asna iuiu'),
(2618,'suma iacha','mÃ©dico tradicional'),
(2619,'suma maki','que tiene buena mano para las siembras- para curar'),
(2620,'suma pinta kawai','cosmovisiÃ³n del mÃ©dico tradicional cuando toma yajÃ©'),
(2621,'sumaglla','bien'),
(2622,'sumai','gustarle'),
(2623,'sumaiachii','embellecer- glorificar- pintar'),
(2624,'sumaiai','embellecerse- glorificarse- hermosearse'),
(2625,'sumbiai','desprender la mazorca de tal forma que las hojas queden en el tallo'),
(2626,'sumbu','vacÃ­o'),
(2627,'sumbuiachii','vaciar- hacer cavidad'),
(2628,'sumbuiai','llegar a estar vacÃ­o- llegar a ser una cavidad'),
(2629,'sunai','limpiarse los mocos'),
(2630,'sungu','hÃ­gado- boje - corazÃ³n'),
(2631,'suni','largo- extenso'),
(2632,'suniachii','estirar- extender- alargar- hacer que algo alargue'),
(2633,'suniai','extenderse - alargarse- estirarse'),
(2634,'suniarii','extenderse- alargarse- alzarse'),
(2635,'sunichu','sumamente largo'),
(2636,'supi','gases- ventosidad'),
(2637,'supichii','hacer que se despidan gases- ventosidades'),
(2638,'supii','despedir gases- ventosidades'),
(2639,'supinaiai','desear despedir gases- \nventosidades'),
(2640,'supirii','despedir gases- ventosidades'),
(2641,'surkuchii','hacer que alguien saque- hacer que extraiga'),
(2642,'surkuchirii','hacerse sacar- hacerse extraer'),
(2643,'surkui','sacar- exprimir- extraer'),
(2644,'surkurii','sacarse'),
(2645,'surtija churaridiru didu','anular'),
(2646,'suspirachii','jadear'),
(2647,'susuchii','hacer que se cierna- hacer que se desprenda- hacer que derrame- hacer que caiga podar- cortar ramas'),
(2648,'susui','cernir- harnear'),
(2649,'susuka','alargado- apodo para una persona alta pero delgadita'),
(2650,'susukaiai','crecer- alargarse'),
(2651,'susunga','cedazo- cernidor- colador- harnero'),
(2652,'susurii','cernirse- desprenderse- gotear'),
(2653,'suti','nombre'),
(2654,'sutichii','nombrar- poner nombre'),
(2655,'sutichirii','nombrarse- ponerse nombre'),
(2656,'sutipa','cierto- de verdad- de veras- en realidad- verdaderamente'),
(2657,'sutu','con goteras'),
(2658,'sutuchii','hacer que gotee- hacer que derrame por gotas'),
(2659,'sutuchirii','hacer que se gotee'),
(2660,'sutui','gotear'),
(2661,'sutuiai','hacerse goteras'),
(2662,'suturi','lleno/-a de goteras'),
(2663,'suturii','caer gotas- derramarse por gotas'),
(2664,'shabima','llovizna- rocÃ­o - granizo- escarcha'),
(2665,'shabimachii','rociar- esparcir'),
(2666,'shabimai','rociar'),
(2667,'shabimarii','lloviznar- esparcirse - granizar- rociar escarcha'),
(2668,'shabujui','amortiguaciÃ³n- calambre persona que no enmienda'),
(2669,'shabujui','amortiguarse'),
(2670,'shabujurii','amortiguarse'),
(2671,'shabujuriska','amortiguado'),
(2672,'shachananai','jadeante'),
(2673,'shachii','sorprender- localizar- descubrir'),
(2674,'shachima','neblina baja que viene en buen tiempo- no muy espesa y que cambia de color'),
(2675,'shachimakuna','espÃ­ritu del monte'),
(2676,'shachina','inservible- jadeante'),
(2677,'shachinan','perro pequeÃ±o que come la caca de gallina'),
(2678,'shachirii','sorprender'),
(2679,'shama','casi podrida- que se convierte en polvo'),
(2680,'shamaiai','rebalsarse- polverizarse'),
(2681,'shamshana','pÃ¡jaro azul brillante â€œpiojosaâ€ que asusta a los otros que comen en la sementera- planta medicinal'),
(2682,'shan a','persona que queda en la casa \npara cuidarla'),
(2683,'shan a manga','olla muy delgada'),
(2684,'shan achii','hacer que alguien quede en la casa para cuidarla'),
(2685,'shan ai','quedar en la casa para cuidarla'),
(2686,'shauna','cabecera- almohada- lo que se pone debajo de la leÃ±a para partirla'),
(2687,'shaunai','colocar como almohada'),
(2688,'shawana api','colada de maÃ­z en la cual se aplica cierta dosis de ceniza'),
(2689,'shiba','mojado'),
(2690,'shibachii','quitar con una rama lo que estÃ¡ mojado en un camino enyerbado'),
(2691,'shibarii','mojarse'),
(2692,'shibka','canilla- espinilla- tobillo- pierna inferior \n'),
(2693,'shibujaba','persona que llega al momento de desayuno para aprovecharlo'),
(2694,'shibuju','dÃ­a despuÃ©s de la noche de la luna llena clase de balso'),
(2695,'shiguina ukucha','clase de ratoncito pequeÃ±o que vivÃ­a anteriormente en el Valle de Sibundoy'),
(2696,'shin aja','que se hace callo'),
(2697,'shin ajaiai','endurecerse los callos'),
(2698,'shin i','de sabor desagradable'),
(2699,'shin iai','encogerse la lengua'),
(2700,'shin inangu','Ã¡rbol â€œpalo mayoâ€- â€œpalo coloradoâ€'),
(2701,'shishaja','arbusto del pÃ¡ramo que cocinado se utiliza para dar visiones'),
(2702,'shuchu','que carece de extremedades - mutilado'),
(2703,'shuchui','podar- cortar - cortar'),
(2704,'shulugchi','gorriÃ³n'),
(2705,'shuma','hermosito'),
(2706,'shumatum','hermosito'),
(2707,'shuna','que no estÃ¡ bien seco- fresco- zarazo'),
(2708,'shungu','pÃ¡jaro pequeÃ±o que hace el nido estilo jilguero'),
(2709,'Shushunajim','Pobre niÃ±ito'),
(2710,'tablaiai','quedar aplastado'),
(2711,'tachidiru','asiento para niÃ±o'),
(2712,'Tachii','SiÃ©ntese'),
(2713,'tagsa','todo empapado'),
(2714,'tagsai','jabonar- lavar'),
(2715,'tagsarii','lavarse'),
(2716,'taita','padre- papÃ¡- tÃ©rmino de respeto para referirse a alguien que presta o ha prestado servicios pÃºblicos'),
(2717,'taita ninga','padrastro'),
(2718,'taita siÃ±ur','abuelo'),
(2719,'taita tiu','persona de mayor edad que presta o ha prestado servicios pÃºblicos'),
(2720,'Taitiku','Dios mÃ­o'),
(2721,'tajuashinshai','volver a sembrar- resembrar'),
(2722,'taka kallu','molusco- clase de babosa grande'),
(2723,'taka kallu chini kuku','clase de oruga de forma plana que pica mucho'),
(2724,'taka kallu churu','especie de babosa grande que lleva una concha en la espalda'),
(2725,'taka kallu kaspi','Ã¡rbol de corteza muy pegajosa'),
(2726,'takachii','golpear- llamar \n'),
(2727,'takai','dar golpes- golpear- machacar- majar- moler'),
(2728,'takarii','tropezarse'),
(2729,'takaska','majado'),
(2730,'takichii','hacer que efectÃºe ciertas ceremonias'),
(2731,'takichirii','hacer que efectÃºe ciertas ceremonias- para que uno logre lo deseado'),
(2732,'takii','cantar - cantar sin efectuar nada'),
(2733,'talalai','especie de pÃ¡jaro'),
(2734,'tallichii','vaciar- regar - esparcir'),
(2735,'tallii','echar - vaciar- voltear'),
(2736,'tallinaiagta karai','llenar demasiado hasta que se derrame'),
(2737,'tallirii','esparcirse - echarse'),
(2738,'tambu','choza- casita pequeÃ±a- ranchito ropa anterior'),
(2739,'tambui','construir un rancho pequeÃ±o- techar'),
(2740,'tamburii','acomodarse para dormir'),
(2741,'tamia','lluvia- invierno'),
(2742,'tamia puiu','nube de lluvia'),
(2743,'tamia puncha','dÃ­a de lluvia- dÃ­a de invierno'),
(2744,'tamiai','llover'),
(2745,'tamiarii','llover un poco- lloviznar'),
(2746,'Tan','ruido de un golpe fuerte'),
(2747,'tanda','pan'),
(2748,'tanda sumbriru','sombrero redondo'),
(2749,'tandachii','juntar- recoger- recolectar- rejuntar- reunir'),
(2750,'tandarii','reunirse- acudir a'),
(2751,'tandariskakuna','reunidos- los reunidos'),
(2752,'tangachii','empujar un poco- atizar- move'),
(2753,'tangai','empujar- dar empellones'),
(2754,'tangarii','empujarse- arrimarse- ocupar mÃ¡s \ncampo'),
(2755,'tantiachii','hacer que alguien pruebe'),
(2756,'tantiachirii','dejarse tocar'),
(2757,'tantiai','probar- tantear- tocar'),
(2758,'tantiarii','probarse- tocarse'),
(2759,'tanua','bastÃ³n- bordÃ³n'),
(2760,'tanuai','afianzarse- ir afianzÃ¡ndose con el bordÃ³n'),
(2761,'tanuarii','afianzarse'),
(2762,'tapia','agÃ¼ero'),
(2763,'tapia kuku','animal o pÃ¡jaro que se considera ser de mal agÃ¼ero'),
(2764,'tapia pisku','pÃ¡jaro de mal agÃ¼ero'),
(2765,'tapiai','efectuar un mal agÃ¼ero'),
(2766,'tapiarii','experimentar algo raro- lo cual se interpreta como un agÃ¼ero'),
(2767,'tapu siki','preguntÃ³n'),
(2768,'tapuchii','interrogar- hacer preguntas- averiguar'),
(2769,'tapui','preguntar'),
(2770,'tapurii','preguntar- averiguar'),
(2771,'tarii','encontrar- hallar- localizar'),
(2772,'taririi','encontrarse con- encontrar - hallar'),
(2773,'tarka','corte- patilla de una madera utilizada en las construcciones'),
(2774,'tarkiadu','cortado en las construcciones- listo para amarrar'),
(2775,'tarpuchii','hacer que alguien siembre'),
(2776,'tarpuchirii','hacer que haga algo para que uno logre suerte'),
(2777,'tarpui','tarpui'),
(2778,'tarpunga','palito â€œchaquÃ­nâ€ de sembrar maÃ­z'),
(2779,'tarpuraiai','estar sembrado'),
(2780,'tarpurii','tarpurii'),
(2781,'taruka','venado del monte'),
(2782,'taruka sacha','Ã¡rbol pequeÃ±o como el de borrachera que tiene un olor desagradable'),
(2783,'tarukiai','cazar venado - golpear a alguien'),
(2784,'tasin','rosca - nido'),
(2785,'tasin tasin','enroscado'),
(2786,'tasinai','enroscar'),
(2787,'tasinaraiai','estar enroscado'),
(2788,'Tatai','Que horrible'),
(2789,'tatkii','dar los primeros pasos- hacer â€œpininosâ€'),
(2790,'tatkirii','principiar a dar los primeros pasos'),
(2791,'tauna','bastÃ³n- bordÃ³n'),
(2792,'taunai','afianzarse- ir afianzÃ¡ndose con el bordÃ³n'),
(2793,'taunarii','afianzarse'),
(2794,'tawina','bordÃ³n- bastÃ³n'),
(2795,'tawinai','afianzarse- ir afianzÃ¡ndose con el bordÃ³n'),
(2796,'tawinarii','afianzarse'),
(2797,'tia','hay- existe- estÃ¡'),
(2798,'tiu','tÃ©rminos de parentesco para referirse a una persona de mayor edad'),
(2799,'tiagsamui','nacer'),
(2800,'tiakui','estar sentado- permanecer- vivir'),
(2801,'tiaridiru','asiento'),
(2802,'tiarii','sentarse'),
(2803,'tibkai','pelar- limpiar- descascarar- desollar- desgranar'),
(2804,'tibkari','fÃ¡cil de desollar- pelar- descascarar'),
(2805,'tibkarii','llegar a estar pelado - pelarse- llegar a estar despellejado'),
(2806,'tibkariska','pelado- limpio'),
(2807,'tibsii','pellizcar'),
(2808,'tibsirii','pellizcarse'),
(2809,'tibunsachii','salpicar - hacer que alguien se salpique'),
(2810,'tibunsai','salpicar'),
(2811,'tibunsarii','salpicarse'),
(2812,'tibutui','florear - amontonar'),
(2813,'tigllachii','hacer que el teÃ±ido no estÃ© uniforme- igual'),
(2814,'tigllai','quedar mal teÃ±ido'),
(2815,'tigllaska','teÃ±ido que queda mal hecho- no uniforme'),
(2816,'tigrachii','voltear- poner a la inversa- hacer que alguien regrese'),
(2817,'tigrai','regresar- volver'),
(2818,'tigrarii','voltearse- dar la vuelta'),
(2819,'tigri waska','bejuco del Medio Putumayo que se da a las mujeres en el momento de dar a luz para que no se desangren'),
(2820,'tilla','Que...'),
(2821,'timbu','que estÃ¡ hirviendo- que estÃ¡ fermentando'),
(2822,'timbuchii','hervir- dejar que algo se fermente'),
(2823,'timbui','hervir- fermentar'),
(2824,'timburii','principiar a hervir- fermentarse'),
(2825,'timbuska','fermentado- hervido'),
(2826,'timpu','ya'),
(2827,'tindu','ruana blanca de lana con rayas angostas negras'),
(2828,'tingi','golpecito del dedo clase de trampa'),
(2829,'tingichii','dar un golpecito - impulsar un dedo hacia una bolita para que ruede'),
(2830,'tingii','dar un golpecito - \ntocar ligeramente- dar tingazos'),
(2831,'tingirii','dar brincos- brincar un poco'),
(2832,'tinin turu','barro negro especial de teÃ±ir lana'),
(2833,'tinlla','Que...'),
(2834,'Tin ui','quebrada en los lÃ­mites entre Santiago y ColÃ³n'),
(2835,'tiÃ±ii','teÃ±ir'),
(2836,'tiritingu','que tiene la mano no firme'),
(2837,'tirsiu','seis meses'),
(2838,'tisai','tizar- desenvolver'),
(2839,'tisnachi','paja comÃºn- usada como palmito- durable- con flor colorada y espinosa'),
(2840,'tisnachii','hacer que alguien pinte con carbÃ³n- hacer que alguien negree'),
(2841,'tisnai','pintar con carbÃ³n- negrear'),
(2842,'tisnarii','pintarse con carbÃ³n- negrearse'),
(2843,'tisuiai','entiesarse- endurar- endurecerse- hacerse tieso'),
(2844,'tiubkai','pelar- limpiar- descascarar- desollar- desgranar'),
(2845,'tiubkari','fÃ¡cil de desollar- pelar- descascarar'),
(2846,'tiubkarii','llegar a estar pelado - pelarse- llegar a estar despellejado'),
(2847,'tiubkariska','pelado- limpio'),
(2848,'tiusii','pellizcar'),
(2849,'tiusirii','pellizcarse'),
(2850,'trabajachii','hacer que alguien trabaje'),
(2851,'trabajai','trabajar'),
(2852,'trabajai ugsa','remedio que dan los mÃ©dicos tradicionales para que la persona rinda mucho trabajo y tenga una mano muy Ã¡gil'),
(2853,'trabajarii','ponerse a trabajar'),
(2854,'tragu','aguardiente'),
(2855,'trankai','atrancar'),
(2856,'trankarii','atrancarse- atascarse- atorarse'),
(2857,'triwinai','tronar'),
(2858,'triwinu','trueno'),
(2859,'trubachii','hacer que alguien pruebe algo'),
(2860,'trubai','probar'),
(2861,'trubarii','probarse'),
(2862,'trukadu','al revÃ©s'),
(2863,'trukai','cambiar- trocar- hacer un intercambio'),
(2864,'trukarii','cambiarse'),
(2865,'Tu','Ven'),
(2866,'tugiachii','reventar'),
(2867,'tugiai','reventar'),
(2868,'tugiarii','reventarse- salir un arroyo'),
(2869,'tuglla','trampa- lazo - rejo'),
(2870,'tugllachii','hacer que alguien ponga trampa'),
(2871,'tugllai','colocar trampas'),
(2872,'tugllarii','caer en la trampa'),
(2873,'tugsi','picante'),
(2874,'tugsiai','volverse picante'),
(2875,'tugsichii','dejar que algo pique- dejar que chuce- dejar que pinche'),
(2876,'tugsii','picar- pinchar- punzar- chuzar- dar chuzo'),
(2877,'tugsirii','picarse- pincharse- chuzarse'),
(2878,'tugtu','flor- yajÃ©'),
(2879,'tugtuchii','adornar'),
(2880,'tugtui','enflorar'),
(2881,'tugtuiachii','dejar que enflore'),
(2882,'tugtuiai','enflorarse'),
(2883,'tugturii','adornarse'),
(2884,'tuka','saliva'),
(2885,'tukachii','hacer que alguien escupa'),
(2886,'tukai','escupir'),
(2887,'tukarii','ponerse a escupir'),
(2888,'tuku','tanto'),
(2889,'tukuchii','acabar- terminar'),
(2890,'tukui','llegar a ser- pretender ser- resultar- \nhacerse'),
(2891,'tukuima','por todas partes'),
(2892,'tukuinigmanda','de todos los lados- de todas partes'),
(2893,'tukurii','acabarse- terminarse'),
(2894,'tula','loma de piedra- conjunto de piedras amontonadas'),
(2895,'tulai','seguir amontonado- formar una cÃºspide'),
(2896,'tularaiai','estar amontonada'),
(2897,'tulaska','bien amontonado'),
(2898,'tulpa','piedra de fogÃ³n'),
(2899,'tullu','hueso'),
(2900,'tullu wangu','muy flaco- huesudo'),
(2901,'tulluiachii','hacer que alguien se vuelva flaco'),
(2902,'tulluiai','enflaquecerse'),
(2903,'tumbaja sacha','Ã¡rbol que sirve como remedio para erupciones'),
(2904,'tunai','tocar - cantar'),
(2905,'tunarii','ejecutar una mÃºsica- cantar'),
(2906,'tunichii','hacer rodar - derrumbar'),
(2907,'tunichiska','derrumbado'),
(2908,'tunirii','rodarse- derrumbarse'),
(2909,'tuntiadu tukui','hacerse tonto- embobarse- maravillarse'),
(2910,'tuntiadusina kawai','mirar sorprendido- quedar como atontado- quedar como maravillado'),
(2911,'tuntiarii','maravillarse- hacerse sorprendido'),
(2912,'tupai','topar- encontrar - tocar'),
(2913,'tuparii','apegarse- arrimarse- acercarse'),
(2914,'tupu','medida'),
(2915,'tupudur','persona que mide en las faenas de trabajo'),
(2916,'tupui','medir- seÃ±alar- indicar'),
(2917,'tupulli','tela que se ponen las mujeres indÃ­genas como blusa astilla que usan las mujeres indÃ­genas para unir la blusa a la altura de los hombros'),
(2918,'tupurii','medirse'),
(2919,'turi','hermano- tÃ©rmino de parentesco empleado por una mujer para referirse a un varÃ³n de la misma edad'),
(2920,'turi ninga','hermanastro'),
(2921,'turmama','duende â€œturumamaâ€ que oculta a una persona Ã¡rbol bukuiachi'),
(2922,'turu','barro- lodo'),
(2923,'turu iaku','agua barrosa- agua turbia'),
(2924,'turuiachii','preparar lodo- hacer lodo'),
(2925,'turuiai','embarrarse- volverse un barriza'),
(2926,'tusta','maÃ­z seco'),
(2927,'tusta piai','desaguar- desecar'),
(2928,'tustachii','dejar que algo se seque- secar'),
(2929,'tustai','secar'),
(2930,'tustarii','secarse- enflaquecerse'),
(2931,'tustaska','seco'),
(2932,'tuta','oscuro'),
(2933,'tuta kuisu','pÃ¡jaro de la familia de las tÃ¡ngaras- pÃ¡jaro de fantasma que hace daÃ±o y que asusta'),
(2934,'tuta pisku','pÃ¡jaro nocturno- se cree que embruja a las personas'),
(2935,'tutaiachii','cegar - oscurecer- hacer sombra'),
(2936,'tutaiai','oscurecer- anochecer- atardecer'),
(2937,'Tutaiapuangi','Buenas noches'),
(2938,'tutamanda','maÃ±ana de madrugada'),
(2939,'tutaÃ±u','tuÃ©tano- cerebro- seso'),
(2940,'tutapita','madrugada- antes del amanecer'),
(2941,'tutata','desde las 6 de la maÃ±ana hasta el medio dÃ­a'),
(2942,'tutatalla','muy de madrugada'),
(2943,'tsajaku','Ã¡rbol â€œsindayoâ€ de pepas duras'),
(2944,'TsajuaÃ±i','Caramba'),
(2945,'tsibaju','planta silvestre parecida a la espinaca'),
(2946,'tsibuna waska','clase de bejuco que se utilizaba en la construcciÃ³n del kastillu'),
(2947,'tsitsi','manojo de paja - persona tacaÃ±a- persona Ã¡vara'),
(2948,'tsitsian aÃ±angu','clase de hormiga muy grande y brava- roja'),
(2949,'ubchichi','planta pequeÃ±a cuya corteza sirve para coagular la sangre'),
(2950,'ubijita','oruga blanca sin veneno con pelo suave'),
(2951,'ubillas','uchuva'),
(2952,'ubillas api','sopa hecha de uchuva'),
(2953,'ubillas Ã±awi','ojos de color claro'),
(2954,'ubligachii','obligar'),
(2955,'ubligai','obligar'),
(2956,'ubligarii','obligarse'),
(2957,'ubsichii','hacer que alguien chupe- hacer que comparta'),
(2958,'ubsii','chupar - tomar a sorbos'),
(2959,'ubsirii','chupar'),
(2960,'uchnai','quejarse'),
(2961,'uchnarii','quejarse'),
(2962,'uchpa','ceniza'),
(2963,'uchpa kustal','sobrenombre para la comadreja'),
(2964,'uchpallapi','al lado del fogÃ³n'),
(2965,'uchpintu','de color de ceniza'),
(2966,'uchpusu','de color gris oscuro'),
(2967,'uchu','ajÃ­'),
(2968,'uchu aÃ±angu','clase de hormiga pequeÃ±a del Medio Putumayo que es muy brava'),
(2969,'uchulla','pequeÃ±o- diminuto- chiquito'),
(2970,'uchulla tiu','hermano menor entre los tÃ­os de uno'),
(2971,'uchulla uku','cocina- pieza pequeÃ±a'),
(2972,'uchullaiachii','empequeÃ±ecer- bajar- mermar- reducir- humillar'),
(2973,'uchullaiai','volverse bajo- volverse disminuido- mermarse- reducirse- humillarse'),
(2974,'uchullaiaska','bajado- humillado- mermado- reducido'),
(2975,'uchullatum','pequeÃ±ito- chiquitico'),
(2976,'ugchichi','planta pequeÃ±a cuya corteza sirve para coagular la sangre'),
(2977,'ugllachii','hacer empollar- abarcar- encubar'),
(2978,'ugllai','abrazar'),
(2979,'ugllanakui','abrazarse mutuamente'),
(2980,'ugllaraiai','permanecer en el nido cubierto por las alas'),
(2981,'ugllarii','abrazarse- agarrarse'),
(2982,'ugllariska','cubierto- puesto bajo las alas'),
(2983,'ugllaska','abrazado'),
(2984,'ugsa','hierba'),
(2985,'ugsaiai','enyerbarse- volverse enyerbado'),
(2986,'ugsaiaska','enyerbado'),
(2987,'ugsalla','enyerbado- hierba en su totalidad'),
(2988,'ugsuku','hierba alta'),
(2989,'uia','atento'),
(2990,'uiachii','tocar- hacer que alguien oiga'),
(2991,'uiachii tukui','ser criticado'),
(2992,'uiai','oÃ­r- obedecer- escuchar'),
(2993,'uiansa','premio - indemnizaciÃ³n'),
(2994,'uiansa karai','dar premio'),
(2995,'uiansachii','hacer que alguien comparta una bebida amigablemente'),
(2996,'uiansarii','compartir una bebida amigablemente - hacer las paces- brindando con la copa'),
(2997,'uiari','ruido- sonido claro'),
(2998,'uiarii','llegar a sonar- llegar a oÃ­r- oÃ­rse'),
(2999,'Ujala','OjalÃ¡ que no...'),
(3000,'ujna','infecciÃ³n blanca de la cara'),
(3001,'ujnachii','hacer que alguien admire'),
(3002,'ujnai','admirar'),
(3003,'ujnarii','admirarse de'),
(3004,'ujuatai','recolectar lo Ãºltimo de la cosecha- escarbando'),
(3005,'ujuchii','hacer que alguien tosa'),
(3006,'ujui','toser'),
(3007,'ujurii','ponerse a toser'),
(3008,'uka','oca- planta herbÃ¡cea de tubÃ©rculos comestibles'),
(3009,'uku','suelo adentro- salÃ³n- pieza'),
(3010,'ukucha','ratÃ³n- rata comprende las siguientes clases: danta ukucha- \niaku ukucha- rata ukucha- ratilla ukucha- \nsara ukucha- shiguina ukucha'),
(3011,'ukuparii','ocuparse'),
(3012,'ukupi','dentro de- debajo de'),
(3013,'ullu','pene'),
(3014,'ullukiai','costumbre utilizada por los indÃ­genas en un velorio que consiste en golpearse entre los parientes con una bola grande de plata blanca amarrada en un paÃ±uelo- a fin de que no se duerman.'),
(3015,'ulluku','planta herbÃ¡cea de tubÃ©rculos comestibles'),
(3016,'uma','cabeza'),
(3017,'uma chirapa','despeinado'),
(3018,'uma kara','cuero de res'),
(3019,'uma kara mingai','minga con mote y la cabeza y el cuero del res'),
(3020,'uma kumurichii','humillar'),
(3021,'uma kumurii','humillarse'),
(3022,'uma muiui','persona mareada'),
(3023,'uma muiurii','marearse'),
(3024,'uma nana','tacaÃ±o'),
(3025,'uma tullu','calavera'),
(3026,'umata llambiai','acariciarle la cabeza'),
(3027,'umutiachii','recortar'),
(3028,'umutiai','disminuirse de longuitud'),
(3029,'umutu','corto'),
(3030,'umutu kaspi','palo corto'),
(3031,'unai','tiempo largo- mucho tiempo'),
(3032,'unaiachii','distraer- hacer que alguien se demore'),
(3033,'unaiai','demorar- entretenerse'),
(3034,'unaiaska','demorado- entretenido'),
(3035,'unaipi','despuÃ©s de mucho tiempo'),
(3036,'unaipi unaipi','de vez en cuando- a largos ratos'),
(3037,'ungu sik','siempre enfermo'),
(3038,'ungug','enfermo'),
(3039,'ungui','estar enfermo'),
(3040,'ungui apii','enfermarse- ponerse enfermo'),
(3041,'ungurii','dar a luz- parir - enfermarse- ponerse enfermo'),
(3042,'unraduiai','llegar a ser honrado'),
(3043,'un a siki','burlada por todos'),
(3044,'un adur','criticÃ³n'),
(3045,'un ai','burlarse de- despreciar- criticar'),
(3046,'un ai tukui','estar despreciado'),
(3047,'un arii','burlarse- quedar burlado'),
(3048,'upa','tonto- bobo- mudo- privado del habla'),
(3049,'upa mana rimag','mudo'),
(3050,'upa rinri','sordo'),
(3051,'upaiachii','atontar- embobar - hacer que alguien se enmudezca'),
(3052,'upaiai','atontarse- embobarse- entontecer- enmudecer'),
(3053,'upaiarii','llegar a atontarse- embobarse'),
(3054,'upalla','tranquila'),
(3055,'upallachii','callar- hacer que alguien se calle'),
(3056,'upallai','callarse'),
(3057,'upallarii','callarse'),
(3058,'upiachii','dar a beber- hacer que alguien beba- hacer que tome'),
(3059,'upiachirii','darse de beber mutuamente- brindar mutuamente'),
(3060,'Upiai','beber- tomar'),
(3061,'upiangichu','borrachÃ³n'),
(3062,'upiarii','ponerse a beber- ponerse a tomar'),
(3063,'Upiasu','Salud'),
(3064,'uprinda','ofrenda'),
(3065,'uprinda waira','viento que viene de la direcciÃ³n de Aponte en los meses de noviembre y diciembre'),
(3066,'urai','hacia abajo- abajo'),
(3067,'urai singa','boca abajo'),
(3068,'uraiai','hacerse mÃ¡s bajo'),
(3069,'uraikuchii','hacer que alguien baje- bajar'),
(3070,'uraikui','bajar- descender'),
(3071,'uraku','Ã¡rbol muy Ãºtil para el aserrÃ­o- como tambiÃ©n para hacer bancos y bateas'),
(3072,'urapi','bajo- abajo'),
(3073,'urdimal','una persona chistosa- graciosa'),
(3074,'urdimal nii','inventar un chiste'),
(3075,'urdimal parlu','cuento chistoso'),
(3076,'uritu','papagayo- loro'),
(3077,'urkita','gancho'),
(3078,'urku','eco'),
(3079,'urku siki','pie de monte'),
(3080,'urmachii','derribar- botar- voltear- tumbar - hacer que caiga- dar crÃ­a'),
(3081,'urmai','caer- voltearse'),
(3082,'urmanaiai','estar al punto de caerse'),
(3083,'urmarii','caerse'),
(3084,'usa','piojo'),
(3085,'usiachii','soplar con tabaco para que deje de llover'),
(3086,'usiarii','escampar - dejar de llover'),
(3087,'Uska uska','PersÃ­guelo'),
(3088,'uskachii','azuzar- animar al perro para que persiga algo o alguien'),
(3089,'ushin i','clase de abeja que forma su miel hasta con flores venenosas'),
(3090,'ushtachii','espantar'),
(3091,'utka','rÃ¡pidamente- aprisa- de afÃ¡n'),
(3092,'utku','hoyo- agujero- hueco redondo'),
(3093,'utkuchii','agujerear- taladrar- cavar- excavar- perforar'),
(3094,'utkui','desbastar- cavar'),
(3095,'utkurii','perforarse - llegar a estar roto - llegar a estar taladrado'),
(3096,'utkuriska','llena de goteras'),
(3097,'wabajai','elevar - dejar algo en agua para que lo absorba- se ablande- se esponge- se remoje'),
(3098,'wabajarii','elevarse- remojarse - absorber - ablandarse- esponjarse'),
(3099,'wabatskuniru','ayudante del ayudante'),
(3100,'wabka','daÃ±ado- podrido- que no sirve para abarcar'),
(3101,'wabkana','mÃºcura de barro con boca angosta- de acarrear agua'),
(3102,'wabli','cajÃ³n- baÃºl'),
(3103,'wabuti','hierbita que machacada se empleaba para embobar '),
(3104,'wabutii','rechazar'),
(3105,'wachadiru','nido de gallina'),
(3106,'wachadura','ponedora'),
(3107,'wachai','poner huevos- parir'),
(3108,'wacharii','poner un huevo- dar crÃ­a'),
(3109,'wachiai','trabajar una sementera por fajas'),
(3110,'wachimba','planta de flores rojas- cuyo tubÃ©rculo es comestible'),
(3111,'wachisha','tangÃ¡n,  lugar encima del fogÃ³n donde se guarda carne, sal o panela,  para que se sequen y no los daÃ±en los gusanos'),
(3112,'wachishai','colgar a una persona en el acabado de la casa'),
(3113,'wachu','faja de tarea para trabajar - surco'),
(3114,'wachui','ponerse en orden'),
(3115,'wachuma','recto'),
(3116,'wachuraiai','estar colocado en orden'),
(3117,'wachuspa','en orden'),
(3118,'wagchintu','pobre- solitario- huÃ©rfano'),
(3119,'wagchu','huÃ©rfano'),
(3120,'wagchuiai','quedar huÃ©rfano'),
(3121,'wagki','hermano- tÃ©rmino de parentesco empleado entre varones de la misma edad'),
(3122,'wagki ninga','hermanastro'),
(3123,'waglla','avÃ­o que se lleva al trabajo- obsequio de comida que un huÃ©sped recibe para llevar a su familia'),
(3124,'wagllai','hacer avÃ­o- empacar comida para llevarla'),
(3125,'wagllarii','llegar a estar listo el avÃ­o'),
(3126,'wagllaska','empacado'),
(3127,'wagllichii','destruir- arruinar- desbaratar- causar daÃ±os- corromper'),
(3128,'wagllii','daÃ±ar'),
(3129,'wagllirii','daÃ±arse'),
(3130,'wagra','ganado- vaca- toro- buey'),
(3131,'wagra pisku','ave toro'),
(3132,'wagtachii','mecer'),
(3133,'wagtai','pegar- golpea'),
(3134,'wagtarii','mecerse'),
(3135,'waiabilla','hierba medicinal del pÃ¡ramo'),
(3136,'waiku','barranco- huecada- hueco'),
(3137,'waira','viento'),
(3138,'waira churillu','hierba medicinal'),
(3139,'waira kupal','savia de una planta- usada como aroma'),
(3140,'waira pichai','curar de los malos vientos'),
(3141,'waira pisku','pÃ¡jaro nocturno que se cree embruja a las personas'),
(3142,'waira waira','rÃ¡pidamente- como el viento'),
(3143,'waira wawa','lente de cristal que utilizan los mÃ©dicos tradicionales para ver y hacer secretos'),
(3144,'wairachidiru sacha','rama especial que utiliza el mÃ©dico tradicional en la ceremonia para limpiar el cuerpo a un enfermo'),
(3145,'wairachii','hacer la ceremonia para limpiar el cuerpo a un paciente'),
(3146,'wairai','soplar - coger un mal viento'),
(3147,'wairalla','rÃ¡pidamente- como el viento'),
(3148,'wairarii','ventear- moverse por el viento'),
(3149,'wairaska','dado mal viento'),
(3150,'waitai','nadar'),
(3151,'waitarii','ponerse a nadar'),
(3152,'waiunga','en muchedumbre'),
(3153,'waiunga','racimo collar de varias vueltas de chaquira atado de seis mazorcas- amarradas en las extremidades de tres en tres'),
(3154,'waiungarii','agarrarse'),
(3155,'waiusa','yerba que se da a las mujeres que estÃ¡n de parto para abrigarlas'),
(3156,'wajaiin','montÃ³n de basura- chamizas'),
(3157,'wajuachii','traer augurio'),
(3158,'wajuai','hacerse augurio'),
(3159,'wajuarii','augurar'),
(3160,'wajujudu','en todo daÃ±ado'),
(3161,'waka','cosa antigua que se encuentra enterrada en la tierra'),
(3162,'waka kai','llevar algo de la cosecha'),
(3163,'waka mullu','verdura silvestre que sirve para la comida y para rellenos'),
(3164,'waka siki','llorÃ³n'),
(3165,'wakachii','conservar- guardar hacer que alguien llore'),
(3166,'wakachirii','guardarse'),
(3167,'wakai','llorar'),
(3168,'wakamaiu','pajaro guacamayo'),
(3169,'wakanai','ganar - merecer un castigo'),
(3170,'wakanarii','ganar por su propia fuerza'),
(3171,'wakarii','oxidarse- salir un arroyo'),
(3172,'wakariska','oxidado'),
(3173,'walka','gargantilla- collar- chaquira- corona de plumaje'),
(3174,'walkachii','ponerle collar'),
(3175,'walkarii','ponerse collar'),
(3176,'walkaska','puesto collar'),
(3177,'walmu','canalete- pala de madera hecha de una tabla'),
(3178,'wambi','planta de la montaÃ±a con flor rosada y alargada'),
(3179,'wambra','niÃ±o- niÃ±a -muchacho- muchacha'),
(3180,'wambra ninga','hijastro-hijastra'),
(3181,'wambui','clase de sapo grande'),
(3182,'wamnai','cuidar a los pequeÃ±os- criar - entretener'),
(3183,'wamnarii','entretenerse'),
(3184,'wamnaska','domesticado- entretenido'),
(3185,'wamniru','niÃ±ero- niÃ±era'),
(3186,'wamuka','arbolito cultivado de olor desagradable'),
(3187,'Wanachu','me alegro'),
(3188,'Wanai','dejar- abandonar - enmendarse de'),
(3189,'Wanakushi','Que bien'),
(3190,'wanamna','chirimoyo'),
(3191,'wanarii','dejar- abandonar - enmendarse- arrepentirse'),
(3192,'wandui','llevar'),
(3193,'wandupi','llevado'),
(3194,'wandurii','llevarse'),
(3195,'wangina','estiÃ©rcol de gallina sobrenombre para la comadreja'),
(3196,'wangu','enredado'),
(3197,'wanguchii','enredar'),
(3198,'wangudu','con nudos'),
(3199,'wangui','amarrar - envolver - enredar'),
(3200,'wangurii','encogerse- prenderse- agarrarse - amarrarse'),
(3201,'wanguska','amarrado- envuelto'),
(3202,'wansachii','hacer que se llene'),
(3203,'wansai','llenar - abriendo la boca para meter las cosas'),
(3204,'wansarii','llegar a que se llene'),
(3205,'wansaska','lleno'),
(3206,'wansmii','asar envuelto en hojas debajo de la ceniza asar choclos en las cenizas'),
(3207,'wansmiska','asado envuelto o con todas las hojas debajo de la ceniza'),
(3208,'wan icha','envuelto de choclo con hoja de achira- tostado en una callana en el fogÃ³n'),
(3209,'waÃ±uchii','matar'),
(3210,'waÃ±uchirii','matarse'),
(3211,'waÃ±udu','muerto'),
(3212,'waÃ±ug','fallecido- muerto'),
(3213,'waÃ±ui','morir- fallecer- apagar'),
(3214,'waÃ±ui ungui','epilepsia'),
(3215,'waÃ±urii','marchitarse'),
(3216,'waÃ±uska','fallecido- muerto'),
(3217,'wapu','guapo- fuerte- poderoso- valiente- sin miedo'),
(3218,'Wapu wapu','grito para asustar a los loros que estÃ¡n comiÃ©ndose el maÃ­z'),
(3219,'wapuiachii','hacer que alguien se vuelva valiente'),
(3220,'wapuiai','llegar a ser valiente- llegar a ser guapo- llegar a ser fuerte- envalentonarse'),
(3221,'waraka','honda'),
(3222,'waraka waira','huracÃ¡n'),
(3223,'warakiai','usar una honda propinar un puÃ±etazo- ejercitar el brazo'),
(3224,'waranga','mil'),
(3225,'warbuÃ±ii','enojarse'),
(3226,'warda puncha','dÃ­a festivo de la iglesia- dÃ­a domingo- dÃ­a de guarda'),
(3227,'wardachii','hacer que alguien se abstenga'),
(3228,'warkuchii','hacer que alguien cuelgue'),
(3229,'warkui','colgar'),
(3230,'warkurii','colgarse- cogerse'),
(3231,'warmi','mujer- esposa- hembra'),
(3232,'warmi banku','banco larguito y plano que utilizaban las mujeres- menos alto que el kari banku'),
(3233,'warmi chumbi','faja comÃºn de las mujeres'),
(3234,'warmiiug','esposo- el que tiene esposa propia'),
(3235,'warmindi','su esposa'),
(3236,'warmisapa','mujeriego'),
(3237,'wasa','espalda- espinazo'),
(3238,'wasa churai','darle la espalda a alguien'),
(3239,'wasa dirichai','enderezar el espinazo'),
(3240,'wasa ladu','atrÃ¡s- detrÃ¡s'),
(3241,'wasa punta','encorvado- giboso'),
(3242,'wasa rimai','chismear de alguien- hablar mal de alguien'),
(3243,'wasa trumpa','giboso'),
(3244,'wasi','casa'),
(3245,'wasi chiriachii','hacer riegos'),
(3246,'wasi kancha','patio de la casa'),
(3247,'wasi kincha','pared de la casa'),
(3248,'wasichii','construir- hacer una casa'),
(3249,'wasichirii','hacerse una casa'),
(3250,'wasiiug','el que tiene casa propia- dueÃ±o de una casa'),
(3251,'wasikama','cuidador de la casa hasta la casa'),
(3252,'waska','bejuco- cuerda- laso'),
(3253,'waska puru','calabaza de bejuco de clima caliente que se usa para acarrear lÃ­quidos'),
(3254,'washabai','cubrirse para protegerse del agua'),
(3255,'Washbi','fecundado'),
(3256,'washinsan','Ã¡rbol de la montaÃ±a- muy Ãºtil en las construcciones'),
(3257,'washinshai','volver a sembrar- resembrar'),
(3258,'washjai','escurrir- sacar agua de una olla y taparla para que el contenido se seque'),
(3259,'washju','enredado'),
(3260,'washjuchii','enredar'),
(3261,'washjui','partido ganador en la competencia para terminar primero la limpieza de la plaza'),
(3262,'washjurii','enredarse'),
(3263,'washjuriska','enredado'),
(3264,'wata','aÃ±o- carnaval clase de papas'),
(3265,'wata takii','canto de carnaval'),
(3266,'watai','atar- amarrar'),
(3267,'watajadur','asistente a una fiesta'),
(3268,'watajai','asistir a una fiesta- sin \nser invitado'),
(3269,'watajarii','persona que llega a una fiesta sin ser invitada y que participa en la misma'),
(3270,'wataraiai','estar amarrado'),
(3271,'watarii','amarrarse'),
(3272,'wataska','amarrado- atado'),
(3273,'wataura','carnaval'),
(3274,'watinsarii','dejar que descanse un terreno para que se vuelva monte y fÃ©rtil'),
(3275,'watsiban','rastrojo- sementera enmontada'),
(3276,'watsibi','carga que se agrega a una canasta llena'),
(3277,'watu','pequeÃ±o de estatura'),
(3278,'waugki','hermano- tÃ©rmino de parentesco empleado entre varones de la misma edad'),
(3279,'waugki ninga','hermanastro'),
(3280,'wawa','bebÃ©- criada- chiquito- infante- nene'),
(3281,'wawa banku','asiento para niÃ±o'),
(3282,'wawa chaparu','apenas enmontado'),
(3283,'wawa didu','meÃ±ique'),
(3284,'wawa killa','luna nueva'),
(3285,'wawa kiru','diente'),
(3286,'wawa kukawi','placenta'),
(3287,'wawa mama','matriz- Ãºtero'),
(3288,'wawa urmachii','dar a luz- dar crÃ­a- parir'),
(3289,'wawaiai','volverse nene- volverse niÃ±o- volverse inÃºtil'),
(3290,'wawaiug kai','tener hijos'),
(3291,'wibus','huevo'),
(3292,'wichai','hacia arriba'),
(3293,'wichi','buche'),
(3294,'wichkai','cerrar'),
(3295,'wichkarii','cerrarse'),
(3296,'wichkaska','cerrado- encerrado'),
(3297,'wigsa','estÃ³mago- abdomen- barriga'),
(3298,'wigsawa ungug','embarazada'),
(3299,'wiki','lÃ¡grima'),
(3300,'wikiiug','pegajoso- resinoso con mucha savia- lagrimoso'),
(3301,'wikundu','vicundo'),
(3302,'willai','avisar- contar- informar- notificar- relatar'),
(3303,'willarii','delatar- confesar- avisar'),
(3304,'winditi','clase de Ã¡rbol- al pÃ¡jaro chiwaku le gusta el fruto'),
(3305,'wingiachii','torcer'),
(3306,'wingiai','torcerse'),
(3307,'wingiarii','llegar a torcerse'),
(3308,'wingu','torcido- chueco'),
(3309,'wingu wingu','trastrabillando'),
(3310,'winja','desagradable- amargo'),
(3311,'winjadu','con rabia'),
(3312,'winjaiachii','hacer amargo- enojar'),
(3313,'winjaiai','volverse amargo'),
(3314,'wiÃ±achii','hacer que crÃ­e- criar'),
(3315,'wiÃ±ai','crecer- criar'),
(3316,'wiÃ±arii','germinar- nacer - criarse'),
(3317,'wiÃ±aska','crecido'),
(3318,'wira','gordo- robusto'),
(3319,'wiraiachii','engordar'),
(3320,'wiraiai','engordarse- volverse gordo'),
(3321,'wiraiug','persona gordÃ­sima'),
(3322,'wiritu','loro- papagayo'),
(3323,'wiru','caÃ±a'),
(3324,'wiru iaku','guarapo de caÃ±a'),
(3325,'wiruiai','volverse caÃ±a sin dar lugar a cosecha'),
(3326,'wirurii','chupar caÃ±a'),
(3327,'wisichii','hacer que alguien saque - hacer que comparte'),
(3328,'wisidur','el que...'),
(3329,'wisii','sacar'),
(3330,'wisinga','totuma o taza pequeÃ±a- posillo'),
(3331,'wistu','torcido'),
(3332,'wistuiachii','torcer- hacer que algo se tuerza'),
(3333,'wistuiai','torcerse'),
(3334,'wistuiarii','llegar a torcerse'),
(3335,'witsaja','clase de palma que tiene espinas y que crÃ­a en el Valle de Sibundoy');

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
