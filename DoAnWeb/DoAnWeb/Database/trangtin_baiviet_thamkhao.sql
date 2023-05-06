-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 05, 2023 lúc 04:54 AM
-- Phiên bản máy phục vụ: 5.7.25
-- Phiên bản PHP: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `trangtin_baiviet_thamkhao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cautraloi`
--
CREATE DATABASE trangtin_baiviet_thamkhao;

CREATE TABLE `cautraloi` (
  `MaCauTraLoi` int(11) NOT NULL,
  `NoiDung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Acount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cautraloi`
--

INSERT INTO `cautraloi` (`MaCauTraLoi`, `NoiDung`, `Acount`) VALUES
(1, 'Rất tốt', 13),
(2, 'Tốt', 24),
(3, 'Bình thường', 10),
(4, 'Không tốt', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `file`
--

CREATE TABLE `file` (
  `id` int(5) NOT NULL,
  `ten_file` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ngay_Dang` datetime NOT NULL,
  `Link_file` tinytext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `file`
--

INSERT INTO `file` (`id`, `ten_file`, `Ngay_Dang`, `Link_file`) VALUES
(1, 'Nội dung file 1', '2016-03-18 17:53:23', 'files/TTCK-13TH.docx'),
(2, 'File 2', '2016-03-18 18:01:19', 'files/javascript.doc'),
(3, 'TuyenDung', '2021-12-03 05:08:00', 'files/poster-tuyen-dung-tma (1).jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chude`
--

CREATE TABLE `tbl_chude` (
  `MaChuDe` int(10) NOT NULL,
  `TenChuDe` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chude`
--

INSERT INTO `tbl_chude` (`MaChuDe`, `TenChuDe`) VALUES
(1, 'Giáo dục'),
(2, 'Kinh tế'),
(3, 'Văn hóa'),
(4, 'Du Lịch');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_nguoidung`
--

CREATE TABLE `tbl_nguoidung` (
  `MaNguoiDung` int(10) NOT NULL,
  `TenNguoiDung` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `QuyenHan` tinyint(1) NOT NULL,
  `Khoa` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_nguoidung`
--

INSERT INTO `tbl_nguoidung` (`MaNguoiDung`, `TenNguoiDung`, `TenDangNhap`, `MatKhau`, `QuyenHan`, `Khoa`) VALUES
(1, 'Trần Văn A', 'tva', 'e10adc3949ba59abbe56e057f20f883e', 1, 0),
(2, 'Nguyễn Văn Hùng', 'nvhung', 'e10adc3949ba59abbe56e057f20f883e 	', 1, 0),
(3, 'trần Văn C', 'tvc', 'e10adc3949ba59abbe56e057f20f883e', 2, 0),
(4, 'Trần Văn C', 'tvc123456', 'e10adc3949ba59abbe56e057f20f883e', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_noidungtin`
--

CREATE TABLE `tbl_noidungtin` (
  `MaBaiViet` int(10) NOT NULL,
  `MaChuDe` int(10) NOT NULL,
  `MaNguoiDung` int(10) NOT NULL,
  `TieuDe` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` text COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text COLLATE utf8_unicode_ci NOT NULL,
  `NgayDang` datetime NOT NULL,
  `HinhAnh` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `ChuThichAnh` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `LuotXem` int(10) NOT NULL,
  `KiemDuyet` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_noidungtin`
--

INSERT INTO `tbl_noidungtin` (`MaBaiViet`, `MaChuDe`, `MaNguoiDung`, `TieuDe`, `TomTat`, `NoiDung`, `NgayDang`, `HinhAnh`, `ChuThichAnh`, `LuotXem`, `KiemDuyet`) VALUES
(1, 2, 1, 'Nga là nước sản xuất dầu mỏ có khả năng bị hạ tín nhiệm nhất', 'Moody’s vừa cảnh báo sẽ xem xét đánh tụt tín nhiệm của hơn 10 nước sản xuất dầu mỏ thuộc nhóm nước đang phát triển, do lo ngại tác động của giá dầu lên nền kinh tế.', ' Danh sách gồm các nước như Nga, Kazakhstan, Nigeria, Angola, Gabon và Trinidad & Tobago. 5 trong 6 nước Vùng Vịnh cũng bị cảnh báo là Kuwait, Saudi Arabia, Các tiểu vương quốc Ảrập thống nhất, Bahrain và Qatar. Moody’s cho biết sẽ hoàn thiện việc xem xét trong vòng 2 tháng tới.\r\n\r\nTháng trước, Standard & Poor’s cũng hạ tín nhiệm của các nước Saudi Arabia, Bahrain, Kazakhstan, Oman, Brazil và Ba Lan. Giá dầu giảm đã buộc Chính phủ nhiều nước giảm chi - yếu tố thúc đẩy tăng trưởng kinh tế suốt một thập kỷ qua. Thâm hụt tài khóa cũng đang tăng do các nước này đi vay nhiều để bù đắp doanh thu thiếu hụt từ xuất khẩu dầu mỏ.\r\n\r\n\"Việc này sẽ là tín hiệu tiêu cực với thị trường, dù giá dầu lao dốc cũng chẳng phải tin mới mẻ gì. Khi giá dầu giảm, doanh thu từ các nước xuất khẩu mặt hàng này sẽ co lại, tạo ra thách thức cho việc cân bằng ngân sách, điều hành quốc gia và trả nợ\", Wayne Lin - Giám đốc quản lý tiền tệ tại QS Investors cho biết.\r\n\r\nMoody’s cho biết Nga cần điều chỉnh ngân sách để thích nghi với tình hình mới trên thị trường hàng hóa. Bộ trưởng Tài chính Nga - Anton Siluanov hôm qua cũng khẳng định Chính phủ nước này đang áp dụng nhiều biện pháp để cân bằng ngân sách trong trung hạn. Và Bộ Tài chính cũng sẽ \"giữ liên lạc thường xuyên\" với Moody’s trong quá trình xem xét xếp hạng, nhằm cung cấp đầy đủ thông tin cần thiết.\r\n\r\nĐợt xem xét này sẽ cho phép Moody’s \"quyết định mức độ điều chỉnh bậc tín nhiệm với các nước này, hoặc nhận định khả năng chống chịu của các nền kinh tế trước cú sốc giá dầu\", hãng cho biết.', '2016-03-06 15:05:20', 'images/4e44.jpg', '', 9, 1),
(2, 2, 1, 'Những cự ly vàng giúp bất động sản nhanh tăng giá', 'Nhà nằm ngay tâm đô thị hoặc cách ga metro (tàu điện) không quá 3km, hay di chuyển đến đường vành đai 1-2km, đi bộ 500m đến một km tới trạm xe buýt... là những bất động sản cực kỳ hấp dẫn để đầu tư bởi cơ hội tăng giá rất lớn.', ' Phó tổng giám đốc điều hành Công ty cổ phần địa ốc Cát Tường Phú Nguyên, Lê Tiến Vũ nhận định, vị trí là yếu tố tiên quyết tạo nên giá trị bất động sản, song hiện nay khái niệm trung tâm đã mở rộng rất nhiều cùng với quá trình phát triển đô thị. Theo đó, những \"bán kính vàng\" của bất động sản cũng đang thay đổi từng ngày. Ông Vũ chia sẻ những cách định vị bán kính lý tưởng của bất động sản giúp nhà đầu tư tham khảo khi chọn mặt gửi vàng.\r\n\r\nThứ nhất: Tâm đô thị là thước đo chuẩn mực. Vị trí lý tưởng để bất động sản không ngừng gia tăng giá trị là nằm ngay khu vực trung tâm thành phố. Đây chính là khoảng cách tuyệt vời nhất. Những tài sản bất động sản loại này thường có giá trị cực lớn vì thuộc nhóm tài sản độc nhất vô nhị, ngày càng khan hiếm. Điều này còn lý giải vì sao bất động sản có vị trí đắc địa trên những khu đất vàng thường được săn đón với giá ngất ngưởng.\r\n\r\nThứ hai: Khoanh vùng khu vực nội - ngoại đô thành phố. Bán kính vàng được chia thành 3 phân khúc tùy theo túi tiền. Bất động sản cao cấp có bán kính vàng cách trung tâm thành phố 3-5km. Bất động sản trung cấp phải đi xa hơn, bán kính thuận lợi là 5-10km trong khi đó các bất động sản bình dân quãng đường này có thể lên đến 13-20km. Đối với vùng ven, khoảng cách di chuyển từ nơi ở đến khu trung tâm có thể giãn ra đến 25km.', '2016-03-06 16:03:43', 'images/kt.jpg', '', 20, 1),
(3, 1, 1, 'Thí sinh có thể thi đường vòng vào ngành Công an', 'Nếu không thi vào các trường khối Công an, thí sinh có thể học ngành Luật, Bác sĩ, Kinh tế… để sau khi ra trường vẫn có cơ hội thi tuyển vào lực lượng Công an Nhân dân. ', '<p>\r\n	<span style=\"color:#0000ff;\"><strong>Nhiều năm nay, khối trường C&ocirc;ng an thu h&uacute;t đ&ocirc;ng th&iacute; sinh đăng k&yacute; x&eacute;t tuyển. Năm 2016, chỉ ti&ecirc;u x&eacute;t tuyển giảm gần 50%, n&ecirc;n điểm chuẩn v&agrave;o ng&agrave;nh dự kiến rất cao, đặc biệt l&agrave; đối với th&iacute; sinh nữ. Nếu kh&ocirc;ng thể đỗ v&agrave;o trường C&ocirc;ng an, th&iacute; sinh c&oacute; thể theo học những ng&agrave;nh g&igrave; để sau khi ra trường c&oacute; thể thi tuyển v&agrave;o lực lượng n&agrave;y? Đ&acirc;y l&agrave; c&acirc;u hỏi được nhiều học sinh đặt ra trong m&ugrave;a tuyển sinh năm nay Trao đổi với Zing.vn, thiếu t&aacute; Nguyễn Văn Trường, Ph&oacute; đội trưởng Đội đ&agrave;o tạo, Ph&ograve;ng tổ chức c&aacute;n bộ</strong></span>, C&ocirc;ng an TP HCM cho biết, đ&acirc;y l&agrave; hướng đi hợp l&yacute; đối với nhiều th&iacute; sinh trong bối cảnh điểm chuẩn v&agrave;o trường C&ocirc;ng an kh&aacute; cao. Đặc biệt l&agrave; c&aacute;c bạn nữ, tỷ lệ x&eacute;t tuyển chỉ 10% so với tổng chỉ ti&ecirc;u n&ecirc;n điểm chuẩn rất cao (c&oacute; ng&agrave;nh điểm tr&uacute;ng tuyển l&ecirc;n đến 30 điểm). Thiếu t&aacute; Nguyễn Văn Trường th&ocirc;ng tin th&ecirc;m, h&agrave;ng năm, ngo&agrave;i lực lượng tốt nghiệp tại c&aacute;c trường trong khối ng&agrave;nh C&ocirc;ng an Nh&acirc;n d&acirc;n tr&ecirc;n cả nước, C&ocirc;ng an địa phương c&ograve;n tổ chức thi tuyển th&ecirc;m chỉ ti&ecirc;u từ c&aacute;c cử nh&acirc;n tốt nghiệp ng&agrave;nh d&acirc;n sự kh&aacute;c, trong đ&oacute; tập trung ng&agrave;nh Luật, B&aacute;c sĩ, Anh văn, Kinh tế&hellip; T&ugrave;y nhu cầu từng địa phương m&agrave; chỉ ti&ecirc;u thi tuyển v&agrave;o lực lượng C&ocirc;ng an đối với cử nh&acirc;n tốt nghiệp c&aacute;c ng&agrave;nh học d&acirc;n sự kh&aacute;c nhau. V&iacute; dụ trong năm 2015, C&ocirc;ng an TP HCM tổ chức thi tuyển để chọn 150 ứng vi&ecirc;n tốt nghiệp c&aacute;c ng&agrave;nh Luật h&igrave;nh sự, B&aacute;c sĩ, Anh. Với những người diện n&agrave;y, mọi thủ tục, quy định vẫn đảm bảo đ&uacute;ng theo quy chế tuyển sinh của Bộ C&ocirc;ng an: Hồ sơ l&yacute; lịch, chiều cao, c&acirc;n nặng&hellip; Những người tr&uacute;ng tuyển trong c&aacute;c đợt thi n&agrave;y sẽ được phong cấp h&agrave;m thiếu &uacute;y, được đơn vị cử đi đ&agrave;o tạo một kh&oacute;a học ngắn hạn về nghiệp vụ ng&agrave;nh. Cũng theo thiếu t&aacute; Nguyễn Văn Trường, Bộ C&ocirc;ng an đang c&oacute; đề &aacute;n tổ chức thi tuyển v&agrave; đ&agrave;o tạo học văn bằng 2 cho c&aacute;c bạn đ&atilde; tốt nghiệp những chuy&ecirc;n ng&agrave;nh kh&aacute;c, mong muốn theo học c&aacute;c khối ng&agrave;nh của lực lượng C&ocirc;ng an trong thời gian tới.</p>\r\n', '2016-03-06 16:04:54', 'images/image001_3.jpg', '', 10, 1),
(4, 1, 1, 'Hôm nay bắt đầu đăng ký dự thi Đánh giá năng lực', 'Tham dự kỳ thi Đánh giá năng lực của Đại học Quốc gia Hà Nội, thí sinh có cơ hội vào học các trường, khoa thành viên và 5 trường đại học khác', 'Năm nay, kỳ thi Đánh giá năng lực lần thứ hai được tổ chức tại Đại học Quốc gia Hà Nội, chia thành hai đợt, tại các thành phố Hà Nội, Hải Phòng, Nam Định, Thái Nguyên, Thanh Hóa, Nghệ An và Đà Nẵng. Đợt 1 diễn ra từ 5/5 đến 8/5 và từ 13/5 đến 15/5. Đợt 2 từ 5/8 đến 15/8. Từ 8h ngày 2/3 đến 17h ngày 22/3, Đại học Quốc gia Hà Nội nhận hồ sơ thi Đánh giá năng lực của học sinh trên toàn quốc. Thí sinh có 2 cách nộp hồ sơ: Qua trang web của Trung tâm Khảo thí theo địa chỉ: http://www.cet.vnu.edu.vn, mục “Đăng ký dự thi Đánh giá năng lực 2016; hoặc đăng ký trực tiếp tại trường theo thời gian từ thứ hai đến thứ bảy, buổi sáng từ 8h đến 11h30, chiều từ 13h30 đến 16h30. Về lệ phí, thí sinh nộp trực tiếp hoặc nộp vào tài khoản của Trung tâm Khảo thí qua Ngân hàng Thương mại Cổ phần Đầu tư và Phát triển Việt Nam theo mã đăng ký xét tuyển. Đại học Quốc gia Hà Nội không chấp nhận gửi qua các ngân hàng khác hay qua đường bưu điện. Nguyên nhân là năm 2015, việc gửi hồ sơ qua bưu điện có độ trễ hoặc sai sót, dẫn đến quản lý khó khăn, quyền lợi thí sinh bị ảnh hưởng. Theo đánh giá của Đại học Quốc gia Hà Nội, việc đăng ký online giúp giảm chi phí, thời gian đi lại, cũng như căng thẳng không cần thiết cho thí sinh và gia đình; đồng thời giúp công tác xét tuyển nhanh chóng, thuận lợi.', '2016-03-06 16:05:23', 'images/image003_2.jpg', '', 40, 1),
(5, 3, 1, 'Người Việt ăn Tết truyền thống trên đất Mỹ', 'Cộng đồng người gốc Việt ở Mỹ mở lễ hội hoa, bày bán mặt hàng truyền thống và tổ chức các sự kiện để chào đón Tết Nguyên đán. ', 'Tết Nguyên đán là dịp quan trọng đối với cộng đồng người Việt Nam ở quận Cam, bang California, nơi có lượng người Mỹ gốc Á lớn thứ ba ở Mỹ. Lễ hội do cộng đồng người Việt tổ chức, diễn ra tại khu thương mại Asian Garden ở Little Saigon, thành phố Westminster, quận Cam, bắt đầu từ ngày 15/1 tới 6/2. Nhiều loại hoa và trái cây được bày bán tại đây để chuẩn bị cho dịp Tết cổ truyền của người Việt. Thuyai Truong, chủ một cửa hàng hoa tại lễ hội cho biết, hàng hóa được bày bán ở đây đều có ý nghĩa mang lại tương lai tốt đẹp và thịnh vượng. Nhiều loài hoa ở đây rất đặc trưng, mang ý nghĩa đặc biệt trong văn hóa của người Việt Nam. Hoa lan tượng trưng cho nguồn gốc cao quý của người Việt và sự giàu có. Hoa đào gắn liền với tình yêu và niềm vui, trong khi các loài hoa sắc đỏ mang lại sự may mắn. “Vào dịp năm mới, người dân thường dùng hoa để trang trí nhà cửa”, Truong cho biết. Hung Van Nguyen, 59 tuổi, sống ở thành phố Westminster và làm nghề chăm sóc các chậu mai suốt 15 năm qua. Đây là năm thứ 3 Nguyen tham gia lễ hội hoa cùng 30 tiểu thương khác tại khu thương mại Asian Garden. Anh nhập cây mai từ Việt Nam với mong muốn giúp những người Việt xa xứ cảm nhận được cái Tết ấm áp như ở quê nhà. Theo truyền thống của người Việt Nam, hoa lan, hoa mai sẽ mang lại may mắn nếu được trưng trong nhà vào dịp Tết. “Hoa rất đẹp. Mỗi chậu có giá từ 125 - 1.000 USD”, Nguyen cho biết.', '2016-03-06 16:06:24', 'images/thi_dia_ly1.jpg', '', 8, 1),
(6, 3, 1, 'Mẹ thần đồng Đỗ Nhật Nam và những lời phê \"khác thường\" khiến ai cũng tâm phục khẩu phục ', 'Mẹ thần đồng Đỗ Nhật Nam và những lời phê \"khác thường\" khiến ai cũng tâm phục khẩu phục ', 'Mình nói, vậy quý quá em. Ờ mà em học cô khóa nào, lâu chưa vậy? Em trả lời: Cô ơi, em học cô gần hai mươi năm. Nhưng điều em nhớ nhất là gì cô biết không, là học bạ cô viết cho em, cô nhận xét tỉ mỉ về việc học, trong đó có câu: Cô tin chắc em có khả năng tiến xa trên con đường học tập... Cô ơi, mẹ em đã photo để giữ lại trang học bạ đó, như một sự khích lệ em cô à. Nên em rất nhớ cô...\r\n\r\nRồi mình ngồi bần thần...\r\n\r\nHồi đó, mình còn trẻ lắm, cũng chưa tích lũy được gì cho nghề dạy học. Mình làm thực ra bằng cảm tính. Nhưng mình luôn tin, những “lời phê” của giáo viên có tác động rất nhiều đến học sinh.\r\n\r\nMình hay nghĩ ngợi trước những bài cô phê “ Tạm được”. Thế nào là “tạm được”? Cảm thấy đọc xong, nếu là đứa trẻ ít có chí tiến thủ sẽ tặc lưỡi cho bài kiểm tra vào ngăn bàn và quên ngay, khỏi cần phải nghĩ ngợi.\r\n\r\nMình hay buồn trước những lời phê chỉ có vẻn vẹn: “ Ẩu”/ “Kém”/ “Lạc đề”.\r\n\r\nNhưng mình rất vui trước những lời phê đại loại như: Con có ý tưởng sáng tạo/ Cô tìm được sự đồng cảm trong bài của con/ Bài viết của con khiến cô có thêm niềm vui cho việc dạy học...\r\n\r\nMình cũng rất biết ơn nếu là những lời phê tuy chê nhưng vẫn “mở đường”: Con nên suy nghĩ kĩ hơn nữa.../ Con cần thận trọng hơn.../ Cô nghĩ là con sẽ cố gắng hơn ở những lần sau...\r\n\r\nTuy nhiên, mình rất thông cảm với công việc của các thầy cô giáo. Lớp học đông, quá nhiều áp lực, quá nhiều gánh nặng, thầy cô xoay như chong chóng...\r\n\r\nVậy nên, lúc ở nhà, mình hay “chơi trò”: Mẹ nhận xét đối với những bài Nam tự làm.\r\n\r\n“Công thức” cho những lời nhận xét của mình là:\r\n\r\nNhận xét về quá trình làm bài của con+ Nhận xét về cách trình bày+ Nhận xét về nội dung+ Những điểm tiến bộ của con so với bài trước+ Cảm nghĩ của mẹ.\r\n\r\n“Gia vị” cho lời nhận xét có thể là: Một chút bông đùa+ một chút cằn nhằn+ một chút có vẻ “ghen tị” vì con làm được mà mẹ thì không+ rất nhiều tin tưởng, hy vọng.\r\n\r\nVà thế là sẽ có được những “Lời nhận xét” kiểu như sau:\r\n\r\nHôm nay em làm bài tập trung hơn, ngay cả khi bị muỗi đốt. Em trình bày bài vẫn khiến mẹ tưởng có thêm một hệ chữ khác ra đời vì khó đọc quá. Tuy vậy, đọc xong mẹ vẫn thấy được những điều mới mẻ, thú vị ở các chi tiết sau.... Nên mẹ rất cảm ơn em. Thực ra, hồi bằng tuổi em, mẹ chưa có được sự sâu sắc như vậy. Mẹ tin nếu lần sau em trình bày đẹp hơn thì đó sẽ là những bài rất đáng tự hào của cả em và mẹ.\r\n\r\nCó khi chê mà vẫn vui, ví dụ: Mẹ thấy nói, khi đứng trước tình yêu, thường trí thông minh bị giảm sút. Nên mẹ đoán là em đã rất “yêu” bài tập này đúng không?\r\n\r\nCó những khi khích lệ: Mẹ rất dở tiếng Anh. Mỗi lần thi trắc nghiệm tiếng Anh, mẹ toàn làm xong trước cả khi... phát đề vì mẹ đoán mò. Trong khi em, bài khó mà em vẫn làm được đúng tới hơn 90 câu thế này là mẹ rất “gato” với em đó. Hãy tiếp tục làm cho mẹ trở thành một bà mẹ xấu tính nhé.\r\n\r\nKiểu như thế, toàn những “lời phê” khiến Nam bật cười và thường lưu lại rất lâu để... ngắm nghía vì ngoài viết mình còn dán thêm rất nhiều hình sticker.\r\n\r\nVà mình cũng khuyến khích Nam “tự phê” nữa. Cứ khoảng 2 tháng một lần, Nam sẽ đem những bài mình đã từng làm thêm ra và chấm lại, sau đó “bút phê”. Nam thường rất ngạc nhiên vì không hiểu sao có lúc mình lại có thể làm “í ẹ” đến thế. Nhìn lại để đi tiếp trong niềm vui, mình nghĩ đó là việc nên làm.\r\n\r\nThực sự những điều đó không mất nhiều thời gian. Vì mình đánh giá bằng “lời phê” nên cả quá trình Nam học, mình chỉ lặng lẽ quan sát chứ không chạy đến để bảo bài, để giải đáp. Nam phải thực sự nỗ lực để tự làm và chờ đợi để mẹ “phê”.\r\n\r\nNhưng mình tin những việc nho nhỏ lại làm cho con yêu thích việc học và cảm thấy ấm áp biết bao vì có mẹ đồng hành.\r\n\r\nViết đến đây mình nhớ buổi sáng mùa đông hồi Nam học lớp 5. Hôm đó mình đưa con ra chờ xe để đến trường. Gió lạnh nên mình ôm Nam vào lòng và lẩm nhẩm hát bài Lời mẹ ru của Trịnh Công Sơn: Thuở mẹ ru/ Mẹ ru con ngủ/ Con ngủ trên mây.../ Rồi một mai con đã lớn khôn rồi/ Con thôi thơ ấu í i à/ Mẹ rời thật mau/ Mẹ rời chiêm bao... Bỗng nhiên thấy Nam dụi đầu vào áo mẹ, mắt đỏ hoe. Nam bảo, mẹ ơi bài hát nói những đứa con đừng quên lời ru của mẹ, nhưng với em, em sẽ không quên cả những “lời phê” của mẹ nữa. Sau này em đi xa, em rất nhớ...\r\n\r\nMình không biết, khoảng thời gian đó, Nam đang âm thầm chuẩn bị cho việc sẽ đi học xa nhà.\r\n\r\nKhi ấy, chỉ thấy lòng trào lên niềm thương yêu...', '2016-03-06 16:10:01', 'images/image005_2.jpg', '', 6, 1),
(8, 4, 1, 'King Kong sẽ có những cảnh quay trên không ở vịnh Hạ Long', ' Sáng 16/3, đoàn làm phim \"King Kong\" sẽ thực hiện những cảnh quay trên không ở vịnh Hạ Long. ', '<p>\r\n	Ph&oacute;ng vi&ecirc;n <em>Zing.vn đ&atilde;</em> c&oacute; cuộc trao đổi nhanh với &ocirc;ng H&agrave; Quang Long, Gi&aacute;m đốc Sở Văn h&oacute;a Thể thao Du lịch tỉnh Quảng Ninh, khi đo&agrave;n l&agrave;m phim <em>King Kong</em> chuẩn bị đến đ&acirc;y.</p>\r\n<p>\r\n	<em>&nbsp;</em><em>- Để chuẩn bị cho những ng&agrave;y quay sắp tới, ph&iacute;a tỉnh Quảng Ninh đ&atilde; l&agrave;m việc như thế n&agrave;o với đo&agrave;n l&agrave;m phim King Kong, thưa &ocirc;ng?</em></p>\r\n<p>\r\n	- Ph&iacute;a Sở Văn h&oacute;a Thể thao Du lịch ch&uacute;ng t&ocirc;i đ&atilde; c&oacute; những buổi l&agrave;m việc cụ thể với đại diện đo&agrave;n l&agrave;m phim <em>King Kong</em>. Theo đ&oacute;, tỉnh Quảng Ninh sẽ hỗ trợ ở mức cao nhất để đảm bảo sự an to&agrave;n tuyệt đối cho đo&agrave;n l&agrave;m phim.</p>\r\n<p>\r\n	Ng&agrave;y 15/3, to&agrave;n bộ thiết bị m&aacute;y quay của l&agrave;m phim c&ugrave;ng với 20 xe &ocirc; t&ocirc; chuy&ecirc;n dụng v&agrave; trực thăng sẽ tập kết tại khu du lịch Tuần Ch&acirc;u. Ng&agrave;y 16/3, trực thăng sẽ thực hiện một số cảnh tr&ecirc;n kh&ocirc;ng ở vịnh Hạ Long. Chiều c&ugrave;ng ng&agrave;y, đạo diễn, diễn vi&ecirc;n sẽ thực hiện chuyến khảo s&aacute;t thực địa cuối c&ugrave;ng để quyết định bối cảnh quay <em>King Kong</em> những ng&agrave;y sau đ&oacute;.</p>\r\n<p>\r\n	Tất cả đo&agrave;n l&agrave;m phim gồm 200 nh&acirc;n sự sẽ lưu tr&uacute; tại khu du lịch Tuần Ch&acirc;u v&agrave; một số kh&aacute;ch sạn ở Hạ Long.</p>\r\n<table align=\"left\" class=\"picture\">\r\n	<tbody>\r\n		<tr>\r\n			<td class=\"pic\">\r\n				<img alt=\"‘King Kong sẽ có những cảnh quay trên không ở vịnh Hạ Long’\" src=\"http://img.v3.news.zdn.vn/w660/Uploaded/pcwvovbb/2016_03_12/onglong.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td class=\"pCaption caption\">\r\n				&Ocirc;ng H&agrave; Quang Long - Gi&aacute;m đốc Sở Văn h&oacute;a Thể thao Du lịch tỉnh Quảng Ninh. <em>Ảnh: <strong>B&aacute;o điện tử Quảng Ninh</strong></em></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	<em>- Ph&iacute;a tỉnh Quảng Ninh đ&atilde; chuẩn bị như thế n&agrave;o để hỗ trợ đo&agrave;n l&agrave;m phim những ng&agrave;y sắp tới?</em></p>\r\n<p>\r\n	- Ch&uacute;ng t&ocirc;i đ&atilde; l&ecirc;n kế hoạch cụ thể về việc đưa đ&oacute;n đo&agrave;n l&agrave;m phim, về việc chuẩn bị nơi ăn chốn ở, về việc sẽ hỗ trợ họ trong c&ocirc;ng t&aacute;c thực địa, v&agrave; đặc biệt l&agrave; đảm bảo an to&agrave;n, an ninh ở những nơi đo&agrave;n l&agrave;m phim sẽ quay. Tỉnh đang cố gắng lo chu tất mọi việc ở mức cao nhất.</p>\r\n<p>\r\n	Ch&uacute;ng t&ocirc;i x&aacute;c định việc hợp t&aacute;c với đo&agrave;n l&agrave;m phim <em>King Kong</em>, đ&ocirc;i b&ecirc;n sẽ c&ugrave;ng c&oacute; lợi. Vịnh Hạ Long xưa nay đ&atilde; nổi tiếng l&agrave; điểm đến hấp dẫn với kh&aacute;ch du lịch quốc tế. Vịnh Hạ Long được UNESCO c&ocirc;ng nhận l&agrave; Di sản Thi&ecirc;n nhi&ecirc;n Thế giới. Việc quay phim tại vịnh Hạ Long c&oacute; những t&aacute;c động t&iacute;ch cực tới đo&agrave;n l&agrave;m phim <em>King Kong</em> v&agrave; ngược lại, việc đo&agrave;n l&agrave;m phim đến đ&acirc;y cũng sẽ tăng sức hấp dẫn cho vịnh Hạ Long.</p>\r\n<p>\r\n	<em>- Ngo&agrave;i vịnh Hạ Long, đo&agrave;n l&agrave;m phim King Kong sẽ c&ograve;n quay ở l&agrave;ng ch&agrave;i Cửa Vạn. &nbsp;L&agrave;ng ch&agrave;i Cửa Vạn đ&atilde; được website du lịch Journeyetc đưa v&agrave;o danh s&aacute;ch 16 ng&ocirc;i l&agrave;ng cổ đẹp nhất thế giới (năm 2012). Theo đ&aacute;nh gi&aacute; của &ocirc;ng, Quảng Ninh đang đứng trước những cơ hội lớn để quảng b&aacute; du lịch như thế n&agrave;o?</em></p>\r\n<p>\r\n	- Theo kế hoạch, l&agrave;ng ch&agrave;i Cửa Vạn chỉ đang nằm trong dự kiến của đo&agrave;n l&agrave;m phim. Như t&ocirc;i đ&atilde; chia sẻ, tất cả c&ograve;n chưa được quyết định cụ thể. Chiều 16/3, đạo diễn phim sẽ thực hiện chuyến khảo s&aacute;t thực địa cuối c&ugrave;ng, sau đ&oacute; họ mới quyết định ch&iacute;nh thức sẽ quay tại những địa điểm n&agrave;o ở Quảng Ninh, ngo&agrave;i vịnh Hạ Long.</p>\r\n<p>\r\n	<em>Ngo&agrave;i việc đảm bảo an to&agrave;n, thắt chặt an ninh ở c&aacute;c điểm quay phim, ph&iacute;a đo&agrave;n l&agrave;m phim c&ograve;n đưa ra những y&ecirc;u cầu g&igrave; với tỉnh?</em></p>\r\n<p>\r\n	- Ch&uacute;ng t&ocirc;i sẽ bảo vệ phim trường, giữ an ninh, hỗ trợ họ t&agrave;u cao tốc để di chuyển&hellip; V&agrave; nhiều hạng mục kh&aacute;c.</p>\r\n<p>\r\n	- <em>V&agrave; kế hoạch của tỉnh, của Sở Văn h&oacute;a Thể thao Du lịch với những nơi đo&agrave;n l&agrave;m phim đi qua, liệu đ&oacute; c&oacute; phải l&agrave; những điểm du lịch &lsquo;n&oacute;ng&rsquo; của tỉnh trong tương lai?</em></p>\r\n<p>\r\n	- Đ&oacute; l&agrave; những bước tiếp theo m&agrave; tỉnh đ&atilde; t&iacute;nh đến. Tuy nhi&ecirc;n, hiện tại, t&ocirc;i cho rằng, h&atilde;y tập trung hỗ trợ để đo&agrave;n l&agrave;m phim quay tốt nhất, hiệu quả nhất đ&atilde;.</p>\r\n', '2016-03-13 09:07:40', 'images/halongthumb.jpg', 'Phim King Kong sẽ thực hiện những cảnh quay flycam trên vịnh Hạ Long ngày 16/3 tới. Tối nay, 12/3, đoàn làm phim sẽ liên hoan chia tay ở Ninh Bình, kết thúc những ngày quay ở đây', 16, 1),
(9, 4, 1, 'Lễ cúng bến nước độc đáo ở Tây Nguyên', 'Người Tây Nguyên tất bật sắm sanh lễ vật để cúng bến nước và thần nước, vị thần linh thiêng bậc nhất miền đất này, như một cách chống lại tình trạng nắng hạn gay gắt đang diễn ra. ', '<p>\r\n	<strong>Th&ocirc;n d&atilde; m&agrave; trữ t&igrave;nh</strong></p>\r\n<p>\r\n	Trở lại c&aacute;c bu&ocirc;n l&agrave;ng T&acirc;y Nguy&ecirc;n lần n&agrave;y, người bạn đam m&ecirc; t&igrave;m hiểu về d&acirc;n tộc học V&otilde; Trần Quốc say sưa chụp ảnh, ngay cả những cảnh sinh hoạt đời thường. N&agrave;y đ&acirc;y những thửa ruộng nứt nẻ chờ nước, những vạt rừng kh&ocirc; khốc chỉ cần một mồi lửa l&agrave; b&ugrave;ng l&ecirc;n th&agrave;nh đ&aacute;m ch&aacute;y lớn. C&ograve;n kia l&agrave; nhịp ch&agrave;y đ&ocirc;i gi&atilde; gạo của những ch&agrave;ng trai c&ocirc; g&aacute;i với l&agrave;n da n&acirc;u chắc lẳn, đ&ocirc;i mắt đẹp đa cảm; những bước ch&acirc;n nh&uacute;n nhảy v&agrave; m&aacute;i t&oacute;c chảy tr&agrave;n như suối của c&aacute;c sơn nữ tr&ecirc;n đường tắm suối trở về.</p>\r\n<p>\r\n	Anh Quốc cho ch&uacute;ng t&ocirc;i xem những tranh ảnh về sơn nữ ngực trần của c&aacute;c họa sĩ Đinh Cường, L&ecirc; Ho&agrave;ng, Phan Dũng&hellip; m&agrave; anh sưu tập được. Tranh rất đẹp như m&ocirc; tả trong sử thi T&acirc;y Nguy&ecirc;n, c&aacute;c sơn nữ quấn v&aacute;y v&agrave; để ngực trần với bờ vai tr&ograve;n, eo thon, ngực săn nh&ocirc; l&ecirc;n như cặp ng&agrave; non cong v&uacute;t. Anh h&agrave;o hứng kể chừng 30 năm trước từng bắt gặp c&aacute;c sơn nữ ngực trần tắm suối hay cảnh c&aacute;c c&ocirc; g&ugrave;i những quả bầu đựng nước thoăn thoắt leo l&ecirc;n c&aacute;c bậc thang l&agrave;m nh&uacute;n nhẩy bầu ngực tr&ograve;n mọng. Chỉ tiếc l&uacute;c ấy kh&ocirc;ng c&oacute; m&aacute;y ảnh để lưu lại những khoảnh khắc ấn tượng.</p>\r\n<p>\r\n	&ldquo;Đ&uacute;ng l&agrave; những năm đ&oacute; sơn nữ vẫn c&ograve;n để ngực trần. Tốt khoe, xấu che m&agrave;! V&ugrave;ng n&agrave;y m&ugrave;a kh&ocirc; n&oacute;ng bức lắm n&ecirc;n cởi trần m&aacute;t mẻ, thoải m&aacute;i hơn&rdquo;, gi&agrave; l&agrave;ng Điểu K&rsquo;Mốt (người S&rsquo;ti&ecirc;ng, th&ocirc;n 3, x&atilde; Gia Viễn, C&aacute;t Ti&ecirc;n, L&acirc;m Đồng) x&aacute;c nhận. C&ograve;n theo c&aacute;c nh&agrave; d&acirc;n tộc học, c&aacute;c tộc người T&acirc;y Nguy&ecirc;n đa phần theo chế độ mẫu hệ, tục để ngực trần c&oacute; thể xuất ph&aacute;t từ &yacute; niệm về phồn thực, sự sinh s&ocirc;i, nảy nở sung t&uacute;c, tốt tươi của đồng b&agrave;o thiểu số.</p>\r\n<p>\r\n	&ldquo;Đ&ocirc;i ch&acirc;n trần từ l&uacute;c sinh th&agrave;nh đ&atilde; được ng&acirc;m trong d&ograve;ng nước m&aacute;t s&ocirc;ng Mẹ v&agrave; sưởi ấm từ ngọn lửa rừng Cha n&ecirc;n mạnh như hổ, nhanh như s&oacute;c chinh phục bao ngọn n&uacute;i cao, vượt bao con s&ocirc;ng d&agrave;i để lập l&agrave;ng sinh sống. Người T&acirc;y Nguy&ecirc;n quan niệm mọi thứ đều c&oacute; linh hồn; nước, lửa, rừng, n&uacute;i&hellip; được cai quản bởi c&aacute;c vị thần, do đ&oacute; với bất cứ việc trọng đại n&agrave;o trong đời mỗi con người v&agrave; cộng đồng đều phải l&agrave;m lễ c&uacute;ng để xin ph&eacute;p thần linh&rdquo;, gi&agrave; l&agrave;ng Krajan Plin (bu&ocirc;n Đang Ja, huyện Lạc Dương, L&acirc;m Đồng) n&oacute;i.</p>\r\n<p>\r\n	<strong>Lễ c&uacute;ng c&oacute; từ l&acirc;u đời</strong></p>\r\n<p>\r\n	Trong căn nh&agrave; truyền thống d&agrave;i hun h&uacute;t của nguời Mạ ở bu&ocirc;n Hang Kar (v&ugrave;ng s&acirc;u v&ugrave;ng xa huyện Bảo L&acirc;m, tỉnh L&acirc;m Đồng), gi&agrave; l&agrave;ng K&rsquo;Pieu vừa khơi cho ngọn lửa bếp ở giữa nh&agrave; s&agrave;n b&ugrave;ng l&ecirc;n để c&oacute; th&ecirc;m hơi ấm vừa kể qu&aacute; tr&igrave;nh t&igrave;m đất lập l&agrave;ng, việc đầu ti&ecirc;n l&agrave; t&igrave;m nguồn nước để đ&aacute;p ứng nhu cầu sinh hoạt v&agrave; sản xuất. Đến khi ph&aacute;t hiện ra nguồn nước, người T&acirc;y Nguy&ecirc;n phải c&uacute;ng thần để xin ph&eacute;p sử dụng. Kể cả khi l&agrave;ng đ&atilde; định cư l&acirc;u đời th&igrave; cứ đến th&aacute;ng 3 h&agrave;ng năm (khi l&uacute;a, bắp, c&agrave; ph&ecirc; vừa được thu hoạch xong, chất đầy kho) lại tổ chức lễ c&uacute;ng bến nước để tỏ l&ograve;ng biết ơn với những vị thần thi&ecirc;ng li&ecirc;ng đ&atilde; che chở v&agrave; gi&uacute;p đỡ cho bu&ocirc;n l&agrave;ng.</p>\r\n', '2016-03-13 14:46:33', 'images/11.jpg', 'Tây nguyên', 2, 1),
(11, 4, 1, '4 ngày du ngoạn Đăk Lăk dịp hội đua voi', 'Trong 3 ngày hội, các hoạt động liên quan đến voi diễn ra trong suốt ngày 13/3. Bạn có thể lên lịch trình tham quan các điểm đến khác trong 2 ngày còn lại. ', '<p>\r\n	<strong>Ng&agrave;y 12/3</strong></p>\r\n<p>\r\n	5h: Đến Đăk Lăk, nhận ph&ograve;ng ở kh&aacute;ch sạn. Nghỉ ngơi, ăn s&aacute;ng.</p>\r\n<p>\r\n	8h: Xuất ph&aacute;t đi l&agrave;ng c&agrave; ph&ecirc; Trung Nguy&ecirc;n, nơi bạn c&oacute; thể ph&aacute;m ph&aacute;, t&igrave;m hiểu về c&aacute;c loại c&agrave; ph&ecirc;, lịch sử ph&aacute;t triển, thưởng thức c&agrave; ph&ecirc;.</p>\r\n<p>\r\n	9h: Tham quan đ&igrave;nh Lạc Giao, nơi thờ cụ Đ&agrave;o Duy Từ, một di t&iacute;ch lịch sử c&oacute; bề d&agrave;y lịch sử v&agrave; kiến tr&uacute;c đẹp.</p>\r\n<p>\r\n	10h: Tham quan Sắc tứ Khải Đoan tự, ng&ocirc;i ch&ugrave;a do Đoan Huy ho&agrave;ng th&aacute;i hậu cho x&acirc;y dựng v&agrave; Nam Phương ho&agrave;ng hậu trực tiếp chịu tr&aacute;ch nhiệm quản l&yacute; thi c&ocirc;ng.</p>\r\n<p>\r\n	12h: Gh&eacute; bu&ocirc;n AK&ocirc; Đh&ocirc;ng, ng&ocirc;i l&agrave;ng &Ecirc; Đ&ecirc; l&acirc;u đời nhất Bu&ocirc;n Ma Thuột.</p>\r\n<p>\r\n	13h: Thưởng thức đặc sản của Đăk Lăk.</p>\r\n<p>\r\n	14h: Đến nh&agrave; đ&agrave;y Bu&ocirc;n Ma Thuột, một trong những nh&agrave; t&ugrave; t&agrave;n bạo nhất của ch&iacute;nh quyền thực d&acirc;n Ph&aacute;p.</p>\r\n<p>\r\n	15h: Thăm t&ograve;a gi&aacute;m mục Ban M&ecirc; Thuột, c&ocirc;ng tr&igrave;nh c&oacute; kiến tr&uacute;c c&ocirc;ng phu v&agrave; mang đậm dấu ấn phong c&aacute;ch nh&agrave; d&agrave;i truyền thống của người &Ecirc; Đ&ecirc; bản địa.</p>\r\n<p>\r\n	16h: Thăm khu du lịch Hồ - Đồi Th&ocirc;ng Cư Dlu&ecirc; hay khu du lịch hồ Ea Kao.</p>\r\n<p>\r\n	19h: Thưởng thức buổi tối. Kh&aacute;m ph&aacute; TP Bu&ocirc;n M&ecirc; Thuột về đ&ecirc;m.</p>\r\n<p>\r\n	7h: Xuất ph&aacute;t đi bu&ocirc;n Đ&ocirc;n</p>\r\n<p>\r\n	8h-16h: Tham gia c&aacute;c hoạt động li&ecirc;n quan đến voi trong ng&agrave;y n&agrave;y gồm thi voi đ&aacute; b&oacute;ng, thi voi chạy, thi voi bơi.</p>\r\n<p>\r\n	15-17h: Tham gia trong hoạt động du kh&aacute;ch cưỡi voi tham quan thắng cảnh bu&ocirc;n Đ&ocirc;n.</p>\r\n<p>\r\n	16-16h30: Lễ tắm v&agrave; c&uacute;ng sức khỏe cho voi.</p>\r\n<p>\r\n	17h: Thưởng thức c&aacute;c m&oacute;n ăn trong lễ hội v&agrave; tham gia hội trại</p>\r\n<p>\r\n	20h: Về kh&aacute;ch sạn nghỉ ngơi</p>\r\n<p>\r\n	<strong>Ng&agrave;y 14/3</strong></p>\r\n<p>\r\n	8h: Xuất ph&aacute;t đi hồ Lăk. C&aacute;c trải nghiệm n&ecirc;n c&oacute; tại đ&acirc;y l&agrave; l&ecirc;nh đ&ecirc;nh tr&ecirc;n thuyền ra giữa hồ, cưỡi voi kh&aacute;m ph&aacute; hồ Lak, chi&ecirc;m ngưỡng những d&atilde;y n&uacute;i lớn được bao phủ bởi c&aacute;c c&aacute;nh rừng nguy&ecirc;n sinh.</p>\r\n<p>\r\n	11h: Chi&ecirc;m ngưỡng những kiến tr&uacute;c lịch sử như biệt điện của ho&agrave;ng đế Bảo Đại, nh&agrave; d&agrave;i của người M&#39;N&ocirc;ng.</p>\r\n<p>\r\n	12h: Tham quan bu&ocirc;n Jun.</p>\r\n<p>\r\n	13h: Gh&eacute; th&aacute;p Chăm Yang Prong, một trong những th&aacute;p Chăm nổi tiếng của T&acirc;y Nguy&ecirc;n.</p>\r\n<p>\r\n	14h: Hang đ&aacute; Dak Tuar, nơi đ&oacute;ng qu&acirc;n của Tỉnh ủy Đắk Lắk v&agrave; c&aacute;c đơn vị bộ đội chủ lực của tỉnh trong suốt những năm kh&aacute;ng chiến chống Mỹ.</p>\r\n<p>\r\n	15h: Thăm vườn quốc gia Yok Đ&ocirc;n - một trong những khu bảo tồn thi&ecirc;n nhi&ecirc;n lớn nhất nước ta, đ&egrave;o Phượng Ho&agrave;ng - dải n&uacute;i đất được thi&ecirc;n nhi&ecirc;n tạo n&ecirc;n tựa hồ như c&aacute;nh chim phượng tuyệt đẹp.</p>\r\n<p>\r\n	17h: Ăn tối, kh&aacute;m ph&aacute; TP về đ&ecirc;m.</p>\r\n', '2016-03-13 14:49:56', 'images/DUC_8551_DEMK_jpg.jpg', 'Voi thi chạy trong hội đua voi. ', 3, 1),
(12, 4, 1, 'Đắk Mil - Đà Lạt thu nhỏ của Tây Nguyên', 'Đắk Mil là thị xã thuộc tỉnh Đắk Nông, cách TP HCM khoảng 300 km, cách thành phố Buôn Ma Thuột chừng 60 km. Nơi đây có khí hậu trong lành mát mẻ, cảnh sắc thanh bình. ', '<p>\r\n	&oacute; hai c&aacute;ch để c&aacute;c bạn tới Đắk Mil: C&aacute;ch thứ nhất l&agrave; đi bằng xe kh&aacute;ch, thời gian di chuyển cho qu&atilde;ng đường 300 km từ TP HCM chừng 7 giờ kể cả thời gian nghỉ. Gi&aacute; v&eacute; khoảng 170.000-180.000 đồng mỗi kh&aacute;ch, t&ugrave;y h&atilde;ng xe.</p>\r\n<p>\r\n	C&aacute;ch thứ hai l&agrave; đi bằng xe m&aacute;y. Đ&acirc;y cũng l&agrave; c&aacute;ch để c&aacute;c bạn c&oacute; thể chi&ecirc;m ngưỡng được cảnh đẹp tr&ecirc;n đường đi. Hiện nay QL14 đ&atilde; l&agrave;m xong, cảnh hai b&ecirc;n đường rất đẹp. Từ TP HCM, bạn theo QL13 qua địa phận B&igrave;nh Dương, tới ng&atilde; tư Sở Sao ngay khu du lịch Đại Nam th&igrave; rẽ phải, đi theo đường Nguyễn Văn Th&agrave;nh tới thị x&atilde; Đồng Xo&agrave;i. Từ Đồng Xo&agrave;i, bạn theo tiếp QL14 qua c&aacute;c địa danh như B&ugrave; Đăng, Dak R&rsquo;lap, Gia Nghĩa sẽ tới được thị trấn Đắk Mil.</p>\r\n<p>\r\n	Lần&nbsp;đầu đi Đắk Mil, tới gần với thị x&atilde; Gia Nghĩa, m&igrave;nh kh&ocirc;ng đi theo QL14, m&agrave; rẽ theo đường QL14C dọc bi&ecirc;n giới với Campuchia. Đ&acirc;y l&agrave; con đường &iacute;t người qua lại, nh&agrave; cửa thưa thớt nhưng b&ugrave; lại cảnh đẹp tuyệt vời, rất đ&aacute;ng để trải nghiệm.</p>\r\n<p>\r\n	<strong>Ở&nbsp;</strong></p>\r\n<p>\r\n	Đắk Mil kh&ocirc;ng phải l&agrave; một điểm du lịch nổi tiếng, n&ecirc;n kh&ocirc;ng c&oacute; nhiều dịch vụ du lịch. Dọc con đường ch&iacute;nh của thị trấn v&agrave; xung quanh hồ T&acirc;y c&oacute; một v&agrave;i kh&aacute;ch sạn, nh&agrave; nghỉ b&igrave;nh d&acirc;n. Gi&aacute; c&oacute; thể dao động từ 150.00-300.000 đồng.</p>\r\n<p>\r\n	Đắk Mil kh&ocirc;ng th&iacute;ch hợp cho những ai th&iacute;ch sự s&ocirc;i động, n&aacute;o nhiệt cần c&oacute; nhiều chỗ vui chơi, giải tr&iacute;. Đắk Mil th&iacute;ch hợp cho việc trải nghiệm v&agrave; nghỉ ngơi. Khu vực hồ T&acirc;y l&agrave; nơi tập trung nhiều người d&acirc;n đến vui chơi nhất. Hồ rất rộng v&agrave; đẹp, xung quanh c&oacute; những qu&aacute;n c&agrave; ph&ecirc; với tầm nh&igrave;n ra hồ. C&agrave; ph&ecirc; tại đ&acirc;y rất ngon, đậm đặc, kh&aacute;c hẳn đồ uống ở TP HCM.&nbsp;</p>\r\n<p>\r\n	Con đường b&ecirc;n h&ocirc;ng hồ T&acirc;y v&agrave;o khu vực bệnh viện huyện rất đẹp, với những vườn c&agrave; ph&ecirc; hai b&ecirc;n đường. Bạn n&agrave;o th&iacute;ch chụp h&igrave;nh c&oacute; thể đến đ&acirc;y. Nếu chịu kh&oacute; lang thang trong những con đường đất đỏ, l&agrave;ng của người d&acirc;n bản địa, bạn sẽ c&oacute; những bộ ảnh tuyệt đẹp về đời thường, phong cảnh.</p>\r\n', '2016-03-13 14:53:26', 'images/IMG_0996.jpg', 'Đà lạt', 1, 1),
(13, 4, 1, 'Có một mùa hoa đỗ mai đang về ', 'Những ngày này, chạy xe từ Đà Lạt về Sài Gòn, đã thấy những cây hoa đỗ mai trụi lá bên nhiều hiên nhà, vệ đường gần đèo Bảo Lộc lấm tấm đầy nụ. ', '<p>\r\n	Lại nhớ những con đường hoa đỗ mai ở B&agrave; Rịa-Vũng T&agrave;u. Lại nhớ những ghi ch&uacute; trong s&aacute;ch đỗ mai, đỗ đ&agrave;o, đ&agrave;o đậu hay c&ograve;n hay c&ograve;n gọi l&agrave;&nbsp;c&acirc;y cọc r&agrave;o (v&igrave; trồng l&agrave;m h&agrave;ng r&agrave;o), hồng mai, anh đ&agrave;o giả, s&aacute;t thủ&nbsp;đốm (vỏ c&acirc;y ng&acirc;m nước l&agrave;m thuốc diệt chuột).</p>\r\n<p>\r\n	C&acirc;y&nbsp;Gliricidia maculata&nbsp;thuộc&nbsp;họ đậu (Fabaceae) c&oacute; từ rừng tự nhi&ecirc;n ch&acirc;u Mỹ,&nbsp;đến Việt Nam theo con đường thực d&acirc;n của người Ph&aacute;p.&nbsp;Như nhiều lo&agrave;i c&acirc;y kh&aacute;c, cuối đ&ocirc;ng l&agrave; m&ugrave;a của đỗ mai trụi l&aacute; để xu&acirc;n đến trổ hoa v&agrave; l&aacute; non.</p>\r\n<p>\r\n	M&ugrave;a hoa t&ugrave;y theo thời tiết từng v&ugrave;ng m&agrave;&nbsp;k&eacute;o d&agrave;i đến 1 -&nbsp;2 th&aacute;ng. Hoa c&oacute; thể c&oacute; c&aacute;c m&agrave;u hồng sậm, hồng phớt v&agrave; trắng, ch&ugrave;m thưa hay ch&ugrave;m d&agrave;y.</p>\r\n<p>\r\n	Xa xưa, mỗi khi xu&acirc;n về,&nbsp;d&acirc;n di cư&nbsp;miền Bắc ở&nbsp;v&ugrave;ng Bảo Lộc lại ra r&agrave;o bụi, cắt đỗ mai&nbsp;cắm c&agrave;nh v&agrave;o lọ b&igrave;nh để chưng thay cho hoa đ&agrave;o. Nhưng c&agrave;nh hoa coi đẹp vậy m&agrave; khi rời c&acirc;y lại rất mau t&agrave;n n&ecirc;n kh&ocirc;ng được ưa th&iacute;ch nữa.&nbsp;Rồi c&oacute; tin&nbsp;đ&acirc;y l&agrave; lo&agrave;i hoa độc&nbsp;n&ecirc;n c&oacute; l&uacute;c đ&atilde; bị chặt, đốt bỏ.</p>\r\n<p>\r\n	Nhiều năm sau đ&oacute;, đỗ mai &acirc;m thầm từ v&ugrave;ng n&uacute;i T&acirc;y nguy&ecirc;n (Gia Lai, Kom Tum, Đắk Lắk)&nbsp;về xu&ocirc;i. Ban đầu ngự tr&ecirc;n n&uacute;i cao (nơi c&oacute; kh&iacute; hậu lạnh) sau đ&oacute; len xuống c&aacute;c triền n&uacute;i ven biển. Rồi trở th&agrave;nh đặc sản hoa xu&acirc;n ở B&agrave; Rịa-Vũng T&agrave;u,&nbsp;Phước Hải, Long Hải, Cần Giờ...</p>\r\n', '2016-03-13 14:54:39', 'images/domaichaodonmuaxuantrennuivungtaudomaichaodonmuaxuan145465439domaichaodonmuaxuantrennuivungtau.jpg', 'Đỗ mai chào đón mùa xuân trên núi Vũng Tàu', 6, 1),
(15, 4, 1, 'Người Nhật dọn vườn, trồng anh đào ở Paris để thu hút khách', 'Các công ty du lịch của Nhật sẽ thực hiện dự án sửa sang vườn Trocadero cạnh tháp Eiffel, và trồng anh đào ở các khu đông khách để kéo thêm nhiều khách Nhật Bản sang Pháp. ', '<p>\r\n	Dự án này do Hiệp hội du lịch Paris thực hiện. Đây là một nhóm công ty du lịch và hãng hàng không Nhật Bản. Họ hy vọng tạo được môi trường sạch sẽ, ngăn nắp hơn ở thủ đô của Pháp để hút du khách Nhật tới đây.</p>\r\n<p>\r\n	Từ ngày 13/3, hiệp hội sẽ bắt đầu chỉnh trang vườn Trocadero cạnh tháp Eiffel, và trồng thêm cây anh đào ở các điểm du lịch đông khách</p>\r\n<p>\r\n	Hàng ngày có khoảng 5.000 người dọn dẹp Kinh đô Ánh sáng, nhưng rác rưởi, đầu lọc thuốc lá và phân thú cưng vẫn xuất hiện trên các tuyến phố, khiến người Nhật không thoải mái.</p>\r\n<p>\r\n	Đây không phải lần đầu người Nhật ra tay để khiến Paris hấp dân hơn. Từ năm 2007, một đội từ tổ chức môi trường Green Bird đã thường xuyên chỉnh trang các điểm du lịch hút khách ở Pháp, trong đó có Champs Élysées và tháp Eiffel.</p>\r\n<p>\r\n	Với ngành du lịch đang cố phục hồi sau vụ tấn công khủng bố, thị trưởng thành phố Paris, bà Anne Hidalgo, đã tới Tokyo tháng trước nhằm khuyến khích nhiều du khách Nhật Bản tới Pháp hơn.</p>\r\n<p>\r\n	Mỗi năm Paris đón khoảng 600.000 khách Nhật, một trong 5 thị trường khách du lịch lớn nhất của thành phố này.</p>\r\n<p>\r\n	Không chỉ Hiệp hội du lịch Paris nỗ lực cải thiện hình ảnh của Kinh đô Ánh sáng, gần đây Hội đồng thành phố cũng đã công bố kế hoạch trị giá 28 triệu USD để biến Paris thành “hình mẫu của sự sạch sẽ”. Dự án này sẽ giúp tặng lượng lao công và hiện đại hóa trang thiết bị cho họ. Một ứng dụng sẽ được công bố, cho phép cư dân báo tình trạng vệ sinh đường phố cho lao công để họ nhanh chóng xử lý.</p>\r\n', '2016-03-13 15:00:10', 'images/32191C7F000005780imagea1_1457709870412.jpg', 'Vườn Trocadero cạnh tháp Eiffel là điểm đến đông khách tham quan ở Paris. Ảnh: Daily Mail.', 3, 1),
(16, 4, 1, 'TOP 35 địa điểm du lịch An Giang đẹp hút du khách nhất 2021  ', 'aaaaaaaa', 'aaavvvvvvvvv', '2021-12-02 21:55:20', 'images/', '', 2, 1),
(17, 4, 1, 'Kinh nghiệm du lịch Đà Lạt tự túc 2021 hơn cả hướng dẫn viên', 'Đà Lạt, trong mình là một thành phố đẹp, đẹp ở mọi thứ. Đà Lạt, dù đến rồi vẫn không thấy đủ, vùng đất này bao lần vẫn níu chân mình ở lại. Sau 4 lần đến và ở lại Đà Lạt, mình nghĩ rằng đã có đủ kinh nghiệm du lịch Đà Lạt tự túc để cùng chia sẻ lại với mọi người. Qua những gì mình đã trải nghiệm, tìm hiểu trong bài viết này sẽ hướng dẫn giúp mọi người tự lên lịch trình đi tham quan các địa điểm du lịch nổi tiếng hợp lý nhất. Chọn được những khách sạn ưng ý, địa chỉ MUA SẮM và ĂN UỐNG với giá SIÊU RẺ.\r\n\r\nNguồn bài viết: https://dulichkhampha24.com/kinh-nghiem-du-lich-da-lat.html', '<p>Để m&igrave;nh n&oacute;i sơ cho bạn biết Đ&agrave; Lạt c&oacute; g&igrave; nh&eacute;! L&agrave; ngọn n&uacute;i Langbiang huyền thoại, thu h&uacute;t nhiều bạn phượt trẻ tuổi, l&agrave; hồ Tuyền L&acirc;m thơ mộng l&agrave;m bao t&acirc;m hồn thổn thức, l&agrave; thung lũng t&igrave;nh y&ecirc;u điểm hẹn của đ&ocirc;i bạn trẻ, th&aacute;c Voi &ndash; con th&aacute;c huyền b&iacute; giữa n&uacute;i rừng. V&agrave; cả một &ldquo;gia t&agrave;i&rdquo; về những điểm đến, m&agrave; m&igrave;nh đ&atilde; chắt chiu qua những chuyến đi, v&agrave; c&oacute; cả t&igrave;m hiểu. Đến Đ&agrave; Lạt, kh&ocirc;ng cần phải vội, chỉ cần dạo bước tr&ecirc;n những con đường, cũng đủ thấy y&ecirc;n b&igrave;nh, chỉ muốn ở lại m&atilde;i. C&oacute; lẽ v&igrave; thi&ecirc;n nhi&ecirc;n Đ&agrave; Lạt qu&aacute; đẹp, m&agrave; người ta đ&atilde; đặt cho th&agrave;nh phố n&agrave;y biết bao nhi&ecirc;u l&agrave; c&aacute;i t&ecirc;n mỹ miều. L&agrave; th&agrave;nh phố sương m&ugrave; cũng đ&uacute;ng, m&agrave; th&agrave;nh phố ng&agrave;n hoa cũng chẳng sai, rồi th&agrave;nh phố đ&aacute;ng sống nhất Việt Nam. V&agrave; cứ mỗi lần nhắc đến Đ&agrave; Lạt, l&agrave; chỉ thấy những c&aacute;i hay, c&aacute;i đẹp, l&agrave; nơi nghỉ dưỡng l&yacute; tưởng m&agrave; điểm phượt cũng hợp l&yacute; nữa. DU LỊCH Đ&Agrave; LẠT BẠN N&Ecirc;N ĐI THỜI ĐIỂM N&Agrave;O L&Yacute; TƯỞNG? Với Kinh nghiệm du lịch Đ&agrave; Lạt th&igrave; theo m&igrave;nh cảm nhận Đ&agrave; Lạt kh&ocirc;ng giống như c&aacute;c th&agrave;nh phố kh&aacute;c khi du lịch chỉ mang t&iacute;nh thời vụ. Ri&ecirc;ng Đ&agrave; Lạt, bạn c&oacute; thể đến quanh năm bởi mỗi m&ugrave;a lại c&oacute; n&eacute;t đẹp ri&ecirc;ng của n&oacute;, thời tiết &ocirc;n h&ograve;a &iacute;t nắng gi&oacute; hay mưa b&atilde;o. Bạn c&oacute; thể thoải m&aacute;i lựa chọn thời điểm ph&ugrave; hợp nhất cho chuyến đi Đ&agrave; Lạt của m&igrave;nh. Nguồn b&agrave;i viết: https://dulichkhampha24.com/kinh-nghiem-du-lich-da-lat.html</p>\r\n', '2021-12-02 21:58:55', 'images/Dalat.jpg', '', 4, 0),
(18, 4, 1, 'Tòa nhà cao nhất Việt Nam - Landmark 81', 'Địa chỉ: Số 720A Điện Biên Phủ, Quận Bình Thạnh, Thành phố Hồ Chí Minh\r\nGiờ mở cửa: 8:30 – 22:00\r\nGiá vé: 810.000 VNĐ/người lớn, 405.000 VNĐ/trẻ em từ 1m -1.4m, trẻ em dưới 1m miễn phí\r\nTòa nhà Landmark 81 là một trong những dự án lớn của Vingroup tại Thành phố Hồ Chí Minh. Công trình này có chiều cao lên tới 470m – hiện nay, đây là tòa nhà cao nhất tại Việt Nam. \r\n\r\n', '<p>\r\n	Landmark 81 được xem l&agrave; một địa điểm du lịch S&agrave;i G&ograve;n l&yacute; tưởng. Tại đ&acirc;y, bạn c&oacute; thể thoải m&aacute;i vui chơi với đa dạng c&aacute;c dịch vụ tiện &iacute;ch, nhu cầu nghỉ dưỡng, vui chơi.&nbsp;Trong t&ograve;a nh&agrave; n&agrave;y c&oacute; trung t&acirc;m thương mại Vincom Center Landmark 81 gi&uacute;p cho bạn thoải m&aacute;i mua sắm với những thương hiệu h&agrave;ng đầu tr&ecirc;n thế giới.</p>\r\n<p>\r\n	B&ecirc;n cạnh đ&oacute;, rất nhiều những dịch vụ vui chơi giải tr&iacute; mang đến cho bạn trải nghiệm thư gi&atilde;n tuyệt vời như: Rạp chiếu phim CGV, s&acirc;n băng Vincom Ice Rink&hellip; Tại địa điểm du lịch S&agrave;i G&ograve;n n&agrave;y, bạn c&ograve;n c&oacute; thể gh&eacute; qua 30 nh&agrave; h&agrave;ng với h&agrave;ng ngh&igrave;n m&oacute;n ăn hấp dẫn từ 5 ch&acirc;u lục.&nbsp;</p>\r\n<p>\r\n	T&ograve;a nh&agrave; Landmark 81 c&ograve;n được xem l&agrave; địa điểm nghỉ dưỡng tuyệt vời cho những chuyến c&ocirc;ng t&aacute;c tại S&agrave;i G&ograve;n. Kh&aacute;ch sạn&nbsp;<strong><a href=\"https://vinpearl.com/vi/hotels/vinpearl-luxury-landmark-81\">Vinpearl Luxury Landmark 81</a></strong>&nbsp;với hệ thống ph&ograve;ng nghỉ sang trọng, tiện nghi, view to&agrave;n cảnh s&ocirc;ng S&agrave;i G&ograve;n&hellip;hứa hẹn sẽ mang đến cho bạn trải nghiệm nghỉ dưỡng đẳng cấp tại th&agrave;nh phố n&agrave;y.&nbsp;</p>\r\n<p>\r\n	Đến với địa điểm du lịch Hồ Ch&iacute; Minh nổi tiếng n&agrave;y, du kh&aacute;ch đừng qu&ecirc;n gh&eacute; 3 tầng lầu cao nhất để c&oacute; được những trải nghiệm dịch vụ tuyệt vời, ngắm nh&igrave;n to&agrave;n cảnh th&agrave;nh phố mang t&ecirc;n B&aacute;c từ độ cao bậc nhất.&nbsp;</p>\r\n', '2021-12-02 22:22:06', 'images/TPHCM.jpg', 'Hình TP HCM', 12, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintruong`
--

CREATE TABLE `tbl_tintruong` (
  `MaBaiViet` int(11) NOT NULL,
  `TenBaiViet` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `TomTat` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` varchar(10000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintruong`
--

INSERT INTO `tbl_tintruong` (`MaBaiViet`, `TenBaiViet`, `TomTat`, `NoiDung`) VALUES
(1, 'Lịch sử AGU', 'Năm 1970, Trường Văn khoa và Sư phạm (đôi lúc được gọi là trường Sư phạm hoặc phân khoa Sư phạm) thuộc Viện Đại học Hòa Hảo khai giảng khóa đầu tiên sau khi được chấp thuận từ người đứng đầu Việt Nam', 'Năm 1970, Trường Văn khoa và Sư phạm (đôi lúc được gọi là trường Sư phạm hoặc phân khoa Sư phạm) thuộc Viện Đại học Hòa Hảo khai giảng khóa đầu tiên sau khi được chấp thuận từ người đứng đầu Việt Nam Cộng hòa nhân dịp đi dự lễ khánh thành trụ sở Trung ương Giáo hội Phật giáo Hòa Hảo vào tháng 4 năm 1970, chính thức vào năm 1971 bằng Nghị định số 1674-GD/KHPC/NĐ của Việt Nam Cộng Hòa[4][5]. Sau năm 1975, Trường Cao đẳng Sư Phạm An Giang được thành lập trên cơ sở Trường Văn khoa và Sư phạm thuộc Viện Đại học Hòa Hảo do Bộ Giáo dục ban hành vào năm 1976[6], sau đó đến năm 1985 thì giao lại cho tỉnh An Giang quản lý rồi được sáp nhập thành Cao đẳng Sư Phạm An Giang chuyên đào tạo giáo viên vào năm 1995 trên cơ sở hai trường Trung học Sư Phạm và Cao đẳng Sư Phạm. Trường Đại học An Giang được thành lập theo quyết định số 241/1999/QĐ-TTg ngày 30 tháng 12 năm 1999 của Thủ tướng chính phủ, là trường Đại học công lập thứ hai được thành lập ở vùng Đồng bằng sông Cửu Long và khai giảng niên học đầu tiên ngày 9 tháng 9 năm 2000. Xây dựng trên cơ sở trường Cao đẳng Sư phạm An Giang, Trường Đại học An Giang là trường đại học công lập trong hệ thống các trường đại học Việt Nam, trực thuộc Ủy ban nhân dân tỉnh An Giang. Ngoài đào tạo trường còn có nhiệm vụ nghiên cứu, ứng dụng và chuyển giao công nghệ trong vùng. Từ 2000-2001, Đại học An Giang tuyển sinh khóa đầu tiên với 5 ngành đào tạo đại học. Đến năm 2005–2006, trường đã có 42 ngành đào tạo chính quy trong đó có 20 ngành hệ đại học. Ngày 8 tháng 12 năm 2016, Thủ tướng có văn bản đồng ý chủ trương chuyển Trường Đại học An Giang từ trường Đại học chịu sự quản lý trực tiếp của UBND tỉnh An Giang thành trường Đại học thành viên của Đại học Quốc gia TP. HCM.[7] Ngày 13 tháng 8 năm 2019, Trường Đại học An Giang chính thức trực thuộc Đại học Quốc gia TP HCM, theo quyết định của Thủ tướng Chính phủ Việt Nam.'),
(2, 'Lịch sử AGU', 'Năm 1970, Trường Văn khoa và Sư phạm (đôi lúc được gọi là trường Sư phạm hoặc phân khoa Sư phạm) thuộc Viện Đại học Hòa Hảo khai giảng khóa đầu tiên sau khi được chấp thuận từ người đứng đầu Việt Nam', 'Năm 1970, Trường Văn khoa và Sư phạm (đôi lúc được gọi là trường Sư phạm hoặc phân khoa Sư phạm) thuộc Viện Đại học Hòa Hảo khai giảng khóa đầu tiên sau khi được chấp thuận từ người đứng đầu Việt Nam Cộng hòa nhân dịp đi dự lễ khánh thành trụ sở Trung ương Giáo hội Phật giáo Hòa Hảo vào tháng 4 năm 1970, chính thức vào năm 1971 bằng Nghị định số 1674-GD/KHPC/NĐ của Việt Nam Cộng Hòa[4][5]. Sau năm 1975, Trường Cao đẳng Sư Phạm An Giang được thành lập trên cơ sở Trường Văn khoa và Sư phạm thuộc Viện Đại học Hòa Hảo do Bộ Giáo dục ban hành vào năm 1976[6], sau đó đến năm 1985 thì giao lại cho tỉnh An Giang quản lý rồi được sáp nhập thành Cao đẳng Sư Phạm An Giang chuyên đào tạo giáo viên vào năm 1995 trên cơ sở hai trường Trung học Sư Phạm và Cao đẳng Sư Phạm. Trường Đại học An Giang được thành lập theo quyết định số 241/1999/QĐ-TTg ngày 30 tháng 12 năm 1999 của Thủ tướng chính phủ, là trường Đại học công lập thứ hai được thành lập ở vùng Đồng bằng sông Cửu Long và khai giảng niên học đầu tiên ngày 9 tháng 9 năm 2000. Xây dựng trên cơ sở trường Cao đẳng Sư phạm An Giang, Trường Đại học An Giang là trường đại học công lập trong hệ thống các trường đại học Việt Nam, trực thuộc Ủy ban nhân dân tỉnh An Giang. Ngoài đào tạo trường còn có nhiệm vụ nghiên cứu, ứng dụng và chuyển giao công nghệ trong vùng. Từ 2000-2001, Đại học An Giang tuyển sinh khóa đầu tiên với 5 ngành đào tạo đại học. Đến năm 2005–2006, trường đã có 42 ngành đào tạo chính quy trong đó có 20 ngành hệ đại học. Ngày 8 tháng 12 năm 2016, Thủ tướng có văn bản đồng ý chủ trương chuyển Trường Đại học An Giang từ trường Đại học chịu sự quản lý trực tiếp của UBND tỉnh An Giang thành trường Đại học thành viên của Đại học Quốc gia TP. HCM.[7] Ngày 13 tháng 8 năm 2019, Trường Đại học An Giang chính thức trực thuộc Đại học Quốc gia TP HCM, theo quyết định của Thủ tướng Chính phủ Việt Nam.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_online`
--

CREATE TABLE `user_online` (
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_online`
--

INSERT INTO `user_online` (`session`, `time`) VALUES
('2000e741d6a607af37febcddb18f6b86', 1672894429);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `like` int(11) NOT NULL,
  `dislike` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `video`
--

INSERT INTO `video` (`id`, `like`, `dislike`) VALUES
(1, 54, 15);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  ADD PRIMARY KEY (`MaCauTraLoi`);

--
-- Chỉ mục cho bảng `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_chude`
--
ALTER TABLE `tbl_chude`
  ADD PRIMARY KEY (`MaChuDe`);

--
-- Chỉ mục cho bảng `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  ADD PRIMARY KEY (`MaNguoiDung`);

--
-- Chỉ mục cho bảng `tbl_noidungtin`
--
ALTER TABLE `tbl_noidungtin`
  ADD PRIMARY KEY (`MaBaiViet`),
  ADD KEY `MaChuDe` (`MaChuDe`),
  ADD KEY `MaNguoiDung` (`MaNguoiDung`);

--
-- Chỉ mục cho bảng `tbl_tintruong`
--
ALTER TABLE `tbl_tintruong`
  ADD PRIMARY KEY (`MaBaiViet`);

--
-- Chỉ mục cho bảng `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`session`);

--
-- Chỉ mục cho bảng `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `cautraloi`
--
ALTER TABLE `cautraloi`
  MODIFY `MaCauTraLoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `file`
--
ALTER TABLE `file`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_chude`
--
ALTER TABLE `tbl_chude`
  MODIFY `MaChuDe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_nguoidung`
--
ALTER TABLE `tbl_nguoidung`
  MODIFY `MaNguoiDung` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_noidungtin`
--
ALTER TABLE `tbl_noidungtin`
  MODIFY `MaBaiViet` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_tintruong`
--
ALTER TABLE `tbl_tintruong`
  MODIFY `MaBaiViet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_noidungtin`
--
ALTER TABLE `tbl_noidungtin`
  ADD CONSTRAINT `tbl_noidungtin_ibfk_1` FOREIGN KEY (`MaChuDe`) REFERENCES `tbl_chude` (`MaChuDe`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_noidungtin_ibfk_2` FOREIGN KEY (`MaNguoiDung`) REFERENCES `tbl_nguoidung` (`MaNguoiDung`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
