btn.onclick = function(){
    var uname1 = uname.value;
    var upwd1 = upwd.value;
    sessionStorage.setItem("uname",uname1);
    setTimeout(function(){
        location.href = "index.html";
    },2000)
}