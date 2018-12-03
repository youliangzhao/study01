//头部标题
$(function() {
	$(".tit_bs_1").click(function() {
		$(".bs_none5").show();
	});

	$(".tit_bs_2").click(function() {
		$(".bs_none6").show();
	});

	$(".tit_bs_3").click(function() {
		$(".det_hid").show();
	});

	$(".tit_bs_0").click(function() {
		$(".bs_none3").show();
	});

	$(".tit_bs_no4").click(function() {
		$(".bs_none4").show();
	});

	$(".tit_bs_yea").click(function() {
		$(".years").show();
	});

	$(".yea_closes").click(function() {
		$(".years").hide();
	});

	$(".ye_cancel").click(function() {
		$(".years").hide();
	});

	$(".ye_determine").click(function() {
		$(".det_hid").show();
		$(".years").hide();
	});

	// 上报汇总
	$(".main_power .bs_a1").click(function() {
		$(".bs_none1").show();
	});

	$(".main_power .bs_none1 p").click(function() {
		$(".bs_none1").hide();
	});

	$(".main_power .bs_none1 span").click(function() {
		$(".bs_none1").hide();
	});

	// 远程清卡
	$(".main_power .bs_a2").click(function() {
		$(".bs_none2").show();
	});

	$(".main_power .bs_none2 p").click(function() {
		$(".bs_none2").hide();
	});

	$(".main_power .bs_none2 span").click(function() {
		$(".bs_none2").hide();
	});

	// 发票资料
	$(".main_power .bs_a3").click(function() {
		if($('#menuTrainingCode').val() == "001001003" || $('#menuTrainingCode').val() == "001001004")
			$(".fpzh").show();
		else
			alertInfo("非实训主要涉及业务，不做功能操作！");
//		$(".bs_none3").show();
	});

	$(".main_power .bs_none3 p").click(function() {
		$(".bs_none3").hide();
	});

	$(".main_power .bs_none3 span").click(function() {
		$(".bs_none3").hide();
	});

	// 月度统计
	$(".main_power .bs_a4").click(function() {
		$(".bs_none4").show();
	});

	$(".bs_none4 .closes").click(function() {
		$(".bs_none4").hide();
	});

	$(".submi .cancel").click(function() {
		$(".bs_none4").hide();
	});

	// 月度统计表格
	$(".submi .determine").click(function() {
		$(".det_hid").show();
		$(".bs_none4").hide();
	});

	$(".det_hid .closs").click(function() {
		$(".det_hid").hide();
	});

	$(".det_hid .shut").click(function() {
		$(".det_hid").hide();
	});

	// 办税厅抄报
	$(".bs_a5").click(function() {
		$(".bs_none5").show();
	});

	$(".bs_none5 .closed").click(function() {
		$(".bs_none5").hide();
	});

	$(".bs_btn .away").click(function() {
		$(".bs_none5").hide();
	});

	$(".sure").click(function() {
		$(".rubric").show();
		$(".bs_none5").hide();
	});

	$(".rubric .rub_close").click(function() {
		$(".rubric").hide();
	});

	$(".rub_btn .rub_btn_no").click(function() {
		$(".rubric").hide();
	});

	$(".rub_btn .rub_btn_ok").click(function() {
		$(".details").show();
		$(".rubric").hide();
	});

	$(".det_close").click(function() {
		$(".details").hide();
	});

	$(".details span").click(function() {
		$(".details").hide();
	});

	// 资料传出
	$(".bs_a6").click(function() {
		$(".bs_none6").show();
	});

	$(".bs_no_clos").click(function() {
		$(".bs_none6").hide();
	});

	$(".aways").click(function() {
		$(".bs_none6").hide();
	});

	$(".confirmx").click(function() {
		$(".Outgoing").show();
		$(".bs_none6").hide();

	});

	$(".out_close").click(function() {
		$(".Outgoing").hide();

	});

	$(".zl_close").click(function() {
		$(".Outgoing").hide();
	});

	$(".zl_yes").click(function() {
		$(".successx").show();
		// $(".Outgoing").hide();
	});

	$(".successx p").click(function() {
		$(".successx").hide();
	});

	$(".successx span").click(function() {
		$(".successx").hide();
	});
	//弹出大框关闭
	$('.Issue_close').click(function() {
		$('.Issue').hide();
	});
	//状态查询
	$(".bs_a7").click(function() {
		var li_go = $('.whole .whole_ul ul li:last').find(".whole_right .whole_r_go").length;
		var li_no = $('.whole .whole_ul ul li:last').find(".whole_right .whole_r_no").length;
		if(li_go > 0 || li_no > 0) {
			$("#report_info").text("是");
		} else {
			$("#report_info").text("否");
		}
		
		$(".bs_none7").show();
	});
	//金税设备状态查询模块切换模块
	$('.tab','.tabs').on('click',function(argument) {
		var that = $(this);
		if(that.hasClass('active')){

		}else{
			that.addClass('active').siblings().removeClass('active');
			$('.detail','.infobox').each(function(){
				if(!$(this).hasClass('active')){
					console.log(this);
					$(this).addClass('active').siblings().removeClass('active');
					return false;
				}
			});			

		}
	});
	
	$('.dl_exit').click(function() {
		$('.fpzh').hide();
	});
	
	$('.dl_showtip').click(function() {
		alertInfo("非实训主要涉及业务，不做功能操作！");
	});
	
	$('.dl_print').click(function() {
		$('.fpzh').hide();
		if($('.winbox').find('.tab1').hasClass('active')) {
			$('#tax_printPT').show();
		} else {
			$('#tax_printZY').show();
		}
		checkCurrentIsNeedSubmitAndTurnURL("查询并打印增值税专用发票汇总表", null);
		checkCurrentIsNeedSubmitAndTurnURL("查询并打印增值税专用发票汇总表及增值税普通发票汇总表", null);
	});
	
	
	
	
	
});

function sswitch(that,num){
	var that = $(that);
	if(!that.hasClass('active')){
		that.addClass('active').siblings().removeClass('active');
		$('.winbox').find('.tab'+num+'').addClass('active').siblings().removeClass('active');
		//$('.tab'+num+''+,'.winbox').addClass('active').siblings().remmoveClass('active');
	}
}
