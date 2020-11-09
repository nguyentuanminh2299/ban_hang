<?php 
	$id=$_GET['id'];
	$so_du_lieu=15;
	$tv="select count(*) from san_pham where loai_sp='$id';";
	$tv_1=mysqli_query($conn,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	$so_trang=ceil($tv_2[0]/$so_du_lieu);
	
	if(!isset($_GET['trang'])){$vtbd=0;}else{$vtbd=($_GET['trang']-1)*$so_du_lieu;}
	
	$tv="select id,ten,gia,hinh_anh,loai_sp from san_pham where loai_sp='$id' order by id desc limit $vtbd,$so_du_lieu";
	$tv_1=mysqli_query($conn,$tv);
	echo "<table>";
	include("hien_thi_san_pham.php");
	echo "<tr>";
		echo "<td colspan='3' align='center' >";
			echo "<div class='phan_trang' >";
				for($i=1;$i<=$so_trang;$i++)
				{
					$link="?thamso=xuat_san_pham&id=".$_GET['id']."&trang=".$i;
					echo "<a href='$link' >";
						echo $i;echo " ";
					echo "</a>";
				}
			echo "</div>";
		echo "</td>";
	echo "</tr>";
	echo "</table>";
?>