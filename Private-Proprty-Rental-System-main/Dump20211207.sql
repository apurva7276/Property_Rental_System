-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: importexport_1
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `c_id` int NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `c_contact` bigint NOT NULL,
  `c_email` varchar(30) DEFAULT NULL,
  `c_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Drek','male',8012348293,'customer1@gmail.com','Ghantkopar,Mumbai'),(2,'Harry','male',7182348293,'customer2@gmail.com','lane 35,flat 34,bengluru'),(3,'Ron','male',8934262931,'customer3@gmail.com','lane 5,flat 22,london'),(4,'Emran','male',9834782347,'customer4@gmail.com','lane 3,flat 4,baker street,berlin'),(5,'Patrick','male',9234727834,'customer5@gmail.com','lane 3,flat 4,trident street,berlin'),(6,'chris','male',9834782645,'customer6@gmail.com','lane 12,flat 6,walter street,london'),(7,'karan','male',9237782645,'customer7@gmail.com','lane 8,flat 67,canada'),(8,'James','male',9636936457,'customer8@gmail.com','lane 37,flat 67,united states'),(9,'william','male',94269834645,'customer9@gmail.com','lane 37,flat 67,old rajindar nagar,delhi'),(10,'bhavya','male',9936982492,'customer10@gmail.com','lane 7,flat 7,dombivli,mumbai');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customer_r`
--

DROP TABLE IF EXISTS `customer_r`;
/*!50001 DROP VIEW IF EXISTS `customer_r`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customer_r` AS SELECT 
 1 AS `c_id`,
 1 AS `c_name`,
 1 AS `gender`,
 1 AS `c_contact`,
 1 AS `c_email`,
 1 AS `c_address`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `d_id` int NOT NULL AUTO_INCREMENT,
  `d_name` varchar(30) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `d_contact` bigint NOT NULL,
  `d_email` varchar(30) DEFAULT NULL,
  `d_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES (1,'Drek','male',8012348293,'distributor1@gmail.com','Ghantkopar,Mumbai'),(2,'Harry','male',7182348293,'distributor2@gmail.com','lane 35,flat 34,bengluru'),(3,'Ron','male',8934262931,'distributor3@gmail.com','lane 5,flat 22,london'),(4,'Emran','male',9834782347,'distributor4@gmail.com','lane 3,flat 4,baker street,berlin'),(5,'Patrick','male',9234727834,'distributor5@gmail.com','lane 3,flat 4,trident street,berlin'),(6,'chris','male',9834782645,'distributor6@gmail.com','lane 12,flat 6,walter street,london'),(7,'karan','male',9237782645,'distributor7@gmail.com','lane 8,flat 67,canada'),(8,'James','male',9636936457,'distributor8@gmail.com','lane 37,flat 67,united states'),(9,'william','male',94269834645,'distributor9@gmail.com','lane 37,flat 67,old rajindar nagar,delhi'),(10,'jakson','male',9936982492,'distributor10@gmail.com','lane 7,flat 7,dombivli,mumbai');
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export`
--

DROP TABLE IF EXISTS `export`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `export` (
  `export_id` int NOT NULL AUTO_INCREMENT,
  `export_date` date NOT NULL,
  `export_mode` varchar(30) NOT NULL,
  `supplier_id` int NOT NULL,
  `export_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`export_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `export_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`sup_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export`
--

LOCK TABLES `export` WRITE;
/*!40000 ALTER TABLE `export` DISABLE KEYS */;
INSERT INTO `export` VALUES (1,'2021-11-16','Air',2,'lane 35,flat 34,shahupuri,kolhapur'),(2,'2021-11-16','water',5,'lane 3,flat 10,main bridge,london'),(3,'2021-11-16','Air',7,'lane 3,flat 67,main street,london'),(4,'2021-11-16','water',9,'lane 37,flat 67,old rajindar nagar,delhi'),(5,'2021-11-16','Air',1,'kasaba bawada,kolhapur,lane 45'),(6,'2021-11-16','Air',2,'lane 35,flat 34,shahupuri,kolhapur'),(7,'2021-11-16','water',4,'lane 3,flat 4,baker street,london'),(8,'2021-11-16','Air',10,'lane 7,flat 7,dombivli,mumbai'),(9,'2021-11-16','water',6,'lane 7,flat 4,watson street,london'),(10,'2021-11-16','Air',3,'lane 5,flat 22,newyork');
/*!40000 ALTER TABLE `export` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `import`
--

DROP TABLE IF EXISTS `import`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `import` (
  `import_id` int NOT NULL AUTO_INCREMENT,
  `import_date` date NOT NULL,
  `import_mode` varchar(30) NOT NULL,
  `customer_id` int NOT NULL,
  `import_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`import_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `import_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`c_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `import`
--

LOCK TABLES `import` WRITE;
/*!40000 ALTER TABLE `import` DISABLE KEYS */;
INSERT INTO `import` VALUES (1,'2021-11-16','Air',2,'lane 35,flat 34,bengluru'),(2,'2021-11-16','water',5,'lane 3,flat 4,trident street,berlin'),(3,'2021-11-16','Air',7,'lane 8,flat 67,canada'),(4,'2021-11-16','water',9,'lane 37,flat 67,old rajindar nagar,delhi'),(5,'2021-11-16','Air',1,'Ghantkopar,Mumbai'),(6,'2021-11-16','Air',2,'lane 35,flat 34,bengluru'),(7,'2021-11-16','water',4,'lane 3,flat 4,baker street,berlin'),(8,'2021-11-16','Air',10,'lane 7,flat 7,dombivli,mumbai'),(9,'2021-11-16','water',6,'lane 12,flat 6,walter street,london'),(10,'2021-11-16','Air',3,'lane 5,flat 22,london');
/*!40000 ALTER TABLE `import` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL,
  `item_price` int DEFAULT NULL,
  `weight_kg` float NOT NULL,
  `type` varchar(30) DEFAULT NULL,
  `item_diamensions` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'wired mouse',500,0.3,'computer equipments','3 x2x12cm'),(2,'keyboard',1500,1,'computer equipments','5 x4x16cm'),(3,'C type charger',300,0.1,'mobile equipments','2 x2x4cm'),(4,'samsung galaxy m20',12000,0.5,'mobile','2 x3x12cm'),(5,'sandisk pendrive 16 gb',300,0.12,'computer equipments','1 x1x3cm'),(6,'Notebooks',2,0.23,'school essentials','2 x2x20cm'),(7,'Hard disk',2000,0.6,'computer equipments','4 x6x8cm'),(8,'Cello Gripper',15,0.112,'shool essentials','0.6 x0.5x10cm'),(9,'Dell optiplex 3020',19000,2.5,'computer equipments','12 x10x20cm'),(10,'Intel i3 processor',9000,0.1,'computer equipments','1 x0.33x2cm');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_db`
--

DROP TABLE IF EXISTS `order_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_db` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(20) DEFAULT NULL,
  `destination` varchar(20) DEFAULT NULL,
  `quantity` int NOT NULL,
  `import_ID` int NOT NULL,
  `export_ID` int NOT NULL,
  `item_no` int NOT NULL,
  `distributor_no` int NOT NULL,
  `payment_no` int NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `import_ID` (`import_ID`),
  KEY `export_ID` (`export_ID`),
  KEY `item_no` (`item_no`),
  KEY `distributor_no` (`distributor_no`),
  KEY `payment_no` (`payment_no`),
  CONSTRAINT `order_db_ibfk_1` FOREIGN KEY (`import_ID`) REFERENCES `import` (`import_id`) ON UPDATE CASCADE,
  CONSTRAINT `order_db_ibfk_2` FOREIGN KEY (`export_ID`) REFERENCES `export` (`export_id`) ON UPDATE CASCADE,
  CONSTRAINT `order_db_ibfk_3` FOREIGN KEY (`item_no`) REFERENCES `item` (`item_id`) ON UPDATE CASCADE,
  CONSTRAINT `order_db_ibfk_4` FOREIGN KEY (`distributor_no`) REFERENCES `distributor` (`d_id`) ON UPDATE CASCADE,
  CONSTRAINT `order_db_ibfk_5` FOREIGN KEY (`payment_no`) REFERENCES `payment` (`pay_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_db`
--

LOCK TABLES `order_db` WRITE;
/*!40000 ALTER TABLE `order_db` DISABLE KEYS */;
INSERT INTO `order_db` VALUES (1,'berlin','london',2,8,8,9,2,1),(2,'india','india',50,5,5,3,4,2),(3,'berlin','london',27,7,7,7,6,3),(4,'london','london',39,9,9,9,1,4),(5,'india','india',70,1,1,2,9,5),(6,'berlin','london',27,2,2,2,8,6),(7,'india','india',80,4,4,4,5,7),(8,'london','newyork',100,10,10,7,10,8),(9,'india','india',60,6,6,1,2,9),(10,'canada','london',35,3,3,3,7,10);
/*!40000 ALTER TABLE `order_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `pay_id` int NOT NULL AUTO_INCREMENT,
  `pay_mode` varchar(30) NOT NULL,
  `pay_amount` bigint NOT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_time` time DEFAULT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'credit card payment',25000,'2021-11-16','10:06:47'),(2,'UPI',10000,'2021-11-16','10:06:47'),(3,'E wallet',30000,'2021-11-16','10:06:47'),(4,'debit card payment',50000,'2021-11-16','10:06:47'),(5,'credit card payment',5000,'2021-11-16','10:06:47'),(6,'UPI',7800,'2021-11-16','10:06:47'),(7,'debit card payment',23500,'2021-11-16','10:06:47'),(8,'UPI',34500,'2021-11-16','10:06:47'),(9,'E wallet',12500,'2021-11-16','10:06:47'),(10,'credit card payment',3500,'2021-11-16','10:06:47');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `sup_id` int NOT NULL AUTO_INCREMENT,
  `sup_name` varchar(30) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `sup_contact` bigint NOT NULL,
  `sup_email` varchar(30) NOT NULL,
  `sup_address` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Prathamesh','male',9012348293,'suppiler1@gmail.com','kasaba bawada,kolhapur,lane 45'),(2,'Omkar','male',9182348293,'suppiler2 @gmail.com','lane 35,flat 34,shahupuri,kolhapur'),(3,'pritam','male',9834262931,'suppiler3 @gmail.com','lane 5,flat 22,newyork'),(4,'shivam','male',9834782645,'suppiler4 @gmail.com','lane 3,flat 4,baker street,london'),(5,'pranav','male',9834782645,'suppiler5 @gmail.com','lane 3,flat 10,main bridge,london'),(6,'ritesh','male',9834782645,'suppiler6 @gmail.com','lane 7,flat 4,watson street,london'),(7,'hitesh','male',9737782645,'suppiler7 @gmail.com','lane 3,flat 67,main street,london'),(8,'karan','male',9636982645,'suppiler8 @gmail.com','lane 37,flat 67,london'),(9,'varun','male',9926982645,'suppiler9 @gmail.com','lane 37,flat 67,old rajindar nagar,delhi'),(10,'sajid','male',9036982445,'suppiler10 @gmail.com','lane 7,flat 7,dombivli,mumbai');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `customer_r`
--

/*!50001 DROP VIEW IF EXISTS `customer_r`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customer_r` AS select `customer`.`c_id` AS `c_id`,`customer`.`c_name` AS `c_name`,`customer`.`gender` AS `gender`,`customer`.`c_contact` AS `c_contact`,`customer`.`c_email` AS `c_email`,`customer`.`c_address` AS `c_address` from `customer` where (`customer`.`c_name` like 'R%') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07  9:41:07
