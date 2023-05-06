		
		
		<div id="content">
	     <h3>Bạn có thích video này không? Nếu có thì chọn Like, nếu không thì chọn DisLike</h3>
	     
	     <?php 
		 
		 
		 if(isset($_GET['name']) && isset($_GET['gt'])) 
		 {
			if($_GET['name'] == 'like')
			{
			 	$like = $_GET['gt'] + 1;
			 	$sql = "UPDATE `video` SET `like` =$like";					
			}
			else
			{
			 	$dislike = $_GET['gt'] + 1;
				$sql = "UPDATE `video` SET `dislike`=$dislike";
			}			
			$danhsach = $connect->query($sql);
			//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
			if (!$danhsach) {
				die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
				exit();
			}
		 }
		 
	          
		 //bước 3: Viết câu lệnh SQL truy vấn
		 $sql="select * from video ";
		 //bước 4: Thực hiện câu truy vẫn
		$danhsach = $connect->query($sql);
		//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
		if (!$danhsach) {
			die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
			exit();
		}
		 $row = $danhsach->fetch_array(MYSQLI_ASSOC);
		
		 if($row){ 
			$like    = intval($row['like']);
			$dislike = intval($row['dislike']);
			$total   = $like + $dislike;
			
			//tính % lượt like và dislike
			$like_per    = ($total > 0) ? ($like*100)/$total : 0;
			$dislike_per = ($total > 0) ? ($dislike*100)/$total : 0;
			$like_per = round($like_per,1);
			$dislike_per = round($dislike_per,1);
			
			
			
			
		?>
		
		<div align="center" id="result">
			  <div class="rate">
				 <div class="like" style="width:<?php echo $like_per?>%" ></div>
				 <div class="dislike" style="width:<?php echo $dislike_per?>%" ></div>
			  </div>
		</div>
		
		 <a href="index.php?do=like_video&name=like&gt=<?php echo $like?>" class="button_like" name="like"  >Like:<b><?php echo " $like ($like_per%)"?></b></a>
           - 
          <a href="index.php?do=like_video&name=dislike&gt=<?php echo $dislike?>" class="button_like" name="dislike" >Dislike:<b><?php echo " $dislike ($dislike_per%)"?></b></a>

		
		<?php
		}
		?>
		
		
		 <video width="600" height="350" controls>
				<source src="video/hoadep.mp4" type="video/mp4">	
		</video>

        
	   </div>
	   
	   