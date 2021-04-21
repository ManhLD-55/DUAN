/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100414
 Source Host           : localhost:3306
 Source Schema         : thuecanho

 Target Server Type    : MySQL
 Target Server Version : 100414
 File Encoding         : 65001

 Date: 22/04/2021 03:22:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for can_ho
-- ----------------------------
DROP TABLE IF EXISTS `can_ho`;
CREATE TABLE `can_ho`  (
  `ma_can` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã căn hộ',
  `ma_quan` int(12) NOT NULL COMMENT 'mã quận',
  `id` int(12) NOT NULL COMMENT 'mã phường',
  `ma_loai` int(12) NOT NULL COMMENT 'mã loại căn',
  `ma_tk` int(12) NOT NULL,
  `dia_chi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Địa chỉ',
  `ten_can_ho` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'tên căn hộ',
  `dien_tich` float NULL DEFAULT NULL COMMENT 'diện tích ',
  `tang` tinyint(3) NULL DEFAULT NULL COMMENT 'Số tầng',
  `huong_nha` tinyint(8) NULL DEFAULT NULL COMMENT 'hướng nhà',
  `tien_ich` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'Tiện ích',
  `chi_phi_khac` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'chi phí khác',
  `so_phong_ngu` tinyint(2) NULL DEFAULT NULL COMMENT 'Số phòng ngủ',
  `so_phong_vs` tinyint(2) NULL DEFAULT NULL COMMENT 'Số phòng vệ sinh',
  `gia_thue` float NOT NULL DEFAULT 0 COMMENT 'Giá thuê',
  `hinh` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hinha` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hinhb` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hinhc` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `an_hien` tinyint(1) NULL DEFAULT NULL COMMENT 'Ẩn hiện',
  `ghi_chu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'ghi chú',
  `trang_thai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `so_luong` int(11) NULL DEFAULT NULL COMMENT 'Số lượng căn hộ',
  PRIMARY KEY (`ma_can`) USING BTREE,
  INDEX `FK_canho_loai`(`ma_loai`) USING BTREE,
  INDEX `FK_canho_quan`(`ma_quan`) USING BTREE,
  INDEX `FK_taikhoan_canho`(`ma_tk`) USING BTREE,
  INDEX `FK_phuong_canho`(`id`) USING BTREE,
  INDEX `ten_can_ho`(`ten_can_ho`) USING BTREE,
  INDEX `gia_thue`(`gia_thue`) USING BTREE,
  INDEX `chi_phi_khac`(`chi_phi_khac`) USING BTREE,
  INDEX `dia_chi`(`dia_chi`) USING BTREE,
  INDEX `dien_tich`(`dien_tich`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of can_ho
-- ----------------------------
INSERT INTO `can_ho` VALUES (13, 4, 48, 1, 12, '312 Nguyễn Trãi, P.Trung Văn, Q.Nam Từ Liêm, Hà Nội ', 'Chung cư mini 111111111111111111', 50, 23, 1, '<p>gần c&aacute;c trường học từ mẫu gi&aacute;o cho đến đại học danh tiếng : Trường mầm non Sao Mai , Trường cấp 1 Đặng Trần C&ocirc;n , Trường cấp 2 Nguyễn Hữu Thọ , Trường cấp 3 Nguyễn Tr&atilde;i , Trường đại học Luật TP. Hồ Ch&iacute; Minh, bệnh viện Quận 4,...</p>\r\n', '', 2, 1, 18500000, 'nha1-1.jpg', 'nha1-2.jpg', 'nha1-3.jpg', 'nha1-4.jpg', 1, 'Còn phòng', '1', 0);
INSERT INTO `can_ho` VALUES (14, 4, 48, 2, 12, '111 Trần Đăng Ninh, Cầu Giấy, Hà Nội', 'Chung cư mini', 40, 0, 2, '<p>Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 12000000, 'nha2-1.jpg', 'nha2-2.jpg', 'nha2-3.jpg', 'nha2-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (15, 4, 48, 1, 12, ' 118 Thái hà, Đống Đa, Hà Nội', 'Chung cư mini', 35, 0, 1, '<p>Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 13000000, 'nha3-1.jpg', 'nha3-2.jpg', 'nha3-3.jpg', 'nha3-4.jpg', 1, 'Còn phòng', '1', 0);
INSERT INTO `can_ho` VALUES (20, 4, 48, 2, 22, '60-62 Đại Cồ Việt, P. Lê Đại Hành, Q. Hai Bà Trưng, TP. Hà Nội', 'Chung cư mini', 115, 0, 7, '<p>-&nbsp;<strong>Được trang bị nội thất gồm:&nbsp;m&aacute;y lạnh, sofa, giường tủ,&nbsp;thiết bị ph&ograve;ng tắm, ph&ograve;ng vệ sinh,...</strong></p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt , khu thương mại , ph&ograve;ng tập GYM hiện đại, vườn thượng uyển s&acirc;n thượng, nh&agrave; h&agrave;ng, caf&eacute;, khu vui chơi trẻ em v&agrave; vườn treo Babylon tại tầng thượng.</p>\r\n\r\n<p>-&nbsp;<strong>Tiện &iacute;ch ngoại khu</strong>:&nbsp;gần c&aacute;c trường học từ mẫu gi&aacute;o cho đến đại học danh tiếng : Trường mầm non Sao Mai , Trường cấp 1 Đặng Trần C&ocirc;n , Trường cấp 2 Nguyễn Hữu Thọ , Trường cấp 3 Nguyễn Tr&atilde;', '', 3, 2, 14000000, 'nha8-1.jpg', 'nha8-2.jpg', 'nha8-3.jpg', 'nha8-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (21, 4, 48, 1, 21, '18 ngõ 2, Đường Nguyễn Chánh, Phường Trung Hoà, Quận Cầu Giấy, Hà Nội', 'Nhà trọ', 40, 0, 7, '<p><strong>- Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt, khu thương mại, ph&ograve;ng tập GYM hiện đại...</p>\r\n\r\n<p><strong>- Tiện &iacute;ch ngoại khu:</strong>&nbsp;Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 3000000, 'nhatro10.jpg', 'nha9-2.jpg', 'nha9-3.jpg', 'nha9-4.jpg', 1, 'Hết phòng', '0', 1);
INSERT INTO `can_ho` VALUES (22, 4, 48, 1, 21, 'Ngõ 20 đường bưởi SN 19a/33 1t, Đường Bưởi, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 34, 0, 8, '<p><strong>- Tiện &iacute;ch nội khu cao cấp</strong>: hồ bơi tr&agrave;n được bố tr&iacute; tại tầng 3, khu nh&agrave; h&agrave;ng 5 sao phong c&aacute;ch Địa Trung Hải dưới sảnh tầng trệt, khu thương mại, ph&ograve;ng tập GYM hiện đại...</p>\r\n\r\n<p><strong>- Tiện &iacute;ch ngoại khu:</strong>&nbsp;Trường THPT Nguyễn Hữu Thọ c&aacute;ch, Vinmart Store c&aacute;ch, UBND Quận 4 c&aacute;ch, Trường Đại học Luật TPHCM, Trường tiểu học Nguyễn Văn Trỗi, Bệnh viện quận 4, Trường tiểu học L&yacute; Nhơn, C&ocirc;ng vi&ecirc;n S&agrave;i G&ograve;n....</p>\r\n', '', 1, 1, 10000000, 'nha10-1.jpg', 'nha10-2.jpg', 'nha10-3.jpg', 'nha10-4.jpg', 0, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (23, 6, 70, 2, 21, 'số 6 ngõ 163, Đường Nguyễn Khang, Phường Yên Hoà, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 21, 2, 0, '<p>- <strong>Tiện ích nội khu</strong>: Hồ bơi, phòng Gym, Sân vườn nội bộ, hệ thống an ninh...</p>\r\n\r\n<p>- <strong>Tiện ích ngoại khu:</strong> Trường TH Nguyễn Văn Trỗi, Trường THCS Chi Lăng, UBND Phường, Trạm y tế...</p>\r\n\r\n<p>- <strong>Giá thuê 12 triệu/tháng. Hợp đồng thuê tối thiểu 1 năm - Đặt cọc 2 tháng tiền thuê nhà.</strong></p>\r\n', '', 1, 1, 12000000, 'nha11-1.jpg', 'nha11-2.jpg', 'nha11-3.jpg', 'nha11-4.jpg', 0, 'Hết phòng', '1', 1);
INSERT INTO `can_ho` VALUES (25, 3, 22, 2, 21, '22D ngõ 97, Đường Hoàng Mai, Phường Hoàng Văn Thụ, Quận Hoàng Mai, Hà Nội', 'Nhà trọ', 205, 1, 1, '<p>CÁC DỊCH VỤ BAO GỒM TRONG PHÍ QUẢN LÝ<br />\r\n- Điện phục vụ cho làm mát, thông gió khu vực công cộng.<br />\r\n- Nhân viên lễ tân<br />\r\n- Bảo vệ 24/24<br />\r\n- Nhân viên vệ sinh chung<br />\r\n- Thang máy<br />\r\n- Điện chiếu sáng khu vực công cộng<br />\r\n- Bảo trì thang máy.<br />\r\n- Bảo trì khu vực công cộng.<br />\r\n- Diệt côn trùng khu vực công cộng<br />\r\n- Nước sinh hoạt<br />\r\n<br />\r\nCÁC DỊCH VỤ KHÔNG BAO GỒM TRONG PHÍ QUẢN LÝ:<br />\r\n- Điện tiêu thụ tại Khu vực thuê.<br />\r\n- Chi phí điện thoại bao gồm cả chi phí lắp đặt điện thoại.<br />\r\n- Dọn dẹp bên trong Khu vực thuê', '', 1, 1, 2000000, 'nhatro9.jpg', 'nha13-2.jpg', 'nha13-3.jpg', 'nha13-4.jpg', 1, 'Hết phòng', '1', 1);
INSERT INTO `can_ho` VALUES (28, 11, 145, 1, 22, '34/86 ngõ an trạch 2, Đường Đoàn Thị Điểm, Phường Quốc Tử Giám, Quận Đống Đa, Hà Nội', 'Chung cư mini', 74, 0, 8, '<p>h&agrave;&nbsp;full nội thất: TV, tủ lạnh, b&agrave;n ghế, m&aacute;y lạnh, m&aacute;y nước n&oacute;ng...</p>\r\n\r\n<p>Vị tr&iacute; thuận tiện Tiện &iacute;ch xung quanh: si&ecirc;u thị Coopmart, Đại học B&aacute;ch Khoa, Y Dược, Y khoa Phạm Ngọc Thạch, Parkson H&ugrave;ng Vương, bệnh viện Chợ Rẫy...</p>\r\n\r\n<p>Thuận tiện di chuyển qua c&aacute;c quận như: quận 5, quận 6, quận 10,...</p>\r\n', '', 2, 2, 13000000, 'chungcu2.jpg', 'nha16-2.jpg', 'nha16-3.jpg', 'nha16-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (32, 5, 61, 2, 22, 'Ngõ 20 đường bưởi SN 19a/33 1t, Đường Bưởi, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 79, 0, 7, '<p>- Chung cư nằm ở vị tr&iacute; trung t&acirc;m quận 5, khu vực an ninh, y&ecirc;n tĩnh, xung quanh c&oacute; nhiều tiện &iacute;ch như: gần trường học c&aacute;c cấp, gần chợ&nbsp;An Đ&ocirc;ng, gần c&ocirc;ng vi&ecirc;n, c&aacute;c bệnh viện trung t&acirc;m như Nguyễn Trị Phương, Bv Qu&acirc;n Y 7A, Bv Phụ Sản An Đ&ocirc;ng, Bv An B&igrave;nh.&nbsp;</p>\r\n\r\n<p>- Giao th&ocirc;ng thuận tiện qua c&aacute;c quận trung t&acirc;m: 1,6,10,11,7,8</p>\r\n', '', 2, 2, 8000000, 'chungcu1.jpg', 'nha20-2.jpg', 'nha20-3.jpg', 'nha20-4.jpg', 1, 'Hết phòng', '1', 1);
INSERT INTO `can_ho` VALUES (34, 4, 37, 2, 12, 'Số 446, đường Đại Mỗ, P. Đại Mỗ, Q. Nam Từ Liêm, Tp. Hà Nội', 'Nhà trọ', 58, 0, 4, '<p>- Vị tr&iacute; căn hộ ngay&nbsp;<strong>mặt tiền Nguyễn Kho&aacute;i</strong>. Thuận tiện di chuyển&nbsp;<strong>sang quận 1, 5, 7, 8...</strong></p>\r\n\r\n<p>-&nbsp;Tiện &iacute;ch:<strong>&nbsp;khu vui chơi, cửa h&agrave;ng tiện lợi, xung quanh c&oacute; c&aacute;c trường tiểu học, Hồ bơi, C&ocirc;ng an phường, Si&ecirc;u thị...</strong></p>\r\n', '', 2, 2, 2300000, 'nhatro8.jpg', 'nha22-2.jpg', 'nha22-3.jpg', 'nha22-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (38, 6, 80, 1, 12, '22D ngõ 97, Đường Hoàng Mai, Phường Hoàng Văn Thụ, Quận Hoàng Mai, Hà Nội', 'Chung cư mini', 97, 19, 2, '<p>&nbsp;Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 3, 2, 15000000, 'nha26-1.jpg', 'nha26-2.jpg', 'nha26-3.jpg', 'nha26-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (39, 6, 80, 2, 12, 'số 12 ngõ 328 đường tây mỗ, Đường Tây Mỗ, Phường Tây Mỗ, Quận Nam Từ Liêm, Hà Nội', 'Nhà trọ', 97, 19, 2, '<p>&nbsp;Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 3, 2, 3000000, 'nhatro7.jpg', 'nha27-2.jpg', 'nha27-3.jpg', 'nha27-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (40, 7, 84, 1, 12, 'ngõ 157B sn 29D2, Đường Chùa Láng, Phường Láng Thượng, Quận Đống Đa, Hà Nội', 'Chung cư mini', 81, 0, 1, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 9700000, 'nha28-1.jpg', 'nha28-2.jpg', 'nha28-3.jpg', 'nha28-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (42, 7, 84, 1, 12, '63 xuân thủy, Phường Dịch Vọng Hậu, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 91, 0, 1, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 8000000, 'nha30-1.jpg', 'nha30-2.jpg', 'nha30-3.jpg', 'nha30-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (44, 7, 84, 2, 12, '76A/2 ngõ 294, Đường Kim Mã, Phường Kim Mã, Quận Ba Đình, Hà Nội', 'Nhà trọ', 120, 16, 6, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 3, 2, 2500000, 'nhatro6.jpg', 'nha32-2.jpg', 'nha32-3.jpg', 'nha32-3.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (45, 10, 137, 2, 12, 'Ngõ 2 Phố Nguyên Xá, Đường Cầu Diễn, Phường Minh Khai, Quận Bắc Từ Liêm, Hà Nội', 'Nhà trọ', 50, 0, 5, '<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n\r\n<p>- Xung quanh nhiều tiện &iacute;ch: Vạn Hạnh Mall, Big C miền đ&ocirc;ng, Bệnh viện 115, Bệnh viện Tim T&acirc;m Đức, Bệnh viện Nhi Đồng, Chợ H&ograve;a Hưng...</p>\r\n', '', 1, 1, 2000000, 'nhatro5.jpg', 'nha33-2.jpg', 'nha33-3.jpg', 'nha33-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (46, 9, 113, 1, 12, 'số 2 Ngõ 91, Đường Phan Trọng Tuệ, Phường Kiến Hưng, Quận Hà Đông, Hà Nội', 'Chung cư mini', 59, 0, 5, '<p>- VỊ TR&Iacute; ĐẮC ĐỊA - GIAO TH&Ocirc;NG THUẬN LỢI: Dễ d&agrave;ng kết nối đến mọi khu vực quan trọng trong th&agrave;nh phố.</p>\r\n', '', 2, 1, 6500000, 'nha34-1.jpg', 'nha34-2.jpg', 'nha34-3.jpg', 'nha34-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (48, 7, 84, 1, 12, '106 Ngõ 72/2, Đường Dương Quảng Hàm, Phường Quan Hoa, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 81, 0, 4, '<p>- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 7700000, 'nha36-1.jpg', 'nha36-2.jpg', 'nha36-3.jpg', 'nha36-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (50, 10, 135, 2, 12, '102 Phạm Văn Đồng, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 108, 0, 6, '<p><strong>-&nbsp;Vị tr&iacute;: Tầng 6,&nbsp;view nội khu v&agrave; hồ bơi, tho&aacute;ng m&aacute;t. Ban c&ocirc;ng th&ocirc;ng tho&aacute;ngđ&oacute;n &aacute;nh nắng tự nhi&ecirc;n.</strong></p>\r\n\r\n<p>- Trong b&aacute;n k&iacute;nh 2km c&oacute; c&aacute;c tiện &iacute;ch:&nbsp;<strong>Học viện H&agrave;nh ch&iacute;nh Quốc gia, Nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Việt Nam Quốc tự,&nbsp;Bệnh viện B&igrave;nh D&acirc;n - Khu điều trị Kỹ thuật cao...</strong></p>\r\n\r\n<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n', '', 3, 3, 9000000, 'nha38-1.jpg', 'nha38-2.jpg', 'nha38-3.jpg', 'nha38-4.jpg', 1, 'Hết phòng', '1', 1);
INSERT INTO `can_ho` VALUES (51, 10, 135, 2, 12, 'Số 446 Xã Đàn, Đống Đa, Hà Nội', 'Nhà trọ', 87, 0, 1, '<p>- Trong b&aacute;n k&iacute;nh 2km c&oacute; c&aacute;c tiện &iacute;ch:&nbsp;<strong>Học viện H&agrave;nh ch&iacute;nh Quốc gia, Nh&agrave; h&aacute;t H&ograve;a B&igrave;nh, Việt Nam Quốc tự,&nbsp;Bệnh viện B&igrave;nh D&acirc;n - Khu điều trị Kỹ thuật cao...</strong></p>\r\n\r\n<p>- Tiện &iacute;ch nội khu: hồ bơi, ph&ograve;ng gym, BBQ...</p>\r\n', '', 2, 2, 2000000, 'nhatro4.jpg', 'nha39-2.jpg', 'nha39-3.jpg', 'nha39-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (55, 7, 93, 1, 12, '15D ngõ 133, Đường Yên Hòa, Phường Yên Hoà, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 250, 3, 1, '<p>- Vị tr&iacute; thuận tiện:<strong>&nbsp;C&aacute;ch cầu Him lam 400m</strong>,&nbsp;<strong>Gần&nbsp;cầu K&ecirc;nh Tẻ, Cầu Rạch &Ocirc;ng,&nbsp;c&aacute;c trục đường ch&iacute;nh&nbsp;như&nbsp;Trần Xu&acirc;n Soạn, Nguyễn Hữu Thọ.&nbsp;Thuận tiện di chuyển c&aacute;c&nbsp;Quận 1. 4, 8, Nh&agrave; B&egrave;, B&igrave;nh Ch&aacute;nh,...</strong></p>\r\n', '', 4, 4, 14000000, 'nha41-1.jpg', 'nha41-2.jpg', 'nha41-3.jpg', 'nha41-4.jpg', 1, 'Hết phòng', '0', 1);
INSERT INTO `can_ho` VALUES (56, 8, 100, 2, 12, 'Ngõ 36a/11 nguyễn an ninh SN 1, Đường Nguyễn An Ninh, Phường Trương Định, Quận Hai Bà Trưng, Hà Nội', 'Nhà trọ', 70, 0, 7, '<p>- Tiện &iacute;ch xung quanh: cửa h&agrave;ng tiện lợi Vinmart, UBND, c&ocirc;ng an Phường 7,&nbsp;trường Tiểu học An Phong, trường THCS Ph&uacute; Lợi,&nbsp;trường THPT Nguyễn Văn Linh,...</p>\r\n', '', 2, 2, 2000000, 'nhatro3.jpg', 'nha42-2.jpg', 'nha42-3.jpg', 'nha42-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (58, 6, 80, 2, 12, 'Số 118 Thái Hà, Đống Đa, Hà Nội', 'Nhà trọ', 0, 0, 6, '<p>- Hệ thống truyền h&igrave;nh c&aacute;p, ADSL&hellip; được lắp đặt ở từng căn hộ<br />\r\nTọa lạc ngay trung t&acirc;m h&agrave;nh ch&iacute;nh của Quận 6 (P11, Q6, Tp.HCM), nằm c&aacute;ch mặt tiền Hậu Giang khoảng 120m. Dự &aacute;n kết nối với khu vực Chợ Lớn khoảng 1,8 km, đại lộ V&otilde; Văn Kiệt khoảng 1,6 km, Metro B&igrave;nh Ph&uacute; khoảng 1 km, c&ocirc;ng vi&ecirc;n B&igrave;nh Ph&uacute; khoảng 1 km, bến xe Miền T&acirc;y 2,6 km, bến xe Chợ Lớn 2,2 km... Một vị tr&iacute; đắc địa v&agrave; thuận lợi cho việc đi lại của cộng đồng cư d&acirc;n tại nơi đ&acirc;y.</p>\r\n', '', 2, 2, 2500000, 'nhatro2.jpg', 'nha44-2.jpg', 'nha44-3.jpg', 'nha44-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (59, 8, 109, 2, 12, 'Số 111 Trần Đăng Ninh, Cầu Giấy, Hà Nội', 'Nhà trọ', 74, 0, 4, '<p>Tiện &iacute;ch nội khu :Tầng 1: Khu sảnh đ&oacute;n kh&aacute;ch, nh&agrave; sinh hoạt cộng đồng ( 870m2), nh&agrave; trẻ ( tr&ecirc;n 3300m2), TTTM, &nbsp;Tầng 2 v&agrave; 2 tầng hầm: Diện t&iacute;ch 11.208m2 d&ugrave;ng để xe đủ chỗ cho tất cả 1092 căn hộ.&nbsp;Tầng 3: L&agrave; khu phức hợp hồ bơi ngo&agrave;i trời 300m2, khu s&acirc;n vườn, thương mại bu&ocirc;n b&aacute;n. Ngo&agrave;i ra City Gate Towers 2 được bao quanh bởi đường nội bộ, hồ cảnh quan, s&acirc;n tennis.</p>\r\n', '', 2, 2, 2000000, 'nhatro1.jpg', 'canhodep3.jpg', 'canhodep12.jpg', 'tải xuống.jpg', 1, 'Hết phòng', '0', 1);
INSERT INTO `can_ho` VALUES (60, 7, 84, 1, 12, 'Đường Nghĩa Tân, Phường Nghĩa Tân, Quận Cầu Giấy, Hà Nội', 'Chung cư mini', 78, 0, 7, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;n</strong></p>\r\n', '', 2, 2, 13000000, 'nha46-1.jpg', 'nha46-2.jpg', 'nha46-3.jpg', 'nha46-4.jpg', 1, 'Còn phòng', '1', 1);
INSERT INTO `can_ho` VALUES (61, 7, 84, 1, 12, '34D ngõ 218, Đường Lạc Long Quân, Phường Thụy Khuê, Quận Tây Hồ, Hà Nội', 'Chung cư mini', 80, 0, 6, '<p>-&nbsp;<strong>Căn hộ đầy đủ tiện nghi:&nbsp;</strong>C&oacute; hồ bơi, ph&ograve;ng gym, khu vui chơi trẻ em, nh&agrave; h&agrave;ng, cửa h&agrave;ng tiện lợi, qu&aacute;n coffee, lối đi bộ rộng r&atilde;i.</p>\r\n\r\n<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 12500000, 'nha47-1.jpg', 'nha47-2.jpg', 'nha47-3.jpg', 'nha47-4.jpg', 1, 'Còn phòng', '0', 1);
INSERT INTO `can_ho` VALUES (62, 7, 84, 1, 12, '453 Nguyễn Trãi, Thanh Xuân, Hà Nội', 'Chung cư mini', 60, 0, 5, '<p>&nbsp;- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh trường học&nbsp;quốc tế: Nam S&agrave;i G&ograve;n (SSIS), v&agrave; trường quốc tế Đinh Thiện L&yacute;, Trường quốc tế Canada,&nbsp;dễ d&agrave;ng di chuyển đến c&aacute;c trung t&acirc;m thương mại như:&nbsp;SC Vivo City, Crescent Mall, Parkson; C&ocirc;ng vi&ecirc;n, Co.op Food, Citimart greenview&nbsp;,... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n', '', 2, 2, 9500000, 'nha48-1.jpg', 'nha48-2.jpg', 'nha48-3.jpg', 'nha48-4.jpg', 1, 'Còn phòng', '1', 2);
INSERT INTO `can_ho` VALUES (63, 7, 84, 2, 12, 'số 27c ngách 63 ngõ 96, Đường Đại Từ, Phường Đại Kim, Quận Hoàng Mai, Hà Nội', 'Nhà trọ', 78, 0, 2, '<p>- Tiện &iacute;ch ngoại khu:&nbsp;<strong>Xung quanh c&oacute; trường học THPT, cấp 1, cấp 2, si&ecirc;u thị VinMart,&nbsp;coffee, UBND phường, Ng&acirc;n h&agrave;ng, Bệnh viện quốc tế, trung t&acirc;m thương mại Creasent Mall,&nbsp;FV... v&agrave; c&aacute;c tiện &iacute;ch xung quanh.</strong></p>\r\n\r\n<p><strong>-&nbsp; Thiết kế hiện đại, đơn giản, tận dụng mọi kh&ocirc;ng gian, đầy đủ nội thất cao cấp, c&oacute; &ocirc; đậu xe hơi ri&ecirc;ng. Gi&oacute; tự nhi&ecirc;n cả ng&agrave;y.</strong></p>\r\n\r\n<p>-&nbsp;Khu d&acirc;n cư văn minh, tho&aacute;ng m&aacute;t, sạch sẽ.</p>\r\n', '', 2, 2, 2000000, 'nhatro49.jpg', 'nha49-2.jpg', 'nha49-3.jpg', 'nha49-4.jpg', 1, 'Còn phòng', '1', 3);
INSERT INTO `can_ho` VALUES (64, 6, 81, 2, 12, '42 Ngõ 91, Đường Phan Trọng Tuệ, Phường Kiến Hưng, Quận Hà Đông, Hà Nội', 'Chung cư mini', 84, 0, 0, '<p>- <strong>Căn hộ đầy đủ tiện nghi: </strong>Có hồ bơi, phòng gym, khu vui chơi trẻ em, nhà hàng, cửa hàng tiện lợi, quán coffee, lối đi bộ rộng rãi.</p>\r\n\r\n<p> - Tiện ích ngoại khu: <strong>Xung quanh trường học quốc tế: Nam Sài Gòn (SSIS), và trường quốc tế Đinh Thiện Lý, Trường quốc tế Canada, dễ dàng di chuyển đến các trung tâm thương mại như: SC Vivo City, Crescent Mall, Parkson; Công viên, Co.op Food, Citimart greenview ,... và các tiện ích xung quanh.</strong></p>\r\n', 'không', 2, 2, 8000000, 'nha50-1.jpg', 'nha50-2.jpg', 'nha50-3.jpg', 'nha50-3.jpg', 1, 'Hết phòng', '1', 5);
INSERT INTO `can_ho` VALUES (65, 2, 15, 2, 42, ' Số 113 Thái Hà, Đống Đa, Hà Nội', 'Chung cư mini', 54, 3, 3, 'không có', 'không có', 4, 2, 7500000, '5445e08a1773b9f81e3777ae2eb47648.jpg', '5be956536389d90c40930238c01862f5.jpg', '4d461650adfdf44d9e3d52d2bf967479.jpg', '3b38fcb0fe245310e9cdb63f1cf19e98.jpg', 1, 'Hết phòng', '1', 1);
INSERT INTO `can_ho` VALUES (67, 2, 13, 1, 12, 'Số 73 Quang Trung, Hà Đông, Hà Nội', 'Chung cư mini 123456', 45, 3, 3, 'không có', 'bài đăng', 2, 3, 234568000, '141004215_406555707219852_4881450761188021022_n.jpg', '141004215_406555707219852_4881450761188021022_n.jpg', '141004215_406555707219852_4881450761188021022_n.jpg', '141004215_406555707219852_4881450761188021022_n.jpg', 1, 'Còn phòng', '1', 0);

-- ----------------------------
-- Table structure for dangkytimnha
-- ----------------------------
DROP TABLE IF EXISTS `dangkytimnha`;
CREATE TABLE `dangkytimnha`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sdt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `trangthai` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dangkytimnha
-- ----------------------------
INSERT INTO `dangkytimnha` VALUES (1, 'Quốc Ngô', 'ngoanhquoc6@gmail.com', '0987147942', 1);
INSERT INTO `dangkytimnha` VALUES (2, 'Anh Quoc', 'ngoanhquoc10@gmail.com', '0987147942', 0);
INSERT INTO `dangkytimnha` VALUES (3, 'Quốc Ngô', 'ngoanhquoc10@gmail.com', '0987147942', 1);
INSERT INTO `dangkytimnha` VALUES (4, 'Lê huy', 'leduchuy@gmail.com', '0977955730', 1);

-- ----------------------------
-- Table structure for dat_lich
-- ----------------------------
DROP TABLE IF EXISTS `dat_lich`;
CREATE TABLE `dat_lich`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_dat` int(12) NOT NULL COMMENT 'mã đặt lịch xem',
  `ma_can` int(12) NOT NULL COMMENT 'mã căn hộ',
  `ma_tk` int(12) NOT NULL COMMENT 'mã tài khoản',
  `trang_thai` tinyint(1) NULL DEFAULT NULL,
  `ten_nguoi_dat` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `trang_thai_lich` tinyint(4) NULL DEFAULT NULL,
  `ghi_chu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sodt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gio_xem` time(0) NULL DEFAULT NULL,
  `ngay_dat` date NULL DEFAULT NULL COMMENT 'ngày đặt',
  `ngay_xem` date NULL DEFAULT NULL COMMENT 'ngày xem',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `Fk_datlich_tk`(`ma_tk`) USING BTREE,
  INDEX `Fk_datlich_canho`(`ma_can`) USING BTREE,
  INDEX `ma_dat`(`ma_dat`) USING BTREE,
  CONSTRAINT `Fk_datlich_canho` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `Fk_datlich_tk` FOREIGN KEY (`ma_tk`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dat_lich
-- ----------------------------
INSERT INTO `dat_lich` VALUES (50, 46, 15, 45, 1, 'Lê huy', 2, 'Tôi muốn xem căn hộ này', '0356985643', '09:30:18', '2021-04-22', '2021-04-22');
INSERT INTO `dat_lich` VALUES (53, 49, 63, 45, 1, 'Lê huy', 1, 'Tôi muốn xem căn hộ này', '0356985643', '23:41:00', '2021-04-22', '2021-04-23');
INSERT INTO `dat_lich` VALUES (54, 1, 63, 12, 1, 'Lê huy', 1, 'Tôi muốn xem căn hộ này', '0356985643', '00:16:00', '2021-04-22', '2021-04-23');
INSERT INTO `dat_lich` VALUES (65, 0, 67, 12, 1, 'Trương Văn Hào ', 1, '', '0987147942', '16:08:00', '2021-04-21', '2021-04-23');
INSERT INTO `dat_lich` VALUES (66, 0, 67, 12, 1, 'Trương Văn Hào ', 1, '', '0987147942', '16:12:00', '2021-04-21', '2021-04-23');
INSERT INTO `dat_lich` VALUES (67, 67, 67, 12, 1, 'Trương Văn Hào ', 1, '', '0987147942', '04:18:00', '2021-04-21', '2021-04-23');

-- ----------------------------
-- Table structure for hop_dong
-- ----------------------------
DROP TABLE IF EXISTS `hop_dong`;
CREATE TABLE `hop_dong`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ma_tk` int(11) NULL DEFAULT NULL,
  `ma_can` int(11) NULL DEFAULT NULL,
  `ten_can_ho` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `do_dung` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `vi_tri` varchar(155) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `chu_nha` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `nguoi_thue` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `gia_thue` float NULL DEFAULT NULL,
  `dien_tich` float NULL DEFAULT NULL,
  `loai_can` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'trong bảng loại căn',
  `chi_phi_khac` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ngay_thue` date NULL DEFAULT NULL,
  `ngay_het_han` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_hop_dong_khach_hang`(`ma_tk`) USING BTREE,
  INDEX `FK_hop_dong_can_ho_2`(`ten_can_ho`) USING BTREE,
  INDEX `FK_hop_dong_can_ho_3`(`vi_tri`) USING BTREE,
  INDEX `FK_hop_dong_khach_hang_2`(`nguoi_thue`) USING BTREE,
  INDEX `FK_hop_dong_can_ho_4`(`gia_thue`) USING BTREE,
  INDEX `FK_hop_dong_can_ho_5`(`dien_tich`) USING BTREE,
  INDEX `FK_hop_dong_loai_can`(`loai_can`) USING BTREE,
  INDEX `ma_can`(`ma_can`) USING BTREE,
  CONSTRAINT `FK_hop_dong_can_ho` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_hop_dong_can_ho_2` FOREIGN KEY (`ten_can_ho`) REFERENCES `can_ho` (`ten_can_ho`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hop_dong_can_ho_3` FOREIGN KEY (`vi_tri`) REFERENCES `can_ho` (`dia_chi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hop_dong_can_ho_4` FOREIGN KEY (`gia_thue`) REFERENCES `can_ho` (`gia_thue`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hop_dong_can_ho_5` FOREIGN KEY (`dien_tich`) REFERENCES `can_ho` (`dien_tich`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hop_dong_khach_hang` FOREIGN KEY (`ma_tk`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hop_dong_khach_hang_2` FOREIGN KEY (`nguoi_thue`) REFERENCES `khach_hang` (`ho_ten`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_hop_dong_loai_can` FOREIGN KEY (`loai_can`) REFERENCES `loai_can` (`ten_can`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hop_dong
-- ----------------------------
INSERT INTO `hop_dong` VALUES (33, 12, 67, 'Chung cư mini 123456', '', 'Số 73 Quang Trung, Hà Đông, Hà Nội', 'Trương Văn Hào ', 'Trương Văn Hào ', 234568000, 45, 'Chung cư mini', '', '2021-04-21', '2021-05-21');

-- ----------------------------
-- Table structure for khach_hang
-- ----------------------------
DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE `khach_hang`  (
  `ma_tk` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã tài khoản',
  `ho_ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'họ tên khách hàng',
  `hinh` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ten_tk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'tên tài khoản',
  `mat_khau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'mật khẩu',
  `sdt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'số điện thoại',
  `kich_hoat` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'kích hoạt',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email',
  `vai_tro` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'vai trò',
  `random_key` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT 'dãy số ngẫu nhiên',
  `currency` int(11) NULL DEFAULT NULL,
  `cmnd_truoc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cmnd_sau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ma_tk`) USING BTREE,
  INDEX `ho_ten`(`ho_ten`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of khach_hang
-- ----------------------------
INSERT INTO `khach_hang` VALUES (12, 'Trương Văn Hào ', 'anh.jpg', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '0987147942', 1, 'haopt1@gmail.com', 1, 'fff46f4128a55e1f7bb1', 50000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (22, 'Nguyễn Tuấn Anh', '', 'tuananh123', 'e10adc3949ba59abbe56e057f20f883e', '0987654321', 1, 'tuananh@gmail.com', 0, 'fff46f4128a55e1f7bb1', 15000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (35, 'Nguyễn Văn Dũng', '', 'nuinguyen', 'e10adc3949ba59abbe56e057f20f883e', '0382535536', 1, 'dungfpoly@gmail.com', 0, '76bc01a7bf6d4d9e8fad', 100000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (40, 'Huy 12345678', NULL, 'huy12345678', 'f3ec3b0495f654f50d4071c989d93c54', '0356478155', 1, 'huyldph08692@fpt.edu.vn', 0, '76bc01a7bf6d4d9e8fad', 35000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (42, 'Lê Huy', '', 'huylee', 'e10adc3949ba59abbe56e057f20f883e', '095551710', 1, 'huykarin11@gmail.com', 2, '76bc01a7bf6d4d9e8fad', 250000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (44, 'Lê huy', NULL, 'lehuy12589', '7f04546942b67e7b778810b3be2c454d', '0256478954', 1, 'lehuy12589@gmail.com', 0, '76bc01a7bf6d4d9e8fad', 60000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (45, 'Lê huy', NULL, 'huyle112', 'e10adc3949ba59abbe56e057f20f883e', '0356985643', 1, 'huy@gmail.com', 0, '76bc01a7bf6d4d9e8fad', 750000, NULL, NULL);
INSERT INTO `khach_hang` VALUES (47, 'Lê Đức Huy', '', 'huykkk', '17218c9fb835c1408df23dd0289f3b87', '0382535536', 1, 'luutrunghieu89@gmail.com', 0, 'fff46f4128a55e1f7bb1', NULL, NULL, NULL);
INSERT INTO `khach_hang` VALUES (48, 'Lê huy', '', 'admin8', 'e10adc3949ba59abbe56e057f20f883e', '0382535536', 1, 'admin@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL, NULL, NULL);
INSERT INTO `khach_hang` VALUES (49, 'Công Dương', NULL, 'duongcong1', 'e10adc3949ba59abbe56e057f20f883e', '0365987146', 0, 'fuckduong@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL, NULL, NULL);
INSERT INTO `khach_hang` VALUES (50, 'Đõ Thị Tuyết Mai', NULL, 'Mai', '25f9e794323b453885f5181f1b624d0b', '0325689451', 0, 'mai@gmail.com', 2, '76bc01a7bf6d4d9e8fad', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for loai_can
-- ----------------------------
DROP TABLE IF EXISTS `loai_can`;
CREATE TABLE `loai_can`  (
  `ma_loai` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã căn hộ',
  `ten_can` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên căn hộ',
  PRIMARY KEY (`ma_loai`) USING BTREE,
  INDEX `ten_can`(`ten_can`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of loai_can
-- ----------------------------
INSERT INTO `loai_can` VALUES (1, 'Chung cư mini');
INSERT INTO `loai_can` VALUES (2, 'Nhà trọ');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS `payments`;
CREATE TABLE `payments`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thanh_vien` int(12) NOT NULL COMMENT 'thành viên thanh toán',
  `ma_can` int(12) NOT NULL,
  `money` float NOT NULL COMMENT 'số tiền thanh toán',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ghi chú thanh toán',
  `vnp_response_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mã phản hồi',
  `code_vnpay` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mã giao dịch vnpay',
  `code_bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mã ngân hàng',
  `time` datetime(0) NOT NULL COMMENT 'thời gian chuyển khoản',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_hd_ch`(`ma_can`) USING BTREE,
  INDEX `fk_hd_kh`(`thanh_vien`) USING BTREE,
  CONSTRAINT `fk_hd_ch` FOREIGN KEY (`ma_can`) REFERENCES `can_ho` (`ma_can`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_hd_kh` FOREIGN KEY (`thanh_vien`) REFERENCES `khach_hang` (`ma_tk`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for phuong
-- ----------------------------
DROP TABLE IF EXISTS `phuong`;
CREATE TABLE `phuong`  (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `ma_quan` int(12) NOT NULL,
  `phuong` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_quan_phuong`(`ma_quan`) USING BTREE,
  CONSTRAINT `fk_quan_phuong` FOREIGN KEY (`ma_quan`) REFERENCES `quan` (`ma_quan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 165 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of phuong
-- ----------------------------
INSERT INTO `phuong` VALUES (1, 1, 'Cầu Giấy');
INSERT INTO `phuong` VALUES (2, 1, 'Cống Vị');
INSERT INTO `phuong` VALUES (3, 1, 'Điện Biên');
INSERT INTO `phuong` VALUES (4, 1, 'Đội Cấn');
INSERT INTO `phuong` VALUES (5, 1, 'Giảng Võ');
INSERT INTO `phuong` VALUES (6, 1, 'Kim Mã');
INSERT INTO `phuong` VALUES (7, 1, ' Ngọc Hà');
INSERT INTO `phuong` VALUES (8, 1, 'Nguyễn Trung Trực');
INSERT INTO `phuong` VALUES (9, 1, 'Phúc Xá');
INSERT INTO `phuong` VALUES (10, 1, 'Quán Thánh');
INSERT INTO `phuong` VALUES (11, 1, 'Thành Công');
INSERT INTO `phuong` VALUES (12, 1, ' Trúc Bạch');
INSERT INTO `phuong` VALUES (13, 2, 'Chương Dương');
INSERT INTO `phuong` VALUES (14, 2, ' Cửa Đông');
INSERT INTO `phuong` VALUES (15, 2, ' Cửa Nam');
INSERT INTO `phuong` VALUES (16, 2, ' Đồng Xuân');
INSERT INTO `phuong` VALUES (17, 2, ' Hàng Bạc');
INSERT INTO `phuong` VALUES (18, 2, ' Hàng Bài');
INSERT INTO `phuong` VALUES (19, 2, 'Hàng Bồ');
INSERT INTO `phuong` VALUES (20, 2, 'Hàng Bông');
INSERT INTO `phuong` VALUES (21, 2, 'Hàng Buồm');
INSERT INTO `phuong` VALUES (22, 2, 'Hàng Đào');
INSERT INTO `phuong` VALUES (23, 2, ' Hàng Gai');
INSERT INTO `phuong` VALUES (24, 2, 'Hàng Mã');
INSERT INTO `phuong` VALUES (25, 2, 'Hàng Trống');
INSERT INTO `phuong` VALUES (26, 2, 'Lý Thái Tổ');
INSERT INTO `phuong` VALUES (27, 2, 'Phan Chu Trinh');
INSERT INTO `phuong` VALUES (28, 2, 'Phúc Tân');
INSERT INTO `phuong` VALUES (29, 2, 'Trần Hưng Đạo');
INSERT INTO `phuong` VALUES (30, 2, 'Tràng Tiền');
INSERT INTO `phuong` VALUES (31, 3, 'Cát Linh');
INSERT INTO `phuong` VALUES (32, 3, 'Hàng Bột');
INSERT INTO `phuong` VALUES (33, 3, 'Khâm Thiên');
INSERT INTO `phuong` VALUES (34, 3, 'Khương Thượng');
INSERT INTO `phuong` VALUES (35, 3, 'Kim Liên');
INSERT INTO `phuong` VALUES (36, 3, 'Láng Hạ');
INSERT INTO `phuong` VALUES (37, 3, 'Láng Thượng');
INSERT INTO `phuong` VALUES (38, 3, 'Nam Đồng');
INSERT INTO `phuong` VALUES (39, 3, 'Ngã Tư Sở');
INSERT INTO `phuong` VALUES (40, 3, 'Ô Chợ Dừa');
INSERT INTO `phuong` VALUES (41, 3, 'Phương Liên');
INSERT INTO `phuong` VALUES (42, 3, 'Phương Mai');
INSERT INTO `phuong` VALUES (43, 3, 'Quang Trung');
INSERT INTO `phuong` VALUES (44, 3, 'Quốc Tử Giám');
INSERT INTO `phuong` VALUES (45, 3, 'Thịnh Quang');
INSERT INTO `phuong` VALUES (46, 3, 'Thổ Quan');
INSERT INTO `phuong` VALUES (47, 3, 'Trung Liệt');
INSERT INTO `phuong` VALUES (48, 3, 'Trung Phụng');
INSERT INTO `phuong` VALUES (49, 3, 'Trung Tự');
INSERT INTO `phuong` VALUES (50, 3, 'Văn Chương');
INSERT INTO `phuong` VALUES (51, 3, 'Văn Miếu');
INSERT INTO `phuong` VALUES (52, 4, 'Thanh Xuân');
INSERT INTO `phuong` VALUES (53, 4, 'Thượng Đình');
INSERT INTO `phuong` VALUES (54, 4, 'Kim Giang');
INSERT INTO `phuong` VALUES (55, 4, 'Phương Liệt');
INSERT INTO `phuong` VALUES (56, 4, 'Thanh Xuân Nam');
INSERT INTO `phuong` VALUES (57, 4, 'Thanh Xuân Bắc');
INSERT INTO `phuong` VALUES (58, 4, 'Khương Mai');
INSERT INTO `phuong` VALUES (59, 4, 'Khương Trung');
INSERT INTO `phuong` VALUES (60, 4, 'Khương Đình');
INSERT INTO `phuong` VALUES (61, 4, 'Hạ Đình');
INSERT INTO `phuong` VALUES (62, 4, 'Nhân Chính');
INSERT INTO `phuong` VALUES (63, 5, 'Dịch Vọng');
INSERT INTO `phuong` VALUES (64, 5, 'Dịch Vọng Hậu');
INSERT INTO `phuong` VALUES (65, 5, 'Mai Dịch');
INSERT INTO `phuong` VALUES (66, 5, 'Nghĩa Đô');
INSERT INTO `phuong` VALUES (67, 5, 'Nghĩa Tân');
INSERT INTO `phuong` VALUES (68, 5, 'Quan Hoa');
INSERT INTO `phuong` VALUES (69, 5, 'Trung Hòa');
INSERT INTO `phuong` VALUES (70, 5, 'Yên Hòa');
INSERT INTO `phuong` VALUES (71, 6, 'Đại Kim');
INSERT INTO `phuong` VALUES (72, 6, 'Định Công');
INSERT INTO `phuong` VALUES (73, 6, 'Giáp Bát');
INSERT INTO `phuong` VALUES (74, 6, 'Hoàng Liệt');
INSERT INTO `phuong` VALUES (75, 6, 'Hoàng Văn Thụ');
INSERT INTO `phuong` VALUES (76, 6, 'Lĩnh Nam');
INSERT INTO `phuong` VALUES (77, 6, 'Mai Động');
INSERT INTO `phuong` VALUES (78, 6, 'Tân Mai');
INSERT INTO `phuong` VALUES (79, 6, 'Thanh Trì');
INSERT INTO `phuong` VALUES (80, 6, 'Thịnh Liệt');
INSERT INTO `phuong` VALUES (81, 6, 'Trần Phú');
INSERT INTO `phuong` VALUES (82, 6, 'Tương Mai');
INSERT INTO `phuong` VALUES (83, 6, 'Vĩnh Hưng');
INSERT INTO `phuong` VALUES (84, 6, 'Yên Sở');
INSERT INTO `phuong` VALUES (85, 7, 'Bách Khoa');
INSERT INTO `phuong` VALUES (86, 7, 'Bạch Đằng');
INSERT INTO `phuong` VALUES (87, 7, 'Bạch Mai');
INSERT INTO `phuong` VALUES (88, 7, 'Cầu Dền');
INSERT INTO `phuong` VALUES (89, 7, 'Đống Mác');
INSERT INTO `phuong` VALUES (90, 7, 'Đồng Nhân');
INSERT INTO `phuong` VALUES (91, 7, 'Đồng Tâm');
INSERT INTO `phuong` VALUES (92, 7, 'Lê Đại Hành');
INSERT INTO `phuong` VALUES (93, 7, 'Minh Khai');
INSERT INTO `phuong` VALUES (94, 7, 'Nguyễn Du');
INSERT INTO `phuong` VALUES (95, 7, 'Phạm Đình Hổ');
INSERT INTO `phuong` VALUES (96, 7, 'Phố Huế');
INSERT INTO `phuong` VALUES (97, 7, 'Quỳnh Lôi');
INSERT INTO `phuong` VALUES (98, 7, 'Quỳnh Mai');
INSERT INTO `phuong` VALUES (99, 7, 'Thanh Lương');
INSERT INTO `phuong` VALUES (100, 7, 'Thanh Nhàn');
INSERT INTO `phuong` VALUES (101, 7, 'Trương Định');
INSERT INTO `phuong` VALUES (102, 7, 'Vĩnh Tuy');
INSERT INTO `phuong` VALUES (103, 8, 'Bưởi');
INSERT INTO `phuong` VALUES (104, 8, 'Nhật Tân');
INSERT INTO `phuong` VALUES (105, 8, 'Phú Thượng');
INSERT INTO `phuong` VALUES (106, 8, 'Quảng An');
INSERT INTO `phuong` VALUES (107, 8, 'Thụy Khuê');
INSERT INTO `phuong` VALUES (108, 8, 'Tứ Liên');
INSERT INTO `phuong` VALUES (109, 8, 'Xuân La');
INSERT INTO `phuong` VALUES (110, 8, 'Yên Phụ');
INSERT INTO `phuong` VALUES (111, 9, 'Bồ Đề');
INSERT INTO `phuong` VALUES (112, 9, 'Cự Khối');
INSERT INTO `phuong` VALUES (113, 9, 'Đức Giang');
INSERT INTO `phuong` VALUES (114, 9, 'Gia Thụy');
INSERT INTO `phuong` VALUES (115, 9, 'Giang Biên');
INSERT INTO `phuong` VALUES (116, 9, 'Long Biên');
INSERT INTO `phuong` VALUES (117, 9, 'Ngọc Lâm');
INSERT INTO `phuong` VALUES (118, 9, 'Ngọc Thụy');
INSERT INTO `phuong` VALUES (119, 9, 'Phúc Đồng');
INSERT INTO `phuong` VALUES (120, 9, 'Phúc Lợi');
INSERT INTO `phuong` VALUES (121, 9, 'Sài Đồng');
INSERT INTO `phuong` VALUES (122, 9, 'Thạch Bàn');
INSERT INTO `phuong` VALUES (123, 9, 'Thượng Thanh');
INSERT INTO `phuong` VALUES (124, 9, 'Việt Hưng');
INSERT INTO `phuong` VALUES (125, 10, 'Trung Văn');
INSERT INTO `phuong` VALUES (126, 10, 'Đại Mỗ');
INSERT INTO `phuong` VALUES (127, 10, 'Tây Mỗ');
INSERT INTO `phuong` VALUES (128, 10, 'Mễ Trì');
INSERT INTO `phuong` VALUES (129, 10, 'Phú Đô');
INSERT INTO `phuong` VALUES (130, 10, 'Mỹ Đình 1');
INSERT INTO `phuong` VALUES (131, 10, 'Mỹ Đình 2');
INSERT INTO `phuong` VALUES (132, 10, 'Cầu Diễn');
INSERT INTO `phuong` VALUES (133, 10, 'Phương Canh');
INSERT INTO `phuong` VALUES (134, 10, 'Xuân Phương');
INSERT INTO `phuong` VALUES (135, 11, 'Biên Giang');
INSERT INTO `phuong` VALUES (136, 11, 'Đồng Mai');
INSERT INTO `phuong` VALUES (137, 11, 'Yên Nghĩa');
INSERT INTO `phuong` VALUES (138, 11, 'Dương Nội');
INSERT INTO `phuong` VALUES (139, 11, 'Hà Cầu');
INSERT INTO `phuong` VALUES (140, 11, 'La Khê');
INSERT INTO `phuong` VALUES (141, 11, 'Mộ Lao');
INSERT INTO `phuong` VALUES (142, 11, 'Nguyễn Trãi');
INSERT INTO `phuong` VALUES (143, 11, 'Phú La');
INSERT INTO `phuong` VALUES (144, 11, 'Phú Lãm');
INSERT INTO `phuong` VALUES (145, 11, 'Phú Lương');
INSERT INTO `phuong` VALUES (146, 11, 'Kiến Hưng');
INSERT INTO `phuong` VALUES (147, 11, 'Phúc La');
INSERT INTO `phuong` VALUES (148, 11, 'Quang Trung');
INSERT INTO `phuong` VALUES (149, 11, 'Vạn Phúc');
INSERT INTO `phuong` VALUES (150, 11, 'Văn Quán');
INSERT INTO `phuong` VALUES (151, 11, 'Yết Kiêu');
INSERT INTO `phuong` VALUES (152, 12, 'Cổ Nhuế 1');
INSERT INTO `phuong` VALUES (153, 12, 'Cổ Nhuế 2');
INSERT INTO `phuong` VALUES (154, 12, 'Đức Thắng');
INSERT INTO `phuong` VALUES (155, 12, 'Đông Ngạc');
INSERT INTO `phuong` VALUES (156, 12, 'Thụy Phương');
INSERT INTO `phuong` VALUES (157, 12, 'Liên Mạc');
INSERT INTO `phuong` VALUES (158, 12, 'Thượng Cát');
INSERT INTO `phuong` VALUES (159, 12, 'Tây Tựu');
INSERT INTO `phuong` VALUES (160, 12, 'Minh Khai');
INSERT INTO `phuong` VALUES (161, 12, 'Phú Diễn');
INSERT INTO `phuong` VALUES (162, 12, 'Phúc Diễn');
INSERT INTO `phuong` VALUES (163, 12, 'Xuân Đỉnh');
INSERT INTO `phuong` VALUES (164, 12, 'Xuân Tảo');

-- ----------------------------
-- Table structure for quan
-- ----------------------------
DROP TABLE IF EXISTS `quan`;
CREATE TABLE `quan`  (
  `ma_quan` int(12) NOT NULL AUTO_INCREMENT COMMENT 'mã quận',
  `ten_quan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Tên quận',
  PRIMARY KEY (`ma_quan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quan
-- ----------------------------
INSERT INTO `quan` VALUES (1, 'Quận Ba Đình');
INSERT INTO `quan` VALUES (2, 'Quận Hoàn Kiếm');
INSERT INTO `quan` VALUES (3, 'Quận Đống Đa');
INSERT INTO `quan` VALUES (4, 'Quận Thanh Xuân');
INSERT INTO `quan` VALUES (5, 'Quận Cầu Giấy');
INSERT INTO `quan` VALUES (6, 'Quận Hoàng Mai');
INSERT INTO `quan` VALUES (7, 'Quận Hai Bà Trưng');
INSERT INTO `quan` VALUES (8, 'Quận Tây Hồ');
INSERT INTO `quan` VALUES (9, 'Quận Long Biên');
INSERT INTO `quan` VALUES (10, 'Quận Nam Từ Liêm');
INSERT INTO `quan` VALUES (11, 'Quận Hà Đông');
INSERT INTO `quan` VALUES (12, 'Quận Bắc Từ Liêm');

SET FOREIGN_KEY_CHECKS = 1;
