function task(){
    //查找id为slider下的class为show的元素show
    var show=document.querySelector("#slider>#list>.show");
    show.className="";//清除show的class
    if(show.nextElementSibling){
        //设置show的下一个兄弟的class为show
        show.nextElementSibling.className="show";
    }else{
        show.parentNode.firstElementChild.className="show";
    }
}
setInterval(task,8000);

function button(){
    //查找id为slider下的class为show的元素show
    var show=document.querySelector("#slider>#buttons>.on");
    show.className="";//清除show的class
    if(show.nextElementSibling){
        //设置show的下一个兄弟的class为show
        show.nextElementSibling.className="on";
    }else{
        show.parentNode.firstElementChild.className="on";
    }
}
setInterval(button,8000);

var n = sessionStorage.getItem("uname");
if(n){
    welcome.innerHTML = `欢迎回来：${n} <a href="logout.html">退出登录</a>`;
}else{
    welcome.innerHTML = `<a href="login.html">登录</a>/<a href="register.html">注册</a>`;
}

$("#buttons").on("click","li",e=>{
    move=$(e.target).index();
    $("#buttons").children(":eq("+move+")").addClass("on")
        .siblings().removeClass("on");
    $("#list").children(":eq("+move+")").addClass("show")
        .siblings().removeClass("show");
});