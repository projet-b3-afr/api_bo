-- MariaDB dump 10.19  Distrib 10.10.2-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: projet_base
-- ------------------------------------------------------
-- Server version	10.10.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(5000) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(0,'iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAIAAAD+THXTAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAASnSURBVGhD7ZqxaxRBFMb9Q3LEaM4kBpQoCAELwcpCEMQqNlpaiSCiIFjYCgoprC0sBHuxEf+dYDZeSGIUNH7nm7x7vtmZfW/O3eTkPj5kd2Zndn47b97sbTxx8N9pijQJmiJF+vHp89bqlc2Zefy7/+59KD1SOZAw+u1ba3LcKKnOnNvs9YFEPg5gDqStlVUMujq9TKdDnrMXJI/0EbI5kHi4OA48M/NfBEbKwPv25i110oFKkJiHvPv4KV2wt/6aCzNuewJLkGp5pIxs5H9OWILEruVR+rW/v/PgkWqY95iQ5UgWnlgdTGA5UigtEgaK4aKTxuxSnVz0UhUilU0RhNRCMCnXQ/b61flLRjYrEobCNyjjaYRRrmGbW7JQWZFonyWHIo9U3od37t1H5gjVdULt12s3ZJOhDVRWJO608iPFPK55VhkFry95KjcSHIpsUjxj5kk80OErWK+/8/BJqIvUOpKM2OKkQhqCiVfKUBqpdSRuNSYPabB2hzsMRZHaRZJ5kkqwDCjvlW2jEHeYat4u0ijqEr9BYC8b0gM15J85Su0iyVZ528EatxMTEn7tcC+pjmolW7GxI+29eKUK4cbsDMlITi1OExI/mGEOTQexkrw9XDsC156j9oNQGsmExL2QU0Es5dqOJFiq8+8fPho7LEGCGydKRrzlhUNS4TiUHurnxgZQ+YL8A/Ihcb/5CIFGTf78G0qz2n32PDSJJoqr4DwP5ENSoQ+nMpW6LJRmhfdUvl72KWMY4RdK0/Ih4TimsrgxUEkyCqjEmBKk3EiQl4pij5zff2TPVFLwiliCxCqbMXJjxOJY7odGHmgspIwkbeYDQwzGVTLksDuHaoPaQoKq2QVuSF9bU7MqwbhQLqH871+lFpF2X65zQxg8oaKOjXcFzhBse8iRfEiZlV0rGXIYq/oyrsAoy6lCV8iRTEj85OiudvHI2HhhDXWHkgw0k3wKu0KOZEKSdw1FNlETlR5iKvnegKzAV3pDjmRCgvg24dwmboWHvX37Lp+qRCffG6rFFT4O1U51hIRjRaVimGObPbh8NdQ51R0SBCr5VwwZgfLFlFywikidIpHk6JlKxh6Zygt0BEgqAnld4VgmErq4QG4k19bErcL5oeJ1hW75FC7YjlhWJF6+alnnxUMM50JqXVVzS3wMFy8kyIpUsDXJHSYURVLvCuSy7YhlRYL4luG8SY0f3EjqL7mWDxV5tYjE12eeuvrRSg51pWoLyRJ1SAkxD+zKQLEcSJwh6OUyr8aoq/3gSnZloFgOpMxHKaXMqyeqsBFxLVl+nCCPM1EOJLnBh6KEaqcIo4xh2ERVtlUoOZAguh+ceYpqimqnhcyTQwe4WOZ0S3jXyofET3Gz16+lAsBoxaf/plSdGm2szEM92MM7JQfScLjLF+l+Q88thQqhEHIJGPqPATIsFQ+EC/jBlU2UFemvx0+jmV1QEyVDTlkOmgtjHtKYE2VF4keb+SjXhsPtPTIhycevFnH3Vj/yY5mQZPSTO54r5XxAmpBGia7J8cJQohkeXL8pW3mdv4sJyRJpjTCdyZoeJkhTpEnQFGkSNEWaBE2Rjr8ODn4DUdnOXEitHq0AAAAASUVORK5CYII=','vvv@gmail.com',1,'grouds',NULL),
(1,'iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAIAAAD+THXTAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAASnSURBVGhD7ZqxaxRBFMb9Q3LEaM4kBpQoCAELwcpCEMQqNlpaiSCiIFjYCgoprC0sBHuxEf+dYDZeSGIUNH7nm7x7vtmZfW/O3eTkPj5kd2Zndn47b97sbTxx8N9pijQJmiJF+vHp89bqlc2Zefy7/+59KD1SOZAw+u1ba3LcKKnOnNvs9YFEPg5gDqStlVUMujq9TKdDnrMXJI/0EbI5kHi4OA48M/NfBEbKwPv25i110oFKkJiHvPv4KV2wt/6aCzNuewJLkGp5pIxs5H9OWILEruVR+rW/v/PgkWqY95iQ5UgWnlgdTGA5UigtEgaK4aKTxuxSnVz0UhUilU0RhNRCMCnXQ/b61flLRjYrEobCNyjjaYRRrmGbW7JQWZFonyWHIo9U3od37t1H5gjVdULt12s3ZJOhDVRWJO608iPFPK55VhkFry95KjcSHIpsUjxj5kk80OErWK+/8/BJqIvUOpKM2OKkQhqCiVfKUBqpdSRuNSYPabB2hzsMRZHaRZJ5kkqwDCjvlW2jEHeYat4u0ijqEr9BYC8b0gM15J85Su0iyVZ528EatxMTEn7tcC+pjmolW7GxI+29eKUK4cbsDMlITi1OExI/mGEOTQexkrw9XDsC156j9oNQGsmExL2QU0Es5dqOJFiq8+8fPho7LEGCGydKRrzlhUNS4TiUHurnxgZQ+YL8A/Ihcb/5CIFGTf78G0qz2n32PDSJJoqr4DwP5ENSoQ+nMpW6LJRmhfdUvl72KWMY4RdK0/Ih4TimsrgxUEkyCqjEmBKk3EiQl4pij5zff2TPVFLwiliCxCqbMXJjxOJY7odGHmgspIwkbeYDQwzGVTLksDuHaoPaQoKq2QVuSF9bU7MqwbhQLqH871+lFpF2X65zQxg8oaKOjXcFzhBse8iRfEiZlV0rGXIYq/oyrsAoy6lCV8iRTEj85OiudvHI2HhhDXWHkgw0k3wKu0KOZEKSdw1FNlETlR5iKvnegKzAV3pDjmRCgvg24dwmboWHvX37Lp+qRCffG6rFFT4O1U51hIRjRaVimGObPbh8NdQ51R0SBCr5VwwZgfLFlFywikidIpHk6JlKxh6Zygt0BEgqAnld4VgmErq4QG4k19bErcL5oeJ1hW75FC7YjlhWJF6+alnnxUMM50JqXVVzS3wMFy8kyIpUsDXJHSYURVLvCuSy7YhlRYL4luG8SY0f3EjqL7mWDxV5tYjE12eeuvrRSg51pWoLyRJ1SAkxD+zKQLEcSJwh6OUyr8aoq/3gSnZloFgOpMxHKaXMqyeqsBFxLVl+nCCPM1EOJLnBh6KEaqcIo4xh2ERVtlUoOZAguh+ceYpqimqnhcyTQwe4WOZ0S3jXyofET3Gz16+lAsBoxaf/plSdGm2szEM92MM7JQfScLjLF+l+Q88thQqhEHIJGPqPATIsFQ+EC/jBlU2UFemvx0+jmV1QEyVDTlkOmgtjHtKYE2VF4keb+SjXhsPtPTIhycevFnH3Vj/yY5mQZPSTO54r5XxAmpBGia7J8cJQohkeXL8pW3mdv4sJyRJpjTCdyZoeJkhTpEnQFGkSNEWaBE2Rjr8ODn4DUdnOXEitHq0AAAAASUVORK5CYII=','floloswipe23@gmail.com',0,'floloSwipe2',NULL),
(2,'iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAIAAAD+THXTAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAASnSURBVGhD7ZqxaxRBFMb9Q3LEaM4kBpQoCAELwcpCEMQqNlpaiSCiIFjYCgoprC0sBHuxEf+dYDZeSGIUNH7nm7x7vtmZfW/O3eTkPj5kd2Zndn47b97sbTxx8N9pijQJmiJF+vHp89bqlc2Zefy7/+59KD1SOZAw+u1ba3LcKKnOnNvs9YFEPg5gDqStlVUMujq9TKdDnrMXJI/0EbI5kHi4OA48M/NfBEbKwPv25i110oFKkJiHvPv4KV2wt/6aCzNuewJLkGp5pIxs5H9OWILEruVR+rW/v/PgkWqY95iQ5UgWnlgdTGA5UigtEgaK4aKTxuxSnVz0UhUilU0RhNRCMCnXQ/b61flLRjYrEobCNyjjaYRRrmGbW7JQWZFonyWHIo9U3od37t1H5gjVdULt12s3ZJOhDVRWJO608iPFPK55VhkFry95KjcSHIpsUjxj5kk80OErWK+/8/BJqIvUOpKM2OKkQhqCiVfKUBqpdSRuNSYPabB2hzsMRZHaRZJ5kkqwDCjvlW2jEHeYat4u0ijqEr9BYC8b0gM15J85Su0iyVZ528EatxMTEn7tcC+pjmolW7GxI+29eKUK4cbsDMlITi1OExI/mGEOTQexkrw9XDsC156j9oNQGsmExL2QU0Es5dqOJFiq8+8fPho7LEGCGydKRrzlhUNS4TiUHurnxgZQ+YL8A/Ihcb/5CIFGTf78G0qz2n32PDSJJoqr4DwP5ENSoQ+nMpW6LJRmhfdUvl72KWMY4RdK0/Ih4TimsrgxUEkyCqjEmBKk3EiQl4pij5zff2TPVFLwiliCxCqbMXJjxOJY7odGHmgspIwkbeYDQwzGVTLksDuHaoPaQoKq2QVuSF9bU7MqwbhQLqH871+lFpF2X65zQxg8oaKOjXcFzhBse8iRfEiZlV0rGXIYq/oyrsAoy6lCV8iRTEj85OiudvHI2HhhDXWHkgw0k3wKu0KOZEKSdw1FNlETlR5iKvnegKzAV3pDjmRCgvg24dwmboWHvX37Lp+qRCffG6rFFT4O1U51hIRjRaVimGObPbh8NdQ51R0SBCr5VwwZgfLFlFywikidIpHk6JlKxh6Zygt0BEgqAnld4VgmErq4QG4k19bErcL5oeJ1hW75FC7YjlhWJF6+alnnxUMM50JqXVVzS3wMFy8kyIpUsDXJHSYURVLvCuSy7YhlRYL4luG8SY0f3EjqL7mWDxV5tYjE12eeuvrRSg51pWoLyRJ1SAkxD+zKQLEcSJwh6OUyr8aoq/3gSnZloFgOpMxHKaXMqyeqsBFxLVl+nCCPM1EOJLnBh6KEaqcIo4xh2ERVtlUoOZAguh+ceYpqimqnhcyTQwe4WOZ0S3jXyofET3Gz16+lAsBoxaf/plSdGm2szEM92MM7JQfScLjLF+l+Q88thQqhEHIJGPqPATIsFQ+EC/jBlU2UFemvx0+jmV1QEyVDTlkOmgtjHtKYE2VF4keb+SjXhsPtPTIhycevFnH3Vj/yY5mQZPSTO54r5XxAmpBGia7J8cJQohkeXL8pW3mdv4sJyRJpjTCdyZoeJkhTpEnQFGkSNEWaBE2Rjr8ODn4DUdnOXEitHq0AAAAASUVORK5CYII=','show@gmail.com',1,'show le nul',NULL),
(3,'iVBORw0KGgoAAAANSUhEUgAAAEYAAABGCAIAAAD+THXTAAAB1klEQVRoge3ZYU+CQBjA8bu4eYHLEBzocs2Xze//GfwIrheuNYqS7NQUvE5P6AVbsXoRQcse9/xeCZ7P7s9E3aSj0Ygcl5NDb+D3YRIEmAQBJkGASRBgEgSYBAEmQYBJEGASBJgEASZBgEkQYBIEmATBESaxCq+5Ho+Lh1fDISFEKfUQhrvtlnPudbumaf7xqHe0zv9L6/V6E8d+r0cIeQxDgzHHdedC7Ha7i37/UKOqv/HSNBWzWcfz8kOllOO6jDG73VZKFVfeBUGSJISQOI7vg6DOqDKqJ4nn55ZtG4aRH2qt88eMsb3WxZWe7z9Np1mWzaLI63brjCqjYlKWZS/LZavVej+jtaaUEkIopfv9vriYc25ZVnB7azWbjUajzqgyKiYlScI5Z+zj08UwjDRN8y0Wz+fariuldFy3/qhvVUxar1ZnhetKCDEYy6+o1vrrPhZCmKY5F6L+qG9VTFJK8dPT4pmmZc2F0FovhOCcf1q8kfJyMNgkyfbL7f6jUWVUTNoq9emuOLftVylvJpONlE6nU3zqKYo836eUer4fRVGdUWXU+l76n47wBxEmQYBJEGASBJgEASZBgEkQYBIEmAQBJkGASRBgEgSYBAEmQYBJELwB7pwFE+EErXQAAAAASUVORK5CYII=','marcel@gmail.com',0,'mimi matty',NULL),
(10,NULL,'ff',1,'dd','$2a$10$D/2jioXpZDjMu9RNzr0bm.znCaEMPiehMNhEI7pgRnc2kMt8kgSfC'),
(11,NULL,'aa',1,'aa','$2a$10$YboGpDyq7u7uzKu9rv9Z5OAd2.4W9pKSUpTJYh5M4qe2WwPtPrh0e');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL AUTO_INCREMENT,
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES
(1,'jojo','fitness','livreur');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorite` (
  `favorite_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(8) DEFAULT NULL,
  `product_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `fk_rate_customers` (`customer_id`),
  KEY `fk_rate_products` (`product_id`),
  CONSTRAINT `fk_rate_customers` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `fk_rate_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES
(1,10,1),
(3,10,5),
(4,2,1);
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `date_order` date DEFAULT NULL,
  `customer_id` int(8) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `employee_id` int(8) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_order_customer` (`customer_id`),
  CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES
(9,'2023-04-19',3,'0',0),
(10,'2023-04-19',10,'0',0),
(11,'2023-04-19',10,'0',0),
(12,'2023-04-20',10,'0',0),
(18,'2023-04-20',11,'0',0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_order`
--

DROP TABLE IF EXISTS `product_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_order` (
  `product_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(8) DEFAULT NULL,
  `product_id` int(8) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_order_id`),
  KEY `fk_order_product` (`order_id`),
  KEY `fk_products` (`product_id`),
  CONSTRAINT `fk_order_product` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `fk_products` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_order`
--

LOCK TABLES `product_order` WRITE;
/*!40000 ALTER TABLE `product_order` DISABLE KEYS */;
INSERT INTO `product_order` VALUES
(8,9,1,2),
(9,10,1,2),
(10,10,4,1),
(11,10,6,5),
(12,11,1,25),
(13,12,1,25),
(14,18,1,1);
/*!40000 ALTER TABLE `product_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` float DEFAULT NULL,
  `promotion` tinyint(1) DEFAULT NULL,
  `categorie` varchar(50) DEFAULT NULL,
  `stock` int(10) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` varchar(3000) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES
(1,'Diablo',30,50,'Web Browser',127,'https://www.freetogame.com/g/521/thumbnail.jpg','Built for mobile and also released dhe gaps between Diablo II and III in an MMOARPG environment.'),
(2,'Lost Ark',10.09,0,'PC (Windows)',250,'https://www.freetogame.com/g/517/thumbnail.jpg','Smilegateâ€™s free-to-play multiplayer ARPG is a massive adventure filled with lands waiting to be explored, people waiting to be met, and an ancient evil waiting to be destroyed.'),
(3,'PUBG: BATTLEGROUNDS',11.92,0,'PC (Windows)',137,'https://www.freetogame.com/g/516/thumbnail.jpg','Get into the action in one of the longest running battle royale games PUBG Battlegrounds.'),
(4,'Enlisted',45.7,0,'PC (Windows)',352,'https://www.freetogame.com/g/508/thumbnail.jpg','Get ready to command your own World War II military squad in Gaijin and Darkflow Softwareâ€™s MMO squad-based shooter Enlisted. '),
(5,'Forge of Empires',41.05,0,'Web Browser',449,'https://www.freetogame.com/g/345/thumbnail.jpg','A free to play 2D browser-based online strategy game, become the leader and raise your city.'),
(6,'Drakensang Online',8.55,0,'Web Browser',353,'https://www.freetogame.com/g/427/thumbnail.jpg','A free to play browser-based top-down hack-and-slash 3D MMORPG similar to games in the Diablo series.'),
(7,'MultiVersus',17.96,0,'PC (Windows)',163,'https://www.freetogame.com/g/525/thumbnail.jpg','The Warner Bros lineup meets Smash in Player First Gamesâ€™ MultiVersus.'),
(8,'Genshin Impact',39.4,0,'PC (Windows)',423,'https://www.freetogame.com/g/475/thumbnail.jpg','If youâ€™ve been looking for a game to scratch that open-world action RPG itch, one with perhaps a bit of Asian flair, then youâ€™re going to want to check out miHoYoâ€™s Genshin Impact.'),
(9,'Fall Guys',46.85,0,'PC (Windows)',59,'https://www.freetogame.com/g/523/thumbnail.jpg','Play the most competitive massively multiplayer party royale game featuring beans ever for free on a variety of platforms. '),
(10,'Game Of Thrones Winter Is Coming',40.67,0,'Web Browser',307,'https://www.freetogame.com/g/340/thumbnail.jpg','A free-to-play browser-based RTS based on the George R.R. Martin novels and popular HBO series.'),
(11,'Dark Knight',36.12,0,'Web Browser',308,'https://www.freetogame.com/g/445/thumbnail.jpg','A browser-based fantasy MMOARPG wherein players take on the role of a devil hunter descended from the gods.'),
(12,'Elvenar',5.18,0,'Web Browser',87,'https://www.freetogame.com/g/347/thumbnail.jpg','A browser based city-building strategy MMO set in the fantasy world of Elvenar.'),
(13,'Neverwinter',43.42,0,'PC (Windows)',375,'https://www.freetogame.com/g/11/thumbnail.jpg','A free-to-play 3D action MMORPG based on the acclaimed Dungeons & Dragons fantasy roleplaying game. '),
(14,'Dark Orbit Reloaded',13.28,0,'Web Browser',337,'https://www.freetogame.com/g/380/thumbnail.jpg','A browser-based 3D space-combat MMO with a massive playerbase!'),
(15,'Halo Infinite',41.59,0,'PC (Windows)',24,'https://www.freetogame.com/g/515/thumbnail.jpg','For the first time ever, a free-to-play Halo experience is available in the form of Halo Infiniteâ€™s multiplayer.'),
(16,'League of Angels - Heaven\'s Fury',40.68,0,'Web Browser',413,'https://www.freetogame.com/g/458/thumbnail.jpg','A free-to-play, browser-based fantasy online action RPG based loosely on Western mythology!'),
(17,'Eternal Fury',38.52,0,'Web Browser',126,'https://www.freetogame.com/g/455/thumbnail.jpg','A free-to-play ARPG from R2 Games!'),
(18,'Flyff Universe',5.79,0,'Web Browser',169,'https://www.freetogame.com/g/522/thumbnail.jpg','Get the full Flyff experience on any platform with the free-to-play browser-based MMORPG Flyff Universe.'),
(19,'Phantasy Star Online 2 New Genesis',33.26,0,'PC (Windows)',66,'https://www.freetogame.com/g/511/thumbnail.jpg','The legacy of Phantasy Star Online 2 continues a thousand years later!'),
(20,'Crossout',39.8,0,'PC (Windows)',237,'https://www.freetogame.com/g/5/thumbnail.jpg','A post-apocalyptic MMO vehicle combat game! '),
(21,'World of Warships',6.93,0,'PC (Windows)',399,'https://www.freetogame.com/g/9/thumbnail.jpg','A 3D free to play naval action-themed MMO from the creators of World of Tanks! '),
(22,'War Thunder',43.38,0,'PC (Windows)',438,'https://www.freetogame.com/g/12/thumbnail.jpg','A MMO shooter that puts you in command of hundreds of the finest combat vehicles of World War II.'),
(23,'World of Tanks',41.79,0,'PC (Windows)',232,'https://www.freetogame.com/g/2/thumbnail.jpg','If you like blowing up tanks, with a quick and intense game style you will love this game!'),
(24,'Tower of Fantasy',43.68,0,'PC (Windows)',456,'https://www.freetogame.com/g/529/thumbnail.jpg','Tower of Fantasy is a 3D open-world RPG, anime-style sci-fi MMO RPG game with unique characters and beautiful open vistas!'),
(25,'Noahâ€™s Heart',48.81,0,'PC (Windows)',69,'https://www.freetogame.com/g/528/thumbnail.jpg','Noahâ€™s Heart is an open-world MMORPG game with a focus on exploration and socialization.'),
(26,'Valorant',39.28,0,'PC (Windows)',200,'https://www.freetogame.com/g/466/thumbnail.jpg','Test your mettle in Riot Gamesâ€™ character-based FPS shooter Valorant.'),
(27,'Phantasy Star Online 2',37.07,0,'PC (Windows)',183,'https://www.freetogame.com/g/467/thumbnail.jpg','Welcome to ARKS, and elite task force searching dangerous planets for the corrupted Falspawn in Phantasy Star 2 Online, Segaâ€™s popular, free-to-play sci-fi MMORPG.'),
(28,'Call Of Duty: Warzone',35.71,0,'PC (Windows)',161,'https://www.freetogame.com/g/452/thumbnail.jpg','A standalone free-to-play battle royale and modes accessible via Call of Duty: Modern Warfare.'),
(29,'Destiny 2',29.92,0,'PC (Windows)',405,'https://www.freetogame.com/g/21/thumbnail.jpg','A free-to-play multiplayer Sci-Fi MMOFPS from Bungie.'),
(30,'Dauntless',22.06,0,'PC (Windows)',236,'https://www.freetogame.com/g/1/thumbnail.jpg','A free-to-play, co-op action RPG with gameplay similar to Monster Hunter.'),
(31,'Apex Legends',14.82,0,'PC (Windows)',339,'https://www.freetogame.com/g/23/thumbnail.jpg','A free-to-play strategic battle royale game featuring 60-player matches and team-based play. '),
(32,'Fortnite',37.99,0,'PC (Windows)',317,'https://www.freetogame.com/g/57/thumbnail.jpg','A free-to-play, standalone mode of Epic Game\'s Fortnite. '),
(33,'Albion Online',48.5,0,'PC (Windows)',467,'https://www.freetogame.com/g/449/thumbnail.jpg','A free-to-play cross-platform sandbox MMO developed and published by Sandbox Interactive GmbH. '),
(34,'Blade and Soul',39.52,0,'PC (Windows)',18,'https://www.freetogame.com/g/6/thumbnail.jpg','A free-to-play martial arts MMORPG that tasks players with learning combination attacks.'),
(35,'Brawlhalla',44.4,0,'PC (Windows)',136,'https://www.freetogame.com/g/212/thumbnail.jpg','A free-to-play 2D platform fighter inspired by the Smash Bros.'),
(36,'Trove',37.91,0,'PC (Windows)',421,'https://www.freetogame.com/g/8/thumbnail.jpg','A free to play Sandbox massively multiplayer online role-playing game! '),
(37,'Heroes & Generals',5.65,0,'PC (Windows)',274,'https://www.freetogame.com/g/202/thumbnail.jpg','A World War II-based MMOFPS that mixes infantry, armor, and aircraft.'),
(38,'Warface',36.27,0,'PC (Windows)',416,'https://www.freetogame.com/g/207/thumbnail.jpg','A free-to-play multiplayer online FPS from Crytek, makers of the Far Cry and Crysis series of games.'),
(39,'Smite',8.26,0,'PC (Windows)',435,'https://www.freetogame.com/g/217/thumbnail.jpg','A popular free-to-play 3D MOBA where you take on the role of an ancient god.'),
(40,'Warframe',10.53,0,'PC (Windows)',6,'https://www.freetogame.com/g/3/thumbnail.jpg','A cooperative free-to-play third person online action shooter set in an stunning sci-fi world. '),
(41,'PlanetSide 2',35.77,0,'PC (Windows)',194,'https://www.freetogame.com/g/243/thumbnail.jpg','A free-to-play open-world FPS that pits three factions against each other in a never-ending war.'),
(42,'Guild Wars 2',44.89,0,'PC (Windows)',135,'https://www.freetogame.com/g/13/thumbnail.jpg','A free-to-play MMORPG, the follow-up to ArenaNet\'s popular Guild Wars. '),
(43,'Star Trek Online',35.97,0,'PC (Windows)',317,'https://www.freetogame.com/g/14/thumbnail.jpg','A free-to-play, 3D, Sci-Fi MMORPG based on the popular Star Trek series.'),
(44,'RuneScape',9.5,0,'PC (Windows), Web Browser',301,'https://www.freetogame.com/g/433/thumbnail.jpg','A popular 3D browser MMORPG boasting a huge player base and 15 years of content.'),
(45,'Kartrider: Drift',36.69,0,'PC (Windows)',360,'https://www.freetogame.com/g/546/thumbnail.jpg','A free-to-play multiplayer online racing game set in the Kartrider franchise.'),
(46,'Warlander',26.7,0,'PC (Windows)',127,'https://www.freetogame.com/g/547/thumbnail.jpg','A medieval-style combat game with a selection of modes and characters.'),
(47,'Fangs',42.04,0,'PC (Windows)',177,'https://www.freetogame.com/g/545/thumbnail.jpg','A 4v4 MOBA with hero-specific strategies.'),
(48,'Marvel Snap',18.38,0,'PC (Windows)',214,'https://www.freetogame.com/g/541/thumbnail.jpg','A fast paced strategy card game set in the Marvel universe.'),
(49,'World Boss',15.85,0,'PC (Windows)',464,'https://www.freetogame.com/g/542/thumbnail.jpg','An experimental FPS based on io and roguelike gameplay.'),
(50,'Omega Strikers',45.81,0,'PC (Windows)',379,'https://www.freetogame.com/g/536/thumbnail.jpg','A 3v3 socccer-style game with knockouts.'),
(51,'Gundam Evolution',7.76,0,'PC (Windows)',19,'https://www.freetogame.com/g/537/thumbnail.jpg','A 6v6 team-based shooter based on the Gundam multiverse'),
(52,'Deathverse: Let It Die',5.19,0,'PC (Windows)',455,'https://www.freetogame.com/g/539/thumbnail.jpg','A game of survival where contestants are pit against each other in a life or death game show.'),
(53,'Galahad 3093',28.82,0,'PC (Windows)',461,'https://www.freetogame.com/g/544/thumbnail.jpg','A 12v12 team shooter featuring mechs based on Arthurian legend.'),
(54,'Aero Tales Online',5.81,0,'PC (Windows)',164,'https://www.freetogame.com/g/527/thumbnail.jpg','Aero Tales Online: The World is a free-to-play 3D anime-style MMORPG with PvP and PvE elements. The game revolves around the â€œmysterious story of the Key of Skylightâ€.'),
(55,'Magic Spellslingers',30.96,0,'PC (Windows)',454,'https://www.freetogame.com/g/531/thumbnail.jpg','Magic Spellslingers is the latest entry based on Witzards of the Coastâ€™s popular card game Magic: The Gathering.'),
(56,'A.V.A Global',41.06,0,'PC (Windows)',144,'https://www.freetogame.com/g/533/thumbnail.jpg','A.V.A is a free-to-play online first-person shooter with multiple game modes, unique customizations, as well as PvP and PvE gameplay.'),
(57,'Lost Light',6.41,0,'PC (Windows)',148,'https://www.freetogame.com/g/534/thumbnail.jpg','A post-apocalyptic shooter built around creating a realistic experience.'),
(58,'Temperia: Soul of Majestic',22.26,0,'PC (Windows)',16,'https://www.freetogame.com/g/524/thumbnail.jpg','Fans of collectible card games, are you looking for something a bit different from the normal fare? Then a peek at Moonwolf Entertainment and A2 Softworksâ€™ Temperia: Soul of Majestic might be in order.'),
(59,'Chimeraland',5.35,0,'PC (Windows)',472,'https://www.freetogame.com/g/526/thumbnail.jpg','Explore the open-world sandbox MMO game set in a mythical world. Play as one of a large number of races, from jelly-fish to dragon-person â€“ or even a regular old human if thatâ€™s your thing. Explore the land, gather resources, craft items, build homes and more.'),
(60,'World of Runes',36.2,0,'Web Browser',319,'https://www.freetogame.com/g/532/thumbnail.jpg','An adorable anime-style MMO featuring cute pets and collectable cards.'),
(61,'Overwatch 2',9.72,0,'PC (Windows)',307,'https://www.freetogame.com/g/540/thumbnail.jpg','A hero-focused first-person team shooter from Blizzard Entertainment.'),
(62,'Space Punks',38.78,0,'PC (Windows)',458,'https://www.freetogame.com/g/519/thumbnail.jpg','Space Punks is a sci-fi co-op looter shooter with graphics and humor that will likely appeal to the Borderlands fans among us.'),
(63,'Swords of Legends Online',19.4,0,'PC (Windows)',429,'https://www.freetogame.com/g/518/thumbnail.jpg','Explore a fantasy world based on Chinese mythology in Gameforgeâ€™s action MMORPG Swords of Legends Online!'),
(64,'Super Squad',19.53,0,'PC (Windows)',23,'https://www.freetogame.com/g/513/thumbnail.jpg','Prepare yourself. Itâ€™s time for Mayhem. Super Squad is a multi-player online shoot-â€™em-up (or MOSH)!'),
(65,'Sherwood Extreme',16.55,0,'PC (Windows)',74,'https://www.freetogame.com/g/512/thumbnail.jpg','High action arcade shooter Sherwood Extreme sends players on a mission to save the kingdom!'),
(66,'Smash Legends',48.56,0,'PC (Windows)',199,'https://www.freetogame.com/g/509/thumbnail.jpg','Classic fairy tales get wild with 5minlab and LINE Games Corporationâ€™s brawl-action game Smash Legends.'),
(67,'Drifters Loot the Galaxy',8.73,0,'PC (Windows)',112,'https://www.freetogame.com/g/510/thumbnail.jpg','Grab your Driftpacs and grappling hooks, itâ€™s time to loot. Pick a character and dive into Blind Squirrelâ€™s team-based shooter, Drifters Loot the Galaxy.'),
(68,'Primordials: Battle of Gods',43.82,0,'PC (Windows)',324,'https://www.freetogame.com/g/502/thumbnail.jpg','Build armies and fight for control of the realm in Global Dodo Entertainmentâ€™s 1v1 strategy game Primordials: Battle of Gods. '),
(69,'Super Mecha Champions',34.03,0,'PC (Windows)',143,'https://www.freetogame.com/g/507/thumbnail.jpg','Super Mecha Champions is a PC port of the mobile anime PvP game from NetEease, featuring a variety of modes but focusing on battle royale.'),
(70,'Chroma: Bloom And Blight',27.1,0,'PC (Windows)',301,'https://www.freetogame.com/g/500/thumbnail.jpg','Competitive card game fans have a new, completely free option to add to their list. '),
(71,'Blankos Block Party',28.75,0,'PC (Windows)',419,'https://www.freetogame.com/g/498/thumbnail.jpg','What happens when you take the vinyl collectible toy experience and combine it with an open-world multiplayer game? You get Blankos Block Party!'),
(72,'Slapshot: Rebound',32.3,0,'PC (Windows)',260,'https://www.freetogame.com/g/499/thumbnail.jpg','Do you like hockey? How about physic-based multiplayer, arcade-style sports games with cute graphics? Well, this is the one for you.'),
(73,'Rogue Company',39.96,0,'PC (Windows)',164,'https://www.freetogame.com/g/476/thumbnail.jpg','From Hi-Rez Studios, the team that brought you Smite and Paladins, comes Rogue Company, a cross-platform, competitive team-based third person shooter.'),
(74,'Eternal Return: Black Survival',18.52,0,'PC (Windows)',262,'https://www.freetogame.com/g/477/thumbnail.jpg',''),
(75,'Blood of Steel',37.28,0,'PC (Windows)',8,'https://www.freetogame.com/g/479/thumbnail.jpg','Blood of Steel is an online competitive strategy game featuring some of the most well-known figures throughout medieval history. Choose your general â€“ a Crusader, Viking, Ninja or one of those from the Three Kingdoms. Build your kingdom and command armies in epic PvP battles using classic medieval warfare tactics.'),
(76,'Spellbreak',46.67,0,'PC (Windows)',292,'https://www.freetogame.com/g/473/thumbnail.jpg','Spellbreak is a multiplayer, multi-platform battle-royale where player take on the role of a â€œbattlemageâ€ mastering elemental magic and using spells to compete against other players.'),
(77,'Rocket League',11.11,0,'PC (Windows)',466,'https://www.freetogame.com/g/474/thumbnail.jpg','Get your car-soccer gaming on for free with Psyonixâ€™s Rocket League. The popular competitive multi-player game is a popular offering with over 57 million players.'),
(78,'Armor Valor',16.18,0,'Web Browser',225,'https://www.freetogame.com/g/471/thumbnail.jpg','Build your empire with the help of mythical heroes and well thought out strategy in R2 Gamesâ€™ strategy RPG Armor Valor.'),
(79,'Unfortunate Spacemen',27.48,0,'PC (Windows)',76,'https://www.freetogame.com/g/469/thumbnail.jpg','Unfortunate Spacemen is a co-op multiplayer game about Shapeshifting with a Co-op Story Mode, lots of objectives and more!'),
(80,'Jade Goddess',16.43,0,'Web Browser',410,'https://www.freetogame.com/g/472/thumbnail.jpg','Jade Goddess is a free-to-play, browser based MMO inspired by Eastern mythology.'),
(81,'Shop Titans',19.91,0,'PC (Windows)',101,'https://www.freetogame.com/g/461/thumbnail.jpg','A free-to-play RPG shopkeeper simulation game where you are responsible for designing and maintaining your own shop.'),
(82,'Survivor Legacy',5.35,0,'Web Browser',220,'https://www.freetogame.com/g/463/thumbnail.jpg','Survivor Legacy is a free-to-play zombie-themed strategy game from R2 Games.'),
(83,'Bombergrounds: Battle Royale',12.57,0,'PC (Windows)',264,'https://www.freetogame.com/g/459/thumbnail.jpg','A free-to-play massively multiplayer battle Royale game inspired by the old-shool Bomberman games!'),
(84,'Darwin Project',10.67,0,'PC (Windows)',26,'https://www.freetogame.com/g/39/thumbnail.jpg','A free-to-play 10-player battle royale game set just prior to an impeding ice age.'),
(85,'Legends of Runeterra',44.51,0,'PC (Windows)',119,'https://www.freetogame.com/g/441/thumbnail.jpg','A free-to-play CCG based on Riot Games\' MOBA League of Legends.'),
(86,'CRSED: F.O.A.D.',29.68,0,'PC (Windows)',17,'https://www.freetogame.com/g/4/thumbnail.jpg',''),
(87,'Mirage Online Classic',28.29,0,'Web Browser',246,'https://www.freetogame.com/g/535/thumbnail.jpg','A browser-based free-to-play spiritual successor to 2001\'s Mirage Online.'),
(88,'Inferna',45.4,0,'PC (Windows)',10,'https://www.freetogame.com/g/436/thumbnail.jpg',''),
(89,'Ultimate Pirates',22.98,0,'Web Browser',471,'https://www.freetogame.com/g/443/thumbnail.jpg','A browser-based strategy MMO published for both desktop and mobile browsers by Gameforge.  '),
(90,'Fer.al',27.97,0,'PC (Windows)',364,'https://www.freetogame.com/g/501/thumbnail.jpg','If youâ€™ve ever wanted to be a creature of myth and hang out with other mytical creatures, Wildworksâ€™ Fer.al can help you live the dream.'),
(91,'Battle Breakers',9.55,0,'PC (Windows)',164,'https://www.freetogame.com/g/435/thumbnail.jpg','A multi-platform free-to-play RPG developed and published by Epic Games for PC and Android devices.  '),
(92,'Stay Out',19.71,0,'PC (Windows)',329,'https://www.freetogame.com/g/437/thumbnail.jpg','An MMORPG featuring urban exploration and shooter elements.'),
(93,'PC Futbol Legends',18.62,0,'PC (Windows)',272,'https://www.freetogame.com/g/439/thumbnail.jpg','An arcade soccer game inspired by cult arcade games from IDC games. '),
(94,'Vampire Empire',41.37,0,'Web Browser',206,'https://www.freetogame.com/g/440/thumbnail.jpg','A multiplayer strategy game that focuses on the war between vampires and werewolves. '),
(95,'Firestone Idle RPG',33.36,0,'Web Browser',460,'https://www.freetogame.com/g/468/thumbnail.jpg','Set in the fantasy world of Alandria, Firestone is an idle RPG in which players are tasked with building the best possible party of heroes and using them to defeat the undead and orcs that plague the world.'),
(96,'Mythgard',36.63,0,'PC (Windows)',379,'https://www.freetogame.com/g/505/thumbnail.jpg','Rhino Games Inc.â€™s CCG Mythgard combines cyberpunk with the heroes, gods, and creatures of the fantasy in a modern setting to create a world where magic competes against technology for control.'),
(97,'Legends of Aria',35.64,0,'PC (Windows)',66,'https://www.freetogame.com/g/446/thumbnail.jpg','A sandbox MMORPG featuring a skill-based system, content that will appeal to both PvE and PvP players, and a robust housing system.'),
(98,'Crystal Clash',32.53,0,'PC (Windows)',333,'https://www.freetogame.com/g/451/thumbnail.jpg','A free-to-play fantasy RTS developed by Crunchy Leaf Games. '),
(99,'Dota Underlords',27.23,0,'PC (Windows)',237,'https://www.freetogame.com/g/447/thumbnail.jpg','A free-to-play auto battler strategy game set in the world of Valve\'s Dota franchise.'),
(100,'Minion Masters',44.65,0,'PC (Windows)',495,'https://www.freetogame.com/g/19/thumbnail.jpg',''),
(101,'Splitgate: Arena Warfare',18.35,0,'PC (Windows)',260,'https://www.freetogame.com/g/20/thumbnail.jpg','A free-to-play multiplayer shooter developed and published by 1047 games. '),
(102,'Conqueror\'s Blade',36.77,0,'PC (Windows)',487,'https://www.freetogame.com/g/456/thumbnail.jpg','Command your own medieval army in Conqueror\'s Blade, a war simulator developed by Booming games.'),
(103,'Stein.world',38.52,0,'Web Browser',404,'https://www.freetogame.com/g/353/thumbnail.jpg','A free-to-play, browser-based online fantasy role playing game done in an old-school 16-bit style.'),
(104,'Kards',40.96,0,'PC (Windows)',288,'https://www.freetogame.com/g/438/thumbnail.jpg',''),
(105,'KurtzPel',26.53,0,'PC (Windows)',334,'https://www.freetogame.com/g/448/thumbnail.jpg','A free-to-play third-person action battle game from KOG Games.'),
(106,'The Third Age',45.38,0,'Web Browser',244,'https://www.freetogame.com/g/457/thumbnail.jpg','A free-to-play browser-based Strategy MMO game focused on story-based PvE gameplay!'),
(107,'Eternal',38.53,0,'PC (Windows)',132,'https://www.freetogame.com/g/91/thumbnail.jpg','A strategy card game designed to take the best elements of Magic the Gathering, Hearthstone, and Hex and combine them all into one game.'),
(108,'Artifact',8.62,0,'PC (Windows)',307,'https://www.freetogame.com/g/503/thumbnail.jpg','Valveâ€™s Artifact is two games in one. Whether youâ€™re looking for the original Dota 2 trading card game created with the help of card game designer Richard Garfield or something a little more streamlined, Artifact has both in one download.'),
(109,'World War 3',42.05,0,'PC (Windows)',139,'https://www.freetogame.com/g/538/thumbnail.jpg','A realistic multiplayer tactical FPS.'),
(110,'Combat Arms: Reloaded',46.38,0,'PC (Windows)',383,'https://www.freetogame.com/g/299/thumbnail.jpg','A free to play modern first person shooter with lots of maps and weapons!'),
(111,'Dreadnought',7.8,0,'PC (Windows)',10,'https://www.freetogame.com/g/68/thumbnail.jpg','A free-to-play combat flight simulator developed by Yager Development and published by Grey Box. '),
(112,'Spacelords',45.69,0,'PC (Windows)',234,'https://www.freetogame.com/g/28/thumbnail.jpg','A free-to-play 4v1 sci-fi shooter. '),
(113,'Ring of Elysium',32.96,0,'PC (Windows)',354,'https://www.freetogame.com/g/29/thumbnail.jpg','A free-to-play battle royale developed and published by Tencent Games. '),
(114,'Battlerite Royale',35.02,0,'PC (Windows)',109,'https://www.freetogame.com/g/450/thumbnail.jpg','A free to play battle royale set in the Battlerite universe.'),
(115,'Magic: The Gathering Arena',8.67,0,'PC (Windows)',380,'https://www.freetogame.com/g/454/thumbnail.jpg','A free-to-play digital recreation of Wizards of the Coast\'s popular collectible card game.'),
(116,'League of Angels 3',29.58,0,'Web Browser',229,'https://www.freetogame.com/g/341/thumbnail.jpg','A free-to-play turn-based strategy browser game developed and published by GTArcade Entertainment, Inc.'),
(117,'BlackShot: Revolution',34.05,0,'PC (Windows)',429,'https://www.freetogame.com/g/282/thumbnail.jpg','Get thrown into the fast-paced action of a virtual war zone and compete against other players.'),
(118,'Cosmos Invictus',20.63,0,'PC (Windows)',84,'https://www.freetogame.com/g/31/thumbnail.jpg','A strategic collectible card game developed and published by Pegnio Ltd. '),
(119,'Realm Royale Reforged',40.61,0,'PC (Windows)',229,'https://www.freetogame.com/g/36/thumbnail.jpg','A free-to-play fantasy-themed battle royale game based on Hi-Rez Studio\'s team shooter Paladins. '),
(120,'Empire: World War 3',45.88,0,'Web Browser',87,'https://www.freetogame.com/g/460/thumbnail.jpg',''),
(121,'Totally Accurate Battlegrounds',11.24,0,'PC (Windows)',88,'https://www.freetogame.com/g/506/thumbnail.jpg','Take 60 players, throw them on a map together with over 90 weapons, including balloon crossbows, pots and pans, and inflatable hammers, add physics-based parkour and you have Landfallâ€™s Totally Accurate Battlegrounds (TABG).'),
(122,'Will To Live',25.62,0,'PC (Windows)',384,'https://www.freetogame.com/g/434/thumbnail.jpg','A free-to-play MMORPG-shooter developed and published by AlphaSoft LLC.'),
(123,'Battle Arena Heroes Adventure',25.66,0,'Web Browser',498,'https://www.freetogame.com/g/543/thumbnail.jpg','A MOBA with RPG elements.'),
(124,'Spellsworn',31.94,0,'PC (Windows)',5,'https://www.freetogame.com/g/42/thumbnail.jpg','A free-to-play arena battle game developed and published by Frogsong Studios AB. '),
(125,'Z1 Battle Royale',15.98,0,'PC (Windows)',99,'https://www.freetogame.com/g/43/thumbnail.jpg','A highly competitive free-to-play battle royale shooter.'),
(126,'Tale Of Toast',16.2,0,'PC (Windows)',329,'https://www.freetogame.com/g/44/thumbnail.jpg','A free-to-play open world MMO inspired by classic, core MMOs. '),
(127,'Bombtag',29.01,0,'PC (Windows)',350,'https://www.freetogame.com/g/47/thumbnail.jpg','A free-to-play multiplayer Bomberman-inspired game.'),
(128,'Ironsight',45.28,0,'PC (Windows)',190,'https://www.freetogame.com/g/48/thumbnail.jpg','A free-to-play futuristic shooter published by Aeria Games. '),
(129,'Dead Maze',14.24,0,'PC (Windows)',447,'https://www.freetogame.com/g/49/thumbnail.jpg','A free-to-play 2D isometric MMO full of zombies. '),
(130,'Scions of Fate',43.08,0,'PC (Windows)',277,'https://www.freetogame.com/g/316/thumbnail.jpg','A friendly free to play MMORPG with easy to pick up controls.'),
(131,'My Soul',15.38,0,'Web Browser',246,'https://www.freetogame.com/g/342/thumbnail.jpg','A free-to-play ARPG distributed by GameSpirit. '),
(132,'Wild Terra Online',39.55,0,'PC (Windows)',182,'https://www.freetogame.com/g/22/thumbnail.jpg','A medieval sandbox MMO designed with core players in mind. '),
(133,'Global Adventures',27.97,0,'PC (Windows)',233,'https://www.freetogame.com/g/51/thumbnail.jpg','A free-to-play MMORPG developed by PixelSoft and Published by SubaGames. '),
(134,'Closers',40.57,0,'PC (Windows)',280,'https://www.freetogame.com/g/52/thumbnail.jpg','A free-to-play episodic anime beat-em-up developed by Naddic Games and published by En Masse Entertainment. '),
(135,'La Tale Evolved',24.02,0,'PC (Windows)',219,'https://www.freetogame.com/g/322/thumbnail.jpg','A 2D side-scrolling fantasy MMORPG with anime-inspired graphics.'),
(136,'Luna Online: Reborn',46.32,0,'PC (Windows)',140,'https://www.freetogame.com/g/120/thumbnail.jpg','A free-to-play, anime themed fantasy MMORPG and a remake of the previous Luna MMO! '),
(137,'The Ultimatest Battle',33.89,0,'PC (Windows)',187,'https://www.freetogame.com/g/58/thumbnail.jpg','A free-to-play 2D platform game that pits two teams of players against each other in a variety of modes. '),
(138,'Insidia',47.1,0,'PC (Windows)',281,'https://www.freetogame.com/g/59/thumbnail.jpg','A free-to-play tactical, turn-based dueling game developed and published by Bad Seed. '),
(139,'Quake Champions',49.86,0,'PC (Windows)',152,'https://www.freetogame.com/g/30/thumbnail.jpg','Quake Champions is a callback to the early days of the Quake IP, featuring the fast-paced action that made the IP popular over two decades ago. '),
(140,'Gods Origin Online',28.5,0,'Web Browser',352,'https://www.freetogame.com/g/354/thumbnail.jpg','A free-to-play browser-based RPG from VivaGames in which players take on the role of human summoners that call deities from the Astral Realm back in time. '),
(141,'Black Squad',47.76,0,'PC (Windows)',321,'https://www.freetogame.com/g/61/thumbnail.jpg','A free-to-play military FPS developed by NS STUDIO and published by NEOWIZ.'),
(142,'Secret World Legends',20.87,0,'PC (Windows)',421,'https://www.freetogame.com/g/64/thumbnail.jpg','A free-to-play reboot of The Secret World. '),
(143,'Argo',11.75,0,'PC (Windows)',113,'https://www.freetogame.com/g/63/thumbnail.jpg',''),
(144,'Pixel Worlds',35.36,0,'PC (Windows)',350,'https://www.freetogame.com/g/65/thumbnail.jpg','A free-to-play, side-scroller MMO sandbox game developed and published by Kukouri Mobile Entertainment. '),
(145,'Deceit',26.17,0,'PC (Windows)',128,'https://www.freetogame.com/g/55/thumbnail.jpg','A free-to-play multiplayer first-person shooter set in an asylum! '),
(146,'Gwent: The Witcher Card Game',44.03,0,'PC (Windows)',285,'https://www.freetogame.com/g/66/thumbnail.jpg','A free-to-play card game based on CD Projekt Red\'s popular Witcher franchise. '),
(147,'Awesomenauts',15.97,0,'PC (Windows)',256,'https://www.freetogame.com/g/67/thumbnail.jpg','A 3v3 2D battle arena Developed by Ronimo games.'),
(148,'Alien Swarm: Reactive Drop',42.1,0,'PC (Windows)',295,'https://www.freetogame.com/g/70/thumbnail.jpg','A free-to-play top-down tactical co-op expansion on the Alien swarm game and Source SDK.'),
(149,'Catan Universe',26.28,0,'PC (Windows)',299,'https://www.freetogame.com/g/71/thumbnail.jpg','A free-to-play strategy game based on the classic board and card games. '),
(150,'Krosmaga',30.47,0,'PC (Windows)',20,'https://www.freetogame.com/g/72/thumbnail.jpg','A free-to-play CCG/tower defense hybrid developed by Ankama Studio and published by Ankama Games. '),
(151,'Chronicles of Eidola',27.34,0,'Web Browser',183,'https://www.freetogame.com/g/355/thumbnail.jpg','A free-to-play 3D Browser RPG from AMZGame.'),
(152,'Revelation Online',20.17,0,'PC (Windows)',296,'https://www.freetogame.com/g/77/thumbnail.jpg','A free-to-play fantasy MMO developed by NetEase and published by My.com. '),
(153,'MU Legend',47.28,0,'PC (Windows)',464,'https://www.freetogame.com/g/87/thumbnail.jpg','A free-to-play MMORPG developed by Webzen and the followup to MU Online. '),
(154,'Therian Saga',41.79,0,'PC (Windows), Web Browser',154,'https://www.freetogame.com/g/421/thumbnail.jpg','A browser-based sandbox MMORPG with a complex crafting system.'),
(155,'Cabals: Card Blitz',8.54,0,'PC (Windows)',238,'https://www.freetogame.com/g/69/thumbnail.jpg','A free-to-play game developed by Kyy Games and published by BISBOG SA. '),
(156,'Line of Sight',11.2,0,'PC (Windows)',133,'https://www.freetogame.com/g/82/thumbnail.jpg','Free FPS game described as \"Bioshock meets Call of Duty\"! '),
(157,'Heavy Metal Machines',45.96,0,'PC (Windows)',379,'https://www.freetogame.com/g/83/thumbnail.jpg','A free-to-play multiplayer vehicular combat game based in a post-apocalyptic world.'),
(158,'Dragon Awaken',7.44,0,'Web Browser',1,'https://www.freetogame.com/g/343/thumbnail.jpg','A free-to-play, browser-based fantasy RPG developed by Game Hollywood and published by Proficient City.'),
(159,'Infestation: The New Z',42.77,0,'PC (Windows)',98,'https://www.freetogame.com/g/85/thumbnail.jpg','A re-work of the open world zombie shooter game Infestation: Survivor Stories (or as it was formerly known \"The War Z\").'),
(160,'One Tower',25.7,0,'PC (Windows)',357,'https://www.freetogame.com/g/92/thumbnail.jpg','A unique 1v1 MOBA known as a \"micro-moba\" developed and published by SkyReacher following a successful Kickstarter. '),
(161,'Shadowverse',13.29,0,'PC (Windows)',392,'https://www.freetogame.com/g/88/thumbnail.jpg','A free-to-play strategic CCG developed and published by Cygamesm the creators of Rage of Bahamut and Granblu Fantasy. '),
(162,'AdventureQuest 3D',21.14,0,'PC (Windows)',224,'https://www.freetogame.com/g/89/thumbnail.jpg','A free to play cross-platform MMORPG from the creators of the original 2D RPG game.'),
(163,'Riding Club Championships',12.18,0,'PC (Windows)',229,'https://www.freetogame.com/g/93/thumbnail.jpg','An online competitive horse riding game inspired by traditional equestrian disciplines. '),
(164,'Battlerite',41.09,0,'PC (Windows)',321,'https://www.freetogame.com/g/94/thumbnail.jpg','A free-to-play team arena brawler developed by Stunlock Studios. Players play as one of several available champions on teams in 2v2 or 3v3 matches. '),
(165,'Paladins',41.04,0,'PC (Windows)',41,'https://www.freetogame.com/g/95/thumbnail.jpg','A free-to-play team-based shooter developed and published by Hi-Rez Games, the creators of SMITE. '),
(166,'Star Crusade',49.96,0,'PC (Windows)',378,'https://www.freetogame.com/g/99/thumbnail.jpg','A free-to-play sci-fi themed collectable card game developed and published by ZiMAD inc. '),
(167,'Omega Zodiac',39.95,0,'Web Browser',310,'https://www.freetogame.com/g/344/thumbnail.jpg','A Greek and Norse mythology based free-to-play action MMO developed and published by Proficient City and Game Hollywood.'),
(168,'The Elder Scrolls: Legends',39.38,0,'PC (Windows)',482,'https://www.freetogame.com/g/102/thumbnail.jpg','A free-to-play CCG based on The Elder Scrolls franchise. '),
(169,'Riders of Icarus',28.64,0,'PC (Windows)',369,'https://www.freetogame.com/g/106/thumbnail.jpg','A free-to-play action MMORPG featuring mounted, in-air combat. '),
(170,'Naruto Online',9.78,0,'Web Browser',161,'https://www.freetogame.com/g/365/thumbnail.jpg','A free-to-play MMO based on the popular anime series and manga, developed by Bandai Namco Entertainment. '),
(171,'Kritika: REBOOT',18.03,0,'PC (Windows)',242,'https://www.freetogame.com/g/62/thumbnail.jpg','A free-to-play hack-and-slash MMORPG with both a single-player adventure combat from En Masse Entertainment and ALL-M Co. '),
(172,'Zula',29.62,0,'PC (Windows)',143,'https://www.freetogame.com/g/108/thumbnail.jpg','A free-to-play online FPS developed and published by IDC/Games. '),
(173,'LuckCatchers',40.44,0,'PC (Windows)',41,'https://www.freetogame.com/g/109/thumbnail.jpg','A free-to-play sandbox sim based on the novels of fantasy and steam-punk author A. Pehov.'),
(174,'UFO Online: Invasion',6.85,0,'PC (Windows)',482,'https://www.freetogame.com/g/110/thumbnail.jpg','A free-to-play post-apocalyptic, turn-based tactical combat MMO developed by Bad Pixel. '),
(175,'SAOâ€™s Legend',36.13,0,'Web Browser',285,'https://www.freetogame.com/g/367/thumbnail.jpg','A free-to-play browser-based MMO based on the popular anime Sword Art Online.'),
(176,'Weapons Of Mythology',39.81,0,'PC (Windows)',80,'https://www.freetogame.com/g/112/thumbnail.jpg','A 3D free-to-play fantasy MMORPG published by IDC/Games. '),
(177,'Tree of Savior',26.24,0,'PC (Windows)',443,'https://www.freetogame.com/g/116/thumbnail.jpg','A fantasy 3D MMORPG with a massive freedom of choice, cute looking characters and a distinct art style. '),
(178,'Starbreak',5.25,0,'PC (Windows), Web Browser',188,'https://www.freetogame.com/g/118/thumbnail.jpg','A Roguelike MMORPG with MetroidVania-style platformer gameplay! Castlevania and Metroid fans will love this game! '),
(179,'Fantasy Tales Online',43.59,0,'PC (Windows)',82,'https://www.freetogame.com/g/119/thumbnail.jpg','A free-to-play, retro MMO featuring puzzles, a rich crafting system and Randomly generated dungeons! '),
(180,'Dragon Blood',15.93,0,'Web Browser',363,'https://www.freetogame.com/g/370/thumbnail.jpg','A free-to-play browser MMORPG from 101XP, you\'ll harness your unique power and the blood of dragons that flows through your veins! '),
(181,'League of Angels 2',45.43,0,'Web Browser',158,'https://www.freetogame.com/g/371/thumbnail.jpg','A free to play browser MMORPG that captures all the beauty and elegance of its predecessor.'),
(182,'Astral Heroes',44.69,0,'PC (Windows)',232,'https://www.freetogame.com/g/117/thumbnail.jpg','A free-to-play collectable card game from the creators of Astral Masters. '),
(183,'Holodrive',35.28,0,'PC (Windows)',487,'https://www.freetogame.com/g/124/thumbnail.jpg','A free-to-play 2D multiplayer shooter developed by BitCake Studio and published by Versus Evil in which players play as customizable robots or \"Dummys\". '),
(184,'Cabal Online',43.16,0,'PC (Windows)',160,'https://www.freetogame.com/g/304/thumbnail.jpg','A free to play fast-paced skill-based MMORPG in a stunning world!'),
(185,'Atom Universe',7.43,0,'PC (Windows)',156,'https://www.freetogame.com/g/125/thumbnail.jpg','A free-to-play multiplayer online social Virtual World set in a theme park.'),
(186,'Spellweaver',22.68,0,'PC (Windows)',16,'https://www.freetogame.com/g/128/thumbnail.jpg','A free-to-play multiplayer online collectible card game that requires deep strategic and thinking.'),
(187,'Clash of Avatars',49.15,0,'Web Browser',405,'https://www.freetogame.com/g/374/thumbnail.jpg','A free to play 3D browser MMORPG with powerful Avatars, 50 mounts, and several loyal pets.'),
(188,'War Trigger 3',9.62,0,'PC (Windows)',44,'https://www.freetogame.com/g/134/thumbnail.jpg','A MMO shooter with infantry, vehicle, and air combat across massive maps! '),
(189,'VEGA Conflict',10.49,0,'PC (Windows)',177,'https://www.freetogame.com/g/136/thumbnail.jpg','A Cross-Platform free to play 2D sci-fi strategy MMO.'),
(190,'Metal War Online: Retribution',22.81,0,'PC (Windows)',461,'https://www.freetogame.com/g/137/thumbnail.jpg','A high-speed multiplayer online concept car shooter game with racing elements!'),
(191,'Immortal Empire',23.98,0,'PC (Windows)',172,'https://www.freetogame.com/g/139/thumbnail.jpg','A free to play multiplayer strategy RPG developed by Tactic Studios.'),
(192,'MechWarrior Online',25.23,0,'PC (Windows)',110,'https://www.freetogame.com/g/222/thumbnail.jpg','A free-to-play PvP game that\'s a faithful adaptation of the popular MechWarrior strategy board games.'),
(193,'Armored Warfare',38.57,0,'PC (Windows)',37,'https://www.freetogame.com/g/7/thumbnail.jpg','A modern team-based MMO tank game from Obsidian Entertainment.'),
(194,'Americaâ€™s Army: Proving Grounds',10.79,0,'PC (Windows)',212,'https://www.freetogame.com/g/149/thumbnail.jpg','Take a first person shooter, have the game developed by the U.S. Army and youâ€™ve got Americaâ€™s Army.'),
(195,'One Piece Online 2',37.93,0,'Web Browser',194,'https://www.freetogame.com/g/346/thumbnail.jpg','A free-to-play, browser-based 2D MMORPG based on the immensely popular One Piece franchise.'),
(196,'Otherland',38.44,0,'PC (Windows)',277,'https://www.freetogame.com/g/97/thumbnail.jpg','A free-to-play MMO based on the popular novels by Tad Williams. '),
(197,'Forza Motorsport 6: Apex',29,0,'PC (Windows)',5,'https://www.freetogame.com/g/121/thumbnail.jpg','A free-to-play MMO racing game that comes from makers of one of the most popular video game racing series ever. '),
(198,'Legends of Honor',25.15,0,'Web Browser',105,'https://www.freetogame.com/g/383/thumbnail.jpg','A free to play browser based medieval fantasy 2D MMORTS.'),
(199,'Felspire',36.75,0,'Web Browser',450,'https://www.freetogame.com/g/384/thumbnail.jpg','A free-to-play 2D browser-based fantasy MMORPG with plenty of dungeons and world bosses to slay.'),
(200,'WARMODE',21.99,0,'PC (Windows)',96,'https://www.freetogame.com/g/152/thumbnail.jpg','A Free to play multiplayer online shooter. Sight in enemies to master Headshots, Double Kills and Triple Kills! '),
(201,'Sphere 3: Enchanted World',41.97,0,'PC (Windows)',268,'https://www.freetogame.com/g/154/thumbnail.jpg','A fantasy action MMORPG with a non-target combat system.'),
(202,'Fishing Planet',14.52,0,'PC (Windows)',227,'https://www.freetogame.com/g/157/thumbnail.jpg','A Free to play realistic online first-person multiplayer fishing simulator! '),
(203,'Aberoth',33.19,0,'Web Browser',388,'https://www.freetogame.com/g/386/thumbnail.jpg','A free to play 8-bit MMORPG with retro graphics and MUD-like interface.'),
(204,'Codename CURE',49.84,0,'PC (Windows)',329,'https://www.freetogame.com/g/159/thumbnail.jpg','A free to play 3D MMOFPS featuring cooperative play, and objective-based missions.'),
(205,'Skyforge',18.24,0,'PC (Windows)',251,'https://www.freetogame.com/g/161/thumbnail.jpg','A impressive Free to play MMORPG where you can become a god! '),
(206,'Card Hunter',32.97,0,'PC (Windows), Web Browser',303,'https://www.freetogame.com/g/163/thumbnail.jpg','A free online collectible card game which blends together role-playing, card play and tactical combat. '),
(207,'Fallout Shelter',12.23,0,'PC (Windows)',495,'https://www.freetogame.com/g/104/thumbnail.jpg','A free-to-play simulation game based on Bethesda Game Studios\' popular Fallout franchise. '),
(208,'Lordâ€™s Road',25.73,0,'Web Browser',169,'https://www.freetogame.com/g/388/thumbnail.jpg','A free-to-play 2D browser-based fantasy MMORPG that features two playable classes.'),
(209,'Salem',18.78,0,'PC (Windows)',260,'https://www.freetogame.com/g/167/thumbnail.jpg','A free-to-play, sandbox type MMO based on the times and trials of living.'),
(210,'Heroes of the Storm',35.29,0,'PC (Windows)',406,'https://www.freetogame.com/g/168/thumbnail.jpg','A free to play MOBA developed by Blizzard Entertainment.'),
(211,'Dirty Bomb',6.51,0,'PC (Windows)',368,'https://www.freetogame.com/g/169/thumbnail.jpg','A free-to-play first person shooter multiplayer game set in a post-apocalyptic London.'),
(212,'Vikings: War Of Clans',31.01,0,'Web Browser',342,'https://www.freetogame.com/g/357/thumbnail.jpg','A free-to-play MMO strategy game developed and published by Plarium.'),
(213,'Star Trek: Alien Domain',35.72,0,'Web Browser',182,'https://www.freetogame.com/g/391/thumbnail.jpg','A free to play browser based 2D strategy MMO set in the Stark Trek universe.'),
(214,'Block N Load',39.47,0,'PC (Windows)',371,'https://www.freetogame.com/g/173/thumbnail.jpg','A free-to-play multiplayer online shooter game that looks like a mix of Minecraft and Team Fortress 2.'),
(215,'Survarium',23.52,0,'PC (Windows)',416,'https://www.freetogame.com/g/175/thumbnail.jpg','A free to play post-apocalyptic online FPS game.'),
(216,'Dungeon Fighter Online',46.55,0,'PC (Windows)',62,'https://www.freetogame.com/g/177/thumbnail.jpg','A free to play arcade-style side-scrolling action game mixed with RPG elements.'),
(217,'Grimoire: Manastorm',42.83,0,'PC (Windows)',419,'https://www.freetogame.com/g/56/thumbnail.jpg','A free-to-play multiplayer FPS... with wizards. '),
(218,'StarColony',34.81,0,'Web Browser',401,'https://www.freetogame.com/g/373/thumbnail.jpg','A free-to-play browser MMO strategy game that puts you in command of a rapidly growing city on a dangerous alien world.'),
(219,'One Piece Online',5.88,0,'Web Browser',347,'https://www.freetogame.com/g/394/thumbnail.jpg','One Piece Online is a 2D Tower Defense Action MMO! '),
(220,'Transformice',23.37,0,'PC (Windows), Web Browser',481,'https://www.freetogame.com/g/179/thumbnail.jpg','A cute little free-to-play MMO platformer.'),
(221,'Gear Up',31.09,0,'PC (Windows)',9,'https://www.freetogame.com/g/180/thumbnail.jpg','Control your unique tank or robot in multiplayer arcade action!'),
(222,'8BitMMO',20.45,0,'PC (Windows), Web Browser',334,'https://www.freetogame.com/g/181/thumbnail.jpg','A free to play retroÂ­-style 2D MMO and a giant construction sandbox! '),
(223,'Siegelord',18.64,0,'Web Browser',258,'https://www.freetogame.com/g/399/thumbnail.jpg','A free to play 2D medieval fantasy browser-based MMORTS.'),
(224,'Dungeon Defenders 2',35.12,0,'PC (Windows)',400,'https://www.freetogame.com/g/182/thumbnail.jpg','A free-to-play cooperative 3D tower-defense game by Trendy Entertainment.'),
(225,'Blockade 3D',49.59,0,'PC (Windows)',278,'https://www.freetogame.com/g/184/thumbnail.jpg','A free to play FPS in an editable procedural world.'),
(226,'Eldevin',41.02,0,'PC (Windows), Web Browser',170,'https://www.freetogame.com/g/185/thumbnail.jpg','A indie story-driven Free to Play MMORPG.'),
(227,'Double Action',18.16,0,'PC (Windows)',223,'https://www.freetogame.com/g/186/thumbnail.jpg','A free to play FPS with bullet time and stylish kills!'),
(228,'Pox Nora',20.79,0,'PC (Windows)',209,'https://www.freetogame.com/g/187/thumbnail.jpg','A multiplayer online game that combines a collectible card game with a turn-based strategy game.'),
(229,'Counter-Strike Nexon: Studio',6.52,0,'PC (Windows)',459,'https://www.freetogame.com/g/188/thumbnail.jpg','What\'s better than Counter-Strike? Counter-Strike with more modes and Zombies!'),
(230,'Uncharted Waters Online',26.72,0,'PC (Windows)',332,'https://www.freetogame.com/g/189/thumbnail.jpg','A free to play adventure MMORPG set on the high seas! '),
(231,'ArcheAge',43.97,0,'PC (Windows)',172,'https://www.freetogame.com/g/10/thumbnail.jpg','A free-to-play, hybrid fantasy/sandbox MMORPG brought to you by Trion Worlds.'),
(232,'Tribal Wars 2',10.04,0,'Web Browser',268,'https://www.freetogame.com/g/404/thumbnail.jpg','The sequel to the classic city-building strategy game Tribal Wars! '),
(233,'WAKFU',20.05,0,'PC (Windows)',36,'https://www.freetogame.com/g/192/thumbnail.jpg','A 2D tactical turn-based fantasy MMORPG developed by Ankama Games, in conjunction with Square Enix.'),
(234,'Infinity Wars',20.6,0,'PC (Windows)',262,'https://www.freetogame.com/g/193/thumbnail.jpg','A MMO trading card game, Build up your decks and customize them with tons of factional cards! '),
(235,'Divine Souls',30.87,0,'PC (Windows)',153,'https://www.freetogame.com/g/195/thumbnail.jpg','A action-based MMORPG in a fantasy world with magic and technology. '),
(236,'Cubic Castles',41.07,0,'PC (Windows)',47,'https://www.freetogame.com/g/196/thumbnail.jpg','A free to play 3D Platforming and a open world building game.'),
(237,'Creativerse',7.61,0,'PC (Windows)',7,'https://www.freetogame.com/g/198/thumbnail.jpg','Playful Corporation enters the sandbox, voxel world with their free-to-play title Creativers.'),
(238,'Royal Quest',44.91,0,'PC (Windows)',199,'https://www.freetogame.com/g/199/thumbnail.jpg','A free to play fantasy MMORPG game with unique PvPvE locations, PvP Arenas, Battlegrounds and Castle Sieges. '),
(239,'Guns and Robots',19.8,0,'PC (Windows)',226,'https://www.freetogame.com/g/200/thumbnail.jpg','A free to play online third person shooter with massive customization! '),
(240,'Bleach Online',17.06,0,'Web Browser',494,'https://www.freetogame.com/g/348/thumbnail.jpg','A free to play 2D browser based MMORPG based on Bleach, the popular manga and anime series.'),
(241,'Robocraft',11.01,0,'PC (Windows)',353,'https://www.freetogame.com/g/203/thumbnail.jpg','A free-to-play MMO sandbox building game! '),
(242,'Unturned',10.58,0,'PC (Windows)',253,'https://www.freetogame.com/g/204/thumbnail.jpg','A independently developed free-to-play MMO survival game! '),
(243,'Freestyle2: Street Basketball',11.87,0,'PC (Windows)',125,'https://www.freetogame.com/g/209/thumbnail.jpg','A free to play MMO street basketball game. Team up with the best street ballers! '),
(244,'Fistful of Frags',40.42,0,'PC (Windows)',95,'https://www.freetogame.com/g/210/thumbnail.jpg','A first person shooter game set in the Wild West! '),
(245,'GunZ 2: The Second Duel',31.14,0,'PC (Windows)',170,'https://www.freetogame.com/g/211/thumbnail.jpg','A free-to-play multiplayer Third Person Shooter and follow up to the successful GunZ: The Duel. '),
(246,'Archeblade',47.79,0,'PC (Windows)',370,'https://www.freetogame.com/g/213/thumbnail.jpg','A free-to-play PvP-based multiplayer action game based on a Korean Fantasy Novel.'),
(247,'Villagers and Heroes',42.8,0,'PC (Windows)',493,'https://www.freetogame.com/g/214/thumbnail.jpg','A free-to-play fantasy sandbox 3D MMORPG that has plenty to offer gamers.'),
(248,'Hex',23.14,0,'PC (Windows)',31,'https://www.freetogame.com/g/215/thumbnail.jpg','HEX combines roleplaying aspects of a MMO with the collectible and strategic gameplay of a Trading Card Game.'),
(249,'Pocket Starships',9.39,0,'Web Browser',153,'https://www.freetogame.com/g/405/thumbnail.jpg','A free-to-play cross-platform space combat MMO from SPYR games.'),
(250,'Sparta: War of Empires',15.23,0,'Web Browser',113,'https://www.freetogame.com/g/409/thumbnail.jpg','A 2D browser-based MMORTS in which players must exercise their city-management skills to construct and upgrade different structures and troops.'),
(251,'Dogs of War Online',24.91,0,'PC (Windows)',269,'https://www.freetogame.com/g/239/thumbnail.jpg','Based on the famous miniature board game Confrontation!'),
(252,'Hearthstone: Heroes of Warcraft',21.22,0,'PC (Windows)',95,'https://www.freetogame.com/g/220/thumbnail.jpg','Blizzard\'s free-to-play collectible card game that draws its inspiration from World of Warcraft. '),
(253,'Lucent Heart',44,0,'PC (Windows)',383,'https://www.freetogame.com/g/221/thumbnail.jpg','A free to play MMORPG with a match making system that helps players find their soulmates.'),
(254,'League of Angels',15.05,0,'Web Browser',412,'https://www.freetogame.com/g/376/thumbnail.jpg','A free to play 2D browser-based fantasy MMORPG with turn-based combat.'),
(255,'Aura Kingdom',24.85,0,'PC (Windows)',370,'https://www.freetogame.com/g/206/thumbnail.jpg','Aura Kingdom is a 3D free-to-play Anime MMORPG from the same great studio that brought us Eden Eterna.'),
(256,'Crystal Saga',21.68,0,'Web Browser',319,'https://www.freetogame.com/g/424/thumbnail.jpg','A free to play 2D browser-based MMORPG that allows players to explore the land of Vidalia.'),
(257,'World of Warplanes',8.23,0,'PC (Windows)',225,'https://www.freetogame.com/g/224/thumbnail.jpg','A free-to-play flight combat MMO brought to you by Wargaming.'),
(258,'RIFT',6.36,0,'PC (Windows)',402,'https://www.freetogame.com/g/225/thumbnail.jpg','Trion Worldsâ€™ flagship fantasy massively multiplayer online role-playing game.'),
(259,'Path of Exile',46.65,0,'PC (Windows)',110,'https://www.freetogame.com/g/226/thumbnail.jpg','A free-to-play massively multiplayer online ARPG in the style of Diablo.'),
(260,'Soldiers Inc.',19.13,0,'Web Browser',458,'https://www.freetogame.com/g/411/thumbnail.jpg','A free to play 2D top-down browser based MMORTS game.'),
(261,'Nords: Heroes of the North',33.69,0,'Web Browser',221,'https://www.freetogame.com/g/412/thumbnail.jpg','A free to play browser-based 2D strategy MMO game with Elves, Orcs, Dragons and more.'),
(262,'Dota 2',17.94,0,'PC (Windows)',59,'https://www.freetogame.com/g/229/thumbnail.jpg','Valve\'s premiere competitive free to play MOBA.'),
(263,'Ragnarok Online 2',37.64,0,'PC (Windows)',138,'https://www.freetogame.com/g/230/thumbnail.jpg','A 3D fantasy MMORPG, and sequel to the popular Ragnarok Online.'),
(264,'Panzar',13.74,0,'PC (Windows)',75,'https://www.freetogame.com/g/231/thumbnail.jpg','A free-to-play multiplayer third-person shooter with rpg elements and CryEngine 3 powered graphics.'),
(265,'Kingdom Wars',12.21,0,'PC (Windows)',178,'https://www.freetogame.com/g/233/thumbnail.jpg','A free to play 3D MMORTS with real-time siege combat.'),
(266,'Champions of Regnum',18.31,0,'PC (Windows)',207,'https://www.freetogame.com/g/234/thumbnail.jpg','A free to play, realm versus realm fantasy MMORPG.'),
(267,'Star Conflict',13.12,0,'PC (Windows)',331,'https://www.freetogame.com/g/235/thumbnail.jpg','A free to play action-packed MMO space simulation game.'),
(268,'Rail Nation',39.4,0,'Web Browser',420,'https://www.freetogame.com/g/414/thumbnail.jpg','A free to play 2D browser-based train simulation strategy MMO game.'),
(269,'Epic Cards Battle',45.5,0,'PC (Windows)',493,'https://www.freetogame.com/g/240/thumbnail.jpg','A free to play online strategic trading card game with dozens of cards and five factions. '),
(270,'Age of Wushu',14.93,0,'PC (Windows)',76,'https://www.freetogame.com/g/232/thumbnail.jpg','A free-to-play martial arts action MMORPG with a large open world and sandbox-like features.'),
(271,'Everquest',9.09,0,'PC (Windows)',2,'https://www.freetogame.com/g/241/thumbnail.jpg','A fantasy MMORPG nearly two decades in the making. In fact, itâ€™s the game that started it all! '),
(272,'Mabinogi',38.32,0,'PC (Windows)',348,'https://www.freetogame.com/g/242/thumbnail.jpg','A free-to-play adventure MMORPG where you can create a unique character and live your fantasy life.'),
(273,'Stormfall: Age of War',16.22,0,'Web Browser',83,'https://www.freetogame.com/g/415/thumbnail.jpg','A free to play 2D top-down browser MMORTS featuring castle building, resource management and PvP battles.'),
(274,'AirMech Strike',8.42,0,'PC (Windows)',443,'https://www.freetogame.com/g/244/thumbnail.jpg','A free to play Action RTS with MOBA elements.'),
(275,'Big Farm',13.87,0,'Web Browser',166,'https://www.freetogame.com/g/349/thumbnail.jpg','A friendly browser-based farming simulation MMO game!'),
(276,'Wartune',7.8,0,'Web Browser',160,'https://www.freetogame.com/g/416/thumbnail.jpg','A 2D browser-based Strategy MMORPG with classic turn based RPG features.'),
(277,'Pirate 101',23.41,0,'PC (Windows)',45,'https://www.freetogame.com/g/246/thumbnail.jpg','A free to play Pirate-themed MMORPG designed with kids in mind.'),
(278,'Dino Storm',14.6,0,'Web Browser',402,'https://www.freetogame.com/g/417/thumbnail.jpg','A free-to-play 3D MMO with cowboys, dinosaurs, and laser guns.'),
(279,'The Settlers Online',21.66,0,'Web Browser',223,'https://www.freetogame.com/g/418/thumbnail.jpg','A free to play city building MMORTS based on the popular Settlers series.'),
(280,'Continent of the Ninth Seal',10.22,0,'PC (Windows)',122,'https://www.freetogame.com/g/248/thumbnail.jpg','A free MMORPG where players take part as heroes of Glenheim to stand together against Nefer.'),
(281,'Counter-Strike: Global Offensive',44.12,0,'PC (Windows)',309,'https://www.freetogame.com/g/24/thumbnail.jpg','The popular multiplayer shooter from Valve. '),
(282,'Gotham City Impostors',26.35,0,'PC (Windows)',262,'https://www.freetogame.com/g/453/thumbnail.jpg','A free to play multiplayer FPS that pits vigilantes dressed up like Batman against criminals dressed up like the Joker'),
(283,'RPG MO',13.65,0,'PC (Windows), Web Browser',197,'https://www.freetogame.com/g/249/thumbnail.jpg','A nostalgic free MMORPG reminiscent of old-school RPG\'s like Ultima and Runescape.'),
(284,'Realm of the Mad God',22.24,0,'PC (Windows), Web Browser',370,'https://www.freetogame.com/g/256/thumbnail.jpg','A fast paced 2d free to play MMO shooter game with a retro 8-bit style.'),
(285,'Pirates: Tides of Fortune',29.67,0,'Web Browser',262,'https://www.freetogame.com/g/422/thumbnail.jpg','A free to play browser-based 2D MMORTS for people who are fans of pirates!'),
(286,'Stronghold Kingdoms',48.52,0,'Web Browser',135,'https://www.freetogame.com/g/255/thumbnail.jpg','A strategy based building/warfare game based on the long running Strongholds PC game series.'),
(287,'Star Wars: The Old Republic',24.81,0,'PC (Windows)',199,'https://www.freetogame.com/g/257/thumbnail.jpg','A 3D sci-fi MMORPG based on the popular Star Wars universe and brought to you by Bioware. '),
(288,'5Street',34.81,0,'PC (Windows)',62,'https://www.freetogame.com/g/292/thumbnail.jpg','A free-to-play dancing MMO and a unique social experience.'),
(289,'No More Room in Hell',33.07,0,'PC (Windows)',377,'https://www.freetogame.com/g/261/thumbnail.jpg','A free to play cooperative FPS survival horror mod for the Source Engine.'),
(290,'Digimon Masters Online',45.04,0,'PC (Windows)',96,'https://www.freetogame.com/g/262/thumbnail.jpg','A free to play 3D MMORPG based on the popular Digimon franchise.'),
(291,'Dragon Nest',18.06,0,'PC (Windows)',438,'https://www.freetogame.com/g/264/thumbnail.jpg','A free-to-play action MMORPG with non-targeting combat.'),
(292,'Goodgame Empire',27.88,0,'Web Browser',458,'https://www.freetogame.com/g/350/thumbnail.jpg','A free to play medieval strategy browser game. Build you own castle and create a powerful army! '),
(293,'Mission Against Terror',7.22,0,'PC (Windows)',251,'https://www.freetogame.com/g/267/thumbnail.jpg','A free to play fast-paced lobby-based MMOFPS with lots of game modes and tons of weapons.'),
(294,'Spiral Knights',21.18,0,'PC (Windows)',147,'https://www.freetogame.com/g/269/thumbnail.jpg','A massively multiplayer online role-playing game, battle monsters and collect treasures!'),
(295,'Steel Legions',22.43,0,'Web Browser',29,'https://www.freetogame.com/g/423/thumbnail.jpg','A free to play 3d browser based tank game with fast-paced tactical battles! '),
(296,'Asda Global',10.65,0,'PC (Windows)',228,'https://www.freetogame.com/g/271/thumbnail.jpg','A 3D anime-inspired fantasy MMORPG and is the successor to the original Asda Story.'),
(297,'Brink',45.38,0,'PC (Windows)',62,'https://www.freetogame.com/g/60/thumbnail.jpg','A free-to-play first-person-shoot developed by Splash Damage and published by Bethesda Softworks. '),
(298,'Allods Online',46.44,0,'PC (Windows)',119,'https://www.freetogame.com/g/272/thumbnail.jpg','A fantasy MMORPG that follows more traditional â€œWorld of Warcraft-likeâ€ MMO traditions.'),
(299,'Elsword',23.84,0,'PC (Windows)',193,'https://www.freetogame.com/g/205/thumbnail.jpg','A Free to Play 3D side scrolling action MMORPG with many heroes.'),
(300,'DC Universe Online',35.02,0,'PC (Windows)',91,'https://www.freetogame.com/g/260/thumbnail.jpg','A free-to-play, comics based MMORPG set in the popular DC Comics universe.'),
(301,'Bloodline Champions',45.77,0,'PC (Windows)',493,'https://www.freetogame.com/g/273/thumbnail.jpg','Free-to-Play Moba game where players engage in short battles of up to ten players divided into two teams.'),
(302,'GetAmped 2',14.48,0,'PC (Windows)',49,'https://www.freetogame.com/g/274/thumbnail.jpg','A free to play fighting MMO, experience frantic battles up to 20 players.'),
(303,'Dragon Saga',43.26,0,'PC (Windows)',481,'https://www.freetogame.com/g/275/thumbnail.jpg','A free to play arcadeÂ­-style sideÂ­-scrolling 3D MMORPG.'),
(304,'Vindictus',16.57,0,'PC (Windows)',201,'https://www.freetogame.com/g/276/thumbnail.jpg','A free to play action MMO game with beautiful graphics and intense battles.'),
(305,'Aika Online',15.42,0,'PC (Windows)',479,'https://www.freetogame.com/g/277/thumbnail.jpg','A free-to-play MMORPG with large scale PvP battles.'),
(306,'APB Reloaded',8.87,0,'PC (Windows)',282,'https://www.freetogame.com/g/258/thumbnail.jpg','A free to play 3D MMO third person shooter game brought to you by GTA creator.'),
(307,'Mortal Online',29.83,0,'PC (Windows)',37,'https://www.freetogame.com/g/278/thumbnail.jpg','A unique free to play First Person sandbox MMORPG.'),
(308,'Grand Fantasia',36.97,0,'PC (Windows)',167,'https://www.freetogame.com/g/281/thumbnail.jpg','A free to play anime inspired 3D MMORPG with customizable characters and companions.'),
(309,'Grepolis',28.86,0,'Web Browser',328,'https://www.freetogame.com/g/425/thumbnail.jpg','A free to play browser-based strategy MMORTS set in Ancient Greece.'),
(310,'League of Legends',35.59,0,'PC (Windows)',219,'https://www.freetogame.com/g/286/thumbnail.jpg','A free-to-play MOBA game, and one of the most played pc game in the world.'),
(311,'Twelve Sky 2',11.51,0,'PC (Windows)',207,'https://www.freetogame.com/g/287/thumbnail.jpg','Thereâ€™s a lot of world to explore in this fantasy MMORPG!'),
(312,'Champions Online',33.42,0,'PC (Windows)',460,'https://www.freetogame.com/g/288/thumbnail.jpg','A superhero MMORPG created by the same studio behind City of Heroes.'),
(313,'Might And Magic Heroes Online',36.34,0,'Web Browser',364,'https://www.freetogame.com/g/402/thumbnail.jpg','A free-to-play MMO strategy RPG game in which you control powerful Heroes! '),
(314,'WolfTeam',29.61,0,'PC (Windows)',277,'https://www.freetogame.com/g/280/thumbnail.jpg','A free to play MMOFPS with a twist.'),
(315,'Runes of Magic',10.51,0,'PC (Windows)',478,'https://www.freetogame.com/g/290/thumbnail.jpg','A free-to-play fantasy 3D MMORPG set in the fantasy world of Taborea.'),
(316,'theHunter',23.16,0,'PC (Windows)',78,'https://www.freetogame.com/g/291/thumbnail.jpg','An MMO shooter where players can hunt 22 different animals in various locations.'),
(317,'AION',30.51,0,'PC (Windows)',184,'https://www.freetogame.com/g/254/thumbnail.jpg','A high fantasy, free-to-play MMORPG that centers on the war between the gameâ€™s two factions: The Asmodians and the Elyos.'),
(318,'Atlantica Online',11.16,0,'PC (Windows)',291,'https://www.freetogame.com/g/293/thumbnail.jpg','A free-to-play 3D tactical massively multiplayer online role-playing game.'),
(319,'Florensia',27.44,0,'PC (Windows)',374,'https://www.freetogame.com/g/295/thumbnail.jpg','A free to play fantasy MMORPG with legendary worlds ashore and at sea.'),
(320,'4Story',15.88,0,'PC (Windows)',484,'https://www.freetogame.com/g/306/thumbnail.jpg','A enjoyable MMORPG where you can customize your character, join guilds and battle other factions.'),
(321,'AdventureQuest Worlds',9.78,0,'Web Browser',317,'https://www.freetogame.com/g/426/thumbnail.jpg','A free-to-play 2D fantasy browser MMORPG. There are no downloads or software to install! '),
(322,'Wizard101',42.96,0,'PC (Windows)',161,'https://www.freetogame.com/g/297/thumbnail.jpg','A free to play MMORPG set in the magical Wizard school.'),
(323,'Perfect World International',8.22,0,'PC (Windows)',199,'https://www.freetogame.com/g/298/thumbnail.jpg','A free-to-play fantasy MMORPG, that focuses heavily on Chinese mythology.'),
(324,'Ace Online',39.61,0,'PC (Windows)',328,'https://www.freetogame.com/g/319/thumbnail.jpg','A free to play fast action 3D sci-fi MMO where players control space fighters jets.'),
(325,'Rohan: Blood Feud',48.52,0,'PC (Windows)',436,'https://www.freetogame.com/g/300/thumbnail.jpg','A free-to-play medieval MMORPG highly-focused on PVP.'),
(326,'Age of Conan: Unchained',25.36,0,'PC (Windows)',326,'https://www.freetogame.com/g/301/thumbnail.jpg','A award Â­winning massively multiplayer online game that has received critical acclaim.'),
(327,'Ikariam',45.26,0,'Web Browser',261,'https://www.freetogame.com/g/428/thumbnail.jpg','A free to play browser-based city-building strategy game by GameForge.'),
(328,'Saga',46.61,0,'PC (Windows)',30,'https://www.freetogame.com/g/303/thumbnail.jpg','A free-to-play MMORTS that also features city-building and trading card games.'),
(329,'Fiesta Online',28.37,0,'PC (Windows)',211,'https://www.freetogame.com/g/305/thumbnail.jpg','A free to play anime MMORPG with a friendly community.'),
(330,'Shaiya',29.42,0,'PC (Windows)',227,'https://www.freetogame.com/g/307/thumbnail.jpg','A free to play 3D MMORPG similar to World of Warcraft and Lineage 2.'),
(331,'Angels Online',33.77,0,'PC (Windows)',419,'https://www.freetogame.com/g/308/thumbnail.jpg','A cute anime MMORPG with a good selection of classes.'),
(332,'Seal Online',16.83,0,'PC (Windows)',403,'https://www.freetogame.com/g/309/thumbnail.jpg','A free MMORP that has been out for a long period of time with solid history under its belt.'),
(333,'Team Fortress 2',15.75,0,'PC (Windows)',390,'https://www.freetogame.com/g/310/thumbnail.jpg','Valve\'s iconic class-based free-to-play first-person shooter!'),
(334,'Rumble Fighter',12.85,0,'PC (Windows)',269,'https://www.freetogame.com/g/311/thumbnail.jpg','A free to play Fighting MMO, test your skills!'),
(335,'Granado Espada Online',12.38,0,'PC (Windows)',104,'https://www.freetogame.com/g/312/thumbnail.jpg','Adventure back to colonial times where you can find prestige, wealth, adventure, and a lot of work.'),
(336,'9Dragons',29.59,0,'PC (Windows)',55,'https://www.freetogame.com/g/265/thumbnail.jpg','A martial arts themed MMORPG set in China during the Ming Dynasty.'),
(337,'Crossfire',45.87,0,'PC (Windows)',106,'https://www.freetogame.com/g/15/thumbnail.jpg','A first person tactical shooter with a huge selection of game modes!'),
(338,'Teeworlds',20.1,0,'PC (Windows)',21,'https://www.freetogame.com/g/313/thumbnail.jpg','A free to play retro multiplayer online shooter where you can even design your own maps!'),
(339,'Priston Tale',14.06,0,'PC (Windows)',442,'https://www.freetogame.com/g/337/thumbnail.jpg','A free to play action-oriented fantasy MMORPG!'),
(340,'Audition Online',41.28,0,'PC (Windows)',193,'https://www.freetogame.com/g/314/thumbnail.jpg','A 3D rhythm MMO, Compete against other players in dance competitions.'),
(341,'Roblox',27.69,0,'PC (Windows)',184,'https://www.freetogame.com/g/16/thumbnail.jpg','A free to play sandbox MMO with lots of creation options.'),
(342,'Voyage Century Online',19.54,0,'PC (Windows)',258,'https://www.freetogame.com/g/315/thumbnail.jpg','A massive open world ship vs. ship combat game where players will take charge of their own vessel.'),
(343,'Metin2',32.11,0,'PC (Windows)',235,'https://www.freetogame.com/g/333/thumbnail.jpg','A classic free to play 3D MMORPG with a retro feel.'),
(344,'Rappelz',29.19,0,'PC (Windows)',141,'https://www.freetogame.com/g/317/thumbnail.jpg','A free to play 3D classic MMORPG with robust features.'),
(345,'Grand Prix Racing Online',40.67,0,'Web Browser',61,'https://www.freetogame.com/g/351/thumbnail.jpg','A free-to-play web-based motorsport management game.'),
(347,'Dungeons and Dragons Online',10.32,0,'PC (Windows)',159,'https://www.freetogame.com/g/320/thumbnail.jpg','A free-to-play MMORPG based on the beloved D&D RPG that started it all.'),
(348,'RF Online',15.44,0,'PC (Windows)',105,'https://www.freetogame.com/g/321/thumbnail.jpg','A free to play Sci-fi MMORPG with Large-Scale PvP and fast-paced gameplay.'),
(349,'Urban Rivals',20.49,0,'Web Browser',49,'https://www.freetogame.com/g/430/thumbnail.jpg','A free to play browser based card-game with a high player base and comic-book inspired world!'),
(350,'Flyff: Fly For Fun',25.4,0,'PC (Windows)',488,'https://www.freetogame.com/g/323/thumbnail.jpg','A free-to-play anime MMORPG with charming visual aesthetic and an addictive gameplay.'),
(351,'Dream of Mirror Online',28.15,0,'PC (Windows)',324,'https://www.freetogame.com/g/324/thumbnail.jpg','A free to play fantasy MMORPG with tons of social features.'),
(352,'Imperia Online',36.27,0,'Web Browser',266,'https://www.freetogame.com/g/431/thumbnail.jpg','A 2D free-to-play browser-based Medieval MMORTS, Train soldiers and raise an Empire.'),
(353,'MapleStory',30.86,0,'PC (Windows)',139,'https://www.freetogame.com/g/325/thumbnail.jpg','A popular free-to-play 2D side-scrolling MMORPG with tons of quests, and a huge game world!'),
(354,'Shot Online',34.92,0,'PC (Windows)',246,'https://www.freetogame.com/g/326/thumbnail.jpg','A free to play Golfing MMO that any golf lover will enjoy to play!'),
(355,'Everquest 2',25.64,0,'PC (Windows)',411,'https://www.freetogame.com/g/327/thumbnail.jpg','A free to play 3D fantasy MMORPG and the sequel to EverQuest.'),
(356,'Dofus',37.98,0,'PC (Windows)',100,'https://www.freetogame.com/g/328/thumbnail.jpg','A 2D MMORPG with tons of different classes and a tactical combat system.'),
(357,'Travian',40.89,0,'Web Browser',196,'https://www.freetogame.com/g/352/thumbnail.jpg','A popular browser-based multiplayer online strategy game.'),
(358,'Ryzom',30.12,0,'PC (Windows)',311,'https://www.freetogame.com/g/190/thumbnail.jpg','An MMORPG where players are immersed in a massive sandbox world.'),
(359,'Kal Online',24.2,0,'PC (Windows)',137,'https://www.freetogame.com/g/329/thumbnail.jpg','A Korean Fantasy MMORPG developed by Inixsoft.'),
(360,'Lineage 2',8.83,0,'PC (Windows)',304,'https://www.freetogame.com/g/330/thumbnail.jpg','A 3D fantasy MMORPG with a strong emphasis on PvP.'),
(361,'Red Stone Online',39.87,0,'PC (Windows)',29,'https://www.freetogame.com/g/332/thumbnail.jpg','A free to play 2D old school isometric MMORPG similar to Diablo.'),
(362,'Mu Online',48.15,0,'PC (Windows)',313,'https://www.freetogame.com/g/334/thumbnail.jpg','A free to play Dungeon Crawler game like Diablo!'),
(363,'Second Life',15.98,0,'PC (Windows)',174,'https://www.freetogame.com/g/18/thumbnail.jpg','A free to play 3D online virtual world with a huge reputation! '),
(364,'Ragnarok Online',5.24,0,'PC (Windows)',493,'https://www.freetogame.com/g/335/thumbnail.jpg','A popular fantasy MMORPG, back to the golden age of MMORPGs.'),
(365,'Entropia Universe',45.85,0,'PC (Windows)',293,'https://www.freetogame.com/g/17/thumbnail.jpg','A 3D MMO Multi Virtual World Real Cash Economy Experience with RPG elements. '),
(366,'Habbos',13.89,0,'Web Browser',118,'https://www.freetogame.com/g/432/thumbnail.jpg','One of the largest and most popular Social MMO.'),
(367,'Anarchy Online',31.24,0,'PC (Windows)',106,'https://www.freetogame.com/g/336/thumbnail.jpg','A free to play Sci-Fi MMO that has withstood the test of time.'),
(368,'The Lord of the Rings Online',18.62,0,'PC (Windows)',441,'https://www.freetogame.com/g/251/thumbnail.jpg','A free to play MMORPG set in the world of J.R.R. Tolkien\'s classic fantasy saga.'),
(369,'Tibia',27.5,0,'a',428,'https://www.freetogame.com/g/339/thumbnail.jpg','A old-school free-to-play massively multiplayer online role-playing game.');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 13:44:17
