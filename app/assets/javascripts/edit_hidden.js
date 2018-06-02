$(function () {
  setInterval(function () {
    var year = $('#worktime_end_time_1i').attr("value");
    var month = $('#worktime_end_time_2i').attr("value");
    var day = $('#worktime_end_time_3i').attr("value");
    if(year == 1 && month == 1 && day == 1) {
      $('#worktime_end_time_1i').attr("value", null);
      $('#worktime_end_time_2i').attr("value", null);
      $('#worktime_end_time_3i').attr("value", null);
    }
    for(var i = 0; i < 3; i++){
      var rest_year = $('#worktime_rest_times_attributes_' + i + '_end_time_1i').attr("value");
      var rest_month = $('#worktime_rest_times_attributes_' + i + '_end_time_2i').attr("value");
      var rest_day = $('#worktime_rest_times_attributes_' + i + '_end_time_3i').attr("value");
      if(rest_year == 1 && rest_month == 1 && rest_day == 1) {
        $('#worktime_rest_times_attributes_' + i + '_end_time_1i').attr("value", null);
        $('#worktime_rest_times_attributes_' + i + '_end_time_2i').attr("value", null);
        $('#worktime_rest_times_attributes_' + i + '_end_time_3i').attr("value", null);
        break;
      }
    }
  }, 1000);
});

