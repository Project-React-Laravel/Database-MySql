-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 05, 2023 at 04:09 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id20308684_laptopapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'MacBooks'),
(2, 'Windows Laptops'),
(3, 'Business Laptops'),
(4, 'Gaming Laptops'),
(5, 'MacBooks'),
(6, 'Windows Laptops'),
(7, 'Business Laptops'),
(8, 'Gaming Laptops');

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE `detail_order` (
  `id_laptop` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `name` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `size` varchar(50) NOT NULL,
  `img` varchar(300) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `laptops`
--

CREATE TABLE `laptops` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `processor` varchar(50) NOT NULL,
  `RAM` int(11) NOT NULL,
  `storage` varchar(50) NOT NULL,
  `screen_size` decimal(3,1) NOT NULL,
  `graphic_card` varchar(50) NOT NULL,
  `operating_system` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laptops`
--

INSERT INTO `laptops` (`id`, `name`, `brand`, `price`, `processor`, `RAM`, `storage`, `screen_size`, `graphic_card`, `operating_system`, `description`, `image_url`) VALUES
(1, 'MacBook Pro', 'Apple', 1999.99, 'Intel Core i9', 32, '1TB SSD', 16.0, 'AMD Radeon Pro 5600M', 'macOS', 'The MacBook Pro is a powerful laptop that is perfect for creative professionals.', 'laptop.png'),
(2, 'Surface Book 3', 'Microsoft', 1799.99, 'Intel Core i7', 16, '512GB SSD', 13.5, 'Nvidia GeForce GTX 1650', 'Windows 10 Pro', 'The Surface Book 3 is a versatile laptop that can be used as a laptop or tablet.', 'laptop2.png'),
(3, 'ThinkPad X1 Carbon', 'Lenovo', 1499.99, 'Intel Core i5', 8, '256GB SSD', 14.0, 'Intel UHD Graphics', 'Windows 10 Pro', 'The ThinkPad X1 Carbon is a durable and reliable laptop that is ideal for business users.', 'laptop3.png'),
(4, 'MacBook Pro', 'Apple', 1999.99, 'Intel Core i9', 32, '1TB SSD', 16.0, 'AMD Radeon Pro 5600M', 'macOS', 'The MacBook Pro is a powerful laptop that is perfect for creative professionals. ', 'laptop4.png'),
(5, 'Surface Book 3', 'Microsoft', 1799.99, 'Intel Core i7', 16, '512GB SSD', 13.5, 'Nvidia GeForce GTX 1650', 'Windows 10 Pro', 'The Surface Book 3 is a versatile laptop that can be used as a laptop or tablet. ', 'laptop2.png'),
(6, 'ThinkPad X1 Carbon', 'Lenovo', 1499.99, 'Intel Core i5', 8, '256GB SSD', 14.0, 'Intel UHD Graphics', 'Windows 10 Pro', 'The ThinkPad X1 Carbon is a durable and reliable laptop that is ideal for business users. ', 'laptop3.png'),
(10, 'ThinkPad X1 Carbon', 'Lenovo', 1499.99, 'Intel Core i5', 8, '256GB SSD', 14.0, 'Intel UHD Graphics', 'Windows 10 Pro', 'The ThinkPad X1 Carbon is a durable and reliable laptop that is ideal for business users.', 'laptop3.png'),
(11, 'ThinkPad X1 Carbon', 'Lenovo', 1499.99, 'Intel Core i5', 8, '256GB SSD', 14.0, 'Intel UHD Graphics', 'Windows 10 Pro', 'The ThinkPad X1 Carbon is a durable and reliable laptop that is ideal for business users.', 'laptop3.png');

-- --------------------------------------------------------

--
-- Table structure for table `laptop_categories`
--

CREATE TABLE `laptop_categories` (
  `id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laptop_categories`
--

INSERT INTO `laptop_categories` (`id`, `laptop_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 4),
(3, 2, 2),
(4, 3, 2),
(5, 3, 3),
(6, 1, 1),
(7, 1, 4),
(8, 2, 2),
(9, 3, 2),
(10, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_date`, `customer_name`, `email`, `phone`) VALUES
(1678879258, '2023-03-15 11:20:58', 'Hiếu', 'customer1@example.com', 931487873),
(1678882827, '2023-03-15 12:20:27', 'Hieu', 'customer1@example.com', 931487873),
(1678882851, '2023-03-15 12:20:51', 'Hieu', 'customer1@example.com', 931487873),
(1678882892, '2023-03-15 12:21:32', 'Hieu', 'customer1@example.com', 931487873),
(1678883654, '2023-03-15 12:34:14', 'Hieu', 'customer1@example.com', 931487873),
(1678883999, '2023-03-15 12:39:59', 'Hieu', 'customer1@example.com', 931487873);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `laptop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `laptop_id`, `user_id`, `rating`, `review`) VALUES
(1, 1, 1, 4, 'I love my MacBook Pro. It is fast and powerful, and the graphics card is amazing. The only downside is the price, but it is worth it.'),
(2, 2, 2, 5, 'The Surface Book 3 is an amazing laptop. I love how versatile it is and the touchscreen is so responsive. Highly recommend it.'),
(3, 3, 1, 4, 'The ThinkPad X1 Carbon is a great laptop for business users. It is durable and reliable, and the keyboard is comfortable to use.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'customer1', 'password', 'customer1@example.com'),
(2, 'customer2', 'password', 'customer2@example.com'),
(3, 'admin', 'password', 'admin@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_detail_order_order` (`id_order`),
  ADD KEY `fk_detail_order_laptop` (`id_laptop`);

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laptop_categories`
--
ALTER TABLE `laptop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_laptops_cate` (`laptop_id`),
  ADD KEY `fk_cate_laptop-cate` (`category_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_order` (`email`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laptop_id` (`laptop_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `detail_order`
--
ALTER TABLE `detail_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `laptop_categories`
--
ALTER TABLE `laptop_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1678884000;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_order`
--
ALTER TABLE `detail_order`
  ADD CONSTRAINT `fk_detail_order_laptop` FOREIGN KEY (`id_laptop`) REFERENCES `laptops` (`id`),
  ADD CONSTRAINT `fk_detail_order_order` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Constraints for table `laptop_categories`
--
ALTER TABLE `laptop_categories`
  ADD CONSTRAINT `fk_cate_laptop-cate` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `fk_laptops_cate` FOREIGN KEY (`laptop_id`) REFERENCES `laptops` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user_order` FOREIGN KEY (`email`) REFERENCES `users` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
