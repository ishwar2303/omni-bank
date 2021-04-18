-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2021 at 08:46 PM
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
-- Database: `cadence bank`
--
CREATE DATABASE IF NOT EXISTS `cadence bank` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cadence bank`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `account_num` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contact_num` varchar(15) NOT NULL,
  `location` varchar(30) NOT NULL,
  `current_balance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `name`, `account_num`, `email`, `contact_num`, `location`, `current_balance`) VALUES
(1, 'Rhythm Sharma', '62760724', 'srhythm2020@gmail.com', '8708537023', 'Kurukshetra', 1234744),
(2, 'Harshit Raj', '62760712', 'hraj07@gmail.com', '8607623649', 'Kurukshetra', 106549.5),
(3, 'Ishwar Baisla', '62761223', 'ishwar2303@gmail.com', '9821671707', 'Delhi', 346880.5),
(4, 'Tapas Baranwal', '62762016', 'tapas@bernol@gmail.com', '9017527234', 'Gurgaon', 1715135),
(5, 'Pankaj Gautam', '62761426', 'pankajg@mail.com', '7088360659', 'Ghaziabad', 1030900),
(6, 'Bhawana Sharma', '62764919', 'bhanu192@gmail.com', '991548916', 'Noida', 983130),
(7, 'Vipul Sharma', '62762415', 'vipulnav@gmail.com', '9034321325', 'Hisar', 1098736),
(8, 'Namrta Sharma', '62761112', 'namrta@gmail.com', '8295576486', 'Pune', 269364),
(9, 'Preeti Bhardwaj', '62760305', 'pbhardwaj@gmail.com', '8872366366', 'Amritsar', 330500),
(10, 'Divya Sharma', '62762119', 'ds1912@gmail.com', '8743658041', 'Faridabad', 1299696);

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
(2, '62761426', '62761223', 3000, '2021-03-19 23:19:27'),
(3, '62760724', '62761223', 50000, '2021-03-19 23:36:53'),
(4, '62760724', '62761223', 10000, '2021-03-19 23:43:21'),
(5, '62761223', '62760724', 50000, '2021-03-19 23:50:37'),
(6, '62760724', '62764919', 1000, '2021-03-20 07:43:35'),
(7, '62761426', '62761223', 56, '2021-03-20 08:09:05'),
(8, '62761426', '62761223', 56, '2021-03-20 08:10:39'),
(9, '62764919', '62761223', 3201000, '2021-03-20 08:12:07'),
(10, '62760724', '62761223', 89000, '2021-03-20 08:14:48'),
(11, '62760712', '62761223', 2900000, '2021-03-20 08:15:10'),
(12, '62762016', '62761223', 3500000, '2021-03-20 08:15:37'),
(13, '62761426', '62761223', 2499888, '2021-03-20 08:16:05'),
(15, '62761223', '62762415', 12220000, '2021-03-20 08:21:25'),
(16, '62760712', '62761223', 10.5, '2021-03-20 08:26:44'),
(17, '62760712', '62760724', 1000, '2021-03-20 12:06:48'),
(18, '62760724', '62760712', 50000, '2021-03-20 16:33:54'),
(19, '62760724', '62761223', 5000, '2021-03-21 07:52:40'),
(20, '62760305', '62762016', 9500, '2021-03-21 12:28:05'),
(21, '62761426', '62761112', 13000, '2021-03-21 12:31:35'),
(22, '62761426', '62762415', 95100, '2021-03-21 12:37:33'),
(23, '62764919', '62761223', 56870, '2021-03-21 12:39:23'),
(24, '62761223', '62761223', 1000, '2021-03-21 13:12:35'),
(25, '62761223', '62760724', 54000, '2021-03-21 13:14:42'),
(26, '62761223', '62760724', 54000, '2021-03-21 13:14:52'),
(27, '62761223', '62760724', 54000, '2021-03-21 13:14:58'),
(28, '62761223', '62760724', 54000, '2021-03-21 13:15:02'),
(29, '62762016', '62762016', 344635, '2021-03-21 14:17:10'),
(30, '62761223', '62762016', 500000, '2021-03-21 14:24:38'),
(31, '62762016', '62761426', 139000, '2021-03-21 14:28:53'),
(32, '62760712', '62760724', 24248, '2021-03-23 11:50:38'),
(33, '62760712', '62760724', 24248, '2021-03-23 11:51:06'),
(34, '62760712', '62760724', 24248, '2021-03-23 11:51:11'),
(35, '62764919', '62764919', 40000, '2021-03-23 17:24:24'),
(36, '62760712', '62762119', 384848, '2021-03-25 05:51:47'),
(37, '62760712', '62762119', 484848, '2021-03-25 05:53:30'),
(38, '62761112', '62762415', 3636, '2021-03-25 05:54:22');

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
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Database: `database`
--
CREATE DATABASE IF NOT EXISTS `database` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `database`;

-- --------------------------------------------------------

--
-- Table structure for table `question-bank`
--

CREATE TABLE `question-bank` (
  `question_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `answer` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question-bank`
--

INSERT INTO `question-bank` (`question_id`, `question`, `answer`) VALUES
(1, 'Capital of India is Delhi.', 'true'),
(2, 'Dubai is in America.', 'false'),
(3, 'Earth is a star.', 'false'),
(4, 'Ganges is the longest river in the world.', 'false'),
(5, 'Christianity was introduced in 1900 BC.', 'false'),
(6, 'Russia is the largest country in the world.', 'true'),
(10, 'sdfdf\r\n', 'false'),
(11, 'sdfsd', 'false'),
(12, '#include <stdio.h>\r\nint main() {\r\n   // printf() displays the string inside quotation\r\n   printf(\"Hello, World!\");\r\n   return 0;\r\n}', 'true'),
(13, '#include <stdio.h>\r\nint main() {   \r\n    int number;\r\n   \r\n    printf(\"Enter an integer: \");  \r\n    \r\n    // reads and stores input\r\n    scanf(\"%d\", &number);\r\n\r\n    // displays output\r\n    printf(\"You entered: %d\", number);\r\n    \r\n    return 0;\r\n}', 'false'),
(14, '#include <stdio.h>\r\nint main() {   \r\n    int number;\r\n   \r\n    printf(\"Enter an integer: \");  \r\n    \r\n    // reads and stores input\r\n    scanf(\"%d\", &number);\r\n\r\n    // displays output\r\n    printf(\"You entered: %d\", number);\r\n    \r\n    return 0;\r\n}', 'true'),
(15, '#include <stdio.h>\r\nint main() {   \r\n    int number;\r\n   \r\n    printf(\"Enter an integer: \");  \r\n    \r\n    // reads and stores input\r\n    scanf(\"%d\", &number);\r\n\r\n    // displays output\r\n    printf(\"You entered: %d\", number);\r\n    \r\n    return 0;\r\n}', 'true'),
(16, '#include <stdio.h>\r\nint main() {\r\n   // printf() displays the string inside quotation\r\n   printf(\"Hello, World!\");\r\n   return 0;\r\n}', 'false'),
(17, '#include <stdio.h>\r\nint main() {   \r\n    int number;\r\n   \r\n    printf(\"Enter an integer: \");  \r\n    \r\n    // reads and stores input\r\n    scanf(\"%d\", &number);\r\n\r\n    // displays output\r\n    printf(\"You entered: %d\", number);\r\n    \r\n    return 0;\r\n}', 'false'),
(18, '#include <stdio.h>\r\nint main() {\r\n   // printf() displays the string inside quotation\r\n   printf(\"Hello, World!\");\r\n   return 0;\r\n}', 'false'),
(19, '#include <stdio.h>\r\nint main() {   \r\n    int number;\r\n   \r\n    printf(\"Enter an integer: \");  \r\n    \r\n    // reads and stores input\r\n    scanf(\"%d\", &number);\r\n\r\n    // displays output\r\n    printf(\"You entered: %d\", number);\r\n    \r\n    return 0;\r\n}', 'false'),
(20, '#include <stdio.h>\r\nint main() {   \r\n    int number;\r\n   \r\n    printf(\"Enter an integer: \");  \r\n    \r\n    // reads and stores input\r\n    scanf(\"%d\", &number);\r\n\r\n    // displays output\r\n    printf(\"You entered: %d\", number);\r\n    \r\n    return 0;\r\n}', 'true'),
(21, 'safdgsagasdgasdgas', 'true'),
(22, 'sadasdfasgsfsdg', 'false'),
(23, 'adfsasfgsdzfbdzsfgzsfd', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` text NOT NULL,
  `registration_num` varchar(15) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `registration_num`, `age`, `address`, `subject`) VALUES
('Rhythm Sharma', 'RA1811003030111', 20, 'Kurukshetra', 'DBMS'),
('Tushar Kumar', 'RA1811003030222', 21, 'Delhi', 'Artificial Intelligence'),
('Ishwar Baisla', 'RA1811003030333', 22, 'Ghaziabad', 'Network Security'),
('Bhawna Sharma', 'RA1811003030444', 35, 'Faridabad', 'Data Structures');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question-bank`
--
ALTER TABLE `question-bank`
  ADD PRIMARY KEY (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question-bank`
--
ALTER TABLE `question-bank`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `employees`
--
CREATE DATABASE IF NOT EXISTS `employees` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `employees`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `salary` double NOT NULL,
  `city` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `dept_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_name`, `designation`, `qualification`, `salary`, `city`, `dob`, `dept_number`) VALUES
(1, 'Rhythm Sharma', 'Manager', 'MBA', 300000, 'Gurgaon', '2000-11-24', 0),
(2, 'Tushar Kumar', 'Product Manager', 'MBA', 200000, 'Delhi', '2000-03-25', 0),
(3, 'Max Derek', 'Manager', 'MBA', 50000, 'Mumbai', '1995-09-27', 0),
(4, 'Abhishek Mishra', 'Manager', 'MBA', 40000, 'Faridabad', '1997-12-03', 0),
(5, 'Rahul ', 'Manager', 'MBA', 55000, 'Noida', '1999-11-03', 0),
(6, '', '', '', 0, '', NULL, 77);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"cadence bank\",\"table\":\"customers\"},{\"db\":\"cadence bank\",\"table\":\"transactions\"},{\"db\":\"database\",\"table\":\"student\"},{\"db\":\"database\",\"table\":\"question-bank\"},{\"db\":\"employees\",\"table\":\"employee\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-04-08 18:45:10', '{\"Console\\/Mode\":\"show\",\"ThemeDefault\":\"original\",\"Console\\/Height\":36.98599999999999,\"Console\\/AlwaysExpand\":true}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `srm`
--
CREATE DATABASE IF NOT EXISTS `srm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `srm`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;