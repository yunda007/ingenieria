/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.8-MariaDB : Database - laravel
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `laravel`;

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),
(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),
(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
(6,'2016_06_01_000004_create_oauth_clients_table',1),
(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
(8,'2019_08_19_000000_create_failed_jobs_table',1);

/*Table structure for table `oauth_access_tokens` */

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_access_tokens` */

insert  into `oauth_access_tokens`(`id`,`user_id`,`client_id`,`name`,`scopes`,`revoked`,`created_at`,`updated_at`,`expires_at`) values 
('002de7b57bfc6aaf37ce0bc887bd9ca89505ef48673e46a4a7d24c58e1fff48091bd852c7b9774bc',1,1,'authToken','[]',0,'2021-03-03 00:29:21','2021-03-03 00:29:21','2022-03-03 00:29:21'),
('00e85c47d91172331c22cdf473c674911dc426d1623881e02d3a72dfc4cf976b32652f622dc1a8ae',3,1,'authToken','[]',0,'2021-03-19 16:05:34','2021-03-19 16:05:34','2022-03-19 16:05:34'),
('087e8dcf2792606eadc5af61e33d4e6148fcac13df67822db0b4c51b0ce32a606e04505a8ae62d9f',3,1,'authToken','[]',0,'2021-04-04 13:33:28','2021-04-04 13:33:28','2022-04-04 13:33:28'),
('0a572f19ee1efdf69a894d4eed94fb4b151c35a907a7c821b9a67842e23aafe60d9cbfae0bc8e82f',3,1,'authToken','[]',0,'2021-04-23 17:31:07','2021-04-23 17:31:07','2022-04-23 17:31:07'),
('0b8ac2e488cd63dbac6d7169225ca003a29401e4adea3587233c61dec673be91a413ab9f83bea03b',3,1,'authToken','[]',0,'2021-03-19 16:25:35','2021-03-19 16:25:35','2022-03-19 16:25:35'),
('0de2bcb8b181542f2d09c7e216252bc995dd1f3258e40daff0c1c8db674bbd7e42e7ea829bceb0a4',1,1,'authToken','[]',0,'2021-03-24 01:08:57','2021-03-24 01:08:57','2022-03-24 01:08:57'),
('0fd3cf851eae422a65cbc20506d7df899477752915d681d6b317396070aff0ece0b9f1d9f68de7e5',1,1,'authToken','[]',0,'2021-03-24 01:08:55','2021-03-24 01:08:55','2022-03-24 01:08:55'),
('139b47d0d36c3cd9a2aa191f7f31b63559dffb6c3cc191982bff28b075b580b1d78005fb655bc63f',3,1,'authToken','[]',0,'2021-03-19 16:05:33','2021-03-19 16:05:33','2022-03-19 16:05:33'),
('16c7a97199308395e5cb20c437db02f2d1664cebe99518ebb540c95a22656756b681876e1ab74692',1,1,'authToken','[]',0,'2021-03-24 01:08:59','2021-03-24 01:08:59','2022-03-24 01:08:59'),
('170f0dfca6c0a812ef57ee97f0bbb746e1ac4af7ca51da6b1b359b510977c427c85f7cc09451b959',3,1,'authToken','[]',0,'2021-03-19 16:05:29','2021-03-19 16:05:29','2022-03-19 16:05:29'),
('1b3ed15c49ce2b8858292d4555ca0b8a5e1f8888fca22f858154f9b527c43ebcaf0273e1e2985e28',3,1,'authToken','[]',0,'2021-03-19 14:37:30','2021-03-19 14:37:30','2022-03-19 14:37:30'),
('1b971754e6c5e30eaa3e16e4d1901e3370f35ff5c98b1f2d9c1671f72f4a2c7609ca0ede6cbda8da',1,1,'authToken','[]',0,'2021-03-24 01:08:50','2021-03-24 01:08:50','2022-03-24 01:08:50'),
('1f0e26b011f81f13329a6eacb61404c7a3a519be42f85871d34b705f039b38a20efd89ef6c5b370e',3,1,'authToken','[]',0,'2021-03-19 16:05:34','2021-03-19 16:05:34','2022-03-19 16:05:34'),
('1fc66228ff95db853a6b6bae9e3f79ca329f13d6b75b083ec1633d3e5c927bf5e77ec3e4765febf3',3,1,'authToken','[]',0,'2021-03-19 16:05:34','2021-03-19 16:05:34','2022-03-19 16:05:34'),
('228645f1a7cfd816f08e133de3a94dc28888a16ccaa7ae5cf2623d9fc16f60b25b1ba8e33978f7fc',3,1,'authToken','[]',0,'2021-03-19 16:05:33','2021-03-19 16:05:33','2022-03-19 16:05:33'),
('23111ddb84b2e61695d3c680e969b81e720524de5de9262ec0ef299b3c1fc3c431d9fa6732c6f714',3,1,'authToken','[]',0,'2021-03-19 17:48:20','2021-03-19 17:48:20','2022-03-19 17:48:20'),
('26fe5f1d8fd2004b60778f071dc366796355b33427965591cb10c047352f36aa1d20eeb8a52edecd',3,1,'authToken','[]',0,'2021-03-19 16:05:35','2021-03-19 16:05:35','2022-03-19 16:05:35'),
('27c07d149a2df1e65351136889e864c3987b304e2f6bc282e12f847a9005b849a578978e955ed557',1,1,'authToken','[]',0,'2021-03-24 01:08:57','2021-03-24 01:08:57','2022-03-24 01:08:57'),
('29745e536213d74c3e05f3d2ea96d8e7d4daf8a8c1daa0080ab028907204a8cfff5a941f11813ab0',1,1,'authToken','[]',0,'2021-03-24 01:08:55','2021-03-24 01:08:55','2022-03-24 01:08:55'),
('2ee20753ac1ae9e2aa54b6e3bd95c14c0d81632c2d9f6070b52de8a4f806d135ee04b003c4afdfe5',1,1,'authToken','[]',0,'2021-03-09 21:51:32','2021-03-09 21:51:32','2022-03-09 21:51:32'),
('32d1f0de4a8330267301b52ea1c19c3b8304f1b11607df5150ad6b4a6926257aec6cc6eb886a0f50',3,1,'authToken','[]',0,'2021-03-19 17:01:24','2021-03-19 17:01:24','2022-03-19 17:01:24'),
('373bca4ebe938957de4940a76c1908ae9df041ad524d02b9b21e2ca3c6428e8f521eceec03f5b51a',3,1,'authToken','[]',0,'2021-03-19 14:37:30','2021-03-19 14:37:30','2022-03-19 14:37:30'),
('3b1d1b9dda2bb8c044ad9040f5b75a8c3ea7ef7d00fb7b251c632fee4b6819d414559c1d83464c7d',1,1,'authToken','[]',0,'2021-03-24 01:08:55','2021-03-24 01:08:55','2022-03-24 01:08:55'),
('3cdf5d57c8f9a08cc5553e8f9f6b5e4ca2d39c11e362b76c9657315432c5b1d9ea76d66c30712ce6',3,1,'authToken','[]',0,'2021-03-19 14:37:30','2021-03-19 14:37:30','2022-03-19 14:37:30'),
('3d603e9f9f7fb32241a63689407d7c09e19257eea01b5c1f788c364df5045fc82f1dd22c0ba45a29',1,1,'authToken','[]',0,'2021-03-12 15:42:46','2021-03-12 15:42:46','2022-03-12 15:42:46'),
('3e4735f848660ee364734ad1727a095717fd44233577c8cf6640b7f1b0502c246d87bcd0f270eed0',1,1,'authToken','[]',0,'2021-03-24 01:08:50','2021-03-24 01:08:50','2022-03-24 01:08:50'),
('3fb1769c34cdd50d8c71cab4067e92fba2234eeed4c5f5b5481497d2c5a3f8a14e8b6b7477cebd49',3,1,'authToken','[]',0,'2021-03-24 01:26:45','2021-03-24 01:26:45','2022-03-24 01:26:45'),
('42072b279233b663255259b5a20f51279b676c19e00310201464b8d31ccbc40dc494db7f220e9a80',3,1,'authToken','[]',0,'2021-04-23 17:27:13','2021-04-23 17:27:13','2022-04-23 17:27:13'),
('42f5e6a139c09f207276e035f4be4920a9bf247c3b448154a4c98507a3b27431834d0c9102250203',3,1,'authToken','[]',0,'2021-03-19 14:37:30','2021-03-19 14:37:30','2022-03-19 14:37:30'),
('4332fcaafcdf7ff3b9339d45e28dc844926995b90fe15e8af7bfd097d27988e55272ad297888b197',3,1,'authToken','[]',0,'2021-03-19 16:05:35','2021-03-19 16:05:35','2022-03-19 16:05:35'),
('452ba36ad7142cc0909a00491d766ff8aa65c22cba932ab7a41e2518c6e657f127fcc35447ee5d7e',1,1,'authToken','[]',0,'2021-03-24 01:08:50','2021-03-24 01:08:50','2022-03-24 01:08:50'),
('46544ab28ef643635b9ca3eefd0d762b1d1a604a8412e4054fae5436475d33c9cc216dd389a3a823',1,1,'authToken','[]',0,'2021-03-12 15:42:46','2021-03-12 15:42:46','2022-03-12 15:42:46'),
('4ac3cd3a31e20a188ca85c0019fb6ed2e6f7e0005aeacf355b6f1b9ca79f1ee1c610cc368620f9c5',3,1,'authToken','[]',0,'2021-04-04 15:08:25','2021-04-04 15:08:25','2022-04-04 15:08:25'),
('4e59a97d691381369ab6f9cfc9a320dd8acdb8d88abf8682b8c6365ef7c7f41e45957e548323aa7c',1,1,'authToken','[]',0,'2021-03-24 01:08:59','2021-03-24 01:08:59','2022-03-24 01:08:59'),
('531470245a8b2bef5d819e6436e4752b4f30e4b683596fa6faa7c84475b1673cc1b9c86e77b92e82',1,1,'authToken','[]',0,'2021-03-24 01:08:50','2021-03-24 01:08:50','2022-03-24 01:08:50'),
('603e09e06b3e05d90ce9fdfd2085ae9437c8793321f8f8cd5fc1efbc570ce56001b9946b39b9b090',3,1,'authToken','[]',0,'2021-03-19 17:00:53','2021-03-19 17:00:53','2022-03-19 17:00:53'),
('633e072474161965257f3b92034f3914dba26eca11d9d785e3bdfee47f6128d5c872e84f84bf3eea',1,1,'authToken','[]',0,'2021-03-24 01:08:59','2021-03-24 01:08:59','2022-03-24 01:08:59'),
('6cbb925206670d75ae6362e9d425eb37ff77ea46674750d51fc8dd6089014344a35e4c7891cb484b',1,1,'authToken','[]',0,'2021-03-03 00:50:19','2021-03-03 00:50:19','2022-03-03 00:50:19'),
('6fbc95dd02055a9a94d0e7b926178f73aa854f58392d2e10bcf8a760cb81b7d01caafb36842357bd',3,1,'authToken','[]',0,'2021-03-19 16:05:35','2021-03-19 16:05:35','2022-03-19 16:05:35'),
('717020cd98efeaff70b646d69a23449720d6bad00e7345154a7b9249ec155216389c053722bb22a2',3,1,'authToken','[]',0,'2021-03-19 16:05:33','2021-03-19 16:05:33','2022-03-19 16:05:33'),
('71c6972fdc1650cbc0049a0e2be668892937215971f1fe2ba2ff993930bb4af003f1784313bc509b',3,1,'authToken','[]',0,'2021-03-19 16:05:32','2021-03-19 16:05:32','2022-03-19 16:05:32'),
('782386928396789757468d48ea409b6b0ced3c5ceb5f305af17996b402f34502e0a7d6a718946aee',1,1,'authToken','[]',0,'2021-03-12 15:42:46','2021-03-12 15:42:46','2022-03-12 15:42:46'),
('858da9198d47612bbf118a42991a80d6a2f0f1af0cf1fe305dec15272da157dcdfa7de24210f3658',1,1,'authToken','[]',0,'2021-03-24 01:08:50','2021-03-24 01:08:50','2022-03-24 01:08:50'),
('91000044dce0786034b53fc076ebd8df409d628c761ef61840add800043cef8c9d7144722e9ede41',1,1,'authToken','[]',0,'2021-03-24 01:08:50','2021-03-24 01:08:50','2022-03-24 01:08:50'),
('94069994ec64c7784975923f285cce41181960f67dbc848ddaa9f3df57d25aca4875b6ff3687f4f1',3,1,'authToken','[]',0,'2021-03-19 17:14:58','2021-03-19 17:14:58','2022-03-19 17:14:58'),
('94d85eaada954dc0e3072ecefcc5ecde02cab0ec147c0c9af7d95a3be2ff8a9f69a90674ff5bfdcd',3,1,'authToken','[]',0,'2021-04-04 15:06:28','2021-04-04 15:06:28','2022-04-04 15:06:28'),
('956c117c89f56cbb2957889957d2e366b30422d5b488f16c8ea69ad0f1393049c8a15464cfacee17',3,1,'authToken','[]',0,'2021-03-19 16:05:34','2021-03-19 16:05:34','2022-03-19 16:05:34'),
('95f26fec0f45fe3e7b424e35eac01b4fabd9bb740da39b85e6ad69dd4014d1f49e88aed00be6568b',3,1,'authToken','[]',0,'2021-03-24 01:58:01','2021-03-24 01:58:01','2022-03-24 01:58:01'),
('964206f90d027f97f97fc9d3e654b6f17b76d270ed0d5311a67b24d730e94eee446b25098465c4e1',3,1,'authToken','[]',0,'2021-04-21 02:03:12','2021-04-21 02:03:12','2022-04-21 02:03:12'),
('969fcf979e0091cce595d1e39c0c9ffb6ed97b42ec09666aef311cdf3c602ee3b92b90a68fc026cb',3,1,'authToken','[]',0,'2021-03-19 14:40:36','2021-03-19 14:40:36','2022-03-19 14:40:36'),
('9791423f0e6bcd4c938206b45827d09f40e9c6773679ffbc57016b91e820292e0f2ef33056fb9dd7',3,1,'authToken','[]',0,'2021-03-19 14:37:30','2021-03-19 14:37:30','2022-03-19 14:37:30'),
('97adef3cb3c7778069cd02419ff006658dd4223d02a5ede9d0c8b8157f79e12014cdf43d7ea0b465',1,1,'authToken','[]',0,'2021-03-24 01:08:55','2021-03-24 01:08:55','2022-03-24 01:08:55'),
('9c5d3fc3347776e58060a6c62cc572311ab5407b9f334fad89dea306bd1c317c71fb127e0af9f56f',3,1,'authToken','[]',0,'2021-03-19 16:08:45','2021-03-19 16:08:45','2022-03-19 16:08:45'),
('9e70bd2033fa3ae2e12aee557f58f573b3a1f87b6c70e776b1a2bb9e987c7e437e9ab4dcb92e9821',1,1,'authToken','[]',0,'2021-03-12 15:43:09','2021-03-12 15:43:09','2022-03-12 15:43:09'),
('a46c0c89071858c2a22daf6ec96b292b5f392e11a4c913d2e5d79173461292cabefc6a3f3f5ec508',1,1,'authToken','[]',0,'2021-03-24 01:08:58','2021-03-24 01:08:58','2022-03-24 01:08:58'),
('ad53ec707a94e3ebdd22a1d37991e5961b2e5da98809c796c8da1b74833eed921bf2add29959c239',3,1,'authToken','[]',0,'2021-03-19 15:32:15','2021-03-19 15:32:15','2022-03-19 15:32:15'),
('ae6a81b10648fc89e2798b9349e52e38166b13636a960d32c83882bd3f671aaa77a15ba2dc26a281',1,1,'authToken','[]',0,'2021-03-24 01:17:43','2021-03-24 01:17:43','2022-03-24 01:17:43'),
('b1099605cc91d3f80a51ad428f9a8c8d045173c4a3d04d01f1c341d14b23a0500c0a68753f9ed5e7',3,1,'authToken','[]',0,'2021-04-23 17:38:53','2021-04-23 17:38:53','2022-04-23 17:38:53'),
('b2ccc1e8cb49acd02de366773d345da23b7ed773ee55ccb79ae8d4ac4ab785db594a2d4ba5f1b1b7',1,1,'authToken','[]',0,'2021-03-24 01:08:57','2021-03-24 01:08:57','2022-03-24 01:08:57'),
('c2c9691b29e4cad3272307dfaaac7bb1651edea23a26c70517dba26ee8509c0d9d55e7789ee53b13',3,1,'authToken','[]',0,'2021-03-19 16:53:38','2021-03-19 16:53:38','2022-03-19 16:53:38'),
('ceb3397992a67433f42ad390632aab34af795ae2c2e5e74023c58122ea4bcac542802325a91dccaf',1,1,'authToken','[]',0,'2021-03-03 00:53:11','2021-03-03 00:53:11','2022-03-03 00:53:11'),
('cf2980e5f5332e9f26fe3fd770a6e66b9e82222750f0bc53cc11bb29f56b43b6399cf08a661962b5',3,1,'authToken','[]',0,'2021-03-19 16:05:33','2021-03-19 16:05:33','2022-03-19 16:05:33'),
('d2067672bd351c248523ec2daf1d7be1468d7c68014df9320c9932ce7227d612041a398494da10ab',3,1,'authToken','[]',0,'2021-04-23 14:31:47','2021-04-23 14:31:47','2022-04-23 14:31:47'),
('d441dd37a6a680cf9912a41b0fc8c9f40b458b90bde6745b025f69e1d6e68732618e4dc79d28f83d',1,1,'authToken','[]',0,'2021-03-02 21:25:12','2021-03-02 21:25:12','2022-03-02 21:25:12'),
('d49c6bdf5f801cb7d7fa24193a7f6ed4257ca8a0c8cbd1dade31dcba914ba02f8a088ed5cee1bc6e',3,1,'authToken','[]',0,'2021-04-23 16:50:32','2021-04-23 16:50:32','2022-04-23 16:50:32'),
('d8828b74467ecf6bdb9af33db44626e9f8e0dcd5cc0412a3cbb844f885d6fb9ab55bdb77a1e7963b',3,1,'authToken','[]',0,'2021-03-19 14:37:30','2021-03-19 14:37:30','2022-03-19 14:37:30'),
('daeddc4d0924110fe6dc3610e641d633b942d2490087fd67585019726cafdfe037ecd9445ba17f27',3,1,'authToken','[]',0,'2021-03-19 14:37:33','2021-03-19 14:37:33','2022-03-19 14:37:33'),
('dc4ba41e2938c48a797d94ed1e31f6f24740b4675da98c7b0901b5910533f90e4182622b773dfd29',3,1,'authToken','[]',0,'2021-04-04 15:04:15','2021-04-04 15:04:15','2022-04-04 15:04:15'),
('dcbf34320bc6ad9a386203a545d4a4eb5bb98106ea26143b343cc4ca435177ca6d19ade5e93363b1',1,1,'authToken','[]',0,'2021-03-09 21:51:32','2021-03-09 21:51:32','2022-03-09 21:51:32'),
('dd7d6140837e20a6dd3e38199b7c04f4be456b636fbef15cae1489ee9d73f85138581952dcc2924b',3,1,'authToken','[]',0,'2021-03-19 16:05:35','2021-03-19 16:05:35','2022-03-19 16:05:35'),
('e3acad7fb924100c2de99941db0b2213bf41998ab0824578b6a940f24e113f2ae44a3974afb8b013',1,1,'authToken','[]',0,'2021-03-24 01:08:55','2021-03-24 01:08:55','2022-03-24 01:08:55'),
('e3e4c067a35d98d1e81251cf71a2993302b06e405091ce84106c40daee747517721cf2787dd9b6b8',1,1,'authToken','[]',0,'2021-03-03 00:51:08','2021-03-03 00:51:08','2022-03-03 00:51:08'),
('e580354269e1aa3a005a3ec1773463d34b0eaa3625157c5d713a4a28fc6ba91b00dff99623b9c0cf',1,1,'authToken','[]',0,'2021-03-24 01:08:55','2021-03-24 01:08:55','2022-03-24 01:08:55'),
('e740a237ada573464f7d00b39c6b67646e52c1d50c8edaa10db026e1033d723415d8864f463c5f3b',3,1,'authToken','[]',0,'2021-04-04 15:05:47','2021-04-04 15:05:47','2022-04-04 15:05:47'),
('f162b5ad0c276154cf9598bdf3fefc50607d703e57ce91139e41deea5bd9fc31aebf0fa604b445e2',1,1,'authToken','[]',0,'2021-03-19 17:02:47','2021-03-19 17:02:47','2022-03-19 17:02:47'),
('f2333812d13d6c2f4ed2a4eae4ccf80b34586dff0c3ca89ec2eda2f382896e84308971487ad410f7',3,1,'authToken','[]',0,'2021-04-23 17:39:46','2021-04-23 17:39:46','2022-04-23 17:39:46'),
('f3d54e128d0b6d22f39f080d6f9a071b7e1cb07b72aeaad19212fb0a0e30e9dc1c9f017a6c6ab26b',1,1,'authToken','[]',0,'2021-03-24 01:08:57','2021-03-24 01:08:57','2022-03-24 01:08:57'),
('f440513ab8753a888865402c42c2945c09d1367da7cc6379115bf799d54d74954678144f07b683ce',3,1,'authToken','[]',0,'2021-03-19 16:05:33','2021-03-19 16:05:33','2022-03-19 16:05:33'),
('f4b8180e8fae1ff4570e41cc4dc99267030e2a02e2c05ef3c89a3a03de754439f32f91bc780230e6',1,1,'authToken','[]',0,'2021-03-03 00:51:45','2021-03-03 00:51:45','2022-03-03 00:51:45'),
('f5a77e3c6dfed8c46a13d3ff042d3a181048408c73cbeffb39b999e10fb70c802095b1ad611df3a5',1,1,'authToken','[]',0,'2021-03-24 01:08:59','2021-03-24 01:08:59','2022-03-24 01:08:59'),
('f72546be4dec06e5a4319324d22e25b409fe5ff037e36d667e304cfd74faab02f395a7415bd197fe',3,1,'authToken','[]',0,'2021-04-21 02:00:22','2021-04-21 02:00:22','2022-04-21 02:00:22'),
('fb8eda3dd1b89d61ffeb716fcde6f36412f1d0f679d7cf49267ada997a8ab7a3caeed419ff24a0b1',1,1,'authToken','[]',0,'2021-03-12 15:42:46','2021-03-12 15:42:46','2022-03-12 15:42:46'),
('fcb928fafd6e8a3729b60d260e7e6af3552184e783cd5042c894c729c9da080886e4cce9b88db38c',3,1,'authToken','[]',0,'2021-03-19 16:05:33','2021-03-19 16:05:33','2022-03-19 16:05:33'),
('fe62a63a5c89d578b75ea7f9ffd23a1dd0ffa154ace60ac3b6c2389a5add6a6ed514bf9b68b366e7',1,1,'authToken','[]',0,'2021-03-24 01:08:57','2021-03-24 01:08:57','2022-03-24 01:08:57'),
('ffbb0ca497174798b5721fc96c75d18cab0d9ab66148f09804569cf6dc3f48e6bfa1785187e211e5',3,1,'authToken','[]',0,'2021-03-19 16:50:23','2021-03-19 16:50:23','2022-03-19 16:50:23');

/*Table structure for table `oauth_auth_codes` */

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_auth_codes` */

/*Table structure for table `oauth_clients` */

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_clients` */

insert  into `oauth_clients`(`id`,`user_id`,`name`,`secret`,`provider`,`redirect`,`personal_access_client`,`password_client`,`revoked`,`created_at`,`updated_at`) values 
(1,NULL,'Laravel Personal Access Client','XC1XdSj5BlJbl2gSnfoOHqo0KR5Kuj75jr6qHQoq',NULL,'http://localhost',1,0,0,'2021-03-02 17:35:41','2021-03-02 17:35:41'),
(2,NULL,'Laravel Password Grant Client','JxjlbrtOxnjd7ymyTTLuZShTK3rlY5MmYYNVgRNJ','users','http://localhost',0,1,0,'2021-03-02 17:35:41','2021-03-02 17:35:41');

/*Table structure for table `oauth_personal_access_clients` */

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_personal_access_clients` */

insert  into `oauth_personal_access_clients`(`id`,`client_id`,`created_at`,`updated_at`) values 
(1,1,'2021-03-02 17:35:41','2021-03-02 17:35:41');

/*Table structure for table `oauth_refresh_tokens` */

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `oauth_refresh_tokens` */

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'yunda','yunda@gmail.com',NULL,'$2y$10$vtfMLwj14mE3ZJmezChcheAFkbUvczj6aL773UFLqed8ufa7WuPdG',NULL,'2021-03-02 19:07:46','2021-03-02 19:07:46'),
(2,'sebastian','sebascam99pg@hotmail.com',NULL,'$2y$10$Y3j9O3y.ewfpuXO2rf7zfugTv12SYe6/wcnfHYrIwJlw5cnXAqsXe',NULL,'2021-03-02 23:18:42','2021-03-02 23:18:42'),
(3,'yunda','admin@gmail.com',NULL,'$2y$10$yjBU8HyhhNpw56Pn9EcZQOKyGxG/2srOlQ48oTQvn/XgBxZvUaeVu',NULL,'2021-03-19 14:04:57','2021-03-19 14:04:57'),
(4,'Enderson','eyunda@gmail.com',NULL,'$2y$10$4kXZpgZAWH40X3pevLzkh.r29DZ2RrKOzEfTpx6n0LudoQHn6jJ6W',NULL,'2021-04-04 14:03:18','2021-04-04 14:03:18'),
(5,'hola','hola@gmail.com',NULL,'$2y$10$CPkvTs9QNw0l9fSkCoF8X.TSjENGtx2XFMx2dwPhZk6mBSoitxZBu',NULL,'2021-04-04 14:06:57','2021-04-04 14:06:57'),
(6,'holaaa','holis@gmail.com',NULL,'$2y$10$1w9zPUQPZ4AxQZ/gveWV7OGcphHdoHiFGaIWqPgMcjrJD0IM.gmy2',NULL,'2021-04-21 02:02:49','2021-04-21 02:02:49');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
