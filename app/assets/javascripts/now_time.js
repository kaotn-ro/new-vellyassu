$(function(){
    setInterval(function(){
        var now = new Date();
        var y = now.getFullYear();
        var m = now.getMonth() + 1;
        var d = now.getDate();
        var w = now.getDay();
        var wd = ['日', '月', '火', '水', '木', '金', '土'];
        var h = now.getHours();
        var mi = now.getMinutes();
        var s = now.getSeconds();
        $('#time').text(y + '年' + m + '月' + d + '日' + h + '時' + mi + '分' + s + '秒' + '(' + wd[w] + ')');
    }, 1000);
});