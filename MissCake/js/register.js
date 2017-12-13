function yanzhen1(){
    var xhr = createXhr();
    xhr.open("get","yanzhen.php?uname="+$("uname").value,true);
    xhr.onreadystatechange = function(){
        if(xhr.readyState==4 && xhr.status==200){
            var resText = xhr.responseText;
            $("show_uname").innerHTML = resText;
            if(resText == "0"){
                $("show_uname").innerHTML = "用户名可以使用！";
            }else{
                $("show_uname").innerHTML = "用户名已经存在！";
            }
        }
    }
    xhr.send(null);
}
function yanzhen2(){
    var password = document.getElementById("upwd");
    if(password.value.length<8 || password.value.length>20){
        $("show_uname").innerHTML="请输入8～20字符，需同时包含英文和数字";
    }
}
function check_pwd(){
    var upwd = $("upwd").value;
    var cpwd = $("cpwd").value;
    if(upwd == cpwd){
        $("show_uname").innerHTML="通过";
    }else{
        $("show_uname").innerHTML="两次密码输入不一致";
    }
}