-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 04:31 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `omni bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_num` varchar(20) NOT NULL,
  `IFSC_Code` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_num` varchar(15) NOT NULL,
  `location` varchar(30) NOT NULL,
  `State` varchar(20) NOT NULL,
  `current_balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `account_num`, `IFSC_Code`, `email`, `contact_num`, `location`, `State`, `current_balance`) VALUES
(1, 'Rhythm Sharma', '601004183', 'OMNI100401', 'srhythm2020@gmail.com', '8708537023', 'Kurukshetra', 'Haryana', 335676.67),
(3, 'Ishwar Baisla', '601003097', 'OMNI100301', 'ishwar2303@gmail.com', '9821671707', 'Delhi', 'New Delhi', 211456.09),
(4, 'Tapas Baranwal', '601004204', 'OMNI100402', 'tapasbaranal@gmail.com', '9017527234', 'Gurgaon', 'Haryana', 84167.76),
(5, 'Pankaj Gautam', '601001169', 'OMNI100101', 'pankajg@gmail.com', '7088360659', 'Ghaziabad', 'Uttar Pradesh', 280894.65),
(11, 'Swati Bharadwaj', '601001193', 'OMNI100102', 'swati@gmail.com', '9084812963', 'Agra', 'Uttar Pradesh', 100006.01),
(13, 'Marut Nandan', '601005131', 'OMNI100501', 'marutnandan@gmail.com', '9128386811', 'Patna', 'Bihar', 55000.54),
(14, 'Akshay Mathur', '601006011', 'OMNI100601', 'akshay@gmail.com', '9588265971', 'Jodhpur', 'Rajasthan', 83000),
(15, 'Anjali Joseph', '601007300', 'OMNI10073', 'anjalij@orkut.com', '7985327643', 'Chennai', 'Tamil Nadu', 1287689),
(16, 'Pragati Rathor', '601008001', 'OMNI10082', 'rathor12@gmail.com', '7088360601', 'Pune', 'Maharashtra', 845642.34),
(17, 'Kishan Khatri', '601009005', 'OMNI10096', 'khkishan@gmail.com', '9876543676', 'Chandigarh', 'Punjab', 98567.09);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `sender_acc_num` varchar(20) NOT NULL,
  `recipient_acc_num` varchar(20) NOT NULL,
  `amount` double NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `sender_acc_num`, `recipient_acc_num`, `amount`, `timestamp`) VALUES
(820, '601003097', '601001169', 50000, '2021-04-18 14:21:20'),
(821, '601003097', '601004204', 4000, '2021-04-18 14:24:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=822;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
