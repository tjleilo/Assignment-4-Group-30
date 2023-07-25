CREATE DATABASE  IF NOT EXISTS `my_database2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `my_database2`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: my_database2
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Temporary view structure for view `completed`
--

DROP TABLE IF EXISTS `completed`;
/*!50001 DROP VIEW IF EXISTS `completed`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `completed` AS SELECT 
 1 AS `requirement_number`,
 1 AS `requirement_text`,
 1 AS `priority_text`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `high`
--

DROP TABLE IF EXISTS `high`;
/*!50001 DROP VIEW IF EXISTS `high`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `high` AS SELECT 
 1 AS `requirement_number`,
 1 AS `requirement_text`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `incomplete`
--

DROP TABLE IF EXISTS `incomplete`;
/*!50001 DROP VIEW IF EXISTS `incomplete`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incomplete` AS SELECT 
 1 AS `requirement_number`,
 1 AS `requirement_text`,
 1 AS `priority_text`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `low`
--

DROP TABLE IF EXISTS `low`;
/*!50001 DROP VIEW IF EXISTS `low`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `low` AS SELECT 
 1 AS `requirement_number`,
 1 AS `requirement_text`,
 1 AS `status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `requirements`
--

DROP TABLE IF EXISTS `requirements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requirements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `requirement_number` text NOT NULL,
  `requirement_text` text NOT NULL,
  `priority_rating` int DEFAULT NULL,
  `priority_text` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requirements`
--

LOCK TABLES `requirements` WRITE;
/*!40000 ALTER TABLE `requirements` DISABLE KEYS */;
INSERT INTO `requirements` VALUES (1,'3.2.1.1.1','An icon shall be selected during detailed design to show a gate in a closed position.',5,'Low','Completed'),(2,'3.2.1.1.2','An icon shall be selected during detailed design to show a gate in an open position.',5,'Low','Completed'),(3,'3.2.1.1.3','An icon shall be selected during detailed design to show a gate in a partially open (15%) open position.',5,'Low','Completed'),(4,'3.2.1.1.4','The gate icon shall be configurable to show the name of the gate with the icon.',3,'Medium','Completed'),(5,'3.2.1.1.5','The gate icon shall be configurable to show the state of the gate (e.g. open or close).',3,'Medium','Completed'),(6,'3.2.1.1.6','The gate icon shall be configurable to show the status of the gate (operational failed or no data). The color of the gate icon shall be changed to show the status of the gate.',1,'High','Completed'),(7,'3.2.1.1.7','When the operator moves the mouse over a gate icon a text window shall be displayed showing a summary of the gate status. The details of the summary status display will be defined in the GUI design document.',1,'High','Completed'),(8,'3.2.1.1.8','The operator shall be able to activate a detailed device status window for the selected gate by double left clicking on the icon. This action shall cause a circle to be displayed over the gate icon for as long as the detailed device status window is displayed for that gate.',2,'Medium-High','Completed'),(9,'3.2.1.1.9','The operator shall be able to activate a device control window for the selected gate by right clicking on the icon. The right click on the icons shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed over the gate icon for as long as the device control window is displayed for that gate.',2,'Medium-High','Completed'),(10,'3.2.1.1.9.1','If operation of the device is locked out for safety reasons a command option will be “grayed out” and not selectable.',1,'High','Completed'),(11,'3.2.1.2.1','An icon shall be selected during detailed design to indicate a group of popups in an “Up” or entrance closed position.',5,'Low','Completed'),(12,'3.2.1.2.2','An icon shall be selected during detailed design to indicate a group of popups in a “Down” or entrance opened position.',5,'Low','Completed'),(13,'3.2.1.2.3','An icon shall be selected during detailed design to indicate a failure status when some popups in a group are in a “Down” position and some popups in the same group are in an “Up’ position.',1,'High','Completed'),(14,'3.2.1.2.4','The popup icon shall be configurable to display the name of the popup group.',4,'Medium-Low','Completed'),(15,'3.2.1.2.5','The popup icon shall be configurable to display the state of the popup group (up or down).',4,'Medium-Low','Completed'),(16,'3.2.1.2.6','The popup icon shall be configurable to display the status of the popup group. The color of the icon shall be changed to show the status of the popup group.',4,'Medium-Low','Completed'),(17,'3.2.1.2.7','When the operator moves the mouse over a popup icon a text window shall be displayed showing a summary of the popup group status. The details of the status display will be defined in the GUI design document.',1,'High','Completed'),(18,'3.2.1.2.8','The operator shall be able to activate a detailed device status window for the selected popup group by double left clicking on the icon. A circle shall be displayed over the icon as long as the detailed status window is displayed for the icon.',1,'High','Completed'),(19,'3.2.1.2.9','The operator shall be able to activate a device control window for the selected popup by right clicking on the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for the icon.',1,'High','Completed'),(20,'3.2.1.2.9.1','If operation of the device is locked out for safety reasons a command option will be “grayed out” and not selectable.',2,'Medium-High','Completed'),(21,'3.2.1.3.1','An icon shall be selected during detailed design to indicate changeable message signs.',2,'Medium-High','Completed'),(22,'3.2.1.3.2','An icon shall be selected during detailed design to indicate a changeable message sign that is displaying a message.',2,'Medium-High','Completed'),(23,'3.2.1.3.3','The CMS icon shall be configurable to display the name of the sign with the icon.',3,'Medium','Completed'),(24,'3.2.1.3.4','The CMS icon shall be configurable to display an abbreviated message text with the icon.',3,'Medium','Completed'),(25,'3.2.1.3.5','The CMS icon shall be configurable to display the status of the sign associated with the icon. The CMS icon color shall represent the operational status of the CMS sign: green for operational yellow for operational with errors gray for no communications and red for failed.',2,'Medium-High','Completed'),(26,'3.2.1.3.6','If the operator moves the mouse over the CMS icon then a text window shall be displayed with a summary of the operational state and status of the sign and the text of any message being displayed on the sign.',2,'Medium-High','Completed'),(27,'3.2.1.3.7','The operator shall be able to activate a detailed device status window for the sign by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.',2,'Medium-High','Completed'),(28,'3.2.1.3.8','The operator shall be able to activate a device control window for the CMS sign by right clicking on the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for that icon.',1,'High','Completed'),(29,'3.2.1.3.8.1','If operation of the device is locked out for safety reasons a command option will be “grayed out” and not selectable.',1,'High','Completed'),(30,'3.2.1.4.1','An icon shall be selected to indicate a CCTV camera.',5,'Low','Completed'),(31,'3.2.1.4.2','The camera icon shall be configurable to show the name of the camera with the icon.',4,'Medium-Low','Completed'),(32,'3.2.1.4.3','The camera icon shall be configurable to show the state of the camera.',3,'Medium','Completed'),(33,'3.2.1.4.4','The camera icon shall be configurable to show the status of the camera. The color of the camera icon shall be changed to show the status of the camera.',1,'High','Completed'),(34,'3.2.1.4.5','When a user moves the mouse over a camera icon a text window shall be displayed showing a summary of the camera status.',2,'Medium-High','Completed'),(35,'3.2.1.4.6','The user shall be able to activate a detailed device status window for the selected camera by double left clicking on the icon. This action shall cause a circle to be displayed over the camera icon for as long as the detailed device status window is displayed for that camera.',1,'High','Completed'),(36,'3.2.1.4.7','The user shall be able to activate a device control window for the selected camera by right clicking on the icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. This action shall cause a circle to be displayed over the camera icon for as long as the device control window is displayed for that camera.',1,'High','Completed'),(37,'3.2.1.5.1','An icon shall be selected during detailed design to indicate a group of draw lights that are off.',4,'Medium-Low','Completed'),(38,'3.2.1.5.2','An icon shall be selected during detailed design to indicate a group of draw lights that are on.',4,'Medium-Low','Completed'),(39,'3.2.1.5.3','An icon shall be selected during detailed design to indicate a group of draw lights where some are on and some are off.',3,'Medium','Completed'),(40,'3.2.1.5.4','The draw light icon shall be configurable to display the name of the draw lights.',4,'Medium-Low','Completed'),(41,'3.2.1.5.5','The draw light icon shall be configurable to display the state of the draw lights.',4,'Medium-Low','Completed'),(42,'3.2.1.5.6','The draw light icon shall be configurable to display the status of the draw lights. The color of the draw light icon shall represent the status of the draw light: green for operational yellow for operational with errors gray for no communications and red for failed.',2,'Medium-High','Completed'),(43,'3.2.1.5.7','When the operator moves the mouse over a draw light icon a text window shall be displayed showing a summary of the status of the group of draw lights. The details of the status display will be defined in the GUI design document.',1,'High','Completed'),(44,'3.2.1.5.8','The operator shall be able to activate a detailed device status window for the draw lights by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.',1,'High','Completed'),(45,'3.2.1.5.9','The operator shall be able to activate a device control window for the draw lights by right clicking on the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for that icon.',1,'High','Completed'),(46,'3.2.1.5.9.1','If operation of the device is locked out for safety reasons the command option will be “grayed out” and not selectable.',2,'Medium-High','Completed'),(47,'3.2.1.6.1','An icon shall be selected during detailed design to indicate a group of wrong way lights that are off.',3,'Medium','Completed'),(48,'3.2.1.6.2','An icon shall be selected during detailed design to indicate a group of wrong way lights that are on.',3,'Medium','Completed'),(49,'3.2.1.6.3','An icon shall be selected during detailed design to indicate a group of wrong way lights where some are on and some are off.',2,'Medium-High','Completed'),(50,'3.2.1.6.4','The wrong way light icon shall be configurable to display the name of the draw lights.',2,'Medium-High','Completed'),(51,'3.2.1.6.5','The wrong way light icon shall be configurable to display the state of the wrong way lights.',2,'Medium-High','Completed'),(52,'3.2.1.6.6','The wrong way light icon shall be configurable to display the status of the group of wrong way lights. The color of the wrong way light icon shall represent the status of the wrong way light: green for operational yellow for operational with errors gray for no communications and red for failed.',2,'Medium-High','Completed'),(53,'3.2.1.6.7','When the operator moves the mouse over a wrong way light icon a text window shall be displayed showing a summary of the status of the group of wrong way lights. The details of the status display will be defined in the GUI design document.',1,'High','Completed'),(54,'3.2.1.6.8','The operator shall be able to activate a detailed device status window for the wrong way lights by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window is displayed for that icon.',2,'Medium-High','Completed'),(55,'3.2.1.6.9','The operator shall be able to activate the control window for the wrong way light by right clicking on the selected icon. The right click on the icon shall display a pop-up menu of available device actions from which the user may select. A circle shall be displayed over the icon as long as the device control window is displayed for that icon.',1,'High','Completed'),(56,'3.2.1.6.9.1','If operation of the device is locked out for safety a command option will be “grayed out” and not selectable.',1,'High','Completed'),(57,'3.2.1.7.1','An icon shall be selected during detailed design to indicate a loop detector.',4,'Medium-Low','Completed'),(58,'3.2.1.7.2','An icon shall be selected during detailed design to indicate a group of loop detectors.',4,'Medium-Low','Completed'),(59,'3.2.1.7.3','The loop detector and group detector icons shall use color to indicate either speed volume or occupancy is within a specified range or if no data is available from the detector or from all loop detectors in a group.',2,'Medium-High','Completed'),(60,'3.2.1.7.4','The color used to indicate a range shall be configurable.',4,'Medium-Low','Completed'),(61,'3.2.1.7.5','The data being displayed by color shall be configurable.',5,'Low','Completed'),(62,'3.2.1.7.6','The range being displayed by a color shall be configurable.',4,'Medium-Low','Completed'),(63,'3.2.1.7.7','The operator shall be able to configure the color the range and/or the data type without restarting the application.',3,'Medium','Completed'),(64,'3.2.1.7.8','The loop detector icon shall be configurable to display the name of the loop detector.',4,'Medium-Low','Completed'),(65,'3.2.1.7.9','The loop detector icon shall be configurable to display the N second volume speed and occupancy values as text associated with the icon. The value on N shall be configurable.',3,'Medium','Completed'),(66,'3.2.1.7.10','The group detector icon shall be configurable to display the name of the detector group name as text with the icon.',3,'Medium','Completed'),(67,'3.2.1.7.11','The group detector icon shall be configurable to display the N second average of volume speed and occupancy for all detectors in the group as text with the icon. The value of N shall be configurable.',2,'Medium-High','Completed'),(68,'3.2.1.7.12','The detector loop icon shall be configurable to display the status of the loop detector or group of loop detectors.',1,'High','Completed'),(69,'3.2.1.7.13','When the operator moves the mouse over a detector loop icon a text window shall be displayed showing a summary of the status of the loop detector or the group of detector loops. The details of the status display will be defined in the GUI design document.',1,'High','Completed'),(70,'3.2.1.7.14','The operator shall be able to activate a detailed device status window for the loop or group of loops by double left clicking on the selected icon. A circle shall be displayed over the icon as long as the detailed device status window for that icon.',1,'High','Completed'),(71,'3.2.1.8.1','Icons shall be selected during detailed design to represent the FCUs and the DCU/MCUs.',2,'Medium-High','Completed'),(72,'3.2.1.8.2','The FCU icon and the DCU/MCU icon shall be configurable to show the name of the site with the icon.',2,'Medium-High','Completed'),(73,'3.2.1.8.3','The icons shall be configurable to show the status of the equipment at the site. The color of the icons shall be changed to show the status of the equipment.',1,'High','Completed'),(74,'3.2.1.8.4','When the operator moves the mouse over an FCU or DCU/MCU icon a text window shall be displayed showing a summary of the site status. The details of the status display will be defined in the GUI design document.',1,'High','Completed'),(75,'3.2.1.8.5','The operator shall be able to activate a detailed device status window for the selected site by double left clicking on the icon. This action shall cause a circle to be displayed over the icon for as long as the detailed device status window is displayed for that site.',1,'High','Completed'),(76,'3.2.1.9.1','An icon shall represent the end point of the HOV lanes (North and South). The icon shall have different shapes to represent that the end point is closed open Southbound or open Northbound.',1,'High','Completed'),(77,'3.2.1.9.2','The end point icon shall be configurable to show the name of the end point associated with the icon.',2,'Medium-High','Completed'),(78,'3.2.1.9.3','The end point icon shall be configurable to show the state of the end point associated with the icon.',3,'Medium','Completed'),(79,'3.2.1.9.4','The end point icon shall be configurable to show the status of the end point. The color of the icon shall be changed to show the status of the end point.',1,'High','Completed'),(80,'3.2.1.9.5','When the operator moves the mouse over an end point icon a text window shall be displayed showing a summary of the end point status. The details of the summary status display will be defined in the GUI design document',1,'High','Completed'),(81,'3.2.1.9.6','The operator shall be able to activate a detailed device status window for the selected end point by double left clicking on the icon. This action shall cause a circle to be displayed over the icon for as long as the detailed device status window is displayed for that end point.',1,'High','Completed'),(82,'3.2.1.10.1','An icon shall be selected during detailed design to represent active incidents.',3,'Medium','Completed'),(83,'3.2.1.10.2','The incident icon shall be configurable to display the state of the incident.',4,'Medium-Low','Completed'),(84,'3.2.1.10.3','When the operator moves the mouse over an incident icon a text window shall be displayed showing a summary of the incident state. The details of the summary state display will be defined in the GUI design document.',1,'High','Completed'),(85,'3.2.1.10.4','The operator shall be able to activate a detailed incident state window for the selected incident by double left clicking on the icon. This action shall cause a circle to be displayed over the incident icon for as long as the detailed device status window is displayed for that incident.',1,'High','Completed'),(86,'3.2.1.10.5','The operator shall be able to activate an edit window for the selected incident by right clicking on the icon. This action shall cause a circle to be displayed over the incident icon for as long as the edit window is displayed for that incident.',1,'High','Completed'),(87,'3.3.4.1','The summary device status window shall display a text and graphic summary presentation on the status of the selected device or group of devices.',2,'Medium-High','Completed'),(88,'3.3.5.1','The detailed device status window shall display a text and graphic presentation on the status of the selected device or group of devices.',2,'Medium-High','Completed'),(89,'3.3.5.2','The detailed device status window shall allow a user to select more detailed status information on an individual device.',1,'High','Completed'),(90,'3.3.5.3','The operator shall be able to call up a device control window for any device shown on the device status window.',2,'Medium-High','Completed'),(91,'3.3.5.4','The summary device status window shall have a menu bar with File and Help as a minimum.',4,'Medium-Low','Completed'),(92,'3.3.5.4.1','The File menu item shall include an option to open a command window for the selected device.',4,'Medium-Low','Completed'),(93,'3.3.5.4.2','The File menu item shall include an option to open a detailed status window for the selected device.',4,'Medium-Low','Completed'),(94,'3.3.5.4.3','The File menu item shall include an option to print the summary device status page.',4,'Medium-Low','Completed'),(95,'3.3.5.4.4','The Help menu item shall activate the on-line help system.',4,'Medium-Low','Completed'),(96,'3.3.5.5','The summary device status window shall display a list of all devices along with a miniature icon of the device color coded with the device status. The color-coding shall match the color-coding described above.',1,'High','Completed'),(97,'3.3.5.6','The summary device status window shall list the full name of each device.',4,'Medium-Low','Completed'),(98,'3.3.5.7','The summary device status window shall list the most reason error code and description for the device if the device is failed or experiencing errors. ',4,'Medium-Low','Completed'),(99,'3.3.5.8','The summary device status window shall list the time and date of the last device status check.',3,'Medium','Completed'),(100,'4.1.1.1','All icons shall be configurable to display a minimum of information as text with the icon.',1,'High','Completed'),(101,'4.1.1.1.1','The icons shall be configurable to display the text with relationship to the icon at the top bottom left or right.',2,'Medium-High','Completed'),(102,'4.1.1.2','All icons shall be configurable to display four colors: green yellow red or gray',1,'High','Completed'),(103,'4.1.1.2.1','For all icons the color gray shall represent no data available that is communication with the device is not possible.',3,'Medium','Completed'),(104,'4.1.1.2.2','For all icons except the Loop Detector icon the other colors shall represent the status of the device with the color green indicating a working device red indicating a failed device and yellow indicating a partially failed device.',1,'High','Completed');
/*!40000 ALTER TABLE `requirements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `completed`
--

/*!50001 DROP VIEW IF EXISTS `completed`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `completed` AS select `requirements`.`requirement_number` AS `requirement_number`,`requirements`.`requirement_text` AS `requirement_text`,`requirements`.`priority_text` AS `priority_text` from `requirements` where (`requirements`.`status` = 'Completed') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `high`
--

/*!50001 DROP VIEW IF EXISTS `high`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `high` AS select `requirements`.`requirement_number` AS `requirement_number`,`requirements`.`requirement_text` AS `requirement_text`,`requirements`.`status` AS `status` from `requirements` where (`requirements`.`priority_text` = 'High') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incomplete`
--

/*!50001 DROP VIEW IF EXISTS `incomplete`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incomplete` AS select `requirements`.`requirement_number` AS `requirement_number`,`requirements`.`requirement_text` AS `requirement_text`,`requirements`.`priority_text` AS `priority_text` from `requirements` where (`requirements`.`status` = 'Not implemented') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `low`
--

/*!50001 DROP VIEW IF EXISTS `low`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `low` AS select `requirements`.`requirement_number` AS `requirement_number`,`requirements`.`requirement_text` AS `requirement_text`,`requirements`.`status` AS `status` from `requirements` where (`requirements`.`priority_text` = 'Low') */;
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

-- Dump completed on 2023-07-25  1:27:54
