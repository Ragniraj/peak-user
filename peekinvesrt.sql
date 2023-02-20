-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2023 at 10:22 PM
-- Server version: 5.7.40-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peekinvesrt`
--

-- --------------------------------------------------------

--
-- Table structure for table `actionwithdrow`
--

CREATE TABLE `actionwithdrow` (
  `id` int(224) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `actionwithdrow`
--

INSERT INTO `actionwithdrow` (`id`, `action`) VALUES
(1, 'unblock');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'peakinvest', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `id` int(225) NOT NULL,
  `user_id` int(225) NOT NULL,
  `total_amount` int(100) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`id`, `user_id`, `total_amount`, `time`) VALUES
(4, 26, 30, '0000-00-00'),
(5, 23, 20, '0000-00-00'),
(6, 22, 50, '0000-00-00'),
(7, 27, 20, '0000-00-00'),
(8, 22, 40, '0000-00-00'),
(9, 28, 50, '0000-00-00'),
(10, 28, 20, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` int(225) NOT NULL,
  `user_id` int(225) NOT NULL,
  `bonus_amount` decimal(65,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`id`, `user_id`, `bonus_amount`) VALUES
(360, 25, '1'),
(361, 28, '2'),
(362, 25, '1'),
(363, 28, '2');

-- --------------------------------------------------------

--
-- Table structure for table `deposite`
--

CREATE TABLE `deposite` (
  `id` int(225) NOT NULL,
  `user_id` int(200) NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `payment_status` varchar(200) NOT NULL,
  `pay_address` varchar(200) NOT NULL,
  `price_amount` varchar(200) NOT NULL,
  `price_currency` varchar(200) NOT NULL,
  `pay_amount` varchar(200) NOT NULL,
  `amount_received` varchar(200) NOT NULL,
  `order_id` varchar(200) NOT NULL,
  `is_fee_paid_by_user` tinyint(1) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `upate_date` time NOT NULL DEFAULT '00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deposite`
--

INSERT INTO `deposite` (`id`, `user_id`, `payment_id`, `payment_status`, `pay_address`, `price_amount`, `price_currency`, `pay_amount`, `amount_received`, `order_id`, `is_fee_paid_by_user`, `create_date`, `upate_date`) VALUES
(49, 25, '5022492138', 'finished', 'TQ3vNeuyAFJh6deFtURhyrJKDhJKCVafht', '8.845147 USDTTRC20', 'USDTTRC20', '10', '8.845147 USDTTRC20\r\n', 'Money3325', 0, '2023-02-15 12:36:07', '00:20:23'),
(55, 28, '20654356', 'finished', 'TQ3vNeuyAFJh6deFtURhyrJKDhJKCVafh', '......', 'usdtrc20', '20', '......', 'img28', 0, '0000-00-00 00:00:00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` int(225) NOT NULL,
  `user_id` int(100) NOT NULL,
  `amount` varchar(225) NOT NULL,
  `status` varchar(50) NOT NULL,
  `name` varchar(225) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(225) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(12) NOT NULL,
  `referral` varchar(225) NOT NULL,
  `passwords` varchar(100) NOT NULL,
  `refcode` varchar(225) NOT NULL,
  `status` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `email`, `phone`, `referral`, `passwords`, `refcode`, `status`, `time`) VALUES
(25, 'xyz', 'xyx', 'Money33', 'gfhgfhfg@gmail.com', 45323245, 'fghfh', '0266143768', 'fgfhfg', 'unblock', '2023-02-17 05:51:44'),
(28, 'Goodluck', 'Logo', 'GoodluckGH', 'goodlucklogo18@gmail.com', 246499880, 'fgfhfg', 'Mynewpass', 'iic018c1a8cellgjde', 'unblock', '2023-02-17 05:51:45'),
(35, 'Niraj', 'Mishra', 'niraj123', 'mishra74881@gmail.com', 2147483647, 'fgfhfg', 'niraj', 'fj8he772f2d1dlchk7', 'unblock', '2023-02-19 18:26:14');

-- --------------------------------------------------------

--
-- Table structure for table `withdrow`
--

CREATE TABLE `withdrow` (
  `id` int(225) NOT NULL,
  `user_id` int(100) NOT NULL,
  `address` varchar(225) NOT NULL,
  `amount` int(100) NOT NULL,
  `batchWithdrawalId` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `time` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `withdrow`
--

INSERT INTO `withdrow` (`id`, `user_id`, `address`, `amount`, `batchWithdrawalId`, `status`, `time`) VALUES
(2, 0, '', 0, '', '', '0000-00-00'),
(3, 25, '', 0, '', '', '0000-00-00'),
(4, 25, '', 0, '', '', '0000-00-00'),
(5, 25, '', 0, '', '', '0000-00-00'),
(6, 22, '', 0, '', '', '0000-00-00'),
(7, 25, '', 0, '', '', '0000-00-00'),
(8, 22, '', 0, '', '', '0000-00-00'),
(9, 22, '', 0, '', '', '0000-00-00'),
(10, 22, '', 0, '', '', '0000-00-00'),
(11, 25, '', 0, '', '', '0000-00-00'),
(12, 28, '', 0, '', '', '0000-00-00'),
(13, 28, '', 0, '', '', '0000-00-00'),
(14, 25, '', 0, '', '', '0000-00-00'),
(15, 25, '', 0, '', '', '0000-00-00'),
(16, 25, '', 0, '', '', '0000-00-00'),
(17, 25, '', 0, '', '', '0000-00-00'),
(18, 25, '', 0, '', '', '0000-00-00'),
(19, 25, '', 0, '', '', '0000-00-00'),
(20, 25, '', 0, '', '', '0000-00-00'),
(21, 0, '', 0, '', '', '0000-00-00'),
(22, 25, '', 0, '', '', '0000-00-00'),
(23, 25, '', 0, '', '', '0000-00-00'),
(24, 25, '', 0, '', '', '0000-00-00'),
(25, 25, '', 0, '', '', '0000-00-00'),
(26, 25, '', 0, '', '', '0000-00-00'),
(27, 25, '', 0, '', '', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actionwithdrow`
--
ALTER TABLE `actionwithdrow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposite`
--
ALTER TABLE `deposite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `withdrow`
--
ALTER TABLE `withdrow`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actionwithdrow`
--
ALTER TABLE `actionwithdrow`
  MODIFY `id` int(224) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=364;

--
-- AUTO_INCREMENT for table `deposite`
--
ALTER TABLE `deposite`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `withdrow`
--
ALTER TABLE `withdrow`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
