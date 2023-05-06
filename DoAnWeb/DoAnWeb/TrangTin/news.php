<?php

$sql = "select *  from tbl_noidungtin order by LuotXem desc limit 3";
		$danhsach = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		while ($row = $danhsach->fetch_array(MYSQLI_ASSOC)) 		
		{
			
			echo "<li>";
			echo "<img width=\"100\" height=\"100\" src=" . $row['HinhAnh'] . "></br>";   
			echo "<a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>".$row['TieuDe']."</a>";   
			echo "</li>";
		}
		ob_end_flush();

?>