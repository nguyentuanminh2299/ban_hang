<br>
<div style="border: 3px solid green;">
	<p style="font-size: 30;color: red;margin: 5;text-align: center;"><strong>Giỏ hàng</strong></p>
	<div style="margin: 5">
		<?php 
			$so_luong=0;
			if(isset($_SESSION['id_them_vao_gio']))
			{
				for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
				{
					$so_luong=$so_luong+$_SESSION['sl_them_vao_gio'][$i];
				}
			}
		?>

		<p style="margin: 5;font-style:italic;font-size: 20">Số sản phẩm : <?php echo $so_luong; ?></p>
		<a href="?thamso=gio_hang" style="font-size: 20">Xem giỏ hàng</a>
	</div>
</div>