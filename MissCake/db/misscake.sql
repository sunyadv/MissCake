-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-10-17 13:42:26
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `misscake`
--

-- --------------------------------------------------------

--
-- 表的结构 `mc_index_carousel`
--

CREATE TABLE `mc_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mc_index_product`
--

CREATE TABLE `mc_index_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mc_order`
--

CREATE TABLE `mc_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mc_pro`
--

CREATE TABLE `mc_pro` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sweet` varchar(32) DEFAULT NULL,
  `time` varchar(32) DEFAULT NULL,
  `conditions` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mc_pro`
--

INSERT INTO `mc_pro` (`lid`, `family_id`, `title`, `subtitle`, `price`, `spec`, `promise`, `name`, `sweet`, `time`, `conditions`, `category`) VALUES
(1, 1, 'Mango Cream Cake芒果奶油蛋糕', '/不使用罐头水果和植混奶油/\r\n/坚持应季凯特鲜切芒果/\r\n/新西兰纯乳脂奶油/\r\n/21cake配方芒果百香果慕斯夹心/', '198.00', '2.0磅', '18x18cm，适合7-8人分享，含10套餐具，需提前5小时预订', '芒果奶油蛋糕', '三星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0－4℃保藏12小时，5℃食用为佳', NULL),
(2, 1, 'Heartfelt Wish 心语心愿', '/椰子香气，蛋糕坯的颗粒感平衡奶油的软滑，烛光/', '298.00', '2.0磅', '17x17cm，适合7-8人分享，含10套餐具，需提前5小时预订', '心语心愿', '四星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0-4℃保藏48小时，8℃食用为佳', NULL),
(3, 1, 'Bailey''s Love Triangle 百利甜情人', '/爱尔兰百利甜酒/新西兰奶油/云南玫瑰甘露/\r\n夹心为芒果', '298.00', '2.0磅', '17x17cm，适合7-8人分享，含10套餐具，需提前5小时预订', '百利甜情人', '四星', '现在订购最早今天 15:30配送。每日最晚配送时间21:30', '0-4℃保藏10小时，5℃食用为佳', NULL),
(4, 2, 'Mango Jerry 芒果慕斯', '/世界公认41个品种的芒果，按四大种群，在不同产地相继成熟/\r\n/为始终采用当季成熟鲜芒，做出理想的芒果慕斯，21cake肯于增加采购成本，按不同标准挑选自然成熟的果实 /', '298.00', '2.0磅', '16x16cm，适合7-8人分享，含10套餐具，需提前5小时预订', '芒果慕斯', '三星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0－4℃保藏12小时，5℃食用为佳', NULL),
(5, 1, 'Fruit Pocket 花格', '/现在它是你需要的“水果蛋糕”了/\r\n*增加2磅及以上规格水果用量比例 ，以及更易化的，白巧克力薄卷\r\n/去世界更多的地方，走入更多水果成熟的季节，欣赏、采集/', '298.00', '2.0磅', '17x17cm，适合7-8人分享，含10套餐具，需提前5小时预订', '花格', '四星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0－4℃保藏10小时，8℃食用为佳', NULL),
(6, 2, 'Black and White Chocolate Mousse 黑白巧克力慕斯', '/口感冰凉细腻，白巧克力慕斯的甜，与底部黑巧克力酱的苦/', '298.00', '2.0磅', '17x17cm，适合7-8人分享，含10套餐具，需提前5小时预订', '黑白巧克力慕斯', '五星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0－4℃保藏12小时，5℃食用为佳', NULL),
(7, 1, 'A Picture of Durian Grey 榴莲飘飘', '/自然成熟的泰国榴莲/\r\n/在曼谷，官兵后代庭院中，生长着一百年至一百五十年的榴莲树/', '298.00', '2.0磅', '17x17cm，适合7-8人分享，含10套餐具，需提前5小时预订', '榴莲飘飘', '三星', '现在订购最早今天 14:00配送。每日最晚配送时间21:30', '0－4℃保藏8小时，5℃食用为佳', NULL),
(8, 3, 'Jerry 杰瑞', '/谁动了我的奶酪？!/\r\n', '298.00', '2.0磅', '16x16cm，适合7-8人分享，含10套餐具，需提前5小时预订', '杰瑞', '三星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0－4℃保藏12小时，5℃食用为佳', NULL),
(9, 3, 'Rum Cheese Cake 朗姆芝士', '/香滑的乳酪与打开的一瓶波多黎各朗姆酒/\r\n/酒香，微苦，清新的柠檬/', '298.00', '2.0磅', '17x17cm，适合7-8人分享，含10套餐具，需提前5小时预订', '朗姆芝士', '三星', '现在订购最早明天 09:30配送。每日最晚配送时间21:30', '0－4℃保藏12小时，5℃食用为佳', NULL),
(10, 1, 'Brownie Cake 布朗尼', '/时光荏苒，亘古不变/', '298.00', '2.0磅', '17x17cm，适合7-8人分享，，含10套餐具，需提前5小时预订', '布朗尼', '四星', '现在订购最早09:30配送。每日最晚配送时间21:30', '0-4℃保藏12小时，8℃食用为佳', NULL),
(11, 4, '小切块-Pine Stone Cowboy 松仁淡奶', '/切块蛋糕/\r\n/大兴安岭松仁、低甜度/', '36.00', '1份', '5x5cm，适合1人分享。含1套餐具，需提前8小时预订', '小切块-松仁淡奶', '三星', '现在订购最早明天 10:00配送。每日最晚配送时间18:30', '0－4℃冷藏12小时，5℃食用为佳', NULL),
(12, 4, '小切块-Brownie 布朗尼', '/切块蛋糕/\r\n/黑朗姆酒、多种坚果/', '36.00', '1份', '5x5cm，适合1人分享，含1套餐具，需提前8小时预订', '小切块-布朗尼', '四星', '现在订购最早明天 10:00配送。每日最晚配送时间18:30', '0-4℃保藏12小时，15℃食用为佳', NULL),
(13, 4, '小切块-Matcha & Chestnut Mousse抹茶和栗', '/切块蛋糕/\r\n/济州岛抹茶、栗子羊羹、微苦/\r\n/包含羊羹工艺栗融，栗果夹心/', '36.00', '1份', '5x5cm，适合1人享用，含1套餐具，需提前8小时预订', '小切块-抹茶和栗', '一星', '现在订购最早明天 10:00配送。每日最晚配送时间18:30', '0－4℃保藏12小时 5℃食用为佳', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `mc_pro_family`
--

CREATE TABLE `mc_pro_family` (
  `fid` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mc_pro_family`
--

INSERT INTO `mc_pro_family` (`fid`, `name`) VALUES
(1, '乳脂奶油'),
(2, '慕斯'),
(3, '乳酪'),
(4, '小切块');

-- --------------------------------------------------------

--
-- 表的结构 `mc_pro_pic`
--

CREATE TABLE `mc_pro_pic` (
  `pid` int(11) NOT NULL,
  `pro_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mc_pro_pic`
--

INSERT INTO `mc_pro_pic` (`pid`, `pro_id`, `sm`, `md`, `lg`) VALUES
(1, 1, '', 'img/Mango Cream Cake01.jpg', 'img/Mango Cream Cake.jpg'),
(2, 2, ' ', 'img/Heartfelt Wish01.jpg', 'img/Heartfelt Wish.jpg'),
(3, 3, ' ', 'img/Bailey''s Love Triangle01.jpg', 'img/Bailey''s Love Triangle.jpg'),
(4, 4, ' ', 'img/Mango Jerry01.jpg', 'img/Mango Jerry.jpg'),
(5, 5, ' ', 'img/Fruit Pocket01.jpg', 'img/Fruit Pocket.jpg'),
(6, 6, ' ', 'img/Black and White Chocolate Mousse01.jpg', 'img/Black and White Chocolate Mousse.jpg'),
(7, 7, ' ', 'img/A Picture of Durian Grey01.jpg', 'img/A Picture of Durian Grey.jpg'),
(8, 8, '', 'img/Jerry01.jpg', 'img/Jerry.jpg'),
(9, 9, '', 'img/Rum Cheese Cake01.jpg', 'img/Rum Cheese Cake.jpg'),
(10, 10, ' ', 'img/Brownie Cake01.jpg', 'img/Brownie Cake.jpg'),
(11, 11, ' ', 'img/Pine Stone Cowboy01.jpg', ' '),
(12, 12, ' ', 'img/Brownie01.jpg', ' '),
(13, 13, ' ', 'img/Matcha & Chestnut Mousse01.jpg', 'img/Matcha & Chestnut Mousse.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `mc_receiver_address`
--

CREATE TABLE `mc_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mc_shopping_cart`
--

CREATE TABLE `mc_shopping_cart` (
  `cid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mc_user`
--

CREATE TABLE `mc_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `phone` varchar(16) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `birthday` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `mc_user`
--

INSERT INTO `mc_user` (`uid`, `uname`, `upwd`, `phone`, `user_name`, `gender`, `birthday`) VALUES
(1, 'dingding', '123456', '123456', 'dingding', 1, NULL),
(4, 'dongdong', '123456', '3335555', 'dongdong', 1, NULL),
(5, 'tangtang', 'asdfasdf', '564588125', NULL, NULL, NULL),
(6, 'alilang', '8864592', '8864592', NULL, NULL, NULL),
(7, 'honghong', 'asdf123456', '22542136232', NULL, NULL, NULL),
(8, 'user_text', 'asdf123456', '852145621', NULL, NULL, NULL),
(9, '邪恶小法师', 'woshidashabi', '9560031258', NULL, NULL, NULL),
(10, '黑皮诺', 'sadfasdf', '2641216586', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mc_index_carousel`
--
ALTER TABLE `mc_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `mc_index_product`
--
ALTER TABLE `mc_index_product`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `mc_order`
--
ALTER TABLE `mc_order`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `mc_pro`
--
ALTER TABLE `mc_pro`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `family_id` (`family_id`);

--
-- Indexes for table `mc_pro_family`
--
ALTER TABLE `mc_pro_family`
  ADD PRIMARY KEY (`fid`);

--
-- Indexes for table `mc_pro_pic`
--
ALTER TABLE `mc_pro_pic`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `pro_id` (`pro_id`);

--
-- Indexes for table `mc_receiver_address`
--
ALTER TABLE `mc_receiver_address`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `mc_shopping_cart`
--
ALTER TABLE `mc_shopping_cart`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `mc_user`
--
ALTER TABLE `mc_user`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `phone_2` (`phone`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `mc_index_carousel`
--
ALTER TABLE `mc_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mc_index_product`
--
ALTER TABLE `mc_index_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mc_order`
--
ALTER TABLE `mc_order`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mc_pro`
--
ALTER TABLE `mc_pro`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `mc_pro_family`
--
ALTER TABLE `mc_pro_family`
  MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `mc_pro_pic`
--
ALTER TABLE `mc_pro_pic`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- 使用表AUTO_INCREMENT `mc_receiver_address`
--
ALTER TABLE `mc_receiver_address`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mc_shopping_cart`
--
ALTER TABLE `mc_shopping_cart`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `mc_user`
--
ALTER TABLE `mc_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- 限制导出的表
--

--
-- 限制表 `mc_order`
--
ALTER TABLE `mc_order`
  ADD CONSTRAINT `mc_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mc_user` (`uid`),
  ADD CONSTRAINT `mc_order_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `mc_receiver_address` (`aid`);

--
-- 限制表 `mc_pro`
--
ALTER TABLE `mc_pro`
  ADD CONSTRAINT `mc_pro_ibfk_1` FOREIGN KEY (`family_id`) REFERENCES `mc_pro_family` (`fid`);

--
-- 限制表 `mc_pro_pic`
--
ALTER TABLE `mc_pro_pic`
  ADD CONSTRAINT `mc_pro_pic_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `mc_pro` (`lid`);

--
-- 限制表 `mc_receiver_address`
--
ALTER TABLE `mc_receiver_address`
  ADD CONSTRAINT `mc_receiver_address_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mc_user` (`uid`);

--
-- 限制表 `mc_shopping_cart`
--
ALTER TABLE `mc_shopping_cart`
  ADD CONSTRAINT `mc_shopping_cart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `mc_user` (`uid`),
  ADD CONSTRAINT `mc_shopping_cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `mc_pro` (`lid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
