-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: מאי 16, 2019 בזמן 10:42 AM
-- גרסת שרת: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cellxpert_test`
--

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `affiliate`
--

CREATE TABLE `affiliate` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `affiliate`
--

INSERT INTO `affiliate` (`id`, `name`) VALUES
(1, 'affiliate'),
(2, 'affiliated'),
(3, 'officiate'),
(4, 'affiliates'),
(5, 'affiliative'),
(6, 'filiate'),
(7, 'effigiate'),
(8, 'affiliable'),
(9, 'affiliate'),
(10, 'affiliated'),
(11, 'officiate'),
(12, 'affiliates'),
(13, 'affiliative'),
(14, 'filiate'),
(15, 'effigiate'),
(16, 'affiliable');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `influencer`
--

CREATE TABLE `influencer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `influencer`
--

INSERT INTO `influencer` (`id`, `name`) VALUES
(1, 'influencer'),
(2, 'influence'),
(3, 'influenced'),
(4, 'influences'),
(5, 'influencers'),
(6, 'influencia'),
(7, 'influente');

-- --------------------------------------------------------

--
-- מבנה טבלה עבור טבלה `marketing`
--

CREATE TABLE `marketing` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- הוצאת מידע עבור טבלה `marketing`
--

INSERT INTO `marketing` (`id`, `name`) VALUES
(1, 'marketing'),
(2, 'markiting'),
(3, 'marking'),
(4, 'targeting'),
(5, 'carpeting'),
(6, 'garreting'),
(7, 'casketing'),
(8, 'racketing'),
(9, 'jacketing'),
(10, 'marveling'),
(11, 'darkening'),
(12, 'harkening'),
(13, 'pargeting'),
(14, 'demarketing'),
(15, 'remarketing'),
(16, 'packeting'),
(17, 'e-marketing'),
(18, 'marketings'),
(19, 'e marketing'),
(20, 'marting');

--
-- Indexes for dumped tables
--

--
-- אינדקסים לטבלה `affiliate`
--
ALTER TABLE `affiliate`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `influencer`
--
ALTER TABLE `influencer`
  ADD PRIMARY KEY (`id`);

--
-- אינדקסים לטבלה `marketing`
--
ALTER TABLE `marketing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `affiliate`
--
ALTER TABLE `affiliate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `influencer`
--
ALTER TABLE `influencer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `marketing`
--
ALTER TABLE `marketing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
