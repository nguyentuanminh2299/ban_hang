<?php 
	if(!isset($bien_bao_mat)){exit();}
?>
<br><br>

<form method="post" >
	<div class="login-box">
		<h1>Login</h1>
		<div class="textbox">
			<i class="fas fa-user" aria-hidden="true"></i>
			<input placeholder="Username" name="ky_danh" >
		</div>
		<div class="textbox">
			<i class="fas fa-lock" aria-hidden="true"></i>
			<input type="password" placeholder="Password" name="mat_khau" >
		</div>
			<input type="hidden" name="dang_nhap_quan_tri" value="dang_nhap_quan_tri" >
			<input class="btn" type="submit" value="Login">
		</div>
</form>
<!-- <center>
	<form method="post" >
		<table>
			<tr>
				<td>Ký danh :</td>
				<td><input style="width:150px" name="ky_danh" ></td>
			</tr>
			<tr>
				<td>Mật khẩu :</td>
				<td><input type="password" style="width:150px" name="mat_khau" ></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<input type="hidden" name="dang_nhap_quan_tri" value="dang_nhap_quan_tri" >
					<input type="submit" value="Đăng nhập" >
				</td>
			</tr>
		</table>
	</form>
</center> -->
