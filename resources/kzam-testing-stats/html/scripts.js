$(function(){
    window.onload = function(e){
        window.addEventListener('message', function(event){
            var item = event.data;
            console.log (item.type);
            if(item !== undefined && item.type === "logo"){
                $('#logo').delay(100).fadeIn("slow");
            } else if (item.display === false){
                $('#logo').fadeOut("slow");
            }
        })
    }
})