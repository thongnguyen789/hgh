 <div class="baiviet">
 <?php
        if (isset($_REQUEST['ok'])) {
 
            // Gán hàm addslashes để chống sql injection
            $search = addslashes($_POST['search']);
            // Dùng câu lênh like trong sql và sứ dụng toán tử % của php 
			//để tìm kiếm dữ liệu chính xác hơn.
            $sql = "select * from (tbl_noidungtin t inner join tbl_chude c on t.MaChuDe = c.MaChuDe)  where t.TieuDe like '%$search%' or t.NoiDung like '%$search%' or c.TenChuDe like '%$search%'";
 
           
 
            // Thực thi câu truy vấn
            $danhsach = $connect->query($sql);
			//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
			if (!$danhsach) {
				die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
                echo "</div";
				exit();
			}
            // Đếm số dòng trả về trong sql.
            $num = mysqli_num_rows($danhsach);
 
            // Nếu $search rỗng thì báo lỗi tức là người dùng chưa
			//nhập liệu mà đã nhấn submit.
            if (empty($search)) {
                echo "Hãy nhập dữ liệu vào ô tìm kiếm";
            } else {
                // Ngược lại nếu người dùng nhập liệu thì tiến hành xứ lý show dữ liệu.
                // Nếu $num > 0 hoặc $search khác rỗng tức 
				//là có dữ liệu mối show ra nhé, ngược lại thì báo lỗi.
                if ($num > 0 && $search != "") {
 
                    // Dùng $num để đếm số dòng trả về.
                    echo "$num kết quả trả về với từ khóa <b>$search</b>";
                    // Vòng lặp while & mysql_fetch_assoc dùng để lấy toàn bộ 
					//dữ liệu có trong table và trả về dữ liệu ở dạng array.
					//echo "<table>";
                    while ($row = $danhsach->fetch_array(MYSQLI_ASSOC)) 		
		{
			echo "<h3 align=\"left\"><a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>" . $row['TieuDe'] . "</a></h3>";
			echo "<div class=\"vanban\"><div class=\"anhbaiviet\"><img width=\"150\" height=\"150\"src=" . $row["HinhAnh"] . "></div>";
			echo "<div class=\"noidung\"><div align=\"left\">" . $row['TomTat'] . "...</div><br><div align=\"right\">" . $row["NgayDang"]."</div><div align=\"right\"><a href='index.php?do=baiviet_chitiet&id=" . $row['MaBaiViet'] . "'>Chi tiết</a></div></div></div>";
		}
                } else 
                    echo "Không tìm thấy kết quả!";
				}
			}
        ?>   
 </div>