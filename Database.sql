-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb_django
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `agreements`
--

DROP TABLE IF EXISTS `agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agreements` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Docid` varchar(20) DEFAULT NULL,
  `DocNm` varchar(20) DEFAULT NULL,
  `Open Jobs` varchar(20) DEFAULT NULL,
  `Active Jobs` varchar(20) DEFAULT NULL,
  `Filled Historical Jobs` varchar(20) DEFAULT NULL,
  `Start Date` date NOT NULL,
  `Expdate` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Agreements_user_id_a4e8cb66_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Agreements_user_id_a4e8cb66_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agreements`
--

LOCK TABLES `agreements` WRITE;
/*!40000 ALTER TABLE `agreements` DISABLE KEYS */;
INSERT INTO `agreements` VALUES (1,'a','a','a','a','a','2024-05-18','2024-05-18',1),(2,'a','a','a','a','a','2024-05-18','2024-05-18',1),(3,'a','a','a','a','a','2024-05-18','2024-05-18',1);
/*!40000 ALTER TABLE `agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app1_userprofile`
--

DROP TABLE IF EXISTS `app1_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app1_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `status` varchar(10) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `app1_userprofile_user_id_37647760_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app1_userprofile`
--

LOCK TABLES `app1_userprofile` WRITE;
/*!40000 ALTER TABLE `app1_userprofile` DISABLE KEYS */;
INSERT INTO `app1_userprofile` VALUES (1,'Verified',2),(2,'Pending',1),(3,'Verified',3),(4,'Unverified',4),(5,'pending',7),(6,'pending',10),(7,'pending',12),(8,'pending',18),(9,'pending',22),(10,'pending',23),(11,'pending',5),(12,'pending',6),(13,'pending',8),(14,'Verified',9),(15,'Pending',15),(16,'Pending',14),(17,'Verified',11),(18,'pending',54);
/*!40000 ALTER TABLE `app1_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add address',7,'add_address'),(26,'Can change address',7,'change_address'),(27,'Can delete address',7,'delete_address'),(28,'Can view address',7,'view_address'),(29,'Can add Agreements',8,'add_agreements'),(30,'Can change Agreements',8,'change_agreements'),(31,'Can delete Agreements',8,'delete_agreements'),(32,'Can view Agreements',8,'view_agreements'),(33,'Can add Board Certifications',9,'add_boardcertifications'),(34,'Can change Board Certifications',9,'change_boardcertifications'),(35,'Can delete Board Certifications',9,'delete_boardcertifications'),(36,'Can view Board Certifications',9,'view_boardcertifications'),(37,'Can add DEA Registration',10,'add_dearegistration'),(38,'Can change DEA Registration',10,'change_dearegistration'),(39,'Can delete DEA Registration',10,'delete_dearegistration'),(40,'Can view DEA Registration',10,'view_dearegistration'),(41,'Can add Education',11,'add_education'),(42,'Can change Education',11,'change_education'),(43,'Can delete Education',11,'delete_education'),(44,'Can view Education',11,'view_education'),(45,'Can add Fellowship',12,'add_fellowship'),(46,'Can change Fellowship',12,'change_fellowship'),(47,'Can delete Fellowship',12,'delete_fellowship'),(48,'Can view Fellowship',12,'view_fellowship'),(49,'Can add fifthpathway',13,'add_fifthpathway'),(50,'Can change fifthpathway',13,'change_fifthpathway'),(51,'Can delete fifthpathway',13,'delete_fifthpathway'),(52,'Can view fifthpathway',13,'view_fifthpathway'),(53,'Can add Other Graduate School',14,'add_gschool'),(54,'Can change Other Graduate School',14,'change_gschool'),(55,'Can delete Other Graduate School',14,'delete_gschool'),(56,'Can view Other Graduate School',14,'view_gschool'),(57,'Can add Hospitals',15,'add_hospitals'),(58,'Can change Hospitals',15,'change_hospitals'),(59,'Can delete Hospitals',15,'delete_hospitals'),(60,'Can view Hospitals',15,'view_hospitals'),(61,'Can add Informations',16,'add_informations'),(62,'Can change Informations',16,'change_informations'),(63,'Can delete Informations',16,'delete_informations'),(64,'Can view Informations',16,'view_informations'),(65,'Can add Licences',17,'add_licences'),(66,'Can change Licences',17,'change_licences'),(67,'Can delete Licences',17,'delete_licences'),(68,'Can view Licences',17,'view_licences'),(69,'Can add License/Other Exams',18,'add_licencesnotherexams'),(70,'Can change License/Other Exams',18,'change_licencesnotherexams'),(71,'Can delete License/Other Exams',18,'delete_licencesnotherexams'),(72,'Can view License/Other Exams',18,'view_licencesnotherexams'),(73,'Can add lifesupport',19,'add_lifesupport'),(74,'Can change lifesupport',19,'change_lifesupport'),(75,'Can delete lifesupport',19,'delete_lifesupport'),(76,'Can view lifesupport',19,'view_lifesupport'),(77,'Can add Medical Education',20,'add_medicaleducation'),(78,'Can change Medical Education',20,'change_medicaleducation'),(79,'Can delete Medical Education',20,'delete_medicaleducation'),(80,'Can view Medical Education',20,'view_medicaleducation'),(81,'Can add Medical Training',21,'add_medicaltraining'),(82,'Can change Medical Training',21,'change_medicaltraining'),(83,'Can delete Medical Training',21,'delete_medicaltraining'),(84,'Can view Medical Training',21,'view_medicaltraining'),(85,'Can add preceptorship',22,'add_preceptorship'),(86,'Can change preceptorship',22,'change_preceptorship'),(87,'Can delete preceptorship',22,'delete_preceptorship'),(88,'Can view preceptorship',22,'view_preceptorship'),(89,'Can add Residency',23,'add_residency'),(90,'Can change Residency',23,'change_residency'),(91,'Can delete Residency',23,'delete_residency'),(92,'Can view Residency',23,'view_residency'),(93,'Can add user profile',24,'add_userprofile'),(94,'Can change user profile',24,'change_userprofile'),(95,'Can delete user profile',24,'delete_userprofile'),(96,'Can view user profile',24,'view_userprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$MrIJRJPFQYaQ1NeZkosse8$OfXVdm+g7HuPIWvHagoSj827n+O8w6udU+nDcWskW3s=','2024-05-18 15:54:13.681098',1,'django@gmail.com','Super','Admin','django@gmail.com',1,1,'2024-03-01 17:39:42.000000'),(2,'pbkdf2_sha256$720000$oZWXXwQMolGnVX5Xj4INeD$QU8PnSJTCTapH15Iiaco55VrPbOSl0ltg8TXyFLV7FI=',NULL,0,'john.doe','John','Doe','john@example.com',0,0,'2024-03-03 20:24:03.000000'),(3,'pbkdf2_sha256$720000$EJw72BYWRIpbfUDjAYTXWL$wzMFAKC7eiBZ3MJAGwKUNWBerP5jtbah/NVhKh5iwCY=',NULL,0,'michael.jjj','Michael','Jonson','michael@example.com',0,1,'2024-03-03 20:29:29.000000'),(4,'pbkdf2_sha256$720000$Wh5T50NDoLFfjFgAWb4bA8$TImWCiLozZI0NPKCGDyla6W1Ndk6urZNZbRqJA38ul4=','2024-03-03 20:40:53.432838',0,'emilyb','Emily','Brown','emily@example.com',0,0,'2024-03-03 20:40:52.626062'),(5,'pbkdf2_sha256$720000$fAiZ9SV0RN9eAUnegEuYI8$HOoaOAwcgmJt/QlWWRvjXrYVSLPFlgFH/L7ALEGMFwc=','2024-03-03 21:44:19.369699',0,'jane_smith','Jane','Smith','jane@example.com',0,1,'2024-03-03 21:44:18.539095'),(6,'pbkdf2_sha256$720000$xFF4wa9k4wsjIO9EGoxspn$aFmowF2N0PPNsFJ0/mGdHZKGxKzW+Su4o/wnzT/LAK0=','2024-03-05 16:33:05.000000',0,'sarahw','Sarah','Wilson','sarah@example.com',0,1,'2024-03-03 22:42:48.000000'),(7,'pbkdf2_sha256$720000$NhqfNkdt7sQwZHYDglKyVK$IGKTETkt/yeD3/LVtIp54AVKFGbxcaKk5dDMWrZP9Os=',NULL,0,'davidd','David','Davis','david@example.com',0,1,'2024-03-04 19:28:29.576127'),(8,'pbkdf2_sha256$720000$TG6k76E9K9A8cqjAZCVh6W$qeA789a2zLSe2SPtwxe8JykmODyvgOdjG8JdGF6/AJc=','2024-03-07 18:52:25.256108',0,'chrisl','Christopher ','Lee','chris@example.com',0,1,'2024-03-04 21:03:40.028470'),(9,'pbkdf2_sha256$720000$K2ELFCmrCEvE0ul3PqTlho$tkai1lW8dcT3gd84AzVaFsPxO9U+enpSUMn0u6HG/CY=','2024-03-15 20:41:43.000000',0,'amanda_t','Amanda','Taylor','amanda@example.com',0,0,'2024-03-06 20:33:29.000000'),(10,'pbkdf2_sha256$720000$Ym1NYMDvMxWy9V4GBTLvjz$VvXxqPkmQEd/vrV1leERPDYY5hmKUYJRYB3rVOsK5po=','2024-03-06 20:34:13.649596',0,'danniel','Daniel','Martinez','daniel@example.com',0,1,'2024-03-06 20:34:11.979546'),(11,'pbkdf2_sha256$720000$kTK7caKaYc00aY9EBlTMR7$GID226Bfom6oAjp1qi2Nqb3kN7XkDKNGHlxjTsf0dRA=','2024-03-06 20:45:36.363289',0,'jessicar','Jessica','Rodriguez','jessica@example.com',0,1,'2024-03-06 20:45:34.078364'),(12,'pbkdf2_sha256$720000$8qZKQ1p9zY7MilwRpO4UBI$ujqu5KFTNQ1oM0JAPPHbpW+RakYb/aPzpy7jWgxpEKA=','2024-03-15 20:36:30.082155',0,'math.thompson','Matthew','Thompson','matthew@example.com',0,1,'2024-03-15 20:36:29.282725'),(13,'pbkdf2_sha256$720000$J9KSpc20GrhqRADgASRzRZ$UstdJRqJ90RMijLSUZ2w6+JvcLLGe7sQApbpXlVfLB8=',NULL,0,'ashleyw','Ashley','White','ashley@example.com',0,1,'2024-03-17 21:35:36.476708'),(14,'pbkdf2_sha256$720000$FXvVPKSHg7smSdoPPOW2V0$wTt+FnNId4qxvvsbt2JseomDaljhrTjdCvS9xhyg3GA=','2024-03-17 21:37:46.355583',0,'chrish','Christopher','Harris','chris@example.com',0,1,'2024-03-17 21:37:13.818981'),(15,'pbkdf2_sha256$720000$BwsOPOkYkRCRxiuV0HqlMR$Q8PbHlkbU2B8K9y/DIhLhBsQmtmirLg3Qx/RtJJp8gg=','2024-03-17 22:04:32.109774',0,'stephaniec','Stephanie','Clark','stephanie@example.com',0,1,'2024-03-17 22:04:07.622468'),(16,'pbkdf2_sha256$720000$RsCikCzZ5ZJmK1z7dxYUxi$mGbNjXDFQmMkZ6AQdrbam17askLIKIOP9xVN83o+YQc=',NULL,0,'jamesl','James','Lewis','james@example.com',0,1,'2024-03-17 22:07:28.111905'),(17,'pbkdf2_sha256$720000$04TCM4MRizs2dJjloJMIR5$ezMGUVTTmmSQKv6v2fEMNJnrWUaTALNmdHhyPga0+90=',NULL,0,'ashleyh','Ashley','Hernandez','ashley@example.com',0,1,'2024-03-17 22:21:39.764628'),(18,'pbkdf2_sha256$720000$Q6x26ACFJpOuJQWPmjUuWQ$Lmnp9NfSq5+h6Q1e5wsZWVdJVNk8UIdttC4if+U/17I=',NULL,0,'','Andrew','Kingson','andrew@example.com',0,1,'2024-03-17 22:22:41.809116'),(19,'pbkdf2_sha256$720000$z2sxbtHpRMtsYumlNvampy$BIHjpldElJ3i8GbyrBrPpoAZV4BFJaw+fCqQ1ZOW3dE=','2024-03-17 22:33:07.946584',0,'joshuan','Joshua','Nguyen','joshua@example.com',0,1,'2024-03-17 22:27:24.875448'),(20,'pbkdf2_sha256$720000$F3kVshONs3GRvyjRi1Jmhx$f1YSMGtKjEwlW1tLNjqJdsBVn7OVFSYoEBbF7CW6MBo=','2024-03-17 22:38:51.167508',0,'kimberlyc','Kimberly','Carter','kimberly@example.com',0,1,'2024-03-17 22:36:43.008918'),(21,'pbkdf2_sha256$720000$QDAdvvGHn9Ai9kwQX3oDRU$flmV/JSYPGkb3FzpSW36DuPxTBzaO3gZgG18+i9OzEU=','2024-03-18 16:20:26.362621',0,'mark_w','Mark','Wilson','mark@example.com',0,1,'2024-03-18 16:19:26.271815'),(22,'pbkdf2_sha256$720000$zv1NiPgu53DXf0zlh22XY9$lIF8KwMjjiG2fLiaflSnhMmLaHUXbp8Ble1Kwzy+ZyY=','2024-03-18 21:00:17.468030',0,'samanthaj','Samantha','Jones','samantha@example.com',0,1,'2024-03-18 20:59:30.615709'),(23,'pbkdf2_sha256$720000$oaetOxdvfihbt8HelMUmrH$4ntoeNu5a5mtzpL/e8bIZ0jZC4ggJAwG0dY4m4atBg0=',NULL,0,'christopherb','Christopher','Brown','christopher@example.com',0,0,'2024-03-18 21:57:50.282419'),(24,'pbkdf2_sha256$720000$VpSu0q9bEGDRZbsNxBfBuC$uN79kFj85t3ZVA5h6C6vBXfEVv2JHS6a/M1fy2kxzkg=',NULL,0,'taylorm','Taylor','Martinez','taylor@example.com',0,0,'2024-03-18 22:01:43.119030'),(25,'pbkdf2_sha256$720000$viRzDDGttxcpu0bB8U7fYk$j36JRr3RiRpPVO4mPShWI45zM38mZB2GTtPEFiCOOl0=',NULL,0,'laurenj','Lauren','Johnson','lauren@example.com',0,0,'2024-03-18 22:09:43.944935'),(31,'pbkdf2_sha256$720000$JCs4VGvXcVwMSETL6ix2Na$vnM74oEqf25q8Uxw93HGDymXOO88IwRAoEnBsYVWioo=',NULL,0,'benjamins','Benjamin','Smith','benjamin@example.com',0,0,'2024-03-18 22:25:43.841702'),(32,'pbkdf2_sha256$720000$Aazf5F6z2TDkGTth93o5tI$wxzlvqxfoCyPd2vjFSHEgsTh9HwyhVwAoTIQBU+xLWw=',NULL,0,'nicole_d','Nicole','Davis','nicole@example.com',0,0,'2024-03-18 22:29:39.661998'),(33,'pbkdf2_sha256$720000$9zXylt62uS1kRuQmkAEfaM$lvXw91KBTzoQl9Cm21YmiYTdHu0nDztokNoi8yCFzfo=','2024-03-18 22:31:42.000000',0,'william_aa','William','Anderson','william@example.com',0,1,'2024-03-18 22:30:50.000000'),(34,'pbkdf2_sha256$720000$2JWViQxDcL8KVQXENxQYRV$AL6aE7H4dHQGm0NcT0NK3rdKx2Y1uDCFWzpxc6LCwRY=',NULL,0,'victoriag','Victoria','Garcia','victoria@example.com',0,0,'2024-03-18 22:33:09.000000'),(35,'pbkdf2_sha256$720000$5pusl8c5Ei2BRRhCCAHgfb$EB4FtP8ZDpWYoyaaqwSG4Sj23YHoIgkP6reOruKrpks=',NULL,0,'ryanm','Ryan','Miller','ryan@example.com',0,0,'2024-03-18 22:44:06.689194'),(36,'pbkdf2_sha256$720000$eYI3Q24HOJGa3glYoVIHdq$DRBtffClgbHsz/7gt1gzHuZJiO0CszgscUmrVmP3Nb8=',NULL,0,'megant','Megan','Thompson','megan@example.com',0,0,'2024-03-18 22:49:35.244963'),(37,'pbkdf2_sha256$720000$nlHJpnS1HofPi1MOwpzpE3$8zkmN0HMYttIS8Yuy03cDzyqHvBtMDt+Umv/njiPIkY=','2024-03-18 22:53:01.758999',0,'timothy.w','Timothy','Wright','timothy@example.com',0,1,'2024-03-18 22:52:14.066660'),(38,'pbkdf2_sha256$720000$EeLSxsl83B2XGit56LPOwm$FcX2v//e7qSYWMDVbWg9zRwnkiL4u4wfiz5w9u3GRZ8=','2024-03-22 15:33:43.000000',0,'rachele','Rachel','Evans','rachel@example.com',0,1,'2024-03-22 15:30:38.000000'),(39,'pbkdf2_sha256$720000$Ew3Qz5OW7ctnDlYquMLzeH$zQSXboSKKEZ5lJjgOyHqlRypQD5FKzAQBOhy0o2+kfk=','2024-03-22 16:11:41.355224',0,'kevina','Kevin','Adams','kevin@example.com',0,1,'2024-03-22 16:08:16.861206'),(40,'pbkdf2_sha256$720000$Lm5m7OsP4hGQPCZFLChcYJ$PXRymgN3We6BYVL+VFaGoU8rDeO3H64+BLPrJrl0+Us=','2024-03-28 16:14:26.575571',0,'jenniferh','Jennifer','Hernandez','jennifer@example.com',0,1,'2024-03-28 16:13:32.528567'),(41,'pbkdf2_sha256$720000$sTdTByuLWFbTq2H9N5HoKO$+iiushtEopirqHNnpxYgIKTu/SjDK0G08AXKk7rZOMk=','2024-03-29 17:43:59.044726',0,'tylers','Tyler','Scott','tyler@example.com',0,1,'2024-03-29 16:45:00.120418'),(42,'pbkdf2_sha256$720000$lBqiASd2lm21ESZSMClnRE$hJKGghFoKcc1Csi1DrpmstzvG5G3/q68Cav7ihHgpdU=','2024-03-29 21:13:41.528619',0,'nataliep','Natalie','Phillips','natalie@example.com',0,1,'2024-03-29 21:01:53.197797'),(43,'pbkdf2_sha256$720000$yHWxt1BRNn9vF9gGr2ogNy$hsBAYk3Ao+ieMEnS1FpLidhN0NymqoYlvcI5coirY5k=','2024-04-06 15:51:02.787828',0,'ethanf','Ethan','Foster','ethan@example.com',0,1,'2024-04-06 15:02:47.235435'),(44,'pbkdf2_sha256$720000$3n3GNMHubNdiuxUoZuSyfQ$uqps5ZoruBhB+RNC4yPVoOuGLNHjV3jJ1+/LkYzv3Gc=',NULL,0,'elizabethy','Elizabeth','Young','elizabeth@example.com',0,0,'2024-04-13 07:32:28.750395'),(45,'pbkdf2_sha256$720000$Ycit9Hdh8NabbuIZjkWdix$ZC8wncJERhby1DFI16bdc655dptOt6+SetczNhtJ24g=','2024-04-13 07:33:54.909972',0,'oliviat','Olivia','Turner','olivia@example.com',0,1,'2024-04-13 07:33:17.466744'),(46,'pbkdf2_sha256$720000$zzA6EPCGOzFp8B0m7GG2Pn$DPLrSIHpAm1Vf9xvZKVIgS23BltPPh9S0AN8e5ifNZo=',NULL,0,'dylanc','Dylan','Cooper','dylan@example.com',0,0,'2024-04-13 09:13:39.005393'),(47,'pbkdf2_sha256$720000$jghEdTwOfczJYROGbVIeBI$CEK5xkYV7XifnNA8zfdMPd/GEu8EnMSlxweKBQRs1Bs=',NULL,0,'hannah.raimez','Hannah','Ramirez','hannah@example.com',0,0,'2024-04-13 09:14:16.556049'),(48,'',NULL,0,'austinb','Austin','Bennett','austin@example.com',0,1,'2024-05-02 20:45:24.959016'),(49,'',NULL,0,'haleyr','Haley','Reed','haley@example.com',0,1,'2024-05-02 20:45:49.925157'),(50,'',NULL,0,'loganp','Logan','Price','logan@example.com',0,1,'2024-05-02 20:47:51.188109'),(51,'',NULL,0,'marcuss','Marcus','Sanders','marcus@example.com',0,1,'2024-05-02 20:48:28.333137'),(52,'',NULL,0,'sydney_foster','Sydney','Foster','sydney@example.com',0,1,'2024-05-02 20:49:43.296898'),(53,'',NULL,0,'gracem','Grace','Mitchell','grace@example.com',0,1,'2024-05-02 20:50:15.559027'),(54,'pbkdf2_sha256$720000$RQnt0yodlWaoW1AqUaluCn$V+PI304+sGO9hXB1yHzh0RPMbscwh0nSRKmeaTTCPqM=','2024-05-18 15:59:49.932871',0,'edvin','','','edvinsadiku1992@gmail.com',0,1,'2024-05-18 15:46:31.411990');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `boardcertifications`
--

DROP TABLE IF EXISTS `boardcertifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boardcertifications` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Degree` varchar(20) DEFAULT NULL,
  `Board Type` varchar(20) DEFAULT NULL,
  `Of Speciality` varchar(20) DEFAULT NULL,
  `With Certification` varchar(20) DEFAULT NULL,
  `Certified` varchar(20) DEFAULT NULL,
  `Certified Date` date NOT NULL,
  `Recertified` varchar(20) DEFAULT NULL,
  `Recertified Date` date NOT NULL,
  `Expiration Date` date NOT NULL,
  `Lifetime Cert` varchar(20) NOT NULL,
  `If not cert` varchar(20) DEFAULT NULL,
  `Date Scheduled` date NOT NULL,
  `If not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `BoardCertifications_user_id_9ce11372_fk_auth_user_id` (`user_id`),
  CONSTRAINT `BoardCertifications_user_id_9ce11372_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boardcertifications`
--

LOCK TABLES `boardcertifications` WRITE;
/*!40000 ALTER TABLE `boardcertifications` DISABLE KEYS */;
INSERT INTO `boardcertifications` VALUES (1,'Option 3','Option 2','Option 2','Option 2','Option 1','2024-05-18','Option 1','2024-05-18','2024-05-18','no','Option 3','2024-05-18','',1);
/*!40000 ALTER TABLE `boardcertifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dearegistration`
--

DROP TABLE IF EXISTS `dearegistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dearegistration` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `State` varchar(20) DEFAULT NULL,
  `Reg Number` varchar(20) DEFAULT NULL,
  `Dissued` date NOT NULL,
  `Expdate` date NOT NULL,
  `IFU` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `DEARegistration_user_id_bd705b0d_fk_auth_user_id` (`user_id`),
  CONSTRAINT `DEARegistration_user_id_bd705b0d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dearegistration`
--

LOCK TABLES `dearegistration` WRITE;
/*!40000 ALTER TABLE `dearegistration` DISABLE KEYS */;
INSERT INTO `dearegistration` VALUES (1,'a','a','2024-05-18','2024-05-18','',1);
/*!40000 ALTER TABLE `dearegistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-10 17:46:52.643797','1','django',2,'[{\"changed\": {\"fields\": [\"Profile picture\", \"Preffix\", \"Suffix\", \"Preferred Phone Type\"]}}]',16,1),(2,'2024-05-15 12:57:44.909575','2','django',1,'[{\"added\": {}}]',24,1),(3,'2024-05-15 13:00:26.662009','3','michael.jjj',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,1),(4,'2024-05-15 13:01:02.567755','3','michael.jjj',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,1),(5,'2024-05-15 13:01:10.250728','2','django',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,1),(6,'2024-05-15 13:01:23.224697','4','emilyb',1,'[{\"added\": {}}]',24,1),(7,'2024-05-15 13:01:41.827945','4','emilyb',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,1),(8,'2024-05-15 13:01:59.281547','1','john.doe',2,'[{\"changed\": {\"fields\": [\"Status\"]}}]',24,1),(9,'2024-05-18 15:20:16.851140','1','django@gmail.com',2,'[{\"changed\": {\"fields\": [\"Username\", \"Email address\"]}}, {\"changed\": {\"name\": \"user profile\", \"object\": \"django@gmail.com\", \"fields\": [\"Status\"]}}, {\"changed\": {\"name\": \"Informations\", \"object\": \"django@gmail.com\", \"fields\": [\"Preffix\", \"Suffix\"]}}, {\"changed\": {\"name\": \"Education\", \"object\": \"django@gmail.com\", \"fields\": [\"State\"]}}, {\"added\": {\"name\": \"Medical Education\", \"object\": \"django@gmail.com\"}}, {\"changed\": {\"name\": \"Medical Education\", \"object\": \"django@gmail.com\", \"fields\": [\"Country\"]}}, {\"added\": {\"name\": \"Other Graduate School\", \"object\": \"django@gmail.com\"}}, {\"changed\": {\"name\": \"Other Graduate School\", \"object\": \"django@gmail.com\", \"fields\": [\"State\", \"Graduated\"]}}, {\"added\": {\"name\": \"Medical Training\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Residency\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Agreements\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Agreements\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Agreements\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Fellowship\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Board Certifications\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"Licences\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"DEA Registration\", \"object\": \"django@gmail.com\"}}, {\"added\": {\"name\": \"License/Other Exams\", \"object\": \"django@gmail.com\"}}]',4,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app1','address'),(8,'app1','agreements'),(9,'app1','boardcertifications'),(10,'app1','dearegistration'),(11,'app1','education'),(12,'app1','fellowship'),(13,'app1','fifthpathway'),(14,'app1','gschool'),(15,'app1','hospitals'),(16,'app1','informations'),(17,'app1','licences'),(18,'app1','licencesnotherexams'),(19,'app1','lifesupport'),(20,'app1','medicaleducation'),(21,'app1','medicaltraining'),(22,'app1','preceptorship'),(23,'app1','residency'),(24,'app1','userprofile'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-07 18:15:40.746419'),(2,'auth','0001_initial','2024-05-07 18:15:41.267673'),(3,'admin','0001_initial','2024-05-07 18:15:41.410322'),(4,'admin','0002_logentry_remove_auto_add','2024-05-07 18:15:41.417321'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-07 18:15:41.423321'),(6,'app1','0001_initial','2024-05-07 18:15:42.832009'),(7,'app1','0002_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:15:43.254364'),(8,'app1','0003_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:15:43.358905'),(9,'app1','0004_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:15:43.496766'),(10,'app1','0005_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:29.203553'),(11,'app1','0006_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:29.310156'),(12,'app1','0007_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:29.414569'),(13,'app1','0008_alter_education_options_alter_education_country_and_more','2024-05-07 18:16:29.747936'),(14,'app1','0009_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:29.849961'),(15,'app1','0010_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:29.996229'),(16,'app1','0011_alter_address_administrative_area_level_1_and_more','2024-05-07 18:16:33.241111'),(17,'app1','0012_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:33.348043'),(18,'app1','0013_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:33.454085'),(19,'app1','0014_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:33.596854'),(20,'app1','0015_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:33.700819'),(21,'app1','0016_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:33.842782'),(22,'app1','0017_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:33.959783'),(23,'app1','0018_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.100686'),(24,'app1','0019_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.206505'),(25,'app1','0020_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.351761'),(26,'app1','0021_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.456563'),(27,'app1','0022_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.619298'),(28,'app1','0023_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.743436'),(29,'app1','0024_alter_education_country_alter_fellowship_country_and_more','2024-05-07 18:16:34.893116'),(30,'contenttypes','0002_remove_content_type_name','2024-05-07 18:17:20.314837'),(31,'auth','0002_alter_permission_name_max_length','2024-05-07 18:17:20.379310'),(32,'auth','0003_alter_user_email_max_length','2024-05-07 18:17:20.501469'),(33,'auth','0004_alter_user_username_opts','2024-05-07 18:17:20.518627'),(34,'auth','0005_alter_user_last_login_null','2024-05-07 18:17:20.578848'),(35,'auth','0006_require_contenttypes_0002','2024-05-07 18:17:20.581872'),(36,'auth','0007_alter_validators_add_error_messages','2024-05-07 18:17:20.594890'),(37,'auth','0008_alter_user_username_max_length','2024-05-07 18:17:20.750336'),(38,'auth','0009_alter_user_last_name_max_length','2024-05-07 18:17:20.918800'),(39,'auth','0010_alter_group_name_max_length','2024-05-07 18:17:20.943436'),(40,'auth','0011_update_proxy_permissions','2024-05-07 18:17:20.959136'),(41,'auth','0012_alter_user_first_name_max_length','2024-05-07 18:17:21.106748'),(42,'sessions','0001_initial','2024-05-07 18:17:21.156326'),(43,'app1','0002_alter_fellowship_country_and_more','2024-05-07 21:23:41.365417'),(44,'app1','0003_alter_fellowship_country_and_more','2024-05-07 21:23:41.417295'),(45,'app1','0004_alter_fellowship_country_and_more','2024-05-07 21:31:08.920549'),(46,'app1','0005_informations_profile_picture_and_more','2024-05-10 17:44:46.903415'),(47,'app1','0006_alter_fellowship_country_and_more','2024-05-10 17:46:38.047924'),(48,'app1','0007_alter_fellowship_country_and_more','2024-05-10 17:55:57.968455'),(49,'app1','0008_alter_fellowship_country_and_more','2024-05-15 11:18:30.974343'),(50,'app1','0009_alter_fellowship_country_and_more','2024-05-15 11:18:31.018366'),(51,'app1','0010_alter_education_state_alter_fellowship_country_and_more','2024-05-15 11:18:31.069733'),(52,'app1','0011_alter_education_state_alter_fellowship_country_and_more','2024-05-15 11:18:31.139147'),(53,'app1','0012_alter_education_state_alter_fellowship_country_and_more','2024-05-15 11:18:31.192213'),(54,'app1','0013_alter_education_state_alter_fellowship_country_and_more','2024-05-15 11:18:31.241496'),(55,'app1','0014_alter_education_state_alter_fellowship_country_and_more','2024-05-15 11:21:09.520282'),(56,'app1','0015_alter_education_state_alter_fellowship_country_and_more','2024-05-15 12:38:31.446168'),(57,'app1','0016_alter_education_state_alter_fellowship_country_and_more','2024-05-15 12:40:29.616169'),(58,'app1','0017_alter_education_state_alter_fellowship_country_and_more','2024-05-15 12:50:10.121052'),(59,'app1','0018_alter_education_state_alter_fellowship_country_and_more','2024-05-15 13:07:22.473801'),(60,'app1','0019_alter_education_state_alter_fellowship_country_and_more','2024-05-15 21:20:03.444787'),(61,'app1','0020_alter_education_state_alter_fellowship_country_and_more','2024-05-15 21:23:52.509381'),(62,'app1','0021_alter_education_state_alter_fellowship_country_and_more','2024-05-18 10:13:25.837533'),(63,'app1','0022_alter_education_state_alter_fellowship_country_and_more','2024-05-18 10:14:06.472696'),(64,'app1','0023_alter_education_state_alter_fellowship_country_and_more','2024-05-18 10:14:09.803065'),(65,'app1','0024_alter_education_state_alter_fellowship_country_and_more','2024-05-18 10:20:25.722168'),(66,'app1','0025_alter_education_state_alter_fellowship_country_and_more','2024-05-18 15:42:37.297610'),(67,'app1','0026_alter_education_state_alter_fellowship_country_and_more','2024-05-18 15:42:37.352500'),(68,'app1','0027_alter_education_state_alter_fellowship_country_and_more','2024-05-18 15:42:37.405985'),(69,'app1','0028_alter_education_state_alter_fellowship_country_and_more','2024-05-18 15:42:37.476049');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cb43en28vgp5dxbwr41gwnsqweje4lf4','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s8LoF:393YQefqN3iPSFc18olIzO9gWC-0v1PHTw1wXW4kFww','2024-06-01 15:17:19.401424'),('cz3503qlandf66rl3i1i737fn2e6soy9','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s7Cen:9xQsUlzEKYwsvrA4v-0uqQtJRc1i-dwSqKacACFrImI','2024-05-29 11:18:49.878366'),('k3iende83eprhtp23z8pl9ny4sfk9tl8','.eJxVjDsOwjAQBe_iGlnr4PhDSZ8zWLv2LgkgR4qTCnF3iJQC2jcz76USbuuYtsZLmoq6KKNOvxthfnDdQbljvc06z3VdJtK7og_a9DAXfl4P9-9gxDZ-a2FC7p0LLndIXqzLAC6jWCBA6jmajjCeAQOI9VIkcOfAG4BYomT1_gAH2jiF:1s4PQT:n_S89BhDmexMGbyQHY3yOKlKPf38BLJary5CVgWTkhk','2024-05-21 18:20:29.814626'),('w65n7tv2j1dqrxoxv4m1btp7jqmx2y78','.eJxVjEEOwiAQRe_C2pAOMAVduu8ZyDBDpWpoUtqV8e7apAvd_vfef6lI21ri1vISJ1EXhU6dfsdE_Mh1J3Kneps1z3VdpqR3RR-06WGW_Lwe7t9BoVa-tXGZvPMAYrE3I1hwIJ2x7DEFyyNDzmK5J0PgU_BMPpAInhEdh86o9wf0_TfH:1s8MTN:aNx3R7GtxhIh_4lI4hu2kWPpWNYjS4z7B1O8LNbeCKw','2024-06-01 15:59:49.938311');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education`
--

DROP TABLE IF EXISTS `education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `education` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Graduated` varchar(20) DEFAULT NULL,
  `Date of G` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `Education_user_id_1a2a8bd6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education`
--

LOCK TABLES `education` WRITE;
/*!40000 ALTER TABLE `education` DISABLE KEYS */;
INSERT INTO `education` VALUES (1,'django edu','Option 3','Option 1','Emshir','Fushe Kosove','US-MP','12000','South Carolina','1234567891','2024-05-09','2024-05-16','Option 3','2024-05-17',1);
/*!40000 ALTER TABLE `education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fellowship`
--

DROP TABLE IF EXISTS `fellowship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fellowship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Speciality` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Program Chair` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Pprogram C` varchar(20) DEFAULT NULL,
  `If not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Fellowship_user_id_5d7428e5_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Fellowship_user_id_5d7428e5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fellowship`
--

LOCK TABLES `fellowship` WRITE;
/*!40000 ALTER TABLE `fellowship` DISABLE KEYS */;
INSERT INTO `fellowship` VALUES (1,'a','Option 3','Option 1','a','a','a','a','a',NULL,'a','2024-05-18','2024-05-18','Option 2','',1);
/*!40000 ALTER TABLE `fellowship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fifthpathway`
--

DROP TABLE IF EXISTS `fifthpathway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fifthpathway` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `File` varchar(100) NOT NULL,
  `Uploaded at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FifthPathway_user_id_ff9810d2_fk_auth_user_id` (`user_id`),
  CONSTRAINT `FifthPathway_user_id_ff9810d2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fifthpathway`
--

LOCK TABLES `fifthpathway` WRITE;
/*!40000 ALTER TABLE `fifthpathway` DISABLE KEYS */;
/*!40000 ALTER TABLE `fifthpathway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospitals`
--

DROP TABLE IF EXISTS `hospitals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hospitals` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Hospital ID` varchar(20) DEFAULT NULL,
  `Hospital Name` varchar(20) DEFAULT NULL,
  `Open Jobs` varchar(20) DEFAULT NULL,
  `Active Jobs` varchar(20) DEFAULT NULL,
  `Filled Historical Jobs` varchar(20) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Hospitals_user_id_52fa1577_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Hospitals_user_id_52fa1577_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospitals`
--

LOCK TABLES `hospitals` WRITE;
/*!40000 ALTER TABLE `hospitals` DISABLE KEYS */;
/*!40000 ALTER TABLE `hospitals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informations`
--

DROP TABLE IF EXISTS `informations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Prefix` varchar(20) DEFAULT NULL,
  `Sufix` varchar(20) DEFAULT NULL,
  `Social Security Number` varchar(10) NOT NULL,
  `Preferred Phone Type` varchar(20) NOT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Other Phone` varchar(10) DEFAULT NULL,
  `Street No` varchar(100) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State/Province` varchar(15) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Mailing Address` varchar(100) DEFAULT NULL,
  `Mailing City` varchar(100) DEFAULT NULL,
  `Mailing State/Province` varchar(100) DEFAULT NULL,
  `Mailing Zip Code` varchar(5) DEFAULT NULL,
  `Mailing Country` varchar(100) DEFAULT NULL,
  `Birth City` varchar(100) DEFAULT NULL,
  `Birth Country` varchar(100) DEFAULT NULL,
  `Birth State/Province` varchar(100) DEFAULT NULL,
  `NPI Number` varchar(100) DEFAULT NULL,
  `Other Languages` varchar(100) DEFAULT NULL,
  `Emergency Name` varchar(100) DEFAULT NULL,
  `Relationship To Applicant` varchar(100) DEFAULT NULL,
  `Emergency Number` varchar(100) DEFAULT NULL,
  `Emergency Email` varchar(100) DEFAULT NULL,
  `Primary Speciality` varchar(100) DEFAULT NULL,
  `General Surgery` varchar(100) DEFAULT NULL,
  `Secondary Speciality` varchar(100) DEFAULT NULL,
  `Able to work USA` tinyint(1) NOT NULL,
  `Work Auth` varchar(100) DEFAULT NULL,
  `User` int NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User` (`User`),
  CONSTRAINT `Informations_User_f20c293d_fk_auth_user_id` FOREIGN KEY (`User`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informations`
--

LOCK TABLES `informations` WRITE;
/*!40000 ALTER TABLE `informations` DISABLE KEYS */;
INSERT INTO `informations` VALUES (1,'','Option 1','123456789','','1234567890','1234567890','','','New York','NY','','United States','Emshir','Fushe Kosove','Canada','12000','Kosovo','Fushe Kosove','Kosovo','jffjjfjy','','Albanian','Johnbab','','8484688','example@gmail.com','Yes','Emshir','I dont have one',0,'',1,'images/profile_pictures/user_1/green-logo.png'),(2,'','','','','','','','','','','','','','','','','','','','','','','','','','','','','',0,'',54,'');
/*!40000 ALTER TABLE `informations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licences`
--

DROP TABLE IF EXISTS `licences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licences` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `State` varchar(20) DEFAULT NULL,
  `Licence Number` varchar(20) DEFAULT NULL,
  `Date Issued` date NOT NULL,
  `Expiration Date` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Licences_user_id_9e18afc9_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Licences_user_id_9e18afc9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licences`
--

LOCK TABLES `licences` WRITE;
/*!40000 ALTER TABLE `licences` DISABLE KEYS */;
INSERT INTO `licences` VALUES (1,'a','a','2024-05-18','2024-05-18',1);
/*!40000 ALTER TABLE `licences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `licencesotherexams`
--

DROP TABLE IF EXISTS `licencesotherexams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `licencesotherexams` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `lexaminations` varchar(100) DEFAULT NULL,
  `ecfmgcnumber` varchar(20) DEFAULT NULL,
  `ecfmgandfmgems` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LicencesOtherExams_user_id_dcd7ad3e_fk_auth_user_id` (`user_id`),
  CONSTRAINT `LicencesOtherExams_user_id_dcd7ad3e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `licencesotherexams`
--

LOCK TABLES `licencesotherexams` WRITE;
/*!40000 ALTER TABLE `licencesotherexams` DISABLE KEYS */;
INSERT INTO `licencesotherexams` VALUES (1,'','a','2024-05-18',1);
/*!40000 ALTER TABLE `licencesotherexams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lifesupport`
--

DROP TABLE IF EXISTS `lifesupport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lifesupport` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `File` varchar(100) NOT NULL,
  `Uploaded at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `LifeSupport_user_id_a7356384_fk_auth_user_id` (`user_id`),
  CONSTRAINT `LifeSupport_user_id_a7356384_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lifesupport`
--

LOCK TABLES `lifesupport` WRITE;
/*!40000 ALTER TABLE `lifesupport` DISABLE KEYS */;
/*!40000 ALTER TABLE `lifesupport` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicaleducation`
--

DROP TABLE IF EXISTS `medicaleducation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicaleducation` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Graduated` varchar(20) DEFAULT NULL,
  `Date of G` date NOT NULL,
  `Explain` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Medical Education_user_id_275c9a5b_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Medical Education_user_id_275c9a5b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicaleducation`
--

LOCK TABLES `medicaleducation` WRITE;
/*!40000 ALTER TABLE `medicaleducation` DISABLE KEYS */;
INSERT INTO `medicaleducation` VALUES (2,'django medi','Option 3','Option 1','Emshir','Fushe Kosove','Alaska','12000',NULL,'1234567891','2024-05-06','2024-05-16','Option 3','2024-05-09','',1),(3,'asd','Option 3','Option 1','asd','asd','a','a','US-NC','a','2024-05-18','2024-05-18','Option 2','2024-05-18','',1);
/*!40000 ALTER TABLE `medicaleducation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicaltraining`
--

DROP TABLE IF EXISTS `medicaltraining`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicaltraining` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Rotating` varchar(20) DEFAULT NULL,
  `Program C` varchar(20) DEFAULT NULL,
  `If Not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `MedicalTraining_user_id_25267d6f_fk_auth_user_id` (`user_id`),
  CONSTRAINT `MedicalTraining_user_id_25267d6f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicaltraining`
--

LOCK TABLES `medicaltraining` WRITE;
/*!40000 ALTER TABLE `medicaltraining` DISABLE KEYS */;
INSERT INTO `medicaltraining` VALUES (1,'a','Option 1','Option 1','a','a','a','a',NULL,'a','2024-05-18','2024-05-18','Option 2','Option 1','',1);
/*!40000 ALTER TABLE `medicaltraining` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `othergraduateschool`
--

DROP TABLE IF EXISTS `othergraduateschool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `othergraduateschool` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Degree Awarded` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Graduated` varchar(20) DEFAULT NULL,
  `Date of G` date NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `OtherGraduateSchool_user_id_b9120a0a_fk_auth_user_id` (`user_id`),
  CONSTRAINT `OtherGraduateSchool_user_id_b9120a0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `othergraduateschool`
--

LOCK TABLES `othergraduateschool` WRITE;
/*!40000 ALTER TABLE `othergraduateschool` DISABLE KEYS */;
INSERT INTO `othergraduateschool` VALUES (1,'django gradu','Option 2','Option 1','Emshir','Fushe Kosove','a','12001','Maine','1234567891','2024-05-09','2024-05-16','Option 2','2024-05-08',1),(2,'a','Option 3','Option 1','a','a','a','a','a','a','2024-05-18','2024-05-18','Option 3','2024-05-18',1);
/*!40000 ALTER TABLE `othergraduateschool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preceptorship`
--

DROP TABLE IF EXISTS `preceptorship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preceptorship` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `File` varchar(100) NOT NULL,
  `Uploaded at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Preceptorship_user_id_5cf80a55_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Preceptorship_user_id_5cf80a55_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preceptorship`
--

LOCK TABLES `preceptorship` WRITE;
/*!40000 ALTER TABLE `preceptorship` DISABLE KEYS */;
/*!40000 ALTER TABLE `preceptorship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `residency`
--

DROP TABLE IF EXISTS `residency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residency` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `Institution` varchar(20) DEFAULT NULL,
  `Speciality` varchar(20) DEFAULT NULL,
  `Degree` varchar(20) DEFAULT NULL,
  `Program Chair` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(20) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZCode` varchar(5) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `Phone` varchar(10) DEFAULT NULL,
  `Start` date NOT NULL,
  `End` date NOT NULL,
  `Program C` varchar(20) DEFAULT NULL,
  `If Not` longtext,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Residency_user_id_89d27013_fk_auth_user_id` (`user_id`),
  CONSTRAINT `Residency_user_id_89d27013_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residency`
--

LOCK TABLES `residency` WRITE;
/*!40000 ALTER TABLE `residency` DISABLE KEYS */;
INSERT INTO `residency` VALUES (1,'a','Option 2','Option 1','a','a','a','a','a',NULL,'a','2024-05-18','2024-05-18','Option 2','',1);
/*!40000 ALTER TABLE `residency` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-18 18:01:58
