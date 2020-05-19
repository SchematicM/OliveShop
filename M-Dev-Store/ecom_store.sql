-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 19 2020 р., 13:42
-- Версія сервера: 10.4.11-MariaDB
-- Версія PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `ecom_store`
--

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(1, 'Men', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(2, 'Women', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(3, 'Kids', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(4, 'Other', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 1, 2, '2020-05-18 12:07:03', 'Tokichoi Front Pocket Collared Dress', 'product_front.jpg', 'product-back.jpg', 'product_hang.jpg', 66, 'Dress', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse aliquid laudantium nulla, deserunt itaque a consectetur, aut asperiores. Quae enim quos, quo tenetur ut ex quibusdam et ad, nam vel.</span></p>'),
(2, 4, 3, '2020-05-18 12:49:06', 'Boys Puffer Coat With Detachable Hood', 'boys-Puffer-Coat-With-Detachable-Hood-1.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-2.jpg', 'boys-Puffer-Coat-With-Detachable-Hood-3.jpg', 121, 'Hood', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veritatis cupiditate distinctio beatae doloremque quae nobis, asperiores quod cumque ab nemo totam debitis laboriosam quia ipsam iusto, laudantium libero. Ab, beatae.</span></p>'),
(3, 5, 2, '2020-05-18 12:55:05', 'Girl Polos T-Shirt', 'g-polos-tshirt-1.jpg', 'g-polos-tshirt-2.jpg', '', 55, 'Shirt', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, rerum! Modi neque atque dicta eaque reprehenderit officia eius repudiandae magni. Officiis suscipit pariatur repellendus doloremque obcaecati beatae vitae, blanditiis magnam.</span></p>'),
(4, 1, 1, '2020-05-18 12:58:47', 'Man Geox Winter Jacket', 'Man-Geox-Winter-jacket-1.jpg', 'Man-Geox-Winter-jacket-2.jpg', 'Man-Geox-Winter-jacket-3.jpg', 100, 'Snake Skin', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, rerum! Modi neque atque dicta eaque reprehenderit officia eius repudiandae magni. Officiis suscipit pariatur repellendus doloremque obcaecati beatae vitae, blanditiis magnam.</span></p>'),
(5, 1, 2, '2020-05-18 13:00:42', 'Women Red Winter Jacket', 'Red-Winter-jacket-1.jpg', 'Red-Winter-jacket-2.jpg', 'Red-Winter-jacket-3.jpg', 103, 'Korean Jacket', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, rerum! Modi neque atque dicta eaque reprehenderit officia eius repudiandae magni. Officiis suscipit pariatur repellendus doloremque obcaecati beatae vitae, blanditiis magnam.</span></p>'),
(6, 4, 2, '2020-05-18 13:02:52', 'Women Waxed Cotton Coat', 'waxed-cotton-coat-woman-1.jpg', 'waxed-cotton-coat-woman-2.jpg', 'waxed-cotton-coat-woman-3.jpg', 211, 'Cotton', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, rerum! Modi neque atque dicta eaque reprehenderit officia eius repudiandae magni. Officiis suscipit pariatur repellendus doloremque obcaecati beatae vitae, blanditiis magnam.</span></p>'),
(7, 3, 2, '2020-05-18 13:04:43', 'High Heels Pantofel Brukat', 'High Heels Women Pantofel Brukat-1.jpg', 'High Heels Women Pantofel Brukat-2.jpg', 'High Heels Women Pantofel Brukat-3.jpg', 45, 'High Heel', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, rerum! Modi neque atque dicta eaque reprehenderit officia eius repudiandae magni. Officiis suscipit pariatur repellendus doloremque obcaecati beatae vitae, blanditiis magnam.</span></p>'),
(8, 3, 1, '2020-05-18 13:06:51', 'Adidas Suarez Slop On', 'Man-Adidas-Suarez-Slop-On-1.jpg', 'Man-Adidas-Suarez-Slop-On-2.jpg', 'Man-Adidas-Suarez-Slop-On-3.jpg', 51, 'Adidas Suarez', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt, rerum! Modi neque atque dicta eaque reprehenderit officia eius repudiandae magni. Officiis suscipit pariatur repellendus doloremque obcaecati beatae vitae, blanditiis magnam.</span></p>'),
(9, 2, 1, '2020-05-18 16:31:06', 'Mont Blanc Belt Man', 'Mont-Blanc-Belt-man-1.jpg', 'Mont-Blanc-Belt-man-2.jpg', 'Mont-Blanc-Belt-man-3.jpg', 166, 'Belt', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus in, assumenda accusantium, velit dignissimos fugit atque autem blanditiis iusto. Molestiae ab tenetur commodi mollitia, in deserunt similique, odit soluta perferendis!</span></p>'),
(10, 2, 2, '2020-05-18 16:32:22', 'Diamond Heart Ring', 'women-diamond-heart-ring-1.jpg', 'women-diamond-heart-ring-2.jpg', 'women-diamond-heart-ring-3.jpg', 300, 'Ring', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minus in, assumenda accusantium, velit dignissimos fugit atque autem blanditiis iusto. Molestiae ab tenetur commodi mollitia, in deserunt similique, odit soluta perferendis!</span></p>'),
(11, 5, 1, '2020-05-19 10:06:53', 'Grey Man T-Shirt', 'grey-man-1.jpg', 'grey-man-2.jpg', 'grey-man-3.jpg', 50, 'Casual', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt voluptatem quo aliquid harum deserunt accusantium dolore facere dicta iure, nulla totam quisquam eveniet dolorum libero dolor! Hic aut repellendus in?</span></p>'),
(12, 5, 1, '2020-05-19 10:08:23', 'Man Polo Casual T-Shirt', 'Man-Polo-1.jpg', 'Man-Polo-2.jpg', 'Man-Polo-3.jpg', 45, 'Casual', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt voluptatem quo aliquid harum deserunt accusantium dolore facere dicta iure, nulla totam quisquam eveniet dolorum libero dolor! Hic aut repellendus in?</span></p>'),
(13, 5, 1, '2020-05-19 10:10:28', 'Boy Polos T-Shirt', 'polos-tshirt-1.jpg', 'polos-tshirt-2.jpg', '', 40, 'Casual', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt voluptatem quo aliquid harum deserunt accusantium dolore facere dicta iure, nulla totam quisquam eveniet dolorum libero dolor! Hic aut repellendus in?</span></p>'),
(14, 1, 1, '2020-05-19 10:25:30', 'Levi\'s Trucker Jacket', 'levis-Trucker-Jacket.jpg', 'levis-Trucker-Jacket-2.jpg', 'levis-Trucker-Jacket-3.jpg', 98, 'Trucker', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt voluptatem quo aliquid harum deserunt accusantium dolore facere dicta iure, nulla totam quisquam eveniet dolorum libero dolor! Hic aut repellendus in?</span></p>'),
(15, 1, 1, '2020-05-19 10:25:44', 'Merlin Engineer Jacket', 'Merlin-Enginner-Jacket.jpg', 'Merlin-Engineer-Jacket-2.jpg', 'Merlin-Engineer-Jacket-3.jpg', 90, 'Casual Jacket', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt voluptatem quo aliquid harum deserunt accusantium dolore facere dicta iure, nulla totam quisquam eveniet dolorum libero dolor! Hic aut repellendus in?</span></p>'),
(16, 1, 2, '2020-05-19 10:25:56', 'Mobile Power Jacket', 'Mobile-Power-Jacket.jpg', 'Mobile-Power-Jacket-2.jpg', 'Mobile-Power-Jacket-3.jpg', 99, 'Casual', '<p><span style=\"font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Incidunt voluptatem quo aliquid harum deserunt accusantium dolore facere dicta iure, nulla totam quisquam eveniet dolorum libero dolor! Hic aut repellendus in?</span></p>');

-- --------------------------------------------------------

--
-- Структура таблиці `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(1, 'Jackets', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(2, 'Accessories', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(3, 'Shoes', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(4, 'Coats', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.'),
(5, 'T-Shirt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptatibus ad ipsam optio veritatis iure quod eaque quas recusandae, sequi, voluptatem dolor libero perferendis illo mollitia cumque cupiditate delectus ipsum doloribus.');

-- --------------------------------------------------------

--
-- Структура таблиці `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'Slide number 1', 'slide-1.jpg'),
(2, 'Slide number 2', 'slide-2.jpg'),
(3, 'Slide number 3', 'slide-3.jpg'),
(4, 'Slide number 4', 'slide-4.jpg');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Індекси таблиці `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Індекси таблиці `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблиці `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
