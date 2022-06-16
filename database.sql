-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2022 at 09:40 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--
CREATE DATABASE IF NOT EXISTS `elearning` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `elearning`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course_name`, `author`, `duration`, `original_price`, `selling_price`) VALUES
(2563, 'Bangla ', 'rasshed', '4month', 4522, 4255),
(2566, 'English review', 'Jannat midha', '4month', 4566, 7899),
(5632, 'Eng. management', 'Rahim Sekh', '4 Month', 5000, 4500),
(8569, 'Digital Marketing', 'Gazi Mia', '4Month', 5000, 4600),
(1236, 'Data Communication', 'Tanjil Ahmed', '4month', 5000, 4800),
(8529, 'Prog. Language', 'Reza Ahmed', '4.5 month', 5000, 5000),
(8547, 'Math 5', 'Forida Easmin', '4month', 5000, 4800),
(2374, 'Economics', 'Forid Ahmed', '4month', 5000, 4900),
(5201, 'Accountion', 'Mir Ahmed', '4month', 4000, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `course`, `price`, `date`, `action`) VALUES
(2325, 'Prience Tanvir', 'Digital Elec.', 5000, '2021-01-13', 'valid'),
(5689, 'Kulsum Ali', 'webtech', 4500, '2021-01-28', 'valid'),
(5869, 'Forid Ahmed', 'Data Com.', 4500, '2021-01-19', 'invalid'),
(5869, 'Ahhsan Tabid', 'webtech', 3500, '2021-01-11', 'invalid'),
(8523, 'Singh Raju', 'Digital Elec.', 3800, '2021-01-14', 'valid'),
(9633, 'Tamim Iqbal', 'Data Structure', 3800, '2021-01-11', 'valid'),
(1234, 'alamin', 'Digital Elec.', 3800, '2021-01-02', 'valid');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `username`, `password`, `confirmpassword`, `gender`) VALUES
(1, 'razzak', 'razzak@gmail.com', 'razzak', '121212', '121212', ' Male'),
(2, 'razzak', 'razzak@gmail.com', 'razzak', '121212', '121212', ' Male');

-- --------------------------------------------------------

--
-- Table structure for table `sellreport`
--

CREATE TABLE `sellreport` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `original_price` int(11) NOT NULL,
  `selling_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sellreport`
--

INSERT INTO `sellreport` (`student_id`, `student_name`, `course_name`, `date`, `original_price`, `selling_price`) VALUES
(4545, 'tabid', 'webtech', '2020-12-29', 4500, 4400),
(2323, 'Nazma', 'Computer Networking', '2020-12-22', 5000, 5000),
(8585, 'takilur', 'Eng Ethics', '2020-12-24', 5454, 5444),
(5236, 'Ishaq Mia', 'Programming Language', '2020-12-12', 5200, 5000),
(5869, 'Forid Ahmed', 'Data Com.  ', '2021-01-06', 5000, 4500),
(5478, 'Laheza Jebin ', 'Accounting', '2021-01-13', 5600, 5400),
(6547, 'Tarek Lehaz', 'Eng. Management', '2021-01-13', 5263, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `email`, `contact`, `address`) VALUES
(1234, 'Ahhsan Tabid', 'tabid@gmail.com', 171717171, 'dhaka , Mirpur'),
(8652, 'Rahim', 'rahim@gmail.com', 1758693215, 'dhaka, Mirpur'),
(1256, 'Uzzal Promukh', 'uzzal@gmail.com', 123654789, 'Uttara, Dhaka'),
(5689, 'Rani Mukharji', 'rani@gmail.com', 1235647894, 'Gazipur, Dhaka'),
(5689, 'Sekh Mohammad', 'sekh@gmail.com', 125698743, 'Mirpur 2, Dhaka'),
(2365, 'Ahhan Tabid', 'tabid@gmail.com', 2147483647, 'Kumilla, Lalmatia'),
(8520, 'Zerim Rani', 'zerin@gmail.com', 1256987413, 'Cantoment,Dhaka'),
(5463, 'Singh Raju', 'raju@gmail.com', 1258963178, 'Raypur, Noakhali');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `password`, `confirmpassword`) VALUES
('kasmd', 'tamim@gmail.com', 'zmfdakmd', ''),
('tabid', 'tabid@gmail.com', 'zkfskfn', ''),
(';dsm', 'tamim@gmail.com', 'ad', ''),
(';dsm', 'tamim@gmail.com', 'ad', ''),
(';dsm', 'tamim@gmail.com', 'ad', 'Ad'),
(';fm', 'jnj@gmail.com', 'sle,f', 'ef'),
(';fm', 'jnj@gmail.com', 'sle,f', 'ef'),
('dgrg', 'tamim@gmail.com', '453453', '543564'),
('dgrg', 'tamim@gmail.com', '453453', '543564'),
('oshin', 'tabid@gmail.com', '123', '123'),
('rakib', 'rakib@gmail.com', '12345', '12345'),
('lala', 'lala@gmailcom', '2323', '1212'),
('lehaz', 'lehaz@gmail.com', '1212', '1212'),
('tanvir', 'rakib@gmail.com', '44', '45453'),
('uzzal', 'uzzal@gmail.com', '12', '12'),
('kamal', 'kamal@gmail.com', '4545', '4545'),
('alamin', 'alamin@gmail.com', '123', '123'),
('zerin', 'zerin@gmail.com', '12345', ''),
('taraf', 'taraf@gmail.com', '12345', ''),
('emon khan', 'emon@gmail.com', '121212', ''),
('Tabis', 'tabid@gmail.com', '12345', '12345'),
('kamal', 'kamal@gmail.com', '12345', '12345'),
('urmi', 'urmi@gmail.com', '123456', ''),
('Abbas', 'abbas@gamil.com', '123456', '123456'),
('Emon Khan', 'emon@gmail.com', '123456', ''),
('sumaya', 'sumayazerin@gmail.com', '123456', ''),
('Emon Khan', 'ahhsantabid10@gmail.com', '12345', ''),
('Emon Khan', 'emon@gmail.com', '123456', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `user_type`) VALUES
(1, 'tabid', '2121', 'tabid@gmail.com', 'admin'),
(2, 'tabid', '2121', 'tabid@gmail.com', 'admin'),
(3, 'mizan', '5656', 'mizan@gmail.com', 'User'),
(4, 'mizan', '5656', 'mizan@gmail.com', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `etextileshop`
--
CREATE DATABASE IF NOT EXISTS `etextileshop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `etextileshop`;

-- --------------------------------------------------------

--
-- Table structure for table `batch`
--

CREATE TABLE `batch` (
  `id` int(11) NOT NULL,
  `bname` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batch`
--

INSERT INTO `batch` (`id`, `bname`, `date`) VALUES
(1, 'B001', '21/06/2021'),
(2, 'B002', '22/06/2021'),
(3, 'B003', '8/06/2021'),
(4, 'B005', '15/06/2021'),
(5, 'B008', '5/5/2021');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `bno` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `bno`, `price`, `qty`) VALUES
(1, '', '', 0, 0),
(2, 'kid Tshirt', '2', 2000, 100),
(3, 'mobile', '1', 12354, 56),
(4, '', '1', 0, 0),
(5, 'potato', '4', 220, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batch`
--
ALTER TABLE `batch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batch`
--
ALTER TABLE `batch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `hanif`
--
CREATE DATABASE IF NOT EXISTS `hanif` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hanif`;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `sno` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`sno`, `name`, `email`, `contact`, `address`, `gender`, `desc`, `dt`) VALUES
(1, 'tabid', 'tabid@gmail.com', 1715158173, 'dhaka,mirpur', 'male', 'we provide all info', '2022-05-31 13:06:43'),
(2, '', '', 0, '', '', '', '2022-05-31 14:05:03'),
(3, '', '', 0, '', '', '', '2022-05-31 14:05:25'),
(10, 'M.Sumaya Akhter Zerin', 'sumayazerin@gmail.com', 2147483647, 'dhaka', ' female', ' ADEGAGFGERFADFGDSF', '2022-05-31 14:40:58'),
(12, '08_Tabid, MD Tarek Lehaz', 'ahhsantabid10@gmail.com', 2147483647, 'dhaka', ' male', ' sdasfs', '2022-05-31 14:41:48'),
(16, '08_Tabid, MD Tarek Lehaz', 'ahhsantabid10@gmail.com', 2147483647, 'dhaka', ' male', ' sdasfs', '2022-05-31 14:54:57'),
(17, '08_Tabid, MD Tarek Lehaz', 'ahhsantabid10@gmail.com', 2147483647, 'dhaka', ' male', ' sdasfs', '2022-05-31 14:56:05'),
(20, 'rohan', 'syful.dhk@gmail.com', 2147483647, 'dhaka', ' female', ' kcalkscas', '2022-05-31 14:57:37'),
(22, 'rohan', 'syful.dhk@gmail.com', 2147483647, 'dhaka', ' female', ' kcalkscas', '2022-05-31 15:02:07'),
(28, 'taraf', 'ishammi2020@gmail.com', 2147483647, 'shka', 'female', 'HE IS GOOD', '2022-05-31 16:30:41'),
(29, 'taraf', 'ishammi2020@gmail.com', 2147483647, 'shka', 'female', 'HE IS GOOD', '2022-05-31 16:32:02'),
(30, 'taraf', 'ishammi2020@gmail.com', 2147483647, 'shka', 'female', 'HE IS GOOD', '2022-05-31 16:32:33'),
(31, 'tara', '', 0, '', '', '', '2022-05-31 16:32:37'),
(36, 'tuba', 'ishammi2020@gmail.com', 2147483647, 'dhaka', 'female', 'girl mama', '2022-05-31 16:37:16'),
(37, 'tuba', 'ishammi2020@gmail.com', 2147483647, 'dhaka', 'male', 'kwmfl;mfl', '2022-05-31 16:37:34'),
(38, 'tuba', 'ishammi2020@gmail.com', 2147483647, 'dhaka', 'male', 'kwmfl;mfl', '2022-05-31 16:38:40'),
(39, 'M.Sumaya Akhter Zerin', 'sumayazerin@gmail.com', 2147483647, 'shka', 'female', 'I am ZERRIN', '2022-06-01 00:43:33'),
(40, 'M.Sumaya Akhter Zerin', 'sumayazerin@gmail.com', 2147483647, 'shka', 'female', 'I am ZERRIN', '2022-06-01 00:43:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Database: `information`
--
CREATE DATABASE IF NOT EXISTS `information` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `information`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `inote`
--
CREATE DATABASE IF NOT EXISTS `inote` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `inote`;

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `sno` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `note`
--

INSERT INTO `note` (`sno`, `title`, `description`, `dt`) VALUES
(28, 'php', 'https://www.w3schools.com/php/php_examples.asp', '2022-06-14 22:18:59'),
(39, 'C#', 'Farmwork. net lala', '2022-06-15 04:46:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- Database: `linda`
--
CREATE DATABASE IF NOT EXISTS `linda` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `linda`;

-- --------------------------------------------------------

--
-- Table structure for table `record`
--

CREATE TABLE `record` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` int(11) NOT NULL,
  `course` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `record`
--

INSERT INTO `record` (`id`, `name`, `mobile`, `course`) VALUES
(1, 'tabid', 17585, '0'),
(3, 'Aman', 1582, 'EEE'),
(4, 'Salaman', 21646464, 'php'),
(5, 'afzall', 125896, 'C#'),
(6, 'Tanvir', 646461, 'JAVA'),
(7, 'zerin', 6229262, 'ban'),
(8, 'uit', 6, 'kyu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `record`
--
ALTER TABLE `record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `record`
--
ALTER TABLE `record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `login`
--
CREATE DATABASE IF NOT EXISTS `login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login`;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(11) NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `dt`) VALUES
(0, 'Ahhsan Tabid', 0, '0000-00-00 00:00:00'),
(0, 'Ahhsan Tabid', 0, '0000-00-00 00:00:00'),
(0, 'panna', 0, '2022-06-02 15:00:02'),
(0, 'Taraf', 0, '2022-06-03 01:59:29'),
(0, 'lknkln', 0, '2022-06-03 02:49:08'),
(0, 'labjap', 0, '2022-06-07 04:40:04'),
(0, 'tabid', 0, '2022-06-07 04:45:43'),
(0, 'zerin', 0, '2022-06-07 04:51:01'),
(0, 'lehaz', 0, '2022-06-07 05:12:18'),
(0, 'Taraf', 0, '2022-06-08 02:39:22'),
(0, 'ahhsan', 0, '2022-06-08 02:48:28'),
(0, 'mamama', 0, '2022-06-08 03:08:03'),
(0, 'Taraf', 0, '2022-06-08 03:18:06'),
(0, 'abbas', 0, '2022-06-08 03:18:24'),
(0, 'alibaba', 0, '2022-06-08 03:37:39'),
(0, 'amin', 0, '2022-06-08 03:40:47'),
(0, 'jabin', 123123, '2022-06-08 03:42:32'),
(0, 'saif', 125125, '2022-06-08 03:44:58'),
(0, 'amena', 123123, '2022-06-08 03:46:32'),
(0, 'amil', 0, '2022-06-08 04:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` int(255) NOT NULL,
  `password` int(11) NOT NULL,
  `dt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `dt`) VALUES
(1, 0, 0, '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `login_form`
--
CREATE DATABASE IF NOT EXISTS `login_form` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `login_form`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(11) NOT NULL,
  `dt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `dt`) VALUES
(1, 'lala', 0, '0000-00-00 00:00:00'),
(2, 'zerin', 0, '2022-06-09 02:01:43'),
(3, 'tabid', 3424011, '2022-06-09 02:02:54'),
(4, 'panna', 123456, '2022-06-09 02:03:51'),
(5, 'taraf', 787878, '2022-06-09 03:30:01'),
(6, '', 121212, '2022-06-09 05:00:57'),
(7, '', 456456, '2022-06-09 05:02:06'),
(8, 'lal', 121212, '2022-06-09 05:03:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `online_shop`
--
CREATE DATABASE IF NOT EXISTS `online_shop` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_shop`;
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
  `id` int(11) NOT NULL,
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
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
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

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'iNote', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"elearning\",\"etextileshop\",\"hanif\",\"information\",\"inote\",\"linda\",\"login\",\"login_form\",\"online_shop\",\"phpmyadmin\",\"sellpos\",\"test\",\"ticket_reservation\",\"webtech\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

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
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
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

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'record', 'table', 'linda', '');

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
('root', '[{\"db\":\"inote\",\"table\":\"note\"},{\"db\":\"hanif\",\"table\":\"trip\"},{\"db\":\"login_form\",\"table\":\"users\"},{\"db\":\"login\",\"table\":\"users\"},{\"db\":\"login\",\"table\":\"user\"},{\"db\":\"phpmyadmin\",\"table\":\"pma__userconfig\"},{\"db\":\"ticket_reservation\",\"table\":\"webtech_buses\"},{\"db\":\"etextileshop\",\"table\":\"products\"},{\"db\":\"etextileshop\",\"table\":\"batch\"},{\"db\":\"elearning\",\"table\":\"registration\"}]');

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
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
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
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
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
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2020-06-22 06:39:45', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Database: `sellpos`
--
CREATE DATABASE IF NOT EXISTS `sellpos` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sellpos`;

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(1, 'LG', 'Active'),
(3, 'sony', 'Active'),
(4, 'samsung', 'Active'),
(5, 'Dell', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(11) NOT NULL,
  `catagory` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `catagory`, `status`) VALUES
(1, 'fanny', 'Deactive'),
(3, 'computer', 'Active'),
(4, 'tv', 'Active'),
(6, 'tab', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cat_id` varchar(255) NOT NULL,
  `brand_id` varchar(255) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `retail_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `cat_id`, `brand_id`, `cost_price`, `retail_price`, `qty`, `barcode`, `status`) VALUES
(1, 'galxy556', 'new phone', 'mobile', 'samsung', 55, 60, 10, 11, 'Active'),
(4, 'AC', 'Bangladeshi product', 'Air conditional', 'walton', 50000, 60000, 60, 4544, 'Active'),
(6, 'FAF', 'pakistani Fan', 'fan', 'loto', 700, 900, 50, 5454, 'Active'),
(7, 'Inspreron 5500', 'american Laptop', 'laptop', 'Dell', 60000, 70000, 20, 2121, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `subtotal`, `pay`, `balance`) VALUES
(1, '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `ticket_reservation`
--
CREATE DATABASE IF NOT EXISTS `ticket_reservation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `ticket_reservation`;

-- --------------------------------------------------------

--
-- Table structure for table `webtech_authsession`
--

CREATE TABLE `webtech_authsession` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `token` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_authsession`
--

INSERT INTO `webtech_authsession` (`id`, `userid`, `token`, `expire`) VALUES
(22, 1, '13fd2ccb4c820828892722d4e94c8441', '2020-11-06 03:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_bookedseats`
--

CREATE TABLE `webtech_bookedseats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `booking` bigint(20) UNSIGNED NOT NULL,
  `seat` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_bookedseats`
--

INSERT INTO `webtech_bookedseats` (`id`, `booking`, `seat`) VALUES
(1, 1, 'A1'),
(2, 1, 'A2'),
(3, 2, 'C5'),
(4, 3, 'D3'),
(5, 3, 'C4'),
(6, 3, 'D4'),
(7, 3, 'D5');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_bookings`
--

CREATE TABLE `webtech_bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `schedule` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_fare` double NOT NULL,
  `status` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp` datetime DEFAULT NULL,
  `booked` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_bookings`
--

INSERT INTO `webtech_bookings` (`id`, `schedule`, `name`, `email`, `mobile`, `total_fare`, `status`, `temp`, `booked`) VALUES
(1, 1, 'a', 'a', 'a', 1000, 'booked', NULL, '2019-08-21 00:00:00'),
(2, 8, '', '', '', 1200, 'temporary', '2020-11-05 21:50:25', '2020-11-05 21:20:25'),
(3, 8, '', '', '', 4800, 'temporary', '2020-11-05 21:52:25', '2020-11-05 21:22:25');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_buscounters`
--

CREATE TABLE `webtech_buscounters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manager` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_buscounters`
--

INSERT INTO `webtech_buscounters` (`id`, `manager`, `name`, `location`, `type`, `description`) VALUES
(1, 4, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(2, 13, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(3, 16, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(4, 17, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(5, 18, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(6, 19, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(7, 20, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(8, 21, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(9, 22, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(10, 23, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(11, 24, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(12, 25, 'Kallayanpur Counter', 'Kallyanpur Foot Over Bridge, Dhaka', 'Plus Counter', ''),
(14, 13, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(15, 4, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(16, 16, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(17, 17, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(18, 22, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(19, 21, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(20, 19, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(21, 18, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Plus Counter', ''),
(22, 20, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Plus Counter', ''),
(23, 4, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(24, 13, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(25, 16, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(26, 17, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(27, 18, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(28, 19, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(30, 21, 'Bogura Thanthania Counter', 'Thanthania Bus Terminal, Bogura', 'Sub Counter', ''),
(31, 22, 'Bogura Shatmatha Counter', 'College Road, Shathmatha Bogura', 'Sub Counter', ''),
(32, 13, 'Gaibandha', 'Ganas Market, D, B Road', 'Plus Counter', ''),
(35, 13, 'Rangpur', 'jahaj Co: Office (Below the Rangpur Chamber Building)', 'Plus Counter', ''),
(36, 13, 'Gobindaganj', 'SonaLi Bank building', 'Plus Counter', ''),
(37, 13, 'Shanaz pump counter', 'Shahnaz CNG Filling Station (west of technical curve)', 'Sub Counter', ''),
(38, 13, 'Abdullahpur Bus Stand', 'Abdullahpur', 'Sub Counter', ''),
(39, 13, 'Gabtali Bus Terminal', 'Gabtali', 'Sub Counter', ''),
(40, 13, 'Mohakhali Bus Terminal', 'Mohakhali', 'Plus Counter', ''),
(42, 13, 'Gazipur', 'Gazipur Bypass', 'Sub Counter', ''),
(43, 13, 'Palashbari', '(FRONT OF the post office) Bogra Road, Palashbari', 'Sub Counter', ''),
(44, 13, 'Naogaon', 'Dhaka Coach Stands', 'Plus Counter', ''),
(45, 23, 'Kalabagan Counter', 'Kalabagan', 'Plus Counter', ''),
(46, 23, 'Kallayanpur Counter', '9 South Kallayanpur, Khaleq Petrol Pump.', 'Plus Counter', ''),
(48, 23, 'Abdullahpur Counter', 'Abdullahpur BUS Point', 'Sub Counter', ''),
(49, 23, 'Khulna Counter', 'KDA Ave, Khulna', 'Plus Counter', ''),
(51, 23, 'Jessore Counter', 'Jessore Bus Terminal', 'Plus Counter', ''),
(53, 23, 'Sylhet Counter', 'N208, Sylhet', 'Plus Counter', ''),
(54, 23, 'Chittagong Counter', '1627 Zakir Hossain Rd, Chittagong', 'Plus Counter', ''),
(56, 23, 'Cox\'s Bazar Bus Terminal', 'Central bus terminal road, Jhawtola, Cox\'s Bazar 4700', '', ''),
(58, 29, 'kallyanpur Counter', 'kallyanpur Bus Point', 'Plus Counter', '');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_buses`
--

CREATE TABLE `webtech_buses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `manager` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seats_row` int(11) NOT NULL,
  `seats_column` int(11) NOT NULL,
  `fill_last_row` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_buses`
--

INSERT INTO `webtech_buses` (`id`, `manager`, `name`, `registration`, `type`, `seats_row`, `seats_column`, `fill_last_row`, `description`) VALUES
(1, 4, 'Hyundai Universe - 2019', 'DHA-58109', 'Ac', 9, 3, '1', ''),
(2, 13, 'Hyundai Universe', 'DHA-58101', 'Ac', 9, 3, '1', ''),
(3, 4, 'Hyundai Universe - 2018', 'GHA-52140', 'Ac', 9, 3, '1', ''),
(4, 4, 'RM-2', 'GHA-42040', 'Ac', 9, 3, '1', ''),
(5, 4, 'Hyundai Universe - 2019', 'KHA-80217', 'Ac', 9, 3, '1', ''),
(6, 4, 'RM-2', 'LA-86547', 'Ac', 9, 3, '0', ''),
(7, 13, 'Hino AK1J', 'DHA-96325', 'Non-Ac', 10, 4, '0', ''),
(8, 13, 'ISUZU', 'GHA-74218', 'Non-Ac', 10, 4, '0', ''),
(9, 13, 'Hyundai Universe - 2017', 'KHA-58421', 'Ac', 9, 3, '1', ''),
(10, 13, 'Hyundai Universe - 2018', 'DHA-45961', 'Ac', 9, 3, '1', ''),
(11, 13, 'Hyundai Universe - 2018', 'GHA-52147', 'Ac', 9, 3, '1', ''),
(12, 16, 'VOLVO', 'GHA-69687', 'Ac', 11, 3, '0', ''),
(13, 16, 'Hino RN', 'GHA-75896', 'Ac', 9, 3, '1', ''),
(14, 16, 'VOLVO', 'KHA-55896', 'Ac', 11, 3, '0', ''),
(15, 16, 'Hino RN', 'LA-66987', 'Ac', 9, 3, '1', ''),
(16, 16, 'VOLVO', 'DHA-55842', 'Ac', 11, 3, '0', ''),
(17, 16, 'Hino RN', 'DHA-45682', 'Ac', 9, 3, '1', ''),
(18, 17, 'Scania', 'DHA-45699', 'Ac', 9, 3, '1', ''),
(19, 17, 'Hino RM2', 'KHA-58974', 'Ac', 10, 4, '0', ''),
(20, 17, 'Scania', 'DHA-99857', 'Ac', 9, 3, '1', ''),
(21, 17, 'Scania', 'DHA-77563', 'Ac', 9, 3, '1', ''),
(22, 17, 'Scania', 'KHA-55987', 'Ac', 9, 3, '1', ''),
(23, 18, 'ISUZU', 'DHA-85249', 'Non-Ac', 10, 4, '0', ''),
(24, 18, 'Hino AK1J', 'KHA-77896', 'Non-Ac', 10, 4, '0', ''),
(25, 19, 'ISUZU', 'GHA-85795', 'Non-Ac', 10, 4, '0', ''),
(26, 19, 'Hino AK1J', 'LA-88964', 'Ac', 10, 4, '0', ''),
(27, 19, 'Hyundai Universe - 2017', 'DHA-63697', 'Ac', 9, 3, '0', ''),
(28, 19, 'ISUZU', 'DHA-25879', 'Non-Ac', 10, 4, '0', ''),
(29, 19, 'Hyundai Universe - 2018', 'DHA-88524', 'Ac', 9, 3, '1', ''),
(30, 19, 'Hino AK1J', 'GHA-78965', 'Ac', 9, 3, '1', ''),
(31, 20, 'Hyundai Universe - 2018', 'KHA-75869', 'Ac', 9, 3, '1', ''),
(32, 20, 'ISUZU', 'DHA-87325', 'Non-Ac', 10, 4, '0', ''),
(33, 20, 'Hyundai Universe - 2017', 'DHA-25698', 'Ac', 9, 3, '1', ''),
(34, 20, 'Hyundai Universe - 2019', 'GHA-20015', 'Ac', 9, 3, '1', ''),
(35, 20, 'Hyundai Universe - 2017', 'DHA-02544', 'Ac', 9, 3, '1', ''),
(36, 20, 'Hyundai Universe - 2018', 'GHA-22148', 'Ac', 9, 3, '1', ''),
(37, 20, 'Hyundai Universe - 2019', 'DHA-45689', 'Ac', 9, 3, '1', ''),
(38, 20, 'ISUZU', 'DHA-25479', 'Non-Ac', 10, 4, '0', ''),
(39, 20, 'ISUZU', 'GHA-21584', 'Non-Ac', 10, 4, '0', ''),
(40, 20, 'ISUZU', 'GHA-48589', 'Non-Ac', 10, 4, '0', ''),
(41, 20, 'ISUZU', 'KHA-45689', 'Non-Ac', 10, 4, '0', ''),
(42, 21, 'Hino AK1J Super Plus', 'GHA-45896', 'Non-Ac', 10, 4, '0', ''),
(43, 21, 'Scania Business Class', 'DHA-12358', 'Ac', 9, 3, '1', ''),
(44, 21, 'Hino AK1J Super Salon Chair Coach', 'GHA-00258', 'Non-Ac', 10, 4, '0', ''),
(45, 21, 'Scania Business Class', 'DHA-73294', 'Ac', 9, 3, '1', ''),
(46, 21, 'Scania Business Class', 'KHA-21997', 'Ac', 9, 3, '1', ''),
(47, 21, 'Hino AK1J Super Plus', 'DHA-45898', 'Non-Ac', 10, 4, '0', ''),
(48, 21, 'Hino, AK1J Super Plus', 'GHA-12697', 'Non-Ac', 10, 4, '0', ''),
(49, 21, 'Hino, AK1J Super Salon Chair Coach', 'DHA-55974', 'Non-Ac', 10, 4, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_discount`
--

CREATE TABLE `webtech_discount` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max` double NOT NULL,
  `valid_from` datetime NOT NULL,
  `valid_to` datetime NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_discount`
--

INSERT INTO `webtech_discount` (`id`, `code`, `discount`, `max`, `valid_from`, `valid_to`, `created`) VALUES
(1, 'DOEL54', '50', 150, '2019-08-20 12:00:00', '2019-08-31 12:00:00', '2019-08-20 21:12:37'),
(2, 'UTHSASH60', '70', 100, '2019-08-20 00:00:00', '2019-09-30 00:00:00', '2019-08-20 21:17:07'),
(3, 'BIJOY71', '30', 200, '2019-08-23 12:00:00', '2019-09-26 12:00:00', '2019-08-20 21:21:09'),
(4, 'ROMONI43', '20', 300, '2019-08-21 12:00:00', '2019-09-17 12:00:00', '2019-08-20 21:22:09'),
(5, 'PADMA11', '70', 300, '2019-08-24 12:00:00', '2019-09-18 12:00:00', '2019-08-20 21:23:10'),
(6, 'SHAPLA13', '45', 300, '2019-08-28 12:00:00', '2019-08-22 12:00:00', '2019-08-20 21:24:21'),
(7, 'JAGO26', '35', 250, '2019-08-21 12:00:00', '2019-08-28 12:00:00', '2019-08-20 21:57:20'),
(8, 'NIRBAS80', '15', 150, '2019-08-22 12:00:00', '2019-08-29 12:00:00', '2019-08-20 21:57:54'),
(9, 'ACHOL04', '60', 400, '2019-08-23 12:00:00', '2019-08-30 12:00:00', '2019-08-20 21:58:23'),
(10, 'BILASH75', '30', 200, '2019-08-24 12:00:00', '2019-08-29 12:00:00', '2019-08-20 21:59:14'),
(11, 'CYBER75', '10', 200, '2019-08-25 12:00:00', '2019-08-28 12:00:00', '2019-08-20 21:59:56'),
(12, 'CYCLONE55', '25', 100, '2019-08-25 12:00:00', '2019-08-30 12:00:00', '2019-08-20 22:00:28'),
(13, 'HUMBA30', '30', 300, '2019-08-26 12:00:00', '2019-08-29 12:00:00', '2019-08-20 22:01:06'),
(14, 'BTRS007', '70', 250, '2019-08-27 12:00:00', '2019-08-30 12:00:00', '2019-08-20 22:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_paymentmethod`
--

CREATE TABLE `webtech_paymentmethod` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_paymentmethod`
--

INSERT INTO `webtech_paymentmethod` (`id`, `method`, `description`, `created`) VALUES
(1, 'bKash', 'The easiest and safest way to send or receive money, make payments, recharge mobile balance, pay bills â€“ nationwide. bKash, when in need.', '2019-08-20 22:44:56'),
(2, 'DBBL Rocket', 'Dutch-Bangla Bank pioneered Mobile Banking in Bangladesh. It was the first bank to offer banking facilities through a wide range of mobile phones', '2019-08-20 22:46:05');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_schedule`
--

CREATE TABLE `webtech_schedule` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `busid` bigint(20) UNSIGNED NOT NULL,
  `departure` datetime NOT NULL,
  `arrival` datetime NOT NULL,
  `route` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fare` double UNSIGNED NOT NULL DEFAULT '0',
  `boarding` bigint(20) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webtech_schedule`
--

INSERT INTO `webtech_schedule` (`id`, `busid`, `departure`, `arrival`, `route`, `fare`, `boarding`, `created`, `description`) VALUES
(1, 5, '2019-08-21 10:00:00', '2019-08-21 16:00:00', 'Dhaka - Bogura', 1000, 1, '2019-08-20 04:35:52', ''),
(2, 10, '2019-08-21 10:00:00', '2019-08-21 16:00:00', 'Dhaka - Bogura', 1000, 2, '2019-08-20 04:37:19', ''),
(3, 4, '2019-08-21 12:00:00', '2019-08-21 18:00:00', 'Dhaka - Bogura', 700, 1, '2019-08-20 04:38:28', ''),
(4, 8, '2019-08-21 15:30:00', '2019-08-21 21:30:00', 'Dhaka - Bogura', 350, 2, '2019-08-20 04:39:46', ''),
(5, 11, '2019-08-21 10:00:00', '2019-08-21 16:00:00', 'Bogura - Dhaka', 1000, 24, '2019-08-20 04:40:46', ''),
(6, 1, '2019-08-21 10:00:00', '2019-08-21 16:00:00', 'Bogura - Dhaka', 1000, 23, '2019-08-20 04:42:35', ''),
(7, 6, '2019-08-21 12:00:00', '2019-08-21 18:00:00', 'Bogura - Dhaka', 700, 23, '2019-08-20 04:48:35', ''),
(8, 4, '2020-11-21 12:00:00', '2020-11-21 18:00:00', 'Dhaka - Rajshahi', 1200, 23, '2020-11-05 21:18:13', 'qwdewfwf');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_settings`
--

CREATE TABLE `webtech_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webtech_supportticket`
--

CREATE TABLE `webtech_supportticket` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assinged` bigint(20) UNSIGNED DEFAULT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriprion` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` text COLLATE utf8mb4_unicode_ci,
  `status` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webtech_ticketreplay`
--

CREATE TABLE `webtech_ticketreplay` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supportid` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webtech_transactions`
--

CREATE TABLE `webtech_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `trxid` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` int(10) UNSIGNED NOT NULL,
  `amount` double NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `webtech_userdetails`
--

CREATE TABLE `webtech_userdetails` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `userid` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `webtech_userdetails`
--

INSERT INTO `webtech_userdetails` (`id`, `userid`, `type`, `data`) VALUES
(1, 1, 'firstName', 'M. Rashedul'),
(2, 1, 'lastName', 'Islam'),
(3, 1, 'birthDate', '1997-01-04'),
(4, 4, 'firstName', 'Cameron'),
(5, 4, 'lastName', 'Rodriquez'),
(6, 4, 'birthDate', '1995-06-14'),
(7, 4, 'maritalStatus', 'Unmarried'),
(8, 4, 'nidPassport', '1674122354'),
(9, 4, 'photograph', 'fd64f12cd5044f8dcd794e10289e7a85.jpg'),
(10, 4, 'street', 'Basundhara R/A'),
(11, 4, 'mobile', '01700000000'),
(12, 4, 'city', 'Dhaka'),
(13, 4, 'zip', '1200'),
(14, 4, 'country', 'bd'),
(15, 4, 'companyName', 'Manik Express'),
(16, 4, 'companyStreet', 'Kallayanpur'),
(17, 4, 'companyLicense', 'BTRS124586452'),
(18, 4, 'companyCity', 'Dhaka'),
(19, 4, 'companyZip', '1201'),
(20, 4, 'companyCountry', 'bd'),
(21, 4, 'companyLogo', '06b08212388d6d69c206361def0d5e0e.gif'),
(22, 5, 'firstName', 'Clara'),
(23, 5, 'lastName', 'Jacobs'),
(24, 5, 'birthDate', '1981-05-08'),
(25, 5, 'maritalStatus', 'Unmarried'),
(26, 5, 'nidPassport', '54123411202'),
(27, 5, 'photograph', '9918d31870107bb4acd77a79deaeb167.jpg'),
(28, 5, 'street', '12/E, Section - 1, Mirpur'),
(29, 5, 'mobile', '01700000000'),
(30, 5, 'city', 'Dhaka'),
(31, 5, 'zip', '1201'),
(32, 5, 'country', 'bd'),
(33, 5, 'hourlyRate', '100'),
(34, 5, 'activeHours', '0'),
(35, 6, 'firstName', 'Eric'),
(36, 6, 'lastName', 'Marshall'),
(37, 6, 'birthDate', '1973-04-04'),
(38, 6, 'maritalStatus', 'Married'),
(39, 6, 'nidPassport', '12529002113'),
(40, 6, 'photograph', 'a9b2490120dfe258afd919ad9b5adaf1.jpg'),
(41, 6, 'street', '3/A, Bashundhara R/A'),
(42, 6, 'mobile', '01701230120'),
(43, 6, 'city', 'Dhaka'),
(44, 6, 'zip', '1209'),
(45, 6, 'country', 'bd'),
(46, 6, 'hourlyRate', '100'),
(47, 6, 'activeHours', '0'),
(48, 7, 'firstName', 'Johnni'),
(49, 7, 'lastName', 'Ramirez'),
(50, 7, 'birthDate', '1983-02-04'),
(51, 7, 'maritalStatus', 'Unmarried'),
(52, 7, 'nidPassport', '30144023421'),
(53, 7, 'photograph', '554a2c24a76339e33f8a229fbfeb2026.jpg'),
(54, 7, 'street', '15/145, Gulsan 2'),
(55, 7, 'mobile', '01960210034'),
(56, 7, 'city', 'Dhaka'),
(57, 7, 'zip', '1103'),
(58, 7, 'country', 'bd'),
(59, 7, 'hourlyRate', '0'),
(60, 7, 'activeHours', '0'),
(61, 8, 'firstName', 'Jennifer'),
(62, 8, 'lastName', 'Palmer'),
(63, 8, 'birthDate', '1974-06-09'),
(64, 8, 'maritalStatus', 'Married'),
(65, 8, 'nidPassport', '311230212234'),
(66, 8, 'photograph', '85869aacc5ee244f90a8e74c6d0d0b81.jpg'),
(67, 8, 'street', '56/D, Basundhara R/A'),
(68, 8, 'mobile', '01386301230'),
(69, 8, 'city', 'Dhaka'),
(70, 8, 'zip', '1220'),
(71, 8, 'country', 'bd'),
(72, 8, 'hourlyRate', '0'),
(73, 8, 'activeHours', '0'),
(74, 9, 'firstName', 'Ronnie'),
(75, 9, 'lastName', 'Bryant'),
(76, 9, 'birthDate', '1985-12-11'),
(77, 9, 'maritalStatus', 'Unmarried'),
(78, 9, 'nidPassport', '12365501201'),
(79, 9, 'photograph', '807b909866bb63545fe79954929b802d.jpg'),
(80, 9, 'street', '6/D, Basundhara R/A'),
(81, 9, 'mobile', '01602102314'),
(82, 9, 'city', 'Dhaka'),
(83, 9, 'zip', '1220'),
(84, 9, 'country', 'bd'),
(85, 9, 'hourlyRate', '0'),
(86, 9, 'activeHours', '0'),
(87, 10, 'firstName', 'Corey'),
(88, 10, 'lastName', 'Pearson'),
(89, 10, 'birthDate', '1979-05-08'),
(90, 10, 'maritalStatus', 'Married'),
(91, 10, 'nidPassport', '032411123452'),
(92, 10, 'photograph', 'ede67b3be902c010afe5ab220027eba0.jpg'),
(93, 10, 'street', '7/A, Section - 12, Mirpur'),
(94, 10, 'mobile', '01623154239'),
(95, 10, 'city', 'Dhaka'),
(96, 10, 'zip', '1202'),
(97, 10, 'country', 'bd'),
(98, 10, 'hourlyRate', '100'),
(99, 10, 'activeHours', '0'),
(100, 11, 'firstName', 'Taylor'),
(101, 11, 'lastName', 'Hale'),
(102, 11, 'birthDate', '1990-08-08'),
(103, 11, 'maritalStatus', 'Unmarried'),
(104, 11, 'nidPassport', '11284512336'),
(105, 11, 'photograph', 'fb4855b0481119c6c9c6cf3f475077c0.jpg'),
(106, 11, 'street', '27, Dhanmondi R/A'),
(107, 11, 'mobile', '01524381391'),
(108, 11, 'city', 'Dhaka'),
(109, 11, 'zip', '1205'),
(110, 11, 'country', 'bd'),
(111, 11, 'hourlyRate', '0'),
(112, 11, 'activeHours', '0'),
(113, 12, 'firstName', 'Bessie'),
(114, 12, 'lastName', 'Medina'),
(115, 12, 'birthDate', '1986-04-07'),
(116, 12, 'maritalStatus', 'Unmarried'),
(117, 12, 'nidPassport', '95123412536'),
(118, 12, 'photograph', 'a2a391522f1addb8741c0bab37f31f83.jpg'),
(119, 12, 'street', '27, Dhanmondi R/A'),
(120, 12, 'mobile', '01656774123'),
(121, 12, 'city', 'Dhaka'),
(122, 12, 'zip', '1203'),
(123, 12, 'country', 'bd'),
(124, 12, 'hourlyRate', '100'),
(125, 12, 'activeHours', '0'),
(126, 13, 'firstName', 'Willard'),
(127, 13, 'lastName', 'Marshall'),
(128, 13, 'birthDate', '1976-07-05'),
(129, 13, 'maritalStatus', 'Married'),
(130, 13, 'nidPassport', '147888851234'),
(131, 13, 'photograph', '690d4db32ce7e101b5e2f440f3ffb637.jpg'),
(132, 13, 'street', '27, Dhanmondi R/A'),
(133, 13, 'mobile', '01512463471'),
(134, 13, 'city', 'Dhaka'),
(135, 13, 'zip', '1140'),
(136, 13, 'country', 'bd'),
(137, 13, 'companyName', 'S.R Travels (Pvt) Ltd'),
(138, 13, 'companyStreet', '13/A, Motijheel'),
(139, 13, 'companyLicense', 'BSTG4122585'),
(140, 13, 'companyCity', 'Dhaka'),
(141, 13, 'companyZip', '1241'),
(142, 13, 'companyCountry', 'bd'),
(143, 13, 'companyLogo', 'f9e17310053cf95f94d0e09e4e2bc99a.png'),
(144, 14, 'firstName', 'Peter'),
(145, 14, 'lastName', 'Ward'),
(146, 14, 'birthDate', '1981-03-05'),
(147, 14, 'maritalStatus', 'Unmarried'),
(148, 14, 'nidPassport', '31244123'),
(149, 14, 'photograph', '9037e6c47d8a0981477595659e56aa29.jpg'),
(150, 14, 'street', '8/21/B, Badda'),
(151, 14, 'mobile', '01312463125'),
(152, 14, 'city', 'Dhaka'),
(153, 14, 'zip', '1305'),
(154, 14, 'country', 'bd'),
(155, 14, 'busCounter', '1'),
(156, 15, 'firstName', 'Donald'),
(157, 15, 'lastName', 'Harper'),
(158, 15, 'birthDate', '1980-01-04'),
(159, 15, 'maritalStatus', 'Married'),
(160, 15, 'nidPassport', '320120034412'),
(161, 15, 'photograph', '7a3ab5e5cfced446f21016fb9fc86380.jpg'),
(162, 15, 'street', '30/3 Rampura'),
(163, 15, 'mobile', '01532201301'),
(164, 15, 'city', 'Dhaka'),
(165, 15, 'zip', '1215'),
(166, 15, 'country', 'bd'),
(167, 15, 'busCounter', '2'),
(168, 16, 'firstName', 'Jeremy'),
(169, 16, 'lastName', 'Martin'),
(170, 16, 'birthDate', '1981-05-01'),
(171, 16, 'maritalStatus', 'Unmarried'),
(172, 16, 'nidPassport', '55452212234'),
(173, 16, 'photograph', '919693b8c078d60884d9e09182f4d88b.jpg'),
(174, 16, 'street', '13/A, Section - 10, Mirpur '),
(175, 16, 'mobile', '01902341231'),
(176, 16, 'city', 'Dhaka'),
(177, 16, 'zip', '1203'),
(178, 16, 'country', 'bd'),
(179, 16, 'companyName', 'Hanif Enterprise'),
(180, 16, 'companyStreet', '131/C, Gulshan - 2'),
(181, 16, 'companyLicense', 'BTRS12445236542'),
(182, 16, 'companyCity', 'Dhaka'),
(183, 16, 'companyZip', '1221'),
(184, 16, 'companyCountry', 'bd'),
(185, 16, 'companyLogo', '3acb81b91eddd10171ab603e11fa43a0.jpg'),
(186, 17, 'firstName', 'Herman'),
(187, 17, 'lastName', 'Mason'),
(188, 17, 'birthDate', '1979-03-10'),
(189, 17, 'maritalStatus', 'Married'),
(190, 17, 'nidPassport', '1285967185'),
(191, 17, 'photograph', 'e168e57a0c21e046727f6792ea6a72ca.jpg'),
(192, 17, 'street', '12/A, Rampura '),
(193, 17, 'mobile', '01578962154'),
(194, 17, 'city', 'Dhaka'),
(195, 17, 'zip', '1507'),
(196, 17, 'country', 'bd'),
(197, 17, 'companyName', 'Agomony Express'),
(198, 17, 'companyStreet', '100 Motijheel C/A'),
(199, 17, 'companyLicense', 'BTRS8596327841'),
(200, 17, 'companyCity', 'Dhaka'),
(201, 17, 'companyZip', '1000'),
(202, 17, 'companyCountry', 'bd'),
(203, 17, 'companyLogo', '0ee966377dc2924b36be1415509ae9d5.png'),
(204, 18, 'firstName', 'Brad'),
(205, 18, 'lastName', 'Tucker'),
(206, 18, 'birthDate', '1978-07-07'),
(207, 18, 'maritalStatus', 'Married'),
(208, 18, 'nidPassport', '1254896377'),
(209, 18, 'photograph', '100037b310b6d10be55c4305a8df8335.jpg'),
(210, 18, 'street', '13/A, Section - 14, Mirpur '),
(211, 18, 'mobile', '01796050417'),
(212, 18, 'city', 'Dhaka'),
(213, 18, 'zip', '1518'),
(214, 18, 'country', 'bd'),
(215, 18, 'companyName', 'Akota Transport'),
(216, 18, 'companyStreet', ' Karwan Bazar Road, Dhaka City'),
(217, 18, 'companyLicense', 'BTRS459621785'),
(218, 18, 'companyCity', 'Dhaka'),
(219, 18, 'companyZip', '1361'),
(220, 18, 'companyCountry', 'bd'),
(221, 18, 'companyLogo', 'cd28161e2c2007e4f5c366dc8e506448.jpg'),
(222, 19, 'firstName', 'Henry'),
(223, 19, 'lastName', 'Hicks'),
(224, 19, 'birthDate', '1979-02-12'),
(225, 19, 'maritalStatus', 'Married'),
(226, 19, 'nidPassport', '0178/56901'),
(227, 19, 'photograph', 'be5dcdc8d5c210b42033997a65291810.jpg'),
(228, 19, 'street', '301,Badda  '),
(229, 19, 'mobile', '01769857562'),
(230, 19, 'city', 'Dhaka'),
(231, 19, 'zip', '1212'),
(232, 19, 'country', 'bd'),
(233, 19, 'companyName', 'Shyamoli Paribahan'),
(234, 19, 'companyStreet', ' nobinagar'),
(235, 19, 'companyLicense', 'BTRS78459654546'),
(236, 19, 'companyCity', 'Dhaka'),
(237, 19, 'companyZip', '1344'),
(238, 19, 'companyCountry', 'bd'),
(239, 19, 'companyLogo', '617dd40f0da61ab699ec482e4de285e1.jpg'),
(240, 20, 'firstName', 'Irene'),
(241, 20, 'lastName', 'Holt'),
(242, 20, 'birthDate', '1982-03-01'),
(243, 20, 'maritalStatus', 'Unmarried'),
(244, 20, 'nidPassport', '57588745584544'),
(245, 20, 'photograph', '29ccf7fa6a6a35a98e995e84a00f9520.jpg'),
(246, 20, 'street', '14/B, Section 6, Mirpur'),
(247, 20, 'mobile', '01768564778'),
(248, 20, 'city', 'Dhaka'),
(249, 20, 'zip', '5068'),
(250, 20, 'country', 'bd'),
(251, 20, 'companyName', 'Ena Transport (Pvt) Ltd'),
(252, 20, 'companyStreet', ' Gazipur City Corporation'),
(253, 20, 'companyLicense', 'BTRS784521965'),
(254, 20, 'companyCity', 'Dhaka'),
(255, 20, 'companyZip', '8521'),
(256, 20, 'companyCountry', 'bd'),
(257, 20, 'companyLogo', 'c6df289aa5bd7bd9e5398c793eb679be.jpg'),
(258, 21, 'firstName', 'Nelson'),
(259, 21, 'lastName', 'Arnold'),
(260, 21, 'birthDate', '1975-04-01'),
(261, 21, 'maritalStatus', 'Married'),
(262, 21, 'nidPassport', '45898745268'),
(263, 21, 'photograph', '7710564f1c6a1da75a4cd8148e5d53f0.jpg'),
(264, 21, 'street', 'Uttar Jatrabari'),
(265, 21, 'mobile', '01905354258'),
(266, 21, 'city', 'Dhaka'),
(267, 21, 'zip', '5541'),
(268, 21, 'country', 'bd'),
(269, 21, 'companyName', 'Nabil Paribahan'),
(270, 21, 'companyStreet', 'Jatrabari-2'),
(271, 21, 'companyLicense', 'BTRS541287456 '),
(272, 21, 'companyCity', 'Dhaka'),
(273, 21, 'companyZip', '8517'),
(274, 21, 'companyCountry', 'bd'),
(275, 21, 'companyLogo', '9d810b0ee74789c8abbf185eb337f8a7.jpg'),
(276, 22, 'firstName', 'Lesa'),
(277, 22, 'lastName', 'Hughes'),
(278, 22, 'birthDate', '1973-03-01'),
(279, 22, 'maritalStatus', 'Married'),
(280, 22, 'nidPassport', '9745564575585'),
(281, 22, 'photograph', '74f30f3f1c273152a2eace303b871849.jpg'),
(282, 22, 'street', ' Mohammadpur '),
(283, 22, 'mobile', '01765894521'),
(284, 22, 'city', 'Dhaka'),
(285, 22, 'zip', '2587'),
(286, 22, 'country', 'bd'),
(287, 22, 'companyName', ' Dipjol Enterprise'),
(288, 22, 'companyStreet', 'North Badda'),
(289, 22, 'companyLicense', 'BTRS97527246263'),
(290, 22, 'companyCity', 'Dhaka'),
(291, 22, 'companyZip', '8541'),
(292, 22, 'companyCountry', 'bd'),
(293, 22, 'companyLogo', '8dec3571232331c7da1d16c0f5eb87d1.jpg'),
(294, 23, 'firstName', 'Edwin'),
(295, 23, 'lastName', 'Gilbert'),
(296, 23, 'birthDate', '1972-04-07'),
(297, 23, 'maritalStatus', 'Married'),
(298, 23, 'nidPassport', '674567554765'),
(299, 23, 'photograph', '3731f9f617ce45f75c8b0c6a60d9b0a0.jpg'),
(300, 23, 'street', 'Motijheel C/A'),
(301, 23, 'mobile', '01905874521'),
(302, 23, 'city', 'Dhaka'),
(303, 23, 'zip', '9632'),
(304, 23, 'country', 'bd'),
(305, 23, 'companyName', 'Green Line Paribahan'),
(306, 23, 'companyStreet', 'Mirpur-11, '),
(307, 23, 'companyLicense', 'BTRS8964645643652'),
(308, 23, 'companyCity', 'Dhaka'),
(309, 23, 'companyZip', '5214'),
(310, 23, 'companyCountry', 'bd'),
(311, 23, 'companyLogo', '9ef508edde443bc51964bc813173e82d.png'),
(312, 24, 'firstName', 'Pamela'),
(313, 24, 'lastName', 'Ruiz'),
(314, 24, 'birthDate', '1970-01-04'),
(315, 24, 'maritalStatus', 'Married'),
(316, 24, 'nidPassport', '646469484754'),
(317, 24, 'photograph', '5282874e86c6d5c32ee024e0af8084ff.jpg'),
(318, 24, 'street', 'Gulshan-1'),
(319, 24, 'mobile', '01785963217'),
(320, 24, 'city', 'Dhaka'),
(321, 24, 'zip', '2196'),
(322, 24, 'country', 'bd'),
(323, 24, 'companyName', ' Saintmartin Paribahan Ltd'),
(324, 24, 'companyStreet', ' Dhanmondi 27,'),
(325, 24, 'companyLicense', 'BTRS57866452121'),
(326, 24, 'companyCity', 'Dhaka'),
(327, 24, 'companyZip', '5417'),
(328, 24, 'companyCountry', 'bd'),
(329, 24, 'companyLogo', '501b978eed1058de7a0e3ce6f7f86282.png'),
(330, 25, 'firstName', 'Thomas'),
(331, 25, 'lastName', 'Collins'),
(332, 25, 'birthDate', '1971-05-09'),
(333, 25, 'maritalStatus', 'Married'),
(334, 25, 'nidPassport', '965874214778'),
(335, 25, 'photograph', '28ce62b797b3c933f89beb7ab556dd8d.jpg'),
(336, 25, 'street', '140 Motijheel C/A,'),
(337, 25, 'mobile', '01869852147'),
(338, 25, 'city', 'Dhaka'),
(339, 25, 'zip', '5129'),
(340, 25, 'country', 'bd'),
(341, 25, 'companyName', 'Tungipara Express'),
(342, 25, 'companyStreet', 'Fakirapool, Motijheel C/A'),
(343, 25, 'companyLicense', 'BTRS565546693'),
(344, 25, 'companyCity', 'Dhaka'),
(345, 25, 'companyZip', '1001'),
(346, 25, 'companyCountry', 'bd'),
(347, 25, 'companyLogo', '701ee0abea333539b800616a1d4878ee.jpg'),
(348, 26, 'firstName', 'Claude'),
(349, 26, 'lastName', 'Oliver'),
(350, 26, 'birthDate', '1982-07-10'),
(351, 26, 'maritalStatus', 'Married'),
(352, 26, 'nidPassport', '54572575245'),
(353, 26, 'photograph', '8b61382f957a2002b8de56d3bda599b4.jpg'),
(354, 26, 'street', ' Agargaon,'),
(355, 26, 'mobile', '01785963214'),
(356, 26, 'city', 'Dhaka'),
(357, 26, 'zip', '1524'),
(358, 26, 'country', 'bd'),
(359, 26, 'companyName', 'S.B Super Deluxe'),
(360, 26, 'companyStreet', ' Rajarbag'),
(361, 26, 'companyLicense', 'BTRS54125897544'),
(362, 26, 'companyCity', 'Dhaka'),
(363, 26, 'companyZip', '2145'),
(364, 26, 'companyCountry', 'bd'),
(365, 26, 'companyLogo', 'b7fc7a4e318a7db22cf27843fb472f61.jpg'),
(366, 27, 'firstName', 'Lee'),
(367, 27, 'lastName', 'Curtis'),
(368, 27, 'birthDate', '1975-01-10'),
(369, 27, 'maritalStatus', 'Married'),
(370, 27, 'nidPassport', '875421368'),
(371, 27, 'photograph', 'b60d371cbc4bde77712ca821336ccd4a.jpg'),
(372, 27, 'street', ' kaliakor'),
(373, 27, 'mobile', '01963652147'),
(374, 27, 'city', 'Dhaka'),
(375, 27, 'zip', '1284'),
(376, 27, 'country', 'bd'),
(377, 27, 'companyName', 'Royal Coach'),
(378, 27, 'companyStreet', '.Merul Badda'),
(379, 27, 'companyLicense', 'BTRS78452136'),
(380, 27, 'companyCity', 'Dhaka'),
(381, 27, 'companyZip', '2154'),
(382, 27, 'companyCountry', 'bd'),
(383, 27, 'companyLogo', '7cbbdc2705d74a43ff3289b21023a45f.jpg'),
(384, 28, 'firstName', 'Camila'),
(385, 28, 'lastName', 'Collins'),
(386, 28, 'birthDate', '1985-02-12'),
(387, 28, 'maritalStatus', 'Married'),
(388, 28, 'nidPassport', '5217794542'),
(389, 28, 'photograph', 'c692a855819bcb986611f41e2dfd4643.jpg'),
(390, 28, 'street', 'Savar'),
(391, 28, 'mobile', '01963251478'),
(392, 28, 'city', 'Dhaka'),
(393, 28, 'zip', ' 1252'),
(394, 28, 'country', 'bd'),
(395, 28, 'companyName', 'Abdullah Paribahan'),
(396, 28, 'companyStreet', 'Kallyanpur'),
(397, 28, 'companyLicense', 'BTRS523698741'),
(398, 28, 'companyCity', 'Dhaka'),
(399, 28, 'companyZip', '1263'),
(400, 28, 'companyCountry', 'bd'),
(401, 28, 'companyLogo', '85f1f3adb1fc8200e9de845a00d50350.png'),
(402, 29, 'firstName', 'Courtney'),
(403, 29, 'lastName', 'Rhodes'),
(404, 29, 'birthDate', '1981-07-05'),
(405, 29, 'maritalStatus', 'Married'),
(406, 29, 'nidPassport', '2154778965'),
(407, 29, 'photograph', '0ac8e833ba3598a71b37745990f6089a.jpg'),
(408, 29, 'street', 'Narayanganj'),
(409, 29, 'mobile', '01785963214'),
(410, 29, 'city', 'Dhaka'),
(411, 29, 'zip', '1231'),
(412, 29, 'country', 'bd'),
(413, 29, 'companyName', 'Shohagh Paribahan'),
(414, 29, 'companyStreet', ' Sonargan'),
(415, 29, 'companyLicense', 'BTRS2154788965'),
(416, 29, 'companyCity', 'Dhaka'),
(417, 29, 'companyZip', '2147'),
(418, 29, 'companyCountry', 'bd'),
(419, 29, 'companyLogo', '38a6cced8635d207ab579e9ae17e10b1.png'),
(420, 30, 'firstName', 'Gladys'),
(421, 30, 'lastName', 'Bailey'),
(422, 30, 'birthDate', '1977-07-05'),
(423, 30, 'maritalStatus', 'Married'),
(424, 30, 'nidPassport', '215487496'),
(425, 30, 'photograph', 'ef365bf3d5993b678e08759c9d55a39a.jpg'),
(426, 30, 'street', '  88/A, Sher Shah Suri Road'),
(427, 30, 'mobile', '01765214784'),
(428, 30, 'city', 'Dhaka'),
(429, 30, 'zip', '1259'),
(430, 30, 'country', 'bd'),
(431, 30, 'companyName', 'Desh travels'),
(432, 30, 'companyStreet', 'Mohakhali C/A'),
(433, 30, 'companyLicense', 'BTRS21547996'),
(434, 30, 'companyCity', 'Dhaka'),
(435, 30, 'companyZip', '2145'),
(436, 30, 'companyCountry', 'bd'),
(437, 30, 'companyLogo', 'bdbe55209a86092c872f38279ac90342.png'),
(438, 31, 'firstName', 'Nicholas'),
(439, 31, 'lastName', 'Flores'),
(440, 31, 'birthDate', '1983-05-09'),
(441, 31, 'maritalStatus', 'Married'),
(442, 31, 'nidPassport', '32465445641'),
(443, 31, 'photograph', '4c98edc71eb3a2dc2baf181b3fac9a0a.jpg'),
(444, 31, 'street', 'Uttar Jatrabari'),
(445, 31, 'mobile', '01723548965'),
(446, 31, 'city', 'Dhaka'),
(447, 31, 'zip', '1234'),
(448, 31, 'country', 'bd'),
(449, 31, 'companyName', 'SP Golden Line'),
(450, 31, 'companyStreet', '102 Motijheel C/A'),
(451, 31, 'companyLicense', 'BTRS16523147'),
(452, 31, 'companyCity', 'Dhaka'),
(453, 31, 'companyZip', '1285'),
(454, 31, 'companyCountry', 'bd'),
(455, 31, 'companyLogo', 'ac364439aa25034ecf5d2ffdf0e2986e.png'),
(456, 32, 'firstName', 'Lori'),
(457, 32, 'lastName', 'Price'),
(458, 32, 'birthDate', '1979-05-08'),
(459, 32, 'maritalStatus', 'Married'),
(460, 32, 'nidPassport', '2159874635'),
(461, 32, 'photograph', '4e3d8ea92f60154f28e7bd215fc6b91a.jpg'),
(462, 32, 'street', 'Road no-5, Block-A,Banasree, Rampura'),
(463, 32, 'mobile', '01523515641'),
(464, 32, 'city', 'Dhaka'),
(465, 32, 'zip', '1216'),
(466, 32, 'country', 'bd'),
(467, 32, 'busCounter', '15'),
(468, 33, 'firstName', 'Bernard'),
(469, 33, 'lastName', 'Taylor'),
(470, 33, 'birthDate', '1980-05-08'),
(471, 33, 'maritalStatus', 'Married'),
(472, 33, 'nidPassport', '36974851203'),
(473, 33, 'photograph', '7eb21e2220b19363493876833b244277.jpg'),
(474, 33, 'street', 'Gareeb-e-Nawaz Avenue, Sector 11 Chawrasta Circle, Uttara Model Town'),
(475, 33, 'mobile', '01965489621'),
(476, 33, 'city', 'Dhaka'),
(477, 33, 'zip', '1230'),
(478, 33, 'country', 'bd'),
(479, 33, 'busCounter', '23'),
(480, 34, 'firstName', 'Daniel'),
(481, 34, 'lastName', 'Hoffman'),
(482, 34, 'birthDate', '1973-01-12'),
(483, 34, 'maritalStatus', 'Married'),
(484, 34, 'nidPassport', '69857123489'),
(485, 34, 'photograph', '1ef74b541595460439cd74de67ba1f05.jpg'),
(486, 34, 'street', 'Sector 4,Uttara Model Town'),
(487, 34, 'mobile', '01896874523'),
(488, 34, 'city', 'Dhaka'),
(489, 34, 'zip', '1230'),
(490, 34, 'country', 'bd'),
(491, 34, 'busCounter', '14'),
(492, 35, 'firstName', 'Seth'),
(493, 35, 'lastName', 'Anderson'),
(494, 35, 'birthDate', '1971-03-08'),
(495, 35, 'maritalStatus', 'Married'),
(496, 35, 'nidPassport', '78532546852'),
(497, 35, 'photograph', '4e7e0090a19a2ee2c5d797d13869edae.jpg'),
(498, 35, 'street', 'Wirelessgate, Mohakhali,Bir Uttam A K Khondokar road,Gulshan'),
(499, 35, 'mobile', '01725963147'),
(500, 35, 'city', 'Dhaka'),
(501, 35, 'zip', '1213'),
(502, 35, 'country', 'bd'),
(503, 35, 'busCounter', '24'),
(504, 36, 'firstName', 'Florence'),
(505, 36, 'lastName', 'Diaz'),
(506, 36, 'birthDate', '1971-06-12'),
(507, 36, 'maritalStatus', 'Married'),
(508, 36, 'nidPassport', '95135784562'),
(509, 36, 'photograph', '199bce69ad777a2ec820da4cc3241ee8.jpg'),
(510, 36, 'street', 'Dhanmondi, Road 4'),
(511, 36, 'mobile', '01325486927'),
(512, 36, 'city', 'Dhaka'),
(513, 36, 'zip', '1209'),
(514, 36, 'country', 'bd'),
(515, 36, 'busCounter', '32'),
(516, 37, 'firstName', 'Jeffery'),
(517, 37, 'lastName', 'Walters'),
(518, 37, 'birthDate', '1974-02-12'),
(519, 37, 'maritalStatus', 'Married'),
(520, 37, 'nidPassport', '96842574125'),
(521, 37, 'photograph', '24b419703b09f880cc9c0270ffc5f49f.jpg'),
(522, 37, 'street', '9/A Kola bagan,Boshir Uddin Road,Dhanmondi 32'),
(523, 37, 'mobile', '01745785325'),
(524, 37, 'city', 'Dhaka'),
(525, 37, 'zip', '1203'),
(526, 37, 'country', 'bd'),
(527, 37, 'busCounter', '35'),
(528, 38, 'firstName', 'Marian'),
(529, 38, 'lastName', 'Nguyen'),
(530, 38, 'birthDate', '1984-05-07'),
(531, 38, 'maritalStatus', 'Married'),
(532, 38, 'nidPassport', '954236574125'),
(533, 38, 'photograph', '5951402edfb6c5383127b4516b1fd202.jpg'),
(534, 38, 'street', 'Road # 7A,Dhanmondi'),
(535, 38, 'mobile', '01758967143'),
(536, 38, 'city', 'Dhaka'),
(537, 38, 'zip', '1209'),
(538, 38, 'country', 'bd'),
(539, 38, 'busCounter', '36'),
(540, 39, 'firstName', 'Adrian'),
(541, 39, 'lastName', 'Ortiz'),
(542, 39, 'birthDate', '1974-04-02'),
(543, 39, 'maritalStatus', 'Married'),
(544, 39, 'nidPassport', '657432598712'),
(545, 39, 'photograph', '52fdcdd5c452f49b83f8f8ed7de33f7c.jpg'),
(546, 39, 'street', 'Road # 3A,Dhanmondi'),
(547, 39, 'mobile', '01785269247'),
(548, 39, 'city', 'Dhaka'),
(549, 39, 'zip', '1209'),
(550, 39, 'country', 'bd'),
(551, 39, 'busCounter', '37'),
(552, 40, 'firstName', 'Alan'),
(553, 40, 'lastName', 'Mccoy'),
(554, 40, 'birthDate', '1984-04-12'),
(555, 40, 'maritalStatus', 'Married'),
(556, 40, 'nidPassport', '874596523145'),
(557, 40, 'photograph', '2bbaeaad15a5588bec0e9ba7d5093aca.jpg'),
(558, 40, 'street', 'Road # 3/A,Dhanmondi'),
(559, 40, 'mobile', '01787951752'),
(560, 40, 'city', 'Dhaka'),
(561, 40, 'zip', '1209'),
(562, 40, 'country', 'bd'),
(563, 40, 'busCounter', '38'),
(564, 41, 'firstName', 'Darrell'),
(565, 41, 'lastName', 'Richards'),
(566, 41, 'birthDate', '1981-04-02'),
(567, 41, 'maritalStatus', 'Married'),
(568, 41, 'nidPassport', '896541235789'),
(569, 41, 'photograph', 'a69f61b2ad12f527bfb21a6dc5b9b8cc.jpg'),
(570, 41, 'street', '4/A west Vashanntek'),
(571, 41, 'mobile', '01782697136'),
(572, 41, 'city', 'Dhaka'),
(573, 41, 'zip', '1206'),
(574, 41, 'country', 'bd'),
(575, 41, 'busCounter', '39'),
(576, 42, 'firstName', 'Jill'),
(577, 42, 'lastName', 'Lambert'),
(578, 42, 'birthDate', '1981-05-03'),
(579, 42, 'maritalStatus', 'Married'),
(580, 42, 'nidPassport', '485236974521'),
(581, 42, 'photograph', 'd3d046c8e98590541aa1ac59dddda3c7.jpg'),
(582, 42, 'street', '4/A Ring road, Shyamoli'),
(583, 42, 'mobile', '01789654321'),
(584, 42, 'city', 'Dhaka'),
(585, 42, 'zip', '1207'),
(586, 42, 'country', 'bd'),
(587, 42, 'busCounter', '40'),
(588, 43, 'firstName', 'Timmothy'),
(589, 43, 'lastName', 'Bryant'),
(590, 43, 'birthDate', '1983-02-10'),
(591, 43, 'maritalStatus', 'Married'),
(592, 43, 'nidPassport', '852456917539'),
(593, 43, 'photograph', '6d21172f3f7b409a8b767894378831c9.jpg'),
(594, 43, 'street', 'Road # 2,Dhanmondi'),
(595, 43, 'mobile', '01748654259'),
(596, 43, 'city', 'Dhaka'),
(597, 43, 'zip', '1209'),
(598, 43, 'country', 'bd'),
(599, 43, 'busCounter', '42'),
(600, 44, 'firstName', 'Jack'),
(601, 44, 'lastName', 'Tucker'),
(602, 44, 'birthDate', '1985-07-06'),
(603, 44, 'maritalStatus', 'Married'),
(604, 44, 'nidPassport', '852456974632'),
(605, 44, 'photograph', '9272e8e26ddc638a2af4e2a4d0e672f1.jpg'),
(606, 44, 'street', 'Road # 5/A,Dhanmondi'),
(607, 44, 'mobile', '01625789654'),
(608, 44, 'city', 'Dhaka'),
(609, 44, 'zip', '1209'),
(610, 44, 'country', 'bd'),
(611, 44, 'busCounter', '43'),
(612, 45, 'firstName', 'Mia'),
(613, 45, 'lastName', 'Palmer'),
(614, 45, 'birthDate', '1984-07-03'),
(615, 45, 'maritalStatus', 'Married'),
(616, 45, 'nidPassport', '7862145987523'),
(617, 45, 'photograph', '62114c045bd4aed1cec9941d645c98c1.jpg'),
(618, 45, 'street', 'Road #5/A,Elephent Road'),
(619, 45, 'mobile', '01765852159'),
(620, 45, 'city', 'Dhaka'),
(621, 45, 'zip', '1205'),
(622, 45, 'country', 'bd'),
(623, 45, 'busCounter', '44'),
(624, 46, 'firstName', 'Daryl'),
(625, 46, 'lastName', 'Campbell'),
(626, 46, 'birthDate', '1978-01-06'),
(627, 46, 'maritalStatus', 'Married'),
(628, 46, 'nidPassport', '859657451235'),
(629, 46, 'photograph', '39c38c1b9d54833f35aa7b6273b7dd04.jpg'),
(630, 46, 'street', '73-Dilkusha,Motijheel'),
(631, 46, 'mobile', '01758951753'),
(632, 46, 'city', 'Dhaka'),
(633, 46, 'zip', '1000'),
(634, 46, 'country', 'bd'),
(635, 46, 'busCounter', '3'),
(636, 47, 'firstName', 'Justin'),
(637, 47, 'lastName', 'Stewart'),
(638, 47, 'birthDate', '1977-01-05'),
(639, 47, 'maritalStatus', 'Married'),
(640, 47, 'nidPassport', '9857463251458'),
(641, 47, 'photograph', 'af924caa39505bbf00e6e7c6861256ae.jpg'),
(642, 47, 'street', 'Road #8/A,West Medical College Gate'),
(643, 47, 'mobile', '01786325745'),
(644, 47, 'city', 'Dhaka'),
(645, 47, 'zip', '1711'),
(646, 47, 'country', 'bd'),
(647, 47, 'busCounter', '16'),
(648, 48, 'firstName', 'Maureen'),
(649, 48, 'lastName', 'Brooks'),
(650, 48, 'birthDate', '1973-03-10'),
(651, 48, 'maritalStatus', 'Married'),
(652, 48, 'nidPassport', '758965412578'),
(653, 48, 'photograph', '638516765d72fd61446c90d4d1b98e45.jpg'),
(654, 48, 'street', 'Muradpur Madrasha Road,Zero Point,Jurain'),
(655, 48, 'mobile', '01788753695'),
(656, 48, 'city', 'Dhaka'),
(657, 48, 'zip', '1204'),
(658, 48, 'country', 'bd'),
(659, 48, 'busCounter', '25'),
(660, 49, 'firstName', 'Beverley'),
(661, 49, 'lastName', 'Campbell'),
(662, 49, 'birthDate', '1974-05-12'),
(663, 49, 'maritalStatus', 'Married'),
(664, 49, 'nidPassport', '258796548215'),
(665, 49, 'photograph', '2e57414f12487527d55aa6bdc53343e8.jpg'),
(666, 49, 'street', 'Road #2/A,Rampura TV ROAD, East Rampura'),
(667, 49, 'mobile', '01587149367'),
(668, 49, 'city', 'Dhaka'),
(669, 49, 'zip', '1219'),
(670, 49, 'country', 'bd'),
(671, 49, 'busCounter', '4'),
(672, 50, 'firstName', 'Monica'),
(673, 50, 'lastName', 'Ross'),
(674, 50, 'birthDate', '1977-06-08'),
(675, 50, 'maritalStatus', 'Unmarried'),
(676, 50, 'nidPassport', '778965842598'),
(677, 50, 'photograph', 'e6364d10b7886003887525e2030a81a8.jpg'),
(678, 50, 'street', 'Road #6/A,Panchdona,Dhaka'),
(679, 50, 'mobile', '01888957153'),
(680, 50, 'city', 'Dhaka'),
(681, 50, 'zip', '1603'),
(682, 50, 'country', 'bd'),
(683, 50, 'busCounter', '17'),
(684, 51, 'firstName', 'Theresa'),
(685, 51, 'lastName', 'Murphy'),
(686, 51, 'birthDate', '1972-04-05'),
(687, 51, 'maritalStatus', 'Married'),
(688, 51, 'nidPassport', '978658742535'),
(689, 51, 'photograph', 'c3aa575c230a3e6942e64e91e5276d97.jpg'),
(690, 51, 'street', 'Road #4/A,Mynartek,Uttarakhan'),
(691, 51, 'mobile', '01799543651'),
(692, 51, 'city', 'Dhaka'),
(693, 51, 'zip', '1212'),
(694, 51, 'country', 'bd'),
(695, 51, 'busCounter', '26'),
(696, 52, 'firstName', 'Lance'),
(697, 52, 'lastName', 'Baker'),
(698, 52, 'birthDate', '1985-02-01'),
(699, 52, 'maritalStatus', 'Unmarried'),
(700, 52, 'nidPassport', '789684132578'),
(701, 52, 'photograph', 'c78e2f9ea2ede497a45265378e321abe.jpg'),
(702, 52, 'street', 'Road #6/A,Goalondomor,Rajbari'),
(703, 52, 'mobile', '01856943167'),
(704, 52, 'city', 'Dhaka'),
(705, 52, 'zip', '7711'),
(706, 52, 'country', 'bd'),
(707, 52, 'busCounter', '5'),
(708, 53, 'firstName', 'Mae'),
(709, 53, 'lastName', 'Carlson'),
(710, 53, 'birthDate', '1978-03-05'),
(711, 53, 'maritalStatus', 'Married'),
(712, 53, 'nidPassport', '753698514725'),
(713, 53, 'photograph', '8b385fe971bd1a97229c3a6bba3f06ce.jpg'),
(714, 53, 'street', '30/1 East Hajipara,Rampura'),
(715, 53, 'mobile', '01859759153'),
(716, 53, 'city', 'Dhaka'),
(717, 53, 'zip', '1219'),
(718, 53, 'country', 'bd'),
(719, 53, 'busCounter', '21'),
(720, 54, 'firstName', 'Adrian'),
(721, 54, 'lastName', 'Flores'),
(722, 54, 'birthDate', '1971-04-11'),
(723, 54, 'maritalStatus', 'Married'),
(724, 54, 'nidPassport', '589754832425'),
(725, 54, 'photograph', '8df0f93e1040f3a52699c4f8ddcd2a04.jpg'),
(726, 54, 'street', 'Nikunja 2,Joyar Sahara,Khilkhet'),
(727, 54, 'mobile', '01755248268'),
(728, 54, 'city', 'Dhaka'),
(729, 54, 'zip', '1229'),
(730, 54, 'country', 'bd'),
(731, 54, 'busCounter', '27'),
(732, 55, 'firstName', 'Robert'),
(733, 55, 'lastName', 'Alexander'),
(734, 55, 'birthDate', '1983-01-11'),
(735, 55, 'maritalStatus', 'Married'),
(736, 55, 'nidPassport', '852459732468'),
(737, 55, 'photograph', '313fa805cf2eca54f50ad5ea0f8ac361.jpg'),
(738, 55, 'street', '8/4-A Topkhana Road, Segun Bagischa'),
(739, 55, 'mobile', '01852486759'),
(740, 55, 'city', 'Dhaka'),
(741, 55, 'zip', '1000'),
(742, 55, 'country', 'bd'),
(743, 55, 'busCounter', '6'),
(744, 56, 'firstName', 'Jason'),
(745, 56, 'lastName', 'Shaw'),
(746, 56, 'birthDate', '1970-05-08'),
(747, 56, 'maritalStatus', 'Married'),
(748, 56, 'nidPassport', '759842687139'),
(749, 56, 'photograph', 'eeffa26ba353175b9a16e57efeddb577.jpg'),
(750, 56, 'street', 'Afroza Begum Road,Block - G,Boshundhara R/A'),
(751, 56, 'mobile', '01758963741'),
(752, 56, 'city', 'Dhaka'),
(753, 56, 'zip', '1229'),
(754, 56, 'country', 'bd'),
(755, 56, 'busCounter', '20'),
(756, 57, 'firstName', 'Alvin'),
(757, 57, 'lastName', 'Black'),
(758, 57, 'birthDate', '1977-02-02'),
(759, 57, 'maritalStatus', 'Married'),
(760, 57, 'nidPassport', '595741535148'),
(761, 57, 'photograph', '7ef8737522537d46e559ff23d2b0eab2.jpg'),
(762, 57, 'street', 'Dhanmondi,Kalabagan 1st lane'),
(763, 57, 'mobile', '01585796715'),
(764, 57, 'city', 'Dhaka'),
(765, 57, 'zip', '1209'),
(766, 57, 'country', 'bd'),
(767, 57, 'busCounter', '28'),
(768, 58, 'firstName', 'June'),
(769, 58, 'lastName', 'Hunt'),
(770, 58, 'birthDate', '1973-02-02'),
(771, 58, 'maritalStatus', 'Married'),
(772, 58, 'nidPassport', '257843124'),
(773, 58, 'photograph', '7885dbb521aef3292f6300ac873bc5b1.jpg'),
(774, 58, 'street', 'Gulshan 1, '),
(775, 58, 'mobile', '01796047674'),
(776, 58, 'city', 'Dhaka'),
(777, 58, 'zip', '1204'),
(778, 58, 'country', 'bd'),
(779, 58, 'busCounter', '7'),
(780, 59, 'firstName', 'Marie'),
(781, 59, 'lastName', 'Arnold'),
(782, 59, 'birthDate', '1977-07-04'),
(783, 59, 'maritalStatus', 'Married'),
(784, 59, 'nidPassport', '554985472'),
(785, 59, 'photograph', '75196c5416b37d16fef3f5d8c135717d.jpg'),
(786, 59, 'street', 'Boshundhara '),
(787, 59, 'mobile', '01797722148'),
(788, 59, 'city', 'Dhaka'),
(789, 59, 'zip', '1285'),
(790, 59, 'country', 'bd'),
(791, 59, 'busCounter', '8');

-- --------------------------------------------------------

--
-- Table structure for table `webtech_users`
--

CREATE TABLE `webtech_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'm',
  `role` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `validate` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `webtech_users`
--

INSERT INTO `webtech_users` (`id`, `email`, `password`, `gender`, `role`, `validate`, `registered`) VALUES
(1, 'tabid@gmail.com', '$2y$10$ZiOL2X4xSJac3SQL1abRruysJxjytHWzD6iuUkFuQgfEDmC.dTGei', 'm', '4', '1', '2019-07-12 17:57:03'),
(4, 'manikexpress@system.web', '$2y$10$uwBXAroHHQH4vdwLJ12kr.w3iEF.3oYU.L3qBA8Yi3jk12LPuMLnS', 'm', '2', '1', '2019-07-15 00:39:27'),
(5, 'supportstaff1@system.web', '$2y$10$My9juPk2.Up3kwu6ZWVueO3sHMBV.prOm9PfAP0l1QNhUNCCorHM6', 'f', '3', '1', '2019-08-18 22:18:58'),
(6, 'supportstaff2@system.web', '$2y$10$WMUxKoiKfkrWp4SuEQCdtOKLUiwVziQcUwyuArGMV1pSgy2JZ.TP6', 'm', '3', '1', '2019-08-18 22:44:44'),
(7, 'supportstaff3@system.web', '$2y$10$Dgo.DIlCABRMEuPMgWN4DesI3JhfeCadGewBYGLHSarmwe8EVwpqW', 'm', '3', '1', '2019-08-18 22:55:29'),
(8, 'supportstaff4@system.web', '$2y$10$RfDK/YylTiHVSPFwShoOPuLsn4pfZlen2WQT03saHjkCu1gjVvf9K', 'f', '3', '1', '2019-08-19 03:02:37'),
(9, 'supportstaff5@system.web', '$2y$10$6KldgRKsmj7WuAwm66F6seLndsWcOZFoT7H/zxNzNQn5.rRM2XSOO', 'm', '3', '1', '2019-08-19 03:07:04'),
(10, 'supportstaff6@system.web', '$2y$10$kYhhz.54ou3GU4C6wuIVWOGTVWww.zuCBB6AQ877w5CrNLV8Gd7a.', 'm', '3', '1', '2019-08-19 03:12:13'),
(11, 'supportstaff7@system.web', '$2y$10$lYYsQPw7GOCKiUAh51ql5Owkm2cJIKjPTPGeEhu7xV0NjfWySvnpy', 'f', '3', '1', '2019-08-19 03:21:17'),
(12, 'supportstaff8@syatem.web', '$2y$10$tYLi4ahGtgoTFCkXErXBgeb084i3/D6/kbLr6VyeXquSZ740bQ16i', 'm', '3', '1', '2019-08-19 03:40:49'),
(13, 'srtravels1@system.web', '$2y$10$3z5GRYk2R7p1VzQ/Bx.Nbem9xhjD49MSR0S89vAnkpNsKMSwwtWaW', 'm', '2', '1', '2019-08-19 04:42:20'),
(14, 'counterstaff1@manikexpress.web', '$2y$10$Uid2kavBkBMY.3.NywlCsuIbLjbACqOvQ/MhGssAjJreGIFiE767W', 'm', '1', '1', '2019-08-19 18:45:44'),
(15, 'counterstaff1@srtravels.web', '$2y$10$H.J3FponTMM4epvFGgTJVe46gGgU0I9XkH1MwsBGVjjxRjo8NamN6', 'm', '1', '1', '2019-08-19 19:04:33'),
(16, 'hanifenterprise@system.web', '$2y$10$V1TOnv2Bk7PyUZ3E7B3Jd.qEFJZa9fV/kyhlsY0L.AAoyhpg/RD/S', 'm', '2', '1', '2019-08-19 22:40:14'),
(17, 'agomonyexpress@system.web', '$2y$10$ToeCKG7FCIR6za5XxZcC4.NPYGrvYEiwTE57dYfLl9c7mftd3AIxi', 'm', '2', '1', '2019-08-19 22:58:42'),
(18, 'akotatransport@system.web', '$2y$10$3B/tvxlbXqaQNYUKkILLquma2TsE9xXTNJguwKuPbW8pHYuu6CGcG', 'm', '2', '1', '2019-08-19 23:13:59'),
(19, 'shyamoliparibahan@system.web', '$2y$10$unlYMwm3NHismZgc6DvI4O8Hc1JP9vIqJidFEc2Ply6x3uL3y2gGG', 'm', '2', '1', '2019-08-19 23:27:30'),
(20, 'enatransportpvtltd@system.web', '$2y$10$VizUdLRlRvSbDuJl9CtUPOVHR1G4r4XLZrynUqNRqMM2dw4RfnMVy', 'f', '2', '1', '2019-08-19 23:40:30'),
(21, 'nabilparibahan@system.web', '$2y$10$/omI4X2VN58GGnd8nplCquRlHLz3NxIAUj/Ary0injyGNB/GGT/n6', 'm', '2', '1', '2019-08-19 23:59:09'),
(22, 'dipjolenterprise@system.web', '$2y$10$bWWGuh6iimOwN1r6fCkc3OQywbV/2RN2Ok9gHspVzijxdB/0ATSEC', 'f', '2', '1', '2019-08-20 00:11:53'),
(23, 'greenlineparibahan@system.web', '$2y$10$kz9/R730LjDSUlDXgs1GDuIFVK/A0vKVshx/1DLILXD5gylwLJRo6', 'm', '2', '1', '2019-08-20 00:24:20'),
(24, 'saintmartinparibahanltd@system.web', '$2y$10$DIaNWSVhZsUahOfJgzCofehHudHEw2v092YXwKdd93Pn6awqxBOmS', 'f', '2', '1', '2019-08-20 00:38:43'),
(25, 'tungiparaexpress@system.web', '$2y$10$8UKZGUCcFvnY6BBcV96CRenBT/.L0gppoOTFGn5GY.oD/l7YYbZIe', 'm', '2', '1', '2019-08-20 00:49:33'),
(26, 'sbsuperdeluxe@system.web', '$2y$10$aoX2niKC56Z9lk4eeD1XFO7iFMQbNqNKxgaAl8OxQ.DgnmSonmkXC', 'm', '2', '1', '2019-08-20 12:37:31'),
(27, 'royalcoach@system.web', '$2y$10$NDXl8Pxo/xxZWubnaIPhMOxdR7Ub6AJRkDDmPNvvhVheqxgRY0DHq', 'm', '2', '1', '2019-08-20 12:44:55'),
(28, 'abdullahparibahan@system.web', '$2y$10$xsQXEa55ch1gvJVpJmAB5OP068phjT.sbxBwvwtQMi37eR5veC3Ji', 'f', '2', '1', '2019-08-20 13:03:32'),
(29, 'shohaghparibahan@system.web', '$2y$10$.ifncBc1ITOVMshgtpr.7uGe5LF2G.0UIpdUf9CD6HCowYupGSvEC', 'f', '2', '1', '2019-08-20 13:11:29'),
(30, 'deshtravels@system.web', '$2y$10$u4LkoKd9ybJNXb5LSyUpN.2.HZAitaQhj0zHiuOiWqGtSXgTdvQn6', 'f', '2', '1', '2019-08-20 13:24:32'),
(31, 'spgoldenline@System.web', '$2y$10$oOwBqJWEst3e5xwi74VDfe8WIKc5gGI3EVbxF4gEnszLCH1R3fJ1q', 'm', '2', '1', '2019-08-20 13:34:37'),
(32, 'counterstaff2@manikexpress.web', '$2y$10$PIrJLSNUgNIreaKras9Th.p9X555kBaCABPVh.Q1PvteuYL4E0wz2', 'f', '1', '1', '2019-08-20 19:37:18'),
(33, 'counterstaff3@manikexpress.web', '$2y$10$qjzzwLFHF5jqAEGHZsTz1e00qSVvHsyk4KdSG5McFcXIbocVF5iwi', 'm', '1', '1', '2019-08-20 19:43:20'),
(34, 'counterstaff2@srtravels.web', '$2y$10$YOmKuGxK1af1lhrtShi9Wu2rUaW7UMYko8LQ1pkT5yjOqVOqfgUHa', 'm', '1', '1', '2019-08-20 19:47:46'),
(35, 'counterstaff3@srtravels.web', '$2y$10$ofhwVC/eolxYh7QDsPoDZuF7.TvifS.oUvBohI.fHypnQyCKQOdue', 'm', '1', '1', '2019-08-20 19:51:44'),
(36, 'counterstaff4@srtravels.web', '$2y$10$fxXJ.5Nl6qKeNSL16T80Zexnt8zCjS9u/4k50OrvqzUBrpf2Jdkce', 'f', '1', '1', '2019-08-20 19:55:06'),
(37, 'counterstaff5@srtravels.web', '$2y$10$GDwql1K9knOKtnIkr/WGS.03eQvp11Za0GrlEz1DewJi7mUONBSBW', 'm', '1', '1', '2019-08-20 20:03:27'),
(38, 'counterstaff6@srtravels.web', '$2y$10$qecKcpGmnVkdUZF3sTn9N.MlITQl6ioyx311BzclQ5v04K9jf.h8O', 'f', '1', '1', '2019-08-20 20:06:29'),
(39, 'counterstaff7@srtravels.web', '$2y$10$Vt9zID14nZRji5UYWnp/beiNvvg/7FKBFZljLBIuALans7w5qB.0W', 'm', '1', '1', '2019-08-20 20:09:56'),
(40, 'counterstaff8@srtravels.web', '$2y$10$Ubhe32R1b9XrPt8OcjVwvecdRPZKtML5bnALAVdxZfqUTr.KtD/9u', 'm', '1', '1', '2019-08-20 20:17:43'),
(41, 'counterstaff9@srtravels.web', '$2y$10$fbd9ifSuRA/q4I7/OT4aFO.AxeU5Q9ch6brE9VXQCfxjAlmNk41NK', 'm', '1', '1', '2019-08-20 20:21:03'),
(42, 'counterstaff10@srtravels.web', '$2y$10$gyUWl2IysmXPPC0F4qItLOlmMHXAoU9G7.Z5vOPXixOTrK5OKM9dC', 'm', '1', '1', '2019-08-20 20:24:17'),
(43, 'counterstaff11@srtravels.web', '$2y$10$Y/5VCuJI1anh2S5kyITecuaX6gJfzcTdAWxIsn1Rcw7zi1MmU66pS', 'm', '1', '1', '2019-08-20 20:26:48'),
(44, 'counterstaff12@srtravels.web', '$2y$10$SFGn0Q1lU1SvLUMrtO5sveQqFLC/hTT3YpsUwwbjTsbmgJ/HEmO2S', 'm', '1', '1', '2019-08-20 20:35:12'),
(45, 'counterstaff13@srtravels.web', '$2y$10$HJtMYUjwzioZZ1kQrPYUiu0SftLcI4d1x/uxXOgtOCb.S66qDrbEy', 'm', '1', '1', '2019-08-20 20:43:49'),
(46, 'counterstaff1@hanifexpress.web', '$2y$10$eiFn5IZIuAXrly/q.AtML.klFn2yj.Sr7UQpPBEdV54bJ7vGCdojy', 'm', '1', '1', '2019-08-20 20:49:11'),
(47, 'counterstaff2@hanifexpress.web', '$2y$10$M.SsEL4eKEkrnoAdeD3ehuxWG1qhj.xvgiEMss.QJYEo5j5aDDMZe', 'm', '1', '1', '2019-08-20 20:55:37'),
(48, 'counterstaff3@hanifexpress.web', '$2y$10$y8XZqisczR1qAC.3On3CH.3HSbgQ6PuvZlhrwnOVYYRbPUsGEk9.a', 'f', '1', '1', '2019-08-20 20:59:45'),
(49, 'counterstaff1@agomonyexpress.web', '$2y$10$/M59qJTCp.WVFdiRIgBWJufLkVFJlG/AEJBwa6cORMHd4IpOzxS9e', 'f', '1', '1', '2019-08-20 21:03:08'),
(50, 'counterstaff2@agomonyexpress.web', '$2y$10$hImWyMuwmi.vpBlsv/G9wO0yf/uwKwvn9zB4rp55j0FXyR03g9Vi6', 'f', '1', '1', '2019-08-20 21:06:10'),
(51, 'counterstaff3@agomonyexpress.web', '$2y$10$BMnaw0LDaz4NgW9y.KdMCedmKN.f4gSj.vhZZPfHTU4X7CA2E7Oay', 'f', '1', '1', '2019-08-20 21:10:38'),
(52, 'counterstaff1@akota.web', '$2y$10$0hekwpwZaGNKDR0AG8.EvexokfUWywhSb26X0aIw1eNy/eJ2m/Wyu', 'm', '1', '1', '2019-08-20 21:14:27'),
(53, 'counterstaff2@akota.web', '$2y$10$PD7JiAEhbGt2CVQgedV9HOd38Qn/FYlvgwTloCm/7KwBKMvRAPTkS', 'f', '1', '1', '2019-08-20 21:17:39'),
(54, 'counterstaff3@akota.web', '$2y$10$ZeXTd7xvVQHuqa/NVxgxH.hPR2IWM0iOfYASbLvTl4H9D1OO5kt46', 'm', '1', '1', '2019-08-20 21:42:20'),
(55, 'counterstaff1@shyamoli.web', '$2y$10$1g2tQGKWUIs5kwVtALjBfOLjerpJcIiZTx9HrieRja47m35NEc.I2', 'm', '1', '1', '2019-08-20 21:46:41'),
(56, 'counterstaff2@shyamoli.web', '$2y$10$DUH1tNFzApNtpheJmimUdew.7buH/IXOPo53TGrgjmZ1tj.C/O42q', 'm', '1', '1', '2019-08-20 21:49:59'),
(57, 'counterstaff3@shyamoli.web', '$2y$10$syRtWF4AF92YWIPZJMX8IeUkhJAzm/oZsJRbATNFSVIrep6ZTI.qC', 'm', '1', '1', '2019-08-20 21:53:37'),
(58, 'counterstaff1@ena.web', '$2y$10$6Ar6A8iu6jE4.Z2Zic4WJ.aFw4quh4Zn9lZAY9DkLQxO6XxWMMysK', 'f', '1', '1', '2019-08-20 22:08:31'),
(59, 'counterstaff1@nabilparibahan.web', '$2y$10$HyuFbjZI.QoGDRW1MJ51Y.0I/zOh6rucnzpLRpdUE3d.suZkPrWpG', 'f', '1', '1', '2019-08-20 22:25:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `webtech_authsession`
--
ALTER TABLE `webtech_authsession`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `webtech_bookedseats`
--
ALTER TABLE `webtech_bookedseats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking` (`booking`);

--
-- Indexes for table `webtech_bookings`
--
ALTER TABLE `webtech_bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule` (`schedule`);

--
-- Indexes for table `webtech_buscounters`
--
ALTER TABLE `webtech_buscounters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_buscounter` (`manager`);

--
-- Indexes for table `webtech_buses`
--
ALTER TABLE `webtech_buses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_buses` (`manager`);

--
-- Indexes for table `webtech_discount`
--
ALTER TABLE `webtech_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webtech_paymentmethod`
--
ALTER TABLE `webtech_paymentmethod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webtech_schedule`
--
ALTER TABLE `webtech_schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `busid` (`busid`),
  ADD KEY `boarding` (`boarding`);

--
-- Indexes for table `webtech_settings`
--
ALTER TABLE `webtech_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `webtech_supportticket`
--
ALTER TABLE `webtech_supportticket`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assinged` (`assinged`);

--
-- Indexes for table `webtech_ticketreplay`
--
ALTER TABLE `webtech_ticketreplay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supportid` (`supportid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `webtech_transactions`
--
ALTER TABLE `webtech_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `method` (`method`);

--
-- Indexes for table `webtech_userdetails`
--
ALTER TABLE `webtech_userdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `webtech_users`
--
ALTER TABLE `webtech_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `webtech_authsession`
--
ALTER TABLE `webtech_authsession`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `webtech_bookedseats`
--
ALTER TABLE `webtech_bookedseats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `webtech_bookings`
--
ALTER TABLE `webtech_bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webtech_buscounters`
--
ALTER TABLE `webtech_buscounters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `webtech_buses`
--
ALTER TABLE `webtech_buses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `webtech_discount`
--
ALTER TABLE `webtech_discount`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `webtech_paymentmethod`
--
ALTER TABLE `webtech_paymentmethod`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `webtech_schedule`
--
ALTER TABLE `webtech_schedule`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `webtech_settings`
--
ALTER TABLE `webtech_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webtech_supportticket`
--
ALTER TABLE `webtech_supportticket`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webtech_ticketreplay`
--
ALTER TABLE `webtech_ticketreplay`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webtech_transactions`
--
ALTER TABLE `webtech_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webtech_userdetails`
--
ALTER TABLE `webtech_userdetails`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=792;

--
-- AUTO_INCREMENT for table `webtech_users`
--
ALTER TABLE `webtech_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `webtech_authsession`
--
ALTER TABLE `webtech_authsession`
  ADD CONSTRAINT `fk_users_authsession` FOREIGN KEY (`userid`) REFERENCES `webtech_users` (`id`);

--
-- Constraints for table `webtech_bookedseats`
--
ALTER TABLE `webtech_bookedseats`
  ADD CONSTRAINT `fk_bookings_bookedseats` FOREIGN KEY (`booking`) REFERENCES `webtech_bookings` (`id`);

--
-- Constraints for table `webtech_bookings`
--
ALTER TABLE `webtech_bookings`
  ADD CONSTRAINT `fk_schedule_bookings` FOREIGN KEY (`schedule`) REFERENCES `webtech_schedule` (`id`);

--
-- Constraints for table `webtech_buscounters`
--
ALTER TABLE `webtech_buscounters`
  ADD CONSTRAINT `fk_users _ buscounters` FOREIGN KEY (`manager`) REFERENCES `webtech_users` (`id`);

--
-- Constraints for table `webtech_buses`
--
ALTER TABLE `webtech_buses`
  ADD CONSTRAINT `fk_users _ buses` FOREIGN KEY (`manager`) REFERENCES `webtech_users` (`id`);

--
-- Constraints for table `webtech_schedule`
--
ALTER TABLE `webtech_schedule`
  ADD CONSTRAINT `fk_buscounters_schedule` FOREIGN KEY (`boarding`) REFERENCES `webtech_buscounters` (`id`),
  ADD CONSTRAINT `fk_buses_schedule` FOREIGN KEY (`busid`) REFERENCES `webtech_buses` (`id`);

--
-- Constraints for table `webtech_supportticket`
--
ALTER TABLE `webtech_supportticket`
  ADD CONSTRAINT `fk_users_supportticket` FOREIGN KEY (`assinged`) REFERENCES `webtech_users` (`id`);

--
-- Constraints for table `webtech_ticketreplay`
--
ALTER TABLE `webtech_ticketreplay`
  ADD CONSTRAINT `fk_supportticket_ticketreplay` FOREIGN KEY (`supportid`) REFERENCES `webtech_supportticket` (`id`),
  ADD CONSTRAINT `fk_users_ticketreplay` FOREIGN KEY (`userid`) REFERENCES `webtech_users` (`id`);

--
-- Constraints for table `webtech_transactions`
--
ALTER TABLE `webtech_transactions`
  ADD CONSTRAINT `fk_paymentmethod_transactions` FOREIGN KEY (`method`) REFERENCES `webtech_paymentmethod` (`id`);

--
-- Constraints for table `webtech_userdetails`
--
ALTER TABLE `webtech_userdetails`
  ADD CONSTRAINT `fk_users_userdetails` FOREIGN KEY (`userid`) REFERENCES `webtech_users` (`id`);
--
-- Database: `webtech`
--
CREATE DATABASE IF NOT EXISTS `webtech` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `webtech`;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(255) NOT NULL,
  `contact` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `contact`, `username`, `password`) VALUES
('Tabid', 1586989, 'tabid', '5656'),
('Tabid', 1586989, 'tabid', '5656'),
('abbas', 1589644556, 'abbas', '1212');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
