<div class="baiviet">
<?php
	$MaBV = $_GET['id'];
	
	$sql = "SELECT *
			FROM tbl_noidungtin A, tbl_chude B, tbl_nguoidung C
			WHERE A.MaChuDe = B.MaChuDe AND A.maNguoiDung = C.MaNguoiDung AND A.MaBaiViet = $MaBV";
	
	$danhsach = $connect->query($sql);
	//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
	if (!$danhsach) {
		die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		exit();
	}
	
	$dong = $danhsach->fetch_array(MYSQLI_ASSOC);
	
	// Tăng lượt xem
	$sql = "UPDATE tbl_noidungtin SET LuotXem = LuotXem + 1 WHERE MaBaiViet = $MaBV";
	$truyvan_luotxem = $connect->query($sql);
	
	
?>
<h3><?php echo $dong['TieuDe']; ?></h3>

<p class="ThongTin" align="left">[<?php echo $dong['TenChuDe']; ?>] Đăng bởi <?php echo $dong['TenNguoiDung']; ?>, 
vào lúc <?php echo $dong['NgayDang']; ?>, có  <?php echo $dong['LuotXem']; ?> lượt xem. </p>



<p class="TomTat" align="left"><?php echo $dong['TomTat']; ?></p>
<p><?php echo    "<td colspan=\"2\"><img width=\"400\" src=" . $dong["HinhAnh"] . "></br>" . $dong['ChuThichAnh'] . "</td>"; ?></p>
<p class="NoiDung" align="left"><?php echo $dong['NoiDung']; ?></p>

<table border="0" cellspacing="0" width="550" align="center" valign="top">

<?php
	// các tin khác cũ hơn cùng lĩnh vực
	$sql = "select MaBaiViet, TieuDe , date_format(NgayDang,'%d/%m') as Ngay, MaChuDe from  tbl_noidungtin " .
        " where MaChuDe='" . $dong['MaChuDe'] .
        "' and KiemDuyet = 1 and NgayDang < (select NgayDang from  tbl_noidungtin where MaBaiViet=" . $dong["MaBaiViet"] . ") order by MaBaiViet desc";
	
	$danhsach2 = $connect->query($sql);
	if (!$danhsach2) {
		die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
		exit();
	}
		
	
	echo "<tr>";
		echo "<td class=\"tieude\"><hr/>Các tin khác cùng lĩnh vực:<ul>";
	while ($row = $danhsach2->fetch_array(MYSQLI_ASSOC))
	{
		echo "<li>";
		
		
		echo "<a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>" . $row['TieuDe'] . "</a>";
		echo "&nbsp;<span class=\"ngay\">(" . $row["Ngay"] . ")</span>";
		echo "</li>";
	}
	echo "</ul></td></tr> </table>";


?>
</div>

