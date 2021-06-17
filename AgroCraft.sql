-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2021 at 03:47 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impulse101`
--

-- --------------------------------------------------------

--
-- Table structure for table `buyerregistration`
--

CREATE TABLE `buyerregistration` (
  `buyer_id` int(255) NOT NULL,
  `buyer_name` varchar(30) NOT NULL,
  `buyer_phone` bigint(10) NOT NULL,
  `buyer_addr` text NOT NULL,
  `buyer_comp` varchar(100) NOT NULL,
  `buyer_license` varchar(100) NOT NULL,
  `buyer_bank` int(16) NOT NULL,
  `buyer_pan` varchar(10) NOT NULL,
  `buyer_mail` varchar(20) NOT NULL,
  `buyer_username` varchar(20) NOT NULL,
  `buyer_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buyerregistration`
--

INSERT INTO `buyerregistration` (`buyer_id`, `buyer_name`, `buyer_phone`, `buyer_addr`, `buyer_comp`, `buyer_license`, `buyer_bank`, `buyer_pan`, `buyer_mail`, `buyer_username`, `buyer_password`) VALUES
(15, 'Abhishek', 1234567890, ' Raj Uday 234', 'Elysian.org', '02082000', 2147483647, '1234567890', 'abhi@hmil.com', 'admin', 'm8bf5+Y='),
(16, 'Arpit', 7666610976, 'Bhat Mansion', 'Mafia Pvt Ltd', '99', 12345, '987', 'abcd@gmail.com', 'redhawk', 'm9HW6O8B'),
(17, 'calista', 2589631472, '4/2,rose building .wadala', 'apple', 'w3566908', 8947, '2436467897', 'rose21@gmail.com', 'melissa', 'nM7d+e0b41E='),
(18, 'Lokesh', 9029788504, 'SEC -13 , PALM BEACH ROAD', '', 'MAHARASHTRA', 0, '1234567890', 'abhi@hmil.com', 'lokesh', 'yw=='),
(19, 'ansh', 9819104641, 'fam', 'Elysian.org', 'MAHARASHTRA', 2147483647, '1234567890', 'abhi@hmil.com', 'ansh', 'y5CB'),
(20, 'bhabalomkar421', 8828071232, 'bj', 'c company', 'just **** off', 1, '1', 'xyz@domain.com', '501807', 'yw=='),
(21, 'Chathumika', 775471672, 'No:371/11Main street,Ambalangoda\r\nd', 'abc', '1123', 6788990, '2345', 'kaveena321@gmail.com', 'dimu', 'y5CB');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(255) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `qty` int(10) NOT NULL DEFAULT '1',
  `subtotal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_id`, `phonenumber`, `qty`, `subtotal`) VALUES
(32, 8169193101, 2, 10),
(1, 759081655, 1, 12),
(38, 759081655, 1, 13),
(38, 775471672, 1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Crops'),
(2, 'Vegetables'),
(3, 'Fruits');

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`id`, `name`, `email`, `pincode`, `password`, `address`, `phone`) VALUES
(5, 'bhabalomkar421', 'bhabalomkar421@gmail', '421202', 'yw==', 'm', '8828071232'),
(6, 'hello world', 'hello@world.com', '421202', 'yw==', 'world', '9999999999'),
(7, 'Abhishek Gupta', 'abhig0209@gmail.com', '400705', 'm8bf5+Y=', 'Test', '1234567890'),
(8, 'int main', 'intmain@g.com', '400705', 'yw==', '704,Raj Uday CHS , Sec-1\r\nSanpada', '7715802258');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `clinicName` varchar(15) NOT NULL,
  `clinicAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `pincode`, `password`, `clinicName`, `clinicAddress`, `phone`, `startTime`, `endTime`) VALUES
(4, 'bhabalomkar421', 'bhabalomkar421@gmail', '421202', 'yw==', 'xyz', 'xyz', '8828071232', '10:00', '12:00'),
(5, 'int main', 'intmain1221@gmail.co', '421202', 'yw==', 'xyz', 'xyz', '8369619128', '10:00', '12:30'),
(6, 'god', 'es@dd.com', '421205', 'yw==', '1', '1', '9223152967', '10:00', '01:00');

-- --------------------------------------------------------

--
-- Table structure for table `farmerregistration`
--

CREATE TABLE `farmerregistration` (
  `farmer_id` int(255) NOT NULL,
  `farmer_name` varchar(255) NOT NULL,
  `farmer_phone` bigint(10) NOT NULL,
  `farmer_address` text NOT NULL,
  `farmer_province` varchar(255) DEFAULT NULL,
  `farmer_district` varchar(50) NOT NULL,
  `farmer_pan` varchar(10) NOT NULL,
  `farmer_bank` int(16) NOT NULL,
  `farmer_password` varchar(100) NOT NULL,
  `farmer_lat` varchar(255) DEFAULT NULL,
  `farmer_lng` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmerregistration`
--

INSERT INTO `farmerregistration` (`farmer_id`, `farmer_name`, `farmer_phone`, `farmer_address`, `farmer_province`, `farmer_district`, `farmer_pan`, `farmer_bank`, `farmer_password`, `farmer_lat`, `farmer_lng`) VALUES
(99, 'Saman Lal', 912254249, 'Galle', 'Southern', 'Galle', '455', 772829282, 'y5CB', '6.6703304633945', '80.68772954401453'),
(100, 'Premalal Silva', 759081655, 'Hikkaduwa', 'Southern', 'Galle', '4567', 2147483647, 'y5CB', '6.037040486318547', '80.27024907526453'),
(101, 'Abhishek', 763471672, 'Galle', 'Southern', 'Galle', '333', 2147483647, 'y5CB', '6.09166471997381', '80.22630376276453');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `qty` int(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `delivery` varchar(10) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `total` int(10) NOT NULL,
  `payment` varchar(10) NOT NULL,
  `buyer_phonenumber` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `product_id`, `qty`, `address`, `delivery`, `phonenumber`, `total`, `payment`, `buyer_phonenumber`) VALUES
(55, 23, 1, ' Raj Uday 234', 'Buyer', 8169193101, 56, 'cod', 1234567890),
(56, 28, 1, ' Raj Uday 234', 'Buyer', 8169193101, 45, 'cod', 1234567890),
(57, 31, 1, 'I am Hungry', 'Buyer', 8169193101, 25, 'cod', 1234567890),
(58, 3, 2, ' Raj Uday 234', 'Farmer', 8169193101, 10, 'paytm', 1234567890),
(60, 32, 1, 'Working', 'Buyer', 8169193101, 10, 'cod', 1234567890),
(61, 31, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 759081655, 67, 'paytm', 775471672),
(62, 22, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 763471672, 53, 'paytm', 775471672),
(63, 29, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'paytm', 775471672),
(64, 19, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'paytm', 775471672),
(65, 3, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'paytm', 775471672),
(66, 23, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'paytm', 775471672),
(67, 52, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'paytm', 775471672),
(68, 39, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'paytm', 775471672),
(69, 43, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 912254249, 76, 'cod', 775471672),
(70, 48, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 759081655, 67, 'cod', 775471672),
(71, 52, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'cod', 775471672),
(72, 49, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 763471672, 47, 'cod', 775471672),
(73, 52, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 759081655, 67, 'cod', 775471672),
(74, 45, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 912254249, 52, 'cod', 775471672),
(75, 46, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 912254249, 230, 'cod', 775471672),
(76, 41, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'cod', 775471672),
(77, 43, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 0, 0, 'cod', 775471672),
(78, 50, 1, 'No:371/11Main street,Ambalangoda\r\nd', 'Farmer', 763471672, 33, 'paytm', 775471672);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `farmer_fk` int(255) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_cat` varchar(100) NOT NULL,
  `product_type` varchar(100) NOT NULL,
  `product_expiry` varchar(25) NOT NULL,
  `product_image` text NOT NULL,
  `product_stock` int(100) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_delivery` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `farmer_fk`, `product_title`, `product_cat`, `product_type`, `product_expiry`, `product_image`, `product_stock`, `product_price`, `product_desc`, `product_keywords`, `product_delivery`) VALUES
(38, 100, 'Silva Potato', '2', 'Potato', '2021-02-12', 'patato.jpg', 1500, 13, 'Good Quality Potato Guaranteed 100 percent', 'Best Potato', 'yes'),
(39, 101, 'Big Tomato', '2', 'Tomato', '2021-01-31', 'Tomato.jpg', 300, 53, 'High Quality Big Tomato', 'Big Tomato', 'no'),
(40, 98, 'Super Rice', '1', 'Rice', '2021-04-30', 'Rice.jpg', 60, 45, 'Basmathi Super Rice', 'Super Rice', 'yes'),
(41, 98, 'Yellow Banana', '3', 'Banana', '2021-01-31', 'Bananas.jpg', 50, 36, 'Tasty Banana', 'Yellow Banana', 'yes'),
(42, 98, 'Yummy Strawberry', '3', 'Strawberry', '2021-02-12', 'strawberry.jpg', 20, 55, 'Good Quality Big Strawberry', 'Yummy Strawberry', 'no'),
(43, 98, 'Red Apple', '3', 'Apple', '2021-03-31', 'Apple.jpg', 40, 70, 'Yummy Red Apple', 'Red Apple', 'no'),
(45, 99, 'Big Custard Apple', '3', 'Custard Apple', '2021-03-18', 'custardapple.jpg', 34, 52, 'Sweet Custard Apple', 'Big Custard Apple', 'yes'),
(46, 99, 'Sweet Mango', '3', 'Mango', '2021-02-25', 'Mango.jpg', 83, 230, 'Good Quality Big Mango ', 'Sweet Mango', 'yes'),
(47, 99, 'Sweet Orange', '3', 'Orange', '2021-04-14', 'orange.jpg', 245, 65, 'Best Orange', 'Sweet Orange', 'no'),
(48, 99, 'Good Onion', '2', 'Onion', '2021-03-29', 'Onion.jpg', 240, 76, 'High Quality Onion', 'Good Onion', 'yes'),
(49, 101, 'Green Cabbage', '2', 'Cabbage', '2021-05-21', 'Cabbage.jpg', 79, 47, 'Chinese Cabbage', 'Green Cabbage', 'yes'),
(50, 101, 'Big Carrot', '2', 'Carrot', '2021-04-21', 'Carrot.jpg', 65, 33, 'Indian Carrot', 'Big Carrot', 'yes'),
(51, 101, 'Sweet Sugacane', '1', 'Sugacane', '2021-09-08', 'Sugarcane.jpg', 67, 57, 'Local Sugacane', 'Sweet Sugacane', 'no'),
(52, 100, 'Pop Maize', '1', 'Maize', '2021-08-18', 'Maize.jpg', 467, 67, 'Trinco Maize', 'Pop Maize', 'yes'),
(53, 100, 'Large Coconut', '1', 'Coconut', '2021-11-11', 'Coconut.jpg', 458, 120, 'Good Quality Coconut', 'Large Coconut', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `shopkeeper`
--

CREATE TABLE `shopkeeper` (
  `id` int(255) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `password` varchar(10) NOT NULL,
  `shopName` varchar(20) NOT NULL,
  `shopAddress` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `startTime` varchar(8) NOT NULL,
  `endTime` varchar(8) NOT NULL,
  `slotInterval` int(11) NOT NULL,
  `slotUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shopkeeper`
--

INSERT INTO `shopkeeper` (`id`, `name`, `email`, `pincode`, `password`, `shopName`, `shopAddress`, `phone`, `startTime`, `endTime`, `slotInterval`, `slotUser`) VALUES
(1, 'bhabalomkar421', 'bhabalomkar421@gmail', '421202', 'yw==', 'xyz', 'xyz', '8828071232', '10:30', '12:30', 30, 5),
(3, 'int main 123', 'intmain1221@gmail.co', '400705', 'yw==', 'hopes', 'no hopes', '101', '10:30', '11:30', 30, 7),
(4, 'kerela', 'es@dd.com', '421200', 'yw==', '1', 'm', '8369674856', '10:00', '12:30', 60, 5),
(5, 'Abhishek Gupta', 'abhig0209@gmail.com', '400705', 'm8bf5+Y=', 'Ganesh Grocery', 'Rose Villa Lane', '1234567890', '12:00', '22:00', 30, 5),
(6, 'omkar bhabal', 'intmain1221@gmail.co', '400705', 'yw==', 'om medical', 'navapada', '9223152967', '10:30', '17:00', 30, 5),
(7, 'Ganesh', 'ganesh@mail.com', '123456', 'm8bf5+Y=', 'Ganesh Grocery', 'Mumbai', '1234567891', '10:00', '14:00', 30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `slot`
--

CREATE TABLE `slot` (
  `slot_id` int(255) NOT NULL,
  `shop_id` int(255) NOT NULL,
  `slot` varchar(10) NOT NULL,
  `vacancy` int(255) NOT NULL,
  `date` varchar(12) NOT NULL,
  `phonenumber` bigint(10) NOT NULL,
  `passcode` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slot`
--

INSERT INTO `slot` (`slot_id`, `shop_id`, `slot`, `vacancy`, `date`, `phonenumber`, `passcode`) VALUES
(37, 6, '12:0', 5, '05/05/2020', 1234567890, 82047),
(38, 6, '12:0', 5, '13/07/2020', 1234567890, 95127),
(39, 6, '10:30', 5, '21/04/2020', 1234567890, 40661),
(40, 6, '12:0', 5, '07/04/2020', 1234567890, 27560),
(41, 6, '10:30', 5, '22/04/2020', 1234567890, 67549);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buyerregistration`
--
ALTER TABLE `buyerregistration`
  ADD PRIMARY KEY (`buyer_id`),
  ADD UNIQUE KEY `buyer_username` (`buyer_username`),
  ADD UNIQUE KEY `buyer_phone` (`buyer_phone`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmerregistration`
--
ALTER TABLE `farmerregistration`
  ADD UNIQUE KEY `farmer_id` (`farmer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `phonenumber` (`phonenumber`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `farmer_fk` (`farmer_fk`);

--
-- Indexes for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slot`
--
ALTER TABLE `slot`
  ADD PRIMARY KEY (`slot_id`),
  ADD UNIQUE KEY `passcode` (`passcode`),
  ADD KEY `slot_ibfk_1` (`shop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buyerregistration`
--
ALTER TABLE `buyerregistration`
  MODIFY `buyer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `farmerregistration`
--
ALTER TABLE `farmerregistration`
  MODIFY `farmer_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `shopkeeper`
--
ALTER TABLE `shopkeeper`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `slot`
--
ALTER TABLE `slot`
  MODIFY `slot_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `slot`
--
ALTER TABLE `slot`
  ADD CONSTRAINT `slot_ibfk_1` FOREIGN KEY (`shop_id`) REFERENCES `shopkeeper` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
