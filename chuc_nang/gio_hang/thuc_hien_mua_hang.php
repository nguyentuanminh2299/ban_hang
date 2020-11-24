<?php 
	if(isset($_SESSION['id_them_vao_gio']))
	{
		$ten_nguoi_mua=trim($_POST['ten_nguoi_mua']);
		$email=trim($_POST['email']);
		$dien_thoai=trim($_POST['dien_thoai']);
		$dia_chi=trim(nl2br($_POST['dia_chi']));
		$noi_dung=nl2br($_POST['noi_dung']);

		date_default_timezone_set("Asia/Ho_Chi_Minh");
		$ngay_mua=date("d/m/Y");

		if($ten_nguoi_mua!="" and $dien_thoai!="" and $dia_chi!="")
		{
			$hang_duoc_mua="";
			for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
			{
				$hang_duoc_mua=$hang_duoc_mua.$_SESSION['id_them_vao_gio'][$i]."[|||]".$_SESSION['sl_them_vao_gio'][$i]."[|||||]";
			}
			$tv="INSERT INTO hoa_don (
            id ,
            ten_nguoi_mua ,
            email ,
            dia_chi ,
            dien_thoai ,
            noi_dung ,
            hang_duoc_mua,
            ngay_mua
            )
            VALUES (
            NULL ,
            '$ten_nguoi_mua',
            '$email',
            '$dia_chi',
            '$dien_thoai',
            '$noi_dung',
            '$hang_duoc_mua',
            '$ngay_mua'
            );";
            mysqli_query($conn,$tv);
            $tv="select id FROM hoa_don ORDER BY id DESC LIMIT 1";
            $tv_1=mysqli_query($conn,$tv);
			$tv_2=mysqli_fetch_array($tv_1);
			$id_hoadon=$tv_2[0];
            for($i=0;$i<count($_SESSION['id_them_vao_gio']);$i++)
			{
				$id_sp=$_SESSION['id_them_vao_gio'][$i];
				$so_luong=$_SESSION['sl_them_vao_gio'][$i];
				$tv="INSERT INTO chi_tiet_hoa_don VALUES($id_hoadon,$id_sp,$so_luong,150);";
				mysqli_query($conn,$tv);
			}
			
			unset($_SESSION['id_them_vao_gio']);
			unset($_SESSION['sl_them_vao_gio']);
			thong_bao_html_roi_chuyen_trang("Cảm ơn bạn đã mua hàng tại web site chúng tôi","index.php");
		}
		else 
		{
			thong_bao_html("Không được bỏ trống tên người mua , điện thoại , địa chỉ");
			trang_truoc();
			exit();
		}
	}
?>