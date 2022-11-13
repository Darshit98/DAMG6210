-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: assignment2_schema
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `university` (
  `tweet_id` int NOT NULL,
  `uni_name` varchar(45) NOT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `course` varchar(45) DEFAULT NULL,
  `min_gpa` varchar(45) DEFAULT NULL,
  `min_gre` varchar(45) DEFAULT NULL,
  `min_cgpa` varchar(45) DEFAULT NULL,
  `min_toefl` varchar(45) DEFAULT NULL,
  `min_ielts` varchar(45) DEFAULT NULL,
  `fall_deadline` date DEFAULT NULL,
  `university_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tweet_id`),
  CONSTRAINT `tweet_fk3` FOREIGN KEY (`tweet_id`) REFERENCES `tweet_table` (`tweet_ids`),
  CONSTRAINT `tweet_ids_fk3` FOREIGN KEY (`tweet_id`) REFERENCES `tweet_table` (`tweet_ids`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `university`
--

LOCK TABLES `university` WRITE;
/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` VALUES (1591334,'Northeastern University','Boston','Massachusetts','Information Systems, Engineering Management','3','300','7','80','6.5','2023-01-15','https://t.co/uzYtrgyw7q'),(15913234,'University of Virginia','Charlottesville','Virginia','Computer Science, Supply Chain Management','3','300','7','80','6.5','2023-01-15','https://t.co/uzYtrgyw7q'),(159127255,'California Institute of Technology','Pasadena','California','Computer Science','3.5','310','6.5','75','6.5','2023-03-31','https://t.co/J6dItz9LBS');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-12 23:47:28
