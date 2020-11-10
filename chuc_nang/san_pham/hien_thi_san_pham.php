<?php
while($tv_2=mysqli_fetch_array($tv_1))
	{
		echo "<tr class='sanpham'>";
			for($i=1;$i<=3;$i++)
			{
				echo "<td class='sanphamq' align='center' width='215px' valign='top'>";
					if($tv_2!=false)
					{
						$link_anh="hinh_anh/san_pham/".$tv_2['hinh_anh'];
						$link_chi_tiet="?thamso=chi_tiet_san_pham&id=".$tv_2['id'];
						$gia=$tv_2['gia'];
						$gia=number_format($gia,0,",",".");
						echo "<a href='$link_chi_tiet'>";
							echo "<div class='sanphaqm'>";
								echo "<img src='$link_anh' width='150px' >";
								echo "<br>";
								echo "<br>";
								echo "<div class='ten'>";
									echo $tv_2['ten'];
								echo "</div>";
								echo "<div class='gia'>";
									echo $gia."&#8363;";
								echo "</div>";
							echo "</div>";
						echo "</a>";
						echo "<br>";
						echo "<br>";
					}
					else 
					{
						echo "&nbsp;";
					}
				echo "</td>";
				if($i!=3)
				{
					$tv_2=mysqli_fetch_array($tv_1);
				}
			}
		echo "</tr>";
	}
?>