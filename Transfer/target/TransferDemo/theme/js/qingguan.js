// JavaScript Document
var _box =$('#box');
var _interval=6000; //刷新间隔时间3秒
function gdb(){
	$("<dd style='height:0px;'><div class='fg-left'><span>刚刚</span></div><div class='fg-right'><h4>订单20180521101035zjsu</h4><a href='#'>已报关</a></div></dd>").prependTo('#box dl');
	var _first=$('#box dl dd:first');
	_first.animate({height: '+53px'}, "slow");
	var _last=$('#box dl dd:last');
	_last.remove();
	setTimeout(function(){
		gdb();
	},_interval);
}; 
gdb();