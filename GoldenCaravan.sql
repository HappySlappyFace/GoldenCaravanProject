-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2024 at 09:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GoldenCaravan`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `idBooking` int(11) NOT NULL,
  `idClient` int(11) NOT NULL,
  `idRoom` varchar(10) NOT NULL,
  `startDate` date NOT NULL,
  `endDate` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`idBooking`, `idClient`, `idRoom`, `startDate`, `endDate`, `status`, `price`) VALUES
(6, 1, '01TN001', '2023-05-15', '2023-05-20', '1', 965.00),
(7, 1, '02SF001', '2023-06-05', '2023-06-10', '1', 700.00),
(8, 1, '03SS001', '2023-07-01', '2023-07-05', '1', 568.00),
(9, 1, '04HM001', '2023-08-10', '2023-08-15', '1', 1020.00),
(10, 1, '01TN002', '2023-09-15', '2023-09-20', '1', 1675.00),
(11, 2, '01TN003', '2023-04-10', '2023-04-15', '1', 1100.00),
(12, 2, '02SF003', '2023-05-16', '2023-05-21', '1', 885.00),
(13, 2, '03SS003', '2023-06-20', '2023-06-25', '1', 885.00),
(14, 2, '04HM003', '2023-07-10', '2023-07-15', '1', 1545.00),
(15, 2, '01TN005', '2023-08-20', '2023-08-25', '1', 865.00),
(16, 3, '01TN004', '2023-03-15', '2023-03-20', '1', 1710.00),
(17, 3, '02SF004', '2023-04-25', '2023-04-30', '1', 570.00),
(18, 3, '03SS004', '2023-05-30', '2023-06-04', '1', 670.00),
(19, 3, '04HM004', '2023-07-05', '2023-07-10', '1', 1135.00),
(20, 3, '01TN006', '2023-08-15', '2023-08-20', '1', 515.00),
(21, 1, '01TN009', '2024-05-01', '2024-05-06', '0', 610.00),
(22, 1, '01TN009', '2024-05-01', '2024-05-06', '0', 610.00),
(23, 1, '01TN010', '2024-05-01', '2024-05-07', '0', 1914.00),
(24, 1, '01TN010', '2024-05-01', '2024-05-07', '0', 1914.00);

-- --------------------------------------------------------

--
-- Table structure for table `Hotels`
--

CREATE TABLE `Hotels` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `openingDate` date NOT NULL,
  `starRating` int(1) NOT NULL,
  `idHotel` int(2) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` int(8) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Hotels`
--

INSERT INTO `Hotels` (`name`, `address`, `openingDate`, `starRating`, `idHotel`, `city`, `phone`, `email`, `website`) VALUES
('Golden Caravan Tunis', '1 Independence Square', '2017-03-15', 5, 1, 'Tunis', 71123456, 'tunis@caravanhotels.tn', 'http://www.goldencaravantunis.tn'),
('Golden Caravan Sfax', '25 Commerce St', '2018-04-01', 4, 2, 'Sfax', 71234567, 'sfax@caravanhotels.tn', 'http://www.goldencaravansfax.tn'),
('Golden Caravan Sousse', '50 Marina Blvd', '2016-05-20', 5, 3, 'Sousse', 71345678, 'sousse@caravanhotels.tn', 'http://www.goldencaravansousse.tn'),
('Golden Caravan Hammamet', '75 Beachfront Ave', '2019-06-25', 5, 4, 'Hammamet', 71456789, 'hammamet@caravanhotels.tn', 'http://www.goldencaravanhammamet.tn'),
('Golden Caravan Djerba', '1 Freedom Road', '2015-07-15', 5, 5, 'Djerba', 71567890, 'djerba@caravanhotels.tn', 'http://www.goldencaravandjerba.tn'),
('Golden Caravan Bizerte', '30 Victory Lane', '2014-08-30', 4, 6, 'Bizerte', 71678901, 'bizerte@caravanhotels.tn', 'http://www.goldencaravanbizerte.tn'),
('Golden Caravan Nabeul', '55 Harvest Street', '2013-09-10', 4, 7, 'Nabeul', 71789012, 'nabeul@caravanhotels.tn', 'http://www.goldencaravannabeul.tn'),
('Golden Caravan Kairouan', '12 Ancient Road', '2012-10-22', 4, 8, 'Kairouan', 71890123, 'kairouan@caravanhotels.tn', 'http://www.goldencaravankairouan.tn'),
('Golden Caravan Monastir', '2 Seaview Promenade', '2011-11-11', 5, 9, 'Monastir', 71901234, 'monastir@caravanhotels.tn', 'http://www.goldencaravanmonastir.tn'),
('Golden Caravan Gabes', '78 Oasis Road', '2016-12-12', 3, 10, 'Gabes', 72012345, 'gabes@caravanhotels.tn', 'http://www.goldencaravangabes.tn'),
('Golden Caravan Tozeur', '90 Palm Boulevard', '2010-01-30', 4, 11, 'Tozeur', 72123456, 'tozeur@caravanhotels.tn', 'http://www.goldencaravantozeur.tn');

-- --------------------------------------------------------

--
-- Table structure for table `Rooms`
--

CREATE TABLE `Rooms` (
  `idRoom` varchar(10) NOT NULL,
  `idHotel` int(2) NOT NULL,
  `numberOfBeds` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `roomType` varchar(50) NOT NULL,
  `imageUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Rooms`
--

INSERT INTO `Rooms` (`idRoom`, `idHotel`, `numberOfBeds`, `status`, `price`, `roomType`, `imageUrl`) VALUES
('01TN001', 1, 1, 1, 193, 'Suite', 'https://images.unsplash.com/photo-1616046229478-9901c5536a45?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxfHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN002', 1, 4, 0, 335, 'Deluxe', 'https://images.unsplash.com/photo-1521783593447-5702b9bfd267?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyfHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN003', 1, 2, 0, 220, 'Deluxe', 'https://images.unsplash.com/photo-1601479207163-3c4dd6b0bb91?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzfHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN004', 1, 4, 0, 342, 'Deluxe', 'https://images.unsplash.com/photo-1634072319894-107e61606191?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0fHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN005', 1, 4, 0, 173, 'Standard', 'https://images.unsplash.com/photo-1505773278895-5efa7b11679a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1fHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN006', 1, 2, 1, 103, 'Standard', 'https://images.unsplash.com/photo-1561552919-3566c97a3a2c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2fHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN007', 1, 1, 1, 145, 'Deluxe', 'https://images.unsplash.com/photo-1536098561742-ca998e48cbcc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3fHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN008', 1, 2, 1, 296, 'Suite', 'https://images.unsplash.com/photo-1631215750638-bdde5f616128?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4fHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN009', 1, 1, 1, 122, 'Standard', 'https://images.unsplash.com/photo-1557729292-f97e48e056ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5fHxob3RlbCUyMHJvb218ZW58MHwyfHx8MTcxMzY2MzYxMnww&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN010', 1, 4, 1, 319, 'Deluxe', 'https://images.unsplash.com/photo-1622192309290-cad13f863bcf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN011', 1, 4, 0, 473, 'Suite', 'https://images.unsplash.com/photo-1638619281167-b134b7fb3095?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN012', 1, 3, 0, 232, 'Deluxe', 'https://images.unsplash.com/photo-1649678045544-6b59a343c64a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN013', 1, 1, 1, 91, 'Standard', 'https://images.unsplash.com/photo-1584536301769-0c5c357941db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxM3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN014', 1, 2, 1, 278, 'Suite', 'https://images.unsplash.com/photo-1499916078039-922301b0eb9b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN015', 1, 3, 0, 239, 'Deluxe', 'https://images.unsplash.com/photo-1587117238257-8cacadca6ae4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN016', 1, 1, 1, 116, 'Standard', 'https://images.unsplash.com/photo-1667125095636-dce94dcbdd96?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN017', 1, 4, 1, 345, 'Deluxe', 'https://images.unsplash.com/photo-1543137158-526f3507f08d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxN3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN018', 1, 3, 0, 367, 'Suite', 'https://images.unsplash.com/photo-1669302307140-ccdefa7035b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN019', 1, 2, 0, 184, 'Deluxe', 'https://images.unsplash.com/photo-1669302306929-4868ce2e1670?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN020', 1, 3, 0, 251, 'Deluxe', 'https://images.unsplash.com/photo-1645075960701-573cbc669de6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN021', 1, 1, 0, 161, 'Deluxe', 'https://images.unsplash.com/photo-1669302307123-5116be3041d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN022', 1, 4, 0, 302, 'Deluxe', 'https://images.unsplash.com/photo-1694328797957-4c51aed2c113?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN023', 1, 4, 1, 313, 'Deluxe', 'https://images.unsplash.com/photo-1669302307419-adb460fcccb1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyM3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN024', 1, 2, 0, 204, 'Deluxe', 'https://images.unsplash.com/photo-1694328876251-6709169f3686?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN025', 1, 2, 0, 227, 'Deluxe', 'https://images.unsplash.com/photo-1677317156621-bd950e6ea734?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN026', 1, 1, 0, 142, 'Deluxe', 'https://images.unsplash.com/photo-1622192308862-8032a315dd16?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN027', 1, 4, 0, 320, 'Deluxe', 'https://images.unsplash.com/photo-1669302307438-d752d980e12b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyN3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN028', 1, 2, 0, 280, 'Suite', 'https://images.unsplash.com/photo-1675515640338-1a97f8971a8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN029', 1, 2, 0, 198, 'Deluxe', 'https://images.unsplash.com/photo-1615874959474-d609969a20ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN030', 1, 4, 1, 219, 'Standard', 'https://images.unsplash.com/photo-1663659505016-d358722c06c3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN031', 1, 4, 0, 492, 'Suite', 'https://images.unsplash.com/photo-1663659504863-43dd69a5fda2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN032', 1, 3, 0, 139, 'Standard', 'https://images.unsplash.com/photo-1663659507747-480307d308e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN033', 1, 4, 0, 190, 'Standard', 'https://images.unsplash.com/photo-1623316200785-895cd6b807a6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzM3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN034', 1, 3, 1, 130, 'Standard', 'https://images.unsplash.com/photo-1663659509364-7a03ab59e2ad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN035', 1, 2, 1, 133, 'Standard', 'https://images.unsplash.com/photo-1663659506082-2e2193b3b6bd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN036', 1, 3, 1, 282, 'Deluxe', 'https://images.unsplash.com/photo-1659011557941-f61112150a77?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN037', 1, 4, 0, 339, 'Deluxe', 'https://images.unsplash.com/photo-1615529162924-f8605388461d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzN3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN038', 1, 3, 0, 127, 'Standard', 'https://images.unsplash.com/photo-1663659506588-5d5f24c3eb4a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN039', 1, 4, 0, 181, 'Standard', 'https://images.unsplash.com/photo-1598035409990-7b835b927bde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN040', 1, 2, 0, 138, 'Standard', 'https://images.unsplash.com/photo-1663659507885-f7be2eb45888?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN041', 1, 2, 1, 131, 'Standard', 'https://images.unsplash.com/photo-1659196454282-8d976c71901d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN042', 1, 4, 1, 301, 'Deluxe', 'https://images.unsplash.com/photo-1564869063369-e7c0c72dbe1c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN043', 1, 4, 1, 203, 'Standard', 'https://images.unsplash.com/photo-1615737986496-1d36ad26ae51?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN044', 1, 4, 0, 462, 'Suite', 'https://images.unsplash.com/photo-1662231024314-1975b5003ad1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN045', 1, 2, 0, 256, 'Suite', 'https://images.unsplash.com/photo-1632653323756-a9b6966bc4d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN046', 1, 1, 0, 142, 'Deluxe', 'https://images.unsplash.com/photo-1571712704100-5cade806bf6d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN047', 1, 2, 1, 162, 'Standard', 'https://images.unsplash.com/photo-1471623600634-4d04cfc56a27?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN048', 1, 1, 0, 118, 'Standard', 'https://images.unsplash.com/photo-1517912181842-e5a9d4701a4e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN049', 1, 4, 0, 461, 'Suite', 'https://images.unsplash.com/photo-1534385710745-994bfe255d57?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN050', 1, 3, 1, 352, 'Suite', 'https://images.unsplash.com/photo-1556978082-fc2023bb5081?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN051', 1, 3, 1, 274, 'Deluxe', 'https://images.unsplash.com/photo-1508044594351-60a97e8ce53a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN052', 1, 1, 0, 128, 'Deluxe', 'https://images.unsplash.com/photo-1549856625-824ce09aefc8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN053', 1, 2, 0, 264, 'Suite', 'https://images.unsplash.com/photo-1571896349842-33c89424de2d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN054', 1, 2, 0, 118, 'Standard', 'https://images.unsplash.com/photo-1592134873587-feab66402390?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN055', 1, 1, 1, 154, 'Suite', 'https://images.unsplash.com/photo-1594099462046-1df31fd4a66c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN056', 1, 3, 0, 402, 'Suite', 'https://images.unsplash.com/photo-1658077830608-81432c518756?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN057', 1, 1, 0, 80, 'Standard', 'https://images.unsplash.com/photo-1692858481494-8abb8889fac7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN058', 1, 2, 1, 274, 'Suite', 'https://images.unsplash.com/photo-1693080201663-62b2fab63abc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN059', 1, 1, 0, 149, 'Suite', 'https://images.unsplash.com/photo-1598968457686-c184b8ca7244?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw1OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN060', 1, 1, 1, 150, 'Deluxe', 'https://images.unsplash.com/photo-1664876080601-acf03b40c5e3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN061', 1, 3, 1, 284, 'Deluxe', 'https://images.unsplash.com/photo-1625550301704-b787dea12514?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN062', 1, 3, 1, 290, 'Deluxe', 'https://images.unsplash.com/photo-1503011510-c0e00592713b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN063', 1, 3, 1, 354, 'Suite', 'https://images.unsplash.com/photo-1584536286788-78ae81c2c54e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN064', 1, 2, 0, 163, 'Standard', 'https://images.unsplash.com/photo-1615979389741-6cfb168f3798?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN065', 1, 3, 0, 266, 'Deluxe', 'https://images.unsplash.com/photo-1624529334042-8ce6295bab97?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN066', 1, 3, 0, 162, 'Standard', 'https://images.unsplash.com/photo-1600813547757-39c40da12c8d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN067', 1, 4, 0, 167, 'Standard', 'https://images.unsplash.com/photo-1616047006789-b7af5afb8c20?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN068', 1, 3, 0, 163, 'Standard', 'https://images.unsplash.com/photo-1604309225246-86ad9ff7d79f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN069', 1, 1, 1, 134, 'Deluxe', 'https://images.unsplash.com/photo-1522107177-01884fcfa2bb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN070', 1, 4, 1, 150, 'Standard', 'https://images.unsplash.com/photo-1563103123-8efe739386f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN071', 1, 2, 0, 282, 'Suite', 'https://images.unsplash.com/photo-1637164857496-e5ac0aaacfd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN072', 1, 4, 1, 336, 'Deluxe', 'https://images.unsplash.com/photo-1566908293111-2cd8ba7f428c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN073', 1, 3, 1, 170, 'Standard', 'https://images.unsplash.com/photo-1555474488-d2282fe0593f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN074', 1, 3, 0, 363, 'Suite', 'https://images.unsplash.com/photo-1528772948179-19465fbc317f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN075', 1, 1, 0, 116, 'Standard', 'https://images.unsplash.com/photo-1514447191-c1ed4805f65b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN076', 1, 3, 0, 253, 'Deluxe', 'https://images.unsplash.com/photo-1523688471150-efdd09f0f312?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN077', 1, 1, 1, 164, 'Deluxe', 'https://images.unsplash.com/photo-1522124382822-38e7663df76e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN078', 1, 4, 1, 316, 'Deluxe', 'https://images.unsplash.com/photo-1542323073-2ffe8d1d7b7d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN079', 1, 2, 0, 190, 'Deluxe', 'https://images.unsplash.com/photo-1528881334314-8cd3b064837b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN080', 1, 2, 1, 207, 'Deluxe', 'https://images.unsplash.com/photo-1615874694520-474822394e73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN081', 1, 2, 1, 114, 'Standard', 'https://images.unsplash.com/photo-1618221639244-c1a8502c0eb9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN082', 1, 4, 1, 176, 'Standard', 'https://images.unsplash.com/photo-1663659508428-9e1a9ce517d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN083', 1, 4, 1, 157, 'Standard', 'https://images.unsplash.com/photo-1615529179035-e760f6a2dcee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN084', 1, 2, 0, 153, 'Standard', 'https://images.unsplash.com/photo-1615529182904-14819c35db37?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN085', 1, 1, 1, 167, 'Suite', 'https://images.unsplash.com/photo-1545175707-9eec1209f720?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN086', 1, 4, 1, 446, 'Suite', 'https://images.unsplash.com/photo-1542868530-528894d9869f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN087', 1, 3, 0, 278, 'Deluxe', 'https://images.unsplash.com/photo-1616486701797-0f33f61038ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN088', 1, 2, 0, 292, 'Suite', 'https://images.unsplash.com/photo-1615971677499-5467cbab01c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN089', 1, 3, 1, 262, 'Deluxe', 'https://images.unsplash.com/photo-1591115906252-6d977fec0e34?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw4OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN090', 1, 1, 1, 181, 'Suite', 'https://images.unsplash.com/photo-1615471618985-97108e2ba478?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN091', 1, 2, 0, 308, 'Suite', 'https://images.unsplash.com/photo-1663659504863-43dd69a5fda2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN092', 1, 2, 0, 262, 'Suite', 'https://images.unsplash.com/photo-1663659507747-480307d308e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN093', 1, 1, 0, 162, 'Deluxe', 'https://images.unsplash.com/photo-1623316200785-895cd6b807a6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzM3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN094', 1, 3, 1, 290, 'Deluxe', 'https://images.unsplash.com/photo-1663659509364-7a03ab59e2ad?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN095', 1, 4, 1, 212, 'Standard', 'https://images.unsplash.com/photo-1663659506082-2e2193b3b6bd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN096', 1, 1, 0, 96, 'Standard', 'https://images.unsplash.com/photo-1659011557941-f61112150a77?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN097', 1, 4, 1, 329, 'Deluxe', 'https://images.unsplash.com/photo-1615529162924-f8605388461d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzN3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN098', 1, 1, 1, 137, 'Standard', 'https://images.unsplash.com/photo-1663659506588-5d5f24c3eb4a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN099', 1, 2, 0, 190, 'Deluxe', 'https://images.unsplash.com/photo-1598035409990-7b835b927bde?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('01TN100', 1, 4, 0, 346, 'Deluxe', 'https://images.unsplash.com/photo-1663659507885-f7be2eb45888?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjM2MTV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF001', 2, 2, 1, 140, 'Standard', 'https://images.unsplash.com/photo-1638840992956-142399e7e2df?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF002', 2, 2, 1, 302, 'Suite', 'https://images.unsplash.com/photo-1584537319035-d6f4fb63f4c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF003', 2, 1, 0, 177, 'Suite', 'https://images.unsplash.com/photo-1585399090208-f231d43313aa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF004', 2, 2, 1, 114, 'Standard', 'https://images.unsplash.com/photo-1694079406378-e941cbf1d918?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF005', 2, 2, 0, 246, 'Suite', 'https://images.unsplash.com/photo-1636737187598-7d1d6f45a440?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF006', 2, 3, 0, 371, 'Suite', 'https://images.unsplash.com/photo-1650893843097-e32411fda3dd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF007', 2, 3, 1, 190, 'Standard', 'https://images.unsplash.com/photo-1581094982559-6a5b36f02e0f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF008', 2, 3, 1, 274, 'Deluxe', 'https://images.unsplash.com/photo-1665578799638-771e7dc45fba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF009', 2, 2, 1, 159, 'Standard', 'https://images.unsplash.com/photo-1621963420375-e8d44b41058c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF010', 2, 2, 0, 131, 'Standard', 'https://images.unsplash.com/photo-1665586510539-cc2a12a54347?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF011', 2, 4, 1, 317, 'Deluxe', 'https://images.unsplash.com/photo-1644211492216-8a5e874023f4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF012', 2, 1, 0, 164, 'Deluxe', 'https://images.unsplash.com/photo-1585295427549-29ef3448add5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF013', 2, 3, 1, 390, 'Suite', 'https://images.unsplash.com/photo-1662454377865-fa2eebb2a4b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF014', 2, 2, 0, 250, 'Suite', 'https://images.unsplash.com/photo-1654007288460-00ecea5f45e6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF015', 2, 4, 0, 497, 'Suite', 'https://images.unsplash.com/photo-1559744775-7a6bfcc4b824?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF016', 2, 2, 0, 256, 'Suite', 'https://images.unsplash.com/photo-1639150290415-b059bf94ec7f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF017', 2, 3, 0, 367, 'Suite', 'https://images.unsplash.com/photo-1599722585837-c1cb8eea32ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF018', 2, 2, 0, 158, 'Standard', 'https://images.unsplash.com/photo-1611597832906-c1c8033478ba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF019', 2, 3, 1, 235, 'Deluxe', 'https://images.unsplash.com/photo-1662571029727-a9e3bb1554d3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF020', 2, 1, 0, 204, 'Suite', 'https://images.unsplash.com/photo-1562669602-2d1d940c2140?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF021', 2, 2, 1, 284, 'Suite', 'https://images.unsplash.com/photo-1571116597236-b8a3ebe15f59?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF022', 2, 4, 1, 490, 'Suite', 'https://images.unsplash.com/photo-1578063527960-bf04c04e34d6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF023', 2, 1, 1, 209, 'Suite', 'https://images.unsplash.com/photo-1608987900395-66cc5e13878a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF024', 2, 3, 0, 168, 'Standard', 'https://images.unsplash.com/photo-1589550427256-5a2d3646ed50?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF025', 2, 1, 1, 160, 'Deluxe', 'https://images.unsplash.com/photo-1596168119695-b92d5af0a9cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF026', 2, 1, 0, 129, 'Standard', 'https://images.unsplash.com/photo-1567807052979-c991f0635b54?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF027', 2, 4, 1, 307, 'Deluxe', 'https://images.unsplash.com/photo-1562809896-1b1514f40708?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF028', 2, 2, 0, 179, 'Deluxe', 'https://images.unsplash.com/photo-1662454377817-c21679487de0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF029', 2, 1, 0, 114, 'Deluxe', 'https://images.unsplash.com/photo-1516888693095-f0e05366ddc6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzODl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF030', 2, 3, 0, 159, 'Standard', 'https://images.unsplash.com/photo-1667919226487-59c4846073cc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF031', 2, 2, 1, 196, 'Deluxe', 'https://images.unsplash.com/photo-1639906243535-0bec964ae646?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF032', 2, 2, 1, 270, 'Suite', 'https://images.unsplash.com/photo-1597314040740-5836f612a030?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF033', 2, 3, 1, 126, 'Standard', 'https://images.unsplash.com/photo-1582036683166-343564eba38b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF034', 2, 4, 1, 438, 'Suite', 'https://images.unsplash.com/photo-1664394681121-fdfd3dc8fd56?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF035', 2, 4, 0, 456, 'Suite', 'https://images.unsplash.com/photo-1636647511414-c9ec06da32bc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF036', 2, 2, 1, 239, 'Deluxe', 'https://images.unsplash.com/photo-1561478875-57cd63e1b46a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF037', 2, 1, 1, 85, 'Standard', 'https://images.unsplash.com/photo-1551601651-09492b5468b6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF038', 2, 1, 1, 202, 'Suite', 'https://images.unsplash.com/photo-1665586510291-ae722d1d1f00?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF039', 2, 3, 0, 151, 'Standard', 'https://images.unsplash.com/photo-1649372097096-688eb94c770b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzOTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF040', 2, 3, 0, 284, 'Deluxe', 'https://images.unsplash.com/photo-1582916920892-2b55298d17d9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF041', 2, 4, 0, 357, 'Deluxe', 'https://images.unsplash.com/photo-1646838116343-1fd356d7e4e8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF042', 2, 3, 0, 174, 'Standard', 'https://images.unsplash.com/photo-1622014140092-20f38a61186c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF043', 2, 4, 0, 166, 'Standard', 'https://images.unsplash.com/photo-1646153389665-c7310d17f356?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF044', 2, 4, 0, 319, 'Deluxe', 'https://images.unsplash.com/photo-1603997545228-44b43658210d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF045', 2, 3, 1, 293, 'Deluxe', 'https://images.unsplash.com/photo-1655540506312-472ffff6660e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF046', 2, 3, 1, 244, 'Deluxe', 'https://images.unsplash.com/photo-1634321860960-b4f74d4c5436?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF047', 2, 4, 1, 440, 'Suite', 'https://images.unsplash.com/photo-1604397852861-2c1555f08852?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF048', 2, 2, 0, 204, 'Deluxe', 'https://images.unsplash.com/photo-1513705215874-6888a1801116?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF049', 2, 4, 1, 356, 'Deluxe', 'https://images.unsplash.com/photo-1642715614665-8e5534e7e427?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF050', 2, 2, 1, 302, 'Suite', 'https://images.unsplash.com/photo-1610451200408-ac96175fc1d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF051', 2, 3, 1, 141, 'Standard', 'https://images.unsplash.com/photo-1572040261529-0c0ca1fd6c56?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF052', 2, 1, 1, 137, 'Standard', 'https://images.unsplash.com/photo-1599941973480-33ce6bbca25d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF053', 2, 4, 1, 210, 'Standard', 'https://images.unsplash.com/photo-1602164075766-4e174147d2a1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF054', 2, 3, 0, 295, 'Deluxe', 'https://images.unsplash.com/photo-1707352757059-511909302140?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF055', 2, 1, 1, 148, 'Deluxe', 'https://images.unsplash.com/photo-1661207718083-5b13407cbe41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF056', 2, 3, 1, 262, 'Deluxe', 'https://images.unsplash.com/photo-1706440984477-5e84aca1e9c1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF057', 2, 4, 0, 478, 'Suite', 'https://images.unsplash.com/photo-1576243164640-12839aec8f7f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF058', 2, 3, 0, 162, 'Standard', 'https://images.unsplash.com/photo-1588504273983-667893edbe3d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF059', 2, 1, 1, 160, 'Suite', 'https://images.unsplash.com/photo-1614377032396-7fef594e739c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF060', 2, 2, 0, 254, 'Suite', 'https://images.unsplash.com/photo-1702421093100-faaa4c590d67?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzQ5fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF061', 2, 3, 0, 192, 'Standard', 'https://images.unsplash.com/photo-1597862298890-67bd25886d34?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF062', 2, 2, 0, 179, 'Deluxe', 'https://images.unsplash.com/photo-1649559570698-cd2b2cfe9e57?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF063', 2, 1, 1, 143, 'Deluxe', 'https://images.unsplash.com/photo-1551747973-11121b3b631f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF064', 2, 4, 1, 191, 'Standard', 'https://images.unsplash.com/photo-1571839154183-6bb84a567903?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF065', 2, 4, 1, 489, 'Suite', 'https://images.unsplash.com/photo-1553811526-27486ddd0258?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF066', 2, 2, 0, 232, 'Deluxe', 'https://images.unsplash.com/photo-1558883333-d3a209acfbf6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF067', 2, 3, 1, 240, 'Deluxe', 'https://images.unsplash.com/photo-1577349516265-7a186d31bd02?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF068', 2, 2, 0, 117, 'Standard', 'https://images.unsplash.com/photo-1658780499451-94b9abbed73d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF069', 2, 1, 0, 118, 'Standard', 'https://images.unsplash.com/photo-1666188911168-c722603c812c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF070', 2, 1, 1, 126, 'Deluxe', 'https://images.unsplash.com/photo-1591391270424-998c61e092bd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF071', 2, 3, 1, 278, 'Deluxe', 'https://images.unsplash.com/flagged/photo-1588262516915-e342186ecdf6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF072', 2, 4, 1, 329, 'Deluxe', 'https://images.unsplash.com/photo-1611182085226-9fdc2357c029?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF073', 2, 3, 1, 235, 'Deluxe', 'https://images.unsplash.com/photo-1617400549598-84806b847c1a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF074', 2, 4, 0, 457, 'Suite', 'https://images.unsplash.com/photo-1648949416036-cf80a1335cce?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF075', 2, 1, 0, 200, 'Suite', 'https://images.unsplash.com/photo-1641201241553-6ab50a87b8c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF076', 2, 4, 1, 195, 'Standard', 'https://images.unsplash.com/photo-1628786289498-d3a480af60e7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0MzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF077', 2, 1, 1, 114, 'Standard', 'https://images.unsplash.com/photo-1579288954684-d8cca5ec1223?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF078', 2, 2, 1, 175, 'Deluxe', 'https://images.unsplash.com/photo-1634382615649-7227ce9a5cee?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF079', 2, 2, 1, 129, 'Standard', 'https://images.unsplash.com/photo-1694432928960-df6581c3b489?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0Mzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF080', 2, 4, 1, 471, 'Suite', 'https://images.unsplash.com/photo-1588088229474-6fb201577c72?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF081', 2, 1, 0, 169, 'Suite', 'https://images.unsplash.com/photo-1581056877415-80329f9675d4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF082', 2, 3, 0, 180, 'Standard', 'https://images.unsplash.com/photo-1574144168128-1b744f109868?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF083', 2, 4, 1, 295, 'Deluxe', 'https://images.unsplash.com/photo-1706708573744-5253b417578d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF084', 2, 3, 0, 164, 'Standard', 'https://images.unsplash.com/photo-1621907014419-d7ef4f81a45d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF085', 2, 4, 0, 301, 'Deluxe', 'https://images.unsplash.com/photo-1662974553184-aaab82598cd3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF086', 2, 1, 1, 169, 'Deluxe', 'https://images.unsplash.com/photo-1544837866-4ed8cb64dab1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF087', 2, 1, 0, 135, 'Standard', 'https://images.unsplash.com/photo-1566398130845-6d470a8e96ef?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF088', 2, 2, 0, 280, 'Suite', 'https://images.unsplash.com/photo-1612453458379-25c8b22c8837?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF089', 2, 1, 0, 154, 'Suite', 'https://images.unsplash.com/photo-1646936345966-273c8cd3ce83?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF090', 2, 2, 0, 140, 'Standard', 'https://images.unsplash.com/photo-1651415223860-1a4bf68510c4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw0NTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF091', 2, 3, 1, 381, 'Suite', 'https://images.unsplash.com/photo-1693137420900-5a201fa1369b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF092', 2, 1, 0, 169, 'Suite', 'https://images.unsplash.com/photo-1656433795335-b62feb58e2fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF093', 2, 1, 0, 205, 'Suite', 'https://images.unsplash.com/photo-1503513883989-25ef8b2f1a53?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF094', 2, 4, 0, 296, 'Deluxe', 'https://images.unsplash.com/photo-1686308629157-bd4f832be5a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF095', 2, 3, 0, 283, 'Deluxe', 'https://images.unsplash.com/photo-1500985711934-1b03a1cb50e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF096', 2, 2, 1, 302, 'Suite', 'https://images.unsplash.com/photo-1536639240649-1f0979e7993d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF097', 2, 2, 0, 262, 'Suite', 'https://images.unsplash.com/photo-1633734604812-74b96543a96e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF098', 2, 4, 1, 194, 'Standard', 'https://images.unsplash.com/photo-1542058374780-be185a5e80fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('02SF099', 2, 2, 0, 195, 'Deluxe', 'https://images.unsplash.com/photo-1686308629121-b22f989d5c62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080');
INSERT INTO `Rooms` (`idRoom`, `idHotel`, `numberOfBeds`, `status`, `price`, `roomType`, `imageUrl`) VALUES
('02SF100', 2, 2, 1, 130, 'Standard', 'https://images.unsplash.com/photo-1614447911556-01f4d9900185?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MzUwfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS001', 3, 2, 0, 142, 'Standard', 'https://images.unsplash.com/photo-1616594179229-1fc9289ee234?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS002', 3, 1, 1, 162, 'Suite', 'https://images.unsplash.com/photo-1618219667957-57bcae695603?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS003', 3, 4, 0, 177, 'Standard', 'https://images.unsplash.com/photo-1645527898423-a9654db8d29a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS004', 3, 1, 0, 134, 'Deluxe', 'https://images.unsplash.com/photo-1663811397443-2d058a628295?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS005', 3, 1, 1, 159, 'Deluxe', 'https://images.unsplash.com/photo-1663811397374-a51d5ae11b73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS006', 3, 2, 1, 142, 'Standard', 'https://images.unsplash.com/photo-1617098474202-0d0d7f60c56b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS007', 3, 2, 1, 189, 'Deluxe', 'https://images.unsplash.com/photo-1632119580908-ae947d4c7691?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS008', 3, 1, 0, 198, 'Suite', 'https://images.unsplash.com/photo-1474221550179-c492fb337327?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS009', 3, 1, 0, 157, 'Suite', 'https://images.unsplash.com/photo-1615529189232-5d380facaf73?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS010', 3, 1, 0, 216, 'Suite', 'https://images.unsplash.com/photo-1618220252344-8ec99ec624b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS011', 3, 1, 1, 165, 'Suite', 'https://images.unsplash.com/photo-1633354516388-41b56d6fe980?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS012', 3, 2, 0, 169, 'Standard', 'https://images.unsplash.com/photo-1551601651-2a8555f1a136?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS013', 3, 2, 1, 226, 'Deluxe', 'https://images.unsplash.com/photo-1616046811569-e426552deeba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS014', 3, 3, 0, 363, 'Suite', 'https://images.unsplash.com/photo-1616486788371-62d930495c44?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS015', 3, 4, 1, 197, 'Standard', 'https://images.unsplash.com/photo-1663811397302-8268848ca312?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS016', 3, 4, 0, 322, 'Deluxe', 'https://images.unsplash.com/photo-1617098650990-217c7cf9de26?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS017', 3, 4, 1, 350, 'Deluxe', 'https://images.unsplash.com/photo-1626965623298-a05c39976ce2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS018', 3, 2, 0, 127, 'Standard', 'https://images.unsplash.com/photo-1648657459277-2655e01810b2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS019', 3, 1, 0, 104, 'Standard', 'https://images.unsplash.com/photo-1648657458755-74ceaf075f18?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyODl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS020', 3, 4, 1, 468, 'Suite', 'https://images.unsplash.com/photo-1650964336589-96b3f1719a7b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS021', 3, 1, 0, 166, 'Suite', 'https://images.unsplash.com/photo-1646153389640-958d7ba1a864?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS022', 3, 4, 1, 331, 'Deluxe', 'https://images.unsplash.com/photo-1656403002413-2ac6137237d6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS023', 3, 2, 0, 292, 'Suite', 'https://images.unsplash.com/photo-1616046146424-dcf7164a098f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS024', 3, 1, 1, 216, 'Suite', 'https://images.unsplash.com/photo-1663811397236-731fb210c817?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS025', 3, 1, 1, 177, 'Deluxe', 'https://images.unsplash.com/photo-1665272475970-ea2ac5c28521?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS026', 3, 2, 0, 248, 'Suite', 'https://images.unsplash.com/photo-1644572533834-57c41b413db9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS027', 3, 4, 1, 324, 'Deluxe', 'https://images.unsplash.com/photo-1663851360815-784f3ba447f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS028', 3, 3, 0, 292, 'Deluxe', 'https://images.unsplash.com/photo-1625251790636-b8cb6fae0dc6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS029', 3, 3, 0, 351, 'Suite', 'https://images.unsplash.com/photo-1642452150280-8156af2c05db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyOTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS030', 3, 1, 0, 178, 'Suite', 'https://images.unsplash.com/photo-1628942051760-fbf5cd0371d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS031', 3, 2, 1, 125, 'Standard', 'https://images.unsplash.com/photo-1616046080409-a7c37f84ce15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS032', 3, 4, 0, 322, 'Deluxe', 'https://images.unsplash.com/photo-1518860308377-800f02d5498a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS033', 3, 4, 1, 473, 'Suite', 'https://images.unsplash.com/photo-1464564531096-f0163633a18a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS034', 3, 2, 0, 206, 'Deluxe', 'https://images.unsplash.com/photo-1702339955839-489ff9b5ce58?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS035', 3, 3, 1, 256, 'Deluxe', 'https://images.unsplash.com/photo-1680629197563-2ece6825f75a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS036', 3, 1, 0, 190, 'Suite', 'https://images.unsplash.com/photo-1692313159128-c6975f357d28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS037', 3, 3, 0, 162, 'Standard', 'https://images.unsplash.com/photo-1561024172-0ae2ebd65018?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS038', 3, 1, 0, 110, 'Standard', 'https://images.unsplash.com/photo-1699371632057-d94696c0ad09?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS039', 3, 3, 1, 234, 'Deluxe', 'https://images.unsplash.com/photo-1664315363672-532f571e8ca5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS040', 3, 4, 1, 459, 'Suite', 'https://images.unsplash.com/photo-1708834199221-7db2a6c37148?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS041', 3, 2, 0, 159, 'Standard', 'https://images.unsplash.com/photo-1699245363243-d47a11325341?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS042', 3, 3, 0, 274, 'Deluxe', 'https://images.unsplash.com/photo-1679849006427-1dc8b6823a4d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS043', 3, 2, 1, 302, 'Suite', 'https://images.unsplash.com/photo-1680899492240-79a4538fdb4c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS044', 3, 3, 0, 244, 'Deluxe', 'https://images.unsplash.com/photo-1584418879404-85eb6c39c30c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS045', 3, 1, 1, 96, 'Standard', 'https://images.unsplash.com/photo-1588625500633-a0cd518f0f60?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS046', 3, 2, 0, 107, 'Standard', 'https://images.unsplash.com/photo-1665586510498-4d2e5d29e2f4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS047', 3, 2, 1, 280, 'Suite', 'https://images.unsplash.com/photo-1603076534270-364861eac82d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS048', 3, 4, 0, 314, 'Deluxe', 'https://images.unsplash.com/photo-1605825831039-8b6b4199b04a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS049', 3, 4, 0, 437, 'Suite', 'https://images.unsplash.com/photo-1626826832131-35d65fc84358?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS050', 3, 4, 0, 176, 'Standard', 'https://images.unsplash.com/photo-1589695021834-9f2413573b28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS051', 3, 4, 1, 163, 'Standard', 'https://images.unsplash.com/photo-1638975574479-256d8eb43fa6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS052', 3, 4, 0, 447, 'Suite', 'https://images.unsplash.com/photo-1636730767197-e9854b7f0d87?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS053', 3, 2, 0, 278, 'Suite', 'https://images.unsplash.com/photo-1598917181883-f84f69a3dcdf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS054', 3, 3, 0, 339, 'Suite', 'https://images.unsplash.com/photo-1631903562086-bedfb534ef86?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS055', 3, 1, 0, 115, 'Standard', 'https://images.unsplash.com/photo-1641939016077-a72d4d20c0ab?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS056', 3, 1, 0, 75, 'Standard', 'https://images.unsplash.com/photo-1583590964953-5a8765633468?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS057', 3, 2, 0, 212, 'Deluxe', 'https://images.unsplash.com/photo-1644942803588-fbae66bb0d72?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS058', 3, 4, 0, 354, 'Deluxe', 'https://images.unsplash.com/photo-1603198132334-5478a1ec5bc1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS059', 3, 2, 1, 240, 'Deluxe', 'https://images.unsplash.com/photo-1624302286558-cd1867fb5b68?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS060', 3, 2, 1, 220, 'Deluxe', 'https://images.unsplash.com/photo-1697016990493-2b9ef10e96f0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS061', 3, 3, 0, 179, 'Standard', 'https://images.unsplash.com/photo-1700579333702-3a9924bbe939?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS062', 3, 3, 1, 171, 'Standard', 'https://images.unsplash.com/photo-1627142691733-49d8642d0bbf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS063', 3, 1, 1, 124, 'Standard', 'https://images.unsplash.com/photo-1698062192865-b8ca7f70d546?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS064', 3, 2, 1, 150, 'Standard', 'https://images.unsplash.com/photo-1644421439741-712c7fde7e95?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS065', 3, 2, 1, 169, 'Standard', 'https://images.unsplash.com/photo-1643441651141-9b0c6e8b48f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS066', 3, 1, 1, 156, 'Deluxe', 'https://images.unsplash.com/photo-1561024173-e6caebe6ddc3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS067', 3, 2, 1, 239, 'Deluxe', 'https://images.unsplash.com/photo-1671820071428-08668090419b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS068', 3, 2, 1, 100, 'Standard', 'https://images.unsplash.com/photo-1555050891-f878b6570480?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS069', 3, 2, 1, 199, 'Deluxe', 'https://images.unsplash.com/photo-1653057897127-edc403b31705?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzMzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS070', 3, 3, 0, 406, 'Suite', 'https://images.unsplash.com/photo-1558244662-0f555a954f11?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS071', 3, 3, 1, 258, 'Deluxe', 'https://images.unsplash.com/photo-1560878465-441a162bb4b8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS072', 3, 4, 1, 482, 'Suite', 'https://images.unsplash.com/photo-1641957991880-8f2714e8acf3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS073', 3, 2, 0, 167, 'Standard', 'https://images.unsplash.com/photo-1663851782559-360286c8100d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS074', 3, 4, 1, 323, 'Deluxe', 'https://images.unsplash.com/photo-1669758289314-8b3bf45b27ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS075', 3, 1, 0, 110, 'Deluxe', 'https://images.unsplash.com/photo-1677364161878-40f4eadabb9b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS076', 3, 1, 0, 90, 'Standard', 'https://images.unsplash.com/photo-1646489553899-c4c4b5a72ccc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS077', 3, 4, 0, 160, 'Standard', 'https://images.unsplash.com/photo-1632323201964-f303f164378c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS078', 3, 2, 1, 222, 'Deluxe', 'https://images.unsplash.com/photo-1643526399974-7de62b65a6f8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS079', 3, 1, 1, 140, 'Deluxe', 'https://images.unsplash.com/photo-1574197634772-f0de0d41a02e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS080', 3, 4, 1, 481, 'Suite', 'https://images.unsplash.com/photo-1624926884010-07bb714a4e66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS081', 3, 1, 1, 177, 'Suite', 'https://images.unsplash.com/photo-1602497861417-a1de2b405bea?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS082', 3, 4, 1, 356, 'Deluxe', 'https://images.unsplash.com/photo-1579684385127-1ef15d508118?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS083', 3, 2, 1, 274, 'Suite', 'https://images.unsplash.com/photo-1551601651-05a4836d25c2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS084', 3, 1, 1, 119, 'Deluxe', 'https://images.unsplash.com/photo-1619622651801-ce384778aacf?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS085', 3, 4, 1, 205, 'Standard', 'https://images.unsplash.com/photo-1551601651-71a596031b84?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS086', 3, 3, 1, 145, 'Standard', 'https://images.unsplash.com/photo-1572884402461-4b073df48a8a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS087', 3, 2, 1, 254, 'Suite', 'https://images.unsplash.com/photo-1658621169445-d4dd43497e8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS088', 3, 3, 1, 141, 'Standard', 'https://images.unsplash.com/photo-1641638051559-eb58e9fe387e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS089', 3, 1, 1, 153, 'Suite', 'https://images.unsplash.com/photo-1706036957257-1be06faf7486?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS090', 3, 4, 0, 193, 'Standard', 'https://images.unsplash.com/photo-1554039923-b14c7459b605?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwzNjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS091', 3, 1, 0, 133, 'Standard', 'https://images.unsplash.com/photo-1517596107285-5ce3dd0f61df?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS092', 3, 3, 0, 296, 'Deluxe', 'https://images.unsplash.com/photo-1588013229181-8762c831d876?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS093', 3, 4, 0, 439, 'Suite', 'https://images.unsplash.com/photo-1587480335344-95513e5cf3b7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS094', 3, 2, 1, 304, 'Suite', 'https://images.unsplash.com/photo-1652126176790-63d816be1d51?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS095', 3, 2, 1, 115, 'Standard', 'https://images.unsplash.com/photo-1694372109133-916c9dba2a1b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS096', 3, 2, 1, 250, 'Suite', 'https://images.unsplash.com/photo-1673897969225-2abe3539c8c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS097', 3, 2, 1, 234, 'Deluxe', 'https://images.unsplash.com/photo-1663659506646-f9860a7b7a99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS098', 3, 2, 0, 227, 'Deluxe', 'https://images.unsplash.com/photo-1532796884742-0133556b598b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS099', 3, 4, 0, 195, 'Standard', 'https://images.unsplash.com/photo-1455826581186-3031bc66471d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('03SS100', 3, 4, 0, 183, 'Standard', 'https://images.unsplash.com/photo-1667758088178-3a52b9c12558?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0Mjk2fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM001', 4, 4, 1, 204, 'Standard', 'https://images.unsplash.com/photo-1694329339995-a3a890d9bff5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM002', 4, 1, 1, 170, 'Suite', 'https://images.unsplash.com/photo-1663659506792-686a4465478e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM003', 4, 4, 0, 309, 'Deluxe', 'https://images.unsplash.com/photo-1485726696757-76885c99f0f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM004', 4, 2, 1, 227, 'Deluxe', 'https://images.unsplash.com/photo-1675294292093-5f6f5bb8836f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM005', 4, 1, 1, 145, 'Deluxe', 'https://images.unsplash.com/photo-1650568453231-ca7daecec3f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM006', 4, 2, 1, 194, 'Deluxe', 'https://images.unsplash.com/photo-1532597878953-3af87cbacf59?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM007', 4, 3, 1, 162, 'Standard', 'https://images.unsplash.com/photo-1656153164400-c3fa6b93e942?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM008', 4, 4, 1, 156, 'Standard', 'https://images.unsplash.com/photo-1655926254815-4b865061cc3e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM009', 4, 4, 0, 474, 'Suite', 'https://images.unsplash.com/photo-1508834199084-a6f30e906717?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM010', 4, 3, 0, 385, 'Suite', 'https://images.unsplash.com/photo-1686308629187-ba8d72fc480f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM011', 4, 2, 0, 145, 'Standard', 'https://images.unsplash.com/photo-1623661411319-da527ebe2625?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM012', 4, 2, 1, 210, 'Deluxe', 'https://images.unsplash.com/photo-1703242327538-919ac43a41b6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM013', 4, 2, 0, 211, 'Deluxe', 'https://images.unsplash.com/photo-1496298628968-4156c462a8e3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM014', 4, 4, 0, 183, 'Standard', 'https://images.unsplash.com/photo-1703888162799-a1c154c01d70?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM015', 4, 2, 1, 224, 'Deluxe', 'https://images.unsplash.com/photo-1662100030158-b8c0900c7c83?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM016', 4, 3, 1, 235, 'Deluxe', 'https://images.unsplash.com/photo-1535467269829-2959b350bdb7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM017', 4, 1, 0, 136, 'Standard', 'https://images.unsplash.com/photo-1555344013-25005aa65b83?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM018', 4, 1, 0, 122, 'Deluxe', 'https://images.unsplash.com/photo-1582900657396-c4ceff9f0e51?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM019', 4, 3, 0, 241, 'Deluxe', 'https://images.unsplash.com/photo-1581235854265-41981cb85c88?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxOTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM020', 4, 3, 1, 138, 'Standard', 'https://images.unsplash.com/photo-1623444943400-7160804c311d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM021', 4, 4, 0, 445, 'Suite', 'https://images.unsplash.com/photo-1693079410420-959044536102?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM022', 4, 2, 0, 165, 'Standard', 'https://images.unsplash.com/photo-1632569732039-1932b616a696?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM023', 4, 3, 1, 269, 'Deluxe', 'https://images.unsplash.com/photo-1492943438905-0f575e7a748e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM024', 4, 4, 0, 472, 'Suite', 'https://images.unsplash.com/photo-1656153164015-18cf1513da28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM025', 4, 4, 1, 207, 'Standard', 'https://images.unsplash.com/photo-1663659505923-68e15ba8a6d5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM026', 4, 1, 1, 137, 'Deluxe', 'https://images.unsplash.com/photo-1703358902409-fe6b4a3e8632?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM027', 4, 1, 1, 92, 'Standard', 'https://images.unsplash.com/photo-1511763368359-c0d890ede0c2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM028', 4, 4, 0, 470, 'Suite', 'https://images.unsplash.com/photo-1694124087658-74c87a477660?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM029', 4, 4, 1, 209, 'Standard', 'https://images.unsplash.com/photo-1663659505370-5015b6277938?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM030', 4, 1, 1, 164, 'Suite', 'https://images.unsplash.com/photo-1663659506792-53a3db501f62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM031', 4, 3, 1, 194, 'Standard', 'https://images.unsplash.com/photo-1675457913091-c19e92f575f5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM032', 4, 4, 1, 182, 'Standard', 'https://images.unsplash.com/photo-1656153164394-99c8867e0746?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM033', 4, 4, 0, 326, 'Deluxe', 'https://images.unsplash.com/photo-1565065180749-64404dc752b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM034', 4, 3, 1, 184, 'Standard', 'https://images.unsplash.com/photo-1650636775846-26f30c01eb41?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM035', 4, 1, 0, 199, 'Suite', 'https://images.unsplash.com/photo-1663659506663-db6cd215164f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM036', 4, 1, 0, 203, 'Suite', 'https://images.unsplash.com/photo-1663659505370-5015b6277938?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM037', 4, 2, 0, 272, 'Suite', 'https://images.unsplash.com/photo-1663659506792-53a3db501f62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM038', 4, 3, 0, 295, 'Deluxe', 'https://images.unsplash.com/photo-1663659506570-067bf9e9937f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM039', 4, 4, 1, 164, 'Standard', 'https://images.unsplash.com/photo-1663659507336-488edb025873?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM040', 4, 4, 0, 342, 'Deluxe', 'https://images.unsplash.com/photo-1667758088283-be91a1165c57?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM041', 4, 4, 1, 192, 'Standard', 'https://images.unsplash.com/photo-1663659505875-3b85ce2c2951?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM042', 4, 2, 1, 308, 'Suite', 'https://images.unsplash.com/photo-1663659506174-7304cebfa7f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM043', 4, 3, 1, 166, 'Standard', 'https://images.unsplash.com/photo-1646209723876-a5c96e0b45d7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM044', 4, 2, 1, 256, 'Suite', 'https://images.unsplash.com/photo-1623421808197-8d9826f072bc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM045', 4, 1, 1, 172, 'Suite', 'https://images.unsplash.com/photo-1675294291503-5d47eaba7485?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM046', 4, 4, 1, 348, 'Deluxe', 'https://images.unsplash.com/photo-1653835946324-ed3201cc7806?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM047', 4, 1, 1, 131, 'Standard', 'https://images.unsplash.com/photo-1663659508560-b7ad050e1d99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM048', 4, 4, 1, 465, 'Suite', 'https://images.unsplash.com/photo-1663659507841-9cc4db16ada9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM049', 4, 2, 0, 183, 'Deluxe', 'https://images.unsplash.com/photo-1656153164480-aa6bacde093c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM050', 4, 2, 1, 270, 'Suite', 'https://images.unsplash.com/photo-1597469998710-956800f95e5b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM051', 4, 4, 1, 310, 'Deluxe', 'https://images.unsplash.com/photo-1622661950529-8dd499848347?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM052', 4, 3, 1, 241, 'Deluxe', 'https://images.unsplash.com/photo-1580935000822-1458c7e1d08a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM053', 4, 1, 1, 175, 'Suite', 'https://images.unsplash.com/photo-1559339984-06898223c516?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM054', 4, 4, 1, 198, 'Standard', 'https://images.unsplash.com/photo-1690810859793-ee580da453cb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM055', 4, 2, 1, 107, 'Standard', 'https://images.unsplash.com/photo-1675294294829-9d071dd6bd62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM056', 4, 1, 0, 176, 'Deluxe', 'https://images.unsplash.com/photo-1671098581616-ed77f82d2140?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM057', 4, 3, 0, 149, 'Standard', 'https://images.unsplash.com/photo-1585585569066-47df133e08b1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM058', 4, 1, 0, 103, 'Standard', 'https://images.unsplash.com/photo-1675670536662-d034c84d79a3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM059', 4, 2, 0, 232, 'Deluxe', 'https://images.unsplash.com/photo-1656153164198-88ea49ef687d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyMzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIxfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM060', 4, 3, 0, 190, 'Standard', 'https://images.unsplash.com/photo-1656153163707-6ca9bf2745ba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM061', 4, 4, 0, 484, 'Suite', 'https://images.unsplash.com/photo-1671098581616-ed77f82d2140?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM062', 4, 1, 0, 151, 'Suite', 'https://images.unsplash.com/photo-1622661950529-8dd499848347?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM063', 4, 1, 0, 88, 'Standard', 'https://images.unsplash.com/photo-1597469998710-956800f95e5b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM064', 4, 4, 1, 336, 'Deluxe', 'https://images.unsplash.com/photo-1663659510221-8cd7f37267dc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM065', 4, 2, 0, 107, 'Standard', 'https://images.unsplash.com/photo-1658077828731-272d71b71ad9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM066', 4, 4, 1, 218, 'Standard', 'https://images.unsplash.com/photo-1658077830483-f150ef381bba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM067', 4, 2, 0, 149, 'Standard', 'https://images.unsplash.com/photo-1656153163769-31fc9d98d1fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM068', 4, 3, 0, 126, 'Standard', 'https://images.unsplash.com/photo-1685910689957-142c59d66aa1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM069', 4, 4, 0, 197, 'Standard', 'https://images.unsplash.com/photo-1626855291788-5eabaee19ecc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM070', 4, 3, 0, 340, 'Suite', 'https://images.unsplash.com/photo-1665246196147-175cfd7d42d6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM071', 4, 2, 0, 129, 'Standard', 'https://images.unsplash.com/photo-1616486886892-ff366aa67ba4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM072', 4, 2, 0, 276, 'Suite', 'https://images.unsplash.com/photo-1616048056617-93b94a339009?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM073', 4, 3, 0, 288, 'Deluxe', 'https://images.unsplash.com/photo-1599059848214-6b20f180c8de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM074', 4, 1, 0, 207, 'Suite', 'https://images.unsplash.com/photo-1615968679312-9b7ed9f04e79?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM075', 4, 4, 0, 192, 'Standard', 'https://images.unsplash.com/photo-1630585308572-f53438fc684f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM076', 4, 3, 1, 177, 'Standard', 'https://images.unsplash.com/photo-1566152474719-8d79ca1a4c66?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM077', 4, 2, 0, 203, 'Deluxe', 'https://images.unsplash.com/photo-1532490389938-2856e3f1560a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM078', 4, 1, 0, 180, 'Deluxe', 'https://images.unsplash.com/photo-1618220048045-10a6dbdf83e0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM079', 4, 1, 1, 178, 'Deluxe', 'https://images.unsplash.com/photo-1704121355552-10ac4d5b1677?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM080', 4, 1, 0, 213, 'Suite', 'https://images.unsplash.com/photo-1592823866339-4892f1c08839?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM081', 4, 3, 0, 298, 'Deluxe', 'https://images.unsplash.com/photo-1589719470769-08aa42145d03?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM082', 4, 1, 0, 198, 'Suite', 'https://images.unsplash.com/photo-1565038941323-e5ceac0fcde2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM083', 4, 4, 1, 346, 'Deluxe', 'https://images.unsplash.com/photo-1663811397219-c572550dffc5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM084', 4, 2, 0, 160, 'Standard', 'https://images.unsplash.com/photo-1588714306299-aca44edf20de?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM085', 4, 3, 1, 273, 'Deluxe', 'https://images.unsplash.com/photo-1560766775-56f6bfb321c0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM086', 4, 3, 0, 263, 'Deluxe', 'https://images.unsplash.com/photo-1602164091410-255d1bf88959?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM087', 4, 3, 0, 167, 'Standard', 'https://images.unsplash.com/photo-1616132205093-3158f3a65fb5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM088', 4, 3, 0, 135, 'Standard', 'https://images.unsplash.com/photo-1664153672323-e281ea365a10?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM089', 4, 3, 0, 399, 'Suite', 'https://images.unsplash.com/photo-1618221520382-3d68e64f58ff?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM090', 4, 1, 0, 207, 'Suite', 'https://images.unsplash.com/photo-1616593918824-4fef16054381?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwyNzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM091', 4, 4, 1, 208, 'Standard', 'https://images.unsplash.com/photo-1482068417235-8f51fac7fc30?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM092', 4, 3, 0, 358, 'Suite', 'https://images.unsplash.com/photo-1678781283129-a403c3dc8823?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM093', 4, 2, 1, 141, 'Standard', 'https://images.unsplash.com/photo-1674457210493-60bf995db4a9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM094', 4, 1, 1, 149, 'Suite', 'https://images.unsplash.com/photo-1526315060860-f05bd462eb60?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM095', 4, 3, 1, 258, 'Deluxe', 'https://images.unsplash.com/photo-1559575918-c2ede2c34323?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM096', 4, 4, 1, 197, 'Standard', 'https://images.unsplash.com/photo-1674457210496-9dc8efe20ee9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM097', 4, 4, 1, 190, 'Standard', 'https://images.unsplash.com/photo-1547961547-321889bff29e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080');
INSERT INTO `Rooms` (`idRoom`, `idHotel`, `numberOfBeds`, `status`, `price`, `roomType`, `imageUrl`) VALUES
('04HM098', 4, 4, 1, 463, 'Suite', 'https://images.unsplash.com/photo-1617098591651-dd95032bc8bb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM099', 4, 2, 1, 224, 'Deluxe', 'https://images.unsplash.com/photo-1596900779744-2bdc4a90509a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQyMjJ8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('04HM100', 4, 4, 1, 332, 'Deluxe', 'https://images.unsplash.com/photo-1615875474908-f403116f5287?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MjIyfDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ001', 5, 3, 0, 351, 'Suite', 'https://images.unsplash.com/photo-1482068417235-8f51fac7fc30?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ002', 5, 3, 0, 275, 'Deluxe', 'https://images.unsplash.com/photo-1678781283129-a403c3dc8823?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ003', 5, 4, 1, 216, 'Standard', 'https://images.unsplash.com/photo-1674457210493-60bf995db4a9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ004', 5, 4, 0, 215, 'Standard', 'https://images.unsplash.com/photo-1526315060860-f05bd462eb60?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ005', 5, 3, 0, 146, 'Standard', 'https://images.unsplash.com/photo-1559575918-c2ede2c34323?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ006', 5, 3, 1, 286, 'Deluxe', 'https://images.unsplash.com/photo-1674457210496-9dc8efe20ee9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ007', 5, 1, 0, 140, 'Deluxe', 'https://images.unsplash.com/photo-1547961547-321889bff29e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ008', 5, 3, 1, 177, 'Standard', 'https://images.unsplash.com/photo-1617098591651-dd95032bc8bb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODN8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ009', 5, 2, 0, 254, 'Suite', 'https://images.unsplash.com/photo-1596900779744-2bdc4a90509a?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw5OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODR8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ010', 5, 1, 1, 196, 'Suite', 'https://images.unsplash.com/photo-1615875474908-f403116f5287?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ011', 5, 3, 0, 274, 'Deluxe', 'https://images.unsplash.com/photo-1545552226-ec41ce8dc951?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ012', 5, 1, 1, 193, 'Suite', 'https://images.unsplash.com/photo-1615528650248-8630bcd26814?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ013', 5, 1, 1, 104, 'Standard', 'https://images.unsplash.com/photo-1616593871468-2a9452218369?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ014', 5, 1, 1, 129, 'Standard', 'https://images.unsplash.com/photo-1616594039964-ae9021a400a0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ015', 5, 4, 1, 446, 'Suite', 'https://images.unsplash.com/photo-1561409625-df3c51c39c2f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ016', 5, 4, 0, 306, 'Deluxe', 'https://images.unsplash.com/photo-1663659504585-8ae937f2337e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ017', 5, 1, 0, 82, 'Standard', 'https://images.unsplash.com/photo-1663659504126-d72d07dc06e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ018', 5, 1, 1, 118, 'Deluxe', 'https://images.unsplash.com/photo-1663659504061-abac31e302b0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ019', 5, 4, 0, 440, 'Suite', 'https://images.unsplash.com/photo-1632120377007-c2adc3017b1e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ020', 5, 4, 0, 443, 'Suite', 'https://images.unsplash.com/photo-1616046386594-c152babc9e15?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ021', 5, 4, 1, 173, 'Standard', 'https://images.unsplash.com/photo-1616594266774-769089710d76?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ022', 5, 1, 0, 138, 'Deluxe', 'https://images.unsplash.com/photo-1615875221248-d4b820203f97?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ023', 5, 4, 0, 292, 'Deluxe', 'https://images.unsplash.com/photo-1544457070-4cd773b4d71e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ024', 5, 2, 0, 278, 'Suite', 'https://images.unsplash.com/photo-1501660034796-9860da6cb741?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ025', 5, 1, 0, 174, 'Suite', 'https://images.unsplash.com/photo-1662826312329-00bca2d79204?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ026', 5, 4, 0, 214, 'Standard', 'https://images.unsplash.com/photo-1686308629515-9e7bb8d33a07?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ027', 5, 1, 0, 178, 'Suite', 'https://images.unsplash.com/photo-1710985530918-151688329794?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ028', 5, 2, 1, 213, 'Deluxe', 'https://images.unsplash.com/photo-1589471302502-7b7ce40d4bb6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ029', 5, 2, 1, 310, 'Suite', 'https://images.unsplash.com/photo-1593947662207-e91024487d05?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ030', 5, 1, 0, 151, 'Suite', 'https://images.unsplash.com/photo-1686308629172-25f689ddc41c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ031', 5, 4, 1, 339, 'Deluxe', 'https://images.unsplash.com/photo-1517596107285-5ce3dd0f61df?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ032', 5, 3, 0, 275, 'Deluxe', 'https://images.unsplash.com/photo-1588013229181-8762c831d876?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ033', 5, 4, 0, 330, 'Deluxe', 'https://images.unsplash.com/photo-1587480335344-95513e5cf3b7?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ034', 5, 2, 1, 102, 'Standard', 'https://images.unsplash.com/photo-1652126176790-63d816be1d51?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ035', 5, 1, 1, 105, 'Standard', 'https://images.unsplash.com/photo-1694372109133-916c9dba2a1b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ036', 5, 3, 1, 127, 'Standard', 'https://images.unsplash.com/photo-1673897969225-2abe3539c8c8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ037', 5, 1, 1, 200, 'Suite', 'https://images.unsplash.com/photo-1663659506646-f9860a7b7a99?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ038', 5, 4, 1, 335, 'Deluxe', 'https://images.unsplash.com/photo-1532796884742-0133556b598b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ039', 5, 4, 0, 333, 'Deluxe', 'https://images.unsplash.com/photo-1455826581186-3031bc66471d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ040', 5, 3, 1, 259, 'Deluxe', 'https://images.unsplash.com/photo-1667758088178-3a52b9c12558?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ041', 5, 4, 0, 331, 'Deluxe', 'https://images.unsplash.com/photo-1485541653056-e688bdf8319e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ042', 5, 2, 0, 288, 'Suite', 'https://images.unsplash.com/photo-1623421808491-2a1bd4aa4253?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ043', 5, 2, 0, 173, 'Deluxe', 'https://images.unsplash.com/photo-1673897969233-e706f4b522ed?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ044', 5, 3, 1, 290, 'Deluxe', 'https://images.unsplash.com/photo-1584536318461-2ee56bc042f1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ045', 5, 3, 0, 298, 'Deluxe', 'https://images.unsplash.com/photo-1635508253452-093f5c5937e4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ046', 5, 4, 1, 309, 'Deluxe', 'https://images.unsplash.com/photo-1610882290669-102aadebb413?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ047', 5, 4, 0, 436, 'Suite', 'https://images.unsplash.com/photo-1644130153449-be672c1cbff3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ048', 5, 2, 0, 114, 'Standard', 'https://images.unsplash.com/photo-1552001643-8739184439bd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ049', 5, 1, 0, 153, 'Deluxe', 'https://images.unsplash.com/photo-1557331467-f17b71e12ac8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxMzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ050', 5, 3, 1, 361, 'Suite', 'https://images.unsplash.com/photo-1512548438457-4c9584d3766b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ051', 5, 1, 0, 103, 'Standard', 'https://images.unsplash.com/photo-1696204202224-418ffcdc7c6f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ052', 5, 4, 0, 168, 'Standard', 'https://images.unsplash.com/photo-1656153164254-bbf4bfa03a65?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ053', 5, 4, 1, 331, 'Deluxe', 'https://images.unsplash.com/photo-1682639094834-57366ac98862?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ054', 5, 2, 1, 213, 'Deluxe', 'https://images.unsplash.com/photo-1559131501-091281bed3ec?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ055', 5, 4, 0, 317, 'Deluxe', 'https://images.unsplash.com/photo-1591604849535-79af0912d230?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ056', 5, 3, 0, 274, 'Deluxe', 'https://images.unsplash.com/photo-1705328223284-5a6cd4456a0b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ057', 5, 3, 1, 170, 'Standard', 'https://images.unsplash.com/photo-1581541234269-03d5d8576c0e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ058', 5, 2, 1, 195, 'Deluxe', 'https://images.unsplash.com/photo-1686308629635-516385eb7236?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ059', 5, 3, 0, 369, 'Suite', 'https://images.unsplash.com/photo-1581360742512-021d5b2157d8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNDl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ060', 5, 3, 0, 234, 'Deluxe', 'https://images.unsplash.com/photo-1598879489364-05a93758574b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg0fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ061', 5, 3, 1, 353, 'Suite', 'https://images.unsplash.com/photo-1693137420900-5a201fa1369b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ062', 5, 1, 1, 197, 'Suite', 'https://images.unsplash.com/photo-1656433795335-b62feb58e2fb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ063', 5, 2, 0, 132, 'Standard', 'https://images.unsplash.com/photo-1503513883989-25ef8b2f1a53?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ064', 5, 2, 1, 308, 'Suite', 'https://images.unsplash.com/photo-1686308629157-bd4f832be5a4?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ065', 5, 4, 1, 460, 'Suite', 'https://images.unsplash.com/photo-1500985711934-1b03a1cb50e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ066', 5, 3, 1, 366, 'Suite', 'https://images.unsplash.com/photo-1536639240649-1f0979e7993d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ067', 5, 4, 0, 316, 'Deluxe', 'https://images.unsplash.com/photo-1633734604812-74b96543a96e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ068', 5, 3, 1, 271, 'Deluxe', 'https://images.unsplash.com/photo-1542058374780-be185a5e80fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ069', 5, 4, 0, 187, 'Standard', 'https://images.unsplash.com/photo-1686308629121-b22f989d5c62?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNTl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ070', 5, 2, 1, 127, 'Standard', 'https://images.unsplash.com/photo-1614447911556-01f4d9900185?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ071', 5, 4, 0, 159, 'Standard', 'https://images.unsplash.com/photo-1523633891499-c72d7aa7594f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ072', 5, 2, 0, 110, 'Standard', 'https://images.unsplash.com/photo-1663659509585-5cc5e7ab1643?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ073', 5, 4, 0, 181, 'Standard', 'https://images.unsplash.com/photo-1556746890-f91165e9e6e9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ074', 5, 4, 1, 485, 'Suite', 'https://images.unsplash.com/photo-1686308629128-6ea86e9d320e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ075', 5, 1, 0, 103, 'Standard', 'https://images.unsplash.com/photo-1711495898860-0243c6ffab19?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ076', 5, 1, 1, 134, 'Deluxe', 'https://images.unsplash.com/photo-1663659510890-a8be8b10708b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ077', 5, 3, 1, 382, 'Suite', 'https://images.unsplash.com/photo-1606577583855-7887c860e755?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ078', 5, 4, 0, 161, 'Standard', 'https://images.unsplash.com/photo-1696931396551-e55df3ca45fd?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ079', 5, 1, 1, 96, 'Standard', 'https://images.unsplash.com/photo-1524855567984-d7bbc2893539?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNjl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ080', 5, 3, 1, 192, 'Standard', 'https://images.unsplash.com/photo-1709946713608-78bef90ae0ba?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ081', 5, 2, 1, 312, 'Suite', 'https://images.unsplash.com/photo-1607331650933-4caf95e89b24?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzF8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ082', 5, 2, 1, 310, 'Suite', 'https://images.unsplash.com/photo-1653780794320-036c1dfb8bd2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzJ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ083', 5, 4, 0, 334, 'Deluxe', 'https://images.unsplash.com/photo-1594063835410-6df19f7a68fa?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzN8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ084', 5, 1, 1, 116, 'Deluxe', 'https://images.unsplash.com/photo-1508160796086-eb635eb3fbd6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzR8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ085', 5, 4, 0, 323, 'Deluxe', 'https://images.unsplash.com/photo-1649066999588-2e134ed3e01e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzV8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ086', 5, 3, 0, 273, 'Deluxe', 'https://images.unsplash.com/photo-1669646009386-fdf5ae312e6b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzZ8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ087', 5, 1, 0, 108, 'Standard', 'https://images.unsplash.com/photo-1544100209-13d53b3e2533?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzd8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ088', 5, 3, 0, 135, 'Standard', 'https://images.unsplash.com/photo-1625944527261-06c90f1901e3?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzh8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ089', 5, 1, 1, 118, 'Deluxe', 'https://images.unsplash.com/photo-1653780794250-fa1733bd5be9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxNzl8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ090', 5, 3, 0, 297, 'Deluxe', 'https://images.unsplash.com/photo-1659982651683-4beeeb64ee96?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHwxODB8fGhvdGVsJTIwcm9vbXxlbnwwfDJ8fHwxNzEzNjY0MTg1fDA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ091', 5, 4, 1, 189, 'Standard', 'https://images.unsplash.com/photo-1625550301704-b787dea12514?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2MXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ092', 5, 1, 0, 76, 'Standard', 'https://images.unsplash.com/photo-1503011510-c0e00592713b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2Mnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ093', 5, 3, 1, 377, 'Suite', 'https://images.unsplash.com/photo-1584536286788-78ae81c2c54e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2M3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ094', 5, 2, 0, 278, 'Suite', 'https://images.unsplash.com/photo-1615979389741-6cfb168f3798?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2NHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ095', 5, 2, 1, 218, 'Deluxe', 'https://images.unsplash.com/photo-1624529334042-8ce6295bab97?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2NXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ096', 5, 2, 0, 217, 'Deluxe', 'https://images.unsplash.com/photo-1600813547757-39c40da12c8d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2Nnx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ097', 5, 4, 0, 151, 'Standard', 'https://images.unsplash.com/photo-1616047006789-b7af5afb8c20?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2N3x8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ098', 5, 4, 0, 461, 'Suite', 'https://images.unsplash.com/photo-1604309225246-86ad9ff7d79f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2OHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ099', 5, 4, 1, 305, 'Deluxe', 'https://images.unsplash.com/photo-1522107177-01884fcfa2bb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw2OXx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080'),
('05DJ100', 5, 2, 1, 234, 'Deluxe', 'https://images.unsplash.com/photo-1563103123-8efe739386f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1OTMwODl8MHwxfHNlYXJjaHw3MHx8aG90ZWwlMjByb29tfGVufDB8Mnx8fDE3MTM2NjQxODV8MA&ixlib=rb-4.0.3&q=80&w=1080');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `idUser` int(11) NOT NULL,
  `firstName` varchar(20) NOT NULL,
  `lastName` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` int(8) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `profilePicture` varchar(255) NOT NULL DEFAULT 'https://via.placeholder.com/150',
  `userType` enum('User','Admin','SuperAdmin') NOT NULL DEFAULT 'User'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`idUser`, `firstName`, `lastName`, `email`, `password`, `phone`, `createdAt`, `updatedAt`, `profilePicture`, `userType`) VALUES
(1, 'Ayman', 'Rebai', 'rebai.ayman@gmail.com', 'ayman123', 52869221, '2024-04-28 23:00:00', '2024-04-28 23:00:00', '', 'Admin'),
(2, 'Triki', 'Mohamed', 'mrmohamedtriki@gmail.com', 'djej123', 87654321, '2024-04-28 23:00:00', '2024-04-28 23:00:00', '', 'User'),
(3, 'Omar', 'Rebai', 'omar.rebai@enis.tn', 'kitana123', 27007227, '2024-04-28 23:00:00', '2024-04-28 23:00:00', '', 'SuperAdmin'),
(4, 'Ayman', 'Rebai', 'test@gmail.com', '$2y$10$qOkSz0eyPCzEf8aL1f57Ze8kxqmVwp6OCMXH0pHsYl3ejH/sAdF4W', 12345678, '2024-04-30 11:34:52', '2024-04-30 11:34:52', 'https://via.placeholder.com/150', 'User'),
(5, 'REBAI', 'AYMAN', 'a@gmail.com', '12345678', 52869221, '2024-04-30 11:42:40', '2024-04-30 11:42:40', 'https://via.placeholder.com/150', 'User'),
(6, 'REBAI', 'AYMAN', 'e@gmail.com', '12345678', 52869221, '2024-04-30 11:42:49', '2024-04-30 11:42:49', 'https://via.placeholder.com/150', 'User'),
(7, 'REBAI', 'AYMAN', 'g@gmail.com', '12345678', 52869221, '2024-04-30 11:43:07', '2024-04-30 11:43:07', 'https://via.placeholder.com/150', 'User'),
(8, 'REBAI', 'AYMAN', 'c@gmail.com', '12345678', 52869221, '2024-04-30 11:43:11', '2024-04-30 11:43:11', 'https://via.placeholder.com/150', 'User'),
(9, 'REBAI', 'AYMAN', 't@gmail.com', '12345678', 52869221, '2024-04-30 11:43:21', '2024-04-30 11:43:21', 'https://via.placeholder.com/150', 'User'),
(10, 'Taha', 'Ben Fourati', 'taha@gmail.com', 'taha123', 32165487, '2024-04-30 13:59:44', '2024-04-30 13:59:44', 'https://via.placeholder.com/150', 'SuperAdmin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`idBooking`),
  ADD KEY `FK_Booking_User` (`idClient`),
  ADD KEY `FK_Booking_Room` (`idRoom`);

--
-- Indexes for table `Hotels`
--
ALTER TABLE `Hotels`
  ADD PRIMARY KEY (`idHotel`);

--
-- Indexes for table `Rooms`
--
ALTER TABLE `Rooms`
  ADD PRIMARY KEY (`idRoom`),
  ADD KEY `idHotel` (`idHotel`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Booking`
--
ALTER TABLE `Booking`
  MODIFY `idBooking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`idRoom`) REFERENCES `Rooms` (`idRoom`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`idClient`) REFERENCES `Users` (`idUser`),
  ADD CONSTRAINT `FK_Booking_Room` FOREIGN KEY (`idRoom`) REFERENCES `Rooms` (`idRoom`),
  ADD CONSTRAINT `FK_Booking_User` FOREIGN KEY (`idClient`) REFERENCES `Users` (`idUser`);

--
-- Constraints for table `Rooms`
--
ALTER TABLE `Rooms`
  ADD CONSTRAINT `Rooms_ibfk_1` FOREIGN KEY (`idHotel`) REFERENCES `Hotels` (`idHotel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Rooms_ibfk_2` FOREIGN KEY (`idHotel`) REFERENCES `Hotels` (`idHotel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
