<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<?php 
	$ten_menu=trim($_POST['ten']);
	$ten_menu=str_replace("'","&#39;",$ten_menu);
	$id=$_GET['id'];
	$hinh_anh=$_POST['ten_anh'];
	if($ten_menu!="")
	{
		$tv="
		UPDATE loai_san_pham SET 
		ten = '$ten_menu',
		hinh_anh = '$hinh_anh'
		WHERE id =$id;
		";
		mysqli_query($conn,$tv);
	}
	else 
	{
		thong_bao_html("Tên menu chưa được điền vào");
	}
?>