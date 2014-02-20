/*
 Developer: insub; 100528
*/

// IE6背景图片缓存
if(jQuery.browser.msie && parseInt(jQuery.browser.version, 10) == 6) {
  try {
    document.execCommand("BackgroundImageCache", false, true);
  } catch(err) {}
}

function addFavorite(){　 // 加入收藏
	if (document.all){
		window.external.addFavorite('http://www.jumaimai.com', '居买卖精致家居物件，满足您生活所需');
	}else if (window.sidebar){
		window.sidebar.addPanel('居买卖精致家居物件，满足您生活所需', 'http://www.jumaimai.com', "");
	}
}

function setHomepage(){　 // 设为首页
	if (document.all){
		document.body.style.behavior = 'url(#default#homepage)';
		document.body.setHomePage('http://www.xiaotuanzi.com');
	}else if (window.sidebar){
		if (window.netscape){
			try {
				netscape.security.PrivilegeManager.enablePrivilege("UniversalXPConnect");
			}catch (e) {
				alert("该操作被浏览器拒绝，如果想启用该功能，请在地址栏内输入 about:config,然后将项 signed.applets.codebase_principal_support 值该为true");
				return false;
			}
		}
		var prefs = Components.classes['@mozilla.org/preferences-service;1'].getService(Components.interfaces.nsIPrefBranch);
		prefs.setCharPref('browser.startup.homepage', 'http://www.xiaotuanzi.com');
	}
}

function formatMoney(num) { // 格式化金额
	num = num.toString().replace(/\$|\,/g,'');
	if(isNaN(num))
	num = "0";
	sign = (num == (num = Math.abs(num)));
	num = Math.floor(num*100+0.50000000001);
	cents = num%100;
	num = Math.floor(num/100).toString();
	if(cents<10)
	cents = "0" + cents;
	for (var i = 0; i < Math.floor((num.length-(1+i))/3); i++)
	//num = num.substring(0,num.length-(4*i+3))+','+  加上分隔符
	num = num.substring(0,num.length-(4*i+3))+
	num.substring(num.length-(4*i+3));
	return (((sign)?'':'-') + num + '.' + cents);
}


$(document).ready(function() {
	
});


// nav and quickMenu
//  $(function(){
//	$(".nav li>a").eq(navTag).css({"color":"#fff", "font-weight":"bold", "font-size":"14px"});
//  })
var navTag=0;

$(function(){if(navTag <=6){
	$(".nav li>a").eq(navTag).css({"color":"#fff", "font-weight":"bold", "font-size":"14px"});
	}

	$(".nav li:eq(2),.nav li:eq(4),.nav li:eq(12)").hover(
		function () {
			$(this).find("#sub01,#sub02,#sub03").show();
			$(this).css({"background-color":"#fff","position":"relative","top":"1px","left":"0px"})
			$(this).find("a:first").css({"color":"#4a618b","font-weight":"bold"})
			$("#sub03 h2:eq(3)").addClass("w03")
			$("#sub03 h2:last").css({"background":"none"})
		},
		function () {
			$(this).find("#sub01,#sub02,#sub03").hide();
			$(this).css({"background-color":"","position":"relative","top":"0px","left":"0px"})
			$(this).find("a:first").css({"color":"#BFCCE4","font-weight":"normal"})
			$("#sub03 h2:eq(3)").addClass("w03")
			$("#sub03 h2:last").css({"background":"none"})			
		})
//quickMenu	
$("#quickMenu li:eq(5)").hover(
		function () {
			$(this).find("#subQuick").show();
			$(".quickhover").addClass("quickon");
		},
		function () {
			 $(this).find("#subQuick").hide();
			 $(".quickhover").removeClass("quickon");
		}
	)
});

/**
 * name		:	caseshow
 * author	:	Mark Qin
 * version	:	1.0
 * date	    :	2011/03/14
 * relating :	jQuery-1.4.2
 * log		:	
 */
(function(a){a.fn.caseshow=function(g){g=jQuery.extend({overlayBgColor:"#555555",overlayOpacity:0.8,windowTop:30,contentBox:".casebox"},g);var i=a(this);var d=0;var m=0;i.each(function(n){a(this).find(g.contentBox).attr("id","itemContent_"+n)});function e(){l(a(this));return false}function l(n){a("embed, object, select").css({visibility:"hidden"});f(n)}function f(n){a("body").append('<div id="caseshow_overlay"></div><div id="caseshow"><div id="caseshow_main"><div id="caseshow_content"></div><div id="caseshow_info"></div></div><span class="caseshow_prev">prev</span><span class="caseshow_next">next</span><span class="caseshow_close">close</span></div>');var o=h();a("#caseshow_overlay").css({backgroundColor:g.overlayBgColor,opacity:g.overlayOpacity,height:o[1]}).fadeIn();a("#caseshow").css({width:a(g.contentBox).width(),height:580});a("#caseshow").css({top:o[5]+(o[3]-a("#caseshow").height())/2-g.windowTop,left:(o[2]-a("#caseshow").width())/2}).show();a(".caseshow_close").hover(function(){a(this).addClass("caseshow_close_hover")},function(){a(this).removeClass("caseshow_close_hover")});a("#caseshow_overlay,.caseshow_close").click(function(){j()});a(document).keyup(function(q){var r=q.keyCode?q.keyCode:q.which;if(r==27){j()}});var p=n.find(g.contentBox).attr("id");d=parseInt(p.substr(p.indexOf("_")+1));m=d;k();c();b();a(".caseshow_next").click(function(){if(m>=i.length-1){b()}else{m=m+1;k();c();b()}return false}).hover(function(){a(this).addClass("caseshow_next_hover")},function(){a(this).removeClass("caseshow_next_hover")});a(".caseshow_prev").click(function(){if(m<=0){b()}else{m=m-1;k();c();b()}return false}).hover(function(){a(this).addClass("caseshow_prev_hover")},function(){a(this).removeClass("caseshow_prev_hover")});a(window).resize(function(){var q=h();a("#caseshow_overlay").css({height:q[1]});if(a.browser.msie&&a.browser.version==6){a("#caseshow").css({width:a(g.contentBox).width()});a("#caseshow").css({top:q[5]+(q[3]-a("#caseshow").height())/2-g.windowTop,left:(q[2]-a("#caseshow").width())/2})}else{a("#caseshow").css({width:a(g.contentBox).width(),height:a(g.contentBox).height()});a("#caseshow").css({top:q[5]+(q[3]-a("#caseshow").height())/2-g.windowTop,left:(q[2]-a("#caseshow").width())/2})}})}function k(){var n=a("#itemContent_"+m).children().clone();a("#caseshow_content").children().remove();a("#caseshow_content").append(n)}function c(){var n="<div class='caseshow_page'>"+(m+1)+"<span>of</span>"+i.length+"</div>";a("#caseshow_info").children().remove();a("#caseshow_info").append(n)}function b(){if(m<=0){a(".caseshow_prev").addClass("caseshow_prev_disable")}else{if(m<i.length-1){a(".caseshow_next").removeClass("caseshow_next_disable")}}if(m>=i.length-1){a(".caseshow_next").addClass("caseshow_next_disable")}else{if(m>0){a(".caseshow_prev").removeClass("caseshow_prev_disable")}}}function j(){a("#caseshow").remove();a("#caseshow_overlay").fadeOut(function(){a("#caseshow_overlay").remove()});a("embed, object, select").css({visibility:"visible"})}function h(){return[a(document).width(),a(document).height(),a(window).width(),a(window).height(),a(document).scrollLeft(),a(document).scrollTop()]}return this.unbind("click").click(e)}})(jQuery);
