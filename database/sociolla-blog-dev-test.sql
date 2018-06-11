/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.60-0ubuntu0.14.04.1 : Database - sociolla_dev_test
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sociolla_dev_test` /*!40100 DEFAULT CHARACTER SET latin1 */;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`blog_id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`blog_id`,`slug`,`title`,`content`,`tag`,`created_by`,`created_at`,`updated_by`,`updated_at`,`status`) values (1,'blog-1','Blog 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis lobortis magna. Aliquam non mattis magna. Proin vitae metus sodales, tristique ex sed, dignissim nulla. Nunc porttitor turpis in pretium pellentesque. Nunc tempus, libero a commodo molestie, odio risus pulvinar mauris, porttitor ultrices leo lorem vel dolor. Curabitur viverra in arcu eget tempus. Mauris id enim non quam semper vulputate. Pellentesque sed interdum sem, vitae tristique risus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi euismod enim nec ipsum ullamcorper, id posuere erat blandit. Duis ornare dui eget velit venenatis varius. Nunc laoreet condimentum turpis a feugiat. Vestibulum auctor arcu vel libero finibus, ut tempus odio tincidunt. Ut magna massa, tempor nec erat sit amet, luctus condimentum odio. Sed diam metus, vehicula non quam ut, sagittis rutrum tortor. Aliquam id laoreet tellus.','',1,'2018-06-11 16:03:34',0,'2018-06-12 00:59:31',NULL),(2,NULL,'Blog 2','Proin luctus risus mauris, a commodo augue fringilla vel. Sed a urna lacinia, gravida tellus et, lacinia tellus. Nunc malesuada semper dui vulputate mattis. Curabitur at feugiat erat. Integer eget auctor orci. Nullam lorem sapien, vulputate non interdum eget, fermentum et urna. Cras vulputate sit amet tellus venenatis hendrerit. Nam vitae sem et justo porta vehicula eget nec urna. Curabitur eget leo vitae ex efficitur interdum. Proin consectetur dapibus congue. Fusce tincidunt congue neque vel elementum. Donec eget lorem id tellus placerat eleifend at viverra ante. Donec quam justo, ultricies id enim sit amet, suscipit laoreet nulla.',NULL,1,'2018-06-11 16:03:34',NULL,NULL,1),(3,NULL,'Blog 3','Vestibulum sed tortor ultricies, placerat nulla id, maximus velit. Proin ultricies quam eget ligula convallis, quis iaculis risus condimentum. Phasellus maximus tincidunt sem. Sed efficitur sodales leo. Proin sed metus egestas magna laoreet elementum a nec nibh. Donec purus diam, suscipit eget nibh non, malesuada dictum diam. Vestibulum ac mattis ipsum, vitae interdum lectus. Vivamus pellentesque consequat risus, et interdum felis finibus nec. Pellentesque porta orci a mollis dignissim. Cras tristique at turpis a posuere. Proin efficitur accumsan purus non dictum. Nullam non lobortis arcu. Integer vitae nulla sed tellus porttitor ornare. Quisque ultricies, lorem et sollicitudin hendrerit, diam metus euismod massa, ac suscipit felis erat sed metus. Pellentesque non eleifend eros. Nunc rhoncus dui ac diam scelerisque laoreet vel nec ante.',NULL,1,'2018-06-11 16:03:34',NULL,NULL,1),(4,'blog-4','Blog 4','&lt;p&gt;Maecenas sem arcu, malesuada ac egestas eget, ornare sed orci. Aenean in ullamcorper ante, at tristique orci. Integer elementum risus ac neque dignissim, non condimentum velit tempus. Phasellus feugiat, turpis in pharetra tincidunt, tellus dui ultrices augue, et scelerisque eros lorem eleifend leo. Cras pulvinar sed neque id aliquet. Proin a vulputate tellus. Proin imperdiet eros non diam tempor rhoncus. Curabitur pellentesque placerat lectus eget faucibus. Vestibulum mi ipsum, ullamcorper vel dignissim non, fermentum at eros. Integer vitae mollis dolor. Nullam accumsan, orci id facilisis mattis, mauris libero euismod metus, at sodales elit sem a velit. Aliquam consequat sagittis augue eu cursus. Donec mollis sodales nulla, sagittis aliquet lacus faucibus eget. Integer sit amet est dui.&lt;/p&gt;\n','coba',1,'2018-06-11 16:03:34',2,'2018-06-12 02:01:20',NULL),(5,'blog-5','Blog 5','&lt;p&gt;In sed faucibus leo. Nullam finibus, elit ut pharetra euismod, enim quam laoreet erat, in lobortis leo odio at ligula. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivam&lt;strong&gt;us ac sollicitudin dui. Integer fermentum venenatis magna, et vestibulum dui porta sed. Praesent ante magna, aliquam at fringilla vitae, finibus scelerisque est. Mauris malesuada, lacus ut efficitur consequat, ligula turpis sollicitu&lt;/strong&gt;din ipsum, sit amet porta risus enim sit amet felis. Nullam id laoreet turpis, at aliquet erat.&lt;/p&gt;\n','',1,'2018-06-11 16:03:34',0,'2018-06-12 01:32:58',NULL),(6,'blog-baru','Blog baru','&lt;p&gt;asnasbaso&amp;nbsp;&lt;strong&gt;uahsaush&lt;/strong&gt; snnas&lt;/p&gt;\n','',0,'2018-06-12 01:03:30',2,'2018-06-12 01:57:57',NULL),(7,'artikel-baru','Artikel Baru','&lt;p&gt;asassasas sss&amp;nbsp;&lt;/p&gt;\n','coba,baru',2,'2018-06-12 01:58:33',2,'2018-06-12 02:01:04',NULL);

/*Table structure for table `blog_comment` */

DROP TABLE IF EXISTS `blog_comment`;

CREATE TABLE `blog_comment` (
  `blog_comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `comment` text,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`blog_comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blog_comment` */

/*Table structure for table `sso_session_web` */

DROP TABLE IF EXISTS `sso_session_web`;

CREATE TABLE `sso_session_web` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sso_session_web` */

insert  into `sso_session_web`(`id`,`ip_address`,`timestamp`,`data`) values ('c1t47l5an9dsr5kgj5443himn1llvgte','172.26.94.49',1528704972,'__ci_last_regenerate|i:1528704972;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('inkshvh4duhekt89elqbe7mrub20ckp2','172.26.94.49',1528705309,'__ci_last_regenerate|i:1528705309;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('7420km3mm3bg8m5hc3ddq98fomm5muj0','172.26.94.49',1528706135,'__ci_last_regenerate|i:1528706135;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('sim88tap8ta2fftnfrqohbdub3qon4pk','172.26.94.49',1528706514,'__ci_last_regenerate|i:1528706514;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('46i4aprve1elqe4u3p3032gftm8chfur','172.26.94.49',1528707553,'__ci_last_regenerate|i:1528707553;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('k3kek4pd9sa50n7kc1eb57jm45admune','172.26.94.49',1528719155,'__ci_last_regenerate|i:1528719155;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('a4vplqd7pbpfe0727keo4pcpd34uq48q','fe80::5141:a5f0:b93f:3286',1528719460,'__ci_last_regenerate|i:1528719460;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('1urs7hd3a8suph0licnce1uaen1bq17d','fe80::5141:a5f0:b93f:3286',1528723985,'__ci_last_regenerate|i:1528723985;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('39s90r0f3pm888s5rg3r6laimgoqrqsr','172.26.94.49',1528724324,'__ci_last_regenerate|i:1528724324;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('kckdu0ql27kk9lbgq2uqift1ve54smsi','172.26.94.49',1528724625,'__ci_last_regenerate|i:1528724625;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('6r78rgoluik5ibgsri3afuhgkfa2ej9b','172.26.94.49',1528726426,'__ci_last_regenerate|i:1528726426;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('0me7ota7e4j92lu5ql15489m4g3k5ci2','172.26.94.49',1528726752,'__ci_last_regenerate|i:1528726752;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('5uhtq0nsm0tgka08a7c1v7fboh72idkr','172.26.94.49',1528727189,'__ci_last_regenerate|i:1528727189;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('5kl15jof336n5kc0874qbjq0rhkall3n','172.26.94.49',1528727513,'__ci_last_regenerate|i:1528727513;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('k688674q7ig7lggojrr2qq6dmk2ffo8m','172.26.94.49',1528728937,'__ci_last_regenerate|i:1528728937;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('e7teiobpvqe6a96gku7lv2vn3vtgj7b2','172.26.94.49',1528736476,'__ci_last_regenerate|i:1528736476;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('io81uis89raavaa9r0nq6ufm799f9s8c','172.26.94.49',1528736165,'__ci_last_regenerate|i:1528736164;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('nojac14gt6715i0mea49splh37941j4j','172.26.94.49',1528736849,'__ci_last_regenerate|i:1528736849;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('46bidcd4aaou7piqrvbijbfntm82gmfk','172.26.94.49',1528737177,'__ci_last_regenerate|i:1528737177;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('tiabu4oomk3o0n3or8ekteuce688he78','172.26.94.49',1528737499,'__ci_last_regenerate|i:1528737499;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('3n8ho98vkstaqpb03vf8eh6e899bj2lt','172.26.94.49',1528737868,'__ci_last_regenerate|i:1528737868;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('5nr5kdrq1evmh11k23jnfql8korodbv2','172.26.94.49',1528738290,'__ci_last_regenerate|i:1528738290;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('f5i396tergoshnvmp81dh0imsep4tii6','172.26.94.49',1528738613,'__ci_last_regenerate|i:1528738613;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('fft7h2qc1luqd2fv5pb5m9vk8ev1oqam','172.26.94.49',1528739002,'__ci_last_regenerate|i:1528739002;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('o2tub4vtnlnbr4feua7uaj5ah8ulj2a4','172.26.94.49',1528739310,'__ci_last_regenerate|i:1528739310;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('cl71a71db9vqithuest87cimec10b56n','172.26.94.49',1528739842,'__ci_last_regenerate|i:1528739842;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('evn9vvkuu7e8v2srfi4drs5ar0b5dl9i','172.26.94.49',1528740160,'__ci_last_regenerate|i:1528740160;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('5rs6h9925f6tk59vrik994r28h87p3k3','172.26.94.49',1528740601,'__ci_last_regenerate|i:1528740601;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('a1urcp5uh7deb9ttj8bsvgimiurj28mg','172.26.94.49',1528741333,'__ci_last_regenerate|i:1528741333;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('lh28ui0ak40bq1acoe0pqlsh5nstpp7d','172.26.94.49',1528741657,'__ci_last_regenerate|i:1528741657;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('sl45lcdi2skqg9os77amsoqnt99bho6c','172.26.94.49',1528741962,'__ci_last_regenerate|i:1528741962;auth_access_key|s:15:\"5y1OH4Vr8qQJvg7\";error_message|s:0:\"\";'),('qeq88eto98tret6qgjhh097pjqv2f3mk','172.26.94.49',1528742780,'__ci_last_regenerate|i:1528742780;auth_access_key|s:15:\"yQon4NbG5KjUzlD\";error_message|s:0:\"\";'),('2n48uaav6kd7l9ihpci4g3vntb7nqs0p','172.26.94.49',1528743211,'__ci_last_regenerate|i:1528743211;auth_access_key|s:0:\"\";error_message|s:0:\"\";profile|a:6:{s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@email.com\";s:8:\"password\";s:32:\"0cc175b9c0f1b6a831c399e269772661\";s:6:\"status\";s:1:\"1\";}sso|i:1;'),('7ddqem3jfmb9qhde72i7qpqv2punq41p','172.26.94.49',1528743711,'__ci_last_regenerate|i:1528743711;auth_access_key|s:0:\"\";error_message|s:0:\"\";profile|a:6:{s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:9:\"adepanges\";s:9:\"full_name\";s:12:\"Ade Pangestu\";s:5:\"email\";s:19:\"adepanges@gmail.com\";s:8:\"password\";s:32:\"0cc175b9c0f1b6a831c399e269772661\";s:6:\"status\";s:1:\"1\";}sso|i:1;'),('ksqobul43liq0j6felr8gf8dpt73tjqt','172.26.94.49',1528744240,'__ci_last_regenerate|i:1528744240;auth_access_key|s:0:\"\";error_message|s:0:\"\";profile|a:6:{s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:9:\"adepanges\";s:9:\"full_name\";s:12:\"Ade Pangestu\";s:5:\"email\";s:19:\"adepanges@gmail.com\";s:8:\"password\";s:32:\"0cc175b9c0f1b6a831c399e269772661\";s:6:\"status\";s:1:\"1\";}sso|i:1;'),('btq8oukump8jm8hd7ej5u3ha2p3148fh','172.26.94.49',1528744583,'__ci_last_regenerate|i:1528744583;auth_access_key|s:0:\"\";error_message|s:0:\"\";profile|a:6:{s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:9:\"adepanges\";s:9:\"full_name\";s:12:\"Ade Pangestu\";s:5:\"email\";s:19:\"adepanges@gmail.com\";s:8:\"password\";s:32:\"0cc175b9c0f1b6a831c399e269772661\";s:6:\"status\";s:1:\"1\";}sso|i:1;blog_tag_filter|s:4:\"baru\";'),('mh39ldt3f3atm7ljgtaln0bgnrflaril','172.26.94.49',1528744931,'__ci_last_regenerate|i:1528744931;auth_access_key|s:0:\"\";error_message|s:0:\"\";profile|a:6:{s:7:\"user_id\";s:1:\"2\";s:8:\"username\";s:9:\"adepanges\";s:9:\"full_name\";s:12:\"Ade Pangestu\";s:5:\"email\";s:19:\"adepanges@gmail.com\";s:8:\"password\";s:32:\"0cc175b9c0f1b6a831c399e269772661\";s:6:\"status\";s:1:\"1\";}sso|i:1;blog_tag_filter|s:4:\"coba\";'),('rb8b6tcsf4blej2h474a8oe2o2v67ddb','172.26.94.49',1528745007,'__ci_last_regenerate|i:1528745004;auth_access_key|s:0:\"\";error_message|s:0:\"\";profile|a:6:{s:7:\"user_id\";s:1:\"1\";s:8:\"username\";s:5:\"admin\";s:9:\"full_name\";s:13:\"Administrator\";s:5:\"email\";s:15:\"admin@email.com\";s:8:\"password\";s:32:\"0cc175b9c0f1b6a831c399e269772661\";s:6:\"status\";s:1:\"1\";}sso|i:1;');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`username`,`full_name`,`email`,`password`,`status`) values (1,'admin','Administrator','admin@email.com','0cc175b9c0f1b6a831c399e269772661',1),(2,'adepanges','Ade Pangestu','adepanges@gmail.com','0cc175b9c0f1b6a831c399e269772661',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
