-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 19, 2021 lúc 04:36 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thue_can_ho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `can_ho`
--

CREATE TABLE `can_ho` (
  `ma_can` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ma_quan` int(12) NOT NULL COMMENT 'mã quận',
  `id` int(12) NOT NULL COMMENT 'mã phường',
  `ma_loai` int(12) NOT NULL COMMENT 'mã loại căn',
  `ma_tk` int(12) NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ',
  `ten_can_ho` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'tên căn hộ',
  `dien_tich` float DEFAULT NULL COMMENT 'diện tích ',
  `tang` tinyint(3) DEFAULT NULL COMMENT 'Số tầng',
  `huong_nha` tinyint(8) DEFAULT NULL COMMENT 'hướng nhà',
  `tien_ich` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Tiện ích',
  `chi_phi_khac` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'chi phí khác',
  `so_phong_ngu` tinyint(2) DEFAULT NULL COMMENT 'Số phòng ngủ',
  `so_phong_vs` tinyint(2) DEFAULT NULL COMMENT 'Số phòng vệ sinh',
  `gia_thue` float NOT NULL DEFAULT 0 COMMENT 'Giá thuê',
  `hinh` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinha` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhb` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hinhc` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `an_hien` tinyint(1) DEFAULT NULL COMMENT 'Ẩn hiện',
  `ghi_chu` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ghi chú',
  `trang_thai` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `can_ho`
--

INSERT INTO `can_ho` (`ma_can`, `ma_quan`, `id`, `ma_loai`, `ma_tk`, `dia_chi`, `ten_can_ho`, `dien_tich`, `tang`, `huong_nha`, `tien_ich`, `chi_phi_khac`, `so_phong_ngu`, `so_phong_vs`, `gia_thue`, `hinh`, `hinha`, `hinhb`, `hinhc`, `an_hien`, `ghi_chu`, `trang_thai`) VALUES
(13, 4, 48, 1, 12, '312 Nguyễn Trãi, P.Trung Văn, Q.Nam Từ Liêm, Hà Nội ', 'Chung cư mini', 50, 23, 1, '<p>gần c&aacute;c trường học từ mẫu gi&aacute;o cho đến đại học danh tiếng : Trường mầm non Sao Mai , Trường cấp 1 Đặng Trần C&ocirc;n , Trường cấp 2 Nguyễn Hữu Thọ , Trường cấp 3 Nguyễn Tr&atilde;i , Trường đại học Luật TP. Hồ Ch&iacute; Minh, bệnh viện Quận 4,...</p>\r\n', '', 2, 1, 18500000, 'nha1-1.jpg', 'nha1-2.jpg', 'nha1-3.jpg', 'nha1-4.jpg', 1, 'Còn phòng', '1'),
(14, 4, 48, 2, 12, '111 Trần Đăng Ninh, Cầu Giấy, Hà Nội', 'Chung cư mini', 40, 0, 2, '<p>Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 12000000, 'nha2-1.jpg', 'nha2-2.jpg', 'nha2-3.jpg', 'nha2-4.jpg', 1, 'Còn phòng', '0'),
(15, 4, 48, 1, 12, ' 118 Thái hà, Đống Đa, Hà Nội', 'Chung cư mini', 35, 0, 1, '<p>Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 13000000, 'nha3-1.jpg', 'nha3-2.jpg', 'nha3-3.jpg', 'nha3-4.jpg', 1, 'Còn phòng', '1'),
(20, 4, 48, 2, 22, '60-62 Đại Cồ Việt, P. Lê Đại Hành, Q. Hai Bà Trưng, TP. Hà Nội', 'Chung cư mini', 115, 0, 7, '<p>-&nbsp;<strong>Được trang bị nội thất gồm:&nbsp;m&aacute;y lạnh, sofa, giường tủ,&nbsp;thiết bị ph&ograve;ng tắm, ph&ograve;ng vệ sinh,...</strong></p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt , khu thương mại , ph&ograve;ng tập GYM hiện đại, vườn thượng uyển s&acirc;n thượng, nh&agrave; h&agrave;ng, caf&eacute;, khu vui chơi trẻ em v&agrave; vườn treo Babylon tại tầng thượng.</p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch ngoại khu</strong>:&nbsp;gần c&aacute;c trường học từ mẫu gi&aacute;o cho đến đại học danh tiếng : Trường mầm non Sao Mai , Trường cấp 1 Đặng Trần C&ocirc;n , Trường cấp 2 Nguyễn Hữu Thọ , Trường cấp 3 Nguyễn Tr&atilde;', '', 3, 2, 14000000, 'nha8-1.jpg', 'nha8-2.jpg', 'nha8-3.jpg', 'nha8-4.jpg', 1, 'Còn phòng', '1'),
(21, 4, 48, 1, 21, '18 ngõ 2, Đường Nguyễn Chánh, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội', 'Nhà trọ', 40, 0, 7, '<p><strong>- Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt, khu thương mại, ph&ograve;ng tập GYM hiện đại...</p>\r\n\r\n<p><strong>- Tiện &iacute;ch ngoại khu:</strong>&nbsp;Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 3000000, 'nhatro10.jpg', 'nha9-2.jpg', 'nha9-3.jpg', 'nha9-4.jpg', 1, 'Hết phòng', '0'),
(22, 4, 48, 1, 21, 'Ngõ 20 đường bưởi SN 19a/33 1t, Đường Bưởi, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 34, 0, 8, '<p><strong>- Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt, khu thương mại, ph&ograve;ng tập GYM hiện đại...</p>\r\n\r\n<p><strong>- Tiện &iacute;ch ngoại khu:</strong>&nbsp;Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 10000000, 'nha10-1.jpg', 'nha10-2.jpg', 'nha10-3.jpg', 'nha10-4.jpg', 0, 'Còn phòng', '1'),
(23, 6, 70, 2, 21, 'số 6 ngõ 163, Đường Nguyễn Khang, Phường Yên Hoà, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 21, 2, 0, '<p>- <strong>Tiện ích nội khu</strong>: Hồ bơi, phòng Gym, Sân vườn nội bộ, hệ thống an ninh...</p>\r\n\r\n<p>- <strong>Tiện ích ngoại khu:</strong> Trường TH Nguyễn Văn Trỗi, Trường THCS Chi Lăng, UBND Phường, Trạm y tế...</p>\r\n\r\n<p>- <strong>Giá thuê 12 triệu/tháng. Hợp đồng thuê tối thiểu 1 năm - Đặt cọc 2 tháng tiền thuê nhà.</strong></p>\r\n', '', 1, 1, 12000000, 'nha11-1.jpg', 'nha11-2.jpg', 'nha11-3.jpg', 'nha11-4.jpg', 0, 'Hết phòng', '1'),
(25, 3, 22, 2, 21, '22D ngõ 97, Đường Hoàng Mai, Phường Hoàng Văn Thụ, Quận Hoàng Mai, Hà Nội', 'Nhà trọ', 205, 1, 1, '<p>CÁC DỊCH VỤ BAO GỒM TRONG PHÍ QUẢN LÝ<br />\r\n- Điện phục vụ cho làm mát, thông gió khu vực công cộng.<br />\r\n- Nhân viên lễ tân<br />\r\n- Bảo vệ 24/24<br />\r\n- Nhân viên vệ sinh chung<br />\r\n- Thang máy<br />\r\n- Điện chiếu sáng khu vực công cộng<br />\r\n- Bảo trì thang máy.<br />\r\n- Bảo trì khu vực công cộng.<br />\r\n- Diệt côn trùng khu vực công cộng<br />\r\n- Nước sinh hoạt<br />\r\n<br />\r\nCÁC DỊCH VỤ KHÔNG BAO GỒM TRONG PHÍ QUẢN LÝ:<br />\r\n- Điện tiêu thụ tại Khu vực thuê.<br />\r\n- Chi phí điện thoại bao gồm cả chi phí lắp đặt điện thoại.<br />\r\n- Dọn dẹp bên trong Khu vực thuê', '', 1, 1, 2000000, 'nhatro9.jpg', 'nha13-2.jpg', 'nha13-3.jpg', 'nha13-4.jpg', 1, 'Hết phòng', '1'),
(28, 11, 145, 1, 22, '34/86 ngõ an trạch 2, Đường Đoàn Thị Điểm, Phường Quốc Tử Giám, Quận Đống Đa, Hà Nội', 'Chung cư mini', 74, 0, 8, '<p>h&agrave;&nbsp;full nội thất: TV, tủ lạnh, b&agrave;n ghế, m&aacute;y lạnh, m&aacute;y nước n&oacute;ng...</p>\r\n\r\n<p>Vị tr&iacute; thuận tiện Tiện &iacute;ch xung quanh: si&ecirc;u thị Coopmart, Đại học B&aacute;ch Khoa, Y Dược, Y khoa Phạm Ngọc Thạch, Parkson H&ugrave;ng Vương, bệnh viện Chợ Rẫy...</p>\r\n\r\n<p>Thuận tiện di chuyển qua c&aacute;c quận như: quận 5, quận 6, quận 10,...</p>\r\n', '', 2, 2, 13000000, 'chungcu2.jpg', 'nha16-2.jpg', 'nha16-3.jpg', 'nha16-4.jpg', 1, 'Còn phòng', '1'),
(32, 5, 61, 2, 22, 'Ngõ 20 đường bưởi SN 19a/33 1t, Đường Bưởi, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 79, 0, 7, '<p>- Chung cư nằm ở vị tr&iacute; trung t&acirc;m quận 5, khu vực an ninh, y&ecirc;n tĩnh, xung quanh c&oacute; nhiều tiện &iacute;ch như: gần trường học c&aacute;c cấp, gần chợ&nbsp;An Đ&ocirc;ng, gần c&ocirc;ng vi&ecirc;n, c&aacute;c bệnh viện trung t&acirc;m như Nguyễn Trị Phương, Bv Qu&acirc;n Y 7A, Bv Phụ Sản An Đ&ocirc;ng, Bv An B&igrave;nh.&nbsp;</p>\r\n\r\n<p>- Giao th&ocirc;ng thuận tiện qua c&aacute;c quận trung t&acirc;m: 1,6,10,11,7,8</p>\r\n', '', 2, 2, 8000000, 'chungcu1.jpg', 'nha20-2.jpg', 'nha20-3.jpg', 'nha20-4.jpg', 1, 'Hết phòng', '1'),
(34, 4, 37, 2, 12, 'Số 446, đường Đại Mỗ, P. Đại Mỗ, Q. Nam Từ Liêm, Tp. Hà Nội', 'Nhà trọ', 58, 0, 4, '<p>- Vị tr&iacute; căn hộ ngay&nbsp;<strong>mặt tiền Nguyễn Kho&aacute;i</strong>. Thuận tiện di chuyển&nbsp;<strong>sang quận 1, 5, 7, 8...</strong></p>\r\n\r\n<p>-&nbsp;Tiện &iacute;ch:<strong>&nbsp;khu vui chơi, cửa h&agrave;ng tiện lợi, xung quanh c&oacute; c&aacute;c trường tiểu học, Hồ bơi, C&ocirc;ng an phường, Si&ecirc;u thị...</strong></p>\r\n', '', 2, 2, 2300000, 'nhatro8.jpg', 'nha22-2.jpg', 'nha22-3.jpg', 'nha22-4.jpg', 1, 'Còn phòng', '1'),
(38, 6, 80, 1, 12, '22D ngõ 97, Đường Hoàng Mai, Phường Hoàng Văn Thụ, Quận Hoàng Mai, Hà Nội', 'Chung cư mini', 97, 19, 2, '<p>&nbsp;Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 3, 2, 15000000, 'nha26-1.jpg', 'nha26-2.jpg', 'nha26-3.jpg', 'nha26-4.jpg', 1, 'Còn phòng', '1'),
(39, 6, 80, 2, 12, 'số 12 ngõ 328 đường tây mỗ, Đường Tây Mỗ, Phường Tây Mỗ, Quận Nam Từ Liêm, Hà Nội', 'Nhà trọ', 97, 19, 2, '<p>&nbsp;Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 3, 2, 3000000, 'nhatro7.jpg', 'nha27-2.jpg', 'nha27-3.jpg', 'nha27-4.jpg', 1, 'Còn phòng', '1'),
(40, 7, 84, 1, 12, 'ngõ 157B sn 29D2, Đường Chùa Láng, Phường Láng Thượng, Quận Đống Đa, Hà Nội', 'Chung cư mini', 81, 0, 1, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 9700000, 'nha28-1.jpg', 'nha28-2.jpg', 'nha28-3.jpg', 'nha28-4.jpg', 1, 'Còn phòng', '1'),
(42, 7, 84, 1, 12, '63 xuân thủy, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 91, 0, 1, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 8000000, 'nha30-1.jpg', 'nha30-2.jpg', 'nha30-3.jpg', 'nha30-4.jpg', 1, 'Còn phòng', '0'),
(44, 7, 84, 2, 12, '76A/2 ngõ 294, Đường Kim Mã, Phường Kim Mã, Quận Ba Đình, Hà Nội', 'Nhà trọ', 120, 16, 6, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 3, 2, 2500000, 'nhatro6.jpg', 'nha32-2.jpg', 'nha32-3.jpg', 'nha32-3.jpg', 1, 'Còn phòng', '1'),
(45, 10, 137, 2, 12, 'Ngõ 2 Phố Nguyên Xá, Đường Cầu Diễn, Phường Minh Khai, Quận Bắc Từ Liêm, Hà Nội', 'Nhà trọ', 50, 0, 5, '<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n\r\n<p>- Xung quanh nhiều tiện &iacute;ch: Vạn Hạnh Mall, Big C miền đ&ocirc;ng, Bệnh viện 115, Bệnh viện Tim T&acirc;m Đức, Bệnh viện Nhi Đồng, Chợ H&ograve;a Hưng...</p>\r\n', '', 1, 1, 2000000, 'nhatro5.jpg', 'nha33-2.jpg', 'nha33-3.jpg', 'nha33-4.jpg', 1, 'Còn phòng', '0'),
(46, 9, 113, 1, 12, 'số 2 Ngõ 91, Đường Phan Trọng Tuệ, Phường Kiến Hưng, Quận Hà Đông, Hà Nội', 'Chung cư mini', 59, 0, 5, '<p>- VỊ TR&Iacute; ĐẮC ĐỊA - GIAO TH&Ocirc;NG THUẬN LỢI: Dễ d&agrave;ng kết nối đến mọi khu vực quan trọng trong th&agrave;nh phố.</p>\r\n', '', 2, 1, 6500000, 'nha34-1.jpg', 'nha34-2.jpg', 'nha34-3.jpg', 'nha34-4.jpg', 1, 'Còn phòng', '1'),
(48, 7, 84, 1, 12, '106 Ngõ 72/2, Đường Dương Quảng Hàm, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 81, 0, 4, '<p>- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 7700000, 'nha36-1.jpg', 'nha36-2.jpg', 'nha36-3.jpg', 'nha36-4.jpg', 1, 'Còn phòng', '0'),
(50, 10, 135, 2, 12, '102 Phạm Văn Đồng, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 108, 0, 6, '<p><strong>-&nbsp;Vị tr&iacute;: Tầng 6,&nbsp;view nội khu v&agrave; hồ bơi, tho&aacute;ng m&aacute;t. Ban c&ocirc;ng th&ocirc;ng tho&aacute;ngđ&oacute;n &aacute;nh nắng tự nhi&ecirc;n.</strong></p>\r\n\r\n<p>- Trong b&aacute;n k&iacute;nh 2km c&oacute; c&aacute;c tiện &iacute;ch:&nbsp;<strong>Học viện H&agrave;nh ch&iacute;nh Quốc gia, Nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Việt Nam Quốc tự,&nbsp;Bệnh viện B&igrave;nh D&acirc;n - Khu điều trị Kỹ thuật cao...</strong></p>\r\n\r\n<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n', '', 3, 3, 9000000, 'nha38-1.jpg', 'nha38-2.jpg', 'nha38-3.jpg', 'nha38-4.jpg', 1, 'Hết phòng', '1'),
(51, 10, 135, 2, 12, 'Số 446 Xã Đàn, Đống Đa, Hà Nội', 'Nhà trọ', 87, 0, 1, '<p>- Trong b&aacute;n k&iacute;nh 2km c&oacute; c&aacute;c tiện &iacute;ch:&nbsp;<strong>Học viện H&agrave;nh ch&iacute;nh Quốc gia, Nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Việt Nam Quốc tự,&nbsp;Bệnh viện B&igrave;nh D&acirc;n - Khu điều trị Kỹ thuật cao...</strong></p>\r\n\r\n<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n', '', 2, 2, 2000000, 'nhatro4.jpg', 'nha39-2.jpg', 'nha39-3.jpg', 'nha39-4.jpg', 1, 'Còn phòng', '1'),
(55, 7, 93, 1, 12, '15D ngõ 133, Đường Yên Hòa, Phường Yên Hoà, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 250, 3, 1, '<p>- Vị tr&iacute; thuận tiện:<strong>&nbsp;C&aacute;ch cầu Him lam 400m</strong>,&nbsp;<strong>Gần&nbsp;cầu K&ecirc;nh Tẻ, Cầu Rạch &Ocirc;ng,&nbsp;c&aacute;c trục đường ch&iacute;nh&nbsp;như&nbsp;Trần Xu&acirc;n Soạn, Nguyễn Hữu Thọ.&nbsp;Thuận tiện di chuyển c&aacute;c&nbsp;Quận 1. 4, 8, Nh&agrave; B&egrave;, B&igrave;nh Ch&aacute;nh,...</strong></p>\r\n', '', 4, 4, 14000000, 'nha41-1.jpg', 'nha41-2.jpg', 'nha41-3.jpg', 'nha41-4.jpg', 1, 'Hết phòng', '0'),
(56, 8, 100, 2, 12, 'Ngõ 36a/11 nguyễn an ninh SN 1, Đường Nguyễn An Ninh, Phường Trương Định, Quận Hai Bà Trưng, Hà Nội', 'Nhà trọ', 70, 0, 7, '<p>- Tiện &iacute;ch xung quanh: cửa h&agrave;ng tiện lợi Vinmart, UBND, c&ocirc;ng an Phường 7,&nbsp;trường Tiểu học An Phong, trường THCS Ph&uacute; Lợi,&nbsp;trường THPT Nguyễn Văn Linh,...</p>\r\n', '', 2, 2, 2000000, 'nhatro3.jpg', 'nha42-2.jpg', 'nha42-3.jpg', 'nha42-4.jpg', 1, 'Còn phòng', '0'),
(58, 6, 80, 2, 12, 'Số 118 Thái Hà, Đống Đa, Hà Nội', 'Nhà trọ', 0, 0, 6, '<p>- Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 2, 2, 2500000, 'nhatro2.jpg', 'nha44-2.jpg', 'nha44-3.jpg', 'nha44-4.jpg', 1, 'Còn phòng', '0'),
(59, 8, 109, 2, 12, 'Số 111 Trần Đăng Ninh, Cầu Giấy, Hà Nội', 'Nhà trọ', 74, 0, 4, '<p>Tiện &iacute;ch nội khu :Tầng 1: Khu sảnh đ&oacute;n kh&aacute;ch, nh&agrave; sinh hoạt cộng đồng ( 870m2), nh&agrave; trẻ ( tr&ecirc;n 3300m2), TTTM, &nbsp;Tầng 2 v&agrave; 2 tầng hầm: Diện t&iacute;ch 11.208m2 d&ugrave;ng để xe đủ chỗ cho tất cả 1092 căn hộ.&nbsp;Tầng 3: L&agrave; khu phức hợp hồ bơi ngo&agrave;i trời 300m2, khu s&acirc;n vườn, thương mại bu&ocirc;n b&aacute;n. Ngo&agrave;i ra City Gate Towers 2 được bao quanh bởi đường nội bộ, hồ cảnh quan, s&acirc;n tennis.</p>\r\n', '', 2, 2, 2000000, 'nhatro1.jpg', 'canhodep3.jpg', 'canhodep12.jpg', 'tải xuống.jpg', 1, 'Hết phòng', '0'),
(60, 7, 84, 1, 12, 'Đường Nghĩa Tân, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 78, 0, 7, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;n</strong></p>\r\n', '', 2, 2, 13000000, 'nha46-1.jpg', 'nha46-2.jpg', 'nha46-3.jpg', 'nha46-4.jpg', 1, 'Còn phòng', '1'),
(61, 7, 84, 1, 12, '34D ngõ 218, Đường Lạc Long Quân, Phường Thụy Khuê, Quận Tây Hồ, Hà Nội', 'Chung cư mini', 80, 0, 6, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 12500000, 'nha47-1.jpg', 'nha47-2.jpg', 'nha47-3.jpg', 'nha47-4.jpg', 1, 'Còn phòng', '0'),
(62, 7, 84, 1, 12, '453 Nguyễn Trãi, Thanh Xuân, Hà Nội', 'Chung cư mini', 60, 0, 5, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 9500000, 'nha48-1.jpg', 'nha48-2.jpg', 'nha48-3.jpg', 'nha48-4.jpg', 1, 'Còn phòng', '1'),
(63, 7, 84, 2, 12, 'số 27c ngách 63 ngõ 96, Đường Đại Từ, Phường Đại Kim, Quận Hoàng Mai, Hà Nội', 'Nhà trọ', 78, 0, 2, '<p>- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh c&oacute; trường học THPT, cấp 1, cấp 2, si&ecirc;u thị VinMart,&nbsp;coffee, UBND phường, Ng&acirc;n h&agrave;ng, Bệnh viện quốc tế, trung t&acirc;m thương mại Creasent Mall,&nbsp;FV... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n\r\n<p><strong>-&nbsp; Thiết kế hiện đại, đơn giản, tận dụng mọi kh&ocirc;ng gian, đầy đủ nội thất cao cấp, c&oacute; &ocirc; đậu xe hơi ri&ecirc;ng. Gi&oacute; tự nhi&ecirc;n cả ng&agrave;y.</strong></p>\r\n\r\n<p>-&nbsp;Khu d&acirc;n cư văn minh, tho&aacute;ng m&aacute;t, sạch sẽ.</p>\r\n', '', 2, 2, 2000000, 'nhatro49.jpg', 'nha49-2.jpg', 'nha49-3.jpg', 'nha49-4.jpg', 1, 'Còn phòng', '1'),
(64, 6, 81, 2, 12, '42 Ngõ 91, Đường Phan Trọng Tuệ, Phường Kiến Hưng, Quận Hà Đông, Hà Nội', 'Chung cư mini', 84, 0, 0, '<p>- <strong>Căn hộ đầy đủ tiện nghi: </strong>Có hồ bơi, phòng gym, khu vui chơi trẻ em, nhà hàng, cửa hàng tiện lợi, quán coffee, lối đi bộ rộng rãi.</p>\r\n\r\n<p> - Tiện ích ngoại khu: <strong>Xung quanh trường học quốc tế: Nam Sài Gòn (SSIS), và trường quốc tế Đinh Thiện Lý, Trường quốc tế Canada, dễ dàng di chuyển đến các trung tâm thương mại như: SC Vivo City, Crescent Mall, Parkson; Công viên, Co.op Food, Citimart greenview ,... và các tiện ích xung quanh.</strong></p>\r\n', 'không', 2, 2, 8000000, 'nha50-1.jpg', 'nha50-2.jpg', 'nha50-3.jpg', 'nha50-3.jpg', 1, 'Hết phòng', '1'),
(65, 2, 15, 2, 42, ' Số 113 Thái Hà, Đống Đa, Hà Nội', 'Chung cư mini', 54, 3, 3, 'không có', 'không có', 4, 2, 7500000, '5445e08a1773b9f81e3777ae2eb47648.jpg', '5be956536389d90c40930238c01862f5.jpg', '4d461650adfdf44d9e3d52d2bf967479.jpg', '3b38fcb0fe245310e9cdb63f1cf19e98.jpg', 1, 'Hết phòng', '1'),
(67, 2, 13, 1, 42, 'Số 73 Quang Trung, Hà Đông, Hà Nội', 'Nhà trọ', 45, 3, 3, 'không có', 'bài đăng', 2, 3, 234568000, '141004215_406555707219852_4881450761188021022_n.jpg', '141004215_406555707219852_4881450761188021022_n.jpg', '141004215_406555707219852_4881450761188021022_n.jpg', '141004215_406555707219852_4881450761188021022_n.jpg', 0, 'Hết phòng', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangkytimnha`
--

CREATE TABLE `dangkytimnha` (
  `id` int(12) NOT NULL,
  `ho_ten` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sdt` varchar(10) DEFAULT NULL,
  `trangthai` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `dangkytimnha`
--

INSERT INTO `dangkytimnha` (`id`, `ho_ten`, `email`, `sdt`, `trangthai`) VALUES
(1, 'Quốc Ngô', 'ngoanhquoc6@gmail.com', '0987147942', 1),
(2, 'Anh Quoc', 'ngoanhquoc10@gmail.com', '0987147942', 0),
(3, 'Quốc Ngô', 'ngoanhquoc10@gmail.com', '0987147942', 1),
(4, 'Lê huy', 'leduchuy@gmail.com', '0977955730', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dat_lich`
--

CREATE TABLE `dat_lich` (
  `id` int(11) NOT NULL,
  `ma_dat` int(12) NOT NULL COMMENT 'mã đặt lịch xem',
  `ma_can` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ma_tk` int(12) NOT NULL COMMENT 'mã tài khoản',
  `trang_thai` tinyint(1) DEFAULT NULL,
  `ten_nguoi_dat` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trang_thai_lich` tinyint(4) DEFAULT NULL,
  `ghi_chu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sodt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gio_xem` time DEFAULT NULL,
  `ngay_dat` date DEFAULT NULL COMMENT 'ngày đặt',
  `ngay_xem` date DEFAULT NULL COMMENT 'ngày xem'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dat_lich`
--

INSERT INTO `dat_lich` (`id`, `ma_dat`, `ma_can`, `ma_tk`, `trang_thai`, `ten_nguoi_dat`, `trang_thai_lich`, `ghi_chu`, `sodt`, `gio_xem`, `ngay_dat`, `ngay_xem`) VALUES
(50, 46, 15, 45, 0, 'Lê huy', 0, 'Tôi muốn xem căn hộ này', '0356985643', '09:30:18', '2021-04-14', '2021-04-22'),
(53, 49, 63, 45, NULL, 'Lê huy', 1, 'Tôi muốn xem căn hộ này', '0356985643', '23:41:00', '2021-04-18', '2021-04-23'),
(54, 0, 58, 12, 0, 'Trương Văn Hào ', 0, 'ádadas', '0987147942', '21:14:00', '2021-04-18', '2021-04-30'),
(55, 0, 63, 12, NULL, 'Trương Văn Hào ', 1, 'ádadas', '0987147942', '19:18:00', '2021-04-18', '2021-04-28'),
(56, 0, 62, 12, NULL, 'Trương Văn Hào ', 1, 'qửqwasedf', '0987147942', '19:24:00', '2021-04-18', '2021-05-06'),
(57, 0, 15, 12, NULL, 'Trương Văn Hào ', 1, 'ádas', '0987147942', '00:00:00', '2021-04-18', '2021-04-21'),
(58, 0, 62, 12, NULL, 'Trương Văn Hào ', 1, 'ádadas', '0987147942', '23:32:00', '2021-04-18', '2021-04-24'),
(59, 0, 63, 12, NULL, 'Trương Văn Hào ', 1, 'ádasdass', '0987147942', '04:14:00', '2021-04-18', '2021-04-22'),
(60, 0, 15, 12, NULL, 'Trương Văn Hào ', 1, 'qửqwasedf', '0987147942', '00:00:00', '2021-04-18', '2021-04-23'),
(61, 0, 58, 12, NULL, 'Trương Văn Hào ', 1, 'ádasa', '0987147942', '13:32:00', '2021-04-18', '2021-04-30'),
(62, 0, 15, 12, NULL, 'Trương Văn Hào ', 1, 'núi', '0987147942', '22:20:00', '2021-04-19', '2021-04-22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hop_dong`
--

CREATE TABLE `hop_dong` (
  `id` int(11) NOT NULL,
  `ma_tk` int(11) DEFAULT NULL,
  `ma_can` int(11) DEFAULT NULL,
  `ten_can_ho` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `do_dung` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vi_tri` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chu_nha` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nguoi_thue` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gia_thue` float DEFAULT NULL,
  `dien_tich` float DEFAULT NULL,
  `loai_can` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'trong bảng loại căn',
  `chi_phi_khac` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_thue` date DEFAULT NULL,
  `ngay_het_han` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hop_dong`
--

INSERT INTO `hop_dong` (`id`, `ma_tk`, `ma_can`, `ten_can_ho`, `do_dung`, `vi_tri`, `chu_nha`, `nguoi_thue`, `gia_thue`, `dien_tich`, `loai_can`, `chi_phi_khac`, `ngay_thue`, `ngay_het_han`) VALUES
(1, 12, 67, 'Chung cư mini', 'Tv , tủ lạnh , điều hòa', ' Số 113 Thái Hà, Đống Đa, Hà Nội', 'Hảo', 'Lê Huy', 6500000, 81, 'Chung cư mini', 'không', '2021-03-30', '2021-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `ma_tk` int(12) NOT NULL COMMENT 'mã tài khoản',
  `ho_ten` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'họ tên khách hàng',
  `hinh` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ten_tk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên tài khoản',
  `mat_khau` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `sdt` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'số điện thoại',
  `kich_hoat` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'kích hoạt',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email',
  `vai_tro` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'vai trò',
  `random_key` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'dãy số ngẫu nhiên',
  `currency` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_tk`, `ho_ten`, `hinh`, `ten_tk`, `mat_khau`, `sdt`, `kich_hoat`, `email`, `vai_tro`, `random_key`, `currency`) VALUES
(12, 'Trương Văn Hào ', 'anh.jpg', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0987147942', 1, 'haopt1@gmail.com', 1, 'fff46f4128a55e1f7bb1', 50000),
(22, 'Nguyễn Tuấn Anh', '', 'tuananh123', 'e10adc3949ba59abbe56e057f20f883e', '0987654321', 1, 'tuananh@gmail.com', 0, 'fff46f4128a55e1f7bb1', 15000),
(35, 'Nguyễn Văn Dũng', '', 'nuinguyen', 'e10adc3949ba59abbe56e057f20f883e', '0382535536', 1, 'dungfpoly@gmail.com', 0, '76bc01a7bf6d4d9e8fad', 100000),
(40, 'Huy 12345678', NULL, 'huy12345678', 'f3ec3b0495f654f50d4071c989d93c54', '0356478155', 1, 'huyldph08692@fpt.edu.vn', 0, '76bc01a7bf6d4d9e8fad', 35000),
(42, 'Lê Huy', '', 'huylee', 'e10adc3949ba59abbe56e057f20f883e', '095551710', 1, 'huykarin11@gmail.com', 2, '76bc01a7bf6d4d9e8fad', 250000),
(44, 'Lê huy', NULL, 'lehuy12589', '7f04546942b67e7b778810b3be2c454d', '0256478954', 1, 'lehuy12589@gmail.com', 0, '76bc01a7bf6d4d9e8fad', 60000),
(45, 'Lê huy', NULL, 'huyle112', 'e10adc3949ba59abbe56e057f20f883e', '0356985643', 1, 'huy@gmail.com', 0, '76bc01a7bf6d4d9e8fad', 750000),
(47, 'Lê Đức Huy', '', 'huykkk', '17218c9fb835c1408df23dd0289f3b87', '0382535536', 1, 'luutrunghieu89@gmail.com', 0, 'fff46f4128a55e1f7bb1', NULL),
(48, 'Lê huy', '', 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '0382535536', 1, 'admin@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(49, 'Công Dương', NULL, 'duongcong1', 'e10adc3949ba59abbe56e057f20f883e', '0365987146', 0, 'fuckduong@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL),
(50, 'Đõ Thị Tuyết Mai', NULL, 'Mai', '25f9e794323b453885f5181f1b624d0b', '0325689451', 0, 'mai@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_can`
--

CREATE TABLE `loai_can` (
  `ma_loai` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ten_can` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên căn hộ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_can`
--

INSERT INTO `loai_can` (`ma_loai`, `ten_can`) VALUES
(1, 'Chung cư mini'),
(2, 'Nhà trọ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `thanh_vien` int(12) NOT NULL COMMENT 'thành viên thanh toán',
  `ma_can` int(12) NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime NOT NULL COMMENT 'thời gian chuyển khoản'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong`
--

CREATE TABLE `phuong` (
  `id` int(12) NOT NULL,
  `ma_quan` int(12) NOT NULL,
  `phuong` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phuong`
--

INSERT INTO `phuong` (`id`, `ma_quan`, `phuong`) VALUES
(1, 1, 'Cầu Giấy'),
(2, 1, 'Cống Vị'),
(3, 1, 'Điện Biên'),
(4, 1, 'Đội Cấn'),
(5, 1, 'Giảng Võ'),
(6, 1, 'Kim Mã'),
(7, 1, ' Ngọc Hà'),
(8, 1, 'Nguyễn Trung Trực'),
(9, 1, 'Phúc Xá'),
(10, 1, 'Quán Thánh'),
(11, 1, 'Thành Công'),
(12, 1, ' Trúc Bạch'),
(13, 2, 'Chương Dương'),
(14, 2, ' Cửa Đông'),
(15, 2, ' Cửa Nam'),
(16, 2, ' Đồng Xuân'),
(17, 2, ' Hàng Bạc'),
(18, 2, ' Hàng Bài'),
(19, 2, 'Hàng Bồ'),
(20, 2, 'Hàng Bông'),
(21, 2, 'Hàng Buồm'),
(22, 2, 'Hàng Đào'),
(23, 2, ' Hàng Gai'),
(24, 2, 'Hàng Mã'),
(25, 2, 'Hàng Trống'),
(26, 2, 'Lý Thái Tổ'),
(27, 2, 'Phan Chu Trinh'),
(28, 2, 'Phúc Tân'),
(29, 2, 'Trần Hưng Đạo'),
(30, 2, 'Tràng Tiền'),
(31, 3, 'Cát Linh'),
(32, 3, 'Hàng Bột'),
(33, 3, 'Khâm Thiên'),
(34, 3, 'Khương Thượng'),
(35, 3, 'Kim Liên'),
(36, 3, 'Láng Hạ'),
(37, 3, 'Láng Thượng'),
(38, 3, 'Nam Đồng'),
(39, 3, 'Ngã Tư Sở'),
(40, 3, 'Ô Chợ Dừa'),
(41, 3, 'Phương Liên'),
(42, 3, 'Phương Mai'),
(43, 3, 'Quang Trung'),
(44, 3, 'Quốc Tử Giám'),
(45, 3, 'Thịnh Quang'),
(46, 3, 'Thổ Quan'),
(47, 3, 'Trung Liệt'),
(48, 3, 'Trung Phụng'),
(49, 3, 'Trung Tự'),
(50, 3, 'Văn Chương'),
(51, 3, 'Văn Miếu'),
(52, 4, 'Thanh Xuân'),
(53, 4, 'Thượng Đình'),
(54, 4, 'Kim Giang'),
(55, 4, 'Phương Liệt'),
(56, 4, 'Thanh Xuân Nam'),
(57, 4, 'Thanh Xuân Bắc'),
(58, 4, 'Khương Mai'),
(59, 4, 'Khương Trung'),
(60, 4, 'Khương Đình'),
(61, 4, 'Hạ Đình'),
(62, 4, 'Nhân Chính'),
(63, 5, 'Dịch Vọng'),
(64, 5, 'Dịch Vọng Hậu'),
(65, 5, 'Mai Dịch'),
(66, 5, 'Nghĩa Đô'),
(67, 5, 'Nghĩa Tân'),
(68, 5, 'Quan Hoa'),
(69, 5, 'Trung Hòa'),
(70, 5, 'Yên Hòa'),
(71, 6, 'Đại Kim'),
(72, 6, 'Định Công'),
(73, 6, 'Giáp Bát'),
(74, 6, 'Hoàng Liệt'),
(75, 6, 'Hoàng Văn Thụ'),
(76, 6, 'Lĩnh Nam'),
(77, 6, 'Mai Động'),
(78, 6, 'Tân Mai'),
(79, 6, 'Thanh Trì'),
(80, 6, 'Thịnh Liệt'),
(81, 6, 'Trần Phú'),
(82, 6, 'Tương Mai'),
(83, 6, 'Vĩnh Hưng'),
(84, 6, 'Yên Sở'),
(85, 7, 'Bách Khoa'),
(86, 7, 'Bạch Đằng'),
(87, 7, 'Bạch Mai'),
(88, 7, 'Cầu Dền'),
(89, 7, 'Đống Mác'),
(90, 7, 'Đồng Nhân'),
(91, 7, 'Đồng Tâm'),
(92, 7, 'Lê Đại Hành'),
(93, 7, 'Minh Khai'),
(94, 7, 'Nguyễn Du'),
(95, 7, 'Phạm Đình Hổ'),
(96, 7, 'Phố Huế'),
(97, 7, 'Quỳnh Lôi'),
(98, 7, 'Quỳnh Mai'),
(99, 7, 'Thanh Lương'),
(100, 7, 'Thanh Nhàn'),
(101, 7, 'Trương Định'),
(102, 7, 'Vĩnh Tuy'),
(103, 8, 'Bưởi'),
(104, 8, 'Nhật Tân'),
(105, 8, 'Phú Thượng'),
(106, 8, 'Quảng An'),
(107, 8, 'Thụy Khuê'),
(108, 8, 'Tứ Liên'),
(109, 8, 'Xuân La'),
(110, 8, 'Yên Phụ'),
(111, 9, 'Bồ Đề'),
(112, 9, 'Cự Khối'),
(113, 9, 'Đức Giang'),
(114, 9, 'Gia Thụy'),
(115, 9, 'Giang Biên'),
(116, 9, 'Long Biên'),
(117, 9, 'Ngọc Lâm'),
(118, 9, 'Ngọc Thụy'),
(119, 9, 'Phúc Đồng'),
(120, 9, 'Phúc Lợi'),
(121, 9, 'Sài Đồng'),
(122, 9, 'Thạch Bàn'),
(123, 9, 'Thượng Thanh'),
(124, 9, 'Việt Hưng'),
(125, 10, 'Trung Văn'),
(126, 10, 'Đại Mỗ'),
(127, 10, 'Tây Mỗ'),
(128, 10, 'Mễ Trì'),
(129, 10, 'Phú Đô'),
(130, 10, 'Mỹ Đình 1'),
(131, 10, 'Mỹ Đình 2'),
(132, 10, 'Cầu Diễn'),
(133, 10, 'Phương Canh'),
(134, 10, 'Xuân Phương'),
(135, 11, 'Biên Giang'),
(136, 11, 'Đồng Mai'),
(137, 11, 'Yên Nghĩa'),
(138, 11, 'Dương Nội'),
(139, 11, 'Hà Cầu'),
(140, 11, 'La Khê'),
(141, 11, 'Mộ Lao'),
(142, 11, 'Nguyễn Trãi'),
(143, 11, 'Phú La'),
(144, 11, 'Phú Lãm'),
(145, 11, 'Phú Lương'),
(146, 11, 'Kiến Hưng'),
(147, 11, 'Phúc La'),
(148, 11, 'Quang Trung'),
(149, 11, 'Vạn Phúc'),
(150, 11, 'Văn Quán'),
(151, 11, 'Yết Kiêu'),
(152, 12, 'Cổ Nhuế 1'),
(153, 12, 'Cổ Nhuế 2'),
(154, 12, 'Đức Thắng'),
(155, 12, 'Đông Ngạc'),
(156, 12, 'Thụy Phương'),
(157, 12, 'Liên Mạc'),
(158, 12, 'Thượng Cát'),
(159, 12, 'Tây Tựu'),
(160, 12, 'Minh Khai'),
(161, 12, 'Phú Diễn'),
(162, 12, 'Phúc Diễn'),
(163, 12, 'Xuân Đỉnh'),
(164, 12, 'Xuân Tảo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan`
--

CREATE TABLE `quan` (
  `ma_quan` int(12) NOT NULL COMMENT 'mã quận',
  `ten_quan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên quận'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan`
--

INSERT INTO `quan` (`ma_quan`, `ten_quan`) VALUES
(1, 'Quận Ba Đình'),
(2, 'Quận Hoàn Kiếm'),
(3, 'Quận Đống Đa'),
(4, 'Quận Thanh Xuân'),
(5, 'Quận Cầu Giấy'),
(6, 'Quận Hoàng Mai'),
(7, 'Quận Hai Bà Trưng'),
(8, 'Quận Tây Hồ'),
(9, 'Quận Long Biên'),
(10, 'Quận Nam Từ Liêm'),
(11, 'Quận Hà Đông'),
(12, 'Quận Bắc Từ Liêm');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `can_ho`
--
ALTER TABLE `can_ho`
  ADD PRIMARY KEY (`ma_can`),
  ADD KEY `FK_canho_loai` (`ma_loai`),
  ADD KEY `FK_canho_quan` (`ma_quan`),
  ADD KEY `FK_taikhoan_canho` (`ma_tk`),
  ADD KEY `FK_phuong_canho` (`id`),
  ADD KEY `ten_can_ho` (`ten_can_ho`),
  ADD KEY `gia_thue` (`gia_thue`),
  ADD KEY `chi_phi_khac` (`chi_phi_khac`),
  ADD KEY `dia_chi` (`dia_chi`),
  ADD KEY `dien_tich` (`dien_tich`);

--
-- Chỉ mục cho bảng `dangkytimnha`
--
ALTER TABLE `dangkytimnha`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dat_lich`
--
ALTER TABLE `dat_lich`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Fk_datlich_tk` (`ma_tk`),
  ADD KEY `Fk_datlich_canho` (`ma_can`),
  ADD KEY `ma_dat` (`ma_dat`);

--
-- Chỉ mục cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_hop_dong_khach_hang` (`ma_tk`),
  ADD KEY `FK_hop_dong_can_ho_2` (`ten_can_ho`),
  ADD KEY `FK_hop_dong_can_ho_3` (`vi_tri`),
  ADD KEY `FK_hop_dong_khach_hang_2` (`nguoi_thue`),
  ADD KEY `FK_hop_dong_can_ho_4` (`gia_thue`),
  ADD KEY `FK_hop_dong_can_ho_5` (`dien_tich`),
  ADD KEY `FK_hop_dong_loai_can` (`loai_can`),
  ADD KEY `ma_can` (`ma_can`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_tk`),
  ADD KEY `ho_ten` (`ho_ten`);

--
-- Chỉ mục cho bảng `loai_can`
--
ALTER TABLE `loai_can`
  ADD PRIMARY KEY (`ma_loai`),
  ADD KEY `ten_can` (`ten_can`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_hd_ch` (`ma_can`),
  ADD KEY `fk_hd_kh` (`thanh_vien`);

--
-- Chỉ mục cho bảng `phuong`
--
ALTER TABLE `phuong`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_quan_phuong` (`ma_quan`);

--
-- Chỉ mục cho bảng `quan`
--
ALTER TABLE `quan`
  ADD PRIMARY KEY (`ma_quan`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `can_ho`
--
ALTER TABLE `can_ho`
  MODIFY `ma_can` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã căn hộ', AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `dangkytimnha`
--
ALTER TABLE `dangkytimnha`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dat_lich`
--
ALTER TABLE `dat_lich`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_tk` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã tài khoản', AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT cho bảng `loai_can`
--
ALTER TABLE `loai_can`
  MODIFY `ma_loai` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã căn hộ', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuong`
--
ALTER TABLE `phuong`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT cho bảng `quan`
--
ALTER TABLE `quan`
  MODIFY `ma_quan` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã quận', AUTO_INCREMENT=13;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dat_lich`
--
ALTER TABLE `dat_lich`
  ADD CONSTRAINT `Fk_datlich_canho` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Fk_datlich_tk` FOREIGN KEY (`ma_tk`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hop_dong`
--
ALTER TABLE `hop_dong`
  ADD CONSTRAINT `FK_hop_dong_can_ho` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`),
  ADD CONSTRAINT `FK_hop_dong_can_ho_2` FOREIGN KEY (`ten_can_ho`) REFERENCES `can_ho` (`ten_can_ho`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hop_dong_can_ho_3` FOREIGN KEY (`vi_tri`) REFERENCES `can_ho` (`dia_chi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hop_dong_can_ho_4` FOREIGN KEY (`gia_thue`) REFERENCES `can_ho` (`gia_thue`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hop_dong_can_ho_5` FOREIGN KEY (`dien_tich`) REFERENCES `can_ho` (`dien_tich`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hop_dong_khach_hang` FOREIGN KEY (`ma_tk`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hop_dong_khach_hang_2` FOREIGN KEY (`nguoi_thue`) REFERENCES `khach_hang` (`ho_ten`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_hop_dong_loai_can` FOREIGN KEY (`loai_can`) REFERENCES `loai_can` (`ten_can`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_hd_ch` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_hd_kh` FOREIGN KEY (`thanh_vien`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `phuong`
--
ALTER TABLE `phuong`
  ADD CONSTRAINT `fk_quan_phuong` FOREIGN KEY (`ma_quan`) REFERENCES `quan` (`ma_quan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
