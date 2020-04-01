CREATE USER IF NOT EXISTS 'madmin' IDENTIFIED BY 'adminpass';
GRANT ALL ON db.* TO 'madmin';
CREATE DATABASE IF NOT EXISTS db;
CREATE TABLE IF NOT EXISTS db.entries(
    user_id INTEGER NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    code CHAR(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS db.admin(
    username VARCHAR(20) PRIMARY KEY,
    password VARCHAR(150)
)
USE db;

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('admin','password1');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
