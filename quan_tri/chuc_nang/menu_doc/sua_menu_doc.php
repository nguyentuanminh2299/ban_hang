<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<?php 
	$id=$_GET['id'];
	$tv="select * from loai_san_pham where id='$id' ";
	$tv_1=mysqli_query($conn,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	$ten=$tv_2['ten'];
	$ten_anh=$tv_2['hinh_anh'];
	$link_hinh="../hinh_anh/loai_san_pham/".$tv_2['hinh_anh'];
	$link_dong="?thamso=quan_ly_menu_doc&trang=".$_GET['trang'];
?>
<form action="" method="post">
	<table width="990px" >
		<tr>
			<td width="180px" ><b style="color:blue;font-size:20px" >Sửa menu dọc</b><br><br> </td>
			<td width="810px" align="right" >
				<a href="<?php echo $link_dong; ?>" class="lk_a1" style="margin-right:30px" >Đóng</a>
			</td>
		</tr>
		<tr>
			<td >Tên: </td>
			<td >
				<input style="width:400px;margin-top:3px;margin-bottom:3px;" name="ten" value="<?php echo $ten; ?>" >
			</td>
		</tr>
		<tr>
			<td>Hình ảnh: </td>
			<td>
				<img src="<?php echo $link_hinh ?>">
				<br><br>
				<input type="file" name="hinh_anh" >
				<input type="hidden" name="ten_anh" value="<?php echo $ten_anh; ?>" >
			</td>
		</tr>		
		<tr>
			<td>&nbsp;</td>
			<td>
				<br>
				<input type="submit" name="bieu_mau_sua_menu_doc" value="Sửa menu" style="width:200px;height:50px;font-size:24px" >
			</td>
		</tr>
	</table>
</form>