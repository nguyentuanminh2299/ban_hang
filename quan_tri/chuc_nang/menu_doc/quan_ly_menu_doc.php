<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<?php 
	$so_dong_tren_mot_trang=20;
	if(!isset($_GET['trang'])){$_GET['trang']=1;}
	
	$tv="select count(*) from loai_san_pham";
	$tv_1=mysqli_query($conn,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	$so_trang=ceil($tv_2[0]/$so_dong_tren_mot_trang);
	
	$vtbd=($_GET['trang']-1)*$so_dong_tren_mot_trang;
	$tv="select * from loai_san_pham order by id limit $vtbd,$so_dong_tren_mot_trang";
	$tv_1=mysqli_query($conn,$tv);
?>
<table width="990px" class="tb_a1" >
	<tr style="background:#CCFFFF;height:40px;" >
		<td width="100px" align="center"><b>Tên</b></td>
		<td width="500px" align="center">Hình ảnh</td>
		<td align="center" width="220px" ><b>Sửa</b></td>
		<td align="center" width="220px" ><b>Xóa</b></td>
	</tr>
	<?php 
		while($tv_2=mysqli_fetch_array($tv_1))
		{
			$id=$tv_2['id'];
			$ten=$tv_2['ten'];
			$link_hinh="../hinh_anh/loai_san_pham/".$ten.".jpg";
			$link_sua="?thamso=sua_menu_doc&id=".$id."&trang=".$_GET['trang'];
			$link_xoa="?xoa_menu_doc=co&id=".$id;
			?>
				<tr class="a_1" >
					<td align="center">
						<a href="<?php echo $link_sua; ?>" class="lk_a1" ><?php echo $ten; ?></a>
					</td>
					<td align="center">
						<a href="<?php echo $link_sua;?>">
							<img src="<?php echo $link_hinh;?>">
						</a>
					</td>
					<td align="center" >
						<a href="<?php echo $link_sua; ?>" class="lk_a1" >Sửa</a>
					</td>
					<td align="center" >
						<a href="<?php echo $link_xoa; ?>" class="lk_a1" >Xóa</a>
					</td>
				</tr>
			<?php 
		}
	?>
	<tr>
		<td colspan="4" align="center" >
			<br>
			<?php 
				for($i=1;$i<=$so_trang;$i++)
				{
					$link_phan_trang="?thamso=quan_ly_menu_doc&trang=".$i;
					echo "<a href='$link_phan_trang' class='phan_trang' >";
						echo $i;
					echo "</a> ";
				}
			?>
			<br><br>
		</td>
	</tr>
</table>