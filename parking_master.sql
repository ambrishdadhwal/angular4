-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 16, 2019 at 12:26 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `parking_master`
--

DROP TABLE IF EXISTS `parking_master`;
CREATE TABLE IF NOT EXISTS `parking_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parking_name` varchar(100) DEFAULT NULL,
  `parking_address` varchar(100) DEFAULT NULL,
  `parking_lat` varchar(100) DEFAULT NULL,
  `parking_long` varchar(100) DEFAULT NULL,
  `owner_name` varchar(100) DEFAULT NULL,
  `owner_mobile` varchar(100) DEFAULT NULL,
  `owner_email` varchar(100) DEFAULT NULL,
  `contact_no` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parking_master`
--

INSERT INTO `parking_master` (`id`, `parking_name`, `parking_address`, `parking_lat`, `parking_long`, `owner_name`, `owner_mobile`, `owner_email`, `contact_no`) VALUES
(1, 'Lodha Altamount Road', 'Mumbai', '18.968285', '72.810399', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578759'),
(2, 'Runwal Cumballa Hill', 'Mumbai', '18.95130043', '72.79680337', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578760'),
(3, 'Kalpataru Avana', 'Mumbai', '18.998241', '72.842322', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578761'),
(4, 'Celestia Building', 'Mumbai', '18.993029', '72.848037', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578762'),
(5, 'Lodha Excelus', 'Mumbai', '18.987179', '72.829204', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578763'),
(6, 'One Indiabulls', 'Mumbai', '19.007346', '72.833032', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578764'),
(7, 'Raheja', 'Mumbai', '19.008065', '72.822033', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578765'),
(8, 'Lodha The Park', 'Mumbai', '19.005207', '72.82848', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578766'),
(9, 'Indiabulls Finance Center', 'Mumbai', '19.00989226', '72.83529897', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578767'),
(10, 'Lodha The World Towers', 'Mumbai', '19.0024697', '72.8270212', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578768'),
(11, 'MCGM Parking Lot Kalina', 'Mumbai', '19.07062786', '72.86345546', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578769'),
(12, 'UltraspaceL', 'Mumbai', '19.072331', '72.867929', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578770'),
(13, 'Trios Fashion Mall', 'Mumbai', '19.055267', '72.832511', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578771'),
(14, 'Runwal Oshiwara', 'Mumbai', '19.14056', '72.828392', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578772'),
(15, 'MCGM Parking Lot Jay Prakash road', 'Mumbai', '19.12971941', '72.8249818', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578773'),
(16, 'Boomerang Building', 'Mumbai', '19.113679', '72.892193', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578774'),
(17, 'MCGM Parking Lot Powai', 'Mumbai', '19.118058', '72.890765', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578775'),
(18, 'Wadhwa Group', 'Mumbai', '19.099283', '72.918947', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578776'),
(19, 'Topiwala Center', 'Mumbai', '19.163961', '72.847803', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578777'),
(20, 'Romell', 'Mumbai', '19.170007', '72.853112', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578778'),
(21, 'Lodha Goregaon', 'Mumbai', '19.153844', '72.855757', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578779'),
(22, 'Club Aquaria', 'Mumbai', '19.23962622', '72.84812006', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578780'),
(23, 'Runwal Greens', 'Mumbai', '19.159985', '72.94452', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578781'),
(24, 'Lodha Supreme', 'Mumbai', '19.129177', '72.930867', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578782'),
(25, 'Runwal Developers', 'Mumbai', '19.180989', '72.947097', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578783'),
(26, 'Vikas Palazzo', 'Mumbai', '19.16964191', '72.95254599', 'MCGM', '9921578759', 'info@parkgaadi.com', '9921578784');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
