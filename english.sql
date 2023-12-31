-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: english
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `applications`
--

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES (1,'2023-11-10 18:24:38','asdasd',1111,'narek.muradyan97@gmail.com'),(2,'2023-11-10 18:24:38','asdasd',1111,'narek.muradyan97@gmail.com'),(3,'2023-11-10 18:27:37','asdasdasd',123123123,'asdasda@gmail.com'),(4,'2023-11-10 18:28:18','asdasdasd',123123123,'asdasda@gmail.com'),(5,'2023-11-10 18:28:29','asdasdasd',123123123,'asdasda@gmail.com'),(6,'2023-11-10 18:28:48','asdasdasd',123123123,'asdasda@gmail.com'),(7,'2023-11-11 16:12:24','Narek Muradyan',98544922,'narek.muradyan97@gmail.com'),(8,'2023-11-11 16:12:43','Narek Muradyan',985449228,'narek.muradyan97@gmail.com'),(9,'2023-11-11 16:39:00','Narek Muradyan',213213123,'narek.muradyan97@gmail.com'),(10,'2023-11-11 16:42:33','Narek Muradyan',123123123,'narek.muradyan97@gmail.com'),(11,'2023-11-11 16:51:32','Narek Muradyan',213213123,'narek.muradyan97@gmail.com'),(12,'2023-11-11 16:53:14','Narek Muradyan',123123123,'narek.muradyan97@gmail.com'),(13,'2023-11-11 16:54:29','Narek',98544922,'gmail@gmail.com'),(14,'2023-11-11 16:58:10','Narek',98544922,'narek.muradyan97@gmil.com'),(15,'2023-11-11 17:24:18','Narek Muradyan',122133123,'narek.muradyan97@gmail.com');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `label` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü1',7900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╨╛╨┤╨╕╨╜. Lorem ipsum dolor sit amet','hit'),(2,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü2',8900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╨┤╨▓╨░. consectetur adipiscing elit','popular'),(3,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü3',9900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╤é╤Ç╨╕. sed do eiusmod tempor incididunt ut','popular'),(4,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü4',8900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╤ç╨╡╤é╤ï╤Ç╨╡. labore et dolore magna aliqua','popular'),(5,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü5',9900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╨┐╤Å╤é╤î. Ut enim ad minim veniam','new'),(6,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü6',7900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╤ê╨╡╤ü╤é╤î. quis nostrud exercitation ullamco laboris',NULL),(7,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü7',7900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╤ü╨╡╨╝╤î. nisi ut aliquip ex ea commodo consequat',NULL),(8,'╨í╨┐╨╡╤å╨║╤â╤Ç╤ü8',9900,'╨₧╨┐╨╕╤ü╨░╨╜╨╕╨╡ ╤ü╨┐╨╡╤å╨║╤â╤Ç╤ü╨░ ╨╜╨╛╨╝╨╡╤Ç ╨▓╨╛╤ü╨╡╨╝╤î. Duis aute irure dolor in reprehenderit',NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promo_prices`
--

DROP TABLE IF EXISTS `promo_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promo_prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `promo_id` varchar(45) DEFAULT NULL,
  `order` int DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `oldprice` int DEFAULT NULL,
  `months` int DEFAULT NULL,
  `prepay` int DEFAULT NULL,
  `link_ru` varchar(255) DEFAULT NULL,
  `link_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promo_prices`
--

LOCK TABLES `promo_prices` WRITE;
/*!40000 ALTER TABLE `promo_prices` DISABLE KEYS */;
INSERT INTO `promo_prices` VALUES (1,'test',1,'╨₧╨┤╨╕╨╜ ╨║╤â╤Ç╤ü',10900,21900,2,900,'http://example.com/pay/ru/1','http://example.com/pay/en/1'),(2,'test',2,'╨ö╨▓╨░ ╨║╤â╤Ç╤ü╨░',21900,48900,4,900,'http://example.com/pay/ru/2','http://example.com/pay/en/2'),(3,'test',3,'╨ó╤Ç╨╕ ╨║╤â╤Ç╤ü╨░',28900,74900,6,900,'http://example.com/pay/ru/3','http://example.com/pay/en/3'),(4,'test',4,'╨ƒ╤Å╤é╤î ╨║╤â╤Ç╤ü╨╛╨▓',44900,124900,10,900,'http://example.com/pay/ru/4','http://example.com/pay/en/4');
/*!40000 ALTER TABLE `promo_prices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-12 16:31:40
