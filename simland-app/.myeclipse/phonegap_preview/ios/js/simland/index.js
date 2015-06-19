var index = {
	initialize : function() {
		// 店铺搜索按钮
		$("#searchShopBtn").click(index.searchShop);
		// 主营类别按钮
		$("#searchCategoryBtn").click(index.searchCategoryBtn);
		// 主营类别获得焦点
		$("#searchCategory").focus(index.searchCategoryFocus);
		// 主营类别失去焦点
		$("#searchCategory").blur(index.searchCategoryBlur);

	},
	searchCategoryFocus : function() {// 搜索主营类别获得焦点
		$(".historyList").show();
	},
	searchCategoryBlur : function() {// 搜索主营类别失去焦点
		setTimeout(function() {
			$(".historyList").hide();
		}, 100)
	},
	searchShop : function() {// 搜索店铺跳转
		$("#sellerListPage_stype").val(0);
		$("#sellerListPage_search_k").val($("#searchShop").val());
		$.mobile.changePage("#sellerListPage", "slideup");
	},
	searchCategoryBtn : function() {// 主营类别搜索
		$("#sellerListPage_stype").val(1);
		$("#sellerListPage_search_k").val($("#searchCategory").val());
		$.mobile.changePage("#sellerListPage", "slideup");
		index.setHistoryList($("#searchCategory").val(), 0);
	},
	setHistoryList : function(key, type) {// 搜索历史
	
		
		if (key == null || $.trim(key) == '')
			return;
		
		var flag = true;
		for (var i = 1; i <= 3; i++) {
			if (localStorage.getItem("k" + i) == key) {
				flag = false;
			}
		}

		if (flag) {
			
			for (var i = 3; i >= 1; i--) {
				if (i == 1) {
					localStorage.setItem(("k" + i), key);
				} else {
					localStorage.setItem(("k" + i), localStorage.getItem("k"
							+ (i - 1)));
				}
			}
			
			$(".historyList ul").html("");
			
			for (var i = 1; i <= 3; i++) {
				if((localStorage.getItem('k' + i))!=null&&(localStorage.getItem('k' + i))!='null')
					$(".historyList ul").append("<li><a class='a1' href='#sellerListPage'>"+(localStorage.getItem('k' + i))+"</a> <a index='"+i+"' class='a2' href='#'>X</a></li>");
			}
			
		}


	}
}

index.initialize();