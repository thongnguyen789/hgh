<div class="baiviet">
<?php
		
			echo "<li><iframe width =\"95%\" height=\"200px\"  src =\"https://www.youtube.com/embed/YCf3SRytWNY\"></iframe></li>";

        $sql = "select t.MaBaiViet, t.TieuDe, t.NgayDang, t.TomTat, t.MaChuDe, t.HinhAnh, t.ChuThichAnh, l.MaChuDe, l.TenChuDe
        from (tbl_chude l inner join tbl_noidungtin t on t.MaChuDe=l.MaChuDe)
		where KiemDuyet = 1
        group by t.MaChuDe, t.MaBaiViet, t.TieuDe, t.NgayDang, t.TomTat
        having (t.NgayDang >= all (select NgayDang from tbl_noidungtin where MaChuDe=l.MaChuDe))";
		$danhsach = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		while ($row = $danhsach->fetch_array(MYSQLI_ASSOC)) 		
		{
			echo "<h3 align=\"left\"><a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>" . $row['TieuDe'] . "</a></h3>";
			echo "<div class=\"vanban\"><div class=\"anhbaiviet\"><img width=\"150\" height=\"150\"src=" . $row["HinhAnh"] . "></div>";
			echo "<div class=\"noidung\"><div align=\"left\">" . $row['TomTat'] . "...</div><br><div align=\"right\">" . $row["NgayDang"]."</div><div align=\"right\"><a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>Chi tiết</a></div></div></div>";
		}

?>
</div>
