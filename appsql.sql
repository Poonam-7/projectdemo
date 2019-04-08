-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.30 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table test.demoapp
CREATE TABLE IF NOT EXISTS `demoapp` (
  `test_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_empid` varchar(50) NOT NULL DEFAULT '0',
  `test_empname` varchar(50) NOT NULL DEFAULT '0',
  `test_emp_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`test_id`),
  KEY `emp_fk` (`test_emp_ref_id`),
  CONSTRAINT `emp_fk` FOREIGN KEY (`test_emp_ref_id`) REFERENCES `demoapp` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- Data exporting was unselected.
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
