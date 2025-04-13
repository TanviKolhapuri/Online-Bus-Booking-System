-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2024 at 07:31 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `obrsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(1, 1, '202206248407', 'Tanvi', 2, 1, '2024-02-24 09:55:11'),
(2, 4, '202206252673', 'Shree Jain', 2, 0, '2024-02-24 09:58:03'),
(3, 2, '202206251496', 'Jai Kishan', 3, 1, '2024-02-24 09:58:34'),
(4, 4, '202206254769', 'Nikita Patil', 1, 1, '2024-02-24 09:58:55'),
(5, 7, '202206257753', 'Stella K', 4, 0, '2024-02-24 10:00:37'),
(6, 5, '202206257460', 'Arman Malik', 3, 1, '2024-02-24 10:00:23'),
(7, 9, '202206252201', 'Shanaya Kapoor', 1, 0, '2024-02-24 10:00:05'),
(8, 2, '202402242106', 'neeta', 1, 0, '2024-02-24 12:28:00'),
(9, 1, '202402246183', 'man', 1, 0, '2024-02-24 12:33:07'),
(10, 1, '202402246831', 'tina', 10, 0, '2024-02-24 12:37:32');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(1, 'VRL', 'KA22AB2323', 1, '2024-02-24 10:05:34'),
(2, 'BARDE', 'MH09AB2324', 1, '2024-02-24 10:08:13'),
(3, 'PAI', 'KA22AB2326', 1, '2024-02-24 10:06:07'),
(4, 'RESHMA', 'KA22AB2327', 1, '2024-02-24 10:08:37'),
(5, 'KADAMBA\r\n', 'GA01AB2329', 1, '2024-02-24 10:08:28'),
(6, 'AYRAWAT', 'KA22AB2320', 1, '2024-02-24 10:06:50'),
(7, 'RedCoach', 'KA22AB2323', 1, '2024-02-24 10:07:00'),
(8, 'SRS', 'KA22AB2325', 1, '2024-02-24 10:07:10'),
(9, 'VRL', 'KA22AB2399', 1, '2024-02-24 10:07:19'),
(10, 'PAI', 'KA22AB2387', 1, '2024-02-24 10:07:29'),
(11, 'BARDE', 'MH09AB2355', 1, '2024-02-24 10:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'KSRTC BUS TERMINAL', 'BELGAUM', 'KARNATAKA', 1, '2024-02-24 10:11:21'),
(2, 'CHARTED BUS TERMINAL', 'BHOPAL', 'MADHYA PRADESH', 1, '2024-02-24 10:13:18'),
(3, 'KEMPEGOWDA BUS TERMINAL', 'BANGALORE', 'KARNATAKA', 1, '2024-02-24 10:14:08'),
(4, 'HYDERABAD BUS TERMINAL', 'HYDERABAD', 'TELANGANA', 1, '2024-02-24 10:38:01'),
(5, 'MARGAO BUS TERMINAL', 'MARGAO', 'GOA', 1, '2024-02-24 10:15:27'),
(6, 'MUMBAI BUS TERMINAL', 'MUMBAI', 'MAHARASHTRA', 1, '2024-02-24 10:15:53'),
(7, 'ATHANI BUS TERMINAL', 'ATHANI', 'KARNATAKA', 1, '2024-02-24 10:16:30'),
(8, 'KANNUR BUS TERMINAL', 'KANNUR', 'KERALA', 1, '2024-02-24 10:17:06'),
(9, 'SWARGATE BUS TERMINAL', 'PUNE', 'MAHARASHTRA', 1, '2024-02-24 10:17:38'),
(10, 'DEOLALI BUS TERMINAL', 'NASHIK', 'MAHARASHTRA', 1, '2024-02-24 10:18:10'),
(11, 'MANGALORE BUS TERMINAL', 'MANGALORE', 'KARNATAKA', 1, '2024-02-24 10:18:39'),
(12, 'PANAJI BUS TERMINAL', 'PANAJI', 'GOA', 1, '2024-02-24 10:19:06'),
(13, 'TIRUPATI BUS TERMINAL', 'TIRUPATI', 'ANDHRA PRADESH', 1, '2024-02-24 10:20:33'),
(14, 'CHENNAI BUS TERMINAL', 'CHENNAI ', 'TAMIL NADU', 1, '2024-02-24 10:21:32');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(1, 11, 1, 5, '2022-06-25 15:00:00', '2022-06-25 20:00:00', 1, 25, '50', '2022-06-25 17:27:08'),
(2, 6, 1, 4, '2022-06-25 20:00:00', '2022-06-25 01:00:00', 1, 30, '26', '2022-06-25 09:09:20'),
(3, 1, 3, 9, '2022-06-26 10:00:00', '2022-06-26 16:00:00', 1, 32, '33', '2022-06-25 09:10:46'),
(4, 9, 4, 1, '2022-06-26 08:00:00', '2022-06-26 19:00:00', 1, 30, '65', '2022-06-25 09:11:55'),
(5, 7, 8, 10, '2022-06-27 10:00:00', '2022-06-27 19:00:00', 1, 33, '80', '2022-06-25 09:13:02'),
(6, 4, 7, 6, '2022-06-26 11:00:00', '2022-06-25 13:00:00', 1, 35, '43', '2022-06-25 09:17:10'),
(7, 8, 9, 4, '2022-06-27 15:00:00', '2022-06-27 23:00:00', 1, 34, '75', '2022-06-25 09:18:08'),
(8, 3, 6, 2, '2022-06-27 12:00:00', '2022-06-25 17:00:00', 1, 31, '68', '2022-06-25 09:20:35'),
(9, 10, 11, 12, '2022-06-26 10:00:00', '2022-06-26 13:00:00', 1, 38, '65', '2022-06-25 17:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1,
  `username` varchar(25) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', 'admin123', 1, '2022-06-25 20:13:42'),
(3, 'AdminMeetali', 2, 'meetali', 'f2d0ff370380124029c2b807a924156c', 1, '2024-02-24 10:36:50'),
(4, 'AdminPriyanka', 1, 'priyanka', 'f2d0ff370380124029c2b807a924156c', 1, '2024-02-24 10:37:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bus_id` (`bus_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD CONSTRAINT `schedule_list_ibfk_1` FOREIGN KEY (`bus_id`) REFERENCES `bus` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
