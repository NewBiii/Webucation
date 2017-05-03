/**
 * Created by NewBee on 2017/5/3.
 */
$('.my-content').css('top', $('.navbar-inverse').height()+45);
$('.hid-btn,.show-btn').click(function () {
    if ($('.left-nav').css('display') == 'none') {
        $('.my-content').css('left', 30);
    } else {
        $('.my-content').css('left', $('.left-nav').width()+30);
    }
});
if ($('.left-nav').css('display') == 'none') {
    $('.my-content').css('left', 30);
} else {
    $('.my-content').css('left', $('.left-nav').width()+30);
}
$(window).resize(function () {
    $('.my-content').css('top', $('.navbar-inverse').height()+45);
    if ($('.left-nav').css('display') == 'none') {
        $('.my-content').css('left',30);
    } else {
        $('.my-content').css('left', $('.left-nav').width()+30);
    }
});
$('.layui-nav-side').css('top', $('.navbar-inverse').height());
$('.layui-my-nav').css('top', $('.navbar-inverse').height());

if ($('.navbar-inverse').width() < 768) {
    $('.layui-nav-side').hide();
} else {
    $('.layui-nav-side').show();
}
$(window).resize(function () {
    $('.layui-nav-side').css('top', $('.navbar-inverse').height());
    $('.layui-my-nav').css('top', $('.navbar-inverse').height());
    if ($('.navbar-inverse').width() < 768) {
        $('.layui-nav-side').hide();
    } else {
        $('.layui-nav-side').show();
    }
});

$(".hid-btn").click(function () {
    $('.layui-nav-side').hide();

});

$(".show-btn").click(function () {
    $('.layui-nav-side').show();

});