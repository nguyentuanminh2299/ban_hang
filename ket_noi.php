<?php
    $conn=mysqli_connect("localhost","root","","ban_hang");
    if(mysqli_connect_errno()){
    	echo "Failed to" .mysqli_connect_error();
    	exit();
    }
    mysqli_query($conn,'SET NAMES "UTF8"');
?> 