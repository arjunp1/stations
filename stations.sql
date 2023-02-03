-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2021 at 05:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stations`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `code` int(3) NOT NULL,
  `name` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `long` float NOT NULL,
  `wiki_link` varchar(96) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`code`, `name`, `lat`, `long`, `wiki_link`) VALUES
(1, 'Bristol', 51.4545, -2.58791, 'http://en.wikipedia.org/wiki/Bristol'),
(2, 'Liverpool', 53.4084, -2.99157, 'http://en.wikipedia.org/wiki/Liverpool'),
(3, 'London', 51.5074, 0.127758, 'http://en.wikipedia.org/wiki/London'),
(4, 'Birmingham', 52.4862, -1.8904, 'http://en.wikipedia.org/wiki/Birmingham'),
(5, 'Swindon', 51.5558, -1.77972, 'http://en.wikipedia.org/wiki/Swindon'),
(6, 'Glasgow', 55.8642, -4.25181, 'http://en.wikipedia.org/wiki/Glasgow');

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `code` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `lat` float NOT NULL,
  `long` float NOT NULL,
  `wp_link` varchar(96) COLLATE utf8_unicode_ci NOT NULL,
  `city_code` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`code`, `name`, `postcode`, `lat`, `long`, `wp_link`, `city_code`) VALUES
('BHM', 'Birmingham New Street', 'B2 4QA', 52.4778, -1.9002, 'http://en.wikipedia.org/wiki/Birmingham_New_Street_railway_station', 4),
('BPW', 'Bristol Parkway', 'BS34 8PU', 51.5139, -2.54212, 'http://en.wikipedia.org/wiki/Bristol_Parkway_railway_station', 1),
('BRI', 'Bristol Temple Meads', 'BS1 6QG', 51.4491, -2.58132, 'http://en.wikipedia.org/wiki/Bristol_Temple_Meads_railway_station', 1),
('FIT', 'Filton Abbey Wood', 'BS34 7HZ', 51.5049, -2.56234, 'http://en.wikipedia.org/wiki/Filton_Abbey_Wood_railway_station', 1),
('GLC', 'Glasgow Central', 'G1 3SA', 55.8598, -4.25759, 'http://en.wikipedia.org/wiki/Glasgow_Central_station', 6),
('KGX', 'London King\'s Cross', 'N1 9AX', 51.5319, -0.122979, 'http://en.wikipedia.org/wiki/London_King%27s_Cross_railway_station', 3),
('LVC', 'Liverpool Central', 'L1 1JT', 53.4046, -2.97917, 'http://en.wikipedia.org/wiki/Liverpool_Central_railway_station', 2),
('PAD', 'London Paddington', 'W2 6HT', 51.516, -0.176107, 'http://en.wikipedia.org/wiki/London_Paddington_station', 3),
('STL', 'Southall', 'UB1 3AD', 51.506, -0.37859, 'http://en.wikipedia.org/wiki/Southall_railway_station', 3),
('SWI', 'Swindon', 'SN1 1DQ', 51.5655, -1.78556, 'http://en.wikipedia.org/wiki/Swindon_railway_station', 5),
('VIC', 'London Victoria', 'SW1E 5ND', 51.4961, -0.144067, 'http://en.wikipedia.org/wiki/London_Victoria_station', 3),
('WAT', 'London Waterloo', 'SE1 7NS', 51.5041, -0.108829, 'http://en.wikipedia.org/wiki/London_Waterloo_station', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `code` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
