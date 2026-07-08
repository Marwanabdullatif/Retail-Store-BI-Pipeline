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
-- Table structure for table `stores`
--

DROP TABLE IF EXISTS `stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stores` (
  `store_id` int NOT NULL,
  `region_id` int DEFAULT NULL,
  `store_type` text,
  `store_name` text,
  `store_street_address` text,
  `store_city` text,
  `store_state` text,
  `store_country` text,
  `store_phone` text,
  `first_opened_date` text,
  `last_remodel_date` text,
  `total_sqft` int DEFAULT NULL,
  `grocery_sqft` int DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stores`
--

LOCK TABLES `stores` WRITE;
/*!40000 ALTER TABLE `stores` DISABLE KEYS */;
INSERT INTO `stores` VALUES (1,28,'Supermarket','Store 1','2853 Bailey Rd','Acapulco','Guerrero','Mexico','262-555-5124','1/9/1982','12/5/1990',23593,17475),(2,78,'Small Grocery','Store 2','5203 Catanzaro Way','Bellingham','WA','USA','605-555-8203','4/2/1970','6/4/1973',28206,22271),(3,76,'Supermarket','Store 3','1501 Ramsey Circle','Bremerton','WA','USA','509-555-1596','6/14/1959','11/19/1967',39696,24390),(4,27,'Gourmet Supermarket','Store 4','433 St George Dr','Camacho','Zacatecas','Mexico','304-555-1474','9/27/1994','12/1/1995',23759,16844),(5,4,'Small Grocery','Store 5','1250 Coggins Drive','Guadalajara','Jalisco','Mexico','801-555-4324','9/18/1978','6/29/1991',24597,15012),(6,47,'Gourmet Supermarket','Store 6','5495 Mitchell Canyon Road','Beverly Hills','CA','USA','958-555-5002','1/3/1981','3/13/1991',23688,15337),(7,3,'Supermarket','Store 7','1077 Wharf Drive','Los Angeles','CA','USA','477-555-7967','5/21/1971','10/20/1981',23598,14210),(8,26,'Deluxe Supermarket','Store 8','3173 Buena Vista Ave','Merida','Yucatan','Mexico','797-555-3417','9/23/1958','11/18/1967',30797,20141),(9,2,'Mid-Size Grocery','Store 9','1872 El Pintado Road','Mexico City','DF','Mexico','439-555-3524','3/18/1955','6/7/1959',36509,22450),(10,24,'Supermarket','Store 10','7894 Rotherham Dr','Orizaba','Veracruz','Mexico','212-555-4774','4/13/1979','1/30/1982',34791,26354),(11,22,'Supermarket','Store 11','5371 Holland Circle','Portland','OR','USA','685-555-8995','9/17/1976','5/15/1982',20319,16232),(12,25,'Deluxe Supermarket','Store 12','1120 Westchester Pl','Hidalgo','Zacatecas','Mexico','151-555-1702','3/25/1968','12/18/1993',30584,21938),(13,23,'Deluxe Supermarket','Store 13','5179 Valley Ave','Salem','OR','USA','977-555-2724','4/13/1957','11/10/1997',27694,18670),(14,1,'Small Grocery','Store 14','4365 Indigo Ct','San Francisco','CA','USA','135-555-4888','11/24/1957','1/7/1958',22478,15321),(15,18,'Supermarket','Store 15','5006 Highland Drive','Seattle','WA','USA','893-555-1024','7/24/1969','10/19/1973',21215,13305),(16,87,'Supermarket','Store 16','5922 La Salle Ct','Spokane','WA','USA','643-555-3645','8/23/1974','7/13/1977',30268,22063),(17,84,'Deluxe Supermarket','Store 17','490 Risdon Road','Tacoma','WA','USA','855-555-5581','5/30/1970','6/23/1976',33858,22123),(18,25,'Mid-Size Grocery','Store 18','6764 Glen Road','Hidalgo','Zacatecas','Mexico','528-555-8317','6/28/1969','8/30/1975',38382,30351),(19,5,'Deluxe Supermarket','Store 19','6644 Sudance Drive','Vancouver','BC','Canada','862-555-7395','3/27/1977','10/25/1990',23112,16418),(20,6,'Mid-Size Grocery','Store 20','3706 Marvelle Ln','Victoria','BC','Canada','897-555-1931','2/6/1980','4/9/1987',34452,27463),(21,106,'Deluxe Supermarket','Store 21','4093 Steven Circle','San Andres','DF','Mexico','493-555-4781','2/7/1986','4/16/1990',32717,25453),(22,88,'Small Grocery','Store 22','9606 Julpum Loop','Walla Walla','WA','USA','881-555-5117','1/24/1951','10/17/1969',35918,24837),(23,89,'Mid-Size Grocery','Store 23','3920 Noah Court','Yakima','WA','USA','170-555-8424','7/16/1977','7/24/1987',29182,19283),(24,7,'Supermarket','Store 24','2342 Waltham St.','San Diego','CA','USA','111-555-0303','5/22/1979','4/20/1986',27372,18293);
/*!40000 ALTER TABLE `stores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-03 20:37:52
