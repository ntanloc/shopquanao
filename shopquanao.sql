-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2024 at 03:04 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopquanao`
--
CREATE DATABASE `shopquanao` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shopquanao`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quanlyshop`
--

DROP TABLE IF EXISTS `tbl_quanlyshop`;
CREATE TABLE IF NOT EXISTS `tbl_quanlyshop` (
  `MaQuanLy` int(10) NOT NULL,
  `TenQuanLy` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` tinyint(1) NOT NULL,
  `Khoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_quanlyshop`
--

INSERT INTO `tbl_quanlyshop` (`MaQuanLy`, `TenQuanLy`, `TenDangNhap`, `MatKhau`, `QuyenHan`, `Khoa`) VALUES
(1, 'Trần Văn A', 'tva', 'e10adc3949ba59abbe56e057f20f883e', 1, 0),
(2, 'Nguyễn Văn Hùng', 'nvhung', 'e10adc3949ba59abbe56e057f20f883e 	', 1, 0),
(3, 'Nguễn Thị D', 'ntd', 'e10adc3949ba59abbe56e057f20f883e', 2, 0),
(4, 'Trần Văn C', 'tvc123456', 'e10adc3949ba59abbe56e057f20f883e', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loaisanpham`
--

DROP TABLE IF EXISTS `tbl_loaisanpham`;
CREATE TABLE IF NOT EXISTS `tbl_loaisanpham` (
  `IdLoaiSanPham` int(20) NOT NULL AUTO_INCREMENT,
  `TenLoaiSanPham` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`IdLoaiSanPham`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_loaisanpham`
--

INSERT INTO `tbl_loaisanpham` (`IdLoaiSanPham`, `TenLoaiSanPham`) VALUES
(1, 'Đồ bộ'),
(2, 'Quần'),
(3, 'Áo'),
(4, 'Giày'),
(5, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

DROP TABLE IF EXISTS `tbl_sanpham`;
CREATE TABLE IF NOT EXISTS `tbl_sanpham` (
  `IdSanPham` int(10) NOT NULL AUTO_INCREMENT,
  `MaSanPham` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TenSanPham` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `IdLoaiSanPham` int(20) NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(10) NOT NULL,
  `MoTa` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `TiLeGiamGia` int(4) NOT NULL,
`CauHinh` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `LuotXem` int(11) NOT NULL,
  PRIMARY KEY (`IdSanPham`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`IdSanPham`, `MaSanPham`, `TenSanPham`, `IdloaiSanPham`, `HinhAnh`, `DonGia`, `MoTa`, `SoLuong`, `TiLeGiamGia`, `LuotXem`) VALUES
(1, 'Ao01', 'Áo Đá Bóng Nam Lfc 23/24 Supporter Home - Đỏ', 3, 'images/S23SP01-1.jpg', 790000, 'Áo đấu sân nhà CLB BÓNG ĐÁ LIVERPOOL nam Liverpool FC 2023/24 có màu đỏ đặc trưng. Nó được làm từ vải polyester siêu bền giúp và thấm hút mồ hôi để giữ cho bạn mát mẻ.', 20, 10,62),
(2, 'Ao02', 'Áo Đá Bóng Nam Lfc 23/24 Supporter Away - Trắng', 3, 'images/S23SP02-1.jpg', 790000, 'Thiết kế đầy tự hào và ấn tượng, với sự kết hợp tinh tế của màu sắc và logo, chiếc áo này là biểu tượng của tình yêu và đam mê bất tận với đội bóng Liverpool FC.', 20, 20,62),
(3, 'Ao03', 'Áo Đá Bóng Nam Nike Liverpool Fc 2023/24 Stadium Home Dri-Fit Football - Đỏ', 3, 'images/DX2692-688-1.jpg', 1760000, 'Công nghệ Nike Dri-FIT thấm mồ hôi ra khỏi da, giúp bạn luôn khô ráo và thoải mái.', 20, 20,62),
(4, 'Ao04', 'Áo Đá Bóng Nam Adidas Argentina 24 Home - Xanh Dương', 3, 'images/IP8409-1.jpg', 1200000, 'Phong cách kinh điển dành cho nhà vô địch thế giới. Từ những sọc kẻ trứ danh cho đến biểu tượng Mặt Trời tháng Năm, chiếc áo adidas này dành tặng cho fan hâm mộ trung thành.', 20, 20,62),
(5, 'Ao05', 'Áo Bơi Chống Nắng Tay Dài Bé Trai Zoggs Bells - Xanh Dương', 3, 'images/463453-BLUE-SKY-1.jpg', 490000, 'Được chế tạo với vải sinh thái Ecolast bền vững của chúng tôi. Sợi vải độc quyền REPREVE® được làm từ chai nhựa tái chế để giúp bảo vệ và giữ gìn môi trường của chúng ta cho các thế hệ tương lai',12, 0,62),
(6, 'Ao06', 'Áo Bơi Chống Nắng Nam Speedo Sun Protection - Đen', 3, 'images/8-132093503-1.jpg', 1299000, 'Thuộc bộ sưu tập Essentials đến từ thương hiệu Speedo, chiếc áo bơi chống nắng này có thể đồng hành cùng bạn bất kể thời tiết nắng hay mưa', 20, 20,62),
(7, 'Ao07', 'Áo Bơi Chống Nắng Nam Zoggs Printed - Đen', 3, 'images/464000-1.jpg', 795000, 'Áo bơi chống nắng tay dài dành cho nam giới, có thể sử dụng cho các môn thể thao dưới nước. Được làm bằng chất liệu nhẹ, nhanh khô giúp tạo cảm giác thoải mái cho mọi hoạt động.', 18,0,62),
(8, 'Ao08', 'Áo Bơi Chống Nắng Nam Speedo Printed - Đỏ', 3, 'images/8-00302914529-1.jpg', 790000, '', 20, 20,62),
(9, 'Ao09', 'Áo bơi tay ngắn Speedo', 3, 'images/8-00302914529-1.jpg', 895000, 'Áo bơi tay ngắn Speedo mang phong cách cổ điển được lấy cảm hứng từ một di sản nổi tiếng của Úc. Thiết kế chui đầu, có khả năng chống nắng UPF 40 giúp bảo vệ làn da của bạn cả khi ở trong và ngoài nước.', 13, 20,62),
(10, 'Ao10', 'Áo Đá Bóng Nam Adidas Manchester United Tiro 23 Training - Xanh Lá', 3, 'images/IQ1527-1.jpg', 1100000, 'n tập - đó là nơi cần nhiều nỗ lực. Chính vì vậy chiếc áo jersey tập luyện Manchester United này phải chú trọng tính chuyên dụng không kém gì mẫu áo thi đấu adidas của câu lạc bộ. ', 20, 20,62),

(11, 'Quan01', 'Quần Ngắn Nam Adidas Designed For Training - Xanh Lá', 2, 'images/IS3822-1.jpg', 945000, 'Đầu tư cho Quần Ngắn Nam Adidas Designed For Training, bạn không chỉ sở hữu một chiếc quần, mà còn là chiếc chìa khóa mở ra cánh cửa đến đỉnh cao thể lực, chinh phục những mục tiêu đã đề ra.', 20, 20,62),
(12, 'Quan02', 'Quần Ngắn Nam Adidas D4T Pro Series Adistrong Workout - Xám', 2, 'images/IT7519-4.jpg', 459000, 'Chiếc Quần Short Tập Luyện D4T Pro Series Adistrong là món đồ tập must-have siêu thoải mái sẽ khích lệ bạn bứt phá khỏi vùng an toàn.', 20, 20,62),
(13, 'Quan03', 'Quần Ngắn Nam Under Armour Vanish Woven 6" Graphic - Đen', 2, 'images/1379280-001-1.jpg', 890000, 'Nếu trong tên sản phẩm có chữ UA Vanish, điều đó có nghĩa là đó là một trong những loại vải khô nhanh nhất của chúng tôi.', 20, 20,62),
(14, 'Quan04', 'Quần Bơi Nam Speedo Boomstar 16" - Xanh Navy', 2, 'images/8-12432D861-1.jpg', 790000, 'Quần bơi Boomstar 16" với phiên bản màu xanh đặc biệt kỷ niệm của Speedo, là sản phẩm với công năng vượt trội cùng thiết kế cổ điển khiến bạn hoàn toàn thoải mái khi tham gia bơi lội', 20, 20,62),
(15, 'Quan05', 'Quần Bơi Chống Nắng Nam Speedo Essentials Full Length - Đen', 2, 'images/SOJ20021-BKWH-1_1080x_2x_dad11c83-bce3-4e86-97ca-38877a9a32b1.jpg', 399000, 'Speedo Essential Full Length sẽ là một sự lựa chọn tuyệt vời hỗ trợ tối ưu cho những buổi tập bơi của bạn hiệu quả hơn', 20, 20,62),
(16, 'Quan06', 'Quần Bơi Nam Zoggs Hybrid 15 Inch - Nhiều Màu', 2, 'images/462774-1.jpg', 590000, 'Xin giới thiệu chiếc Quần ngắn Hybrid 15 ", chiếc quần bơi thú vị và tiện dụng của Zoggs. Phần eo có dây rút, bên trong phối lưới và có túi hai bên khéo léo tạo nên một chiếc quần ngắn thoải mái đến mức bạn sẽ muốn mặc nó quanh năm.', 20, 20,62),
(17, 'Quan07', 'Quần Bơi Nam Speedo Tech Panel - Đen', 2, 'images/8-00303514539-1.jpg', 345000, 'ắt lưng có dây rút có thể điều chỉnh vừa vặn,giúp bạn cảm thấy tự tin và an toàn khi bơi. Được thiết kế bền bỉ và có lợi cho môi trường, sản phẩm quần bơi được làm từ vải ECO Endurance+ mới.', 20, 20,62),
(18, 'Quan08', 'Quần Bơi Nam Speedo Club Training V-Cut - Đen', 2, 'images/8-00310515189-1.jpg', 329000, 'Hoàn hảo cho các buổi tập luyện, chiếc quần bơi nam ôm sát cơ thể để tạo ra hình dáng thuôn dài và bao gồm thắt lưng có dây rút với sự hỗ trợ tích hợp để tạo sự thoải mái và an toàn', 20, 20,62),
(19, 'Quan09', 'Quần Bơi Nam Zoggs', 2, 'images/8-1135515665-1.jpg', 459000, ' Chất liệu vải ECO EnduraFlex của chúng tôi mang lại khả năng kháng clo cao hơn so với các loại vải đồ bơi tiêu chuẩn và vừa vặn với CREORA® HighClo™', 20, 20,62),

(20, 'Bo01', 'SET ÁO THUN QUẦN SHORT VRCT', 1, 'images/sdm6061-den-2.jpg', 899000, 'Chất vải pha cotton mềm mại cho cảm giác thoải mái tuyệt đối, cùng 3 Sọc đặc trưng chạy dọc ống quần thể hiện niềm tự hào adidas.', 20, 20,62),
(21, 'Bo02', 'Bộ Đồ Thể Thao Nam In Super Sport', 1, 'images/sdm6091-xad-3.jpg', 485000, 'Sản phẩm giữ form tốt, không lo bai dão với 4 hệ sợi liên kết chặt ché giúp về mặt ổn định kết cấu, không biến dạng trong quá trình sử dụng', 20, 20,62),
(22, 'Bo03', 'Bộ Đồ Thể Thao Nam Phối Họa Tiết Kẻ', 1, 'images/sdm6061-den-2.jpg', 699000, 'Thuộc bộ sưu tập Essentials đến từ thương hiệu Speedo.', 20, 20,62),
(23, 'Bo04', 'Bộ Bóng Đá Đội Tuyển Đức', 1, 'images/qabd-duc-2023-xanh-1.jpg', 490000, 'Áo đội tuyển Đức 2020 được may bằng chất liệu vải thun lạnh thể thao, thoáng mát, thấm hút mồ hôi tốt. Chi tiết trên áo được in sắc nét, đẹp và có độ bền cao.', 20, 20,62),
(24, 'Bo05', 'Bộ Quần áo Riki CSD Namor', 1, 'images/qabd-khong-logo-riki-namor-xanh-bich-1.jpg', 590000, 'Quần áo bóng đá Riki Namor là bộ sưu tập mới nhất đến từ thương hiệu Riki, với một thiết kế đơn giản nhưng vẫn có đầy đủ các điểm nhấn để mang đến sự bắt mắt.', 20, 20,62),
(25, 'Bo06', 'Bộ Quần Áo JP Dragon', 1, 'images/qabd-khong-logo-jp-dragon-trang-1.jpg', 690000, 'Justplay Dragon là mẫu quần áo bóng đá không logo mới nhất đến từ thương hiệu Justplay. Lấy cảm hứng từ hình ảnh rồng bay, linh thú huyền thoại trong nền văn hóa Châu Á.', 20, 20,62),
(26, 'Bo07', 'Bộ Quần áo bóng đá Mira PTT12', 1, 'images/quan-ao-bong-da-khong-logo-mira-ptt-yousport-trang-1.jpg', 790000, 'Quần áo bóng đá Mira PTT12 là mẫu quần áo bóng đá không logo mới nằm trong bộ sưu tập PTT với đôi giày bóng đá Mira Ultra, sự kết hợp giữa Mira x Phan Tuấn Tài, chàng tiền vệ điển trai trong màu áo ĐTVN.', 20, 20,62),

(27, 'Giay01', 'Giày Bóng Rổ Nam Nike Air Jordan Xxxvii Low Pf - Trắng', 4, 'images/DQ4123-100-1.jpg', 3790000, 'Sản phẩm giày Nike Air Jordan mới nhất sẽ tập trung vào những cú bật nhảy và hạ xuống, sản phẩm sẽ nâng đỡ bạn khi bạn hạ cánh xuống mặt đất. Phần trên được làm bằng vải dệt leno chắc chắn và được gia cố sẽ giúp bạn luôn thoải mái và không ảnh hưởng đến trận đấu. ', 20, 20,62),
(28, 'Giay02', 'Giày Bóng Rổ Nam Nike Lebron Xxi Ep - Be', 4, 'images/FV2346-001-1.jpg', 4390000, 'Giày Bóng Rổ Nam Nike Lebron XXI EP hứa hẹn sẽ là người bạn đồng hành lý tưởng, cùng bạn thống trị mọi trận đấu và tỏa sáng trên sân khấu bóng rổ thế giới!', 20, 20,62),
(29, 'Giay03', 'Giày Bóng Rổ Unisex Under Armour Curry 11 - Trắng', 4, 'images/3027416-100-1.jpg', 3990000, 'Cho dù bạn đang bước vào sân bóng để thi đấu hay chỉ đơn giản muốn thể hiện phong cách với một đôi giày thể thao thời trang thì đôi giày này đều có thể đáp ứng. ', 20, 20,62),
(30, 'Giay04', 'Giày Bóng Đá Unisex Nike Legend 9 Academy - Trắng', 4, 'images/DA1190-146-9.jpg', 1390000, 'Được mệnh danh là một trong số những đôi giày nhẹ nhất của chúng tôi, Nike Tiempo Legend 9 Academy MG cho phép bạn thực hiện những đường chuyền tấn công tuyệt vời. ', 20, 20,62),
(31, 'Giay05', 'Giày Bóng Đá Unisex Nike React Legend 9 Pro Tf - Đỏ', 4, 'images/DA1192-614-9.jpg', 2390000, 'Một trong những phiên bản Nike Tiempo nhẹ nhất đến nay, Nike React Tiempo Legend 9 Pro TF cho phép bạn thực hiện những pha tấn công với thiết kế được tái tạo cho những cầu thủ ở vị trí tấn công.', 20, 20,62),
(32, 'Giay06', 'Giày Đá Bóng Nam Nike Mercurial Vapor 15 Academy - Xanh Dương', 4, 'images/DJ5631-300-1.jpg', 2799000, 'Nike Mercurial Vapor 15 Academy MG là sự lột xác ngoạn mục về công nghệ, mang đến lợi thế vượt trội cho các cầu thủ tấn công ưa thích tốc độ. ', 20, 20,62),
(33, 'Giay07', 'Giày Đá Bóng Unisex Adidas Turf X Crazyfast.3', 4, 'images/ID9338-7.jpg', 1790000, 'Duy trì sự ổn định ở tốc độ tối đa trên mặt cỏ ngắn nhân tạo, đôi giày đá bóng này có đế đinh bằng cao su phù hợp sân cỏ nhân tạo và đế giữa EVA mềm mại. ', 20, 20,62),
(34, 'Giay08', 'Giày Chạy Bộ Nam On Cloudspark - Xanh Navy', 4, 'images/3ME10391947-1.jpg', 4299000, 'Giày Chạy Bộ Nam On Cloudspark là sự lựa chọn tuyệt vời cho những bạn đam mê chạy bộ, mong muốn cải thiện thành tích và trải nghiệm cảm giác chạy tuyệt vời. ', 20, 20,62),
(35, 'Giay09', 'Giày Chạy Bộ Nam Hoka Arahi 7 Wide - Xanh Dương', 4, 'images/1147870-VRTL-1.jpg', 2750000, 'Thiết kế đế thấp, lớp đệm êm ái và công nghệ J-Frame™ hiện đại, đây là đôi giày lý tưởng cho người đam mê chạy bộ, yêu thích sự tự do và đam mê chinh phục mọi cự ly với sự thoải mái tối ưu.', 20, 20,62),

(36, 'Phukien01', 'Bình Giữ Nhiệt Kambukka Etna Trumpet Flower', 5, 'images/11-01016-1_ddf63f8d-51ff-4b45-9b86-3178cb6fa048.jpg', 399000, 'Bình có thể giữ nước nóng trong 5 tiếng (300 ml) hoặc 9 tiếng (500 ml), nước đá lạnh trong 11 tiếng (300 ml) hoặc 18 tiếng (500 ml) và cũng ngăn nước bị rò rỉ ra ngoài.', 20, 20,62),
(37, 'Phukien02', 'Bình Giữ Nhiệt Kambukka Etna (500 Ml) - Xanh Navy', 5, 'images/11-01028-1.jpg', 599000, 'Cà phê hoặc trà nóng sẵn sàng mọi lúc mọi nơi nhờ bình giữ nhiệt Etna bán chạy nhất của chúng tôi. Chiếc cốc này có nắp đậy 3 trong 1 và hệ thống làm sạch dễ dàng.', 20, 20,62),
(38, 'Phukien03', 'Bình Nước Thể Thao Under Armour Playmaker - Xanh Dương', 5, 'images/1364828-400-1.jpg', 690000, 'Không cần phải refill thêm nước giữa các phiên 2 lần một ngày hoặc khi tham gia giải đấu, chai nước siêu cỡ 64 oz Playmaker Jug của Under Armour luôn cung cấp đủ lượng nuớc mỗi khi bạn cần.', 20, 20,62),
(39, 'Phukien04', 'Bình Nước Lfc Dành Cho Fan Đội Bóng Liverpool - Đỏ', 5, 'images/S23SA07-1.jpg', 790000, 'Bình nước LFCW với thiết kế nắp trong suôt, vòi uống nước đảm bảo vệ sinh và đi kèm với một tay cầm thể tháo rời.', 20, 20,62),
(40, 'Phukien05', 'Vớ Under Armour Armourdry™ Run Lite (2 Đôi) - Xám', 5, 'images/1376077-011-1.jpg', 250000, 'Chúng tôi đã giảm độ dày của sợi vải để tạo ra những đôi vớ khô nhanh nhất từ ​​trước đến nay. Vải phân tán độ ẩm đồng đều, cho phép mồ hôi bay hơi nhanh hơn, vì vậy bạn sẽ cảm nhận được sự thoải mái và mát mẻ khi mang.', 20, 20,62),
(41, 'Phukien06', 'Vớ Adidas Có Đệm Cổ Thấp (3 Đôi) - Xám', 5, 'images/IC1333-1.jpg', 359000, 'i bộ nhẹ nhàng hay tập luyện cường độ cao, đôi tất cổ thấp adidas này sẽ giúp cố định đôi bàn chân của bạn. Chúng được làm bằng hỗn hợp cotton, polyester và nylon mềm mại, thoáng khí và co giãn tốt. ', 20, 20,62),
(42, 'Phukien07', 'Vớ Adidas Performance Designed For Sport Ankle (1 Đôi) - Trắng', 5, 'images/HT3435-1.jpg', 790000, 'Kết hợp hoàn hảo với các dụng cụ tập luyện khác của bạn, những đôi tất Adidas này có thiết kế mềm mại, liền mạch để hỗ trợ các chuyển động linh hoạt. Bên cạnh đó, bạn cũng sẽ cảm thấy vô cùng mát mẻ và thoải mái HEAT.RDY', 20, 20,62),
(43, 'Phukien08', 'Túi Trống Thể Thao Adidas Linear Duffel - Đen', 5, 'images/HT4742-1.jpg', 890000, 'Thêm phong cách thể thao cho mọi outfits với chiếc túi vải thô adidas này. Sở hữu trọng lượng nhẹ với phần đế chắc chắn, chiếc túi này giúp bảo vệ thiết bị của bạn trong khi dây đeo vai có thể điều chỉnh để bạn mang theo một cách thoải mái.', 20, 20,62),
(44, 'Phukien09', 'Ba Lô Adidas Power Vi - Đen', 5, 'images/HB1324-1.jpg', 690000, 'Các đai kéo chặt giúp cân bằng tải trọng, cùng nhiều ngăn có khóa kéo giúp bạn đựng đồ ngăn nắp. Thậm chí còn có cả một ngăn đựng laptop phòng khi bạn cần vội tới chỗ làm sau giờ tập.', 20, 20,62),
(45, 'Phukien010', 'Nón Thời Trang Puma Logo Trucker - Xanh Dương', 5, 'images/02403308-1.jpg', 649000, 'Nâng tầm phong cách đường phố của bạn lên một tầm cao mới với Nón Thời Trang Puma Logo Trucker! Chiếc nón này kết hợp giữa kiểu dáng trucker cổ điển được yêu thích với các chi tiết hiện đại, tạo nên sự pha trộn hoàn hảo giữa phong cách và chức năng.', 20, 20,62),
(46, 'Phukien011', 'Nón Thể Thao Nike Dri-Fit Adv Club Structured Swoosh - Trắng', 5, 'images/FB5636-100-1.jpg', 699000, 'Form dáng vừa đầu của Mũ Lưỡi Trai Club được kết hợp với chất liệu siêu nhẹ, thoáng khí, mang lại cho bạn sự thoải mái để vận động không bị hạn chế. Chất liệu vải thấm hút mồ hôi giúp bạn luôn mát mẻ và khô ráo, các lỗ thông gió Featherlight cải thiện luồng khí ở những vị trí cần thiết nhất.', 20, 20,62);
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
