<!-- <?php
	date_default_timezone_set("Asia/Ho_Chi_Minh");
	// // $timezone=date_default_timezone_get();
	// // echo $timezone;
	echo date_default_timezone_get();
	echo date('d/m/Y');
// 	date_default_timezone_set('Asia/Ho_Chi_Minh');
// 	if (date_default_timezone_get()) 
// 	{
//     	echo 'date_default_timezone_set: ' . date_default_timezone_get() . '';
// 	}
// // echo date('d/m/Y H:i:s');
?> -->
<!-- <table width="990px">
	<tbody>
	<tr>
		<td>Cửa hàng: <strong>Shop bán điện thoại</strong>
		<br>
		Điện thoại: <strong>0999999999</strong>
		<br>
		Địa chỉ: <strong>số 3 phố Cầu Giấy, P.Láng Thượng, Q.Đống Đa, Hà Nội.</strong>
		</td>
		<td><div id="map" >
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.1131158083053!2d105.80123181440739!3d21.02815949317589!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab424a50fff9%3A0xbe3a7f3670c0a45f!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBHaWFvIHRow7RuZyBW4bqtbiB04bqjaSAoVVRDKQ!5e0!3m2!1svi!2s!4v1604908222112!5m2!1svi!2s" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
		</div></td>
	</tr>
	</tbody>
</table> -->
<script type="text/javascript">
				  tinymce.init({
					selector: '#noi_dung',
					theme: 'modern',
					width: 800,
					height: 400,
					plugins: [
					  'advlist autolink link image lists charmap print preview hr anchor pagebreak spellchecker',
					  'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
					  'save table contextmenu directionality emoticons template paste textcolor jbimages'
					],
					toolbar: 'insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image | print preview media fullpage | forecolor backcolor emoticons jbimages',
					relative_urls: false
				  });
				  
				  </script>
<textarea id="noi_dung" name="noi_dung" ><?php echo $noi_dung; ?></textarea>