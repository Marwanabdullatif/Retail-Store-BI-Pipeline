-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: graduation_project
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int DEFAULT NULL,
  `sales_district` text,
  `sales_region` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'San Francisco','Central West'),(2,'Mexico City','Mexico Central'),(3,'Los Angeles','South West'),(4,'Guadalajara','Mexico West'),(5,'Vancouver','Canada West'),(6,'Victoria','Canada West'),(7,'San Diego','South West'),(8,'San Diego','South West'),(9,'San Diego','South West'),(10,'San Diego','South West'),(11,'San Diego','South West'),(12,'San Diego','South West'),(13,'San Diego','South West'),(14,'San Diego','South West'),(15,'San Diego','South West'),(16,'San Diego','South West'),(17,'San Diego','South West'),(18,'Seattle','North West'),(19,'Seattle','North West'),(20,'Seattle','North West'),(21,'Seattle','North West'),(22,'Portland','North West'),(23,'Salem','North West'),(24,'Orizaba','Mexico Central'),(25,'Hidalgo','Mexico Central'),(26,'Marida','Mexico South'),(27,'Camacho','Mexico Central'),(28,'Acapulco','Mexico West'),(29,'Acapulco','Mexico West'),(30,'Tlaxiaco','Mexico South'),(31,'San Francisco','Central West'),(32,'San Francisco','Central West'),(33,'San Diego','South West'),(34,'San Francisco','Central West'),(35,'San Francisco','Central West'),(36,'San Francisco','Central West'),(37,'San Francisco','Central West'),(38,'San Francisco','Central West'),(39,'San Francisco','Central West'),(40,'San Francisco','Central West'),(41,'San Francisco','Central West'),(42,'San Francisco','Central West'),(43,'San Francisco','Central West'),(44,'San Francisco','Central West'),(45,'San Francisco','Central West'),(46,'San Francisco','Central West'),(47,'Los Angeles','South West'),(48,'Los Angeles','South West'),(49,'Los Angeles','South West'),(50,'Los Angeles','South West'),(51,'Los Angeles','South West'),(52,'Los Angeles','South West'),(53,'Los Angeles','South West'),(54,'Los Angeles','South West'),(55,'Los Angeles','South West'),(56,'Los Angeles','South West'),(57,'Los Angeles','South West'),(58,'Los Angeles','South West'),(59,'Los Angeles','South West'),(60,'Los Angeles','South West'),(61,'Los Angeles','South West'),(62,'Los Angeles','South West'),(63,'Seattle','North West'),(64,'Portland','North West'),(65,'Portland','North West'),(66,'Portland','North West'),(67,'Portland','North West'),(68,'Portland','North West'),(69,'Salem','North West'),(70,'Salem','North West'),(71,'Salem','North West'),(72,'Salem','North West'),(73,'Seattle','North West'),(74,'Seattle','North West'),(75,'Seattle','North West'),(76,'Bremerton','North West'),(77,'Bremerton','North West'),(78,'Bellingham','North West'),(79,'Bellingham','North West'),(80,'Bellingham','North West'),(81,'Seattle','North West'),(82,'Seattle','North West'),(83,'Seattle','North West'),(84,'Tacoma','North West'),(85,'Tacoma','North West'),(86,'Tacoma','North West'),(87,'Spokane','North West'),(88,'Walla Walla','North West'),(89,'Yakima','North West'),(90,'Vancouver','Canada West'),(91,'Vancouver','Canada West'),(92,'Vancouver','Canada West'),(93,'Vancouver','Canada West'),(94,'Vancouver','Canada West'),(95,'Vancouver','Canada West'),(96,'Vancouver','Canada West'),(97,'Vancouver','Canada West'),(98,'Vancouver','Canada West'),(99,'Victoria','Canada West'),(100,'Victoria','Canada West'),(101,'Victoria','Canada West'),(102,'Victoria','Canada West'),(103,'Victoria','Canada West'),(104,'Victoria','Canada West'),(105,'Victoria','Canada West'),(106,'Mexico City','Mexico Central'),(107,'Mexico City','Mexico Central'),(108,'Mexico City','Mexico Central'),(109,'Mexico City','Mexico Central');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 20:37:51
