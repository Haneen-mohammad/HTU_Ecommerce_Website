-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2020 at 01:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_htu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'haneen323', 'haneen@gmail.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `arrival`
--

CREATE TABLE `arrival` (
  `arrival_id` int(11) NOT NULL,
  `arrival_name` varchar(50) NOT NULL,
  `arrival_img` varchar(50) NOT NULL,
  `arrival_price` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `arrival`
--

INSERT INTO `arrival` (`arrival_id`, `arrival_name`, `arrival_img`, `arrival_price`) VALUES
(3, 'sdfxvjbhk', 'images (5).jfif', '746'),
(5, 'nikon', 'download (5).jfif', '2500'),
(21, 'can', 'images (25).jfif', '3500'),
(22, 'ffv', 'images (22).jfif', '1300');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL,
  `category_img` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_img`) VALUES
(7, 'canon', 'can.jpg'),
(8, 'nikon', 'nikon.jfif'),
(10, 'Pentax', 'images (9).jfif'),
(11, 'Sonny', 'download.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(50) NOT NULL,
  `customer_password` varchar(50) NOT NULL,
  `customer_mobile` varchar(50) NOT NULL,
  `customer_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_mobile`, `customer_address`) VALUES
(1, 'haneeeen', 'haneen@haneen.com', '4896523', '0791556151', 'zmman'),
(3, 'han', 'slam-81@hotmail.com', '645634563231', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `customer_id`, `product_name`) VALUES
(3, '0000-00-00', 3, 'anasaasddsf'),
(4, '0000-00-00', 1, '6,6'),
(5, '2020-09-30', 1, '6,6'),
(6, '2020-09-30', 1, '6,6'),
(7, '2020-09-30', 1, '6,6'),
(8, '2020-09-30', 1, '6,6'),
(9, '2020-09-30', 1, '6,6'),
(10, '2020-09-30', 1, '6,6'),
(11, '2020-10-01', 1, '6,6'),
(12, '2020-10-01', 1, '6,6'),
(13, '2020-10-01', 1, '6,6'),
(14, '2020-10-02', 1, '6,6'),
(15, '2020-10-02', 1, '6,6,11,11'),
(16, '2020-10-02', 1, '6,6,11,11'),
(17, '2020-10-02', 1, '6,6,11,11'),
(18, '2020-10-02', 1, '6,6,11,11'),
(19, '2020-10-02', 1, '6,6,11,11'),
(20, '2020-10-02', 1, '6,6,11,11'),
(21, '2020-10-02', 1, '6,6,11,11'),
(22, '2020-10-02', 1, '6,6,11,11'),
(23, '2020-10-02', 1, '6,6,11,11'),
(24, '2020-10-02', 1, '6,6,11,11'),
(25, '2020-10-02', 1, '6,6,11,11');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_img` varchar(50) NOT NULL,
  `product_price` varchar(50) NOT NULL,
  `product_describ` varchar(50) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `status_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_img`, `product_price`, `product_describ`, `category_id`, `vendor_id`, `status_id`) VALUES
(6, 'canon_150', 'images (5).jfif', '2000', 'is an autofocus single-lens reflex camera (SLR) an', '7', 0, '0'),
(8, 'Pentax', 'download (3).jfif', '2500', '12312', '9', 0, '0'),
(9, 'Pentax_100', 'images (9).jfif', '820', '', '10', 0, '0'),
(10, 'canon_41', '1ODERED_B1_shallowdepth_P3c_438x447.jpg.img.jpg', '4000', 'afs', '9', 0, '0'),
(11, 'can_206', 'can.jpg', '5066', '', '7', 0, '0'),
(12, 'nikon_200', 'images (3).jfif', '2500', '', '8', 0, '0'),
(13, 'Nikon_4', 'nikon.jfif', '7000', '', '8', 0, '0'),
(16, 'chvgb', 'images (22).jfif', '777', 'cvh', '9', 0, '0'),
(17, 'Sonny_200', 'images (17).jfif', '4000', '', '11', 0, '0'),
(19, 'Canon_pro', 'images (10).jfif', '4050', '', '7', 0, '0'),
(20, 'Pentax_E', 'download (5).jfif', '4500', '', '10', 0, '0'),
(21, 'Pentax_2', 'images (29).jfif', '3000', '', '10', 0, '0'),
(22, 'Sonny_22', 'download.jfif', '6000', '', '11', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status`) VALUES
(1, 'available'),
(2, 'out_of_stock');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `vendor_id` int(11) NOT NULL,
  `vendor_name` varchar(50) NOT NULL,
  `vendor_email` varchar(50) NOT NULL,
  `vendor_password` varchar(50) NOT NULL,
  `New_product` varchar(50) NOT NULL,
  `Modify_products` varchar(50) NOT NULL,
  `Account_management` varchar(50) NOT NULL,
  `Pieces_sold` varchar(50) NOT NULL,
  `Return_pieces` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`vendor_id`, `vendor_name`, `vendor_email`, `vendor_password`, `New_product`, `Modify_products`, `Account_management`, `Pieces_sold`, `Return_pieces`) VALUES
(1, 'raneem', 'raneem@gmail.com', '123456', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `arrival`
--
ALTER TABLE `arrival`
  ADD PRIMARY KEY (`arrival_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `arrival`
--
ALTER TABLE `arrival`
  MODIFY `arrival_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
