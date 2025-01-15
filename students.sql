-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 04:26 AM
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
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `grade` varchar(10) DEFAULT NULL,
  `hall_ticket_number` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `grade`, `hall_ticket_number`, `status`) VALUES
(1, 'John Doe', 20, 'A', 'HT123', 'Pass'),
(2, 'Jane Smith', 22, 'B', 'HT124', 'Fail'),
(3, 'Mike Johnson', 21, 'C', 'HT125', 'Pass'),
(4, 'Alice Johnson', 20, 'A', 'HTN12345', 'Pass'),
(5, 'Bob Smith', 21, 'B+', 'HTN12346', 'Fail'),
(6, 'Carol White', 22, 'A-', 'HTN12347', 'Pass'),
(7, 'Sai Vemanarao', 24, 'B+', 'HT1736637255', 'Pass'),
(8, 'suresh Kummmar', 25, 'B+', '173667137256', 'PASS');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
