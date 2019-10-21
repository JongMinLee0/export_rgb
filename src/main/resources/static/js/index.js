$(document).ready(function(){

    $(window).scroll(function(){
        var scroll = $(window).scrollTop();
        if(scroll > 1){
            $('.navbar').css({
                "background-color":"#fff",
                "border-bottom":"1px solid rgb(229,229,229)"
            });
            $('#myNavbar > ul > li a').css("color","black");
            $('body > nav > div > div.navbar-header > button').css("background-color","black");
        }else{
            $('.navbar').css({
                "background-color":"transparent",
                "border-bottom":"0px"
            });
            $('#myNavbar > ul > li a').css("color", "#fff");
            $('body > nav > div > div.navbar-header > button').css("background-color","white");
        }
    })
});