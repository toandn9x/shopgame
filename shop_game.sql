-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 20, 2024 lúc 11:04 AM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shop_game`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `buyer_id` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `acc_name` varchar(255) NOT NULL,
  `acc_pass` varchar(255) DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `image` text DEFAULT NULL,
  `content` text DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  `sold_at` datetime DEFAULT NULL,
  `checked_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `seller_id`, `buyer_id`, `category_id`, `acc_name`, `acc_pass`, `price`, `image`, `content`, `description`, `status`, `created_at`, `updated_at`, `sold_at`, `checked_at`) VALUES
(1, 1, NULL, 1, 'Toandn', 'Toandn', 100000, '/storage/images/1713352858_Hva20pCkMN.gif', 'https://www.facebook.com/photo/?fbid=367033203001457&amp;set=a.165336226504490', 'nick cao thủ full tướng full vàng full ruby', 1, '2024-04-17 18:20:58', '2024-04-17 18:20:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `type` varchar(45) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `type`, `name`, `description`, `image`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'game', 'Acc - Liên quân moblie', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'game-lien-quan-mobile', 1, '2024-04-17 17:55:18', '2024-04-17 17:55:18'),
(2, 'game', 'Acc - Pubg Mobile', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'nick-lol', 1, '2024-04-17 18:10:45', '2024-04-17 18:10:45'),
(3, 'game', 'Acc - LOL', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'nick-fai-fai', 1, '2024-04-17 18:11:04', '2024-04-17 18:11:04'),
(4, 'game', 'Acc - Đột kích', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'nick-dot-kich', 1, '2024-04-17 18:11:24', '2024-04-17 18:11:24'),
(5, 'game', 'Acc - FC online', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'nick-pubg-mobile', 1, '2024-04-17 18:15:26', '2024-04-17 18:15:26'),
(6, 'game', 'Acc - Ninja School', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'gioi-thieu-shop-acc', 1, '2024-04-17 18:15:58', '2024-04-17 18:15:58'),
(7, 'game', 'Acc - Ngọc Rồng', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'thuong-co-truyen-ky', 1, '2024-04-18 09:37:34', '2024-04-18 09:37:34'),
(8, 'game', 'Acc - Fai Fai 🔥', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713407854_ZBDChoZFfo.gif', 'hanh-trinh-bat-tan', 1, '2024-04-18 09:38:02', '2024-04-18 09:38:02'),
(11, 'hot', 'Nạp tiền tự động', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713412267_Ol8gZY99pe.jpg', 'nap-tien-tu-dong', 1, '2024-04-18 10:51:07', '2024-04-18 10:51:07'),
(12, 'hot', 'Mua thẻ cào Online', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713412289_UBTiVphfE2.jpg', 'mua-the-cao-online', 1, '2024-04-18 10:51:29', '2024-04-18 10:51:29'),
(13, 'hot', 'Dịch vụ game', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713412330_fv7BeHROf3.jpg', 'dich-vu-game', 1, '2024-04-18 10:52:10', '2024-04-18 10:52:10'),
(14, 'hot', 'Tài khoản', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '/storage/images/1713412362_LoP0momc8Z.jpg', 'tai-khoan', 1, '2024-04-18 10:52:42', '2024-04-18 10:52:42'),
(15, 'blog', 'Lịch thi đấu VCS 2024', '&lt;span style=&quot;font-family: Roboto, Helvetica, sans-serif; font-size: 20px; font-weight: 700; letter-spacing: 0.2px; text-transform: uppercase; background-color: rgb(0, 255, 255);&quot;&gt;&lt;font color=&quot;#000000&quot; style=&quot;&quot;&gt;NGÀY 1 - THỨ TƯ, 03/04/2024&lt;/font&gt;&lt;/span&gt;', '/storage/images/1713413709_R1Rfm1CbH4.gif', 'lich-thi-dau-vcs-2024', 1, '2024-04-18 11:15:09', '2024-04-18 11:15:09');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `charges`
--

CREATE TABLE `charges` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider` varchar(45) NOT NULL,
  `telco` tinytext NOT NULL,
  `amount` int(11) DEFAULT 0,
  `amount_declared` int(11) NOT NULL,
  `serial` tinytext NOT NULL,
  `pin` tinytext NOT NULL,
  `request_id` int(11) NOT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`) VALUES
(1, 'title', 'Shopgame'),
(2, 'keywords', ''),
(3, 'description', ''),
(4, 'noticeModal', '&lt;p&gt;&lt;b&gt;Admin test thông báo nè hihi&lt;/b&gt;&lt;/p&gt;'),
(5, 'banners', 'https://cdn.upanh.info/storage/upload/images/Banner%20shop/banner-nickvn-1%20(3).jpg,https://cdn.upanh.info/storage/upload/images/Banner%20shop/banner-nickvn-1%20(1).jpg,https://cdn.upanh.info/storage/upload/images/Banner%20shop/banner-nickvn-2%20(2).jpg'),
(6, 'logo', 'https://i.imgur.com/CjCS4eG.png'),
(7, 'facebook_app_id', ''),
(8, 'facebook_app_secret', ''),
(9, 'dark_mode', '0'),
(10, 'footer_content', '&lt;p style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; text-align: center; margin-bottom: 5px !important;&quot;&gt;&lt;span style=&quot;box-sizing: inherit;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;img alt=&quot;&quot; class=&quot;loading_lazy&quot; data-ignore=&quot;true&quot; height=&quot;77&quot; src=&quot;https://cdn.upanh.info/storage/upload/images/LOGO-NICK-VN.png&quot; width=&quot;207&quot; style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif;&quot;&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; margin-bottom: 5px !important;&quot;&gt;&lt;span style=&quot;box-sizing: inherit;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-family: Arial, Helvetica, sans-serif;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; font-weight: bolder;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(241, 196, 15);&quot;&gt;Chào Mừng Bạn Đến Với&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://nick.vn/&quot; rel=&quot;follow&quot; target=&quot;_blank&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(241, 196, 15);&quot;&gt;Nick.vn&lt;/span&gt;&lt;/a&gt;&lt;br style=&quot;box-sizing: inherit;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(102, 255, 0);&quot;&gt;* Shop mua bán nick&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://shopacclienquan.com/&quot; rel=&quot;follow&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(102, 255, 0);&quot;&gt;Liên Quân&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(102, 255, 0);&quot;&gt;,&amp;nbsp;Tốc chiến, Đột Kích, Roblox, FiFa, Ngọc Rồng, Liên Minh, Ninja School&lt;/span&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(102, 255, 0);&quot;&gt;&amp;nbsp;uy tín,&amp;nbsp;&lt;/span&gt;&lt;a href=&quot;https://nickgiare.net/&quot; rel=&quot;follow&quot; target=&quot;_blank&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(102, 255, 0);&quot;&gt;giá rẻ&lt;/span&gt;&lt;/a&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(102, 255, 0);&quot;&gt;.&lt;br style=&quot;box-sizing: inherit;&quot;&gt;* Làm nhiệm vụ, cày thuê tự động&lt;br style=&quot;box-sizing: inherit;&quot;&gt;* Mua xu, Nạp kim cương, quân huy&amp;nbsp;giá rẻ, chiết khấu cao&lt;/span&gt;&lt;/span&gt;&lt;br style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif;&quot;&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; font-weight: bolder;&quot;&gt;&lt;span style=&quot;box-sizing: inherit; color: rgb(255, 255, 255);&quot;&gt;Thời Gian Làm Việc:&lt;/span&gt;&amp;nbsp;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; color: rgb(102, 255, 0);&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: bolder;&quot;&gt;8h-12h&lt;/span&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: bolder;&quot;&gt;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; color: rgb(255, 255, 255);&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: bolder;&quot;&gt;&amp;amp;&amp;nbsp;&lt;/span&gt;&lt;/span&gt;&amp;nbsp;&lt;span style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif; color: rgb(102, 255, 0);&quot;&gt;&lt;span style=&quot;box-sizing: inherit; font-weight: bolder;&quot;&gt;13h30-22h&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;a class=&quot;dmca-badge&quot; href=&quot;https://images.dmca.com/Badges/_dmca_premi_badge_1.png?ID=6766daa6-8986-40c5-b282-a9c9e6a883de&quot; title=&quot;DMCA.com Protection Status&quot; style=&quot;box-sizing: inherit; font-family: &amp;quot;Roboto Condensed&amp;quot;, sans-serif;&quot;&gt;&lt;img alt=&quot;DMCA.com Protection Status&quot; class=&quot;loading_lazy&quot; data-ignore=&quot;true&quot; src=&quot;https://images.dmca.com/Badges/_dmca_premi_badge_4.png?ID=a76b2905-32bf-4460-8b80-2c5caa6b7ab7&quot; style=&quot;box-sizing: inherit;&quot;&gt;&lt;/a&gt;'),
(11, 'facebook_fanpage_id', 'https://www.facebook.com/ForeverAloneHoiEVuiVa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `trade_type` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `trade_type`, `amount`, `balance`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 500000, 1000000, 'admin', 1, '2024-04-17 17:26:34', '2024-04-17 17:26:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transfers`
--

CREATE TABLE `transfers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `role` varchar(45) NOT NULL DEFAULT 'user',
  `lock` tinyint(4) DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `email`, `phone`, `facebook_id`, `balance`, `role`, `lock`, `created_at`, `updated_at`) VALUES
(1, NULL, 'ToanDN@gmail.com', '$2y$10$/pIOZaDVklOvOOxtfTqcbO0U6967RXStHcX2FQkQKOGvvr5g3ocHe', 'admin@gmail.com', '0868874999', NULL, 1000000000, 'admin', 1, '2024-04-17 17:11:06', '2024-04-17 17:11:06');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `charges_users_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key_UNIQUE` (`key`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_users_id_fk` (`user_id`);

--
-- Chỉ mục cho bảng `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_users_id_fk` (`user_id`),
  ADD KEY `transfers_users_id_fk_2` (`recipient_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD UNIQUE KEY `phone_UNIQUE` (`phone`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `charges`
--
ALTER TABLE `charges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `charges`
--
ALTER TABLE `charges`
  ADD CONSTRAINT `charges_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_users_id_fk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transfers_users_id_fk_2` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
