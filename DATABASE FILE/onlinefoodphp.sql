-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 01, 2024 at 06:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(1, 'admin', 'CAC29D7A34687EB14B37068EE4708E7B', 'admin@mail.com', '', '2022-05-27 13:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `slogan` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `slogan`, `price`, `img`) VALUES
(22, 5, 'Classic Burger', 'A juicy beef patty topped with cheddar cheese, crispy lettuce, ripe tomatoes, and tangy pickles, served on a toasted sesame seed bun. Served with a side of golden fries.', 568.00, '65b6148ca98ac.jpg'),
(27, 5, 'Margherita Pizza', 'Traditional Italian pizza topped with fresh mozzarella cheese, tangy tomato sauce, and aromatic basil leaves. Baked to perfection in a wood-fired oven.', 430.00, '65b615cf2a8d8.jpg'),
(29, 5, 'Doro Wat', 'A traditional Ethiopian stew made with tender chicken simmered in a spicy berbere sauce, served with injera (spongy sourdough flatbread). The rich flavors of spices and onions make this dish a favorite.', 560.00, '65b616fed5d73.jpg'),
(30, 5, 'Kitfo', 'Finely minced raw beef seasoned with mitmita (a spicy chili powder) and seasoned butter. Served with injera and accompanied by a side of Ayib (Ethiopian cheese) and cooked greens. A delicacy for adventurous meat lovers.', 390.00, '65b6173b359be.jpg'),
(31, 6, 'Vegetarian Combo', 'A platter of various vegetable-based dishes such as Misir Wot (spicy red lentils), Gomen (collard greens), Atkilt Wot (spiced cabbage and carrots), and Shiro (ground chickpeas or lentils). Served with injera, it offers a f', 230.00, '65b6178aca9b9.jpg'),
(32, 7, 'Chocolate Lava Cake', 'Warm chocolate cake with a gooey, molten chocolate center, served with a scoop of creamy vanilla ice cream and drizzled with a luscious chocolate sauce. A decadent dessert for chocolate enthusiasts', 340.00, '65b637b6decb0.jpg'),
(34, 6, 'Fish and Chips', 'Crispy beer-battered fish fillets served with a generous portion of golden fries. Accompanied by tartar sauce and a wedge of lemon.', 420.00, '65b639a4a9748.jpg'),
(35, 6, 'Spaghetti Bolognese', 'Classic spaghetti pasta tossed in a rich and savory meat sauce made with ground beef, tomatoes, onions, garlic, and Italian herbs. Finished with a sprinkle of Parmesan cheese.', 320.00, '65b63a0b6cfd6.jpg'),
(36, 7, 'Chicken Parmesan', 'Breaded chicken breast topped with marinara sauce and melted mozzarella cheese. Served over a bed of spaghetti with a side of garlic bread. A hearty and comforting Italian favorite.', 430.00, '65b63b6397f8f.jpg'),
(37, 7, 'Shawarma Plate', 'Tender slices of marinated chicken or beef, slow-roasted on a vertical spit, served with a side of fluffy rice, fresh salad, and warm pita bread. Accompanied by garlic sauce and tahini for dipping.', 487.00, '65b63bce2a49e.jpg'),
(38, 7, 'Sambusa', 'Crispy pastry pockets filled with a savory mixture of spiced ground beef or vegetables, such as potatoes, peas, and carrots. Served with a tangy tamarind chutney for dipping. A flavorful and popular appetizer across Arab c', 245.00, '65b63c3a810d0.jpg'),
(39, 8, 'Kabsa', 'A flavorful Saudi Arabian rice dish made with long-grain rice, aromatic spices, and either chicken or lamb. Served with a mix of roasted nuts, raisins, and a side salad. A hearty and satisfying main course.', 765.00, '65b63ec65f508.jpg'),
(40, 8, 'Mandi', 'A traditional Yemeni dish featuring tender and aromatic roasted chicken or lamb, served over a bed of fragrant basmati rice cooked with a blend of spices. Garnished with toasted nuts and accompanied by a side of flavorful ', 540.00, '65b63fe0435fe.jpg'),
(41, 8, 'Vegetarian Lasagna', 'Layered lasagna sheets with a delicious filling of sautéed vegetables, ricotta cheese, and marinara sauce. Baked to perfection with a golden, cheesy topping.', 310.00, '65b6405c0c6ed.jpg'),
(42, 8, 'Fish Tacos', 'Soft corn tortillas filled with battered and fried fish, topped with tangy slaw, diced tomatoes, and a drizzle of creamy sauce. Served with a side of salsa and guacamole. A tasty and popular choice.', 510.00, '65b64115320e7.jpg'),
(43, 8, 'Grilled Salmon', 'Fresh salmon fillet marinated in herbs and grilled to perfection. Served with a side of roasted vegetables and your choice of rice or mashed potatoes. A healthy and flavorful seafood option.', 410.00, '65b6418c02c32.jpg'),
(49, 9, 'dulet', 'Dulet is a hearty dish made from a mixture of minced organ meats, such as liver, tripe, and lamb, sautéed with spices, onions, and peppers. It is a popular street food in Ethiopia, known for its bold and robust flavors.', 450.00, '65b81e4879bbe.jpg'),
(50, 9, 'tibs', 'Tibs is a popular Ethiopian dish made with sautéed or grilled meat, such as beef, lamb, or chicken. The meat is typically marinated with spices and cooked with onions, peppers, and other vegetables. Tibs is known for its r', 340.00, '65b81ee3002c6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `remark`
--

CREATE TABLE `remark` (
  `id` int(11) NOT NULL,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `remark`
--

INSERT INTO `remark` (`id`, `frm_id`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'cancelled', 'none', '2022-05-01 05:17:49'),
(2, 3, 'cancelled', 'none', '2022-05-27 11:01:30'),
(3, 2, 'cancelled', 'thank you for your order!', '2022-05-27 11:11:41'),
(4, 3, 'cancelled', 'none', '2022-05-27 11:42:35'),
(5, 4, 'cancelled', 'none', '2022-05-27 11:42:55'),
(6, 1, 'cancelled', 'none', '2022-05-27 11:43:26'),
(7, 7, 'cancelled', 'none', '2022-05-27 13:03:24'),
(8, 8, 'cancelled', 'none', '2022-05-27 13:03:38'),
(9, 9, 'cancelled', 'thank you', '2022-05-27 13:03:53'),
(10, 7, 'cancelled', 'thank you for your ordering with us', '2022-05-27 13:04:33'),
(11, 8, 'cancelled', 'thanks ', '2022-05-27 13:05:24'),
(12, 5, 'cancelled', 'none', '2022-05-27 13:18:03'),
(13, 10, 'cancelled', 'delivered', '2024-01-29 15:29:28'),
(14, 11, 'cancelled', 'cancelled', '2024-01-29 15:30:53'),
(15, 11, 'cancelled', 'deliverd', '2024-01-29 20:22:55'),
(16, 12, 'cancelled', 'delivered', '2024-01-30 07:12:06'),
(17, 13, 'cancelled', 'on the way', '2024-01-30 08:03:23'),
(18, 21, 'cancelled', 'delivered', '2024-01-30 12:19:00'),
(19, 21, 'cancelled', 'dispatch', '2024-01-30 12:20:32'),
(20, 23, 'cancelled', 'deliverd', '2024-01-30 12:21:22'),
(21, 21, 'cancelled', 'deliverd', '2024-01-30 15:05:32'),
(22, 25, 'cancelled', 'ccanceled', '2024-01-30 15:07:12'),
(23, 26, 'cancelled', 'closed', '2024-01-31 19:42:23'),
(24, 27, 'cancelled', 'delivered', '2024-01-31 19:46:50'),
(25, 28, 'cancelled', 'delivered', '2024-01-31 19:49:27'),
(26, 38, 'closed', 'delivered', '2024-01-31 21:44:53'),
(27, 41, 'closed', 'delivered', '2024-01-31 21:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(5, 1, 'Addis-sheraton', 'addis-sheraton@gamil.com', '0991792427', 'https://www.marriott.com/reservation/rateListMenu.mi?dclid=CjgKEAiAv8SsBhDw-6_HpbfpsyYSJABf5-6xs00GBaLRYyfu3TLo8aciQUGKd84Mar8LkCUjzExF7_D_BwE&cid=REF_GLB0002Y1H_GLE00070B2_GLF000C19', '6am', '5pm', '24hr-x7', ' 378 ', '65b5ff6a04b52.jpg', '2024-01-28 07:16:58'),
(6, 1, 'kuriftu-resort', 'kuriftu131@gmail.com', '+251 11 517 0000', 'www.kuriftu.com', '9am', '11pm', '24hr-x7', 'addiss abeba,arat killo', '65b5ffd6e74f2.jpg', '2024-01-28 07:18:46'),
(7, 1, 'haile-resorts', 'haile345@gmail.com', '+251 116 92 20 56', 'https://hailehotelsandresorts.com/', '8am', '12am', '24hr-x7', 'addis abeba,lamberet', '65b600176ba15.jpg', '2024-01-28 07:19:51'),
(8, 1, 'Hilton-addis', 'hilton31@gmail.com', '+251115170000', 'www.hilton.com', '10am', '1am', '24hr-x7', 'addiss abeba,arat killo', '65b60084009e6.jpg', '2024-01-28 07:21:40'),
(9, 5, 'Totot', 'totot@gmail.com', '+251115170000', 'www.totot.com', '7am', '12am', '24hr-x7', 'gerji,addiss abeba', '65b81ca631e74.jpg', '2024-01-29 21:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'Continental', '2022-05-27 08:07:35'),
(4, 'American', '2021-04-07 08:45:28'),
(5, 'ethiopian', '2024-01-29 21:40:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `role` enum('user','admin','restaurant') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`, `role`) VALUES
(1, 'abdusomed', 'Abdusomed', 'Abdushuker', 'abdusomed@mail.com', '1458965547', 'a32de55ffd7a9c4101a0c5c8788b38ed', 'Addis Ababa', 1, '2024-01-31 11:04:09', 'user'),
(2, 'bethlhem', 'Bethlehem', 'Demsis', 'bethlehem@mail.com', '3578545458', 'bc28715006af20d0e961afd053a984d9', 'Addis Ababa', 1, '2024-01-31 11:04:09', 'user'),
(3, 'eliyas', 'Eliyas', 'Abera', 'eliyas@mail.com', '0258545696', '58b2318af54435138065ee13dd8bea16', 'Addis Ababa', 1, '2024-01-03 05:41:37', 'user'),
(4, 'fethiya', 'Fethiya', 'Jeylan', 'fethiya@mail.com', '7412580010', '5f4dcc3b5aa765d61d8327deb882cf99', 'Addis Ababa', 1, '2024-01-04 02:14:42', 'user'),
(5, 'natnael', 'Natinael', 'Zewdu', 'natinael@mail.com', '7896547850', '5f4dcc3b5aa765d61d8327deb882cf99', 'Addis Ababa', 0, '2024-01-31 23:28:41', 'user'),
(6, 'suhayb', 'Suhayb', 'Muhammed', 'suhayb@mail.com', '7896969696', '5f4dcc3b5aa765d61d8327deb882cf99', 'Addis Ababa', 0, '2024-01-31 19:22:13', 'user'),
(7, 'ezedebrahim', 'Ezedin', 'Ebrahim', 'ezedinebrahim131@gmail.com', '0991792427', '9157121342226c986f67641c6d278074', '378', 1, '2024-01-28 07:09:19', 'user'),
(8, 'eyoba', 'eyob', 'birhanu', 'eyob111@gmail.com', '0956288489', 'ef93fe0a165eac3e796877497977cfaf', 'piyasa', 1, '2024-01-30 10:50:17', 'user'),
(9, 'betty', 'bethlhem', 'demsis', 'bety@gmail.com', '0991792427', '64ad3fb166ddb41a2ca24f1803b8b722', 'addiss abeba,dembel', 1, '2024-01-30 12:04:43', 'user'),
(10, 'admin', 'admin', 'admin', 'admin@gmail.com', '0989786534', 'cac29d7a34687eb14b37068ee4708e7b', 'addiss abeba', 1, '2024-01-31 11:05:24', 'admin'),
(11, 'restaurant', 'restaurant', 'restaurant', 'restaurant@gmail.com', '0987654532', '6d4b62960a6aa2b1fff43a9c1d95f7b2', 'adiss abeba', 1, '2024-01-31 11:05:24', 'restaurant'),
(12, 'zubeyr', 'zubeyr', 'muhammed', 'zubeyr@gmail.com', '0987654321', 'fdb6a50d4bdfd22d6fe55ab2e290c3f1', 'adiss', 1, '2024-01-31 11:10:05', 'user'),
(13, 'feya', 'faysel', 'agile', 'feya@gmail.com', '0987654321', '6ebe76c9fb411be97b3b0d48b791a7c9', 'jimma', 0, '2024-01-31 19:33:47', 'user'),
(14, 'seya', 'seid', 'hussien', 'seya@gmail.com', '0991792427', '5e8667a439c68f5145dd2fcbecf02209', '37856', 0, '2024-02-01 05:34:48', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(21, 8, 'tibs', 1, 340.00, 'closed', '2024-01-30 15:05:32'),
(27, 7, 'Margherita Pizza', 1, 430.00, 'cancelled', '2024-01-31 21:46:25'),
(34, 7, 'Margherita Pizza', 1, 430.00, 'cancelled', '2024-01-31 20:38:23'),
(35, 7, 'Classic Burger', 1, 568.00, 'cancelled', '2024-01-31 20:47:31'),
(36, 7, 'Classic Burger', 1, 568.00, 'cancelled', '2024-01-31 21:08:46'),
(37, 7, 'Classic Burger', 1, 568.00, 'cancelled', '2024-01-31 21:12:44'),
(38, 7, 'Margherita Pizza', 1, 430.00, 'cancelled', '2024-01-31 21:46:04'),
(39, 7, 'Classic Burger', 1, 568.00, 'cancelled', '2024-01-31 21:31:51'),
(40, 7, 'Classic Burger', 1, 568.00, 'cancelled', '2024-01-31 21:47:21'),
(41, 7, 'Margherita Pizza', 1, 430.00, 'cancelled', '2024-01-31 21:48:35'),
(42, 7, 'Doro Wat', 1, 560.00, NULL, '2024-01-31 21:47:09'),
(43, 7, 'Kitfo', 1, 390.00, NULL, '2024-01-31 21:47:09'),
(44, 7, 'doro wot', 1, 678.00, NULL, '2024-01-31 21:47:09'),
(45, 7, 'Classic Burger', 1, 568.00, NULL, '2024-01-31 23:25:40'),
(46, 14, 'Classic Burger', 1, 568.00, NULL, '2024-02-01 05:34:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `remark`
--
ALTER TABLE `remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `remark`
--
ALTER TABLE `remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
