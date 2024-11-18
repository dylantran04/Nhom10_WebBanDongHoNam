-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 10, 2024 at 12:28 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `id_pro` int NOT NULL,
  `noidung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date NOT NULL,
  `star` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int NOT NULL,
  `iduser` int NOT NULL,
  `idsp` int NOT NULL,
  `soluong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ct_don_hang`
--

CREATE TABLE `ct_don_hang` (
  `id` int NOT NULL,
  `id_dh` int NOT NULL,
  `id_sp` int NOT NULL,
  `soluong` int NOT NULL,
  `gia_ban` int NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ct_don_hang`
--

INSERT INTO `ct_don_hang` (`id`, `id_dh`, `id_sp`, `soluong`, `gia_ban`, `img`, `name`) VALUES
(95, 106, 39, 1, 9100000, '9100000', 'Tissot - Nam T086.407.11.061.00');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `img`) VALUES
(1, 'Casio', '1700298355_casio.jpeg'),
(2, 'Orient', '1700298369_Orient.jpeg'),
(3, 'Citizen', '1700298381_Citizen.jpeg'),
(4, 'Seiko', '1700298391_Seiko.jpeg'),
(5, 'Tissot', '1700299147_Tissot.jpeg'),
(6, 'Longines', '1700299572_Longines.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int NOT NULL,
  `id_user` int NOT NULL,
  `nguoi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `date` date DEFAULT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `thanhtien` int NOT NULL,
  `trangthai` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `id_user`, `nguoi_nhan`, `email`, `tel`, `address`, `date`, `ghi_chu`, `thanhtien`, `trangthai`) VALUES
(72, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0963258741', 'thai binh', '2024-07-25', '', 4890000, 3),
(73, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0533463779', 'thai binh', '2024-07-25', 'ok ko sao', 9100000, 2),
(74, 13, 'phuoc@fpt233344', ' nguyencong1@gmail.com', '0533463779', 'Thôn lộng khê3 ', '2024-07-25', '', 18180000, 2),
(75, 13, 'Van a', ' nguyencong1@gmail.com', '0533463779', 'tB', '2024-07-25', '', 24, 1),
(76, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0533463779', 'An Khê quỳnh Phụ Thái Bình', '2024-07-26', NULL, 5800000, 0),
(77, 14, 'phuocncph3 ', ' nguyencong19@gmail.com', '0533463779', 'An Khê quỳnh Phụ Thái Bình', '2024-07-27', NULL, 180000, 0),
(78, 13, 'hoa', ' nguyencong1@gmail.com', '0533463779', 'An Khê quỳnh Phụ Thái Bình', '2024-07-27', '', 18180000, 0),
(79, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0533463779', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 0, 0),
(80, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0533463779', ' an khe', '2024-07-29', '', 14960000, 3),
(81, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0533463779', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 3890000, 0),
(82, 13, 'phuoc@fpt ', ' nguyencong1@gmail.com', '0987654321', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 7540000, 0),
(83, 13, 'phuoc@fpt ', ' nguyencong1@gmail.com', '0987654321', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 18000000, 0),
(84, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0912345678', 'Thôn lộng khê3  ', '2024-07-29', NULL, 180000, 0),
(85, 1, 'admin123', ' nguyencongphuoc80@gmail.com', '0965986843', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 29430000, 0),
(86, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0987654321', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 6500000, 0),
(87, 12, 'phuocncph347402', ' nguyencongphuoc80@gmail.com', '0123456789', 'An Khê quỳnh Phụ Thái Bình ', '2024-07-29', NULL, 5229000, 4),
(88, 12, 'phuocncph347402', ' nguyencongphuoc80@gmail.com', '0123456789', 'An Khê quỳnh Phụ Thái Bình', '2024-07-29', NULL, 180000, 0),
(89, 13, 'phuoc@fpt', ' nguyencong1@gmail.com', '0123456789', 'Thôn lộng khê3 66', '2024-07-30', '', 13260000, 3),
(90, 13, 'phuoc@fpt ', ' nguyencong1@gmail.com', '0123456789', 'thai binhvvvdv', '2024-07-30', '6by', 18180000, 2),
(91, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'An Khê quỳnh Phụ Thái Bình', '2024-08-06', NULL, 30490000, 0),
(92, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'An Khê quỳnh Phụ Thái Bình', '2024-08-06', NULL, 0, 0),
(93, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456785', 'thai binh', '2024-08-06', NULL, 0, 0),
(94, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'thai binh', '2024-08-06', NULL, 6500000, 0),
(95, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'Thôn lộng khê3 ', '2024-08-06', NULL, 7780000, 0),
(96, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'An Khê quỳnh Phụ Thái Bình', '2024-08-06', NULL, 7950000, 0),
(97, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0987654321', 'Thôn lộng khê3 ', '2024-08-06', NULL, 2650000, 0),
(98, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0987654321', 'Thôn lộng khê3 ', '2024-08-06', NULL, 5800000, 0),
(99, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0987654321', 'Thôn lộng khê3 ', '2024-08-06', NULL, 2650000, 0),
(100, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0987654321', 'An Khê quỳnh Phụ Thái Bình', '2024-08-06', NULL, 4890000, 0),
(101, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'Thôn lộng khê3 ', '2024-08-06', NULL, 180000, 0),
(102, 13, 'phuoc@fpt1', ' nguyencong1@gmail.com', '0123456789', 'Thôn lộng khê3 ', '2024-08-06', '', 8600000, 3),
(103, 12, 'phuocncph347402', ' nguyencongphuoc80@gmail.com', '0987654321', 'Nam từ Liêm, Hà Nội', '2024-08-09', '', 9100000, 3),
(104, 12, 'phuocncph347402', ' nguyencongphuoc80@gmail.com', '0961697384', 'Nam từ Liêm, Hà Nội ', '2024-08-09', '', 9100000, 3),
(105, 12, 'phuocncph347402', ' nguyencongphuoc80@gmail.com', '0987654321', 'ha noi', '2024-08-09', '', 9100000, 3),
(106, 14, 'phuocncph3', ' nguyencong19@gmail.com', '0987654321', 'hà nội', '2024-11-07', NULL, 9100000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int NOT NULL,
  `iddm` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `img3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gia` int NOT NULL,
  `gia_new` int NOT NULL,
  `mota` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `soluong` int NOT NULL,
  `xuatxu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kieumay` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `luotxem` int DEFAULT '0',
  `trangthai` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `iddm`, `name`, `img`, `img2`, `img3`, `gia`, `gia_new`, `mota`, `soluong`, `xuatxu`, `kieumay`, `luotxem`, `trangthai`) VALUES
(1, 2, 'Orient FAG02003W0 Size 41mm', 'dongho1.jpeg', '1701335200_dong-ho-orient--fag02003w0_2-ims.jpeg', '1701335200_dong-ho-orient--fag02003w0_4-ims.jpeg', 4500000, 3890000, 'Orient FAG02003W0 không chỉ là mẫu đồng hồ thuộc kiểu Semi Skeleton (lộ cơ) độc đáo mà còn là sự kết hợp hoàn hảo giữa cỗ máy bền bỉ của Nhật Bản và âm hưởng truyền thống đậm phong cách Thụy Sĩ. Chi tiết một cửa sổ \"độc nhãn\" (Open Heart) ở vị trí 7h - 10h tạo nên vẻ khác biệt cho sản phẩm khi giúp người dùng có trải nghiệm thú vị, không cảm thấy rối mắt mỗi lần nhìn ngắm chuyển động của bộ máy F6T22.\"', 20, 'Thụy Sỹ', 'Pin/Quazt', 100, 0),
(2, 2, 'Orient - Nam FAG00003W043', 'dongho2.jpeg', '1701335333_FAG00003W0-2.jpeg', '1701335333_FAG00003W0-3.jpeg', 8050000, 6500000, 'Orient là một trong những thương hiệu đồng hồ nổi tiếng trên thế giới. Để đáp ứng nhu cầu về đa dạng khách hàng, Orient luôn sẵn hàng nâng cao, cải tiến và cho ra đời những sản phẩm độc lạ. Một trong các mẫu đồng hồ nam Orient rất được người tiêu dùng ưa chuộng đó là mẫu Orient FAG00003W0. Sản phẩm cũng là một trong những bộ sưu tập đắt giá của nhà Orient. Nếu là một tín đồ của đồng hồ, bạn không thể bỏ qua cơ hội sở hữu dòng Orient FAG00003W0 này.\"', 12, 'Thụy Sỹ', 'Cơ/Automatic', 98, 0),
(3, 2, 'Orient - RA-AR0004S10B', 'dongho3.jpeg', '1701335463_dong-ho-orient-ra-ar0004s10b_2-ims.jpeg', '1701335463_dong-ho-orient-ra-ar0004s10b_3-ims.jpeg', 8970000, 6700000, 'Với cách “nhá hàng” cấu tạo một phần bộ máy bên trong, đồng hồ Orient RA-AR0004S10B Open Heart đã khơi dậy trí tò mò của bất cứ ai từng chiêm ngưỡng. Sản phẩm kết hợp hài hòa giữa phong cách hiện đại và cổ điển giúp tôn lên vẻ sang trọng và thời thượng cho nam giới\"', 20, 'Thụy Sỹ', 'Cơ/Automatic', 17, 0),
(4, 2, 'Orient - FAG03002B0 38.5', 'dongho4.jpeg', '1701335643_dong-ho-orient-fag03002b0_2-ims.jpeg', '1701335643_dong-ho-orient-fag03002b0_4-ims.jpeg', 7050000, 5700000, 'Đồng hồ Orient FAG03002B0 được xem là một siêu phẩm độc đáo, kết hợp giữa lối thiết kế cổ điển nhưng vẫn mang đậm phong cách thời thượng của thương hiệu đến từ Nhật Bản. Dưới sự trau chuốt và tỉ mỉ của các Designer nhà Orient, model nền mặt số màu đen phối với dây kim loại màu bạc này đã tạo được sức hút riêng biệt khiến nhiều người mong muốn sở hữu. \"', 15, 'Thụy Sỹ', 'Cơ/Automatic', 43, 0),
(13, 5, 'Tissot T006.407.16.033.00', '1700576058_Tissot T006.407.16.033.00.jpeg', '1701335063_dong-ho-tissot-t006.407.16.033.00_2-ims.jpeg', '1701335063_dong-ho-tissot-t006.407.16.033.00_3-ims.jpeg', 14500000, 11290000, 'Tissot là thương hiệu của Thụy Sỹ được thành lập vào năm 1853. Được thành lập bởi Charles-Félicien Tissot và người con trai Charles-Émile Tissot. Các dòng sản phẩm tiêu biểu: “Tissot Prx, Tissot Le Locle, Tissot Luxury, Tissot Chemin Des Tourelles, Tissot 18K Gold, Tissot T-Wave…”\"', 10, 'Thụy Sỹ', 'Cơ/Automatic', 35, 0),
(14, 3, 'Citizen NH8363-14H', '1700576274_Citizen NH8363-14H.jpeg', '1701333399_dong-ho-citizen-nh8363-14h_2-ims.jpeg', '1701333399_dong-ho-citizen-nh8363-14h_3-ims.jpeg', 5500000, 4230000, 'Đồng hồ Citizen là thương hiệu của Nhật Bản ra đời năm 1918 bởi viện nghiên cứu đồng hồ Shokosha. Citizen tiếng nhật có ý nghĩa đó là “người dân” hàm ý là bất kỳ ai cũng có thể sở hữu được đồng hồ của thương hiệu này\"\"', 5, 'Thụy Sỹ', 'Cơ/Automatic', 34, 0),
(15, 3, 'Citizen BM7256-50E', '1700576346_Citizen BM7256-50E.jpeg', '1701333294_BM7256-50E-4.jpeg', '1701333294_BM7256-50E-7.jpeg', 4590000, 3700000, 'Đồng hồ Citizen là thương hiệu của Nhật Bản ra đời năm 1918 bởi viện nghiên cứu đồng hồ Shokosha. Citizen tiếng nhật có ý nghĩa đó là “người dân” hàm ý là bất kỳ ai cũng có thể sở hữu được đồng hồ của thương hiệu này\"', 20, 'Thụy Sỹ', 'Cơ/Automatic', 50, 0),
(16, 6, 'Longines L2.321.4.87.2', '1700576415_Longines L2.321.4.87.2.jpeg', '1701333589_L2.321.4.87.2-3-1664953295253.jpeg', '1701333589_L2.321.4.87.2-1-1664953287371.jpeg', 6500000, 5900000, '- Longines là thương hiệu đồng hồ Thụy Sỹ ra đời vào năm 1832. Được sáng lập bởi Auguste Agassiz. Có những dòng sản phẩm tiêu biểu: “Elegance, Watchmaking Tradition, Avigation, Diving, Performance”.\"', 8, 'Thụy Sỹ', 'Cơ/Automatic', 63, 0),
(17, 6, 'Longines L3.742.4.96.6', '1700576490_Longines L3.742.4.96.6.jpeg', '1701333711_L3.742.4.96.6-3-1649732654576.jpeg', '1701333711_L3.742.4.96.6-2-1649732648365.jpeg', 8900000, 7560000, '- Longines là thương hiệu đồng hồ Thụy Sỹ ra đời vào năm 1832. Được sáng lập bởi Auguste Agassiz. Có những dòng sản phẩm tiêu biểu: “Elegance, Watchmaking Tradition, Avigation, Diving, Performance”.\"\"\"\"', 15, 'Thụy Sỹ', 'Cơ/Automatic', 54, 0),
(18, 2, 'Orient RA-AR0003L10B', '1700576568_Orient RA-AR0003L10B.jpeg', '1701334240_RA-AR0003L10B-3-1678181761610.jpeg', '1701334240_RA-AR0003L10B-5-1678181767893.jpeg', 8900000, 7240000, 'Đúng với tên gọi Orient RA-AR0003L10B Open Heart, chiếc đồng hồ nam này được hãng lồng ghép chi tiết “hở tim” vô cùng tinh tế ở cả hai mặt. Ở phía trước, phần lộ máy đặt tại vị trí 9h thu hút và có viền bằng kim loại màu bạc bao bọc xung quanh. Phía sau sản phẩm cũng có một “cửa sổ” lớn giúp người dùng chiêm ngưỡng được bộ máy cơ học.\"\"', 20, 'Thụy Sỹ', 'Cơ/Automatic', 72, 0),
(19, 2, 'Orient FAG02005W0', '1700576653_Orient FAG02005W0.jpeg', '1701333807_dong-ho-orient-fag02005w0_2-ims.jpeg', '1701333807_dong-ho-orient-fag02005w0_3-ims.jpeg', 6790000, 5090000, 'Orient FAG02003W0 không chỉ là mẫu đồng hồ thuộc kiểu Semi Skeleton (lộ cơ) độc đáo mà còn là sự kết hợp hoàn hảo giữa cỗ máy bền bỉ của Nhật Bản và âm hưởng truyền thống đậm phong cách Thụy Sĩ. Chi tiết một cửa sổ \"độc nhãn\" (Open Heart) ở vị trí 7h - 10h tạo nên vẻ khác biệt cho sản phẩm khi giúp người dùng có trải nghiệm thú vị, không cảm thấy rối mắt mỗi lần nhìn ngắm chuyển động của bộ máy F6T22.\"', 10, 'Thụy Sỹ', 'Cơ/Automatic', 94, 0),
(20, 2, 'Orient FAG02005W1', '1700576720_Orient FAG02005W1.jpeg', '', '1701334124_Orient-RA-KA0003S00B-3.jpeg', 5600000, 4890000, 'Orient là thương hiệu đồng hồ Nhật Bản thành lập năm 1950. Hãng được sáng lập bởi Shogoro Yoshida. Các dòng sản phẩm làm nên tên tuổi của Orient đó là “Orient Star, Orient Sun and Moon, Orient SK,...”\"', 16, 'Thụy Sỹ', 'Cơ/Automatic', 240, 0),
(21, 2, 'Orient SK RA-AA0B02R19B', '1700576815_Orient SK RA-AA0B02R19B.jpeg', '1701334389_RA-AA0B02R19B-3.jpeg', '1701334389_RA-AA0B02R19B-2.jpeg', 7890000, 5800000, 'Cho đến hiện tại chiếc đồng hồ Nhật Bản Orient SK RA-AA0B02R19B vẫn đang được nhiều người săn lùng bởi vẻ đẹp vượt thời gian cũng như những bí ẩn đằng sau cỗ máy thời gian này. Sản phẩm không chỉ có thiết kế mặt số lớn đầy nam tính và đẹp mắt mà sở hữu các tính năng rất ưu việt.\"', 15, 'Thụy Sỹ', 'Cơ/Automatic', 162, 0),
(22, 4, 'Seiko 42mm SUR211P1', '1700576974_Seiko 42mm SUR211P1.jpeg', '1701334835_SUR211P1-5.jpeg', '1701334835_SUR211P1-6.jpeg', 489000, 4120000, 'Seiko là thương hiệu đồng hồ Nhật được sáng lập năm 1881. Người sáng lập nên thương hiệu đó là Seiko Kintaro Hattori. Những bộ sưu tập tiêu biểu khi nhắc đến đồng hồ Seiko đó là “Seiko 5, Seiko Solar, Seiko Kinetic, Seiko Chronograph,...”\"\"', 18, 'Thụy Sỹ', 'Cơ/Automatic', 0, 0),
(23, 4, 'Seiko 42.5mm SRPD76K1', '1700577362_Seiko 42.5mm SRPD76K1.jpeg', '1701334656_dong-ho-seiko-srpd76k1_3-ims.jpeg', '1701334656_dong-ho-seiko-srpd76k1_4-ims.jpeg', 10890000, 8600000, 'Seiko là thương hiệu đồng hồ Nhật được sáng lập năm 1881. Người sáng lập nên thương hiệu đó là Seiko Kintaro Hattori. Những bộ sưu tập tiêu biểu khi nhắc đến đồng hồ Seiko đó là “Seiko 5, Seiko Solar, Seiko Kinetic, Seiko Chronograph,...”\"', 5, 'Thụy Sỹ', 'Cơ/Automatic', 74, 0),
(24, 4, 'Seiko 42mm SNZG13J1', '1700577470_Seiko 42mm SNZG13J1.jpeg', '1701334742_dong-ho-seiko-snzg13j1_2-ims.jpeg', '1701334742_dong-ho-seiko-snzg13j1_3-ims.jpeg', 5780000, 4500000, 'Seiko là thương hiệu đồng hồ Nhật được sáng lập năm 1881. Người sáng lập nên thương hiệu đó là Seiko Kintaro Hattori. Những bộ sưu tập tiêu biểu khi nhắc đến đồng hồ Seiko đó là “Seiko 5, Seiko Solar, Seiko Kinetic, Seiko Chronograph,...”\"', 20, 'Thụy Sỹ', 'Cơ/Automatic', 58, 0),
(25, 4, 'Seiko 38mm SNKD99K1-5', '1700577580_Seiko 38mm SNKD99K1-5.jpeg', '1701334540_SNKD99K1-3.jpeg', '1701334540_SNKD99K1-1.jpeg', 4500000, 4000000, 'Seiko là thương hiệu đồng hồ Nhật được sáng lập năm 1881. Người sáng lập nên thương hiệu đó là Seiko Kintaro Hattori. Những bộ sưu tập tiêu biểu khi nhắc đến đồng hồ Seiko đó là “Seiko 5, Seiko Solar, Seiko Kinetic, Seiko Chronograph,...”\"', 33, 'Thụy Sỹ', 'Pin/Quazt', 24, 0),
(26, 1, 'san pham tesrt', '1700577643_Casio 42mm MTP-1375L.jpeg', '1701332638_dong-ho-casio-mtp-1375l-7a_5-ims.jpeg', '1701332638_dong-ho-casio-mtp-1375l-7a_3-ims.jpeg', 2000000, 1250000, 'Là cái tên nổi bật trong series Enticer, mẫu đồng hồ Casio MTP-1375L-7AVDF được đông đảo nam giới đón nhận nồng nhiệt. Cách phối màu kinh điển - dây da đen, nền mặt trắng - khiến sản phẩm được tôn thêm vẻ sang trọng để kết hợp với nhiều bộ trang phục khác nhau của các quý ông\"\"', 12, 'Thụy Sỹ', 'Cơ/Automatic', 73, 0),
(27, 1, 'Casio G-Shock GA-2100', '1700577701_Casio G-Shock GA-2100.jpeg', '1701333135_GA-2100-1A1-3.jpeg', '1701333135_GA-2100-1A1-20.jpeg', 3270000, 2650000, 'Đồng hồ Casio chính hãng có độ bền cực cao với việc sở hữu mặt kính khoáng hay kính sapphire chống xước cao, tránh được những thương tổn khi va chạm.\r\nDây đeo được làm từ các chất liệu như nhựa cao cấp, da thật, cao su, titan, thép chống gỉ,... Bền bỉ theo thời gian bất chấp mọi điều kiện thời tiết, môi trường.\r\nCó một số dòng đồng hồ Casio còn được trang bị chức năng ngăn chặn xâm nhập của cát, bùn, bụi,... Đảm bảo sản phẩm luôn hoạt động trong trạng thái bình thường\"', 7, 'Thụy Sỹ', 'Cơ/Automatic', 99, 0),
(28, 1, 'Casio 43.5mm MTP-1374L', '1700577758_Casio 43.5mm MTP-1374L.jpeg', '1701332755_CASIO-MTP-1374L-1AVDF-3.jpeg', '1701332755_CASIO-MTP-1374L-1AVDF-2.jpeg', 2100000, 1590000, 'Trẻ trung, cá tính nhưng không kém phần thanh lịch và sang trọng; đó là 4 cụm từ mô tả chính xác về diện mạo của đồng hồ Casio MTP-1374L-1AVDF. Sản phẩm điện tử được mệnh danh là “lựa chọn mới cho phân khúc giá rẻ” này rất đáng để bất cứ ai trải nghiệm.\"\"', 9, 'Nhật Bản', 'Cơ/Automatic', 22, 1),
(29, 1, 'Casio AE-1200WHD', '1700577843_Casio AE-1200WHD.jpeg', '1701332943_AE-1200WHD-1AVDF-6.jpeg', '1701332943_AE-1200WHD-1AVDF-7.jpeg', 1580000, 1090000, 'Không quá khi nhận định rằng đồng hồ Casio AE-1200WHD-1AVDF là một trong số những mẫu “ăn khách” nhất Việt Nam. Bởi sản phẩm chỉ có mức giá tầm trung nhưng sở hữu đa chức năng tiện lợi và độ bền “khủng” đến khó tin cùng thiết kế cực “ngầu” với phái mạnh.\r\nVới những chiếc đồng hồ thuộc Series Casio AE1200 truyền thống, NSX đã thực hiện đúng phương châm “liên tục tạo ra những thứ quan trọng nhất đối với người dùng”. Vì sản phẩm giúp bạn tập trung tốt hơn vào việc xác định giờ giấc siêu chuẩn, cụ thể đến từng giây.\"\"', 100, 'Hàn Quốc', 'Cơ/Automatic', 1, 0),
(38, 5, 'Tissot - Nam T099.429.11.038.00 Size', '1701335850_T099.429.11.038.00-1-1657079694916.jpeg', '1701335850_T099.429.11.038.00-3-1657079697907.jpeg', '1701335850_T099.429.11.038.00-6-1657079706150.jpeg', 13000000, 10890000, 'Tissot là thương hiệu của Thụy Sỹ được thành lập vào năm 1853. Được thành lập bởi Charles-Félicien Tissot và người con trai Charles-Émile Tissot. Các dòng sản phẩm tiêu biểu: “Tissot Prx, Tissot Le Locle, Tissot Luxury, Tissot Chemin Des Tourelles, Tissot 18K Gold, Tissot T-Wave…”\"', 6, 'Thụy Sỹ', 'Pin/Quazt', 4, 0),
(39, 5, 'Tissot - Nam T086.407.11.061.00', '1701335970_T086.407.11.061.00-1-1657164340779.jpeg', '1701335970_T086.407.11.061.00-3-1657164343193.jpeg', '1701335970_T086.407.11.061.00-6-1657164351579.jpeg', 10900000, 9100000, 'Tissot là thương hiệu của Thụy Sỹ được thành lập vào năm 1853. Được thành lập bởi Charles-Félicien Tissot và người con trai Charles-Émile Tissot. Các dòng sản phẩm tiêu biểu: “Tissot Prx, Tissot Le Locle, Tissot Luxury, Tissot Chemin Des Tourelles, Tissot 18K Gold, Tissot T-Wave…”\"', 15, 'Thụy Sỹ', 'Pin/Quazt', 8, 0),
(42, 1, 'kjnkj', '1721270506_Ảnh chụp màn hình (1).png', '1721270506_Ảnh chụp màn hình 2024-04-13 195050.png', '1721270506_Ảnh chụp màn hình 2024-04-13 195050.png', 34345, 34, 'thjjjyttyj', 3, 'Thụy Sỹ', 'Cơ/Automatic', 0, 1),
(43, 1, 'san pham moi', '1721270639_Ảnh chụp màn hình 2024-04-13 195050.png', '1721270639_Ảnh chụp màn hình 2024-04-16 172847.png', '1721270639_Ảnh chụp màn hình 2024-04-18 211048.png', 10000, 12, 'hihi', 1, 'Thụy Sỹ', 'Cơ/Automatic', 0, 1),
(44, 1, 'Phuoc', '1721835924_tải xuống.jpg', '1721835924_tên j.bmp', '1721835924_tênc.bmp', 8970009, 159000, 'ghi chú ', 87, 'Thụy Sỹ', 'Cơ/Automatic', 0, 1),
(45, 1, 'dat12344', '1721836001_tải xuống.jpg', '1721836001_tên j.bmp', '1721836001_tên x.bmp', 1000000, 123456, 'kkkdsds\"g', 3, 'Hàn Quốc', 'Cơ/Automatic', 0, 1),
(46, 1, 'ph347403', '1721876944_tải xuống (1).jpg', '1721876944_tải xuống (3).jpg', '1721876944_tải xuống (4).jpg', 8970009, 18000000, 'okr', 8, 'Thụy Sỹ', 'Cơ/Automatic', 0, 0),
(47, 1, 'ádad', '1721877368_tải xuống (2).jpg', '1721877368_tải xuống (1).jpg', '1721877368_tải xuống (4).jpg', 23, 12, 'aewq', 12, 'Thụy Sỹ', 'Cơ/Automatic', 0, 1),
(48, 1, 'Phuoc2', '1721886012_mtp-b145d-2a1vdf-1712554871.webp', '1721886012_mtp-1374l-1avdf-1499993290-2117200442-1712554204.webp', '1721886012_op89322agsk-t-2-1657793124233-1712573938.webp', 489000, 180000, 'ok', 100, 'Thụy Sỹ', 'Cơ/Automatic', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int NOT NULL,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` int NOT NULL,
  `checkname` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `tel`, `address`, `role`, `checkname`) VALUES
(1, 'admin123', 'Admin123123', 'admin@gmail.com.vn', NULL, NULL, 1, 0),
(12, 'phuocncph347402', 'Phuoc123', 'nguyencongphuoc80@gmail.com', '0533463779', 'an khê', 0, 1),
(13, 'phuoc@fpt1', 'Nguyen123', 'nguyencong1@gmail.com', '0123456789', 'an khê', 0, 1),
(14, 'phuocncph3', 'Phuoc1234', 'nguyencong19@gmail.com', NULL, NULL, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tk_bl` (`id_user`),
  ADD KEY `fk_pro_bl` (`id_pro`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sp_cart` (`idsp`),
  ADD KEY `fk_user_cart` (`iduser`);

--
-- Indexes for table `ct_don_hang`
--
ALTER TABLE `ct_don_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ctdh_dh` (`id_dh`),
  ADD KEY `fk_ctdh_sp` (`id_sp`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_dh_tk` (`id_user`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_danhmuc_sanpham` (`iddm`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `ct_don_hang`
--
ALTER TABLE `ct_don_hang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_sp_cart` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_user_cart` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `ct_don_hang`
--
ALTER TABLE `ct_don_hang`
  ADD CONSTRAINT `fk_ctdh_dh` FOREIGN KEY (`id_dh`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `fk_ctdh_sp` FOREIGN KEY (`id_sp`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_dh_tk` FOREIGN KEY (`id_user`) REFERENCES `taikhoan` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_danhmuc_sanpham` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
