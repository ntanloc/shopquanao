
<!DOCTYPE html>
<html>
	<head>
		<title> Quần Áo Thể Thao</title>
		<meta charset="utf-8" />
	
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
		<link rel="stylesheet" type="text/css" href="Css/style.css"/>
	
		
		
	</head>
	<body>
		<?php
			if(!isset($_SESSION)) 
			{ 
				session_start(); 
			} 
			
			include_once "cauhinh.php";
			
			include_once "thuvien.php";
		?>
		
		<div id="TrangWeb">	
		
		<div id="PhanDau">	</div>	
		
			<div id="menu1" align="center">
			
			&nbsp;	<a class = "menu1" style="text-decoration: none; color:black" href="index.php?do=trangchu" ><i class="bi bi-house-door"></i> TRANG CHỦ</a> 
			</div>
		
			<div id="menu2">
			
				<marquee>Quần áo - giày dép thể thao với nhiều mẫu mã đa dạng - giao hàng trên toàn quốc</marquee>				
			</div>
		
			<div id="menu3">
			<iframe scrolling="no" frameborder="no" clocktype="html5" style="overflow:hidden;border:0;margin:0;padding:0;width:330px;height:30px;"src="https://www.clocklink.com/html5embed.php?clock=018&timezone=GMT0700&color=red&size=340&Title=&Message=&Target=&From=2024,1,1,0,0,0&DateFormat=yyyy / mm / dd DDD&TimeFormat=hh:mm:ss TT&Color=red"></iframe>
			</div>
			
		
				<div id="menu4" >	
					<ul>
						<li><a href="index.php?do=home"> <i class="bi bi-border-width"></i>  Sản phẩm</a> 						
						</li>				
						<li><a href="index.php?do=chinhanh"> <i class="bi bi-geo-alt-fill"></i> Chi Nhánh</a> </li>
						<li><a href="index.php?do=lienhedathang"><i class="bi bi-telephone"></i> Liên Hệ </a> 	</li>
						
					</ul>				
				</div>			
			<div id="menu5">
					<form action="index.php?do=search_xuly" method="post">
						&nbsp;	Tìm kiếm: <input type="text" name="search" />
						<input type="submit" name="ok" value="OK" />
					</form>	
			</div>
		
		
		<div id="PhanGiua">	
			<div id="BenTrai">
				<h3>DANH MỤC SẢN PHẨM </h3>
				<?php

					$sql = "select * from `tbl_loaisanpham` WHERE 1";
					$danhsach = $connect->query($sql);
						//Nếu kết quả kết nối không được thì xuất báo lỗi và thoát
					if (!$danhsach) {
						die("Không thể thực hiện câu lệnh SQL: " . $connect->connect_error);
						exit();
					}
						
				?>
				
				<div id="menudung">
					<ul>						
						<?php
							
							while ($row = $danhsach->fetch_array(MYSQLI_ASSOC)) 
							{
    							echo "<li><a href='index.php?do=sanpham_loaisanpham&id_lsp=" . $row['IdLoaiSanPham'] . "'>" . $row['TenLoaiSanPham'] . "</a></li>";   
  							}
						?>  
						  
					</ul>
				</div>
			
				<div id="Giua">										
					<?php
								
						$do = isset($_GET['do']) ? $_GET['do'] : "trangchu";
								
						include $do . ".php";
					?>
				</div>			
			
			
			<div id="PhanCuoi">		
				<table class="cuoi">
					<tr>
						<th>
						<p>GIỚI THIỆU CÔNG TY</p>		
							<ul style="list-style-type: square;">
								<li>Tuyển dụng</li>
								<li>Tin thời trang</li>
								<li>Hợp tác nhượng quyền</li>
								<li>Liên hệ</li>
							</ul>
						
						</th>
						
						<th>
						<p>CHÍNH SÁCH KHÁCH HÀNG</p>		
							<ul style="list-style-type: square;">
								<li>Chính sách khách hàng thân thiết</li>
								<li>Chính sách đổi trả</li>
								<li>Chính sách bảo hành</li>
								<li>Chính sách bảo mật</li>
							</ul>
						</th>
						<th>
						<p>LIÊN HỆ VỚI CHÚNG TÔI</p>		
							<ul style="list-style-type: square;">
								<li>Điện thoại : 19009201</li>
								<li>Facebook</li>
								<li>Gmail</li>
								<li>Zalo</li>
								
							</ul>
						</th>
						<th>
						</th>
						<th>
						</th>
						
						<th>
								<img src="images/thanhtoan.png" width="300" height="130"/> 
						</th>
						
						

				
					</tr>
				</table>					
			</div>
						
		</body>
</html>