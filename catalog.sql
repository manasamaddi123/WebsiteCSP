-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 07:48 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vacay`
--

-- --------------------------------------------------------

--
-- Table structure for table `catalog`
--

CREATE TABLE `catalog` (
  `City` text NOT NULL,
  `Hotel Name` text NOT NULL,
  `Location` text NOT NULL,
  `Street Address` text NOT NULL,
  `Rating` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catalog`
--

INSERT INTO `catalog` (`City`, `Hotel Name`, `Location`, `Street Address`, `Rating`, `Price`, `Details`) VALUES
('Paris', 'Hôtel Louvre Sainte Anne', 'Palais-Royal', '32 Rue Sainte Anne, Paris, 75001, Paris, France', 9, 195, '- 0.5 miles to city center\r\n- 1.9 miles to Eiffel Tower'),
('Paris', 'Hôtel Veryste', 'Quartier du Faubourg-Montmartre', '5 rue Riboutté, Paris, 75009, Paris, France', 9, 161, '- 0.9 miles to city center\r\n- 2.7 miles to Eiffel Tower'),
('Paris', 'Hôtel du Haut Marais', 'Arts-et-Métiers', '7 rue des Vertus, Paris, 75003, Paris, France', 9, 211, '- 0.6 miles to city center\r\n- 2.9 miles to Eiffel Tower'),
('Maui, Hawaii', 'Maui Beach Hotel', 'Kahului', '170 Kaahumanu Avenue, Kahului, 96732, HI, USA', 9, 247, '- 2.2 miles to Kahului, HI (OGG)\r\n- 15 miles to Kaanapali Beach'),
('Maui, Hawaii', 'Maui Seaside Hotel', 'Kahului', '100 W Kaahumanu Ave, Kahului, 96732, HI, USA', 8, 309, '- 2.2 miles to Kahului, HI (OGG)\r\n- 15 miles to Kaanapali Beach'),
('Maui, Hawaii', 'Honua Kai Resort & Spa', 'Lahaina', '130 Kai Malina Parkway, Lahaina, 96761, HI, USA', 7, 669, '- 17 miles to Kahului, HI (OGG)\r\n- 2.0 miles to Eiffel Tower'),
('Tokyo', 'Tokyu Stay Shinjuku', 'Shinjuku', '3-7 Shinjuku, Tokyo, 160-0022, Tokyo-to, Japan', 9, 66, '- 3.2 miles to city center\r\n- 10 miles to Tokyo Disneyland'),
('Tokyo', 'Shinjuku Granbell Hotel', 'Kabukicho', '2-14-5 Kabuki-cho, Tokyo, 160-0021, Tokyo-to, Japan', 8, 101, '- 3.0 miles to city center\r\n- 10 miles to Tokyo Disneyland'),
('Tokyo', 'Onsen Ryokan Yuen Shinjuku', 'Shinjuku', '5-3-18 Shinjuku, Tokyo, 160-0022, Tokyo, Japan', 8, 101, '- 3.0 miles to city center\r\n- 10 miles to Tokyo Disneyland'),
('London', 'Club Quarters Hotel, Trafalgar Square', 'West End', '8 Northumberland Ave, London, WC2N 5BY, England', 9, 258, '- 0.1 miles to city center\r\n- 14 miles to Heathrow Airport (LHR)'),
('London', 'The Standard London', 'King\'s Cross St. Pancras', '10 Argyle Street, London, WC1H 8EG, England', 9, 266, '- 1.5 miles to city center\r\n- 15 miles to Heathrow Airport (LHR)'),
('London', 'Mitre House Hotel', 'Padington', '178-186 Sussex Gardens, London, W2 1TU, England', 8, 110, '- 2.1 miles to city center\r\n- 12 miles to Heathrow Airport (LHR)');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
