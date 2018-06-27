-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: localhost    Database: laravel_permission_APV
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.31-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2018_06_21_023114_create_permission_tables',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
INSERT INTO `model_has_permissions` VALUES (4,'App\\User',14),(4,'App\\User',15),(4,'App\\User',16),(4,'App\\User',21),(4,'App\\User',22),(4,'App\\User',23),(4,'App\\User',26),(5,'App\\User',14),(5,'App\\User',15),(5,'App\\User',16),(5,'App\\User',21),(5,'App\\User',22),(5,'App\\User',23),(5,'App\\User',26),(6,'App\\User',14),(6,'App\\User',15),(6,'App\\User',16),(6,'App\\User',21),(6,'App\\User',22),(6,'App\\User',23),(6,'App\\User',26),(7,'App\\User',14),(7,'App\\User',15),(7,'App\\User',16),(7,'App\\User',21),(7,'App\\User',22),(7,'App\\User',23),(7,'App\\User',25),(8,'App\\User',27),(8,'App\\User',28),(9,'App\\User',27),(9,'App\\User',28),(10,'App\\User',28);
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\User',1),(2,'App\\User',6),(2,'App\\User',12),(2,'App\\User',13),(2,'App\\User',14),(2,'App\\User',15),(2,'App\\User',16),(2,'App\\User',17),(2,'App\\User',18),(2,'App\\User',19),(2,'App\\User',20),(2,'App\\User',21),(2,'App\\User',22),(2,'App\\User',23),(2,'App\\User',24),(2,'App\\User',25),(2,'App\\User',26),(2,'App\\User',44),(3,'App\\User',10),(3,'App\\User',11),(3,'App\\User',12),(3,'App\\User',14),(3,'App\\User',15),(3,'App\\User',16),(3,'App\\User',17),(3,'App\\User',18),(3,'App\\User',19),(3,'App\\User',20),(3,'App\\User',21),(3,'App\\User',22),(3,'App\\User',23),(3,'App\\User',24),(3,'App\\User',25),(3,'App\\User',26),(3,'App\\User',44),(9,'App\\User',27),(9,'App\\User',28),(9,'App\\User',43),(10,'App\\User',43),(11,'App\\User',45),(12,'App\\User',27),(12,'App\\User',28),(12,'App\\User',45),(12,'App\\User',46),(13,'App\\User',28),(15,'App\\User',44),(15,'App\\User',45),(15,'App\\User',46);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (2,'manage-users','web','2018-06-20 20:44:33','2018-06-20 20:44:33'),(4,'create-post','web','2018-06-20 23:13:20','2018-06-20 23:13:20'),(5,'delete-post','web','2018-06-20 23:13:35','2018-06-20 23:13:35'),(6,'edit-post','web','2018-06-20 23:13:51','2018-06-20 23:13:51'),(7,'view-posts','web','2018-06-21 01:20:13','2018-06-21 01:20:13'),(8,'a-post','web','2018-06-25 02:21:30','2018-06-25 02:21:30'),(9,'b-post','web','2018-06-25 02:21:40','2018-06-25 02:21:40'),(10,'c-post','web','2018-06-25 02:21:47','2018-06-25 02:21:47');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (2,1),(4,1),(4,2),(4,17),(4,18),(5,1),(5,2),(5,18),(6,1),(6,2),(6,18),(7,1),(7,2),(7,3),(8,9),(8,12),(8,13),(8,15),(8,17),(9,10),(9,12),(9,13),(9,14),(9,17),(10,11),(10,13),(10,14),(10,15);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'super-admin','web','2018-06-20 20:46:06','2018-06-26 01:55:03'),(2,'author','web','2018-06-20 23:28:18','2018-06-20 23:28:18'),(3,'subcriber','web','2018-06-20 23:33:41','2018-06-20 23:33:41'),(9,'a','web','2018-06-25 02:22:05','2018-06-25 02:22:05'),(10,'b','web','2018-06-25 02:23:12','2018-06-25 02:23:12'),(11,'c','web','2018-06-25 02:23:20','2018-06-25 02:23:20'),(12,'ab','web','2018-06-25 02:23:27','2018-06-25 02:23:27'),(13,'abc','web','2018-06-25 02:23:59','2018-06-25 02:23:59'),(14,'bc','web','2018-06-25 02:26:29','2018-06-25 02:26:38'),(15,'ac','web','2018-06-25 02:31:13','2018-06-25 02:31:13'),(17,'d','web','2018-06-26 01:58:27','2018-06-26 01:58:27'),(18,'e','web','2018-06-26 01:58:38','2018-06-26 01:58:38');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','hungcan1997@gmail.com','$2y$10$r/dPmiTOIuddYmpycrku0.fPuQDB8Epxr9/9NtEFeN85RfAg8v1je','6xDE9P8dQBSURdxfbgu1rCkeMxcoYmLgw3VvAjCAuxncDakw8xmkzRA4dL4T','2018-06-20 19:46:50','2018-06-21 01:38:33'),(43,'testuser1','testuser1@abc.com','$2y$10$2dXOFPVhvbDRGUzedeoiSOGxLH3qLzICfhCv.Rl5z7GqOuE8AVxfq',NULL,'2018-06-26 02:09:33','2018-06-26 02:09:33'),(44,'testuser2','testuser2@abc.vn','$2y$10$792Ot0dNwGYGE/n8/dVS1eFygTRtoEcX/5.QsA2CNn/KxZcahQNe.',NULL,'2018-06-26 02:10:39','2018-06-26 02:10:39'),(45,'testuser3','testuser3@dsadad.cadas','$2y$10$YFPNHjvs2YgsIWCqha4v1O23kal60Jf/bsAnh5yrweVwQPi.gafGi',NULL,'2018-06-26 02:14:55','2018-06-26 02:14:55'),(46,'testuser4','asddsadas@sad.com','$2y$10$IKM1e8Cwl9.dMUHqD15d3ezlXM.h/Sa9V64Eazxw9C2JEWiOcx5xm',NULL,'2018-06-27 02:24:15','2018-06-27 02:24:15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-27 21:12:16
