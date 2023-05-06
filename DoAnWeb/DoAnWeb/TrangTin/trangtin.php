<div class="baiviet">
<?php
		
			echo "<li><iframe width =\"95%\" height=\"200px\"  src =\"https://www.youtube.com/embed/YCf3SRytWNY\"></iframe></li>";

        $sql = "select * from tbl_tintruong";
        $danhsach = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		while ($row = $danhsach->fetch_array(MYSQLI_ASSOC)) 		
		{
			echo "<h3 align=\"left\"><a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>" . $row['TenBaiViet'] . "</a></h3>";
			echo "<div class=\"\"><div align=\"left\">" . $row['TomTat'] . "...</div><br><br><div align=\"left\">".$row['NoiDung']."</div></div>";
		}

?>
</div>
