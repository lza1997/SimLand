<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="A single-page template generated by MyEclipse Mobile Tools" />
	<title>Single-Page Application</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.mobile-1.4.3.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" />
</head>

<body>
	


	<!-- 商家列表 搜索列表 -->
	<!-- sellerListPage start-->
	<div data-role="page" id="sellerListPage">
		<div data-role="header" class="header_1" data-tap-toggle="false" data-position="fixed">
			
				<a  data-transition="slide" href="#" data-role="button" data-rel="back"
					class="back" data-icon="arrow-l">&nbsp;</a>
				<h1>
				<form action="${pageContext.request.contextPath}/shop/list" method="get" id="sellerListPage_form">
					<input type="search" name="k1" id="sellerListPage_search_k" placeholder="商家名称" value="${k1}${k}">
					<input type="hidden" name="icurrentPage" id="sellerListPage_currentPage" value="1">
					<input type="hidden" name="sort" id="sellerListPage_score" value="${sort}">
					<input type="hidden" name="sortType" id="sellerListPage_scoreType" value="${sortType}">
					<input type="hidden" name="stype" id="sellerListPage_stype" value="${stype}">
					<input type="hidden" name="totalPage" id="totalPage" value="${totalPage}">
				</form>
				</h1>
				<h1 class="h">
					<a  href="#" id="sellerListPage_score_btn">商家星级<span class="arrow"></span></a>
					<a  href="#">距离最近</a>
				</h1>
			
		</div>
		<!-- /header -->
		<div data-role="content">
			<!-- 
			<div id="sellerListPage_wrapper">
				<div id="sellerListPage_scroller">
					<div id="sellerListPage_pullDown" class="pullDown">
						<span class="pullDownIcon"></span><span class="pullDownLabel">下拉刷新...</span>
					</div>

					<div class="boxList">
						<div class="box">
							<h3>
								<a  href="#shop1Page">水贝<span class="color41AC98">中瑞</span>宝石有限公司</a>
								<a  href="#" class="a1">260M</a>
							</h3>
							<h6>深圳市水贝街珠宝商厦7-2</h6>
							<p class="p1">
								<span>主营产品:</span><span>水晶饰品;天然水晶首饰;天然珠宝</span>
							</p>
							<div class="line"></div>
							<p class="p2">
								<span class="s1">965</span> <span>件产品</span> | <span class="s2">&nbsp;</span> <span class="s3">236</span> <span>次</span>
								<span class="s4 star2">&nbsp;</span>
							</p>
						</div>
						<div class="box">
							<h3>
								<a  href="#shop1Page">金丽<span class="color41AC98">中瑞</span>国际珠宝交易中心</a>
								<a  href="#" class="a1">560M</a>
							</h3>
							<h6>深圳市水贝街珠宝商厦7-2</h6>
							<p class="p1">
								<span>主营产品:</span><span>水晶饰品;天然水晶首饰;天然珠宝</span>
							</p>
							<div class="line"></div>
							<p class="p2">
								<span class="s1">965</span> <span>件产品</span> | <span class="s2">&nbsp;</span> <span class="s3">236</span> <span>次</span>
								<span class="s4 star2">&nbsp;</span>
							</p>
						</div>
						<div class="box">
							<h3>
								<a  href="#shop1Page">万山<span class="color41AC98">中瑞</span>珠宝有限公司</a>
								<a  href="#" class="a1">750M</a>
							</h3>
							<h6>深圳市水贝街珠宝商厦7-2</h6>
							<p class="p1">
								<span>主营产品:</span><span>水晶饰品;天然水晶首饰;天然珠宝</span>
							</p>
							<div class="line"></div>
							<p class="p2">
								<span class="s1">965</span> <span>件产品</span> | <span class="s2">&nbsp;</span> <span class="s3">236</span> <span>次</span>
								<span class="s4 star2">&nbsp;</span>
							</p>
						</div>
						<div class="box">
							<h3>
								<a  href="#shop1Page">瑞丰银泰<span class="color41AC98">中瑞</span>美珠有限公司</a>
								<a  href="#" class="a1">780M</a>
							</h3>
							<h6>深圳罗湖区田贝4路68号</h6>
							<p class="p1">
								<span>主营产品:</span><span>水晶饰品;天然水晶首饰;天然珠宝</span>
							</p>
							<div class="line"></div>
							<p class="p2">
								<span class="s1">965</span> <span>件产品</span> | <span class="s2">&nbsp;</span> <span class="s3">236</span> <span>次</span>
								<span class="s4 star2">&nbsp;</span>
							</p>
						</div>
						
					</div>
					
					<div id="sellerListPage_pullUp" class="pullUp">
						<input hidden="hidden" id="sellerListPage_cp" value="1">
						<span class="pullUpIcon"></span><span class="pullUpLabel">上拉加载更多...</span>
					</div>
				</div>

			</div>

			-->


			<div class="wrapper top">
				<div class="scroller">
					<div class="boxList">
						<c:import url="sellerListAjax.jsp"/>
					</div>
					<div class="line"></div>
					<div id="pullUp">&nbsp;</div>
				</div>
			</div>


		</div>
		<c:import url="../footer.jsp"/>
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/shop.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/sellerList.js"></script>
	</div>
	<!-- SellerListPage end-->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/iscroll/iscroll.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/base.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/app.js"></script>
	
	
	

</body>
</html>