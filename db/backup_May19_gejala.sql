/*
SQLyog Community v12.3.3 (64 bit)
MySQL - 5.7.22-0ubuntu0.16.04.1 : Database - medify_aqeela
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`medify_aqeela` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `medify_aqeela`;

/*Table structure for table `gejala` */

DROP TABLE IF EXISTS `gejala`;

CREATE TABLE `gejala` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=389 DEFAULT CHARSET=latin1;

/*Data for the table `gejala` */

insert  into `gejala`(`id`,`name`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Bisul di dalam hidung','2018-02-18 11:17:57','2018-02-18 04:52:28',NULL),
(2,'Hidung nyeri','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(3,'Hidung tidak nyaman','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(4,'Mengorek hidung','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(5,'Hidung mengeluarkan ingus (pilek)','2018-02-18 11:17:57','2018-04-01 14:55:16',NULL),
(6,'Hidung tersumbat','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(7,'Hidung panas','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(8,'Hidung gatal','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(9,'Bersin','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(10,'Batuk','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(11,'Daya tahan tubuh menurun','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(12,'Terpapar debu asap dan gas','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(13,'Hidung tersumbat bergantian','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(14,'Hidung mengeluarkan rinore','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(15,'Hidung mengeluarkan ingus encer','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(16,'Bersin sering di pagi hari','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(17,'Bersin hingga 5x','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(18,'Mata gatal','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(19,'Mata mengeluarkan banyak air mata','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(20,'Hidung terasa bergerak gerak','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(21,'Adanya laporan benda masuk','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(22,'Hidung mengeluarkan darah','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(23,'Demam','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(24,'Tenggorokan Sakit/Nyeri','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(25,'Sendi nyeri','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(26,'Badan nyeri','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(27,'Kepala sakit/nyeri','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(28,'Badan lemas/lemah','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(29,'Penyakit diderita < 3 hari','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(30,'Penyakit diderita > 12 minggu','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(31,'Tenggorokan Sakit/Nyeri saat menelan','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(32,'Mual','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(33,'Muntah','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(34,'Nafsu makan berkurang','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(35,'Usia anak anak','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(36,'Terpapar udara dingin','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(37,'Gizi kekurangan','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(38,'Merokok','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(39,'Alkohol','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(40,'Asam lambung','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(41,'Demam tinggi','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(42,'Telinga nyeri','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(43,'Mulut bau','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(44,'Ludah menumpuk','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(45,'Suara terdengar seperti orang yang mulutnya terisi makanan panas','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(46,'Memiliki riwayat alergi','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(47,'Mulut tidak higienis','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(48,'Usia Dewasa','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(49,'Wanita','2018-02-18 11:17:57','2018-02-18 11:17:57',NULL),
(52,'Tenggorokan Kering','2018-02-18 05:30:47','2018-02-18 05:30:47',NULL),
(53,'Suara serak','2018-02-18 13:04:45','2018-02-18 13:04:45',NULL),
(54,'Suara hilang','2018-02-18 13:05:05','2018-02-18 13:05:05',NULL),
(55,'Suara parau','2018-02-18 13:06:20','2018-02-18 13:06:20',NULL),
(56,'Sesak nafas','2018-02-18 13:07:02','2018-02-18 13:07:02',NULL),
(57,'Batuk kering','2018-02-18 13:07:24','2018-02-18 13:07:24',NULL),
(58,'Waktu < 3 minggu','2018-02-18 13:08:43','2018-02-18 13:08:43',NULL),
(59,'Sesak dada','2018-02-18 13:19:35','2018-02-18 13:19:35',NULL),
(60,'Mengi','2018-02-18 13:19:41','2018-02-18 13:19:41',NULL),
(61,'Dada terasa berat','2018-02-18 13:19:54','2018-02-18 13:19:54',NULL),
(62,'Gejala memburuk di malam atau pagi dini hari','2018-02-18 13:20:06','2018-02-18 13:20:06',NULL),
(63,'Gejala dipicu oleh infeksi virus, latihan, pajanan allergen, perubahan cuaca, tertawa atau iritan seperti asap kendaraan, rokok atau bau yang sangat tajam','2018-02-18 13:21:58','2018-02-18 13:21:58',NULL),
(64,'Gejala semakin memburuk','2018-02-18 13:25:26','2018-02-18 13:25:26',NULL),
(65,'Menggigil','2018-02-18 13:29:18','2018-02-18 13:29:18',NULL),
(66,'Batuk berdahak','2018-02-18 13:29:56','2018-02-18 13:29:56',NULL),
(67,'Batuk berdarah','2018-02-18 13:30:05','2018-02-18 13:30:05',NULL),
(68,'Dada nyeri','2018-02-18 13:30:44','2018-02-18 13:30:44',NULL),
(69,'Gelisah','2018-02-18 13:34:09','2018-02-18 13:34:09',NULL),
(70,'Diare','2018-02-18 13:34:55','2018-02-18 13:34:55',NULL),
(71,'takipnea (napas pendek cepat dangkal)','2018-02-18 13:35:35','2018-04-02 03:00:11',NULL),
(72,'Dada semakin nyeri jika menarik napas dalam','2018-02-18 13:39:14','2018-02-18 13:39:14',NULL),
(73,'Dada semakin nyeri jika batuk','2018-02-18 13:39:19','2018-02-18 13:39:19',NULL),
(74,'Riwayat tuberkulosis','2018-02-18 13:39:52','2018-02-18 13:39:52',NULL),
(75,'Riwayat pneumonia','2018-02-18 13:39:58','2018-02-18 13:39:58',NULL),
(76,'Terpapar Polusi Udara','2018-02-18 13:42:37','2018-02-18 13:42:37',NULL),
(77,'Riwayat Keluarga','2018-02-18 13:43:09','2018-02-18 13:43:09',NULL),
(78,'Hidung mengeluarkan darah','2018-02-18 13:45:07','2018-02-18 13:45:07',NULL),
(79,'Hidung mengeluarkan ingus kental','2018-02-18 13:48:34','2018-02-18 13:48:34',NULL),
(80,'Rongga hidung mengeluarkan bau busuk','2018-02-18 13:48:46','2018-02-18 13:48:46',NULL),
(81,'Wajah nyeri','2018-02-18 13:49:06','2018-02-18 13:49:06',NULL),
(82,'Gigi sakit','2018-02-18 13:49:32','2018-02-18 13:49:32',NULL),
(83,'Berkurangnya kemampuan untuk mencium bau (hiposmia)','2018-02-18 13:50:37','2018-02-18 13:50:37',NULL),
(84,'Hilangnya kemampuan untuk mencium bau (anosmia)','2018-02-18 13:50:45','2018-02-18 13:50:45',NULL),
(85,'Batuk lebih dari 2 minggu batuk kronis','2018-02-18 14:04:53','2018-04-02 16:14:10',NULL),
(86,'Penurunan berat badan','2018-02-18 14:05:08','2018-02-18 14:05:08',NULL),
(87,'Keringat malam','2018-02-18 14:05:18','2018-02-18 14:05:18',NULL),
(88,'Mudah lelah','2018-02-18 14:05:30','2018-02-18 14:05:30',NULL),
(89,'Orang di sekitar ada yang menderita TB','2018-02-18 14:08:22','2018-02-18 14:08:22',NULL),
(90,'Belum mendapat imunisasi campak','2018-02-18 14:18:26','2018-02-18 14:18:26',NULL),
(91,'Lesi Kulit','2018-02-18 14:20:24','2018-02-18 14:20:24',NULL),
(92,'Kulit Gatal','2018-02-18 14:20:45','2018-02-18 14:23:49',NULL),
(93,'Timbul Vesikel','2018-02-18 14:22:08','2018-02-18 14:24:08',NULL),
(94,'Kontak dengan penderita varisela','2018-02-18 14:24:38','2018-02-18 14:24:38',NULL),
(95,'Anemia','2018-02-18 14:29:07','2018-02-18 14:29:07',NULL),
(96,'Pembesaran limpa','2018-02-18 14:29:14','2018-02-18 14:29:14',NULL),
(97,'Otot nyeri','2018-02-18 14:29:25','2018-02-18 14:29:25',NULL),
(99,'Riwayat Malaria','2018-02-18 14:29:39','2018-02-18 14:29:39',NULL),
(100,'Berkunjung ke daerah endemik malaria','2018-02-18 14:29:54','2018-02-18 14:29:54',NULL),
(101,'Riwayat mendapat transfusi darah','2018-02-18 14:30:07','2018-02-18 14:30:07',NULL),
(102,'Kulit terlihat memerah','2018-02-18 14:30:23','2018-02-18 14:30:23',NULL),
(103,'Kulit kering','2018-02-18 14:30:30','2018-02-18 14:30:30',NULL),
(104,'Wajah pucat','2018-02-18 14:30:38','2018-02-18 14:30:38',NULL),
(105,'Nadi cepat jantung cepat','2018-02-18 14:30:48','2018-04-02 03:01:02',NULL),
(106,'Berkeringat','2018-02-18 14:31:06','2018-02-18 14:31:06',NULL),
(107,'Sakit perut','2018-02-18 14:36:54','2018-02-18 14:36:54',NULL),
(108,'Gangguan tidur','2018-02-21 10:22:02','2018-02-21 10:22:02',NULL),
(109,'Gangguan aktivitas sehari hari','2018-02-21 10:23:02','2018-02-21 10:23:02',NULL),
(110,'konjungtivitis','2018-02-21 10:25:07','2018-02-21 10:25:07',NULL),
(111,'Bernapas Melalui Mulut (terbiasa atau terpaksa)','2018-02-21 10:29:52','2018-02-21 10:29:52',NULL),
(112,'Riwayat Sinusitis','2018-02-21 10:30:41','2018-02-21 10:30:41',NULL),
(113,'Riwayat Rinitis','2018-02-21 10:30:50','2018-02-21 10:30:50',NULL),
(114,'Benda asing di tenggorokan','2018-02-21 10:32:06','2018-02-21 10:32:06',NULL),
(115,'Anoreksia','2018-02-28 23:00:37','2018-02-28 23:00:37',NULL),
(116,'Abdomen Nyeri','2018-02-28 23:01:48','2018-02-28 23:01:48',NULL),
(117,'Kesadaran menurun','2018-02-28 23:02:07','2018-02-28 23:02:07',NULL),
(118,'Fotofobia','2018-02-28 23:02:21','2018-02-28 23:02:21',NULL),
(119,'Nyeri tekan pada otot','2018-02-28 23:03:19','2018-02-28 23:03:19',NULL),
(120,'Ikterus (kulit dan mata menjadi kuning)','2018-02-28 23:04:00','2018-02-28 23:04:00',NULL),
(121,'kulit ruam','2018-02-28 23:04:39','2018-02-28 23:04:39',NULL),
(122,'Limfadenopati','2018-02-28 23:05:09','2018-02-28 23:05:09',NULL),
(123,'Hepatomegali','2018-02-28 23:05:32','2018-02-28 23:05:32',NULL),
(124,'Edema (bagian tubuh membengkak)','2018-02-28 23:05:56','2018-02-28 23:05:56',NULL),
(125,'Bradikardi relatif (frekuensi denyut jantung relatif lambat bila dibanding dengan tingkat kenaikan suhu tubuh)','2018-02-28 23:06:19','2018-02-28 23:06:19',NULL),
(126,'Konjungtiva suffusion','2018-02-28 23:06:47','2018-02-28 23:06:47',NULL),
(127,'Petekie (lesi perdarahan keunguan)','2018-02-28 23:07:21','2018-02-28 23:07:21',NULL),
(128,'Purpura','2018-02-28 23:08:52','2018-02-28 23:08:52',NULL),
(129,'epistaksis','2018-02-28 23:08:59','2018-02-28 23:08:59',NULL),
(130,'perdarahan gusi','2018-02-28 23:09:05','2018-02-28 23:09:05',NULL),
(131,'kaku kuduk','2018-02-28 23:09:10','2018-02-28 23:09:10',NULL),
(132,'Pembengkakan kelenjar getah bening tanpa ada luka','2018-02-28 23:23:32','2018-02-28 23:23:32',NULL),
(133,'Pembengkakan kelenjar getah bening tanpa ada luka di daerah lipatan','2018-02-28 23:23:49','2018-02-28 23:23:49',NULL),
(134,'Radang saluran kelenjar getah bening yang terasa panas dan sakit','2018-02-28 23:24:01','2018-02-28 23:24:01',NULL),
(135,'Filarial abses','2018-02-28 23:24:10','2018-02-28 23:24:10',NULL),
(136,'Pembesaran anggota badan','2018-02-28 23:24:23','2018-02-28 23:24:23',NULL),
(137,'Anggota badan berwarna merah kemerahan','2018-02-28 23:24:42','2018-02-28 23:24:42',NULL),
(138,'Anggota badan terasa panas','2018-02-28 23:24:58','2018-02-28 23:24:58',NULL),
(139,'Bayi','2018-02-28 23:36:42','2018-02-28 23:36:42',NULL),
(140,'Bayi baru lahir','2018-02-28 23:36:58','2018-02-28 23:36:58',NULL),
(141,'Tidak mau menyusu','2018-02-28 23:37:26','2018-02-28 23:37:26',NULL),
(142,'Rewel atau mudah menangis','2018-02-28 23:37:36','2018-02-28 23:37:36',NULL),
(143,'Kulit tipis','2018-02-28 23:37:47','2018-02-28 23:37:47',NULL),
(144,'Luka umbilikus','2018-02-28 23:37:52','2018-02-28 23:37:52',NULL),
(145,'Imunitas seluler dan humoral belum sempurna','2018-02-28 23:37:58','2018-02-28 23:37:58',NULL),
(146,'Tanda tanda membengkak pada sekitar tali pusar - pusat','2018-02-28 23:39:10','2018-02-28 23:39:10',NULL),
(147,'takikardia (detak jantung seseorang di atas normal dalam kondisi beristirahat)','2018-02-28 23:39:44','2018-02-28 23:39:44',NULL),
(148,'Hipotensi','2018-02-28 23:39:57','2018-02-28 23:39:57',NULL),
(149,'Letargi adalah suatu keadaan di mana terjadi penurunan kesadaran dan pemusatan perhatian serta kesiagaan','2018-02-28 23:40:16','2018-02-28 23:40:16',NULL),
(150,'omnolen, yaitu kesadaran menurun, respon psikomotor yang lambat, mudah tertidur, namun kesadaran dapat pulih bila dirangsang (mudah dibangunkan)','2018-02-28 23:40:48','2018-02-28 23:40:48',NULL),
(151,'Somnolen (Obtundasi, Letargi), yaitu kesadaran menurun, respon psikomotor yang lambat, mudah tertidur, namun kesadaran dapat pulih bila dirangsang','2018-02-28 23:43:05','2018-02-28 23:43:05',NULL),
(152,'Kulit merah terutama di wajah dan telinga','2018-02-28 23:56:06','2018-02-28 23:56:06',NULL),
(153,'Bercak mati rasa','2018-02-28 23:56:41','2018-02-28 23:56:41',NULL),
(154,'Bercak mati rasa tidak gatal','2018-02-28 23:56:49','2018-02-28 23:56:49',NULL),
(155,'Kulit melepuh','2018-02-28 23:56:58','2018-02-28 23:56:58',NULL),
(156,'Kulit melepuh tidak nyeri','2018-02-28 23:57:01','2018-02-28 23:57:01',NULL),
(157,'kontak dengan penderita lepra','2018-02-28 23:57:30','2018-02-28 23:57:30',NULL),
(158,'imunokompromais infeksi jamur','2018-02-28 23:57:55','2018-02-28 23:57:55',NULL),
(159,'Mati rasa','2018-03-01 00:07:06','2018-03-01 00:07:06',NULL),
(160,'Otot melemah','2018-03-01 00:07:12','2018-03-01 00:07:12',NULL),
(161,'diare akut','2018-03-01 00:27:21','2018-03-01 00:27:21',NULL),
(162,'Darah pada tinja','2018-03-01 00:27:47','2018-03-01 00:27:47',NULL),
(163,'Lendir pada tinja','2018-03-01 00:27:54','2018-03-01 00:27:54',NULL),
(164,'Kembung','2018-03-01 00:28:26','2018-03-01 00:28:26',NULL),
(165,'Mengonsumsi makanan laut mentah','2018-03-01 00:28:44','2018-03-01 00:28:44',NULL),
(166,'Makan di tempat tidak higienis','2018-03-01 00:28:51','2018-03-01 00:28:51',NULL),
(167,'Mengonsumsi makanan kurang matang','2018-03-01 00:29:04','2018-03-01 00:29:04',NULL),
(168,'Dehidrasi','2018-03-01 00:29:11','2018-03-01 00:29:11',NULL),
(169,'Mulut kering','2018-03-01 00:29:27','2018-03-01 00:29:27',NULL),
(170,'nyeri tekan perut','2018-03-01 00:31:34','2018-03-01 00:31:34',NULL),
(171,'Kulit eksim','2018-03-01 00:33:14','2018-03-01 00:33:14',NULL),
(172,'Kulit Urtikaria','2018-03-01 00:33:25','2018-03-01 00:33:25',NULL),
(173,'Asma','2018-03-01 00:33:35','2018-03-01 00:33:35',NULL),
(174,'Pipi mukosa (menebal)','2018-03-01 00:34:47','2018-03-01 00:34:47',NULL),
(175,'faring mukosa','2018-03-01 00:34:55','2018-03-01 00:34:55',NULL),
(176,'Pruritus gatal gatal kecil kecil','2018-03-01 00:35:15','2018-03-01 00:35:15',NULL),
(177,'Demam > 3 hari','2018-03-01 00:46:11','2018-03-01 00:46:11',NULL),
(178,'Kulit bintik bintik merah','2018-03-01 00:46:33','2018-03-01 00:46:33',NULL),
(179,'Mimisan','2018-03-01 00:46:39','2018-03-01 00:46:39',NULL),
(181,'Muntah berdarah','2018-03-01 00:46:51','2018-03-01 00:46:51',NULL),
(182,'Buang air besar berdarah','2018-03-01 00:46:59','2018-03-01 00:46:59',NULL),
(183,'Kejang','2018-03-01 00:47:15','2018-03-01 00:47:15',NULL),
(184,'Lelah','2018-03-03 03:05:58','2018-03-03 03:05:58',NULL),
(185,'Lesu','2018-03-03 03:06:02','2018-03-03 03:06:02',NULL),
(186,'Letih','2018-03-03 03:06:06','2018-03-03 03:06:06',NULL),
(187,'Penghilatan Berkunang kunang','2018-03-03 03:06:15','2018-03-03 03:06:15',NULL),
(188,'Pusing','2018-03-03 03:06:24','2018-03-03 03:06:24',NULL),
(189,'Telinga Berdenging','2018-03-03 03:06:30','2018-03-03 03:06:30',NULL),
(190,'penurunan konsentrasi','2018-03-03 03:06:46','2018-03-03 03:06:46',NULL),
(191,'disfagia','2018-03-03 03:10:52','2018-03-03 03:10:52',NULL),
(192,'Atrofi papil lidah','2018-03-03 03:11:04','2018-03-03 03:11:04',NULL),
(193,'Stomatitis Angularis','2018-03-03 03:11:26','2018-03-03 03:11:26',NULL),
(194,'Koilonikia','2018-03-03 03:12:06','2018-03-03 03:12:06',NULL),
(195,'kulit pucat','2018-03-03 03:30:45','2018-05-14 07:07:07',NULL),
(196,'nyeri tulang','2018-03-03 03:32:15','2018-03-03 03:32:15',NULL),
(197,'Riwayat Penyakit Pernapasan','2018-03-03 03:33:10','2018-03-03 03:33:10',NULL),
(198,'Nyeri pada ekstremitas bawah','2018-03-03 03:35:18','2018-03-03 03:35:18',NULL),
(199,'Papiledema','2018-03-03 03:40:21','2018-03-03 03:40:21',NULL),
(200,'Perdarahan Retina','2018-03-03 03:40:44','2018-03-03 03:40:44',NULL),
(201,'Glositis','2018-03-03 03:44:51','2018-03-03 03:44:51',NULL),
(202,'Hematuria','2018-03-03 03:46:03','2018-03-03 03:46:03',NULL),
(203,'Gagal Jantung Kongestif','2018-03-03 03:46:16','2018-03-03 03:46:16',NULL),
(204,'Jantung Berdebar','2018-03-03 03:47:36','2018-03-03 03:47:36',NULL),
(205,'Gangguan Kognitif','2018-03-03 03:48:32','2018-03-03 03:48:32',NULL),
(206,'Perubahan perilaku','2018-03-03 03:48:57','2018-03-03 03:48:57',NULL),
(207,'Organomegali','2018-03-03 03:50:37','2018-03-03 03:50:37',NULL),
(208,'Kaki kram','2018-03-03 03:53:34','2018-03-03 03:53:34',NULL),
(209,'Insomnia','2018-03-03 03:53:41','2018-03-03 03:53:41',NULL),
(210,'Diare terus menerus selama 1 bulan','2018-03-03 04:07:18','2018-03-03 04:07:18',NULL),
(211,'dermatitis seboroik','2018-03-03 04:08:40','2018-03-03 04:08:40',NULL),
(212,'kandidiasis oral','2018-03-03 04:10:45','2018-03-03 04:10:45',NULL),
(213,'oral hairy leukoplakia','2018-03-03 04:11:26','2018-03-03 04:11:26',NULL),
(214,'keilitis angularis','2018-03-03 04:11:30','2018-03-03 04:11:30',NULL),
(215,'Faringitis','2018-03-03 04:20:54','2018-03-03 04:20:54',NULL),
(216,'Ulkus mulut berulang','2018-03-03 04:21:17','2018-03-03 04:21:17',NULL),
(217,'Mudah Memar','2018-03-03 04:27:29','2018-03-03 04:27:29',NULL),
(218,'Infeksi Jamur','2018-03-03 04:28:19','2018-03-03 04:28:19',NULL),
(219,'Infeksi herpes','2018-03-03 04:32:42','2018-03-03 04:32:42',NULL),
(220,'Menstruasi tidak teratur','2018-03-03 04:36:35','2018-03-03 04:36:35',NULL),
(221,'Perubahan kuku','2018-03-03 04:41:20','2018-03-03 04:41:20',NULL),
(222,'Rambut Rontok','2018-03-05 12:17:26','2018-03-05 12:17:26',NULL),
(223,'Palpitasi (Denyut Detak Jantung Tidak Beraturan)','2018-03-05 12:21:27','2018-03-05 12:21:27',NULL),
(224,'Penglihatan berkurang','2018-03-05 12:22:56','2018-03-05 12:22:56',NULL),
(226,'Nyeri di belakang mata','2018-03-05 12:36:18','2018-03-05 12:36:18',NULL),
(227,'Feses berwarna hitam (melena)','2018-03-05 12:37:47','2018-03-05 12:37:47',NULL),
(228,'Amandel merah','2018-03-11 00:45:09','2018-03-11 00:45:09',NULL),
(229,'nafas bau','2018-03-11 00:46:46','2018-03-11 00:46:46',NULL),
(230,'Tenggorokan Gatal','2018-04-01 14:27:45','2018-04-01 14:27:45',NULL),
(231,'Napas Pendek dan terengah engah (napas cepat)','2018-04-01 14:37:27','2018-04-01 14:43:15',NULL),
(232,'Kulit biru','2018-04-02 02:56:54','2018-04-02 02:56:54',NULL),
(233,'Mimisan dengan volume darah yang banyak','2018-04-02 16:33:49','2018-04-02 16:33:49',NULL),
(234,'Sering mimisan dalam waktu singkat','2018-04-02 16:34:00','2018-04-02 16:34:00',NULL),
(235,'Ingus berwarna hijau','2018-04-03 16:11:01','2018-04-03 16:11:01',NULL),
(236,'Ingus berwarna kuning','2018-04-03 16:11:11','2018-04-03 16:11:11',NULL),
(237,'Mata nyeri','2018-04-03 17:01:53','2018-04-03 17:01:53',NULL),
(238,'Mata merah','2018-04-03 17:02:54','2018-04-03 17:02:54',NULL),
(239,'sensitif terhadap cahaya terlalu silau','2018-04-03 17:08:31','2018-04-03 17:09:59',NULL),
(240,'Bentol Bentol Kecil Gatal','2018-04-03 23:22:35','2018-04-03 23:22:35',NULL),
(241,'Bentol Bentol Kecil Gatal Berisi Cairan panas','2018-04-03 23:22:59','2018-04-03 23:22:59',NULL),
(242,'Keringat Dingin','2018-04-04 14:09:32','2018-04-04 14:09:32',NULL),
(243,'Punggung nyeri/sakit','2018-04-04 14:11:26','2018-04-04 14:11:26',NULL),
(244,'Panas dingin','2018-04-04 14:11:30','2018-04-04 14:11:30',NULL),
(245,'Splenomegali','2018-04-04 14:22:27','2018-04-04 14:22:27',NULL),
(246,'Kulit menebal tebal','2018-04-05 10:53:04','2018-04-05 10:53:04',NULL),
(247,'Alis dan bulu mata rontok','2018-04-05 16:29:41','2018-04-05 16:29:41',NULL),
(248,'Jari jemari hilang','2018-04-05 16:30:19','2018-04-05 16:30:19',NULL),
(249,'Mata kering','2018-04-05 16:31:35','2018-04-05 16:31:35',NULL),
(250,'Mata buta','2018-04-05 16:33:08','2018-04-05 16:33:08',NULL),
(251,'Wajah bentuk berubah','2018-04-05 16:35:56','2018-04-05 16:35:56',NULL),
(252,'Kulit bercak putih','2018-04-05 16:37:30','2018-04-05 16:37:30',NULL),
(253,'Bentol bentol','2018-04-05 16:42:55','2018-04-05 16:42:55',NULL),
(254,'Perut kram','2018-04-05 17:05:51','2018-04-05 17:05:51',NULL),
(255,'feses encer','2018-04-05 17:14:02','2018-04-05 17:14:02',NULL),
(256,'Mulut gatal bibir gatal','2018-04-07 16:13:09','2018-04-07 16:13:09',NULL),
(257,'mata bintitan','2018-04-07 16:13:43','2018-04-07 16:13:43',NULL),
(258,'Biduran','2018-04-07 16:15:08','2018-04-07 16:15:08',NULL),
(259,'wajah ruam','2018-04-07 16:23:46','2018-04-07 16:23:46',NULL),
(260,'Sariawan','2018-04-07 16:51:33','2018-04-07 16:51:33',NULL),
(261,'Hipertensi','2018-04-07 16:52:19','2018-04-07 16:52:19',NULL),
(262,'kulit ruam kupu kupu','2018-04-07 16:57:18','2018-04-07 16:57:18',NULL),
(263,'Limfa Nyeri Saat disentuh','2018-04-07 17:27:04','2018-05-14 07:06:56',NULL),
(264,'limfa abses','2018-04-07 17:27:11','2018-04-07 17:27:11',NULL),
(265,'Limfa nyeri','2018-04-07 17:28:47','2018-04-07 17:28:47',NULL),
(266,'limfa merah','2018-04-07 17:31:52','2018-04-07 17:31:52',NULL),
(267,'Mulut terasa asam','2018-04-08 13:38:30','2018-04-08 13:38:30',NULL),
(268,'Tenggorokan panas','2018-04-08 13:38:42','2018-04-08 13:38:42',NULL),
(269,'Minum kopi','2018-04-08 13:39:35','2018-04-08 13:39:35',NULL),
(270,'Kerongkongan tidak nyaman','2018-04-08 13:41:32','2018-04-08 13:41:32',NULL),
(271,'Dada panas','2018-04-08 13:42:03','2018-04-08 13:42:03',NULL),
(272,'Air liur meningkat','2018-04-08 13:44:21','2018-04-08 13:44:21',NULL),
(273,'Mulut pahit','2018-04-08 13:48:42','2018-04-08 13:48:42',NULL),
(274,'Pola makan tidak baik','2018-04-08 14:01:22','2018-04-08 14:01:22',NULL),
(275,'Stress','2018-04-08 14:01:40','2018-04-08 14:01:40',NULL),
(276,'Perut panas','2018-04-08 14:02:31','2018-04-08 14:02:31',NULL),
(278,'Buang Air besar berulang','2018-04-08 14:36:16','2018-04-08 14:36:16',NULL),
(279,'Anus berdarah','2018-04-08 20:21:19','2018-04-08 20:21:19',NULL),
(281,'Iritasi disekitar anus','2018-04-08 20:21:47','2018-04-08 20:21:47',NULL),
(282,'Benjolan diluar anus nyeri','2018-04-08 20:23:39','2018-04-08 20:23:39',NULL),
(283,'Anus gatal','2018-04-08 20:25:20','2018-04-08 20:25:20',NULL),
(284,'Anus nyeri','2018-04-08 20:27:10','2018-04-08 20:27:10',NULL),
(285,'Malaise (Lemah, letih, lesu)','2018-04-09 00:19:00','2018-04-09 00:19:00',NULL),
(286,'Warna urine seperti teh','2018-04-09 00:19:56','2018-04-09 00:19:56',NULL),
(287,'Feses berwarna pucat/dempul','2018-04-09 00:21:32','2018-04-09 00:21:32',NULL),
(288,'Sakit perut kanan bawah','2018-04-10 14:03:28','2018-04-10 14:03:28',NULL),
(289,'Buang air kecil nyeri','2018-04-10 14:06:20','2018-04-10 14:06:20',NULL),
(290,'Tidak bisa buang gas','2018-04-10 14:08:57','2018-04-10 14:08:57',NULL),
(291,'Perut buncit','2018-04-10 14:32:37','2018-04-10 14:32:37',NULL),
(292,'Ada cacing pada feses','2018-04-10 14:34:34','2018-04-10 14:34:34',NULL),
(293,'Ada cacing pada muntah','2018-04-10 14:34:39','2018-04-10 14:34:39',NULL),
(294,'Tungkai Nyeri','2018-04-11 16:13:53','2018-04-11 16:13:53',NULL),
(295,'Lambung tidak enak','2018-04-11 16:22:58','2018-04-11 16:22:58',NULL),
(296,'Konstipasi Sembelit','2018-04-11 17:28:28','2018-04-11 17:28:28',NULL),
(297,'Mata perih mata panas','2018-04-11 17:36:22','2018-04-11 17:36:22',NULL),
(299,'Mata terbakar sensasi','2018-04-11 17:36:40','2018-04-11 17:36:40',NULL),
(300,'Mata bengkak','2018-04-11 17:37:10','2018-04-11 17:37:10',NULL),
(301,'Menggunakan lensa mata','2018-04-11 17:37:19','2018-04-11 17:37:19',NULL),
(302,'Menggunakan komputer elektronik lama','2018-04-11 17:37:33','2018-04-11 17:37:33',NULL),
(303,'Menopause','2018-04-11 17:38:37','2018-04-11 17:38:37',NULL),
(305,'Mata berpasir sensasi','2018-04-11 17:41:38','2018-04-11 17:41:38',NULL),
(306,'Mata lelah','2018-04-11 17:42:24','2018-04-11 17:42:24',NULL),
(307,'Mata berair','2018-04-11 17:42:28','2018-04-11 17:42:28',NULL),
(308,'Penglihatan menurun pada malam hari atau pada keadaan gelap','2018-04-12 21:49:03','2018-04-12 21:49:03',NULL),
(309,'sulit beradaptasi pada cahaya yang redup.','2018-04-12 21:49:17','2018-04-12 21:49:17',NULL),
(310,'Penglihatan kabur','2018-04-12 21:53:39','2018-04-12 21:53:39',NULL),
(311,'Kelopak Mata Bengkak','2018-04-12 21:58:29','2018-04-12 21:58:29',NULL),
(312,'Benjolan di kelopak mata','2018-04-12 21:59:15','2018-04-12 21:59:15',NULL),
(313,'Kelopak Mata Sayu','2018-04-12 21:59:52','2018-04-12 21:59:52',NULL),
(314,'Rasa tak nyaman saat berkedip','2018-04-12 22:00:07','2018-04-12 22:00:07',NULL),
(315,'Mata terasa mengganjal','2018-04-12 22:00:19','2018-04-12 22:00:19',NULL),
(316,'Mata muncul kotoran di sekeliling kelopak mata (belek)','2018-04-12 22:04:01','2018-04-12 22:04:01',NULL),
(317,'Bulu mata lengket ketika bangun tidur','2018-04-12 22:13:39','2018-04-12 22:13:39',NULL),
(318,'Kelopak mata merah','2018-04-12 22:27:11','2018-04-12 22:27:11',NULL),
(319,'Kelopak mata gatal','2018-04-12 22:27:52','2018-04-12 22:27:52',NULL),
(320,'benda asing di mata (kelilipan)','2018-04-13 05:56:06','2018-04-14 13:59:55',NULL),
(321,'memincingkan mata untuk melihat lebih jelas','2018-04-13 06:12:43','2018-04-13 06:12:43',NULL),
(322,'garis lurus tampak miring','2018-04-13 06:20:41','2018-04-13 06:20:41',NULL),
(323,'sulit membedakan warna yang bersebelahan','2018-04-13 06:21:07','2018-04-13 06:21:07',NULL),
(324,'mata tegang','2018-04-13 06:24:05','2018-04-13 06:24:05',NULL),
(325,'penglihatan kabur jarak dekat','2018-04-13 06:30:57','2018-04-13 06:30:57',NULL),
(326,'kesulitan membaca','2018-04-13 06:38:43','2018-04-13 06:38:43',NULL),
(327,'mata juling','2018-04-13 06:43:34','2018-04-13 06:43:34',NULL),
(328,'Penglihatan kabur jarak jauh','2018-04-13 06:46:05','2018-04-13 06:46:05',NULL),
(329,'Membaca dari jauh','2018-04-13 11:42:25','2018-04-13 11:42:25',NULL),
(330,'Membaca membutuhkan lampu','2018-04-13 11:42:40','2018-04-13 11:42:40',NULL),
(331,'Usia tua','2018-04-13 11:44:32','2018-04-13 11:44:32',NULL),
(332,'Penglihatan menurun tertutup asap/kabut','2018-04-13 11:51:35','2018-04-13 11:51:35',NULL),
(333,'Penglihatan menjadi dua','2018-04-13 11:54:00','2018-04-13 11:54:00',NULL),
(334,'Ukuran lensa berubah','2018-04-13 11:54:52','2018-04-13 11:54:52',NULL),
(335,'Penglihatan Warna disekitar memudar','2018-04-13 11:56:18','2018-05-11 03:28:44',NULL),
(336,'Penglihatan menurun tajam','2018-04-13 12:15:53','2018-04-13 12:15:53',NULL),
(337,'Bulu mata berkontak dengan permukaan bola mata','2018-04-14 14:00:45','2018-04-14 14:00:45',NULL),
(338,'Tidak ada gangguan penglihatan','2018-04-14 14:08:48','2018-04-14 14:08:48',NULL),
(339,'Gangguan Penglihatan','2018-04-14 14:49:45','2018-04-14 14:49:45',NULL),
(340,'Mata berdarah (tampak darah)','2018-04-14 14:52:20','2018-04-14 14:52:20',NULL),
(341,'Penderita diabetes','2018-04-14 15:00:54','2018-04-14 15:00:54',NULL),
(342,'penglihatan hilang mendadak','2018-04-14 15:02:07','2018-04-14 15:02:07',NULL),
(343,'Penglihatan muncul benang tipis (floaters)','2018-04-14 15:03:18','2018-04-14 15:04:49',NULL),
(344,'Penglihatan muncul titik hitam','2018-04-14 15:03:33','2018-04-14 15:03:33',NULL),
(345,'Telinga nyeri ringan','2018-04-14 22:35:03','2018-04-14 22:35:03',NULL),
(346,'Telinga nyeri berat','2018-04-14 22:35:10','2018-04-14 22:35:10',NULL),
(347,'Telinga nyeri saat disentuh','2018-04-14 22:35:35','2018-04-14 22:35:35',NULL),
(348,'Telinga nyeri ketika mengunyah','2018-04-14 22:35:44','2018-04-14 22:35:44',NULL),
(349,'Telinga penuh terasa','2018-04-14 22:36:08','2018-04-14 22:36:08',NULL),
(350,'Pendengaran berkurang','2018-04-14 22:36:15','2018-04-14 22:36:15',NULL),
(351,'Telinga dengung (tinnitus','2018-04-14 22:36:32','2018-04-14 22:36:32',NULL),
(352,'Telinga keluhan hanya pada satu telinga','2018-04-14 22:36:58','2018-04-14 22:36:58',NULL),
(353,'Telinga basah','2018-04-14 22:37:01','2018-04-14 22:37:01',NULL),
(354,'Telinga gatal','2018-04-14 22:39:13','2018-04-14 22:39:13',NULL),
(355,'Telinga bernanah','2018-04-14 22:39:40','2018-04-14 22:39:40',NULL),
(356,'Telinga mengeluarkan cairan','2018-04-14 22:43:23','2018-04-14 22:43:23',NULL),
(357,'Telinga merah','2018-04-14 22:45:23','2018-04-14 22:45:23',NULL),
(358,'keseimbangan menghilang','2018-04-14 22:48:35','2018-04-14 22:48:35',NULL),
(359,'Telinga nyeri bila kemasukan air','2018-04-15 00:27:06','2018-04-15 00:27:06',NULL),
(360,'Kebiasaan mengorek telinga','2018-04-15 00:27:27','2018-04-15 00:27:27',NULL),
(361,'Nyeri dada saat beraktivitas','2018-04-16 02:53:07','2018-04-16 02:53:07',NULL),
(362,'Dada nyeri menjalar ke punggung, lengan, bahu','2018-04-16 02:57:39','2018-04-16 02:57:39',NULL),
(363,'Gangguan Pernapasan','2018-04-16 13:23:23','2018-04-16 13:23:23',NULL),
(364,'Riwayat gangguan jantung','2018-04-16 13:25:02','2018-04-16 13:25:02',NULL),
(365,'Obesitas','2018-04-16 14:09:34','2018-04-16 14:09:34',NULL),
(366,'Pingsan mendadak','2018-04-18 00:44:06','2018-04-18 00:44:06',NULL),
(367,'Henti Jantung','2018-04-18 00:44:13','2018-04-18 00:44:13',NULL),
(368,'Tidak ada nafas','2018-04-18 00:44:58','2018-04-18 00:44:58',NULL),
(369,'Tidak sadar','2018-04-18 00:45:01','2018-04-18 00:45:01',NULL),
(372,'Leher Kaku','2018-04-18 01:06:40','2018-04-18 01:06:40',NULL),
(373,'patah tulang terbuka setelah trauma','2018-04-20 13:01:51','2018-04-20 13:01:51',NULL),
(375,'sulit digerakkan','2018-04-20 13:03:44','2018-04-20 13:03:44',NULL),
(376,'deformitas','2018-04-20 13:04:14','2018-04-20 13:04:14',NULL),
(377,'perubahan warna','2018-04-27 02:43:20','2018-04-27 02:43:20',NULL),
(378,'gangguan sensibilitas','2018-04-27 02:43:53','2018-04-27 02:43:53',NULL),
(379,'adanya riwayat trauma','2018-04-28 04:46:42','2018-04-28 04:46:42',NULL),
(380,'bengkak','2018-04-28 04:50:46','2018-04-28 04:50:46',NULL),
(381,'haus','2018-05-05 05:48:39','2018-05-05 05:48:39',NULL),
(382,'Telinga berdarah','2018-05-10 09:08:38','2018-05-10 09:08:38',NULL),
(383,'Telinga bengkak','2018-05-10 14:42:51','2018-05-10 14:42:51',NULL),
(384,'Telinga nyeri satu sisi','2018-05-10 14:45:51','2018-05-10 14:45:51',NULL),
(385,'Penglihatan lingkaran cahaya, pelangi disekitar cahaya','2018-05-11 05:29:53','2018-05-11 05:32:04',NULL),
(386,'Penglihatan menyempit (tunnel vision)','2018-05-11 05:32:11','2018-05-11 05:33:40',NULL),
(388,'Urine berdarah','2018-05-11 12:06:43','2018-05-11 12:06:43',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
