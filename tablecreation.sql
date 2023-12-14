CREATE TABLE `admin` (
   `username` varchar(100) NOT NULL,
   `password` varchar(100) DEFAULT NULL,
   `name` varchar(200) DEFAULT NULL,
   `email` varchar(200) DEFAULT NULL,
   PRIMARY KEY (`username`)
 )
 CREATE TABLE `items` (
   `managerid` varchar(100) DEFAULT NULL,
   `resname` varchar(200) DEFAULT NULL,
   `item` varchar(100) DEFAULT NULL,
   `price` bigint DEFAULT NULL,
   `itemid` bigint NOT NULL AUTO_INCREMENT,
   `image` varchar(100) DEFAULT NULL,
   PRIMARY KEY (`itemid`),
   KEY `managerid` (`managerid`)
 )
 CREATE TABLE `managers` (
   `username` varchar(100) NOT NULL,
   `password` varchar(100) DEFAULT NULL,
   `mobno` bigint DEFAULT NULL,
   `resname` varchar(200) DEFAULT NULL,
   `email` varchar(200) DEFAULT NULL,
   `latitude` decimal(8,6) DEFAULT NULL,
   `longitude` decimal(9,6) DEFAULT NULL,
   `verification` varchar(100) DEFAULT 'requested',
   PRIMARY KEY (`username`)
 )
 CREATE TABLE `orders` (
   `orderid` bigint NOT NULL AUTO_INCREMENT,
   `resname` varchar(200) DEFAULT NULL,
   `username` varchar(200) DEFAULT NULL,
   `item` varchar(100) DEFAULT NULL,
   `orderdate` date DEFAULT NULL,
   `price` bigint DEFAULT NULL,
   `status` varchar(100) DEFAULT 'ordered',
   `quantity` bigint DEFAULT NULL,
   `itemid` bigint DEFAULT NULL,
   `address` varchar(300) DEFAULT NULL,
   PRIMARY KEY (`orderid`),
   KEY `username` (`username`),
   KEY `itemid` (`itemid`)
 )
 CREATE TABLE `rating` (
   `username` varchar(100) DEFAULT NULL,
   `managerid` varchar(100) DEFAULT NULL,
   `itemid` bigint DEFAULT NULL,
   `rating` int DEFAULT NULL,
   `orderid` bigint NOT NULL,
   PRIMARY KEY (`orderid`)
 )
 CREATE TABLE `users` (
   `username` varchar(200) NOT NULL,
   `password` varchar(100) DEFAULT NULL,
   `mobno` bigint DEFAULT NULL,
   `name` varchar(200) DEFAULT NULL,
   `email` varchar(200) DEFAULT NULL,
   PRIMARY KEY (`username`)
 )