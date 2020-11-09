<?php 
	$tv="select * from loai_san_pham order by id";
	$tv_1=mysqli_query($conn,$tv);
	echo "<div class='menu_doc' >";
	while($tv_2=mysqli_fetch_array($tv_1))
	{
		echo '<hr>';
		$link="?thamso=xuat_san_pham&id=".$tv_2['id'];
		$link_anh="hinh_anh/loai_san_pham/".$tv_2['ten'].".jpg";
		echo "<a href='$link'>";
			echo "<img src='$link_anh' width=100% margin-bottom:60px;>";
			// echo $tv_2['ten'];
		echo "</a>";
	#	echo "<p></p>";
	}
	echo "</div>";
?>