$(function() {
	$(".main_power .a1").click(function() {
		$(".a1_none").show();
	});

	$(".a1_close").click(function() {
		$(".a1_none").hide();
	});

	$(".a1_left").click(function() {
		$(".a1_none").hide();
	});

	$(".a1_right").click(function() {
		$(".a1_none").hide();
	});

	$(".main_power .a2").click(function() {
		$(".a2_none").show();
	});

	$(".a2_none p").click(function() {
		$(".a2_none").hide();
	});

	$(".a2_none span").click(function() {
		$(".a2_none").hide();
	});

	// 头部
	$(".tit_qianyi").click(function() {
		$(".a1_none").show();
	});

	$(".tit_beife").click(function() {
		$(".a2_none").show();
	});

	$(".Notraining p").click(function() {
		$(".Notraining").hide();
	});

	$(".Notraining span").click(function() {
		$(".Notraining").hide();
	});

	$(".tit_notr").click(function() {
		$(".Notraining").show();
	});

});
