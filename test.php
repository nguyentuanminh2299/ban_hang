<!DOCTYPE html>
<html>
<head>
	<title></title>
	<link rel="stylesheet" type="text/css" href="giao_dien/giao_dien.css">
	<!-- <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/test.js"></script> -->
</head>
<body>
	<!-- <script>
		$("input.input-qty").each(function() {
		  var $this = $(this),
		    qty = $this.parent().find('.is-form'),
		    min = Number($this.attr('min')),
		    max = Number($this.attr('max'))
		  if (min == 0) {
		    var d = 0
		  } else d = min
		$($this.qty).on('click', function() {
		    if ($(this).hasClass('minus')) {
		      if (d > min) d += -1
		  		console.log("1");

		    } else if ($(this).hasClass('plus')) {
		      var x = Number($this.val()) + 1
		      if (x <= max) d += 1
		    }
		    $this.attr('value', d).val(d)
		  })
		})
</script> -->
	<div class="buttons_added">
		
	  	<input class="minus is-form" type="button" value="-" onclick="minus()">
	  	<input class="input-qty" id="cac" aria-label="quantity" max="10" min="1" name="cc" type="number" value="3">
	  	<input class="plus is-form" type="button" value="+" onclick="plus()">

		  	<script type="text/javascript">
		  		function plus(){
		  			var a=document.getElementById("cac").value;
		  			if(a>=0) a++;
		  			document.getElementsByName("cc").value=a;
		  			var them_vao=document.getElementById("them_vao");
		  			// var b=document;
		  			them_vao.innerHTML="cac";
		  			// document.getElementsByName()
		  		}

		  		function minus(){
		  			var a=document.getElementById("cac").value;
		  			if(a>=1) a--;
		  			document.getElementById("cac").value=a;

		  		}
		  	</script>
		<td><p id="them_vao">cqq</p></td>
	  	<!-- <p id="them_vao"></p> -->
	</div>
</body>
</html>


<!-- <!DOCTYPE html>
<html>
<body>
    <div id="name">WEB CƠ BẢN</div>
    <script>
        var hoten = document.getElementById("name").innerHTML;
        alert("Xin chào: " + hoten);
    </script>
</body>
</html>
<td style="margin-left: 5px"></td> -->

<!-- <input type="" name=""> -->
