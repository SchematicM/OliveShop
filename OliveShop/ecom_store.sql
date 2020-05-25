-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 24 2020 р., 22:12
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
-- Структура таблиці `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(2, 'Tatiana Saphira', 'tatiaCute@gmail.id', 'tatiana123', 'tatiana-saphira.jpg', 'Indonesia', 'Change the about description for Tatiana from chelsea Islan', '2222-2222-2222', 'MyMaid'),
(4, 'Nozomi Sasaki', 'papipupepo@gmail.jp', 'nozo123', 'Nozomi_Sasaki-.jpg', 'Japan', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui illum debitis dolorum ducimus aut maiores veritatis illo doloremque quibusdam placeat quod velit laudantium eligendi sunt et optio, harum in suscipit.', '312-009-323', 'MyWife'),
(5, 'Iko Uwais', 'iko@gmail.id', 'iko123', 'iko.png', 'Indonesia', 'This is for IKO', '081806833157', 'Fighter / Actor'),
(6, 'Tyxa Khoma', 'test@test.com', '1234', 'AAWX9988.JPG', 'Ukraine', 'chotka baba) ahahahha', '1234', 'my'),
(7, 'Solomiya Rybai', 'so@gmail.com', '12345', 's_my.jpg', 'Ukraine', 'girl girl girl girl girl ', '0955555559', 'Just Student');

-- --------------------------------------------------------

--
-- Структура таблиці `boxes_section`
--

CREATE TABLE `boxes_section` (
  `box_id` int(10) NOT NULL,
  `box_title` text NOT NULL,
  `box_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `boxes_section`
--

INSERT INTO `boxes_section` (`box_id`, `box_title`, `box_desc`) VALUES
(2, 'Who we are.', 'We believe in a world where you have total freedom to be you, without judgement. To experiment. To express yourself. To be brave and grab life as the extraordinary adventure it is. So we make sure everyone has an equal chance to discover all the amazing things they’re capable of – no matter who they are, where they’re from or what looks they like to boss. We exist to give you the confidence to be whoever you want to be.'),
(3, 'Brands.', 'In Oliveshop we always aim to bring new and original fashion to you, with great design at the heart of everything we create. \r\nWe select the best brends to give you the biggest variety, amazing exclusives and coolest collaborations. '),
(5, 'Prices.', 'Shopping for cute, stylish, but inexpensive clothing can be hard! Maybe you don\'t have time to shop in person, or the stores near you just don\'t have the selection you need — or they\'re ALWAYS out of stock of the things you want. We\'re here to help with a selection of clothes that offer wallet-friendly (and fashionable) clothing so you can stay on-trend AND on-budget.');

-- --------------------------------------------------------

--
-- Структура таблиці `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Структура таблиці `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(1, ' Men ', 'yes', 'men.jpg'),
(2, 'Women', 'no', 'women.jpg'),
(3, 'Kids', 'no', 'kids.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(5, 'Rianti', 'Riannti@gmail.com', 'rianti123', 'India', 'Calcuta', '8891822', 'Anywhere you want', 'member1.jpg', '::1'),
(6, 'James Bono', 'jamesbono@gmail.com', 'james1123', 'England', 'London', '555-2255-222', 'Hyde Park', 'member2.jpg', '::1'),
(8, 'Tyxa Khoma', 'tyxa@khoma.com', '1234', 'Ukraine', 'Lviv', '0671111111', 'shevchenka 368, test2', 'AAWX9988.JPG', '::1'),
(9, 'Solomiya', 'sol@gmail.com', '12345', 'Ukraine', 'Lviv', '0955555559', 'Pasichna,55', 's_my.jpg', '::1');

-- --------------------------------------------------------

--
-- Структура таблиці `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(11, 6, 300, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(12, 6, 10, 206863956, 1, 'Small', '2019-02-06', 'Complete'),
(13, 7, 10, 472959863, 1, '', '2020-05-24', 'Complete'),
(14, 9, 5000, 1980469001, 5, 'Medium', '2020-05-24', 'Complete'),
(16, 9, 1200, 806447541, 4, 'XL', '2020-05-24', 'pending'),
(17, 9, 300, 390355558, 1, 'XL', '2020-05-24', 'pending'),
(18, 9, 40, 3836970, 1, 'XXL', '2020-05-24', 'pending'),
(19, 8, 600, 747566244, 1, 'S', '2020-05-24', 'Complete'),
(20, 8, 120, 557874368, 1, '', '2020-05-24', 'Complete');

-- --------------------------------------------------------

--
-- Структура таблиці `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(1, 'Cropp', 'no', 'cropp.jpg'),
(2, 'Bershka', 'yes', 'bershka.png'),
(3, 'Zara', 'yes', 'zara.jpg'),
(4, 'Sinsay', 'no', 'sinsay.jpg'),
(5, 'Stradivarius', 'no', 'stradivarius.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(6, 206863956, 10, 'Western Union', 123123, 321321, '02-09-2019'),
(7, 472959863, 1200, 'Back Code', 123098, 5827, '24.05.2020'),
(8, 2051256671, 5000, 'Payoneer', 456789, 987654, '24/05/2020'),
(9, 2051256671, 275, 'Payoneer', 456789, 987654, '12/10/2010'),
(10, 747566244, 600, 'Back Code', 2147483647, 5827, '24.05.2020'),
(11, 2018426470, 103, 'Western Union', 2147483647, 2147483647, '24.05.2020');

-- --------------------------------------------------------

--
-- Структура таблиці `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `size`, `order_status`) VALUES
(17, 8, 747566244, '30', 1, 'S', 'pending');

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(20, 1, 2, 4, '2020-05-24 16:48:04', 'Maroon Puffer Jacket', 'Women_Maroon_Solid_Puffer_Jacket_1.jpg', 'Women_Maroon_Solid_Puffer_Jacket_2.jpg', 'Women_Maroon_Solid_Puffer_Jacket_3.jpg', 120, 'Puffer Jacket', '<p>Maroon solid puffer jacket, has a stand collar, two pockets, zip closure, long sleeves, straight hem, polyester lining</p>\r\n<p>shell 100% polyamide,<br />lining &amp; filler 100% polyester<br />Dry-clean</p>'),
(21, 1, 2, 2, '2020-05-24 16:52:56', 'Blue Denim Jacket', 'Denim_Jacket_1.jpg', 'Denim_Jacket_2.jpg', 'Denim_Jacket_3.jpg', 70, 'Denim Jacket', '<p>Blue washed jacket, has a spread collar, 2 pockets, button closure, long sleeves, straight hem, and unlined lining</p>'),
(22, 5, 1, 5, '2020-05-24 16:56:36', 'Men Pink T-shirt', 'Men_Pink_Tshirt_1.jpg', 'Men_Pink_Tshirt_2.jpg', 'Men_Pink_Tshirt_3.jpg', 45, 'Men Pink Fit T-shirt', '<p>Pink solid T-shirt, has a polo collar, short sleeves.</p>'),
(23, 2, 2, 1, '2020-05-24 17:00:02', 'Blue Skinny Jeans', 'Blue_Skinny_Jeans_1.jpg', 'Blue_Skinny_Jeans_2.jpg', 'Blue_Skinny_Jeans_3.jpg', 255, 'Blue Jeans', '<p>Blue medium wash 5-pocket mid-rise ankle length jeans, clean look with heavy fade, has a button and zip closure, waistband with belt loops</p>'),
(24, 3, 1, 1, '2020-05-24 17:03:40', 'Yellow Pullover', 'Yellow_pullover_1.jpg', 'Yellow_pullover_2.jpg', 'Yellow_pullover_3.jpg', 300, 'Printed Hooded Pullover', '<p>Mustard yellow printed pullover sweatshirt, has a hood, two pockets, long sleeves, straight hem</p>'),
(25, 5, 2, 4, '2020-05-24 17:07:24', 'Grey T-shirt', 'Grey_T-shirt_1.jpg', 'Grey_T-shirt_2.jpg', 'Grey_T-shirt_3.jpg', 30, 'Grey Printed T-shirt', '<p>Grey Melange printed T-shirt, has a round neck, and short sleeves</p>\r\n<p>Material: 100% cotton<br />Machine Wash</p>'),
(26, 2, 1, 5, '2020-05-24 17:11:22', 'Men Skinny Jeans', 'Men_Blue_Skinny_Jeans_1.jpg', 'Men_Blue_Skinny_Jeans_2.jpg', 'Men_Blue_Skinny_Jeans_3.jpg', 410, 'Men Blue Jeans', '<p>Blue medium wash 5-pocket mid-rise jeans, mildly distressed with light fade, has a button and zip closure, waistband with belt loops</p>'),
(27, 4, 3, 4, '2020-05-24 17:13:56', 'Peach-Coloured Dress', 'Girls_Peach_Coloured_Dress_1.jpg', 'Girls_Peach_Coloured_Dress_2.jpg', 'Girls_Peach_Coloured_Dress_3.jpg', 220, 'Peach-Coloured Dress', '<p>Peach-Coloured self-design knitted fit and flare dress, has a round neck, sleeveless, button closure, an attached lining, flared hem.</p>'),
(28, 5, 3, 2, '2020-05-24 17:16:48', 'Yellow Printed T-shirt', 'Girls_Yellow_Printed_T-shirt_1.jpg', 'Girls_Yellow_Printed_T-shirt_2.jpg', 'Girls_Yellow_Printed_T-shirt_3.jpg', 50, 'Yellow T-shirt', '<p>Yellow printed T-shirt, has a round neck, short sleeves</p>\r\n<p>Cotton<br />Machine-wash</p>'),
(29, 3, 1, 1, '2020-05-24 17:19:34', 'Men Black Sweatshirt', 'Black _Hooded_Sweatshirt_1.jpg', 'Black _Hooded_Sweatshirt_2.jpg', 'Black _Hooded_Sweatshirt_3.jpg', 550, 'Men Sweatshirt Black', '<p>Black printed sweatshirt, has an attached hood, long sleeves, straight hem</p>'),
(30, 4, 2, 3, '2020-05-24 17:22:32', 'Red Solid Dress', 'Women_Red_Dress_1.jpg', 'Women_Red_Dress_2.jpg', 'Women_Red_Dress_3.jpg', 600, 'Solid A-Line Dress', '<p>Red solid knitted and woven A-line dress with gathered detail, has a tie-up neck, three-quarter sleeves, button closure, an attached lining, and flounce hem</p>');

-- --------------------------------------------------------

--
-- Структура таблиці `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(1, '  Jackets ', 'yes', 'jacket.jpg'),
(2, 'Jeans', 'no', 'jeans.jpg'),
(3, 'Hoodies', 'no', 'hoodie.jpg'),
(4, ' Dresses ', 'yes', 'dress.jpg'),
(5, ' T-Shirts ', 'no', 'tshirt.jpg');

-- --------------------------------------------------------

--
-- Структура таблиці `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` text NOT NULL,
  `slide_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп даних таблиці `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`, `slide_url`) VALUES
(8, 'Slide Number 10', 'zara.jpg', 'http://localhost/m-dev-store/index.php'),
(9, 'Slide Number 11', 'Bershka.jpg', 'http://localhost/m-dev-store/index.php'),
(16, 'Slide Number 13', 'stradivarius.jpg', 'http://localhost/m-dev-store/index.php'),
(17, 'Slide Number 14', 'sinsay.jpg', 'http://localhost/m-dev-store/index.php');

-- --------------------------------------------------------

--
-- Структура таблиці `terms`
--

CREATE TABLE `terms` (
  `term_id` int(10) NOT NULL,
  `term_title` varchar(100) NOT NULL,
  `term_link` varchar(100) NOT NULL,
  `term_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп даних таблиці `terms`
--

INSERT INTO `terms` (`term_id`, `term_title`, `term_link`, `term_desc`) VALUES
(7, 'PRIVACY POLICY', 'link_1', '<p><span style=\"font-size: 14px;\">SECTION 1 - WHAT DO WE DO WITH YOUR INFORMATION?</span></p>\r\n<p><span style=\"font-size: 14px;\">When you purchase something from our store, as part of the buying and selling process, we collect the personal information you give us such as your name, address and email address.</span></p>\r\n<p><span style=\"font-size: 14px;\">When you browse our store, we also automatically receive your computer&rsquo;s internet protocol (IP) address in order to provide us with information that helps us learn about your browser and operating system.</span></p>\r\n<p><span style=\"font-size: 14px;\">Email marketing (if applicable): With your permission, we may send you emails about our store, new products, and other updates.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 14px;\">SECTION 2 - CONSENT</span></p>\r\n<p><span style=\"font-size: 14px;\">How do you get my consent?</span></p>\r\n<p><span style=\"font-size: 14px;\">When you provide us with personal information to complete a transaction, verify your credit card, place an order, arrange for a delivery or return a purchase, we imply that you consent to our collecting it and using it for that specific reason only.</span></p>\r\n<p><span style=\"font-size: 14px;\">If we ask for your personal information for a secondary reason, like marketing, we will either ask you directly for your expressed consent or provide you with an opportunity to say no.</span></p>\r\n<p><span style=\"font-size: 14px;\">How do I withdraw my consent?</span></p>\r\n<p><span style=\"font-size: 14px;\">If after you opt-in, you change your mind, you may withdraw your consent for us to contact you, for the continued collection, use or disclosure of your information, at any time, by contacting us at Babagala711@gmail.com</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">SECTION 3 - DISCLOSURE</span></p>\r\n<p><span style=\"font-size: 14px;\">We may disclose your personal information if we are required by law to do so or if you violate our Terms of Service.</span></p>\r\n<p>&nbsp;</p>\r\n<p><span style=\"font-size: 14px;\">SECTION 4 - SECURITY</span></p>\r\n<p><span style=\"font-size: 14px;\">To protect your personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost, misused, accessed, disclosed, altered or destroyed.</span></p>'),
(8, 'SHIPPING POLICY', 'link_2', '<p><span style=\"font-size: 14px;\">Free shipping for more than 30 countries.</span></p>\r\n<p><span style=\"font-size: 14px;\">Standard shipping time 5-7 days.</span></p>'),
(9, 'REFUND POLICY', 'link_3', '<p><span style=\"font-size: 14px;\">Returns</span></p>\r\n<p><span style=\"font-size: 14px;\">Our policy lasts 40 days. If 40 days have gone by since your purchase, unfortunately, we can&rsquo;t offer you a refund or exchange.</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">To be eligible for a return, your item must be unused and in the same condition that you received it. It must also be in the original packaging and labels.</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">Several types of goods are exempt from being returned. Perishable goods such as food, flowers, newspapers or magazines cannot be returned. We also do not accept products that are intimate or sanitary goods, hazardous materials, or flammable liquids or gases.</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">There are certain situations where only partial refunds are granted (if applicable)</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">Shipping</span></p>\r\n<p><span style=\"font-size: 14px;\">To return your product, you should get mail addresses by email:&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">m@gmail.com&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">s@gmail.com&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">You will be responsible for paying for your own shipping costs for returning your item. Shipping costs are non-refundable. If you receive a refund, the cost of return shipping will be deducted from your refund.</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">Depending on where you live, the time it may take for your exchanged product to reach you may vary.</span></p>\r\n<p><span style=\"font-size: 14px;\">&nbsp;</span></p>\r\n<p><span style=\"font-size: 14px;\">If you are shipping an item over $75, you should consider using a trackable shipping service or purchasing shipping insurance. We don&rsquo;t guarantee that we will receive your returned item.</span></p>\r\n<p><span style=\"font-size: 14px;\">After Arrived returning products and processing quality we will refund the customer paid the amount.</span></p>\r\n<p>&nbsp;</p>');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Індекси таблиці `boxes_section`
--
ALTER TABLE `boxes_section`
  ADD PRIMARY KEY (`box_id`);

--
-- Індекси таблиці `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Індекси таблиці `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Індекси таблиці `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Індекси таблиці `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Індекси таблиці `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Індекси таблиці `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Індекси таблиці `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

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
-- Індекси таблиці `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`term_id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `boxes_section`
--
ALTER TABLE `boxes_section`
  MODIFY `box_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблиці `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблиці `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT для таблиці `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблиці `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблиці `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблиці `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблиці `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблиці `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `terms`
--
ALTER TABLE `terms`
  MODIFY `term_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
