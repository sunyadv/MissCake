<?php
		$uname = @$_REQUEST['uname'];
		$upwd = @$_REQUEST['upwd'];

		require('0_init.php');
		

		$sql = "SELECT * FROM mc_user WHERE uname='$uname' AND binary upwd='$upwd'";
		$result = mysqli_query($conn,$sql);

		if($result===false){
			echo "SQl执行失败！<br>";
		}else{
			$user = mysqli_fetch_assoc($result);
			if($user===null){
				echo "<script>
						alert('用户名或密码错误！'); window.location.href='login.html';
					  </script>";
			}else{
				echo "<script>
						alert('成功登录'); window.location.href='index.html';
					  </script>";
			}
		}
?>