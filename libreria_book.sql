-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 02, 2022 at 07:53 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `libreria_book`
--

CREATE TABLE `libreria_book` (
  `id_book` int(11) NOT NULL,
  `title_book` varchar(100) NOT NULL,
  `image_book` varchar(100) DEFAULT NULL,
  `description_book` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `libreria_book`
--

INSERT INTO `libreria_book` (`id_book`, `title_book`, `image_book`, `description_book`) VALUES
(2, 'Game of Thrones', 'images/gameofthrones.jpg', 'Game of Thrones is an American fantasy drama television series created by David Benioff and D. B. Weiss for HBO. It is an adaptation of A Song of Ice and Fire, a series of fantasy novels by George R. R. Martin, the first of which is A Game of Thrones.'),
(4, 'Tuf Voyaging', 'images/haviland.jpg', 'Tuf Voyaging is a 1986 science fiction fix-up novel by American writer George R. R. Martin, first published in hardcover by Baen Books. It is a darkly comic meditation on environmentalism and absolute power.'),
(5, 'fevre dream', 'images/fevre-dream.jpg', 'Fevre Dream is a 1982 vampire novel written by American author George R. R. Martin. It is set on the antebellum Mississippi River, beginning in 1857, and has been described by critics and Martin himself as \"Bram Stoker meets Mark Twain\".');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `libreria_book`
--
ALTER TABLE `libreria_book`
  ADD PRIMARY KEY (`id_book`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `libreria_book`
--
ALTER TABLE `libreria_book`
  MODIFY `id_book` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
