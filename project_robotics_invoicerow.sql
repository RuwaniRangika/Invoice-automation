CREATE DATABASE  IF NOT EXISTS `project_robotics` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_robotics`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: project_robotics
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `invoicerow`
--

DROP TABLE IF EXISTS `invoicerow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoicerow` (
  `invoicenumber` int NOT NULL,
  `rownumber` int NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `quantity` int NOT NULL,
  `unit` varchar(45) DEFAULT NULL,
  `unitprice` decimal(10,0) DEFAULT NULL,
  `vatpercent` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`invoicenumber`,`rownumber`),
  KEY `fk_table1_InvoiceHeader_idx` (`invoicenumber`),
  CONSTRAINT `fk_table1_InvoiceHeader` FOREIGN KEY (`invoicenumber`) REFERENCES `invoiceheader` (`invoicenumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoicerow`
--

LOCK TABLES `invoicerow` WRITE;
/*!40000 ALTER TABLE `invoicerow` DISABLE KEYS */;
INSERT INTO `invoicerow` VALUES (143143,1,'Installation Services',5,'h',60,24,72,372),(143143,2,'Replacement Products',10,'kpl',105,24,252,1302),(153143,1,'Installation Services',5,'h',60,24,72,372),(153143,2,'Replacement Products',10,'kpl',105,24,252,1302),(153143,3,'Cleaning Services',5,'h',60,24,72,372),(153143,4,'Cleaning Wipes',10,'kpl',105,24,252,1302),(1543235,1,'Keyboard Logitech',10,'kpl',40,24,96,496),(1543235,2,'Brother printer',1,'kpl',65,24,16,81);
/*!40000 ALTER TABLE `invoicerow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-12  9:16:46
