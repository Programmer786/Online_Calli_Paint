-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2024 at 08:54 AM
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
-- Database: `callipaint_ocb_application`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('9fee2ce86d48');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(11) NOT NULL,
  `cust_user_name` varchar(50) NOT NULL,
  `cust_full_name` varchar(50) NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_gender` varchar(20) NOT NULL,
  `cust_rol_name` varchar(20) NOT NULL,
  `cust_password` varchar(256) NOT NULL,
  `cust_photo` varchar(256) DEFAULT NULL,
  `cust_registrationDate` date NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `cust_drop_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `cust_user_name`, `cust_full_name`, `cust_phone`, `cust_gender`, `cust_rol_name`, `cust_password`, `cust_photo`, `cust_registrationDate`, `isActive`, `cust_drop_address`) VALUES
(1, 'asad12345', 'Asad Khan', '03409836430', 'Male', 'Customer', 'scrypt:32768:8:1$8MliOsxXrfGEXYO9$2f0e7077f7e71f156ea9a0e008f87737ae59545b055491087c8da0b72bb88d0aab354382ce8ec296f2d5337b5fe07a422491b9b46696c9728c0f4d719a1992d7', NULL, '2024-03-22', 1, 'plot no#72 street No#9 District Islamabad'),
(4, 'rauf1234', 'Rauf Khalid', '03366645807', 'Male', 'Customer', 'scrypt:32768:8:1$Bfq0MgvZO8SdWfp4$a56cdd05796a780eebf4dba763d3668d6a89853fdaa87355fe0cddd49057e227aa36d973ac3379f571eb494f7c6104bd1c71335012f7279a5cf7e44acfc3e0a8', NULL, '2024-03-22', 1, 'Village Waligai P/O Waligai District Swat\r\n'),
(5, 'wali1234', 'Wali Rehman', '03464589752', 'Male', 'Customer', 'scrypt:32768:8:1$8MliOsxXrfGEXYO9$2f0e7077f7e71f156ea9a0e008f87737ae59545b055491087c8da0b72bb88d0aab354382ce8ec296f2d5337b5fe07a422491b9b46696c9728c0f4d719a1992d7', NULL, '2024-05-07', 1, 'plot no#71 street No#9 District Islamabad\r\n'),
(6, 'abuzar1234', 'Abu Zar', '03245684554', 'Male', 'Customer', 'scrypt:32768:8:1$moFxCmjT505tLHxo$904ec3e68444172898415765e0bda6081c3cdc1648dcaf7f89bfc33f1249aab3159e1564f5f0adde098e0737b34ba1903d825cf395c2efa1e9771153dedeb313', NULL, '2024-05-08', 1, 'Village Waligai P/O Waligai District kashmir'),
(7, 'iqrakhan', 'Iqra Fazeelat', '03418523548', 'Female', 'Customer', 'scrypt:32768:8:1$8hXV6f8pwmPAhjYI$7db5097aee4d6a89b8bd8a981a5e63a15531227fbdc99f14fe9dde847bba1e4f2112d6279015d7e73c8b444cd892f61b5a844cc37560fb9fe091f2ba1de2e292', NULL, '2024-05-20', 1, 'Makaran, Sradi Bhalgran, P/O Thorar, Tahsil Thorar, District Poonch'),
(8, 'adeelahmad', 'Adeel Ahmad', '03418523500', 'Male', 'Customer', 'scrypt:32768:8:1$YLZVXron15Cbuk8n$39194b978d0438c635ac0054a183a6ea3852e628a6a427aecf50d72ddda38d9c9fb9da15aca1f49c2f13030ba15c25cc5bb718dd41e44cd1befac726e4c625fd', NULL, '2024-06-04', 1, 'Poonch Ajk');

-- --------------------------------------------------------

--
-- Table structure for table `make_notification`
--

CREATE TABLE `make_notification` (
  `n_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `notification_info` varchar(50) DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_check_by_manager` tinyint(1) DEFAULT NULL,
  `is_check_by_employee` tinyint(1) DEFAULT NULL,
  `is_check_by_parent` tinyint(1) DEFAULT NULL,
  `is_check_by_delivery_boy` tinyint(1) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `make_notification`
--

INSERT INTO `make_notification` (`n_id`, `user_id`, `notification_info`, `end_date`, `is_check_by_manager`, `is_check_by_employee`, `is_check_by_parent`, `is_check_by_delivery_boy`, `status`, `created_at`, `updated_at`) VALUES
(3, 1, 'i want to inform you that sunday was holiday', '2024-05-01', 0, 0, 0, 0, 'Ended', '2024-05-06 04:21:38', '2024-05-19 18:17:15'),
(4, 1, 'dsfdsfadsfsdfadgdsgfdsf', '2024-05-16', 0, 0, 0, 0, 'Ended', '2024-05-06 04:33:37', '2024-05-19 18:17:01'),
(5, 1, 'Today is friday.', '2024-12-11', 0, 0, 0, 0, 'Live', '2024-05-19 18:17:58', '2024-05-19 18:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `make_report`
--

CREATE TABLE `make_report` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `select_reason` varchar(100) DEFAULT NULL,
  `send_report_message` varchar(255) DEFAULT NULL,
  `is_check_by_admin` tinyint(1) DEFAULT NULL,
  `received_report_message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` decimal(20,1) NOT NULL,
  `order_date` datetime NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `pc_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_description` text DEFAULT NULL,
  `p_price` decimal(20,1) NOT NULL,
  `p_image` varchar(255) DEFAULT NULL,
  `p_original_image` varchar(255) DEFAULT NULL,
  `p_isActive` tinyint(1) NOT NULL,
  `p_registrationDate` datetime NOT NULL,
  `p_stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `user_id`, `pc_id`, `p_name`, `p_description`, `p_price`, `p_image`, `p_original_image`, `p_isActive`, `p_registrationDate`, `p_stock`) VALUES
(1, 2, 4, 'Art Arabic Calligraphy', 'Hand Paint Calligraphy', 550.0, 'modified_7279885_2.jpeg', '7279885_2.jpeg', 1, '2024-03-19 11:02:53', 5),
(3, 2, 3, 'Acyclic Painting ', 'Calligraphy', 300.0, 'modified_7148154_2.jpeg', '7148154_2.jpeg', 1, '2024-03-19 20:19:10', 4),
(4, 3, 4, 'Calligraphy', 'Arabic Calligraphy', 350.0, 'modified_8016499_3.jpeg', '8016499_3.jpeg', 1, '2024-03-19 20:21:36', 12),
(5, 2, 8, 'Quran Ayat', 'Quran Ayat Calligraphy', 250.0, 'modified_5218418_2.jpeg', '5218418_2.jpeg', 1, '2024-03-19 20:22:11', 50),
(6, 3, 7, 'Arabic Calligraphy', 'Calligraphy, Painting , Masjid', 700.0, 'modified_7223864_3.jpeg', '7223864_3.jpeg', 0, '2024-03-19 20:22:41', 0),
(7, 2, 8, 'Calligraphy', 'Painting , Calligraphy, waterfall', 700.0, 'modified_9676514_2.jpg', '9676514_2.jpg', 1, '2024-03-19 20:23:59', 1),
(8, 2, 4, 'Arabic Art ', 'Hand Paint Calligraphy', 550.0, 'modified_7635473_2.jpeg', '7635473_2.jpeg', 1, '2024-03-19 20:25:12', 1),
(9, 3, 4, 'Calligraphy', 'Arabic Calligraphy', 480.0, 'modified_2996490_3.jpeg', '2996490_3.jpeg', 0, '2024-03-19 20:30:05', 0),
(10, 3, 7, 'Painting', 'Calligraphy, Painting', 420.0, 'modified_4730220_3.jpeg', '4730220_3.jpeg', 1, '2024-03-19 20:30:49', 0),
(11, 3, 4, 'Book', 'Calligraphy, book cover, flower design', 230.0, 'modified_3273302_3.jpeg', '3273302_3.jpeg', 0, '2024-03-19 20:31:39', 0),
(12, 2, 4, 'Arabic Calligraphy', 'Painting , Calligraphy', 950.0, 'modified_8971863_2.jpeg', '8971863_2.jpeg', 1, '2024-03-19 20:32:15', 1),
(13, 2, 3, 'Islamic Calligraphy', 'Painting , Calligraphy', 600.0, 'modified_8883798_2.jpeg', '8883798_2.jpeg', 1, '2024-03-19 20:32:59', 1),
(14, 3, 7, 'Calligraphy', 'Quranic Calligraphy', 210.0, 'modified_7518335_3.jpeg', '7518335_3.jpeg', 1, '2024-03-19 20:33:55', 30),
(15, 2, 4, 'Arabic Quran Verse', 'Calligraphy Painting Quran Verse', 410.0, 'modified_8777331_2.jpeg', '8777331_2.jpeg', 1, '2024-03-19 20:35:01', 1),
(16, 2, 4, 'Arabic CalliPaint', 'Hand Paint Calligraphy Painting', 380.0, 'modified_7768598_2.jpeg', '7768598_2.jpeg', 1, '2024-03-19 20:35:38', 20),
(17, 2, 7, 'Calligraphy Painting', 'Hand Paint Calligraphy Painting', 260.0, 'modified_6519444_2.jpeg', '6519444_2.jpeg', 1, '2024-03-19 20:36:18', 0),
(27, 2, 4, 'Islamic CalliPaint', 'Painting, Calligraphy', 500.0, 'modified_4809463_2.jpeg', '4809463_2.jpeg', 1, '2024-05-09 01:00:40', 1),
(28, 5, 4, 'Calligraphy', 'Arabic Verse, Painting, black & orange Color', 400.0, 'modified_9523045_5.jpeg', '9523045_5.jpeg', 1, '2024-05-20 05:40:19', 1),
(29, 5, 8, 'Arabic Verse', 'Verse, Fresh Water', 500.0, 'modified_6941883_5.jpg', '6941883_5.jpg', 1, '2024-05-20 05:46:39', 1),
(30, 7, 4, 'Verse', 'verse, painting combination of multi color', 500.0, 'modified_9716373_7.jpeg', '9716373_7.jpeg', 1, '2024-06-04 04:42:26', 1),
(31, 2, 4, 'Calligraphy', 'Painting', 250.0, 'modified_6633969_2.jpeg', '6633969_2.jpeg', 1, '2024-06-04 05:26:42', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `pc_id` int(11) NOT NULL,
  `pc_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`pc_id`, `pc_name`) VALUES
(4, 'Arabic'),
(6, 'Human'),
(3, 'Mountain'),
(8, 'River'),
(5, 'Trees'),
(7, 'Wall Paint');

-- --------------------------------------------------------

--
-- Table structure for table `product_download_verification`
--

CREATE TABLE `product_download_verification` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_verified` tinyint(1) DEFAULT NULL,
  `transaction_no` tinyint(1) DEFAULT NULL,
  `feedback_description` varchar(255) DEFAULT NULL,
  `feedback_stars` int(11) DEFAULT NULL,
  `feedback_submitted` tinyint(1) DEFAULT NULL,
  `delivery_boy_id` int(11) DEFAULT NULL,
  `delivery_status` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `select_payment_method` varchar(100) DEFAULT NULL,
  `receipt_file_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `full_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `cnic` varchar(20) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `rol_name` varchar(20) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `photo` varchar(256) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `registrationDate` date NOT NULL,
  `delivery_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `full_name`, `email`, `phone`, `cnic`, `gender`, `rol_name`, `password`, `photo`, `isActive`, `registrationDate`, `delivery_status`) VALUES
(1, 'raufkhalid27', 'Rauf Khalid', 'raufkhalis27@gmail.com', '03366645807', '1111111111111', 'Male', 'Administrator', 'scrypt:32768:8:1$r1uj7qL4KvRsXHkr$65d484f336c167e6026e2e1d51a104b356f9cfbf5bd98c73ba08d7f74cc5c38b0177a612f36b4c8859516cc662212d53ef4b05a2f76b9b372a2ffa8c50934c4b', '3998660_1.jpg', 1, '2024-02-17', NULL),
(2, 'asadkhan234', 'Asad Khan', 'asadkhan@gmail.com', '03366645808', '2222222222222', 'Male', 'Artist', 'scrypt:32768:8:1$r1uj7qL4KvRsXHkr$65d484f336c167e6026e2e1d51a104b356f9cfbf5bd98c73ba08d7f74cc5c38b0177a612f36b4c8859516cc662212d53ef4b05a2f76b9b372a2ffa8c50934c4b', '4930582_2.jpg', 1, '2024-03-18', NULL),
(3, 'kaleem124', 'Kaleem Khan', 'kaleem23@gmail.com', '03409836431', '3333333333333', 'Male', 'Artist', 'scrypt:32768:8:1$r1uj7qL4KvRsXHkr$65d484f336c167e6026e2e1d51a104b356f9cfbf5bd98c73ba08d7f74cc5c38b0177a612f36b4c8859516cc662212d53ef4b05a2f76b9b372a2ffa8c50934c4b', '2841069_3.jpg', 1, '2024-03-18', NULL),
(4, 'usama1234', 'Usama Khan', 'usama@gmail.com', '44444445435', '4444444444444', 'Male', 'DeliveryBoy', 'scrypt:32768:8:1$ym1Wl1nEc8Ss2a5O$ead2ecfe3beede620a26b058eeaf5640126aee9ca0832c30f39bb2772044caac082049d6ef452889cdd92479cb415e41f2082619ff971b533c47b113612ee311', NULL, 1, '2024-05-07', 'Available'),
(5, 'irsasadiq', 'Irsa Sadiq', 'irsasadiq20@gmail.com', '03441567345', '8230524567582', 'Female', 'Artist', 'scrypt:32768:8:1$NfEW3l5p093yEKap$78d5982432bd0387e1aa5c3282ca84378c6f540fa174cdc429b06977a898011338970a4b970a58e4ce1222d8e2ae214adeee8b0b86b39ddd55d51eb030d54cc0', '6151699_5.jpeg', 1, '2024-05-20', 'Available'),
(6, 'noorkhan', 'Noor Khan', 'noorkhan00@gmail.com', '03409985774', '8230356809842', 'Female', 'Artist', 'scrypt:32768:8:1$HzQpHUbd39MMPhA8$4e39ec3d91d62e40be7cc0b27c40e2c5dba618974e2e7486ec7492e73561ba7fc4ab01744c957dec94f38358cc24698d2625acafd9bcfb5912b58b57c984fc71', '4208049_6.jpeg', 1, '2024-05-20', 'Available'),
(7, 'Asher', 'Khan', 'asherkhan@gmail.com', '03418523549', '8230318860367', 'Male', 'Artist', 'scrypt:32768:8:1$68WEfj6Ys4HPTlm8$81ea188a19604bf695a40c2d5723b383b0adf68d29a0e1c37951e5f3ccc9d4409a15ead05e248d0bb89ba341ddcea8fcc4bd3effe62e9f7dc92712a2a3f3f7d9', '9036924_7.jpeg', 1, '2024-06-04', 'Available'),
(8, 'bjnbkbnkjkhb', 'dxfzxgxhcx', 'rerr@gfcg.com', '56467547656', '9898989898989', 'Male', 'Artist', 'scrypt:32768:8:1$R6pSJzFb7mPZUevW$f07159d6c193239ad422edd348256fc945ae47307715d7dc651801b05ea2c412add34bd24407f68af2cab4baec16eaea9985e6e4942cd3cc1f1c0c1c6601c1bd', NULL, 0, '2024-06-10', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `cust_phone` (`cust_phone`),
  ADD UNIQUE KEY `cust_user_name` (`cust_user_name`);

--
-- Indexes for table `make_notification`
--
ALTER TABLE `make_notification`
  ADD PRIMARY KEY (`n_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `make_report`
--
ALTER TABLE `make_report`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `pc_id` (`pc_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`pc_id`),
  ADD UNIQUE KEY `pc_name` (`pc_name`);

--
-- Indexes for table `product_download_verification`
--
ALTER TABLE `product_download_verification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `delivery_boy_id` (`delivery_boy_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `cnic` (`cnic`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `make_notification`
--
ALTER TABLE `make_notification`
  MODIFY `n_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `make_report`
--
ALTER TABLE `make_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `pc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_download_verification`
--
ALTER TABLE `product_download_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `make_notification`
--
ALTER TABLE `make_notification`
  ADD CONSTRAINT `make_notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `make_report`
--
ALTER TABLE `make_report`
  ADD CONSTRAINT `make_report_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`cust_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`p_id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`pc_id`) REFERENCES `product_category` (`pc_id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `product_download_verification`
--
ALTER TABLE `product_download_verification`
  ADD CONSTRAINT `product_download_verification_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`cust_id`),
  ADD CONSTRAINT `product_download_verification_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`p_id`),
  ADD CONSTRAINT `product_download_verification_ibfk_3` FOREIGN KEY (`delivery_boy_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
