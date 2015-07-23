var order = {
	initialize : function() {

		// 提交订单按钮
		$("#submitOrderBtn").unbind().click(order.submitOrder);

	},
	submitOrder : function() {
		$.ajax({
			type : "get",
			url : app.servicerURL + "/order/submitOrder",
			data : $.mobile.activePage.find("#orderForm").serialize(),
			cache : false,
			async : true,
			dataType : 'jsonp',
			success : submitOrderCallBack,
			error : function(data, df, d) {
				app.message("网络请求失败，请检查您的网络设置")
			}
		});
		
		function submitOrderCallBack(data){
			if(data.code==1){
				app.message(data.msg)
			}else{
				app.message(data.msg)
			}
		}
	}
}