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
-- Table structure for table `invoiceheader`
--

DROP TABLE IF EXISTS `invoiceheader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoiceheader` (
  `invoicenumber` int NOT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `companycode` varchar(45) NOT NULL,
  `referencenumber` varchar(45) NOT NULL,
  `Invoicedate` date NOT NULL,
  `duedate` date NOT NULL,
  `bankaccountnumber` varchar(30) NOT NULL,
  `amountexclvat` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `totalamount` decimal(10,0) NOT NULL,
  `InvoiceStatus_id` int NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`invoicenumber`),
  KEY `fk_InvoiceHeader_InvoiceStatus1_idx` (`InvoiceStatus_id`),
  CONSTRAINT `fk_InvoiceHeader_InvoiceStatus1` FOREIGN KEY (`InvoiceStatus_id`) REFERENCES `invoicestatus` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoiceheader`
--

LOCK TABLES `invoiceheader` WRITE;
/*!40000 ALTER TABLE `invoiceheader` DISABLE KEYS */;
INSERT INTO `invoiceheader` VALUES (143143,'Service Provider Oy','1234567-8','1431432','2022-12-15','2021-04-07','FI12 3456 7890 1234 56',1350,324,1674,0,'All ok'),(153143,'Service Provider Oy','1234567-8','1531439','2022-12-15','2021-04-01','FI12 3456 7890 1234 56',2700,648,3348,0,'All ok'),(1543235,'Component Oy','1234567-9','15432359','2022-10-01','2022-10-15','FI05 1234 5600 7891 01',465,112,577,0,'All ok');
/*!40000 ALTER TABLE `invoiceheader` ENABLE KEYS */;
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
