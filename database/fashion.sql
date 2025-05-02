-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 20, 2024 lúc 10:47 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `fashion`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `authorize`
--

CREATE TABLE `authorize` (
  `authorize_id` int(11) NOT NULL,
  `authorize_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `authorize`
--

INSERT INTO `authorize` (`authorize_id`, `authorize_name`) VALUES
(1, 'ADMIN'),
(2, 'USER'),
(3, 'STAFF');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_post`
--

CREATE TABLE `category_post` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category_post`
--

INSERT INTO `category_post` (`category_id`, `category_name`, `created_at`, `parent_id`, `user_id`) VALUES
(1, 'Tin tức về sản phẩm mới nhất', '2024-04-02', 0, 6),
(2, 'Tin tức về những sản phẩm đang nổi bật ở cửa hàng', '2024-04-02', 1, 8),
(4, 'Danh mục mới', '2024-04-01', 2, 6),
(15, 'báo mớii', '2024-04-10', 15, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint(20) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`category_id`, `category_name`, `created_at`, `parent_id`, `user_id`) VALUES
(1, 'Áo', '2024-04-01', 0, 6),
(2, 'Quần', '2024-04-03', 1, 6),
(3, 'Tất', '2024-04-05', 2, 6),
(4, 'Váy', '2024-04-14', 1, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `comment_id` bigint(20) NOT NULL,
  `content` text DEFAULT NULL,
  `post_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `delivery_method`
--

CREATE TABLE `delivery_method` (
  `delivery_id` bigint(20) NOT NULL,
  `delivery_cost` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `delivery_method`
--

INSERT INTO `delivery_method` (`delivery_id`, `delivery_cost`, `description`, `name`, `user_id`) VALUES
(1, 15000, 'Đảm bảo nhận hàng sau 3-4 ngày', 'Nhanh', 6),
(2, 33600, 'Đảm bảo nhận hàng vào hôm nay', 'Hoả tốc', 6),
(3, NULL, NULL, NULL, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_product`
--

CREATE TABLE `image_product` (
  `image_id` bigint(20) NOT NULL,
  `image_product` text DEFAULT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `image_product`
--

INSERT INTO `image_product` (`image_id`, `image_product`, `product_id`) VALUES
(9, 'product_1718856715830.jpg', 6),
(10, 'product_1718856715909.jpg', 6),
(11, 'product_1718856715917.jpg', 6),
(12, 'product_1718856715925.jpg', 6),
(13, 'product_1718857007476.jpg', 7),
(14, 'product_1718857007511.jpg', 7),
(15, 'product_1718857007519.jpg', 7),
(16, 'product_1718857007526.jpg', 7),
(17, 'product_1718872200951.jpg', 8),
(18, 'product_1718872200988.jpg', 8),
(19, 'product_1718872200993.jpg', 8),
(20, 'product_1718872201000.jpg', 8),
(21, 'product_1718872403279.jpg', 9),
(22, 'product_1718872403296.jpg', 9),
(23, 'product_1718872403305.jpg', 9),
(24, 'product_1718872403314.jpg', 9),
(25, 'product_1718872594891.jpg', 10),
(26, 'product_1718872594902.jpg', 10),
(27, 'product_1718872594911.jpg', 10),
(28, 'product_1718872594919.jpg', 10),
(29, 'product_1718872724657.jpg', 11),
(30, 'product_1718872724667.jpg', 11),
(31, 'product_1718872724675.jpg', 11),
(32, 'product_1718872724683.jpg', 11);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventory`
--

CREATE TABLE `inventory` (
  `inventory_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `inventory`
--

INSERT INTO `inventory` (`inventory_id`, `quantity`, `product_id`, `product_color_id`, `product_size_id`) VALUES
(14, 37, 6, 4, 4),
(15, 25, 7, 5, 1),
(16, 37, 8, 3, 1),
(17, 70, 9, 8, 3),
(18, 139, 10, 3, 2),
(19, 34, 11, 9, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `note` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `delivery_method_id` bigint(20) DEFAULT NULL,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`order_id`, `address`, `created_at`, `note`, `status`, `delivery_method_id`, `payment_method_id`, `user_id`) VALUES
(7, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', '2024-06-20', NULL, 'Đang xử lý', 1, 1, 6),
(8, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', '2024-06-20', NULL, 'Đơn hàng thành công', 1, 1, 6),
(9, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', '2024-06-20', NULL, 'Đơn hàng bị huỷ', 1, 1, 14),
(10, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', '2024-06-20', NULL, 'Đang giao hàng', 1, 1, 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` bigint(20) NOT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `product_id` bigint(20) DEFAULT NULL,
  `product_color_id` int(11) DEFAULT NULL,
  `product_size_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`order_detail_id`, `quantity`, `total_price`, `order_id`, `product_id`, `product_color_id`, `product_size_id`) VALUES
(13, 3, 987000, 7, 6, 4, 4),
(14, 2, 598000, 7, 7, 5, 1),
(15, 3, 2997000, 8, 11, 9, 3),
(16, 2, 1598000, 8, 10, 3, 2),
(17, 3, 2997000, 9, 11, 9, 3),
(18, 2, 1598000, 9, 10, 3, 2),
(19, 3, 3297000, 10, 8, 3, 1),
(20, 2, 2580000, 10, 9, 8, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payment_method`
--

CREATE TABLE `payment_method` (
  `payment_id` bigint(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `payment_cost` double DEFAULT NULL,
  `payment_name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `payment_method`
--

INSERT INTO `payment_method` (`payment_id`, `description`, `payment_cost`, `payment_name`, `user_id`) VALUES
(1, 'Thanh toán tại nhà', 0, 'Thanh toán tại nhà', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post`
--

CREATE TABLE `post` (
  `post_id` bigint(20) NOT NULL,
  `created_at` date DEFAULT NULL,
  `post_detail` longtext DEFAULT NULL,
  `post_image` longtext DEFAULT NULL,
  `post_title` varchar(255) DEFAULT NULL,
  `category_post_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `post`
--

INSERT INTO `post` (`post_id`, `created_at`, `post_detail`, `post_image`, `post_title`, `category_post_id`, `user_id`) VALUES
(6, '2024-03-21', '<p>Trong tháng 3 năm 2024, thị trường thời trang đã chứng kiến sự xuất hiện của nhiều xu hướng mới đầy hấp dẫn. Từ những bộ đồ phong cách streetwear đến những bộ trang phục công sở thanh lịch, có một sự đa dạng phong phú cho mọi phong cách và sở thích. Dưới đây là một số item nổi bật bạn không thể bỏ qua trong bộ sưu tập thời trang của mình:</p><ul><li>Áo hoodie oversized: Với sự thoải mái và phong cách riêng biệt, áo hoodie oversized đang trở thành một item hot không thể thiếu trong tủ đồ của mọi người.</li><li>Quần jeans mom fit: Được thiết kế ôm sát ở phần eo và rộng ở phần chân, quần jeans mom fit là lựa chọn lý tưởng cho những ai muốn kết hợp giữa sự thoải mái và phong cách.</li><li>Áo sơ mi trắng cơ bản: Với sự đa dụng và dễ kết hợp, áo sơ mi trắng cơ bản luôn là một item không thể thiếu trong mỗi bộ sưu tập thời trang.</li><li>Váy midi xếp ly: Mang đến vẻ đẹp nữ tính và duyên dáng, váy midi xếp ly là lựa chọn hoàn hảo cho những buổi hẹn hò hay đi chơi cùng bạn bè.</li><li>Áo khoác bomber màu pastel: Với gam màu nhẹ nhàng và dễ phối đồ, áo khoác bomber màu pastel là một item thời trang không thể bỏ qua trong mùa xuân này.</li></ul><p>Đừng bỏ lỡ cơ hội cập nhật tủ đồ của bạn với những item thời trang mới nhất trong tháng 3 này!</p>', 'post_1710996431848.jpg', 'Top những quần áo mới nhất tháng 3/2024(update lần 2)', 1, 6),
(11, '2024-05-04', '<p>Trong tháng 3 năm 2024, thị trường thời trang đã chứng kiến sự xuất hiện của nhiều xu hướng mới đầy hấp dẫn. Từ những bộ đồ phong cách streetwear đến những bộ trang phục công sở thanh lịch, có một sự đa dạng phong phú cho mọi phong cách và sở thích. Dưới đây là một số item nổi bật bạn không thể bỏ qua trong bộ sưu tập thời trang của mình:</p><ul><li>Áo hoodie oversized: Với sự thoải mái và phong cách riêng biệt, áo hoodie oversized đang trở thành một item hot không thể thiếu trong tủ đồ của mọi người.</li><li>Quần jeans mom fit: Được thiết kế ôm sát ở phần eo và rộng ở phần chân, quần jeans mom fit là lựa chọn lý tưởng cho những ai muốn kết hợp giữa sự thoải mái và phong cách.</li><li>Áo sơ mi trắng cơ bản: Với sự đa dụng và dễ kết hợp, áo sơ mi trắng cơ bản luôn là một item không thể thiếu trong mỗi bộ sưu tập thời trang.</li><li>Váy midi xếp ly: Mang đến vẻ đẹp nữ tính và duyên dáng, váy midi xếp ly là lựa chọn hoàn hảo cho những buổi hẹn hò hay đi chơi cùng bạn bè.</li><li>Áo khoác bomber màu pastel: Với gam màu nhẹ nhàng và dễ phối đồ, áo khoác bomber màu pastel là một item thời trang không thể bỏ qua trong mùa xuân này.</li></ul><p>Đừng bỏ lỡ cơ hội cập nhật tủ đồ của bạn với những item thời trang mới nhất trong tháng 3 này!</p>', 'post_1710996431848.jpg', 'Top những quần áo mới nhất tháng 3/2024', 1, 6),
(13, '2024-05-08', '<p>dsaaaaaaaaaaaaaaaaaaaaaaaaaadasdasdsadsaaaaaaaaaaaaaaaaaaaaaaaaaadasdasdsadsaaaaaaaaaaaaaaaaaaaaaaaaaadasdasdsadsaaaaaaaaaaaaaaaaaaaaaaaaaadasdasdsadsaaaaaaaaaaaaaaaaaaaaaaaaaadasdasdsa</p>', 'post_1715180351422.jpg', 'Những sản phẩm mới nhất tháng 8/2024', 1, 6),
(14, '2024-05-09', '<a>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</a>', 'post_1715225424084.jpg', 'Báo mới', 15, 6),
(15, '2024-05-09', '<p>Trong tháng 3 năm 2024, thị trường thời trang đã chứng kiến sự xuất hiện của nhiều xu hướng mới đầy hấp dẫn. Từ những bộ đồ phong cách streetwear đến những bộ trang phục công sở thanh lịch, có một sự đa dạng phong phú cho mọi phong cách và sở thích. Dưới đây là một số item nổi bật bạn không thể bỏ qua trong bộ sưu tập thời trang của mình:</p><ul><li>Áo hoodie oversized: Với sự thoải mái và phong cách riêng biệt, áo hoodie oversized đang trở thành một item hot không thể thiếu trong tủ đồ của mọi người.</li><li>Quần jeans mom fit: Được thiết kế ôm sát ở phần eo và rộng ở phần chân, quần jeans mom fit là lựa chọn lý tưởng cho những ai muốn kết hợp giữa sự thoải mái và phong cách.</li><li>Áo sơ mi trắng cơ bản: Với sự đa dụng và dễ kết hợp, áo sơ mi trắng cơ bản luôn là một item không thể thiếu trong mỗi bộ sưu tập thời trang.</li><li>Váy midi xếp ly: Mang đến vẻ đẹp nữ tính và duyên dáng, váy midi xếp ly là lựa chọn hoàn hảo cho những buổi hẹn hò hay đi chơi cùng bạn bè.</li><li>Áo khoác bomber màu pastel: Với gam màu nhẹ nhàng và dễ phối đồ, áo khoác bomber màu pastel là một item thời trang không thể bỏ qua trong mùa xuân này.</li></ul><p>Đừng bỏ lỡ cơ hội cập nhật tủ đồ của bạn với những item thời trang mới nhất trong tháng 3 này!</p>', 'post_1715229467471.jpg', 'Top những quần áo mới nhất tháng 3/2024', 1, 6),
(16, '2024-05-09', '<p>Trong tháng 3 năm 2024, thị trường thời trang đã chứng kiến sự xuất hiện của nhiều xu hướng mới đầy hấp dẫn. Từ những bộ đồ phong cách streetwear đến những bộ trang phục công sở thanh lịch, có một sự đa dạng phong phú cho mọi phong cách và sở thích. Dưới đây là một số item nổi bật bạn không thể bỏ qua trong bộ sưu tập thời trang của mình:</p><ul><li>Áo hoodie oversized: Với sự thoải mái và phong cách riêng biệt, áo hoodie oversized đang trở thành một item hot không thể thiếu trong tủ đồ của mọi người.</li><li>Quần jeans mom fit: Được thiết kế ôm sát ở phần eo và rộng ở phần chân, quần jeans mom fit là lựa chọn lý tưởng cho những ai muốn kết hợp giữa sự thoải mái và phong cách.</li><li>Áo sơ mi trắng cơ bản: Với sự đa dụng và dễ kết hợp, áo sơ mi trắng cơ bản luôn là một item không thể thiếu trong mỗi bộ sưu tập thời trang.</li><li>Váy midi xếp ly: Mang đến vẻ đẹp nữ tính và duyên dáng, váy midi xếp ly là lựa chọn hoàn hảo cho những buổi hẹn hò hay đi chơi cùng bạn bè.</li><li>Áo khoác bomber màu pastel: Với gam màu nhẹ nhàng và dễ phối đồ, áo khoác bomber màu pastel là một item thời trang không thể bỏ qua trong mùa xuân này.</li></ul><p>Đừng bỏ lỡ cơ hội cập nhật tủ đồ của bạn với những item thời trang mới nhất trong tháng 3 này!</p>', 'post_1715229488089.jpg', 'Top những quần áo mới nhất tháng 3/2024', 15, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `product_id` bigint(20) NOT NULL,
  `created_at` date DEFAULT NULL,
  `listed_price` double DEFAULT NULL,
  `outstanding` bit(1) DEFAULT NULL,
  `product_code` varchar(50) DEFAULT NULL,
  `product_description` longtext DEFAULT NULL,
  `product_detail` text DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` double DEFAULT NULL,
  `category_product_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`product_id`, `created_at`, `listed_price`, `outstanding`, `product_code`, `product_description`, `product_detail`, `product_name`, `product_price`, `category_product_id`, `user_id`) VALUES
(6, '2024-06-20', 350000, b'1', '#SP281232', 'MID WEIGHT - REGULAR FIT- CỔ TRÒN - CHIỀU DÀI THÔNG THƯỜNG - CỘC TAY', 'CHẤT LIỆU, CÁCH CHĂM SÓC & NGUỒN GỐC\nCHẤT LIỆU\nChúng tôi đang triển khai các chương trình giám sát nhằm đảm bảo sự tuân thủ các tiêu chuẩn của chúng tôi về xã hội, môi trường, cũng như về độ an toàn và tính lành mạnh của các sản phẩm. Nhằm đánh giá sự tuân thủ các tiêu chuẩn này, chúng tôi đã phát triển một chương trình kiểm toán và các kế hoạch cải thiện liên tục.\nLỚP NGOÀI\n100% vải cotton\nCó ít nhất:\nLỚP NGOÀI\n100% bông canh tác hữu cơ đạt tiêu chuẩn OCS\nNGUYÊN LIỆU ĐƯỢC CHỨNG NHẬN\nBÔNG CANH TÁC HỮU CƠ ĐẠT TIÊU CHUẨN OCS\nLoại sợi này được sản xuất từ các cây trồng được canh tác bằng cách không sử dụng phân bón cũng như thuốc trừ sâu vô cơ, và được trồng từ các hạt giống không biến đổi gen. Hiện nay chúng tôi đang áp dụng tiêu chuẩn Organic Content Standard (OCS), với tiêu chuẩn này chúng tôi giám sát quy trình sản xuất, từ khâu nguyên liệu đầu vào cho tới sản phẩm cuối cùng.', 'ÁO PHÔNG CỘC TAY VẢI BẠC MÀU', 329000, 1, 6),
(7, '2024-06-20', 310000, b'1', '#SP21973', 'CHẤT LIỆU, CÁCH CHĂM SÓC & NGUỒN GỐC\nCHẤT LIỆU\nChúng tôi đang triển khai các chương trình giám sát nhằm đảm bảo sự tuân thủ các tiêu chuẩn của chúng tôi về xã hội, môi trường, cũng như về độ an toàn và tính lành mạnh của các sản phẩm. Nhằm đánh giá sự tuân thủ các tiêu chuẩn này, chúng tôi đã phát triển một chương trình kiểm toán và các kế hoạch cải thiện liên tục.\nLỚP NGOÀI\n100% vải cotton\nCHĂM SÓC\nChăm sóc đúng cách quần áo của mình tức là bạn đang bảo vệ môi trường\nGiặt ở nhiệt độ thấp và sử dụng các chế độ vắt nhẹ nhàng sẽ có lợi hơn cho quần áo, giúp duy trì màu sắc, hình dạng và cấu trúc của vải. Đồng thời giúp làm giảm lượng năng lượng tiêu thụ trong các quá trình chăm sóc. \n\nHướng dẫn bảo quản quần áo\nGiặt máy ở nhiệt độ tối đa 30ºC, vắt ở tốc độ thấp\nKhông sử dụng nước tẩy / thuốc tẩy\nGiặt ở nhiệt độ tối đa 110ºC \nKhông giặt khô\nKhông sử dụng máy sấy\nNGUỒN GỐC\nChúng tôi phối hợp với các nhà cung cấp, người lao động, công đoàn và các tổ chức quốc tế nhằm phát triển một chuỗi cung ứng mà trong đó quyền con người được tôn trọng và thúc đẩy, góp phần thực hiện các Mục tiêu Phát triển Bền vững của Liên Hợp Quốc. \nBằng việc hợp tác với các nhà cung cấp, chúng tôi nỗ lực tìm hiểu các cơ sở và quy trình mà họ sử dụng để sản xuất các sản phẩm may mặc của chúng tôi với mục đích truy xuất nguồn gốc của các sản phẩm.', 'MID WEIGHT - REGULAR FIT- CỔ TRÒN - CHIỀU DÀI THÔNG THƯỜNG - CỘC TAY\n\nÁo phông 100% vải cotton, cổ tròn, cộc tay.', 'ÁO PHÔNG COTTON CƠ BẢN', 299000, 1, 6),
(8, '2024-06-20', 1190000, b'1', '#SP2812315', 'CHẤT LIỆU, CÁCH CHĂM SÓC & NGUỒN GỐC\nCHẤT LIỆU\nChúng tôi đang triển khai các chương trình giám sát nhằm đảm bảo sự tuân thủ các tiêu chuẩn của chúng tôi về xã hội, môi trường, cũng như về độ an toàn và tính lành mạnh của các sản phẩm. Nhằm đánh giá sự tuân thủ các tiêu chuẩn này, chúng tôi đã phát triển một chương trình kiểm toán và các kế hoạch cải thiện liên tục.\nLỚP NGOÀI\n89% mốt\n11% vải pôliexte\nCHĂM SÓC\nChăm sóc đúng cách quần áo của mình tức là bạn đang bảo vệ môi trường\nGiặt ở nhiệt độ thấp và sử dụng các chế độ vắt nhẹ nhàng sẽ có lợi hơn cho quần áo, giúp duy trì màu sắc, hình dạng và cấu trúc của vải. Đồng thời giúp làm giảm lượng năng lượng tiêu thụ trong các quá trình chăm sóc. ', 'Quần cạp cao may con đỉa. Có túi hai bên và túi may viền phía sau. Có các chi tiết xếp li. Cài khuy và khóa kéo phía trước.', 'QUẦN VẢI RŨ XẾP LI', 1099000, 2, 6),
(9, '2024-06-20', 1390000, b'0', '#SP2412213', 'CHẤT LIỆU, CÁCH CHĂM SÓC & NGUỒN GỐC\nCHẤT LIỆU\nChúng tôi đang triển khai các chương trình giám sát nhằm đảm bảo sự tuân thủ các tiêu chuẩn của chúng tôi về xã hội, môi trường, cũng như về độ an toàn và tính lành mạnh của các sản phẩm. Nhằm đánh giá sự tuân thủ các tiêu chuẩn này, chúng tôi đã phát triển một chương trình kiểm toán và các kế hoạch cải thiện liên tục.\nLỚP NGOÀI\n98% vải cotton\n2% elastane\nCHĂM SÓC\nChăm sóc đúng cách quần áo của mình tức là bạn đang bảo vệ môi trường\nĐể kéo dài tuổi thọ cho quần áo denim của bạn, hãy luôn lộn trái chúng từ trong ra ngoài và giặt chúng ở nhiệt độ thấp. Cách làm như vậy giúp bảo quản màu sắc và cấu trúc vải, đồng thời giúp làm giảm lượng năng lượng tiêu thụ. ', 'CẠP CAO - ỐNG SUÔNG - DÀI ĐẾN MẮT CÁ CHÂN - THIẾT KẾ THOẢI MÁI\nQuần jeans ống dài đến mắt cá chân, cạp cao, có 5 túi. Kiểu bạc màu. Ống suông, ngắn. Cài phía trước bằng khóa kéo và khuy kim loại.', 'JEANS Z1975 STRAIGHT ANKLE COMFORT CẠP CAO', 1290000, 2, 6),
(10, '2024-06-20', 850000, b'1', '#SP27361', 'CHẤT LIỆU, CÁCH CHĂM SÓC & NGUỒN GỐC\nCHẤT LIỆU\nChúng tôi đang triển khai các chương trình giám sát nhằm đảm bảo sự tuân thủ các tiêu chuẩn của chúng tôi về xã hội, môi trường, cũng như về độ an toàn và tính lành mạnh của các sản phẩm. Nhằm đánh giá sự tuân thủ các tiêu chuẩn này, chúng tôi đã phát triển một chương trình kiểm toán và các kế hoạch cải thiện liên tục.\nLỚP NGOÀI\n83% mốt\n17% vải pôliexte\nLỚP LÓT\n83% mốt\n17% vải pôliexte\nCHĂM SÓC\nChăm sóc đúng cách quần áo của mình tức là bạn đang bảo vệ môi trường\nGiặt ở nhiệt độ thấp và sử dụng các chế độ vắt nhẹ nhàng sẽ có lợi hơn cho quần áo, giúp duy trì màu sắc, hình dạng và cấu trúc của vải. Đồng thời giúp làm giảm lượng năng lượng tiêu thụ trong các quá trình chăm sóc. ', 'Quần giả chân váy cạp lỡ. Có các chi tiết xếp li. Cài khóa kéo ẩn ở đường may bên hông. Lớp vải lót bên trong kiểu quần short.', 'QUẦN VÁY VẢI RŨ', 799000, 4, 6),
(11, '2024-06-20', 1090000, b'1', '#SP219732', 'CHẤT LIỆU, CÁCH CHĂM SÓC & NGUỒN GỐC\nCHẤT LIỆU\nChúng tôi đang triển khai các chương trình giám sát nhằm đảm bảo sự tuân thủ các tiêu chuẩn của chúng tôi về xã hội, môi trường, cũng như về độ an toàn và tính lành mạnh của các sản phẩm. Nhằm đánh giá sự tuân thủ các tiêu chuẩn này, chúng tôi đã phát triển một chương trình kiểm toán và các kế hoạch cải thiện liên tục.\nLỚP NGOÀI\n60% vải cotton\n40% sợi lyocell\nCHĂM SÓC\nChăm sóc đúng cách quần áo của mình tức là bạn đang bảo vệ môi trường\nChỉ giặt quần áo khi cần thiết, đôi khi chỉ cần phơi quần áo tại nơi thoáng khí là đủ. Quá trình giặt làm hao mòn dần các loại vải. Bằng cách giảm số lần giặt, chúng ta sẽ kéo dài tuổi thọ của quần áo và giảm lượng nước và năng lượng tiêu thụ trong các quá trình chăm sóc. ', 'CẠP LỠ - DÁNG REGULAR\n\nQuần short bermuda cạp lỡ may con đỉa, có 5 túi. Cài bằng khóa kéo và khuy kim loại.', 'QUẦN SHORT BERMUDA DENIM TRF CẠP LỠ', 999000, 2, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_color`
--

CREATE TABLE `product_color` (
  `product_color_id` int(11) NOT NULL,
  `color_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_color`
--

INSERT INTO `product_color` (`product_color_id`, `color_name`) VALUES
(1, 'Kem'),
(2, 'Xám khói'),
(3, 'Nâu'),
(4, 'Xám chì'),
(5, 'Xám rêu'),
(6, 'Hồng ruốc'),
(7, 'Hồng pastel'),
(8, 'Đen trắng'),
(9, 'Xanh lam'),
(10, 'Xanh nin'),
(11, 'Xanh biển');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_size`
--

CREATE TABLE `product_size` (
  `product_size_id` int(11) NOT NULL,
  `size_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product_size`
--

INSERT INTO `product_size` (`product_size_id`, `size_name`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(32) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `last_name` varchar(32) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_number` varchar(15) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `token_active` varchar(255) DEFAULT NULL,
  `user_image` longtext DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`user_id`, `address`, `age`, `email`, `first_name`, `is_active`, `last_name`, `password`, `phone_number`, `sex`, `token_active`, `user_image`, `username`) VALUES
(6, 'Hai Bà Trưng, Hà Nội', 21, 'huypham3062k3@gmail.com', 'Huy', b'1', 'Phạm Thành', '$2a$12$mFtKDqgASSJ7lmtyrm5i4ORqay1hLJvFgvRmQgI870f6UoNhr8oam', '0838129818', 'M', 'de66561a-2576-440f-90ab-8a734d6df9c6', 'user_1711430580518.jpg', 'Admin12345678'),
(8, 'Hai Bà Trưng, Hà Nội', 21, 'huypham3062k322@gmail.com', 'Huy', b'1', 'Phạm Thành', '$2a$10$ksgzPTDEE.i1a6J3hZs6LuNUkcE.zH8sF/ezQhUYlnId9MimF2fmK', '0838931588', 'M', '215777cf-e582-4dc2-9b8a-8d92dc1a3688', 'user_1710298486565.jpg', 'usertestabcd'),
(14, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', 21, 'hungtuan13111@gmail.com', 'Chiến', b'1', 'Hùng', '$2a$10$PQWGsvadCxaHpnVO4ompee00KYkzkK.N7lr88VJjc1FD5hz6ffhnq', '0833876688', 'M', '5215b83c-4258-413f-a760-9c5b4fa66897', 'user_1715398398576.jpg', 'thanhhuypham3062k33'),
(15, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', 34, 'nguyenvanhanhocmeo@gmail.com', ' Văn Hạnh', b'1', 'Nguyễn', '$2a$10$o/5oqrh.vRUJxPM2vy3q3.fDDQ82l7yp1QeCGha8shNiuc4GAQnOW', '0838567123', 'M', 'a2525b22-ef92-4c73-924f-696622d72fc7', 'user_1715593861892.jpg', 'nguyenvanhanh'),
(16, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', 21, 'laiduocnghssitet@gmail.com', 'Kiều Anh', b'1', 'Nguyễn ', '$2a$10$2wMRGlvzbEca6rCVUQw4V.ha9WhutdRhOH9qcTw.a/SZF/FyafcYW', '0838561432', 'M', '08466051-e760-4f0d-a0cc-c217d88ec0aa', 'user_1715595832668.jpg', 'avasdasd'),
(17, 'P25 K5 Bách Khoa Hai Bà Trưng Hà Nội', 21, 'laiduocnghitet12312@gmail.com', 'Dũng', b'1', 'Nguyễn Tuấn', '$2a$12$zEsBX6BO8t9m27iAY2LpUeW2ZYwr98xQOpAVVfv51uhbuPm8zEhzK', '0838936543', 'M', '2a249933-7579-413c-817f-96b931ce9401', 'user_1715596117134.jpg', 'Aidjsaidojasidjoas'),
(19, 'Đông Trù Đông Hội Đông Anh Hà Nội', 21, 'adasdadads@gmail.com', 'Huy', b'1', 'Phạm', '$2a$10$MQL3MdfuYzFsTRIBhApi/ODb0372Hrsr6v/qpyTMk5MHG2N3kvZ8i', '0838976531', 'F', '9808f683-1f52-4d4c-b6aa-012f8c56b841', 'user_1715596280080.jpg', 'Kiều Chi'),
(20, 'Hai Bà Trưng, Hà Nội', 24, 'huyapham3062k3@gmail.com', 'UserTest', b'1', 'user', '$2a$10$mo81qQL6N7YUBncgHNugh.alZFCZKFdHq1H361tLJjbEPn2OhtlB6', '0838129818', 'F', '49bb63f4-85ef-4b2f-9fd3-5df28e76d25d', 'user_1715998916352.jpg', 'Phamthâanhhuy3062k3'),
(24, 'Hai Bà Trưng, Hà Nội', 24, 'huyapham30623k3@gmail.com', 'hehe', b'1', 'User Dep trai', '$2a$10$eO0nWOmw026IOgM7j0v/Ue5zkiazhgvaZjCnXV43DTLbxvwaEkbt2', '0838129818', 'F', '1ed41f24-0780-4266-ae6a-0e31d02aa0ce', 'user_1717146806180.jpg', 'Phamthâanhhuy30622k3');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_authorize`
--

CREATE TABLE `user_authorize` (
  `user_id` bigint(20) NOT NULL,
  `authorize_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_authorize`
--

INSERT INTO `user_authorize` (`user_id`, `authorize_id`) VALUES
(6, 1),
(8, 2),
(14, 2),
(19, 2),
(24, 2),
(20, 2),
(17, 3),
(16, 3),
(15, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `authorize`
--
ALTER TABLE `authorize`
  ADD PRIMARY KEY (`authorize_id`);

--
-- Chỉ mục cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `FKhpatx1sql74wecl9jax7jfl1` (`user_id`);

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `FK66igf76f6gp805glhjjhn8nau` (`user_id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `FKs1slvnkuemjsq2kj4h3vhx7i1` (`post_id`),
  ADD KEY `FKm1rmnfcvq5mk26li4lit88pc5` (`product_id`),
  ADD KEY `FK8kcum44fvpupyw6f5baccx25c` (`user_id`);

--
-- Chỉ mục cho bảng `delivery_method`
--
ALTER TABLE `delivery_method`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `FKdn3a5b2c73prsk8s59l42fj35` (`user_id`);

--
-- Chỉ mục cho bảng `image_product`
--
ALTER TABLE `image_product`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `FKml4177k7ufupebm7e4wgmvpnj` (`product_id`);

--
-- Chỉ mục cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_id`),
  ADD KEY `FKp7gj4l80fx8v0uap3b2crjwp5` (`product_id`),
  ADD KEY `FKnr4f509rcvaophwm70nri5hod` (`product_color_id`),
  ADD KEY `FKb43jxceqgi01p6y6makpao44n` (`product_size_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FKq2m2xkvrir0eftwpixx46v9l5` (`delivery_method_id`),
  ADD KEY `FKgeqwl6x0iadp9e2459uh3o8fv` (`payment_method_id`),
  ADD KEY `FKel9kyl84ego2otj2accfd8mr7` (`user_id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FKrws2q0si6oyd6il8gqe2aennc` (`order_id`),
  ADD KEY `FKb8bg2bkty0oksa3wiq5mp5qnc` (`product_id`),
  ADD KEY `FK7qb83q2nyp6dsoakakusiwnc7` (`product_color_id`),
  ADD KEY `FKbwusgmfhhhgdcmrefkvsxhi47` (`product_size_id`);

--
-- Chỉ mục cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `FK9qgi86n91j5kxnymanelaa1ag` (`user_id`);

--
-- Chỉ mục cho bảng `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `FKnrreogetrk4nditahvc0082yn` (`category_post_id`),
  ADD KEY `FK72mt33dhhs48hf9gcqrq4fxte` (`user_id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FKippb821nwiaprbcw1bb77fhm0` (`category_product_id`),
  ADD KEY `FK979liw4xk18ncpl87u4tygx2u` (`user_id`);

--
-- Chỉ mục cho bảng `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`product_color_id`);

--
-- Chỉ mục cho bảng `product_size`
--
ALTER TABLE `product_size`
  ADD PRIMARY KEY (`product_size_id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Chỉ mục cho bảng `user_authorize`
--
ALTER TABLE `user_authorize`
  ADD KEY `FKe5qgog5q07kgn9lhocly05nri` (`authorize_id`),
  ADD KEY `FK14kv1ludyi31l1rpcthtt048n` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `authorize`
--
ALTER TABLE `authorize`
  MODIFY `authorize_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `category_post`
--
ALTER TABLE `category_post`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `category_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `delivery_method`
--
ALTER TABLE `delivery_method`
  MODIFY `delivery_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `image_product`
--
ALTER TABLE `image_product`
  MODIFY `image_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  MODIFY `payment_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `post`
--
ALTER TABLE `post`
  MODIFY `post_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `product_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product_color`
--
ALTER TABLE `product_color`
  MODIFY `product_color_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `product_size`
--
ALTER TABLE `product_size`
  MODIFY `product_size_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `category_post`
--
ALTER TABLE `category_post`
  ADD CONSTRAINT `FKhpatx1sql74wecl9jax7jfl1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `FK66igf76f6gp805glhjjhn8nau` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK8kcum44fvpupyw6f5baccx25c` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKm1rmnfcvq5mk26li4lit88pc5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKs1slvnkuemjsq2kj4h3vhx7i1` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`);

--
-- Các ràng buộc cho bảng `delivery_method`
--
ALTER TABLE `delivery_method`
  ADD CONSTRAINT `FKdn3a5b2c73prsk8s59l42fj35` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `image_product`
--
ALTER TABLE `image_product`
  ADD CONSTRAINT `FKml4177k7ufupebm7e4wgmvpnj` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `FKb43jxceqgi01p6y6makpao44n` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`product_size_id`),
  ADD CONSTRAINT `FKnr4f509rcvaophwm70nri5hod` FOREIGN KEY (`product_color_id`) REFERENCES `product_color` (`product_color_id`),
  ADD CONSTRAINT `FKp7gj4l80fx8v0uap3b2crjwp5` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKel9kyl84ego2otj2accfd8mr7` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKgeqwl6x0iadp9e2459uh3o8fv` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_method` (`payment_id`),
  ADD CONSTRAINT `FKq2m2xkvrir0eftwpixx46v9l5` FOREIGN KEY (`delivery_method_id`) REFERENCES `delivery_method` (`delivery_id`);

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `FK7qb83q2nyp6dsoakakusiwnc7` FOREIGN KEY (`product_color_id`) REFERENCES `product_color` (`product_color_id`),
  ADD CONSTRAINT `FKb8bg2bkty0oksa3wiq5mp5qnc` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `FKbwusgmfhhhgdcmrefkvsxhi47` FOREIGN KEY (`product_size_id`) REFERENCES `product_size` (`product_size_id`),
  ADD CONSTRAINT `FKrws2q0si6oyd6il8gqe2aennc` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Các ràng buộc cho bảng `payment_method`
--
ALTER TABLE `payment_method`
  ADD CONSTRAINT `FK9qgi86n91j5kxnymanelaa1ag` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Các ràng buộc cho bảng `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `FK72mt33dhhs48hf9gcqrq4fxte` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKnrreogetrk4nditahvc0082yn` FOREIGN KEY (`category_post_id`) REFERENCES `category_post` (`category_id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK979liw4xk18ncpl87u4tygx2u` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKippb821nwiaprbcw1bb77fhm0` FOREIGN KEY (`category_product_id`) REFERENCES `category_product` (`category_id`);

--
-- Các ràng buộc cho bảng `user_authorize`
--
ALTER TABLE `user_authorize`
  ADD CONSTRAINT `FK14kv1ludyi31l1rpcthtt048n` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `FKe5qgog5q07kgn9lhocly05nri` FOREIGN KEY (`authorize_id`) REFERENCES `authorize` (`authorize_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
