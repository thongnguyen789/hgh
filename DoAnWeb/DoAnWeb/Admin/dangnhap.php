
<form action="index.php?do=dangnhap_xuly" method="post">
<style>
*{
    
     padding: 0;
     box-sizing: border-box;
     font-family: 'Roboto', sans-serif;
 }
 section{
     position: relative;
     width: 100%;
     height: 100vh;
     display: flex;
 }
 section .noi-dung{
     display: flex;
     justify-content: center;
     align-items: center;
     width: 50%;
     height: 100%;
 }
section .noi-dung .form{
     width: 50%;
 }
section .noi-dung .form h2{
     color: #607d8b;
     font-weight: 500;
     font-size: 1.5em;
     text-transform: uppercase;
     margin-bottom: 20px;
     border-bottom: 4px solid #ff4584;
     display: inline-block;
     letter-spacing: 1px;
 }
 section .noi-dung .form .input-form{
     margin-bottom: 20px;
 }
section .noi-dung .form .input-form span{
     font-size: 16px;
     margin-bottom: 5px;
     display: inline-block;
     color: #607db8;
     letter-spacing: 1px;
      }
section .noi-dung .form .input-form input{
     width: 100%;
     padding: 10px 20px;
     outline: none;
     border: 1px solid #607d8b;
     font-size: 16px;
     letter-spacing: 1px;
     color: #607d8b;
     background: transparent;
     border-radius: 30px;
     }
 section .noi-dung .form .input-form input[type="submit"]{
     background: #ff4584;
     color: #fff;
     outline: none;
     border: none;
     font-weight: 500;
     cursor: pointer;
     box-shadow: 0 1px 1px rgba(0,0,0,0.12),
                0 2px 2px rgba(0,0,0,0.12),
                0 4px 4px rgba(0,0,0,0.12),
               0 8px 8px rgba(0,0,0,0.12),
               0 16px 16px rgba(0,0,0,0.12);
 }
section .noi-dung .form .input-form input[type="submit"]:hover{
     background: #f53677;
 }
 section .noi-dung .form .nho-dang-nhap{
     margin-bottom: 10px;
     color: #607d8b;
     font-size: 14px;
 }
 section .noi-dung .form .input-form p{
     color: #607d8b;
 }
section .noi-dung .form .input-form p a{
     color: #ff4584;
 }
 section .noi-dung .form h3{
     color: #607d8b;
     text-align: center;
     margin: 80px 0 10px;
     font-weight: 500;
 }
section .noi-dung .form .icon-dang-nhap{
     display: flex;
     justify-content: center;
     align-items: center;
 }
section .noi-dung .form .icon-dang-nhap li{
     list-style: none;
     cursor: pointer;
     width: 50px;
     height: 50px;
     display: flex;
     justify-content: center;
     align-items: center;
 }
 section .noi-dung .form .icon-dang-nhap li:nth-child(1){
     color: #3b5999;
 }
 section .noi-dung .form .icon-dang-nhap li:nth-child(2){
     color: #dd4b39;
 }
 section .noi-dung .form .icon-dang-nhap li:nth-child(3){
     color: #55acee;
 }
 section .noi-dung .form .icon-dang-nhap li i{
     font-size: 24px;
 }
 section .noi-dung{
         display: flex;
         justify-content: center;
         align-items: center;
         width: 100%;
         height: 100%;
         z-index: 1;
     }
     section .noi-dung .form{
         width: 100%;
         padding: 40px;
         background: rgba(255 255 255 / 0.9);
         margin: 50px;
     }
     section .noi-dung .form h3{
         color: #607d8b;
         text-align: center;
         margin: 30px 0 10px;
         font-weight: 500;
     }

 
</style>


<!DOCTYPE html>
 <html lang="en">
 <head>
     <meta charset="UTF-8">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <title>Tạo Trang Login</title>
     
     <link rel="preconnect" href="https://fonts.gstatic.com">
     <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<section>
     <!--Bắt Đầu Phần Hình Ảnh-->
	
    

     <!--Kết Thúc Phần Hình Ảnh-->
     <!--Bắt Đầu Phần Nội Dung-->
     <div class="noi-dung">
         <div class="form" width="100%">
             <h2>Form Đăng Nhập</h2>
             <form action="">
                 <div class="input-form">
                     <span>Tên Người Dùng</span>
                     <input type="text" name="TenDangNhap">
                 </div>
                 <div class="input-form">
                     <span>Mật Khẩu</span>
                     <input type="password" name="MatKhau">
                 </div>
                 <div class="nho-dang-nhap">
                     <label><input type="checkbox" name=""> Nhớ Đăng Nhập</label>
                 </div>
                 <div class="input-form">
                     <input type="submit" value="Đăng Nhập">
                 </div>
                 
				 <div class="input-form">
				 <?php
				 echo '<p>Bạn Chưa Có Tài Khoản? <a href="index.php?do=dangky">Đăng ký</a></p>';
				 ?>
				 </div>
             </form>
             <h3>Đăng Nhập Bằng Mạng Xã Hội</h3>
             <ul class="icon-dang-nhap">
                 <li><i class="fa fa-facebook" aria-hidden="true"></i></li>
                 <li><i class="fa fa-google" aria-hidden="true"></i></li>
                 <li><i class="fa fa-twitter" aria-hidden="true"></i></li>
             </ul>
         </div>
     </div>
     <!--Kết Thúc Phần Nội Dung-->
 </section>
</body>
</html>
</form>