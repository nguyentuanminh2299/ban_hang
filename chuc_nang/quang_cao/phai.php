<br><p style="margin: 0">Quảng cáo</p><br><br>
<?php 
	$tv="select html from quang_cao where vi_tri='phai' ";
	$tv_1=mysqli_query($conn,$tv);
	$tv_2=mysqli_fetch_array($tv_1);
	echo $tv_2['html'];
	// for($i=0;$i<count($tv2);$i++)
	// {
	// 	}
?>