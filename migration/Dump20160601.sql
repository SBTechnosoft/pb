-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: event_mgt
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.8-MariaDB

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
-- Table structure for table `cmp_info`
--

DROP TABLE IF EXISTS `cmp_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmp_name` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `purchase_from` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cmp_info`
--

LOCK TABLES `cmp_info` WRITE;
/*!40000 ALTER TABLE `cmp_info` DISABLE KEYS */;
INSERT INTO `cmp_info` VALUES (2,'Rana D C ','divyesh123','22 ram nivas soc., NAvsari bazzar Sagrampura','9724783505','2014','Excellent');
/*!40000 ALTER TABLE `cmp_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_mst`
--

DROP TABLE IF EXISTS `company_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_mst` (
  `cmp_id` int(11) NOT NULL AUTO_INCREMENT,
  `cmp_name` varchar(45) NOT NULL,
  `cmp_reg_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cmp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_mst`
--

LOCK TABLES `company_mst` WRITE;
/*!40000 ALTER TABLE `company_mst` DISABLE KEYS */;
INSERT INTO `company_mst` VALUES (1,'Rana D C','007'),(2,'Siliconbrain Technosoft','0010');
/*!40000 ALTER TABLE `company_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eq_accessories`
--

DROP TABLE IF EXISTS `eq_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eq_accessories` (
  `eq_id` int(11) NOT NULL,
  `as_id` int(11) NOT NULL AUTO_INCREMENT,
  `as_name` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`as_id`),
  KEY `FK_EQASS_EQID_idx` (`eq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eq_accessories`
--

LOCK TABLES `eq_accessories` WRITE;
/*!40000 ALTER TABLE `eq_accessories` DISABLE KEYS */;
INSERT INTO `eq_accessories` VALUES (101,2,'test2','test2'),(101,3,'raju1','raju1'),(118,6,'test','test');
/*!40000 ALTER TABLE `eq_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eq_category_mst`
--

DROP TABLE IF EXISTS `eq_category_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eq_category_mst` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(45) DEFAULT NULL,
  `description` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `cat_name_UNIQUE` (`cat_name`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eq_category_mst`
--

LOCK TABLES `eq_category_mst` WRITE;
/*!40000 ALTER TABLE `eq_category_mst` DISABLE KEYS */;
INSERT INTO `eq_category_mst` VALUES (118,'heloo','ITS TESTING ENTRY'),(119,'Computer Asseccories','Please insert the computer realated accessories....');
/*!40000 ALTER TABLE `eq_category_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eq_enquiry_mst`
--

DROP TABLE IF EXISTS `eq_enquiry_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eq_enquiry_mst` (
  `enq_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_name` varchar(45) DEFAULT NULL,
  `client_add` varchar(45) DEFAULT NULL,
  `client_email` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `date_of_enquiry` datetime DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `type_of_event` varchar(45) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `event_add` varchar(45) DEFAULT NULL,
  `remainder` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`enq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eq_enquiry_mst`
--

LOCK TABLES `eq_enquiry_mst` WRITE;
/*!40000 ALTER TABLE `eq_enquiry_mst` DISABLE KEYS */;
INSERT INTO `eq_enquiry_mst` VALUES (1,'test1','test1','div@gmail.com','123','0000-00-00 00:00:00','12','test1','0000-00-00 00:00:00','0000-00-00 00:00:00','test1','For Category'),(2,'test2','test2','test2@gmail.com','1234567890','0000-00-00 00:00:00','12','test2','0000-00-00 00:00:00','0000-00-00 00:00:00','test2','For Accessories'),(3,'test3','test3','test3@gmail.com','1231231231','0000-00-00 00:00:00','12','test3','0000-00-00 00:00:00','0000-00-00 00:00:00','test3','For Staff '),(4,'test4','','','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','For Category'),(5,'test5','test5','test5','1241241241','0000-00-00 00:00:00','12','test5','0000-00-00 00:00:00','0000-00-00 00:00:00','test5','For Staff '),(6,'test6','test6','test2@gmail.com','9724783505','0000-00-00 00:00:00','12','test6','0000-00-00 00:00:00','0000-00-00 00:00:00','test6','For Accessories'),(7,'mishu','C-gwfrhw','','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','For Category'),(8,'manisha','C-141,River Park Soc','manishap202@gmail.com','9727123567','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','For Category'),(9,'test5','','','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','For Category'),(10,'','','','','0000-00-00 00:00:00','','','0000-00-00 00:00:00','0000-00-00 00:00:00','','For Category'),(11,'SB','qqqqqq','ftdchgbj','567637378637','2016-04-04 17:55:58','','asdcfvbnm,./','2016-04-07 17:55:58','2016-04-08 17:55:58','dfgjhnkml,./xzcvbnzxcvb','For Staff '),(12,'testmishi','kjklj','ljkklj','jkljklj','2016-05-07 11:14:50','','time','2007-05-16 11:14:00','2007-05-16 11:14:00','sdfsfdsf','For Accessories');
/*!40000 ALTER TABLE `eq_enquiry_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment_mst`
--

DROP TABLE IF EXISTS `equipment_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipment_mst` (
  `eq_id` int(11) NOT NULL AUTO_INCREMENT,
  `eq_name` varchar(45) DEFAULT NULL,
  `serial_no` varchar(45) DEFAULT NULL,
  `model_no` varchar(45) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_from` varchar(45) DEFAULT NULL,
  `eq_photo` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`eq_id`),
  KEY `REF_CATID_idx` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment_mst`
--

LOCK TABLES `equipment_mst` WRITE;
/*!40000 ALTER TABLE `equipment_mst` DISABLE KEYS */;
INSERT INTO `equipment_mst` VALUES (1,'test','1','1',2,'0000-00-00 00:00:00','surat','1','1','2000'),(2,'Computer Accessories','COMP_123','COMP_123',3,'0000-00-00 00:00:00','Surat','Good','Good','3000'),(3,'Computer Accessories','COMP_123','COMP_123',3,'0000-00-00 00:00:00','Surat','Good','Good','2500'),(4,'Computer Accessories','COMP_123','COMP_123',3,'0000-00-00 00:00:00','Surat','Good','Good','5000'),(5,'Laptop Accessories','Lap123','Lap123',3,'0000-00-00 00:00:00','Surat','Good','Good','1500'),(6,'sb','SDE345RTY','G580',118,'2016-04-13 18:02:26','surat','good','good','2500'),(7,'KeyBoard','key123','key23',119,'2016-05-31 14:52:44','Surat','testing','testing','500'),(8,'TVS Keyboard','tvs123','tvs123',119,'2016-05-31 15:00:06','surat','just','just','700');
/*!40000 ALTER TABLE `equipment_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_client_invoice_dtl`
--

DROP TABLE IF EXISTS `event_client_invoice_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_client_invoice_dtl` (
  `invoice_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `inv_file_name` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `generated_by` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_client_invoice_dtl`
--

LOCK TABLES `event_client_invoice_dtl` WRITE;
/*!40000 ALTER TABLE `event_client_invoice_dtl` DISABLE KEYS */;
INSERT INTO `event_client_invoice_dtl` VALUES (3,95,'20160513-95_1.pdf','2016-05-20 14:51:55',NULL,'div231'),(4,90,'20160426-90_1.pdf','2016-05-20 17:01:41',NULL,'div231'),(5,91,'20160428-91_1.pdf','2016-05-20 17:20:18',NULL,'div231'),(6,100,'20160521-100_1.pdf','2016-05-21 17:45:20',NULL,'10'),(7,105,'20160524-105_1.pdf','2016-05-27 16:57:45',NULL,'10'),(8,106,'20160528-106_1.pdf','2016-05-28 18:30:40',NULL,'10'),(9,106,'20160528-106_2.pdf','2016-05-28 18:52:39',NULL,'10'),(10,106,'20160528-106_4.pdf','2016-05-28 18:52:53',NULL,'10'),(11,106,'20160528-106_8.pdf','2016-05-28 18:53:09',NULL,'10'),(12,106,'20160528-106_9.pdf','2016-05-28 18:53:45',NULL,'10'),(13,106,'20160528-106_10.pdf','2016-05-28 18:53:57',NULL,'10'),(14,106,'20160528-106_2.pdf','2016-05-28 18:54:07',NULL,'10');
/*!40000 ALTER TABLE `event_client_invoice_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_client_payment_trn`
--

DROP TABLE IF EXISTS `event_client_payment_trn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_client_payment_trn` (
  `cl_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `payment_date` date DEFAULT NULL,
  `client_paid_amt` varchar(45) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `cheque_no` varchar(45) DEFAULT NULL,
  `bank_name` varchar(45) DEFAULT NULL,
  `trn_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cl_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_client_payment_trn`
--

LOCK TABLES `event_client_payment_trn` WRITE;
/*!40000 ALTER TABLE `event_client_payment_trn` DISABLE KEYS */;
INSERT INTO `event_client_payment_trn` VALUES (1,58,NULL,NULL,NULL,NULL,NULL,NULL),(2,75,NULL,NULL,NULL,NULL,NULL,NULL),(3,76,'2016-04-19',NULL,'cheque','baroda','1111','Payment'),(4,77,'2016-04-19',NULL,'cash','','','Payment'),(5,78,'2016-04-19',NULL,'cheque','baroda','555555','Payment'),(6,79,'2016-04-19',NULL,'cheque','baroda','77777','Payment'),(7,80,'2016-04-19',NULL,'cash','','','Payment'),(8,81,'2016-04-19',NULL,'cash','','','Payment'),(9,84,'2016-04-19',NULL,'cheque','baroda','15454','Payment'),(10,85,'2016-04-19','15000','cash','null','null','Payment'),(11,87,'2016-04-19','2000','cheque','BOB','154544','Payment'),(12,87,'2016-04-20','5000','cheque','Bank Of baroda','124565','Payment'),(13,87,'2016-04-21','3000','cheque','BOB','5353534','Payment'),(14,87,'2016-04-21','1000','cheque','BOB','1111222','payment'),(15,87,'2016-04-21','1000','cash','','','Payment'),(16,87,'2016-04-21','1500','cheque','SBI','4545457','Payement'),(18,87,'2016-04-21','500','cheque','BOB','1245368','Payment'),(19,87,'2016-04-21','1000','cash','','','Payment'),(20,87,'2016-04-21','1000','cheque','PNB','4445559','Payment'),(21,87,'2016-04-21','500','cash','','','Payment'),(22,87,'2016-04-21','500','cash','','','Payment'),(23,87,'2016-04-21','1000','cheque','PNB','4544454','Payment'),(24,87,'2016-04-21','1000','cheque','BOB','1234567','Payment'),(25,87,'2016-04-21','1000','cash','','','Payment'),(26,87,'2016-04-22','2000','cheque','SBI','4449997','Payment'),(27,87,'2016-04-22','3000','cash','','','Payment'),(28,86,'2016-04-21','5000','cash','','','Payment'),(29,86,'2016-04-22','5000','cheque','Bank Of Baroda','1111222','Payment'),(30,86,'2016-04-22','2000','cash','','','Payment'),(31,86,'2016-04-22','3000','cheque','BankOf Baroda','125456','Payment'),(32,86,'2016-04-21','10000','cash','','','Payment'),(33,89,'2016-04-23','5000','cash','','','Payment'),(34,90,'2016-04-26','25000','cheque','Bank Of Baroda','0000007','Payment'),(35,91,'2016-04-21','50000','cash','','','Payment'),(36,90,'2016-04-21','5000','cheque','Bank Of Baroda','2548912','Payment'),(37,92,'2016-04-29','230000','cheque','ICICI','45655','Payment'),(38,93,'2016-04-29','609900','cheque','BOB','89799','Payment'),(39,93,'2016-04-30','5000','cash','','','Payment'),(40,93,'2016-04-30','1100','cash','','','Payment'),(41,93,'2016-04-30','1000','cash','','','Payment'),(42,93,'2016-04-30','2000','cash','','','Payment'),(43,93,'2016-04-30','2000','cash','','','Payment'),(44,93,'2016-04-30','4000','cash','','','Payment'),(45,93,'2016-04-30','2000','cash','','','Payment'),(46,93,'2016-04-30','3000','cash','','','Payment'),(47,94,'2016-05-04','5000','cash','','','Payment'),(48,96,'2016-05-13','20000','cash','','','Payment'),(49,97,'2016-05-13','25000','cheque','BOB','89574','Payment'),(50,99,'2016-05-21','2000','cash','','','Payment'),(51,100,'2016-05-21','5000','cash','','','Payment'),(52,101,'2016-05-21','5000','cash','','','Payment'),(53,102,'2016-05-21','4000','cash','','','Payment'),(54,103,'2016-05-21','1000','cash','','','Payment'),(55,104,'2016-05-23','5000','cash','','','Payment'),(56,105,'2016-05-23','5000','cash','','','Payment'),(57,106,'2016-05-28','5000','cheque','Bank Of baroda','123456','Payment'),(58,107,'2016-05-30','4000','cash','','','Payment'),(59,108,'2016-05-30','4000','cash','','','Payment'),(60,109,'2016-05-30','5000','cash','','','Payment'),(61,110,'2016-05-30','5000','cash','','','Payment'),(62,111,'2016-05-30','3000','cash','','','Payment');
/*!40000 ALTER TABLE `event_client_payment_trn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_equipment_dtl`
--

DROP TABLE IF EXISTS `event_equipment_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_equipment_dtl` (
  `event_equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_places_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `equipment_id` int(11) NOT NULL,
  PRIMARY KEY (`event_equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_equipment_dtl`
--

LOCK TABLES `event_equipment_dtl` WRITE;
/*!40000 ALTER TABLE `event_equipment_dtl` DISABLE KEYS */;
INSERT INTO `event_equipment_dtl` VALUES (7,13,45,1),(8,13,45,2),(9,13,45,5),(10,14,46,1),(11,14,46,2),(12,14,46,5),(13,15,47,1),(14,15,47,3),(15,15,47,4),(16,16,48,2),(17,16,48,3),(18,17,49,2),(19,17,49,3),(20,18,50,4),(21,18,50,5),(22,19,51,1),(23,19,51,2),(24,21,53,1),(25,22,54,1),(26,23,55,1),(27,24,56,4),(28,25,57,1),(29,26,58,1),(30,26,58,2),(31,26,58,3),(32,26,58,5),(33,34,73,1),(34,34,73,2),(35,34,73,5),(36,35,73,1),(37,35,73,2),(38,35,73,5),(39,38,75,1),(40,38,75,2),(41,38,75,2),(42,38,75,5),(43,39,75,1),(44,39,75,2),(45,39,75,2),(46,39,75,5),(47,40,75,1),(48,40,75,2),(49,40,75,2),(50,40,75,5),(51,41,76,1),(52,41,76,2),(53,42,76,1),(54,42,76,2),(55,43,77,1),(56,44,78,1),(57,45,79,2),(58,47,81,1),(59,47,81,2),(60,51,85,1),(61,51,85,2),(62,52,86,1),(63,52,86,2),(64,53,87,1),(65,53,87,2),(66,55,89,2),(67,55,89,5),(68,56,89,2),(69,56,89,5),(70,57,90,1),(71,57,90,2),(72,58,90,1),(73,58,90,2),(74,59,91,1),(75,59,91,2),(76,60,92,2),(77,60,92,5),(78,61,93,3),(79,61,93,5),(80,62,94,1),(81,62,94,6),(82,68,94,1),(83,68,94,6),(84,69,95,1),(85,70,96,2),(86,70,96,5),(87,71,97,2),(88,71,97,3),(89,72,99,2),(90,73,100,2),(91,78,105,1),(92,79,106,1),(93,84,111,2),(94,84,111,1),(95,85,112,1),(96,85,112,2),(97,85,112,5);
/*!40000 ALTER TABLE `event_equipment_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_mst`
--

DROP TABLE IF EXISTS `event_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_mst` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(45) DEFAULT NULL,
  `event_ds` varchar(100) DEFAULT NULL,
  `client_name` varchar(45) DEFAULT NULL,
  `client_cmp` varchar(45) DEFAULT NULL,
  `client_email` varchar(45) DEFAULT NULL,
  `client_work_mob` varchar(15) DEFAULT NULL,
  `client_home_mob` varchar(15) DEFAULT NULL,
  `client_mob` varchar(15) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `client_charges` varchar(15) DEFAULT NULL,
  `client_paid_amt` varchar(15) DEFAULT NULL,
  `vendor_charges` varchar(15) DEFAULT NULL,
  `vd_paid_amt` varchar(15) DEFAULT NULL,
  `invoice` varchar(45) DEFAULT NULL,
  `client_discount_amt` varchar(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cmp_id` int(11) DEFAULT NULL,
  `taxmode` varchar(5) DEFAULT NULL,
  `inv_file_name` varchar(45) DEFAULT NULL,
  `info_file_name` varchar(45) DEFAULT NULL,
  `bill_no` varchar(25) DEFAULT NULL,
  `fp_no` varchar(25) DEFAULT NULL,
  `service_tax_rate` varchar(5) DEFAULT NULL,
  `service_tax_amt` varchar(15) DEFAULT NULL,
  `total_amt` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_mst`
--

LOCK TABLES `event_mst` WRITE;
/*!40000 ALTER TABLE `event_mst` DISABLE KEYS */;
INSERT INTO `event_mst` VALUES (77,'raj','jhjh','jh','hjh','hjh','jh','hjh','jhj','new','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'20000','1500',NULL,NULL,NULL,NULL,'2016-04-18 18:30:00','2016-05-17 13:49:06','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(78,'testing date','kjkj','jjkj','kjkj','kjk','jkj','kjk','jkjk','new','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'20000','5000',NULL,NULL,NULL,NULL,'2016-04-19 12:26:25','2016-05-17 13:50:27','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(79,'date testing','jhj','jh','kjkj','kjk','jkj','kj','j','new','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'25000','2000',NULL,NULL,NULL,NULL,'2016-04-19 12:30:34','2016-05-20 13:35:15','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(80,'date testing','kjkl','jkkj','kjk','jklj','kj','kjkl','j','new','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'15000','1000',NULL,NULL,NULL,NULL,'2016-04-19 12:50:35','2016-05-20 13:35:20','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(81,'date testing','jiuj','jkj','kjkj','jk','jkj','kj','kjk','upcoming','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,'1500','100',NULL,NULL,NULL,NULL,'2016-04-19 12:53:09','2016-05-20 13:35:28','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(84,'testing date','jhjkh','jh','jhj','hj','hjh','jh','h','completed','2016-04-21 17:07:37','2016-04-29 17:07:37',NULL,'15000','5000',NULL,NULL,NULL,NULL,'2016-04-19 13:08:09','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(85,'testing status','jkkj','kjk','jj','kjk','jkj','kj','kj','upcoming','2016-04-21 17:31:43','2016-04-22 17:31:43','Paid','15000','15000',NULL,NULL,NULL,NULL,'2016-04-19 13:32:25','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(86,'test payment stat','hekkj','kjj','kjkj','jk','jk','jk','jk','completed','2016-05-05 17:35:10','2016-05-06 17:35:10','paid','25000','25000',NULL,NULL,NULL,NULL,'2016-04-19 13:37:19','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(87,'test_paid_amt','jkhh','hjh','h','hj','hjh','jh','jh','new','2016-04-21 16:21:59','2016-04-22 16:21:59','paid','25000','25000',NULL,NULL,NULL,NULL,'2016-04-20 12:23:03','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(89,'Computer Row material','Computer Accessories','Manisha patel','mishu computers','manishap202@gmail.com','9988998899','9999999999','9974624995','new','2016-04-23 11:56:21','2016-04-30 11:56:21','Unpaid','45000','5000',NULL,NULL,NULL,NULL,'2016-04-23 08:00:10','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(90,'Ring Ceremoney','Enggagment','Raju bhai','RK industry','rkindus@gmail.com','9724783505','9724783505','9724783505','new','2016-04-26 10:30:45','2016-04-27 10:30:45','Unpaid','100000','30000',NULL,NULL,NULL,NULL,'2016-04-26 06:33:28','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'20160426-90_1.pdf',NULL,NULL,NULL,NULL,NULL,NULL),(91,'teting','hello Divyesh','Hi i m Divyesh','R D costruct','divyeshdolly1990@gmail.com','9724783505','9089776655','9727123567','new','2016-04-28 11:07:15','2016-04-29 11:07:15','paid','50000','50000',NULL,NULL,NULL,NULL,'2016-04-28 07:08:50','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,'20160428-91_1.pdf',NULL,NULL,NULL,NULL,NULL,NULL),(92,'Presentation','Project presentation','Jay','Securemetasys','jay00@gmail.com','90909977','8989778899','8460224419','new','2016-04-01 17:53:01','2016-04-12 18:15:59','Unpaid','257655','230000',NULL,NULL,NULL,NULL,'2016-04-29 14:20:31','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(93,'marriage','divyesh marriage','Divyesh','DR Company','divyesh@gmail.com','7898776655','908877656','6755667788','new','2016-04-30 18:29:34','2016-05-05 18:29:34','Unpaid','1000000','630000',NULL,NULL,NULL,NULL,'2016-04-29 14:32:12','0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94,'as Enquiry','test enquiry','Rana Divyesh','Rana Dc Aquaria','divyeshdolly1990@gmail.com','9724783505','','','new','2016-05-13 09:49:33','2016-05-13 09:49:34','Unpaid','25000','',NULL,NULL,NULL,NULL,'2016-05-13 04:22:44','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(95,'testEnq','testing the enquiry','Rana Dc','Divyesh','Div@gmail.com','9724783505','','','new','2016-05-13 11:43:05','2016-05-14 11:43:05','Unpaid','35000','',NULL,NULL,NULL,NULL,'2016-05-13 06:15:14','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No','20160513-95_1.pdf',NULL,NULL,NULL,NULL,NULL,NULL),(96,'Manisha','Engagement','Manisha patel','M & J Company','manishap202@gmail.com','9727123567','9825478954','9589657444','enquiry','2016-05-10 12:13:38','2016-05-11 12:13:38','Unpaid','50000','20000',NULL,NULL,NULL,NULL,'2016-05-13 06:45:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(97,'Mishu','marriage','Mishu','M & J','mishu@gmail.com','9727123567','9825745896','9874563215','enquiry','2016-05-02 14:28:22','2016-05-05 14:28:22','Unpaid','52000','25000',NULL,NULL,NULL,NULL,'2016-05-13 09:00:52','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(99,'Testing No','Testing','divyesh','rdc','divyesh@gmail.com','','','9724783505','new','2016-05-21 10:49:15','2016-05-21 10:49:15','Unpaid','12000','2000',NULL,NULL,NULL,NULL,'2016-05-21 05:22:56','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes',NULL,NULL,'abc123','xyz123',NULL,NULL,NULL),(100,'marriage','Girl marriage','Mishu','M & J ','manishap202@gmail.com','9824578965','9727123567','9727123567','new','2016-05-21 17:42:47','2016-05-24 17:42:47','Unpaid','14500','5000',NULL,NULL,NULL,NULL,'2016-05-21 12:14:40','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes','20160521-100_1.pdf',NULL,'abc1234','xyz1234',NULL,'1812.5','16312'),(101,'test tax rate','','','','','9988998899','','','new','0000-00-00 00:00:00','0000-00-00 00:00:00','Unpaid','25000','5000',NULL,NULL,NULL,NULL,'2016-05-21 14:41:30','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes',NULL,NULL,'','','12.5','3125','28125'),(102,'taxtchek','','','','','9988998899','','','new','0000-00-00 00:00:00','0000-00-00 00:00:00','Unpaid','23000','4000',NULL,NULL,NULL,NULL,'2016-05-21 14:53:11','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes',NULL,NULL,'','','','2875','25875'),(103,'test','','','','','9988998899','','','new','0000-00-00 00:00:00','0000-00-00 00:00:00','Unpaid','2000','1000',NULL,NULL,NULL,NULL,'2016-05-21 14:54:31','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes',NULL,NULL,'','','12.5','250','2250'),(104,'Divyesh test','hello','surat','','','','','9724783505','new','2016-05-23 16:30:07','2016-05-23 16:30:07','Unpaid','25000','5000',NULL,NULL,NULL,NULL,'2016-05-23 11:17:21','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes',NULL,NULL,'','','12.5','3125','28125'),(105,'test url','','divyesh','','','','','9974624995','new','2016-05-24 17:07:44','2016-05-24 17:07:44','Unpaid','25500','5000',NULL,NULL,NULL,NULL,'2016-05-23 11:38:47','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes','20160524-105_1.pdf','20160524_105.pdf','','','12.5','3187.5','28687'),(106,'validation test','validation','Divyesh','rd and c','div@gmail.com','1234567890','','','new','2016-05-28 09:43:08','2016-05-28 09:43:08','Unpaid','24000','5000',NULL,NULL,NULL,NULL,'2016-05-28 04:16:17','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'Yes','20160528-106_2.pdf',NULL,'abc123','xyz123','12.5','3000','27000'),(107,'Testing','','Divyesh','Divyesh','div@gmail.com','9724783505','','','new','2016-05-30 15:34:43','2016-05-30 15:34:43','Unpaid','25000','4000',NULL,NULL,NULL,NULL,'2016-05-30 10:08:05','0000-00-00 00:00:00','0000-00-00 00:00:00',2,'Yes',NULL,NULL,'Gjg123','Avf123','12.5','3125','28125'),(108,'test dynamic','hj','divyesh','divyesh','divyesh@gmail.com','9988998899','','','new','2016-05-30 15:45:57','2016-05-30 15:45:57','Unpaid','25000','4000',NULL,NULL,NULL,NULL,'2016-05-30 10:18:35','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,'yy123','aa123','12.5','0','25000'),(109,'Divyesh','jkj','divyesh','divyesh','divyesh@gmail.com','9724783505','','','new','2016-05-30 15:49:50','2016-05-30 15:49:50','Unpaid','25000','5000',NULL,NULL,NULL,NULL,'2016-05-30 10:25:49','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,'hjkj767','x56','12.5','0','25000'),(110,'divyesh','j','raj','raj','divyesh@gmail.com','7898776655','','','new','2016-05-30 16:03:00','2016-05-30 16:03:00','Unpaid','25000','5000',NULL,NULL,NULL,NULL,'2016-05-30 10:34:31','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,'jhkj98','hk879987','12.5','0','25000'),(111,'trig test','tst','divyesh','div','divyesh@gmail.com','9724783505','','','new','2016-05-30 20:37:07','2016-05-30 20:37:07','Unpaid','20000','3000',NULL,NULL,NULL,NULL,'2016-05-30 15:09:18','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,'jh34','h23','12.5','0','20000'),(112,'Test trgger','trigger','Rana divyesh','Divyesh& sons','divyesh@gmail.com','9724783505','','','new','2016-05-30 20:50:49','2016-05-30 20:50:49','Unpaid','9500','',NULL,NULL,NULL,NULL,'2016-05-30 15:23:26','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'No',NULL,NULL,'FFF123','AA123','12.5','0','9500');
/*!40000 ALTER TABLE `event_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_places_dtl`
--

DROP TABLE IF EXISTS `event_places_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_places_dtl` (
  `event_places_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `event_vennue` varchar(45) DEFAULT NULL,
  `event_hall` varchar(25) DEFAULT NULL,
  `event_ld_mark` varchar(45) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `event_to_date` datetime DEFAULT NULL,
  PRIMARY KEY (`event_places_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_places_dtl`
--

LOCK TABLES `event_places_dtl` WRITE;
/*!40000 ALTER TABLE `event_places_dtl` DISABLE KEYS */;
INSERT INTO `event_places_dtl` VALUES (13,45,'Surat',NULL,'sagrampura','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,46,'Surat',NULL,'sagrampura','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,47,'ugat canal road',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,48,'lp road',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,49,'sachin',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,50,'sachin',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,51,'singanpore',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,52,'singanpore',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,53,'aaaaaaaaaaaaaa',NULL,'deeeeedd','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,54,'america',NULL,'usa','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,55,'cng',NULL,'parvat patiya','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,56,'ved',NULL,'katargam','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,57,'katargam',NULL,'ved','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,58,'surat',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,67,'',NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,70,'Array',NULL,'Array','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,70,'Array',NULL,'Array','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,71,'srsd',NULL,'Array','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,71,'dsd',NULL,'Array','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,72,'test2',NULL,'test2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,72,'test3',NULL,'test3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,73,'test3',NULL,'test3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,73,'test4',NULL,'test4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,74,'',NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,74,'',NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,75,'fish1',NULL,'fish1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,75,'fish2',NULL,'fish2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,75,'fish3',NULL,'fish3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,76,'sagrampura',NULL,'Surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,76,'Adajan',NULL,'Surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,77,'sagrampura',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,78,'sagrampura',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,79,'sagrampura',NULL,'lkjkl','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,80,'sagrampura',NULL,'Surat','2016-04-20 00:00:00','2016-04-22 00:00:00'),(47,81,'sagrampura',NULL,'surat','2016-04-21 00:00:00','2016-04-22 00:00:00'),(48,82,'',NULL,'','2016-04-22 00:00:00','0000-00-00 00:00:00'),(49,83,'',NULL,'','2016-04-14 00:00:00','2016-04-22 00:00:00'),(50,84,'sagrampura',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,85,'sagrampura',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,86,'baroda',NULL,'Sangam Char Rasta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,87,'Baroda',NULL,'Sangam char rasta','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,88,'',NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,89,'Nanpura',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,89,'sagrampura',NULL,'Surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,90,'Adajan',NULL,'Surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,90,'Sangam Char rasta',NULL,'Baroda','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,91,'sagrampura',NULL,'Surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,92,'Jahangirpura',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,93,'Vesu',NULL,'Surat','2016-04-29 18:29:34','2016-05-05 18:29:34'),(68,94,'Ramnivas',NULL,'Sagrampura','2016-05-14 09:49:34','2016-05-14 09:49:34'),(69,95,'Sagarampurat',NULL,'surat','2016-05-19 11:43:05','2016-05-22 11:43:05'),(70,96,'Surat',NULL,'Singanpore','2016-05-03 12:13:38','2016-05-04 12:13:38'),(71,97,'Bardoli',NULL,'PT Hall','2016-05-11 14:28:22','2016-05-14 14:28:22'),(72,99,'Sagrampura',NULL,'Surat','2016-05-21 10:49:15','2016-05-21 10:49:15'),(73,100,'Surat',NULL,'Surat','2016-05-21 17:42:47','2016-05-24 17:42:47'),(74,101,'surat',NULL,'surat','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,102,'surat',NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,103,'surat',NULL,'','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,104,'sagrampura','comunity','','2016-05-23 16:30:07','2016-05-24 16:30:07'),(78,105,'surat','surat','surat','2016-05-24 17:07:44','2016-05-24 17:07:44'),(79,106,'Sagrampura nr Alishan Complex','Comunity hall','Surat','2016-05-28 09:43:08','2016-05-28 09:43:08'),(80,107,'test new place','comunity','surat','2016-05-30 15:34:43','2016-05-30 15:34:43'),(81,108,'sagrampura','community','surat','2016-05-30 15:45:58','2016-05-30 15:45:58'),(82,109,'sagrampura','surat','surat','2016-05-30 15:49:50','2016-05-30 15:49:50'),(83,110,'surat','surat','surat','2016-05-30 16:03:00','2016-05-30 16:03:00'),(84,111,'Sagrampura','surat','surat','2016-05-30 20:37:07','2016-05-30 20:37:07'),(85,112,'Sagrampura','Surat','Surat','2016-05-30 20:50:49','2016-05-30 20:50:49');
/*!40000 ALTER TABLE `event_places_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_staff_dtl`
--

DROP TABLE IF EXISTS `event_staff_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_staff_dtl` (
  `event_staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_places_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_staff_dtl`
--

LOCK TABLES `event_staff_dtl` WRITE;
/*!40000 ALTER TABLE `event_staff_dtl` DISABLE KEYS */;
INSERT INTO `event_staff_dtl` VALUES (7,13,45,1),(8,13,45,3),(9,13,45,5),(10,14,46,1),(11,14,46,3),(12,14,46,5),(13,14,46,6),(14,15,47,1),(15,15,47,3),(16,15,47,5),(17,16,48,2),(18,16,48,3),(19,17,49,5),(20,17,49,6),(21,18,50,4),(22,18,50,5),(23,19,51,5),(24,19,51,6),(25,21,53,2),(26,22,54,5),(27,22,54,6),(28,23,55,2),(29,24,56,5),(30,25,57,5),(31,26,58,2),(32,26,58,3),(33,26,58,5),(34,26,58,6),(35,34,73,1),(36,34,73,2),(37,34,73,6),(38,35,73,1),(39,35,73,2),(40,35,73,6),(41,38,75,1),(42,38,75,2),(43,38,75,3),(44,38,75,6),(45,39,75,1),(46,39,75,2),(47,39,75,3),(48,39,75,6),(49,40,75,1),(50,40,75,2),(51,40,75,3),(52,40,75,6),(53,41,76,1),(54,42,76,1),(55,43,77,1),(56,44,78,1),(57,45,79,2),(58,47,81,2),(59,51,85,1),(60,51,85,2),(61,52,86,3),(62,52,86,4),(63,53,87,1),(64,55,89,5),(65,55,89,6),(66,56,89,5),(67,56,89,6),(68,57,90,1),(69,57,90,2),(70,58,90,1),(71,58,90,2),(72,59,91,3),(73,60,92,4),(74,60,92,5),(75,61,93,5),(76,61,93,6),(77,62,94,5),(78,62,94,6),(79,68,94,12),(80,69,95,1),(81,69,95,2),(82,70,96,8),(83,70,96,12),(84,71,97,2),(85,71,97,3),(86,72,99,14),(87,73,100,14),(88,78,105,14),(89,79,106,16),(90,85,112,14),(91,85,112,0),(92,85,112,0);
/*!40000 ALTER TABLE `event_staff_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_vend_payment_trn`
--

DROP TABLE IF EXISTS `event_vend_payment_trn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_vend_payment_trn` (
  `vd_payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_vendor_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_mode` varchar(45) DEFAULT NULL,
  `vend_bank_name` varchar(45) DEFAULT NULL,
  `vend_cheque_no` varchar(45) DEFAULT NULL,
  `paid_amt` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vd_payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_vend_payment_trn`
--

LOCK TABLES `event_vend_payment_trn` WRITE;
/*!40000 ALTER TABLE `event_vend_payment_trn` DISABLE KEYS */;
INSERT INTO `event_vend_payment_trn` VALUES (1,7,91,'0000-00-00','cash','','','1000'),(2,7,91,'2016-04-28','cash','','','1000'),(3,8,91,'2016-04-28','cheque','BOB','1245678','1000'),(4,8,91,'2016-04-28','cheque','BOB','0000111','500'),(5,7,91,'2016-04-29','cheque','SBI','124567','2000'),(6,9,91,'2016-04-28','cash','','','1000'),(7,7,91,'2016-04-28','cash','','','1500'),(8,7,91,'2016-04-28','cheque','BOB','1245125','1000'),(10,7,91,'2016-04-29','cash','','','1000'),(11,7,91,'2016-04-28','cash','','','100'),(12,7,91,'2016-04-29','cash','','','500'),(13,7,91,'0000-00-00','cash','','','1000'),(14,7,91,'0000-00-00','cash','','','900'),(15,7,91,'0000-00-00','cash','','','1000'),(16,7,91,'0000-00-00','cash','','','1000'),(18,7,91,'0000-00-00','cash','','','1000'),(19,7,91,'0000-00-00','cash','','','1000'),(20,7,91,'0000-00-00','cash','','','1000'),(21,9,91,'2016-04-29','cash','','','1000'),(22,8,91,'2016-04-29','cash','','','1500'),(23,22,90,'2016-04-30','cash','','','1000'),(24,27,93,'2016-04-30','cash','','','1000'),(25,4,86,'2016-05-02','cash','','','1000'),(26,4,86,'2016-05-04','cheque','BOB','89567','500');
/*!40000 ALTER TABLE `event_vend_payment_trn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_vendor_dtl`
--

DROP TABLE IF EXISTS `event_vendor_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_vendor_dtl` (
  `event_vendor_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) NOT NULL,
  `event_places_id` int(11) NOT NULL,
  `vend_id` int(11) NOT NULL,
  `vendor_charges` varchar(45) DEFAULT NULL,
  `vendor_paid_amt` varchar(45) DEFAULT NULL,
  `vendor_paid_status` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`event_vendor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_vendor_dtl`
--

LOCK TABLES `event_vendor_dtl` WRITE;
/*!40000 ALTER TABLE `event_vendor_dtl` DISABLE KEYS */;
INSERT INTO `event_vendor_dtl` VALUES (1,86,52,5,'25000','0','unpaid'),(2,85,51,1,'20000','0','unpaid'),(3,86,52,1,'2000','0','unpaid'),(4,86,52,3,'1500','1500','Paid'),(5,85,51,5,'5000','0','unpaid'),(6,84,50,5,'15000','0','unpaid'),(7,91,59,5,'15000','15000','paid'),(8,91,59,4,'5000','3000','unpaid'),(9,91,59,1,'4000','2000','unpaid'),(22,90,57,5,'5000','1000','unpaid'),(23,90,57,4,'2500','0',NULL),(24,90,58,1,'2500','0',NULL),(25,90,58,2,'5001','0',NULL),(26,90,57,3,'2100','0',NULL),(27,93,61,5,'5000','1000','unpaid'),(28,93,61,1,'2000','0',NULL),(29,95,69,5,'5000',NULL,NULL),(30,110,83,5,'5000',NULL,NULL),(31,112,85,0,'',NULL,NULL),(32,112,85,5,'1000',NULL,NULL),(33,112,85,4,'1500',NULL,NULL);
/*!40000 ALTER TABLE `event_vendor_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_event_places_dtl`
--

DROP TABLE IF EXISTS `new_event_places_dtl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_event_places_dtl` (
  `places_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `event_places_id` int(11) DEFAULT NULL,
  `eq_id` int(11) DEFAULT NULL,
  `rate` varchar(15) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount` varchar(15) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `vend_id` int(11) DEFAULT NULL,
  `vend_price` varchar(15) DEFAULT NULL,
  `remark` varchar(245) DEFAULT NULL,
  PRIMARY KEY (`places_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_event_places_dtl`
--

LOCK TABLES `new_event_places_dtl` WRITE;
/*!40000 ALTER TABLE `new_event_places_dtl` DISABLE KEYS */;
INSERT INTO `new_event_places_dtl` VALUES (1,110,83,1,'2000',1,'2000',14,0,'',''),(2,110,83,1,'2000',2,'4000',0,5,'3000','y'),(3,111,84,2,'3000',2,'6000',14,5,'2000','val'),(4,111,84,1,'2000',3,'6000',16,1,'2000','ds'),(5,112,85,1,'2000',1,'2000',14,0,'','staff'),(6,112,85,2,'3000',1,'3000',0,5,'1000',''),(7,112,85,5,'1500',3,'4500',0,4,'1500','');
/*!40000 ALTER TABLE `new_event_places_dtl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_tax` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting`
--

LOCK TABLES `setting` WRITE;
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` VALUES (1,'12.5');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_mst`
--

DROP TABLE IF EXISTS `staff_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_mst` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_id` varchar(25) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `relative1` varchar(15) DEFAULT NULL,
  `relative2` varchar(15) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `add1` varchar(45) DEFAULT NULL,
  `add2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `staff_type` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_mst`
--

LOCK TABLES `staff_mst` WRITE;
/*!40000 ALTER TABLE `staff_mst` DISABLE KEYS */;
INSERT INTO `staff_mst` VALUES (1,'1111','test1','test1','test1','9724783505',NULL,NULL,NULL,'test1','test1','surat','Category 1','395002',NULL),(2,'101','test2','test2','test2','1112223334',NULL,NULL,NULL,'test2','test2','surat','Category 1','395022',NULL),(3,'102','test3','','','',NULL,NULL,NULL,'','','','Category 1','',NULL),(4,'103','test4','','','',NULL,NULL,NULL,'','','','Category 1','',NULL),(5,'10','manisha','patel','manishap202@gmail.com','9727123567',NULL,NULL,NULL,'','','','Category 1','',NULL),(6,'1011','vishal','tania','vishal@gmail.com','8899662255',NULL,NULL,'vishu123','sagrampura','surat','surat','Category 1','395002',NULL),(7,'1','Divyesh','Rana','divyeshdolly1990@gmail.com','9724783505',NULL,NULL,'divyesh123','Sagrampura','','surat','Category 1','395002',NULL),(8,'div123','Divyesh','Rana','abc@gmail.com','',NULL,NULL,'','','','','Category 1','',NULL),(9,'Div111','Divyesh','Gajjar','div@123.com','',NULL,NULL,'','','','','Category 1','asad',NULL),(10,'Dinjk67','kjh','jhjh','Siz@1w.com','',NULL,NULL,'','','','','','xc',NULL),(11,'raju','Raju','Rana','raju@gmail.com','',NULL,NULL,'','','','','Category 1','123456',NULL),(12,'emp123','jignasha','patel','jig@gmail.com','',NULL,NULL,'cmFqYQ==','','','','Category 1','',NULL),(13,'div231','Divyesh','Rana','','9724783505',NULL,NULL,'ZGl2eWVzaA==','','','','Category 1','',NULL),(14,'div123','divyesh','Rana','div123@gmail.com','9724783505','','','bW9jdXByZXQ=','Sagrampura','','Surat','','395002','staff'),(15,'prabandhaksuper','admin','admin','virat@siliconbrain.co.in','7575069056',NULL,NULL,'bW9jdXByZXRAMTIzIQ==','Adajan',NULL,'Surat',NULL,NULL,'superadmin'),(16,'ash123','ashish','jariwala','abc@gmail.com','9016664332','9724783505','','YXNoaXNoMTIz','surat','surat','surat','Gujarat','395004','staff'),(17,'client123','Red','Carpet','abc@gmail.com','1234567890',NULL,NULL,'Y2xpZW50MzIx','',NULL,'Surat','Gujarat',NULL,'admin');
/*!40000 ALTER TABLE `staff_mst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_permission`
--

DROP TABLE IF EXISTS `staff_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_permission` (
  `user_id` varchar(15) NOT NULL,
  `permission` varchar(145) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_permission`
--

LOCK TABLES `staff_permission` WRITE;
/*!40000 ALTER TABLE `staff_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_mst`
--

DROP TABLE IF EXISTS `vendor_mst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_mst` (
  `vend_id` int(11) NOT NULL AUTO_INCREMENT,
  `vendor_name` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `vendor_cmp` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`vend_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_mst`
--

LOCK TABLES `vendor_mst` WRITE;
/*!40000 ALTER TABLE `vendor_mst` DISABLE KEYS */;
INSERT INTO `vendor_mst` VALUES (1,'test1',0,NULL),(2,'test2',1,NULL),(3,'test3',101,NULL),(4,'wew',2,NULL),(5,'Rana Divyesh',1,'RD construct'),(6,'rajesh',1,'r&d cmp'),(7,'Raju',1,''),(8,'Ankit',1,''),(9,'Raman',1,''),(10,'Ankur',2,''),(11,'Rakesh',1,''),(12,'Amisha',1,''),(13,'Asha',4,'');
/*!40000 ALTER TABLE `vendor_mst` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-01 18:56:46
