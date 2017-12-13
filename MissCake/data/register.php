<?php
	$uname = @$_REQUEST['uname'];
		if($uname===null || $uname===""){
			die("uname required");
		}
	$upwd = @$_REQUEST['upwd'];
		if($upwd===null || $upwd===""){
			die("upwd required");
		}
	$phone = @$_REQUEST['phone'];
		if($phone===null || $phone===""){
			die("$phone required");
		}
	
	require("0_init.php");

	$sql = "INSERT INTO mc_user(uname,upwd,phone) VALUES('$uname','$upwd','$phone')";
	$result = mysqli_query($conn,$sql);
	
	if($result===false){
		echo "注册失败！<br>";
	}else{
		$uid = mysqli_insert_id($conn);
		echo "<script>
				alert('注册成功！去登陆');window.location.href='login.html'
			</script>";
 	}
?>