-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: peatio_test
-- ------------------------------------------------------
-- Server version	5.7.20

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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21  4:51:48
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: peatio_development
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `account_versions`
--

DROP TABLE IF EXISTS `account_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `reason` int(11) DEFAULT NULL,
  `balance` decimal(32,16) DEFAULT NULL,
  `locked` decimal(32,16) DEFAULT NULL,
  `fee` decimal(32,16) DEFAULT NULL,
  `amount` decimal(32,16) DEFAULT NULL,
  `modifiable_id` int(11) DEFAULT NULL,
  `modifiable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `fun` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_account_versions_on_account_id_and_reason` (`account_id`,`reason`) USING BTREE,
  KEY `index_account_versions_on_account_id` (`account_id`) USING BTREE,
  KEY `index_account_versions_on_member_id_and_reason` (`member_id`,`reason`) USING BTREE,
  KEY `index_account_versions_on_modifiable_id_and_modifiable_type` (`modifiable_id`,`modifiable_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_versions`
--

LOCK TABLES `account_versions` WRITE;
/*!40000 ALTER TABLE `account_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `account_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `balance` decimal(32,16) DEFAULT NULL,
  `locked` decimal(32,16) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `in` decimal(32,16) DEFAULT NULL,
  `out` decimal(32,16) DEFAULT NULL,
  `default_withdraw_fund_source_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_accounts_on_member_id_and_currency` (`member_id`,`currency`) USING BTREE,
  KEY `index_accounts_on_member_id` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,1,1,0.0000000000000000,0.0000000000000000,'2017-12-13 04:36:09','2017-12-13 04:36:09',NULL,NULL,NULL),(2,1,2,0.0000000000000000,0.0000000000000000,'2017-12-13 04:36:09','2017-12-13 04:36:09',NULL,NULL,NULL),(3,2,1,0.0000000000000000,0.0000000000000000,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL),(4,2,2,0.0000000000000000,0.0000000000000000,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL),(5,3,1,0.0000000000000000,0.0000000000000000,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL),(6,3,2,0.0000000000000000,0.0000000000000000,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL),(7,4,1,0.0000000000000000,0.0000000000000000,'2017-12-13 20:32:33','2017-12-13 20:32:33',NULL,NULL,NULL),(8,4,2,0.0000000000000000,0.0000000000000000,'2017-12-13 20:32:33','2017-12-13 20:32:33',NULL,NULL,NULL),(9,5,1,0.0000000000000000,0.0000000000000000,'2017-12-17 12:09:29','2017-12-17 12:09:29',NULL,NULL,NULL),(10,5,2,0.0000000000000000,0.0000000000000000,'2017-12-17 12:09:29','2017-12-17 12:09:29',NULL,NULL,NULL);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_tokens`
--

DROP TABLE IF EXISTS `api_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `access_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `secret_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `trusted_ip_list` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_access_token_id` int(11) DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_api_tokens_on_access_key` (`access_key`) USING BTREE,
  UNIQUE KEY `index_api_tokens_on_secret_key` (`secret_key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_tokens`
--

LOCK TABLES `api_tokens` WRITE;
/*!40000 ALTER TABLE `api_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachable_id` int(11) DEFAULT NULL,
  `attachable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assets`
--

LOCK TABLES `assets` WRITE;
/*!40000 ALTER TABLE `assets` DISABLE KEYS */;
INSERT INTO `assets` VALUES (1,'Asset::IdDocumentFile',4,'IdDocument','9059fa87-a382-46ed-bb4b-6106bdbed5b2.jpeg'),(2,'Asset::IdBillFile',4,'IdDocument','19b5a4ad-05b9-469a-a0fa-950150140100.png');
/*!40000 ALTER TABLE `assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_logs`
--

DROP TABLE IF EXISTS `audit_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `operator_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `auditable_id` int(11) DEFAULT NULL,
  `auditable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_audit_logs_on_auditable_id_and_auditable_type` (`auditable_id`,`auditable_type`) USING BTREE,
  KEY `index_audit_logs_on_operator_id` (`operator_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_logs`
--

LOCK TABLES `audit_logs` WRITE;
/*!40000 ALTER TABLE `audit_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `audit_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authentications`
--

DROP TABLE IF EXISTS `authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_authentications_on_member_id` (`member_id`) USING BTREE,
  KEY `index_authentications_on_provider_and_uid` (`provider`,`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentications`
--

LOCK TABLES `authentications` WRITE;
/*!40000 ALTER TABLE `authentications` DISABLE KEYS */;
INSERT INTO `authentications` VALUES (1,'identity','1',NULL,NULL,1,'2017-12-13 04:36:09','2017-12-13 04:36:09',NULL),(2,'identity','2',NULL,NULL,2,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL),(3,'identity','3',NULL,NULL,3,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL),(4,'identity','4',NULL,NULL,4,'2017-12-13 20:32:34','2017-12-13 20:32:34',NULL),(5,'identity','5',NULL,NULL,5,'2017-12-17 12:09:29','2017-12-17 12:09:29',NULL);
/*!40000 ALTER TABLE `authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `ticket_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposits`
--

DROP TABLE IF EXISTS `deposits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `amount` decimal(32,16) DEFAULT NULL,
  `fee` decimal(32,16) DEFAULT NULL,
  `fund_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fund_extra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `aasm_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `done_at` datetime DEFAULT NULL,
  `confirmations` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_transaction_id` int(11) DEFAULT NULL,
  `txout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_deposits_on_txid_and_txout` (`txid`,`txout`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposits`
--

LOCK TABLES `deposits` WRITE;
/*!40000 ALTER TABLE `deposits` DISABLE KEYS */;
/*!40000 ALTER TABLE `deposits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document_translations`
--

DROP TABLE IF EXISTS `document_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `document_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_id` int(11) NOT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `desc` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `index_document_translations_on_document_id` (`document_id`) USING BTREE,
  KEY `index_document_translations_on_locale` (`locale`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document_translations`
--

LOCK TABLES `document_translations` WRITE;
/*!40000 ALTER TABLE `document_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `document_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `is_auth` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `keywords` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documents`
--

LOCK TABLES `documents` WRITE;
/*!40000 ALTER TABLE `documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fund_sources`
--

DROP TABLE IF EXISTS `fund_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fund_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `extra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fund_sources`
--

LOCK TABLES `fund_sources` WRITE;
/*!40000 ALTER TABLE `fund_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `fund_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `id_documents`
--

DROP TABLE IF EXISTS `id_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `id_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_document_type` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_document_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_bill_type` int(11) DEFAULT NULL,
  `aasm_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `id_documents`
--

LOCK TABLES `id_documents` WRITE;
/*!40000 ALTER TABLE `id_documents` DISABLE KEYS */;
INSERT INTO `id_documents` VALUES (1,NULL,NULL,NULL,1,'2017-12-13 04:36:09','2017-12-13 04:36:09',NULL,NULL,NULL,NULL,NULL,NULL,'unverified'),(2,NULL,NULL,NULL,2,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL,NULL,NULL,NULL,'unverified'),(3,NULL,NULL,NULL,3,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL,NULL,NULL,NULL,'unverified'),(4,0,'Aoto','123456',4,'2017-12-13 20:32:33','2017-12-17 10:15:16','1992-02-11','ZhongYeKeiJi','Dandong','CN','118000',0,'verified'),(5,NULL,NULL,NULL,5,'2017-12-17 12:09:28','2017-12-17 12:09:28',NULL,NULL,NULL,NULL,NULL,NULL,'unverified');
/*!40000 ALTER TABLE `id_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identities`
--

DROP TABLE IF EXISTS `identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `retry_count` int(11) DEFAULT NULL,
  `is_locked` tinyint(1) DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `last_verify_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identities`
--

LOCK TABLES `identities` WRITE;
/*!40000 ALTER TABLE `identities` DISABLE KEYS */;
INSERT INTO `identities` VALUES (1,'admin@peatio.dev','$2a$10$jzqmFELpTOTRlmGfKLGvW.UN4QHf6QpOdrTuGCqYFM8b7d3H6jMwW',1,NULL,NULL,NULL,NULL,'2017-12-13 04:36:09','2017-12-13 04:36:09'),(2,'foo@peatio.dev','$2a$10$xv5UG/rJD5dP.yhLkHyMVeNqHj7iwSaki5CHe0J7BIdie53PVApKm',1,NULL,NULL,NULL,NULL,'2017-12-13 04:36:10','2017-12-13 04:36:10'),(3,'bar@peatio.dev','$2a$10$AhJMPy6WucOXlkB2qH53meLHrzqLvixmPMoY/Aj34zClIBhuVcf6y',1,NULL,NULL,NULL,NULL,'2017-12-13 04:36:10','2017-12-13 04:36:10'),(4,'aoto.daiki@yandex.com','$2a$10$yHW9gmiTo/wk95lrmYMbU.6ZBPMX3Pc45FDLmg/mWucsq4u9DB0vC',NULL,NULL,NULL,NULL,NULL,'2017-12-13 20:32:33','2017-12-13 20:32:33'),(5,'jn602nat@yandex.com','$2a$10$GnhcgJbJfSILs1KilvuP5ecCx0Vwyobg9g/74lKKUCrZ8Gf21di/2',NULL,NULL,NULL,NULL,NULL,'2017-12-17 12:09:28','2017-12-17 12:09:28');
/*!40000 ALTER TABLE `identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `identity_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT '0',
  `api_disabled` tinyint(1) DEFAULT '0',
  `nickname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'PEASED5SITGTIO',NULL,'admin@peatio.dev',NULL,'2017-12-13 04:36:09','2017-12-16 21:20:36',NULL,NULL,NULL,'8618814881023',0,0,NULL),(2,'PEAQLUDLOQJTIO',NULL,'foo@peatio.dev',NULL,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL,NULL,0,0,NULL),(3,'PEAE2NH4MZBTIO',NULL,'bar@peatio.dev',NULL,'2017-12-13 04:36:10','2017-12-13 04:36:10',NULL,NULL,NULL,NULL,0,0,NULL),(4,'PEAL6PSTGJITIO',NULL,'aoto.daiki@yandex.com',NULL,'2017-12-13 20:32:33','2017-12-17 07:42:26',NULL,1,NULL,'85266400927',0,0,NULL),(5,'PEAYDRY6YHLTIO',NULL,'jn602nat@yandex.com',NULL,'2017-12-17 12:09:28','2017-12-21 04:32:07',NULL,0,NULL,'8615641534375',0,0,NULL);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_grants`
--

DROP TABLE IF EXISTS `oauth_access_grants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_grants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_owner_id` int(11) NOT NULL,
  `application_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_in` int(11) NOT NULL,
  `redirect_uri` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_access_grants_on_token` (`token`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_grants`
--

LOCK TABLES `oauth_access_grants` WRITE;
/*!40000 ALTER TABLE `oauth_access_grants` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_grants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_owner_id` int(11) DEFAULT NULL,
  `application_id` int(11) DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `refresh_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `revoked_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `scopes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_access_tokens_on_token` (`token`) USING BTREE,
  UNIQUE KEY `index_oauth_access_tokens_on_refresh_token` (`refresh_token`) USING BTREE,
  KEY `index_oauth_access_tokens_on_resource_owner_id` (`resource_owner_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_applications`
--

DROP TABLE IF EXISTS `oauth_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `redirect_uri` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_oauth_applications_on_uid` (`uid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_applications`
--

LOCK TABLES `oauth_applications` WRITE;
/*!40000 ALTER TABLE `oauth_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) DEFAULT NULL,
  `ask` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `price` decimal(32,16) DEFAULT NULL,
  `volume` decimal(32,16) DEFAULT NULL,
  `origin_volume` decimal(32,16) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `done_at` datetime DEFAULT NULL,
  `type` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ord_type` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locked` decimal(32,16) DEFAULT NULL,
  `origin_locked` decimal(32,16) DEFAULT NULL,
  `funds_received` decimal(32,16) DEFAULT '0.0000000000000000',
  `trades_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_orders_on_currency_and_state` (`currency`,`state`) USING BTREE,
  KEY `index_orders_on_member_id_and_state` (`member_id`,`state`) USING BTREE,
  KEY `index_orders_on_member_id` (`member_id`) USING BTREE,
  KEY `index_orders_on_state` (`state`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partial_trees`
--

DROP TABLE IF EXISTS `partial_trees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partial_trees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proof_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `json` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partial_trees`
--

LOCK TABLES `partial_trees` WRITE;
/*!40000 ALTER TABLE `partial_trees` DISABLE KEYS */;
/*!40000 ALTER TABLE `partial_trees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_addresses`
--

DROP TABLE IF EXISTS `payment_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_addresses`
--

LOCK TABLES `payment_addresses` WRITE;
/*!40000 ALTER TABLE `payment_addresses` DISABLE KEYS */;
INSERT INTO `payment_addresses` VALUES (1,8,NULL,'2017-12-17 10:14:33','2017-12-17 10:14:33',2);
/*!40000 ALTER TABLE `payment_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_transactions`
--

DROP TABLE IF EXISTS `payment_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(32,16) DEFAULT NULL,
  `confirmations` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `aasm_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `receive_at` datetime DEFAULT NULL,
  `dont_at` datetime DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txout` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_payment_transactions_on_txid_and_txout` (`txid`,`txout`) USING BTREE,
  KEY `index_payment_transactions_on_type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_transactions`
--

LOCK TABLES `payment_transactions` WRITE;
/*!40000 ALTER TABLE `payment_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proofs`
--

DROP TABLE IF EXISTS `proofs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proofs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `ready` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addresses` text COLLATE utf8_unicode_ci,
  `balance` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proofs`
--

LOCK TABLES `proofs` WRITE;
/*!40000 ALTER TABLE `proofs` DISABLE KEYS */;
/*!40000 ALTER TABLE `proofs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `read_marks`
--

DROP TABLE IF EXISTS `read_marks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `read_marks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `readable_id` int(11) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `readable_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_read_marks_on_member_id` (`member_id`) USING BTREE,
  KEY `index_read_marks_on_readable_type_and_readable_id` (`readable_type`,`readable_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `read_marks`
--

LOCK TABLES `read_marks` WRITE;
/*!40000 ALTER TABLE `read_marks` DISABLE KEYS */;
INSERT INTO `read_marks` VALUES (1,NULL,1,'Comment','2017-12-13 04:36:09'),(2,NULL,1,'Ticket','2017-12-13 04:36:09'),(3,NULL,2,'Comment','2017-12-13 04:36:10'),(4,NULL,2,'Ticket','2017-12-13 04:36:10'),(5,NULL,3,'Comment','2017-12-13 04:36:10'),(6,NULL,3,'Ticket','2017-12-13 04:36:10'),(7,NULL,4,'Comment','2017-12-13 20:32:33'),(8,NULL,4,'Ticket','2017-12-13 20:32:33'),(11,NULL,5,'Comment','2017-12-17 12:09:28'),(12,NULL,5,'Ticket','2017-12-17 12:09:28');
/*!40000 ALTER TABLE `read_marks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `running_accounts`
--

DROP TABLE IF EXISTS `running_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `running_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` int(11) DEFAULT NULL,
  `income` decimal(32,16) NOT NULL DEFAULT '0.0000000000000000',
  `expenses` decimal(32,16) NOT NULL DEFAULT '0.0000000000000000',
  `currency` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_running_accounts_on_member_id` (`member_id`) USING BTREE,
  KEY `index_running_accounts_on_source_id_and_source_type` (`source_id`,`source_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `running_accounts`
--

LOCK TABLES `running_accounts` WRITE;
/*!40000 ALTER TABLE `running_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `running_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130624011823'),('20130629015414'),('20130810162023'),('20130901010953'),('20130901154530'),('20130903080937'),('20130904215802'),('20130905025823'),('20130905132250'),('20130906073020'),('20130906073931'),('20130907110146'),('20130907124647'),('20130912144526'),('20130915150504'),('20130918143551'),('20130919091853'),('20130925154257'),('20130925165804'),('20130925171856'),('20130925175113'),('20130926011813'),('20130926014845'),('20130926075355'),('20130926170008'),('20130928080757'),('20130928113620'),('20130928122042'),('20130928165236'),('20130928190156'),('20130928194048'),('20130929012418'),('20130930172651'),('20130930183833'),('20131001103847'),('20131002012809'),('20131002190141'),('20131003003357'),('20131003021225'),('20131006183340'),('20131009132505'),('20131022035138'),('20131027012836'),('20131110214254'),('20131130190923'),('20131201011127'),('20131204020953'),('20131208012814'),('20131224162832'),('20140101175408'),('20140102024125'),('20140102172835'),('20140102172836'),('20140105034746'),('20140302094520'),('20140302094729'),('20140302161905'),('20140303060739'),('20140303080054'),('20140304015055'),('20140306020939'),('20140306021833'),('20140312061206'),('20140312071704'),('20140319022202'),('20140319022302'),('20140320142701'),('20140324060148'),('20140324062812'),('20140326170234'),('20140326191837'),('20140327044440'),('20140327062025'),('20140327065708'),('20140327105217'),('20140328101707'),('20140329070543'),('20140331084541'),('20140402043033'),('20140403031847'),('20140403070840'),('20140404074816'),('20140404101823'),('20140405053744'),('20140407011310'),('20140416143239'),('20140416143352'),('20140416151403'),('20140416194209'),('20140416194300'),('20140418082715'),('20140421061712'),('20140421080408'),('20140428203350'),('20140507120249'),('20140524014413'),('20140530133210'),('20140531054739'),('20140618004355'),('20140702035833'),('20140703065321'),('20140703070953'),('20140707115022'),('20140709084906'),('20140709085158'),('20140712030803'),('20140714143823'),('20140715002401'),('20140715040545'),('20140715083857'),('20140717033231'),('20140718134132'),('20140718141345'),('20140721125900'),('20140724033014'),('20140803202610'),('20140804002557'),('20140804151249'),('20140806141035'),('20140806141419'),('20140819085359'),('20140819090417'),('20140826083906'),('20140826093508'),('20140902112641'),('20140920062130'),('20141002075102'),('20141003040822'),('20141003061259'),('20141010083930'),('20141012124243'),('20141014085101'),('20141015034040'),('20141105023306'),('20141105090746'),('20141107031140'),('20141119155043'),('20141203042029'),('20141216120736'),('20150117151634'),('20150205011423'),('20150405053726'),('20171213091729'),('20171213091730'),('20171213091731'),('20171213091732');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup_histories`
--

DROP TABLE IF EXISTS `signup_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signup_histories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accept_language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ua` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_signup_histories_on_member_id` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup_histories`
--

LOCK TABLES `signup_histories` WRITE;
/*!40000 ALTER TABLE `signup_histories` DISABLE KEYS */;
INSERT INTO `signup_histories` VALUES (1,1,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-13 04:39:20'),(2,1,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-13 06:17:48'),(3,1,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-13 07:32:39'),(4,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-13 20:32:34'),(5,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-13 22:10:13'),(6,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-14 06:01:03'),(7,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-14 10:19:49'),(8,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-15 00:26:53'),(9,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-15 06:59:56'),(10,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-15 12:21:37'),(11,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Safari/537.36','2017-12-16 00:35:09'),(12,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-16 10:33:12'),(13,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-16 19:27:54'),(14,1,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-16 20:19:38'),(15,1,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 03:40:04'),(16,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 03:40:18'),(17,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 07:16:27'),(18,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 09:25:08'),(19,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 12:09:30'),(20,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 12:09:47'),(21,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 20:05:11'),(22,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 22:22:43'),(23,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-17 22:55:23'),(24,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-18 22:59:37'),(25,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 06:13:04'),(26,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 06:22:55'),(27,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 06:25:14'),(28,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 07:41:14'),(29,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 15:46:59'),(30,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 21:02:29'),(31,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-19 23:45:39'),(32,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-20 00:52:39'),(33,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-20 21:25:26'),(34,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-20 21:38:31'),(35,4,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-20 22:00:01'),(36,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-21 04:31:37'),(37,5,'127.0.0.1','en-US,en;q=0.9','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.84 Safari/537.36','2017-12-21 04:31:44');
/*!40000 ALTER TABLE `signup_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_captcha_data`
--

DROP TABLE IF EXISTS `simple_captcha_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_captcha_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_key` (`key`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_captcha_data`
--

LOCK TABLES `simple_captcha_data` WRITE;
/*!40000 ALTER TABLE `simple_captcha_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `simple_captcha_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taggings`
--

DROP TABLE IF EXISTS `taggings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `taggings_idx` (`tag_id`,`taggable_id`,`taggable_type`,`context`,`tagger_id`,`tagger_type`) USING BTREE,
  KEY `index_taggings_on_taggable_id_and_taggable_type_and_context` (`taggable_id`,`taggable_type`,`context`),
  KEY `index_taggings_on_tag_id` (`tag_id`),
  KEY `index_taggings_on_taggable_id` (`taggable_id`),
  KEY `index_taggings_on_taggable_type` (`taggable_type`),
  KEY `index_taggings_on_tagger_id` (`tagger_id`),
  KEY `index_taggings_on_context` (`context`),
  KEY `index_taggings_on_tagger_id_and_tagger_type` (`tagger_id`,`tagger_type`),
  KEY `taggings_idy` (`taggable_id`,`taggable_type`,`tagger_id`,`context`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taggings`
--

LOCK TABLES `taggings` WRITE;
/*!40000 ALTER TABLE `taggings` DISABLE KEYS */;
INSERT INTO `taggings` VALUES (1,1,2,'Member',NULL,NULL,'tags','2017-12-13 04:36:10'),(2,2,2,'Member',NULL,NULL,'tags','2017-12-13 04:36:10'),(3,1,3,'Member',NULL,NULL,'tags','2017-12-13 04:36:10'),(4,2,3,'Member',NULL,NULL,'tags','2017-12-13 04:36:10');
/*!40000 ALTER TABLE `taggings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `taggings_count` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_tags_on_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'vip',2),(2,'hero',2);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `aasm_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expire_at` datetime DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tokens_on_type_and_token_and_expire_at_and_is_used` (`type`,`token`,`expire_at`,`is_used`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tokens`
--

LOCK TABLES `tokens` WRITE;
/*!40000 ALTER TABLE `tokens` DISABLE KEYS */;
INSERT INTO `tokens` VALUES (4,'782a36bf0a5171ea5197db0eb3a468f4','2017-12-16 20:00:08',4,1,'Token::Activation','2017-12-16 19:30:08','2017-12-16 19:31:58'),(5,'d0ea6bb7e7a69fa3cd108823d85441b9','2017-12-21 05:07:06',5,0,'Token::Activation','2017-12-21 04:37:06','2017-12-21 04:37:06');
/*!40000 ALTER TABLE `tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trades`
--

DROP TABLE IF EXISTS `trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(32,16) DEFAULT NULL,
  `volume` decimal(32,16) DEFAULT NULL,
  `ask_id` int(11) DEFAULT NULL,
  `bid_id` int(11) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ask_member_id` int(11) DEFAULT NULL,
  `bid_member_id` int(11) DEFAULT NULL,
  `funds` decimal(32,16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_trades_on_ask_id` (`ask_id`) USING BTREE,
  KEY `index_trades_on_ask_member_id` (`ask_member_id`) USING BTREE,
  KEY `index_trades_on_bid_id` (`bid_id`) USING BTREE,
  KEY `index_trades_on_bid_member_id` (`bid_member_id`) USING BTREE,
  KEY `index_trades_on_created_at` (`created_at`) USING BTREE,
  KEY `index_trades_on_currency` (`currency`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trades`
--

LOCK TABLES `trades` WRITE;
/*!40000 ALTER TABLE `trades` DISABLE KEYS */;
/*!40000 ALTER TABLE `trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `two_factors`
--

DROP TABLE IF EXISTS `two_factors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `two_factors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) DEFAULT NULL,
  `otp_secret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_verify_at` datetime DEFAULT NULL,
  `activated` tinyint(1) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refreshed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `two_factors`
--

LOCK TABLES `two_factors` WRITE;
/*!40000 ALTER TABLE `two_factors` DISABLE KEYS */;
INSERT INTO `two_factors` VALUES (1,1,'xfqtm5635gfipjso',NULL,NULL,'TwoFactor::App','2017-12-13 04:36:09'),(2,1,'540493',NULL,NULL,'TwoFactor::Sms','2017-12-16 21:18:37'),(3,2,'bnxkf3ofamtwxxtw',NULL,NULL,'TwoFactor::App','2017-12-13 04:36:10'),(4,2,'767427',NULL,NULL,'TwoFactor::Sms','2017-12-13 04:36:10'),(5,3,'ceyeikybqw65xoi6',NULL,NULL,'TwoFactor::App','2017-12-13 04:36:10'),(6,3,'505090',NULL,NULL,'TwoFactor::Sms','2017-12-13 04:36:10'),(7,4,'823034','2017-12-17 22:56:59',1,'TwoFactor::Sms','2017-12-17 22:56:59'),(8,4,'yyoemapxso2f36ej','2017-12-19 06:18:09',1,'TwoFactor::App','2017-12-13 20:32:34'),(9,5,'154660','2017-12-21 04:36:48',1,'TwoFactor::Sms','2017-12-21 04:36:48'),(10,5,'aq2o2krtywmwiwpl',NULL,NULL,'TwoFactor::App','2017-12-17 12:09:47');
/*!40000 ALTER TABLE `two_factors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_id` int(11) NOT NULL,
  `event` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whodunnit` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_item_type_and_item_id` (`item_type`,`item_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraws`
--

DROP TABLE IF EXISTS `withdraws`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `currency` int(11) DEFAULT NULL,
  `amount` decimal(32,16) DEFAULT NULL,
  `fee` decimal(32,16) DEFAULT NULL,
  `fund_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fund_extra` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `done_at` datetime DEFAULT NULL,
  `txid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aasm_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sum` decimal(32,16) NOT NULL DEFAULT '0.0000000000000000',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraws`
--

LOCK TABLES `withdraws` WRITE;
/*!40000 ALTER TABLE `withdraws` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraws` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-21  4:51:51
