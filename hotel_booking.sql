-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: hotel_booking
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(16,3) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,1.000,'Wireless Internet',NULL,NULL,NULL,NULL,NULL,'https://b.anhmoecdn.icu/FYSDWy2D.png',NULL),(2,2.000,'Hairdryer',NULL,NULL,NULL,NULL,NULL,'https://b.anhmoecdn.icu/KTQv5CT.png',NULL),(3,3.000,'Air conditioned',NULL,NULL,NULL,NULL,NULL,'https://b.anhmoecdn.icu/10OMZ8IQ.png',NULL),(4,4.000,'Alarm Clock',NULL,NULL,NULL,NULL,'2024-10-04 16:48:09','https://lh3.googleusercontent.com/d/1IpbP5VpT2ikROrbbYUuelAIgdhpQxRzn=w1000-rw',NULL),(5,5.000,'Balcony',NULL,NULL,NULL,NULL,NULL,'https://b.anhmoecdn.icu/yN7EZ09R.png',NULL),(6,6.000,'Bathrobes Provided',NULL,NULL,NULL,NULL,NULL,'https://b.anhmoecdn.icu/znkLc9.png',NULL),(7,7.000,'Internet Access',NULL,NULL,NULL,NULL,NULL,'https://b.anhmoecdn.icu/RUG3mf1z.png',NULL);
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenity_room_type`
--

DROP TABLE IF EXISTS `amenity_room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amenity_room_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(16,3) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `room_type_id` bigint(20) DEFAULT NULL,
  `amenity_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenity_room_type`
--

LOCK TABLES `amenity_room_type` WRITE;
/*!40000 ALTER TABLE `amenity_room_type` DISABLE KEYS */;
INSERT INTO `amenity_room_type` VALUES (1,1.000,2,1,1,NULL,NULL,NULL,NULL),(2,1.000,1,1,2,NULL,NULL,NULL,NULL),(3,1.000,1,1,3,NULL,NULL,NULL,NULL),(4,1.000,1,1,4,NULL,NULL,NULL,NULL),(5,1.000,1,2,1,NULL,NULL,NULL,NULL),(6,1.000,1,2,2,NULL,NULL,NULL,NULL),(7,1.000,1,3,1,NULL,NULL,NULL,NULL),(8,1.000,1,3,2,NULL,NULL,NULL,NULL),(9,1.000,1,4,4,NULL,NULL,NULL,NULL),(10,1.000,1,2,4,NULL,NULL,NULL,NULL),(12,NULL,NULL,13,2,NULL,NULL,NULL,NULL),(13,NULL,NULL,13,3,NULL,NULL,NULL,NULL),(15,NULL,NULL,1,7,NULL,NULL,NULL,NULL),(16,NULL,NULL,14,4,NULL,NULL,NULL,NULL),(17,NULL,NULL,14,1,NULL,NULL,NULL,NULL),(18,NULL,NULL,14,2,NULL,NULL,NULL,NULL),(19,NULL,NULL,14,3,NULL,NULL,NULL,NULL),(20,NULL,NULL,14,5,NULL,NULL,NULL,NULL),(21,NULL,NULL,14,6,NULL,NULL,NULL,NULL),(22,NULL,NULL,15,2,NULL,NULL,NULL,NULL),(23,NULL,NULL,15,3,NULL,NULL,NULL,NULL),(24,NULL,NULL,15,5,NULL,NULL,NULL,NULL),(25,NULL,NULL,16,2,NULL,NULL,NULL,NULL),(26,NULL,NULL,16,1,NULL,NULL,NULL,NULL),(27,NULL,NULL,16,5,NULL,NULL,NULL,NULL),(28,NULL,NULL,17,5,NULL,NULL,NULL,NULL),(29,NULL,NULL,17,6,NULL,NULL,NULL,NULL),(30,NULL,NULL,17,7,NULL,NULL,NULL,NULL),(31,NULL,NULL,17,3,NULL,NULL,NULL,NULL),(32,NULL,NULL,18,5,NULL,NULL,NULL,NULL),(33,NULL,NULL,18,6,NULL,NULL,NULL,NULL),(34,NULL,NULL,18,7,NULL,NULL,NULL,NULL),(35,NULL,NULL,19,2,NULL,NULL,NULL,NULL),(36,NULL,NULL,19,6,NULL,NULL,NULL,NULL),(37,NULL,NULL,19,5,NULL,NULL,NULL,NULL),(38,NULL,NULL,19,3,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `amenity_room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benefits`
--

DROP TABLE IF EXISTS `benefits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `benefits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(16,3) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benefits`
--

LOCK TABLES `benefits` WRITE;
/*!40000 ALTER TABLE `benefits` DISABLE KEYS */;
INSERT INTO `benefits` VALUES (1,1.000,'Đưa đón sân bay 2 chiều',NULL,NULL,NULL,NULL,NULL),(2,2.000,'Thưởng thức tiệc buffet trà chiều & bánh ngọt',NULL,NULL,NULL,NULL,NULL),(3,3.000,'Ưu đãi 20% cho dịch vụ Spa',NULL,NULL,NULL,NULL,NULL),(4,4.000,'Tặng kèm Buffet sáng Quốc tế thịnh soạn hàng ngày.',NULL,NULL,NULL,NULL,NULL),(5,5.000,'Trả phòng trễ tùy vào tình trạng phòng trống.',NULL,NULL,NULL,NULL,NULL),(6,6.000,'Đưa đón sân bay 1 chiều với khách ở từ 2 đêm.',NULL,NULL,NULL,NULL,NULL),(7,7.000,'Đưa đón sân bay 2 chiều với khách ở từ 3 đêm trở lên.',NULL,NULL,NULL,NULL,NULL),(10,NULL,'Tặng voucher 200,000VND dùng cho buffet hải sản & bò bít tết.',NULL,NULL,NULL,'2024-10-05 10:25:57','2024-10-05 10:25:57'),(11,NULL,'Tặng voucher 300,000VND dùng cho dịch vụ Spa.',NULL,NULL,NULL,'2024-10-05 10:57:20','2024-10-05 10:57:20'),(12,NULL,'Thưởng thức tiệc Buffet Hải sản & Bò bít tết',NULL,NULL,NULL,'2024-10-05 10:57:26','2024-10-05 10:57:26'),(13,NULL,'ưu đãi 1','ưu đãi 1',NULL,NULL,'2024-10-05 11:21:37','2024-10-05 11:21:37'),(14,NULL,'ưu đãi 2','ưu đãi 1',NULL,NULL,'2024-10-05 11:21:43','2024-10-05 11:21:43');
/*!40000 ALTER TABLE `benefits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_status`
--

DROP TABLE IF EXISTS `booking_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking_status` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status`
--

LOCK TABLES `booking_status` WRITE;
/*!40000 ALTER TABLE `booking_status` DISABLE KEYS */;
INSERT INTO `booking_status` VALUES (1,'PENDING',NULL,NULL,NULL,NULL,NULL),(2,'COMPLETED',NULL,NULL,NULL,NULL,NULL),(3,'PARTIALLY_PAID',NULL,NULL,NULL,NULL,NULL),(4,'CANCEL',NULL,NULL,NULL,NULL,NULL),(5,'PENDING_CANCEL',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `booking_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `checkin_at` datetime DEFAULT NULL,
  `checkout_at` datetime DEFAULT NULL,
  `total_price` decimal(16,3) DEFAULT NULL,
  `number_guests` int(11) DEFAULT NULL,
  `status` bigint(20) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cancel_reason` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES (15,'2024-10-19 00:00:00','2024-10-21 00:00:00',4211200.000,3,4,28,28,31,'2024-10-18 15:42:41','2024-10-18 15:51:17',NULL),(16,'2024-10-19 00:00:00','2024-10-21 00:00:00',4412800.000,6,2,28,28,31,'2024-10-18 15:43:20','2024-10-18 15:51:03',NULL),(17,'2024-10-21 00:00:00','2024-10-23 00:00:00',9049600.000,3,2,28,28,31,'2024-10-18 15:44:31','2024-10-18 15:50:51',NULL),(18,'2024-10-19 00:00:00','2024-10-21 00:00:00',4614400.000,4,2,33,33,31,'2024-10-19 01:57:54','2024-10-19 01:59:15',NULL);
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image_types`
--

DROP TABLE IF EXISTS `image_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_types`
--

LOCK TABLES `image_types` WRITE;
/*!40000 ALTER TABLE `image_types` DISABLE KEYS */;
INSERT INTO `image_types` VALUES (1,'promotion',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `image_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (42,'2014_10_12_000000_create_users_table',1),(43,'2014_10_12_100000_create_password_resets_table',1),(44,'2019_08_19_000000_create_failed_jobs_table',1),(45,'2019_12_14_000001_create_personal_access_tokens_table',1),(46,'2024_08_22_155849_create_room_types_table',1),(47,'2024_08_22_155907_create_rooms_table',1),(48,'2024_08_22_155930_create_room_booking_table',1),(49,'2024_08_22_155955_create_bookings_table',1),(50,'2024_08_22_160016_create_packets_table',1),(51,'2024_08_22_160048_create_packet_benefit_table',1),(52,'2024_08_22_160056_create_benefits_table',1),(53,'2024_08_22_160113_create_amenities_table',1),(54,'2024_08_22_160131_create_amenity_room_type_table',1),(55,'2024_08_22_170149_create_booking_status_table',1),(56,'2024_08_23_134846_create_room_type_packet_table',1),(57,'2024_08_23_170229_create_rating_table',2),(60,'2024_08_23_170229_create_ratings_table',3),(62,'2024_08_23_204024_create_image_type_table',5),(63,'2024_08_23_203403_create_room_type_image_table',6),(64,'2024_08_23_204024_create_image_types_table',7),(66,'2024_08_23_194047_create_payments_table',8),(68,'2024_09_07_143812_add_cols_first_last_name_phone_users_table',9),(69,'2024_09_07_153633_add_cols_image_icon_amenities_table',10),(70,'2024_09_07_153936_create_packet_image_table',11),(71,'2024_09_07_154428_add_col_description_packets_table',12),(73,'2024_09_07_154429_add_cols_birthday_nation_users_table',13),(74,'2024_09_07_154430_add_col_room_type_packet_id__room_booking_table',14),(77,'2024_09_07_154430_add_cols_start_end__room_type_packet_table',15),(78,'2024_09_07_154431_add_cols_tour_room_type_packet_table',16),(79,'2024_09_22_160113_create_wishlists_table',17),(80,'2024_10_10_131911_create_permission_tables',18);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (6,'App\\Models\\User',28),(6,'App\\Models\\User',30),(5,'App\\Models\\User',31),(6,'App\\Models\\User',32),(6,'App\\Models\\User',33);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packet_benefit`
--

DROP TABLE IF EXISTS `packet_benefit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packet_benefit` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `packet_id` bigint(20) DEFAULT NULL,
  `benefit_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packet_benefit`
--

LOCK TABLES `packet_benefit` WRITE;
/*!40000 ALTER TABLE `packet_benefit` DISABLE KEYS */;
INSERT INTO `packet_benefit` VALUES (45,35,3,NULL,NULL,NULL,NULL),(46,35,4,NULL,NULL,NULL,NULL),(47,35,2,NULL,NULL,NULL,NULL),(48,36,3,NULL,NULL,NULL,NULL),(49,36,5,NULL,NULL,NULL,NULL),(50,36,4,NULL,NULL,NULL,NULL),(51,37,2,NULL,NULL,NULL,NULL),(52,37,3,NULL,NULL,NULL,NULL),(53,37,4,NULL,NULL,NULL,NULL),(54,38,5,NULL,NULL,NULL,NULL),(55,38,6,NULL,NULL,NULL,NULL),(56,38,7,NULL,NULL,NULL,NULL),(57,39,5,NULL,NULL,NULL,NULL),(58,39,6,NULL,NULL,NULL,NULL),(59,39,7,NULL,NULL,NULL,NULL),(60,40,3,NULL,NULL,NULL,NULL),(61,40,5,NULL,NULL,NULL,NULL),(62,40,4,NULL,NULL,NULL,NULL),(63,41,4,NULL,NULL,NULL,NULL),(64,41,6,NULL,NULL,NULL,NULL),(65,41,5,NULL,NULL,NULL,NULL),(66,42,6,NULL,NULL,NULL,NULL),(67,42,4,NULL,NULL,NULL,NULL),(68,42,5,NULL,NULL,NULL,NULL),(69,43,1,NULL,NULL,NULL,NULL),(70,43,2,NULL,NULL,NULL,NULL),(71,43,3,NULL,NULL,NULL,NULL),(72,44,1,NULL,NULL,NULL,NULL),(73,44,3,NULL,NULL,NULL,NULL),(74,44,2,NULL,NULL,NULL,NULL),(75,44,5,NULL,NULL,NULL,NULL),(76,45,11,NULL,NULL,NULL,NULL),(77,45,1,NULL,NULL,NULL,NULL),(78,34,4,NULL,NULL,NULL,NULL),(79,34,5,NULL,NULL,NULL,NULL),(80,34,6,NULL,NULL,NULL,NULL),(85,46,12,NULL,NULL,NULL,NULL),(86,47,12,NULL,NULL,NULL,NULL),(87,47,11,NULL,NULL,NULL,NULL),(88,47,10,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `packet_benefit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packet_image`
--

DROP TABLE IF EXISTS `packet_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packet_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_type_id` bigint(20) DEFAULT NULL,
  `packet_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packet_image`
--

LOCK TABLES `packet_image` WRITE;
/*!40000 ALTER TABLE `packet_image` DISABLE KEYS */;
INSERT INTO `packet_image` VALUES (44,1,34,'https://lh3.googleusercontent.com/d/1ZVIiSWqSs1fBeQNUFdDLQduZ0ixiaclk=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:26:30','2024-10-17 08:56:33'),(45,1,35,'https://lh3.googleusercontent.com/d/1Kb_zh5Zh2f0S2VicIt9hAwaXUNWpm_e6=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:27:11','2024-10-17 08:56:00'),(46,1,36,'https://lh3.googleusercontent.com/d/1XHF9mXwGQN3y1bkBhs5POKZVgz2Lpv2F=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:28:13','2024-10-17 08:54:56'),(47,1,37,'https://lh3.googleusercontent.com/d/1wdgz9D8DhG8AJt1spd-cFCNTYYV-8v8p=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:28:56','2024-10-17 08:50:14'),(48,1,38,'https://lh3.googleusercontent.com/d/1ARgJHC4E841RyrUc87Bt90tReeIwe1y5=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:29:32','2024-10-17 08:49:11'),(49,1,39,'https://lh3.googleusercontent.com/d/1E0dI7GVgd4QxlrQWWV0fqs3UktLCgLs8=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:30:20','2024-10-17 08:48:33'),(50,1,40,'https://lh3.googleusercontent.com/d/1d8q2Xi7c_mnUC-2ao89ygx8r4EbMWx_J=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:31:02','2024-10-17 08:47:58'),(51,1,41,'https://lh3.googleusercontent.com/d/1T0QcOeg1J2j3ZXTJKvj8DeR_xLQt69mM=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:31:33','2024-10-17 08:46:35'),(52,1,42,'https://lh3.googleusercontent.com/d/134gAaejBJVUADftDkxx3YAOQ78S2Pubj=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:32:10','2024-10-17 08:46:22'),(53,1,43,'https://lh3.googleusercontent.com/d/1IV30zjDFgaqxN8LELgHXkGc4gJp5Xs6j=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:33:15','2024-10-17 08:45:05'),(54,1,44,'https://lh3.googleusercontent.com/d/1vEzvrtK7-m_B7Fe63kj2p2VFxT4xaM2_=w1000-rw',NULL,NULL,NULL,31,'2024-10-05 13:34:27','2024-10-17 08:44:36'),(56,1,45,'https://lh3.googleusercontent.com/d/1--3Ygk4PZvBBtH0SjVCOfS7bkEIjB0uU=w1000-rw',NULL,NULL,31,31,'2024-10-17 08:40:20','2024-10-17 08:40:20');
/*!40000 ALTER TABLE `packet_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `packets`
--

DROP TABLE IF EXISTS `packets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `packets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `base_price` decimal(16,3) DEFAULT NULL,
  `name_packet` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `packets`
--

LOCK TABLES `packets` WRITE;
/*!40000 ALTER TABLE `packets` DISABLE KEYS */;
INSERT INTO `packets` VALUES (34,200000.000,'Kỳ nghỉ Giáng sinh an lành',NULL,31,'2024-10-05 13:26:29','2024-10-17 08:56:33','Chào mừng bạn đến với kỳ nghỉ Giáng sinh an lành, nơi bạn có thể tận hưởng không khí ấm áp và tràn ngập yêu thương của mùa lễ hội! Chúng tôi mang đến cho bạn một hành trình đầy sắc màu với những hoạt động thú vị như trang trí cây thông, tham gia các buổi tiệc Giáng sinh với ẩm thực đặc sắc và thưởng thức các buổi hòa nhạc truyền thống. Hãy cùng gia đình và bạn bè tạo nên những kỷ niệm đáng nhớ bên ánh đèn lung linh và những món quà ấm áp. Ngoài ra, bạn còn có cơ hội tham gia vào các hoạt động từ thiện, lan tỏa yêu thương đến cộng đồng. Kỳ nghỉ Giáng sinh an lành hứa hẹn sẽ mang đến cho bạn những trải nghiệm trọn vẹn và ý nghĩa trong mùa lễ hội'),(35,230000.000,'Kỳ nghỉ đón năm mới 2025',NULL,31,'2024-10-05 13:27:11','2024-10-17 08:56:00','Chào mừng bạn đến với kỳ nghỉ đón năm mới 2025, nơi bạn có thể khép lại một năm cũ và chào đón năm mới trong không khí vui tươi và phấn khởi! Chúng tôi mang đến cho bạn một hành trình tràn ngập những trải nghiệm thú vị, từ tiệc tùng đêm giao thừa hoành tráng với chương trình nghệ thuật đặc sắc, đến những bữa tiệc ẩm thực phong phú với các món ăn truyền thống và quốc tế. Bạn sẽ có cơ hội tham gia các hoạt động giải trí sôi động, thưởng thức pháo hoa rực rỡ và cùng nhau tạo dựng những kỷ niệm đáng nhớ bên gia đình và bạn bè. Hãy để kỳ nghỉ đón năm mới 2025 của bạn trở thành một khởi đầu tuyệt vời cho những điều tốt đẹp trong năm mới'),(36,210000.000,'Ưu Đãi Đặt Phòng Sớm | Pay Now Stay Later',NULL,31,'2024-10-05 13:28:13','2024-10-17 08:54:56','Chào mừng bạn đến với chương trình ưu đãi \"Đặt Phòng Sớm\"! Đừng bỏ lỡ cơ hội tiết kiệm chi phí và trải nghiệm kỳ nghỉ đáng nhớ. Khi đặt phòng trước, bạn sẽ được hưởng mức giá ưu đãi hấp dẫn, cùng nhiều ưu đãi đi kèm như bữa sáng miễn phí, dịch vụ spa giảm giá và những hoạt động giải trí thú vị. Với vị trí tuyệt đẹp và tiện nghi sang trọng, chúng tôi cam kết mang đến cho bạn một trải nghiệm nghỉ dưỡng hoàn hảo. Hãy nhanh tay đặt phòng để tận hưởng ưu đãi đặc biệt này và chuẩn bị cho một kỳ nghỉ thật trọn vẹn'),(37,310000.000,'Gói nghỉ dưỡng ẩm thực trọn niềm vui',NULL,31,'2024-10-05 13:28:56','2024-10-17 08:50:14','Chào mừng bạn đến với gói nghỉ dưỡng ẩm thực \"Trọn Niềm Vui,\" một hành trình dành riêng cho những tín đồ yêu thích khám phá hương vị độc đáo! Trong gói nghỉ dưỡng này, bạn sẽ được thưởng thức những món ăn đặc sắc từ các nền văn hóa khác nhau, từ ẩm thực địa phương đến các món ăn quốc tế tinh tế. Các đầu bếp hàng đầu sẽ trực tiếp chế biến và giới thiệu cho bạn quy trình làm món ăn, giúp bạn hiểu rõ hơn về nghệ thuật ẩm thực. Bên cạnh đó, bạn còn có cơ hội tham gia các lớp học nấu ăn thú vị, nơi bạn có thể tự tay chuẩn bị những món ngon cho gia đình và bạn bè. Hãy để gói nghỉ dưỡng ẩm thực \"Trọn Niềm Vui\" mang đến cho bạn không chỉ những bữa ăn tuyệt vời mà còn là những trải nghiệm tràn đầy hạnh phúc bên người thân yêu'),(38,220000.000,'Kỳ nghỉ Gia đình - 3 Ngày 2 Đêm',NULL,31,'2024-10-05 13:29:32','2024-10-17 08:49:11','Chào mừng bạn đến với gói kỳ nghỉ gia đình, nơi mỗi khoảnh khắc bên người thân trở nên quý giá và đáng nhớ! Gói kỳ nghỉ này mang đến cho gia đình bạn những trải nghiệm thú vị tại các khu nghỉ dưỡng sang trọng, với đầy đủ tiện nghi và hoạt động giải trí phù hợp cho mọi lứa tuổi. Từ những bữa tiệc BBQ ngoài trời, các trò chơi thú vị, đến những buổi tham quan khám phá văn hóa địa phương, chúng tôi cam kết mang đến cho gia đình bạn một kỳ nghỉ tràn đầy tiếng cười và niềm vui. Hãy cùng nhau tạo dựng những kỷ niệm đẹp, kết nối yêu thương và tận hưởng những giây phút thư giãn bên nhau trong không gian tuyệt vời'),(39,210000.000,'Gói Nghỉ Dưỡng Spa | 3 Ngày 2 Đêm',NULL,31,'2024-10-05 13:30:20','2024-10-17 08:48:33','Chào mừng bạn đến với gói nghỉ dưỡng Spa, một trải nghiệm hoàn hảo dành cho những ai tìm kiếm sự thư giãn và tái tạo sức sống. Trong hành trình này, bạn sẽ được tận hưởng các liệu trình spa cao cấp như massage thư giãn, tẩy tế bào chết, và chăm sóc da mặt, giúp bạn xua tan căng thẳng và làm mới tinh thần. Bên cạnh đó, không gian yên tĩnh và sang trọng của spa sẽ mang đến cho bạn cảm giác thoải mái, gần gũi với thiên nhiên. Hãy để những chuyên gia lành nghề chăm sóc bạn, mang đến sự phục hồi toàn diện cả về thể chất lẫn tinh thần. Gói nghỉ dưỡng Spa chắc chắn sẽ là lựa chọn lý tưởng để bạn nạp lại năng lượng và tìm lại sự cân bằng trong cuộc sống.'),(40,310000.000,'Giấc Ngủ Yên Bình | 3 Ngày 2 Đêm',NULL,31,'2024-10-05 13:31:02','2024-10-17 08:47:58','Chào mừng bạn đến với tour \"Giấc Ngủ Yên Bình,\" một hành trình thư giãn và tái tạo năng lượng giữa lòng thiên nhiên. Chúng tôi sẽ đưa bạn đến những điểm đến yên tĩnh, xa rời ồn ào của đô thị, nơi bạn có thể thả lỏng tâm hồn và tận hưởng không khí trong lành. Trong tour này, bạn sẽ được tham gia các hoạt động như thiền bên hồ, đi bộ trong rừng xanh, và thưởng thức những món ăn thanh đạm, tốt cho sức khỏe. Hãy để bản thân đắm chìm trong không gian bình yên, tái tạo năng lượng và trở về với cuộc sống thường nhật tràn đầy sức sống. Tour \"Giấc Ngủ Yên Bình\" sẽ mang đến cho bạn những trải nghiệm thú vị và giây phút bình yên đáng nhớ'),(41,210000.000,'Kỳ nghỉ cặp đôi - 3 Ngày 2 Đêm',NULL,31,'2024-10-05 13:31:33','2024-10-17 08:46:34','Với không gian bãi cỏ rộng rãi, hướng nhìn ra biển hay không gian bãi biển tuyệt đẹp thẳng tầm mắt hướng chân trời,… tạo nên khung cảnh tuyệt đẹp cho một lễ cưới đáng nhớ tại Quần thể du lịch Furama – Ariyana Đà Nẵng. Cô dâu chú rể có thể tùy thích lên ý tưởng với tông màu chủ đạo, hoa trang trí, sân khấu chính,… để ghi lại những dấu ấn cá nhân của từng cặp đôi'),(42,120000.000,'Kỳ nghỉ trăng mật ngọt ngào - 3 ngày 2 đêm',NULL,31,'2024-10-05 13:32:10','2024-10-17 08:46:22','Với không gian bãi cỏ rộng rãi, hướng nhìn ra biển hay không gian bãi biển tuyệt đẹp thẳng tầm mắt hướng chân trời,… tạo nên khung cảnh tuyệt đẹp cho một lễ cưới đáng nhớ tại Quần thể du lịch Furama – Ariyana Đà Nẵng. Cô dâu chú rể có thể tùy thích lên ý tưởng với tông màu chủ đạo, hoa trang trí, sân khấu chính,… để ghi lại những dấu ấn cá nhân của từng cặp đôi'),(43,200000.000,'Tour du lịch biển',NULL,31,'2024-10-05 13:33:15','2024-10-17 08:45:05','Chào mừng bạn đến với tour du lịch biển tuyệt vời, nơi bạn sẽ được thả mình trong làn nước trong xanh và thưởng thức những bãi cát trắng mịn màng! Chúng tôi sẽ đưa bạn đến những thiên đường biển như Đà Nẵng, Nha Trang hoặc Phú Quốc, nơi có cảnh đẹp hoang sơ và những hoạt động giải trí thú vị. Trong hành trình này, bạn sẽ được tham gia các trò chơi thể thao dưới nước như lặn ngắm san hô, chèo thuyền kayak, và thưởng thức hải sản tươi ngon tại những nhà hàng ven biển. Ngoài ra, hãy cùng khám phá những nét văn hóa đặc sắc của địa phương và thư giãn tại các khu nghỉ dưỡng sang trọng. Đừng bỏ lỡ cơ hội tận hưởng một kỳ nghỉ tuyệt vời bên biển cả'),(44,230000.000,'Tour du lịch tết',NULL,31,'2024-10-05 13:34:27','2024-10-17 08:44:36','Chào mừng bạn đến với tour du lịch Tết hấp dẫn nhất năm! Chúng tôi mang đến cho bạn một hành trình khám phá vẻ đẹp truyền thống và văn hóa đặc sắc của Việt Nam trong dịp Tết Nguyên Đán. Tour bắt đầu từ Hà Nội, nơi bạn sẽ được tham quan những địa điểm nổi tiếng như Hồ Hoàn Kiếm, Văn Miếu và chợ hoa Tết. Tiếp theo, chúng ta sẽ di chuyển vào miền Trung, thưởng thức đặc sản nổi tiếng và tham gia các hoạt động vui tươi như làm bánh chưng, trang trí mâm ngũ quả. Đặc biệt, bạn sẽ có cơ hội trải nghiệm không khí đón Tết cùng người dân địa phương, tham gia vào các lễ hội truyền thống đầy màu sắc. Hãy cùng chúng tôi tạo nên những kỷ niệm khó quên trong dịp Tết này'),(45,4546.000,'Tour biển',NULL,31,'2024-10-07 14:15:03','2024-10-17 08:39:22','Đảo Cù Lao Chàm là nhóm 8 hòn đảo nhỏ của Quảng Nam, là một phần của Khu bảo tồn biển Cù Lao Chàm, Khu dự trữ sinh quyển thế giới được UNESCO công nhận. Cù Lao Chàm mang vẻ đẹp bình dị với biển xanh, cát trắng, ánh nắng mặt trời và những rạn san hô tuyệt đẹp. Tận hưởng chuyến đi bộ an toàn và hấp dẫn dưới đáy đại dương và khám phá sinh vật biển địa phương với san hô và những loài cá xinh đẹp đủ hình dạng');
/*!40000 ALTER TABLE `packets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `payment_date` datetime DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `payment_amount` double(16,3) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (15,'2024-10-18 00:00:00','Tiền mặt','',4211200.000,'reg','proxywindert9@gmail.com','Bà Rịa - Vũng Tàu','Long Điền','12312',15,28,28,'2024-10-18 15:42:41','2024-10-18 15:42:41'),(16,'2024-10-18 00:00:00','Tiền mặt','',4412800.000,'rerg','proxywindert9@gmail.com','Bắc Giang','Lục Ngạn','12121',16,28,28,'2024-10-18 15:43:21','2024-10-18 15:43:21'),(17,'2024-10-18 00:00:00','Tiền mặt','',9049600.000,'dfdf','proxywindert9@gmail.com','Bắc Giang','Sơn Động','21212',17,28,28,'2024-10-18 15:44:31','2024-10-18 15:44:31'),(18,'2024-10-19 00:00:00','Tiền mặt','',4614400.000,'da nang','proxywindert15@gmail.com','An Giang','Chợ Mới','12312',18,33,33,'2024-10-19 01:57:54','2024-10-19 01:57:54');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `rate` tinyint(4) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `room_type_packet_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (47,'tốt',5,28,72,28,28,'2024-10-18 15:46:00','2024-10-18 15:46:00'),(48,'tốt',4,28,57,28,28,'2024-10-18 15:46:13','2024-10-18 15:46:13'),(49,'tệ',1,28,58,28,28,'2024-10-18 15:46:38','2024-10-18 15:46:38'),(50,'trung bình',3,28,66,28,28,'2024-10-18 15:46:48','2024-10-18 15:46:48');
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
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
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (4,'writer','api','2024-10-10 08:52:07','2024-10-10 08:52:07'),(5,'admin','api','2024-10-10 11:53:51','2024-10-10 11:53:51'),(6,'user','api','2024-10-17 10:47:03','2024-10-17 10:47:03');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_booking`
--

DROP TABLE IF EXISTS `room_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_booking` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `price` decimal(16,3) DEFAULT NULL,
  `room_id` bigint(20) DEFAULT NULL,
  `booking_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `room_type_packet_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_booking`
--

LOCK TABLES `room_booking` WRITE;
/*!40000 ALTER TABLE `room_booking` DISABLE KEYS */;
INSERT INTO `room_booking` VALUES (34,NULL,132,15,28,28,'2024-10-18 15:42:41','2024-10-18 15:42:41',72),(35,NULL,108,15,28,28,'2024-10-18 15:42:41','2024-10-18 15:42:41',57),(36,NULL,129,16,28,28,'2024-10-18 15:43:21','2024-10-18 15:43:21',66),(37,NULL,111,16,28,28,'2024-10-18 15:43:21','2024-10-18 15:43:21',58),(38,NULL,101,17,28,28,'2024-10-18 15:44:31','2024-10-18 15:44:31',55),(39,NULL,102,17,28,28,'2024-10-18 15:44:31','2024-10-18 15:44:31',55),(40,NULL,103,17,28,28,'2024-10-18 15:44:31','2024-10-18 15:44:31',55),(41,NULL,104,17,28,28,'2024-10-18 15:44:31','2024-10-18 15:44:31',55),(42,NULL,127,18,33,33,'2024-10-19 01:57:54','2024-10-19 01:57:54',65),(43,NULL,128,18,33,33,'2024-10-19 01:57:54','2024-10-19 01:57:54',65);
/*!40000 ALTER TABLE `room_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type_image`
--

DROP TABLE IF EXISTS `room_type_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type_image` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `image_type_id` bigint(20) DEFAULT NULL,
  `room_type_id` bigint(20) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type_image`
--

LOCK TABLES `room_type_image` WRITE;
/*!40000 ALTER TABLE `room_type_image` DISABLE KEYS */;
INSERT INTO `room_type_image` VALUES (34,1,14,'https://lh3.googleusercontent.com/d/1Digl17jWbJubIb2r2MhCICT_VPpdUgKz=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(35,1,14,'https://lh3.googleusercontent.com/d/12Hix8xGqI7fHnNL9Pay3Gr44pr9ywkr6=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(36,1,14,'https://lh3.googleusercontent.com/d/1Vw-t8H94qNf7OB8OwwvHumHrVMUFcuQ1=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(37,1,14,'https://lh3.googleusercontent.com/d/1sgwg5UsSu7q-mJoPUdcfUZAKE-qdex-O=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(38,1,14,'https://lh3.googleusercontent.com/d/1q3QkAezVbi4NqbDM3VKPmtJ_kG4K1KpN=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(39,1,14,'https://lh3.googleusercontent.com/d/1ZF-u0nqVbJ7udIuQ91hqbJRw0jPa-VGJ=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(40,1,15,'https://lh3.googleusercontent.com/d/1Spfmf-5UgQ1HwRLt61iCzkyegExdk52t=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:39:07','2024-10-05 13:39:07'),(41,1,15,'https://lh3.googleusercontent.com/d/1Auxs0Z92SR515GcPDWBp749o0q6gatu9=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:39:07','2024-10-05 13:39:07'),(42,1,16,'https://lh3.googleusercontent.com/d/1lXcZ1DpAzk0vHX1yMqRkON0RtjdbuIvJ=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:40:21','2024-10-05 13:40:21'),(43,1,16,'https://lh3.googleusercontent.com/d/12p4pu9jQprSfjxR8yDH0VyvKJG-hA7lk=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:40:21','2024-10-05 13:40:21'),(44,1,17,'https://lh3.googleusercontent.com/d/1BekFUNUIAIirtWwQ-ZqAxqYxfM9kCUsG=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(45,1,17,'https://lh3.googleusercontent.com/d/1VzO5Z_aiterYVjtUHTPlGU3UphDTWq2U=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(46,1,17,'https://lh3.googleusercontent.com/d/1TtulmmR__2A0clkS-SRcglSI2b7DPTJ5=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(47,1,17,'https://lh3.googleusercontent.com/d/1ICe3KDZPQDDuaODq698CkrbcsvKF_m-S=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(48,1,17,'https://lh3.googleusercontent.com/d/17tPbnjQQOR8Ype1HaFwWdO5VPZfzxUq-=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(49,1,17,'https://lh3.googleusercontent.com/d/1HEnhFgDtbK5-h0tXhLjUKQGpAP8x6cY-=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(50,1,18,'https://lh3.googleusercontent.com/d/1rE_4udbGCSIlbYl5RhhkMtUE6I9dG3E6=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:43:38','2024-10-05 13:43:38'),(51,1,18,'https://lh3.googleusercontent.com/d/1Sa_NuPw77dlWH-PXaL5ML-hsmlz8dgsk=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:43:38','2024-10-05 13:43:38'),(52,1,18,'https://lh3.googleusercontent.com/d/1EMyJv1JrrO7NArJ6Gq3aimnXf4b1uz_D=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:43:38','2024-10-05 13:43:38'),(53,1,19,'https://lh3.googleusercontent.com/d/1MjNoueO3bEZbUgQ7qlHv9tpPAzXir4-8=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:45:24','2024-10-05 13:45:24'),(54,1,19,'https://lh3.googleusercontent.com/d/1bB-KE6TUJxhuvcTIuhIg3CDhfO_w1GUe=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:45:24','2024-10-05 13:45:24'),(55,1,19,'https://lh3.googleusercontent.com/d/1DlVFELY_GjtxmWhlOUL66cGnVl5IILKI=w1000-rw',NULL,NULL,NULL,NULL,'2024-10-05 13:45:24','2024-10-05 13:45:24');
/*!40000 ALTER TABLE `room_type_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type_packet`
--

DROP TABLE IF EXISTS `room_type_packet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_type_packet` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `packet_id` bigint(20) DEFAULT NULL,
  `room_type_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` double(3,2) DEFAULT NULL,
  `start_at` date DEFAULT NULL,
  `end_at` date DEFAULT NULL,
  `number_guest` int(11) DEFAULT NULL,
  `number_room` int(11) DEFAULT NULL,
  `isTour` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type_packet`
--

LOCK TABLES `room_type_packet` WRITE;
/*!40000 ALTER TABLE `room_type_packet` DISABLE KEYS */;
INSERT INTO `room_type_packet` VALUES (55,44,19,NULL,28,'2024-10-05 06:46:02','2024-10-05 06:51:21',NULL,'2024-10-21','2024-10-23',NULL,4,1),(56,43,17,NULL,NULL,'2024-10-05 13:46:48','2024-10-05 13:51:49',NULL,'2024-10-20','2024-10-29',NULL,3,1),(57,42,19,NULL,28,'2024-10-04 16:47:29','2024-10-04 16:47:29',4.00,NULL,NULL,NULL,NULL,0),(58,41,18,NULL,28,'2024-10-04 23:47:56','2024-10-04 23:47:56',1.00,NULL,NULL,NULL,NULL,0),(59,40,17,NULL,NULL,'2024-10-05 13:48:25','2024-10-05 13:48:25',NULL,NULL,NULL,NULL,NULL,0),(60,39,16,NULL,NULL,'2024-10-05 13:48:43','2024-10-05 13:48:43',NULL,NULL,NULL,NULL,NULL,0),(61,40,16,NULL,NULL,'2024-10-05 13:48:50','2024-10-05 13:48:50',NULL,NULL,NULL,NULL,NULL,0),(62,38,15,NULL,NULL,'2024-10-05 13:49:07','2024-10-05 13:49:07',NULL,NULL,NULL,NULL,NULL,0),(63,37,14,NULL,NULL,'2024-10-05 13:49:34','2024-10-05 13:49:34',NULL,NULL,NULL,NULL,NULL,0),(64,36,15,NULL,NULL,'2024-10-05 13:50:00','2024-10-05 13:50:00',NULL,NULL,NULL,NULL,NULL,0),(65,35,17,NULL,31,'2024-10-05 13:50:19','2024-10-17 16:33:26',NULL,NULL,NULL,NULL,NULL,0),(66,34,18,NULL,28,'2024-10-04 23:50:37','2024-10-04 23:50:37',3.00,NULL,NULL,NULL,NULL,0),(67,45,18,NULL,NULL,'2024-10-07 14:16:08','2024-10-07 14:16:08',NULL,NULL,NULL,NULL,NULL,1),(72,34,19,31,28,'2024-10-18 07:52:29','2024-10-18 08:35:07',5.00,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `room_type_packet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_types`
--

DROP TABLE IF EXISTS `room_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `base_price` decimal(16,3) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `max_occupancy` int(11) DEFAULT NULL,
  `room_size` int(11) DEFAULT NULL,
  `bathrooms` int(11) DEFAULT NULL,
  `sleeps` int(11) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_types`
--

LOCK TABLES `room_types` WRITE;
/*!40000 ALTER TABLE `room_types` DISABLE KEYS */;
INSERT INTO `room_types` VALUES (14,500000.000,'PHÒNG PRESIDENTIAL SUITE','Phòng President Suite được trang trí với phong cách hoàng gia, hướng ra bãi biển Bắc Mỹ An tuyệt đẹp. Căn phòng mang nhiều những nét độc đáo riêng khác lạ với bất kỳ loại phòng nào khác tại khu nghỉ có trang bị TV màn hình lớn trong phòng khách rộng, giường King kết nối cùng phòng tắm lát đá cẩm thạch với bồn tắm và bồn vệ sinh điện tử, hiện đại.',4,130,2,4,NULL,NULL,'2024-10-05 13:37:04','2024-10-05 13:37:04'),(15,600000.000,'PHÒNG SUITE HƯỚNG BIỂN','Được trang trí với tông màu dịu nhẹ kết hợp với những đồ thủ công trang trí mang đậm hơi thở văn hóa Chăm-pa của địa phương, căn phòng được chia tầng rõ rệt. Ở dưới là khu vực sinh hoạt với ghế sofa chữ L và ở trên là giường ngủ tạo cảm giác trang nhã mà rất thân thuộc như ở nhà.\n\nĐệm lụa và khăn trải giường cùng gối xa hoa làm tăng sự sang trọng và quyến rũ trong cá tính của chính căn phòng tuyệt đẹp này.',4,86,3,4,NULL,NULL,'2024-10-05 13:39:07','2024-10-05 13:39:07'),(16,700000.000,'PHÒNG STUDIO SUITE HƯỚNG BIỂN','Được trang trí với tông màu dịu nhẹ kết hợp với những đồ thủ công trang trí mang đậm hơi thở văn hóa Chăm-pa của địa phương, căn phòng được chia tầng rõ rệt. Ở dưới là khu vực sinh hoạt với ghế sofa chữ L và ở trên là giường ngủ tạo cảm giác trang nhã mà rất thân thuộc như ở nhà.\n\nĐệm lụa và khăn trải giường cùng gối xa hoa làm tăng sự sang trọng và quyến rũ trong cá tính của chính căn phòng tuyệt đẹp này.',4,40,2,4,NULL,NULL,'2024-10-05 13:40:21','2024-10-05 13:40:21'),(17,800000.000,'PHÒNG DELUXE HƯỚNG BIỂN','Căn phòng có thiết kế giường King lớn gần ban công rộng phóng tầm mắt trọn ra bãi biển Bắc Mỹ An xinh đẹp.\n\nPhong cách trang trí lấy cảm hứng Á Đông với sàn gỗ bóng sáng, tủ quần áo không cửa ngăn, phòng tắm lát đá cẩm thạch. Khu vực ngồi tiếp khách riêng biệt với bàn, ghế, bàn cà phê, ghế bành.\n\nTi vi truyền hình vệ tinh miễn phí nhiều những kênh cao cấp. Ba điện thoại quay số trực tiếp (bao gồm cả phòng tắm). Minibar, máy pha cà trà, cà phê, áo choàng tắm, dép, cân phòng tắm, quạt trần được trang bị đầy đủ.',4,44,2,4,NULL,NULL,'2024-10-05 13:42:18','2024-10-05 13:42:18'),(18,780000.000,'PHÒNG SUPERIOR HƯỚNG HỒ','Tận hưởng khung cảnh nhiệt đới với cây, cỏ và hoa ngập tràn đủ loại sắc màu và xanh ngút ngàn từ ban công của căn phòng thanh lịch và rộng rãi này. Vào ban đêm, hồ bơi và khu vườn được chiếu sáng lãng mạn.\n\nPhòng có sàn gỗ bóng, khu vực ngồi tiếp khách riêng biệt, độc đáo, tủ quần áo không cửa ngăn, giường đôi hoặc giường King cùng phòng tắm lát đá cẩm thạch rộng lớn được trang bị vòi tắm ngoại cỡ.',4,40,2,4,NULL,NULL,'2024-10-05 13:43:38','2024-10-05 13:43:38'),(19,780000.000,'PHÒNG SUPERIOR HƯỚNG VƯỜN','Đắm mình dưới vẻ đẹp tuyệt mỹ của hoàng hôn trên thành phố biển xinh đẹp. Căn phòng hướng mình về phía mặt trời lặn với ban công thoáng đãng, nội thất thanh lịch, sàn gỗ bóng, tủ quần áo không cửa ngăn, quạt trần bên trên giường đôi hoặc giường King kết nối với phòng tắm lát đá cẩm thạch được trang bị vòi tắm hoa sen.',4,40,3,4,NULL,NULL,'2024-10-05 13:45:24','2024-10-05 13:45:24');
/*!40000 ALTER TABLE `room_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `room_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `room_number` int(11) DEFAULT NULL,
  `room_type_packet_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_number_UNIQUE` (`room_number`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (101,NULL,1,55,NULL,NULL,'2024-10-05 13:46:03','2024-10-05 13:46:03'),(102,NULL,2,55,NULL,NULL,'2024-10-05 13:46:13','2024-10-05 13:46:13'),(103,NULL,3,55,NULL,NULL,'2024-10-05 13:46:22','2024-10-05 13:46:22'),(104,NULL,4,55,NULL,NULL,'2024-10-05 13:46:31','2024-10-05 13:46:31'),(105,NULL,5,56,NULL,NULL,'2024-10-05 13:46:48','2024-10-05 13:46:48'),(106,NULL,6,56,NULL,NULL,'2024-10-05 13:46:57','2024-10-05 13:46:57'),(107,NULL,7,56,NULL,NULL,'2024-10-05 13:47:10','2024-10-05 13:47:10'),(108,NULL,8,57,NULL,NULL,'2024-10-05 13:47:29','2024-10-05 13:47:29'),(109,NULL,9,57,NULL,NULL,'2024-10-05 13:47:38','2024-10-05 13:47:38'),(110,NULL,10,57,NULL,NULL,'2024-10-05 13:47:47','2024-10-05 13:47:47'),(111,NULL,11,58,NULL,NULL,'2024-10-05 13:47:56','2024-10-05 13:47:56'),(112,NULL,12,58,NULL,NULL,'2024-10-05 13:48:03','2024-10-05 13:48:03'),(113,NULL,13,58,NULL,NULL,'2024-10-05 13:48:14','2024-10-05 13:48:14'),(114,NULL,14,59,NULL,NULL,'2024-10-05 13:48:25','2024-10-05 13:48:25'),(115,NULL,15,59,NULL,NULL,'2024-10-05 13:48:33','2024-10-05 13:48:33'),(116,NULL,16,60,NULL,NULL,'2024-10-05 13:48:43','2024-10-05 13:48:43'),(117,NULL,17,61,NULL,NULL,'2024-10-05 13:48:50','2024-10-05 13:48:50'),(118,NULL,18,60,NULL,NULL,'2024-10-05 13:48:59','2024-10-05 13:48:59'),(119,NULL,19,62,NULL,NULL,'2024-10-05 13:49:08','2024-10-05 13:49:08'),(120,NULL,20,62,NULL,NULL,'2024-10-05 13:49:16','2024-10-05 13:49:16'),(121,NULL,21,62,NULL,NULL,'2024-10-05 13:49:25','2024-10-05 13:49:25'),(122,NULL,22,63,NULL,NULL,'2024-10-05 13:49:34','2024-10-05 13:49:34'),(123,NULL,23,63,NULL,NULL,'2024-10-05 13:49:42','2024-10-05 13:49:42'),(124,NULL,24,63,NULL,NULL,'2024-10-05 13:49:52','2024-10-05 13:49:52'),(125,NULL,25,64,NULL,NULL,'2024-10-05 13:50:00','2024-10-05 13:50:00'),(126,NULL,26,64,NULL,NULL,'2024-10-05 13:50:07','2024-10-05 13:50:07'),(127,NULL,27,65,NULL,NULL,'2024-10-05 13:50:19','2024-10-05 13:50:19'),(128,NULL,28,65,NULL,31,'2024-10-05 13:50:26','2024-10-17 16:33:26'),(129,NULL,29,66,NULL,NULL,'2024-10-05 13:50:37','2024-10-05 13:50:37'),(130,NULL,30,66,NULL,NULL,'2024-10-05 13:50:46','2024-10-05 13:50:46'),(131,NULL,31,67,NULL,NULL,'2024-10-07 14:16:08','2024-10-07 14:16:08'),(132,NULL,32,72,31,31,'2024-10-18 14:45:13','2024-10-18 14:52:42'),(136,NULL,33,72,31,31,'2024-10-18 14:52:29','2024-10-18 14:52:29');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `national` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `phone_verified_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (28,NULL,'proxywindert9@gmail.com','2024-09-10 09:38:53','$2y$10$UnF9ug2PC3UmXxa2VntSquEGBN.5LuPI.IRoER5EbC4w90Z0L3cia',NULL,'2024-09-10 09:37:29','2024-10-05 18:04:00','0914345','cong','lb','2024-09-28',NULL,1,NULL),(30,NULL,'proxywindert10@gmail.com','2024-10-05 19:39:16','$2y$10$a5MN92IwgdQ8b20pKyMGCuYqn0V9PPVPXdVOP6885B645Yazn.0ay',NULL,'2024-10-05 19:38:51','2024-10-05 19:39:16','1231231231','few','wef',NULL,NULL,1,NULL),(31,NULL,'proxywindert11@gmail.com','2024-09-10 09:38:53','$2y$10$UnF9ug2PC3UmXxa2VntSquEGBN.5LuPI.IRoER5EbC4w90Z0L3cia',NULL,'2024-09-10 09:37:29','2024-10-05 18:04:00','0914345','admin','admin','2024-09-28',NULL,1,NULL),(32,NULL,'proxywindert12@gmail.com','2024-10-17 10:53:36','$2y$10$824wU1FolgnCJY0Y3OgrI.FA7.w26EFPbK90WZfgNwX7GUK/ocC.W',NULL,'2024-10-17 10:53:12','2024-10-17 10:53:36','1231231211','wef','wef',NULL,NULL,1,NULL),(33,NULL,'proxywindert15@gmail.com','2024-10-19 01:51:53','$2y$10$40hjni.p8heXgXmd2UQPDOPAXmHCI1Yv6L8PklbP7E1w4W6UZeDD2',NULL,'2024-10-19 01:51:34','2024-10-19 01:53:50','0914245750','cong1','lb1','2024-10-27',NULL,1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint(20) DEFAULT NULL,
  `room_type_id` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
INSERT INTO `wishlists` VALUES (45,28,19,NULL,NULL,'2024-10-18 15:48:45','2024-10-18 15:48:45');
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-27 17:03:11
