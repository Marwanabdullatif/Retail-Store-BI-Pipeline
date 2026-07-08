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
-- Temporary view structure for view `view_2017`
--

DROP TABLE IF EXISTS `view_2017`;
/*!50001 DROP VIEW IF EXISTS `view_2017`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_2017` AS SELECT 
 1 AS `transaction_date`,
 1 AS `stock_date`,
 1 AS `product_id`,
 1 AS `customer_id`,
 1 AS `store_id`,
 1 AS `quantity`,
 1 AS `product_name`,
 1 AS `product_retail_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_2018`
--

DROP TABLE IF EXISTS `view_2018`;
/*!50001 DROP VIEW IF EXISTS `view_2018`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_2018` AS SELECT 
 1 AS `transaction_date`,
 1 AS `stock_date`,
 1 AS `product_id`,
 1 AS `customer_id`,
 1 AS `store_id`,
 1 AS `quantity`,
 1 AS `product_name`,
 1 AS `product_retail_price`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_2017`
--

/*!50001 DROP VIEW IF EXISTS `view_2017`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_2017` AS select `s`.`transaction_date` AS `transaction_date`,`s`.`stock_date` AS `stock_date`,`s`.`product_id` AS `product_id`,`s`.`customer_id` AS `customer_id`,`s`.`store_id` AS `store_id`,`s`.`quantity` AS `quantity`,`p`.`product_name` AS `product_name`,`p`.`product_retail_price` AS `product_retail_price` from (`sales 2017` `s` join `products` `p` on((`s`.`product_id` = `p`.`product_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_2018`
--

/*!50001 DROP VIEW IF EXISTS `view_2018`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_2018` AS select `s`.`transaction_date` AS `transaction_date`,`s`.`stock_date` AS `stock_date`,`s`.`product_id` AS `product_id`,`s`.`customer_id` AS `customer_id`,`s`.`store_id` AS `store_id`,`s`.`quantity` AS `quantity`,`p`.`product_name` AS `product_name`,`p`.`product_retail_price` AS `product_retail_price` from (`sales 2018` `s` join `products` `p` on((`s`.`product_id` = `p`.`product_id`))) */;
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

-- Dump completed on 2026-05-03 20:37:53
