(function($){
    $(function(){

        var $aside = $('aside'),
        	$aside_tr = $('.aside'),
            $btn = $('.btn');

        $aside_tr.hide();
        $aside.hide();
        
        $btn.on('click', function(){
        	
        	
            var e = $btn.index(this);
            
            $aside_tr.eq(e).toggle(500);
            $aside.eq(e).toggle(500);
             
             if($(this).val()=="더보기")
            {
                $(this).val("닫기");
            } else {
                $(this).val("더보기");
            }
        });
        
    });
})(jQuery);