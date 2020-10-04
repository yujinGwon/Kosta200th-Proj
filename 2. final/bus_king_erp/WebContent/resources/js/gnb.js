(function($){
    $(function(){
        
        var $wrap = $('.wrap'),
            $gnb = $wrap.find('.gnb'),
            $gnb_a = $gnb.find('a'),
            $lnb = $wrap.find('.lnb-con'),
            $lnb_a = $lnb.find('a');
        
        $gnb.on('click', 'a', function(){
        
            var e = $(this).index();
            
            $lnb.removeClass('on');
            $lnb.eq(e).addClass('on');
            
        });
        
        $gnb_a.on('click', function(){
            
           $gnb_a.removeClass();
           $(this).addClass('on');
            
        }); 
        
        $lnb_a.on('click', function(){
           $lnb_a.removeClass();
            $(this).addClass('on');
        });
        
    });
})(jQuery);