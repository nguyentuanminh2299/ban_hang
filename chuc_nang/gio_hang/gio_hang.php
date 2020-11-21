<?php 
	if(isset($_GET['id']) and $_SESSION['trang_chi_tiet_gio_hang']=="co")
	{
		$_SESSION['trang_chi_tiet_gio_hang']="huy_bo";
		if(isset($_SESSION['id_them_vao_gio']))
		{
			$so=count($_SESSION['id_them_vao_gio']);
			$trung_lap="khong";
			for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
			{
				if($_SESSION['id_them_vao_gio'][$i]==$_GET['id'])
				{
					$trung_lap="co";
					$vi_tri_trung_lap=$i;
					break;
				}
			}
			if($trung_lap=="khong")
			{
				$_SESSION['id_them_vao_gio'][$so]=$_GET['id'];
				$_SESSION['sl_them_vao_gio'][$so]=$_GET['so_luong'];
			}
			if($trung_lap=="co")
			{
				$_SESSION['sl_them_vao_gio'][$vi_tri_trung_lap]=$_SESSION['sl_them_vao_gio'][$vi_tri_trung_lap]+$_GET['so_luong'];
			}
		}
		else
		{
			$_SESSION['id_them_vao_gio'][0]=$_GET['id'];
			$_SESSION['sl_them_vao_gio'][0]=$_GET['so_luong'];
		}
	}

	$gio_hang="khong";
	if(isset($_SESSION['id_them_vao_gio']))
	{
		$so_luong=0;
		for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
		{
			$so_luong=$so_luong+$_SESSION['sl_them_vao_gio'][$i];
		}
		if($so_luong!=0)
		{
			$gio_hang="co";
		}
	}
	
	echo "<h1>Giỏ hàng</h1>";
	echo "<br>";
	echo "<br>";
	if($gio_hang=="khong")
	{
		echo "Không có sản phẩm trong giỏ hàng";
	}
	else 
	{
		echo "<form action='' method='post' >"; 
		echo "<input type='hidden' name='cap_nhat_gio_hang' value='co' > ";
		echo "<table>";
			echo "<tr>";
				echo "<td width='200px' >Tên</td>";
				echo "<td width='150px' >Hình ảnh</td>";
				echo "<td width='200px' align='center'>Số lượng</td>";
				echo "<td width='150px' >Đơn giá</td>";
				echo "<td width='200px' >Thành tiền</td>";
			echo "</tr>";
			$tong_cong=0;
			for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
			{
			
				$tv="select id,ten,gia,hinh_anh from san_pham where id='".$_SESSION['id_them_vao_gio'][$i]."'";
				$tv_1=mysqli_query($conn,$tv);
				$tv_2=mysqli_fetch_array($tv_1);
				
				$tien=$tv_2['gia']*$_SESSION['sl_them_vao_gio'][$i];
				$tong_cong=$tong_cong+$tien;
				$name_id="id_".$i;
				$name_sl="sl_".$i;
				
				if($_SESSION['sl_them_vao_gio'][$i]!=0)
				{
					$link = "hinh_anh/san_pham/".$tv_2['hinh_anh'];
				echo "<tr>";
					echo "<td>".$tv_2['ten']."</td>";
					echo "<td>";
					echo "<img src='$link' style='width: 60px'>";
					echo "</td>";
					echo "<td align='center'>";
					echo "<input class='minus is-form' type='button' value='-' onclick='minus()'>";
					echo "&nbsp;";
					echo "<input type='hidden' name='".$name_id."' value='".$_SESSION['id_them_vao_gio'][$i]."' >";
					echo "<input type='text' id='".$name_sl."' style='width:40' name='".$name_sl."' value='". $_SESSION['sl_them_vao_gio'][$i]."' > ";
					echo "<input class='plus is-form' type='button' value='+' onclick='plus()'>";
					echo '<script type="text/javascript">
	  						function plus_'.$i.'(){
	  							var a=document.getElementById("'.$name_sl.'").value;
	  							if(a>=0) a++;
	  							document.getElementById("'.$name_sl.'").value=a;
	  							document.getElementById("thanh_tien").innerHTML=a*document.getElementById("don_gia").innerHTML;
	  						}

	  						function minus_'.$i.'(){
	  							var a=document.getElementById("so_luong").value;
	  							if(a>=1) a--;
	  							document.getElementById("so_luong").value=a;
	  							document.getElementById("thanh_tien").innerHTML=a*document.getElementById("don_gia").innerHTML;
	  						}
	  						</script>';
					echo "</td>";
					echo "<td><p id='don_gia'>".number_format($tv_2['gia'],0,",",".")."</p></td>";
					echo "<td><p id='thanh_tien'>".number_format($tien,0,",",".")."</p></td>";
				echo "</tr>";
				}
			}	
			echo "<tr>";
				echo "<td>&nbsp;</td>";
				echo "<td><input type='submit' value='Cập nhật' > </td>";
				echo "<td>&nbsp;</td>";
				echo "<td>&nbsp;</td>";
			echo "</tr>";	
		echo "</table>";
		echo "</form>";
		echo "<br>";
		echo "<p>Tổng giá trị đơn hàng là : ".number_format($tong_cong,0,",",".")." VNĐ</p>";
		include("chuc_nang/gio_hang/bieu_mau_mua_hang.php");
	}
	
?>