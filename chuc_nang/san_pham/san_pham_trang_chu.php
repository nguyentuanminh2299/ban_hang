<?php 
	$tv="select id,ten,gia,hinh_anh,loai_sp from san_pham where trang_chu='co' order by sap_xep_trang_chu desc limit 0,15";
	$tv_1=mysqli_query($conn,$tv);
	echo "<table style=margin-top:15px>";
	include("hien_thi_san_pham.php");
	echo "</table>";
?>