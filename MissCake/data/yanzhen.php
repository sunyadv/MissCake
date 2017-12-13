<?php
	$uname = @$_REQUEST["uname"];
	
	require("0_init.php");
	$sql = "SELECT * FROM mc_user WHERE uname='$uname'";
	$result = mysqli_query($conn,$sql);
	$row = mysqli_fetch_row($result);
	if($row===null){
		echo "0";
	}else{
		echo "1";
 	}
?>