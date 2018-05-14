$(function () {
  setInterval(function () {
    var now = new Date();
    var year = now.getFullYear();
    var month = ("0" + now.getMonth() + 1).slice(-2);
    var day = ("0" + now.getDate()).slice(-2);
    var week_day = now.getDay();
    var week = ['日', '月', '火', '水', '木', '金', '土'];
    var hour = ("0" + now.getHours()).slice(-2);
    var minute = ("0" + now.getMinutes()).slice(-2);
    var second = ("0" + now.getSeconds()).slice(-2);
    $('#time').text(year + '年' + month + '月' + day + '日' + hour + ':' + minute + ':' + second + ' ' + '(' + week[week_day] + ')');
  }, 1000);
});