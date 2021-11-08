let btn_close = document.querySelector('#btn_close');
btn_close.addEventListener("click",function(event){

    document.getElementById("msg_boas_vindas").classList.add("hide");        
    setTimeout(function() { document.getElementById("msg_boas_vindas").classList.add("hide2"); }, 700);

})