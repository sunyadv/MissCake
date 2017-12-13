  function loading(num){
        var n=parseInt($(" #loading").html());
        if(n<num){
            var timer=setInterval(e=>{
                n++;
               if(n<=num){
                   if(n>=100){
                       clearInterval(timer);
                       timer=null;
                       $("#load").fadeOut();
                   }else{
                       $("#loading").html(n+"%");
                   }
               }
            },20)
        }

    }
    loading(10);