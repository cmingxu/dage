// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require kindeditor
//= require highcharts
//= require highcharts/highcharts-more
//= require highcharts/modules/data
//= require highcharts/modules/exporting
//= require highcharts/themes/dark-blue
//= require highcharts/modules/funnel
//= require jquery.ui.datepicker
//= require bootstrap-carousel
//= require bootstrap-typeahead
//= require_self
//

function slideup() {
  $("#search_form").slideUp();
  $("#up").show();
  $("#down").hide();
}

function slidedown() {
  $("#search_form").slideDown();
  $("#up").hide();
  $("#down").show();
}

$(document).ready(function () {
	$.datepicker.regional['zh-CN'] = {
		closeText: '关闭',
		prevText: '&#x3C;上月',
		nextText: '下月&#x3E;',
		currentText: '今天',
		monthNames: ['一月','二月','三月','四月','五月','六月',
		'七月','八月','九月','十月','十一月','十二月'],
		monthNamesShort: ['一月','二月','三月','四月','五月','六月',
		'七月','八月','九月','十月','十一月','十二月'],
		dayNames: ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'],
		dayNamesShort: ['周日','周一','周二','周三','周四','周五','周六'],
		dayNamesMin: ['日','一','二','三','四','五','六'],
		weekHeader: '周',
		dateFormat: 'yy-mm-dd',
		firstDay: 1,
		isRTL: false,
		showMonthAfterYear: true,
		yearSuffix: '年'};
	$.datepicker.setDefaults($.datepicker.regional['zh-CN']);
  $(".date").datepicker();
});

////////// cargo destination select //////////////

$(document).ready(function () {
  controller_name = $('body').attr("class");
  $("li." + controller_name).addClass("active");

  $("#vr tr").hover(function () {
    $(this).parent().find("tr").removeClass("tr_hover");
    $(this).parent().find("tr:contains(" + $(this).find("td:first").text() + ")").addClass("tr_hover");
  });
});



$('.carousel').carousel()
