-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2018 at 07:00 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_admin` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_type` tinyint(4) NOT NULL COMMENT '1 is super admin 2 is counter admin',
  `address` text NOT NULL,
  `ref_id_counter` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `full_name`, `email`, `phone`, `password`, `admin_type`, `address`, `ref_id_counter`, `is_active`) VALUES
(2, 'Robin', 'robin@gmail.com', '54564564', '81f9545f6a3723470dc882527a77f953', 1, '', 0, 1),
(3, 'naim', 'naim@gmail.com', '456456', '7538d4dcba3305622d94579666135c31', 1, 'naim addressf', 0, 1),
(5, 'mimo', 'mimo@gmail.com', '65465465', '202cb962ac59075b964b07152d234b70', 2, '', 1, 1),
(6, 'Test Name', 'test@gmail.com', '53132', 'd41d8cd98f00b204e9800998ecf8427e', 2, 'test address', 6, 1),
(7, 'asif mahmud', 'asif@gmail.com', '01823635364', 'e10adc3949ba59abbe56e057f20f883e', 2, 'comilla sadar,94 alia madrasa more', 2, 1),
(10, 'safayet kabir', 'safayetkabir@hotmail.com', '01956698968', 'fcea920f7412b5da7be0cf42b8c93759', 1, 'sitakunda', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bkash_transection`
--

CREATE TABLE IF NOT EXISTS `bkash_transection` (
  `id_bkash_transection` int(11) NOT NULL,
  `transection_id` varchar(255) NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `is_already_used` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bkash_transection`
--

INSERT INTO `bkash_transection` (`id_bkash_transection`, `transection_id`, `amount`, `is_already_used`) VALUES
(1, '01819545997', '1200.00', 1),
(2, '017848253784', '1000.00', 1),
(3, '01819456987', '456.00', 0),
(4, '01867454567', '1200.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `id_bus` int(11) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `bus_no` varchar(100) NOT NULL,
  `bus_type` tinyint(11) NOT NULL COMMENT '1 is A/C 2 is Non A/C',
  `bus_details` text NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id_bus`, `bus_name`, `bus_no`, `bus_type`, `bus_details`, `is_active`) VALUES
(1, 'exclusive', '101', 1, 'full ac bus & non stop service.....& well furnished', 1),
(2, 'luxury', '102', 1, 'full ac & well furnished', 1),
(3, 'hanif', '520', 1, 'full ac bus....well furnished bus.... & very flexible', 1),
(4, 'HANIF', '220', 1, '', 1),
(5, 'SOHAG', '230', 1, '', 1),
(6, 'SOHAG', '240', 1, 'AC BUS AND WELL SEATED', 1),
(7, 'GREENLINE', '111', 1, 'FULL AC BUS', 1),
(8, 'S. ALAM', '400', 2, 'NON AC', 1),
(9, 'ENA', '401', 2, 'NON AC', 1),
(10, 'SHAMOLI', '402', 2, 'NON AC BUT WELL SEATED', 1),
(11, 'SHAMOLI', '420', 2, 'NON AC', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bus_schedule`
--

CREATE TABLE IF NOT EXISTS `bus_schedule` (
  `id_bus_schedule` int(11) NOT NULL,
  `ref_id_bus` int(11) NOT NULL,
  `ref_id_driver` int(11) NOT NULL,
  `ref_id_road` int(11) NOT NULL,
  `bus_schedule_no` varchar(255) NOT NULL,
  `starting_datetime` datetime NOT NULL,
  `ending_datetime` datetime NOT NULL,
  `bus_schedule_status` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_schedule`
--

INSERT INTO `bus_schedule` (`id_bus_schedule`, `ref_id_bus`, `ref_id_driver`, `ref_id_road`, `bus_schedule_no`, `starting_datetime`, `ending_datetime`, `bus_schedule_status`) VALUES
(7, 1, 4, 4, '1509646617', '2017-11-02 13:00:30', '2017-11-02 17:00:00', 0),
(8, 2, 5, 4, '1509646648', '2017-11-02 13:00:12', '2017-11-02 17:00:20', 0),
(9, 3, 6, 10, '1509646694', '2017-11-02 13:00:48', '2017-11-02 21:00:01', 0),
(10, 4, 8, 2, '1509646735', '2017-11-02 12:00:37', '2017-11-02 17:00:42', 0),
(11, 5, 9, 11, '1509647209', '2017-11-02 14:00:19', '2017-11-02 19:00:24', 0),
(12, 8, 11, 12, '1509647397', '2017-11-02 15:00:32', '2017-11-02 23:00:38', 0);

-- --------------------------------------------------------

--
-- Table structure for table `bus_seat_booked`
--

CREATE TABLE IF NOT EXISTS `bus_seat_booked` (
  `id_bus_seat_booked` bigint(20) NOT NULL,
  `ref_id_bus_schedule` int(11) NOT NULL,
  `ref_id_counter` int(11) NOT NULL,
  `ref_id_user` int(11) NOT NULL,
  `number_of_seat` int(11) NOT NULL,
  `per_seat_price` decimal(20,2) NOT NULL,
  `discount` decimal(20,2) NOT NULL,
  `seat_numbers` text NOT NULL,
  `ref_id_admin` int(11) NOT NULL,
  `passenger_full_name` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `is_notified_by_sms` tinyint(4) NOT NULL,
  `ref_id_payment` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_seat_booked`
--

INSERT INTO `bus_seat_booked` (`id_bus_seat_booked`, `ref_id_bus_schedule`, `ref_id_counter`, `ref_id_user`, `number_of_seat`, `per_seat_price`, `discount`, `seat_numbers`, `ref_id_admin`, `passenger_full_name`, `phone`, `is_notified_by_sms`, `ref_id_payment`, `created_at`) VALUES
(1, 2, 0, 0, 5, '385.50', '0.00', '1_1#2_1#2_2#6_4#6_5', 0, 'Obaidul Kader', '0181333913522', 0, 0, '0000-00-00 00:00:00'),
(2, 2, 0, 0, 6, '385.50', '0.00', '1_4#1_5#2_5#3_2#4_5#10_5', 0, 'Obaidul Kader', '0181333913522', 0, 0, '0000-00-00 00:00:00'),
(3, 2, 0, 0, 1, '385.50', '0.00', '1_2', 0, 'Abc', '5456465', 0, 0, '0000-00-00 00:00:00'),
(4, 1, 0, 0, 2, '0.00', '0.00', '1_1#1_2', 0, 'Abcdf', '123456987', 0, 0, '0000-00-00 00:00:00'),
(5, 1, 0, 0, 1, '0.00', '0.00', '1_4', 0, 'opoip', '122', 1, 0, '0000-00-00 00:00:00'),
(7, 2, 0, 2, 1, '385.50', '0.00', '2_4', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(8, 2, 0, 2, 1, '385.50', '0.00', '3_1', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(9, 2, 0, 2, 1, '385.50', '0.00', '3_4', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(10, 2, 0, 2, 1, '385.50', '0.00', '3_5', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(11, 2, 0, 2, 1, '385.50', '0.00', '4_1', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(12, 2, 0, 2, 1, '385.50', '0.00', '4_2', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(13, 2, 0, 2, 1, '385.50', '0.00', '4_4', 0, 'robin', '123454', 0, 0, '0000-00-00 00:00:00'),
(14, 2, 0, 2, 1, '385.50', '0.00', '5_4', 0, 'robin', '123454', 0, 0, '2017-09-20 22:22:44'),
(15, 2, 0, 2, 1, '385.50', '0.00', '5_5', 0, 'robin', '123454', 0, 0, '2017-09-20 22:35:37'),
(18, 2, 0, 3, 1, '385.50', '0.00', '10_4', 0, 'Naim', '21324156465', 0, 1, '2017-09-27 15:39:02'),
(19, 1, 0, 3, 1, '10.00', '0.00', '1_5', 0, 'Naim', '21324156465', 0, 2, '2017-09-28 14:14:31'),
(21, 2, 0, 0, 1, '285.50', '0.00', '8_4', 2, 'Test', '12345', 0, 3, '2017-10-03 05:42:17'),
(22, 2, 1, 0, 1, '285.50', '0.00', '8_5', 5, 'Test', '12345', 0, 4, '2017-10-03 06:45:39'),
(23, 4, 0, 3, 5, '1300.00', '300.00', '2_1#2_2#2_4#2_5#3_2', 2, 'Naim Ahmed', '01819191873', 0, 5, '2017-10-18 17:15:15'),
(24, 5, 0, 2, 2, '600.00', '0.00', '1_1#1_2', 0, 'robin', '123454', 0, 0, '2017-10-19 11:24:25');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE IF NOT EXISTS `counter` (
  `id_counter` int(11) NOT NULL,
  `counter_name` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `counter`
--

INSERT INTO `counter` (`id_counter`, `counter_name`, `address`, `is_active`) VALUES
(1, 'GEC', ' GEC VABAN', 1),
(2, 'Ak-Khan ', 'ak khan more', 1),
(3, 'Dhaka', 'FAKIRAPOOL, ', 1),
(4, 'Syllhet', 'noyabazar more', 1),
(6, 'bohodharhat', 'bohoddarhat more', 1),
(7, 'rawjan', 'shakachowdhury barir kinarai', 1);

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
  `id_driver` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`id_driver`, `full_name`, `email`, `phone`, `address`, `is_active`) VALUES
(3, 'Abul', 'abul@gmail.com', '64654', 'sdfasdf', 1),
(4, 'zahidur rahman munna', 'zahid.munna@gmail.com', '01824120673', 'koshai para', 1),
(5, 'MD. Kamal vai', 'kamal@gmail.com', '01912654789', 'Rongpur,', 1),
(6, 'Md. ismail ', 'ismail@gmail.com', '01819345765', 'Naraingonj\r\n', 1),
(7, 'ABDUL LATIF', 'abdul@gmail.com', '01818545454', 'SHITAKUNDA', 1),
(8, 'abu hena', 'abu@gmail.com', '81818342345', 'lohagara', 1),
(9, 'md shohel', 'shohel@gmail', '01817567656', 'lohagara', 1),
(10, 'abu taher', 'taher@gail', '01819677687', 'chakaria', 1),
(11, 'nahian chowdhury', 'nahi@gmail', '01818789878', 'fatikchhari', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id_payment` int(11) NOT NULL,
  `transection_type` int(11) NOT NULL COMMENT '1 is Cash 2 is bkash 3 paypal',
  `transection_id` varchar(255) NOT NULL,
  `transection_amount` decimal(20,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_payment`, `transection_type`, `transection_id`, `transection_amount`) VALUES
(1, 2, 'b101', '385.50'),
(2, 2, 'b102', '10.00'),
(3, 1, '1507002136', '285.50'),
(4, 1, '1507005939', '285.50'),
(5, 1, '1508339715', '6200.00');

-- --------------------------------------------------------

--
-- Table structure for table `road`
--

CREATE TABLE IF NOT EXISTS `road` (
  `id_road` int(11) NOT NULL,
  `road_name` varchar(255) NOT NULL,
  `start_from` varchar(255) NOT NULL,
  `end_to` varchar(255) NOT NULL,
  `distance` varchar(100) NOT NULL,
  `ac_price` decimal(20,2) NOT NULL,
  `non_ac_price` double(20,2) NOT NULL,
  `discount_amount` decimal(20,2) NOT NULL,
  `max_seat_needed_for_discount` int(11) NOT NULL,
  `max_seat_can_booked` int(11) NOT NULL,
  `details` text NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `road`
--

INSERT INTO `road` (`id_road`, `road_name`, `start_from`, `end_to`, `distance`, `ac_price`, `non_ac_price`, `discount_amount`, `max_seat_needed_for_discount`, `max_seat_can_booked`, `details`, `is_active`) VALUES
(2, 'Dhaka-Ctg', 'sdfj', 'jsdfklj', 'dsaf', '10.00', 0.00, '0.00', 0, 0, '', 1),
(3, 'Dinajpur-Dhaka', 'sdjfkl', 'jdklsajkl', 'jfasdf', '0.00', 0.00, '0.00', 0, 0, '', 1),
(4, 'Ctg-Dhaka', 'Chittagong', 'Dhaka', '102', '385.50', 285.50, '85.50', 3, 3, '', 1),
(6, 'Dhaka-Kolkata', 'Dhaka', 'Kolkata', '1300', '1500.00', 1200.00, '100.00', 3, 4, 'road details', 1),
(7, 'TEKNAF-TATULIA', 'ukia', 'chawkbazar', '800', '5500.00', 3500.00, '1000.00', 5, 7, '', 1),
(8, 'ANOWARA-DHAKA', 'CHOMOUNI', 'FAKIRAPOOL', '500', '1300.00', 700.00, '300.00', 5, 7, 'THIS IS A BEAUTIFUL ROAD', 1),
(9, 'dhaka-syllet', 'gabtoli', 'chawkbazar', '400', '1000.00', 500.00, '0.00', 7, 6, 'non stop', 1),
(10, 'ctg-syllet', 'dampara', 'chawkbazar', '800', '1500.00', 600.00, '0.00', 0, 5, 'non stop service', 1),
(11, 'ctg-khulna', 'gec', 'aambagan', '700', '1300.00', 650.00, '0.00', 0, 5, 'non stop service', 1),
(12, 'ctg-comilla', 'chawkbazar', 'comilla sadar', '200', '500.00', 230.00, '0.00', 0, 5, 'non stop service', 1);

-- --------------------------------------------------------

--
-- Table structure for table `road_counter`
--

CREATE TABLE IF NOT EXISTS `road_counter` (
  `id_road_counter` int(11) NOT NULL,
  `ref_id_road` int(11) NOT NULL,
  `ref_id_counter` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `road_counter`
--

INSERT INTO `road_counter` (`id_road_counter`, `ref_id_road`, `ref_id_counter`) VALUES
(1, 2, 1),
(2, 12, 2),
(3, 10, 1),
(4, 11, 1),
(5, 10, 2),
(6, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `full_name`, `email`, `phone`, `password`, `address`, `is_active`) VALUES
(1, 'testing', 'testing@gmail.com', '123456', 'e10adc3949ba59abbe56e057f20f883e', 'df ', 0),
(2, 'robin', 'robin@gmail.com', '123454', '81f9545f6a3723470dc882527a77f953', '253', 1),
(3, 'Naim Ahmed', 'naim@gmail.com', '123456789', '87492c742a590c47b12b202f893ec49f', '  ', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `bkash_transection`
--
ALTER TABLE `bkash_transection`
  ADD PRIMARY KEY (`id_bkash_transection`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id_bus`);

--
-- Indexes for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  ADD PRIMARY KEY (`id_bus_schedule`);

--
-- Indexes for table `bus_seat_booked`
--
ALTER TABLE `bus_seat_booked`
  ADD PRIMARY KEY (`id_bus_seat_booked`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id_counter`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`id_driver`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `road`
--
ALTER TABLE `road`
  ADD PRIMARY KEY (`id_road`), ADD UNIQUE KEY `road_name` (`road_name`);

--
-- Indexes for table `road_counter`
--
ALTER TABLE `road_counter`
  ADD PRIMARY KEY (`id_road_counter`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `bkash_transection`
--
ALTER TABLE `bkash_transection`
  MODIFY `id_bkash_transection` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id_bus` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `bus_schedule`
--
ALTER TABLE `bus_schedule`
  MODIFY `id_bus_schedule` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `bus_seat_booked`
--
ALTER TABLE `bus_seat_booked`
  MODIFY `id_bus_seat_booked` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id_counter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
  MODIFY `id_driver` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id_payment` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `road`
--
ALTER TABLE `road`
  MODIFY `id_road` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `road_counter`
--
ALTER TABLE `road_counter`
  MODIFY `id_road_counter` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
