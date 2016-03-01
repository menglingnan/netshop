# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.0.15-nt
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2013-12-25 21:38:22
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for netshop
CREATE DATABASE IF NOT EXISTS `netshop` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `netshop`;


# Dumping structure for table netshop.category
CREATE TABLE IF NOT EXISTS `category` (
  `CatId` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(30) character set gbk NOT NULL,
  `CDesc` varchar(200) character set gbk NOT NULL,
  PRIMARY KEY  (`CatId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

# Dumping data for table netshop.category: ~3 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
/*INSERT INTO `category` (`CatId`, `Name`, `CDesc`) VALUES
	(1, '衣服', '各种衣物'),
	(2, '图书', '各种书籍'),
	(3, '工具', '各种工具');*/
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


# Dumping structure for table netshop.product
CREATE TABLE IF NOT EXISTS `product` (
  `ProductId` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(20) character set gbk NOT NULL,
  `CatId` int(10) unsigned NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `PDesc` varchar(100) character set gbk NOT NULL,
  `Attr` varchar(20) character set gbk NOT NULL,
  `PImage` varchar(50) character set gbk default NULL,
  PRIMARY KEY  (`ProductId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

# Dumping data for table netshop.product: ~8 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*INSERT INTO `product` (`ProductId`, `Name`, `CatId`, `Price`, `PDesc`, `Attr`, `PImage`) VALUES
	(1, '外套', 1, 78.50, '学院风 秋冬 保暖 时尚', '衣服', 'coat.jpg'),
	(2, '牛仔裤', 1, 65.20, '复古 做旧 磨白', '衣服', 'jeans.jpg'),
	(3, '衬衫', 1, 49.90, '黑色显瘦 收腰', '衣服', 'shirt.jpg\r\n'),
	(4, 'Java web开发', 2, 25.00, 'java web开发 jsp教程', '图书', 'java.jpg'),
	(5, 'C++ Primer', 2, 99.00, 'C++经典教材，程序员必备', '图书', 'cpp.jpg'),
	(6, 'HTML教程', 2, 36.00, 'html基础知识 css入门', '图书', 'html.jpg'),
	(7, '剪刀', 3, 5.00, '不锈钢材质 锋利耐用', '工具', 'cut.jpg'),
	(8, '锤子', 3, 12.00, '橡胶把手 更安全', '工具', 'hammer.jpg');*/
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


# Dumping structure for table netshop.productorder
CREATE TABLE IF NOT EXISTS `productorder` (
  `orderId` int(10) NOT NULL auto_increment,
  `username` varchar(20) character set gbk NOT NULL,
  `zipcode` varchar(8) character set gbk NOT NULL,
  `phone` varchar(20) character set gbk NOT NULL,
  `creditcard` varchar(20) character set gbk NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY  (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

# Dumping data for table netshop.productorder: ~8 rows (approximately)
/*!40000 ALTER TABLE `productorder` DISABLE KEYS */;
/*INSERT INTO `productorder` (`orderId`, `username`, `zipcode`, `phone`, `creditcard`, `total`) VALUES
	(1, '孟令楠', '226019', '15896269105', '1113022009', 78.5);*/
/*!40000 ALTER TABLE `productorder` ENABLE KEYS */;


# Dumping structure for table netshop.userinfo
CREATE TABLE IF NOT EXISTS `userinfo` (
  `UserId` int(10) unsigned NOT NULL auto_increment,
  `Name` varchar(1000) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Zipcode` varchar(10) NOT NULL,
  `Status` char(2) NOT NULL,
  `CreateDate` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

# Dumping data for table netshop.userinfo: ~3 rows (approximately)
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
/*INSERT INTO `userinfo` (`UserId`, `Name`, `Password`, `Phone`, `Address`, `Zipcode`, `Status`, `CreateDate`) VALUES
	(1, '孟令楠', '123', '15896269105', 'ntu 11#206', '226019', '1', '2013-12-25 20:30:25');*/
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
