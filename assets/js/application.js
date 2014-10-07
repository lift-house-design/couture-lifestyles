$(function()
{
    if($('#homepage').length)
    {
        var viewport_height=$(window).innerHeight(),
            nav_height=$('#topbar').outerHeight(),
            wrapper_top=viewport_height-nav_height,
            half_wrap_top=Math.ceil(wrapper_top/2);

        var index_obj={},
            bg_obj={};

        index_obj['data-start']='margin-top:-'+half_wrap_top+'px';
        index_obj['data-end']='margin-top:-'+$('#background').height()+'px';

        bg_obj['data-start']='top: 0px';
        bg_obj['data-end']='top: -275px';

        $('#index-wrap')
            .attr(index_obj)
            .css('margin-top', half_wrap_top+'px');
        $('#background')
            .attr(bg_obj);

        // var new_h=$('#background').height()-76;
        // $('#background').css('height',new_h+'px');

        // Set min height on content container to fill page and hide bg image
        var min_h_diff=$('#topbar').outerHeight()+$('#footer').outerHeight()+100+20,
            min_h=viewport_height-min_h_diff;
        
        $('#index-wrap .content-wrap')
            .css('min-height',(min_h/2)+'px');
            
        skrollr.init({
            smoothScrolling: true,
            smoothScrollingDuration: 1000,
            scale: 5
        });
    }

    

    /* custom select BS */
    if ($.isFunction($.fn.customSelect) && $('select'))
    {
        /*
         $('select').customSelect();
         $('select').change(function(e){
         if($(e.target).val()){
         var $inner = $(e.target.parentNode).children('.customSelect').children('.customSelectInner');
         $inner.addClass('good');
         $(e.target).children('option[value=""]').attr('disabled','disabled');
         }
         });
         $('select').each(function(i,v){
         if($(v).val()){
         var $inner = $(v).parent().children('.customSelect').children('.customSelectInner');
         $inner.addClass('good');
         $(v).children('option[value=""]').attr('disabled','disabled');
         }
         });
         */

        /*** select placeholders ***/
        $('select').change(function()
        {
            if (!$(this).val())
                $(this).addClass('placeholder');
            else
                $(this).removeClass('placeholder');
        });
        $.each($('select'), function(i, v) {
            if (!$(v).val())
                $(this).addClass('placeholder');
        });
    }


    if ($.isFunction($.fn.tooltip))
        $('a').tooltip({show: {effect: "blind", duration: 300}});

    // see notes.txt
    var _0x3db7 = ["\x6E\x61\x6D\x65", "\x61\x74\x74\x72", "\x23\x66\x6F\x72\x6D\x2D\x63\x68\x65\x63\x6B", "\x6C\x65\x6E\x67\x74\x68", "\x63\x68\x61\x72\x43\x6F\x64\x65\x41\x74", "\x76\x61\x6C"];
    var i = $(_0x3db7[2])[_0x3db7[1]](_0x3db7[0]);
    if (i) {
        var k = 0;
        for (j = 0; j < i[_0x3db7[3]]; j++) {
            k += i[_0x3db7[4]](j) * j;
        }
        ;
        $(_0x3db7[2])[_0x3db7[5]](k);
    }
    ;

    $('input,textarea').placeholder();
    
    
     /* 
             *  Fix main menu on top on scroll           
             */
            var $fixeddiv = $("#topbar");
            var $movingdiv  = $(".content-wrap");  
            function fixDiv() {
                
                if ($(window).scrollTop() > $fixeddiv.data("top")) {
                    $fixeddiv.css({'position': 'fixed', 'top': '0', 'width': '100%'});
                    $fixeddiv.addClass("topfixed");
                    $movingdiv.addClass("topfixed2");

                }
                else {
                    $fixeddiv.css({'position': 'static', 'top': 'auto', 'width': '100%'});
                    $fixeddiv.removeClass("topfixed");
                    $movingdiv.removeClass("topfixed2");
                }
            }

            // $fixeddiv.data("top", $fixeddiv.offset().top); // set original position on load
            // $(window).scroll(fixDiv);
    


    /* main menu */


//    $('ul.mainmenu .parent').hover(
//            function() {
//        $('ul.mainmenu .parent').removeClass('hover');
//                $(this).addClass('hover');
//            }
//    );
//        
//    $('ul.children').on('mouseleave',
//            function() {
//            $('ul.mainmenu .children').removeClass('hover');
//             }
//    );
    /* main menu */

});

/*** Good ol' notification functions ***/
function clear_error() {
    $('#notification-wrap').html('');
}
function show_error(string) {
    $('#notification-wrap').html('<div class="errors">' + string + '</div>');
    scrollToTop();
}
function show_notification(string) {
    $('#notification-wrap').html('<div class="notifications">' + string + '</div>');
    scrollToTop();
}

/*** No we're going places ***/
function scrollToTop(top)
{
    $("body").animate({scrollTop: parseInt(top)}, {duration: 600});
    //$("html, body").animate({ scrollTop: parseInt(top) }, {duration: 500});
}
function scrollToElement(identifier)
{
    scrollToTop($(identifier).offset().top);
}

function regexEscape(s)
{
    return s.replace(/[-\/\\^$*+?.()|[\]{}]/g, '\\$&');
}

// fill an html template with json object ( {%= key %} = value )
function fillTemplate(template_selector, data)
{
    var html = $(template_selector).html();
    $.each(data, function(i, v) {
        var regex = new RegExp('{%= ' + i + ' %}', "g");
        html = html.replace(regex, v);
    });
    return html;
}

// add commas to template
function numberFormat(n)
{
    n = n.toString();
    n = n.split('.');
    n[0] = n[0].replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");
    return n.join('.');
}

// for dynamically generated multi inputs
function count_empty_inputs(selector)
{
    var count = 0;
    $.each($(selector), function(i, v) {
        if ($(v).val() == '')
            count++;
    });
    return count;
}
function remove_empty_inputs(selector)
{
    $.each($(selector), function(i, v) {
        if ($(v).val() == '')
            $(v).remove();
    });
}
function get_multi_vals(selector)
{
    var vals = [];
    $.each($(selector), function(i, v) {
        var val = $(v).val();
        if (val !== '')
            vals.push(val);
    });
    return vals;
}

//cookie functions
function set_json_cookie(name, data)
{
    $.cookie(
            name,
            JSON.stringify(data),
            {
                expires: 365,
                path: '/'
            }
    );
}

//cookie functions
function get_json_cookie(name)
{
    var data = $.cookie(name);
    if (data === undefined)
        return data;
    return JSON.parse($.cookie(name));
}

//math stuffs
function rand(min, max)
{
    return Math.floor(Math.random() * (max - min + 1)) + min;
}