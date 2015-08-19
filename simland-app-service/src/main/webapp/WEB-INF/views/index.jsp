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

	<script type="text/javascript">
		contextPath = '${pageContext.request.contextPath}';
	</script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.textSearch-1.0.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/iscroll/iscroll-probe.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.slides.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/base.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/app.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/index.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/shop.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/commodity.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/sellerList.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/user.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/cart.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/order.js"></script>
	<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=FTvXZrsF9nk6s8t26PRyPn1P"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/smap.js"></script>
</head>

<body>
	
	<div data-role="page" id="indexPage">
		<div data-role="content">
		
			<div class="wrapper">
				<div class="scroller">
				
					<div class="logodiv">
						<span class="img">
							<img alt="" src="${pageContext.request.contextPath}/images/bg/logo.jpg">
						</span>
					</div>
		
					<div class="box">
						<a class="a a1" href="${pageContext.request.contextPath}/tuan/list" data-transition="slide">
							<span class="img"><img src="${pageContext.request.contextPath}/images/bg/index_1_r4_c2.jpg"></span>
							<span>团购</span>
						</a>
						<a class="a a2" href="${pageContext.request.contextPath}/auction/auctionView" data-transition="slide">
							<span class="img"><img src="${pageContext.request.contextPath}/images/bg/index_1_r4_c5.jpg"></span>
							<span>拍卖</span>
						</a>
						<a class="a a3" href="${pageContext.request.contextPath}/publicChips/publicChipsView" data-transition="slide">
							<span class="img"><img src="${pageContext.request.contextPath}/images/bg/index_1_r4_c10.jpg"></span>
							<span>众筹</span>
						</a>
					</div>
		
					<div class="box">
						<a class="a a1" href="#">
							<span class="img"><img src="${pageContext.request.contextPath}/images/bg/index_1_r6_c2.jpg"></span>
							<span>清仓</span>
						</a>
						<a class="a a2" href="#">
							<span class="img"><img src="${pageContext.request.contextPath}/images/bg/index_1_r7_c6.jpg"></span>
							<span>虚拟店铺</span>
						</a>
						<a class="a a3" href="#">
							<span class="img"><img src="${pageContext.request.contextPath}/images/bg/index_1_r7_c10.jpg"></span>
							<span>微商街</span>
						</a>
					</div>
		
		
					<div class="box1">
					
						<form action="${pageContext.request.contextPath}/shop/list" method="get" id="sellerListPage_form" data-transition="slide">
							<input type="hidden" name="icurrentPage" id="sellerListPage_currentPage" value="1">
							<input type="hidden" name="sort" id="sellerListPage_score">
							<input type="hidden" name="sortType" id="sellerListPage_scoreType">
							<input type="hidden" name="stype" id="sellerListPage_stype">
					
							<div class="input1">
								<span>店铺 |</span> <input class="txt" id="searchShop"
									data-role="none" name="k" maxlength="14" value="" type="text"> <input
									type="button" data-role="none" class="btn" id="searchShopBtn">
							</div>
			
							<div class="history">
								<div class="input1">
									<span>主营 |</span> <input class="txt" id="searchCategory"
										data-role="none" name="k1" maxlength="14" value="" type="text"> 
										<input type="button" data-role="none" class="btn" id="searchCategoryBtn" >
								</div>
									<div class="historyList">
										<ul>
											<!-- 
											<li><a  class="a1" href="#sellerListPage">老凤祥</a> <a  class="a2" href="#">X</a></li>
											<li><a  class="a1" href="#sellerListPage">施华洛世奇</a> <a  class="a2" href="#">X</a></li>
											<li><a  class="a1" href="#sellerListPage">周生生</a> <a  class="a2" href="#">X</a></li>
											 -->
										</ul>
									</div>
			
							</div>
						
						</form>
		
						<div class="clear"></div>
						<!-- 
						<div class="input2">
							<div class="msg_1">
								<a  data-transition="slide" href="${pageContext.request.contextPath}/user/messageCenter"><span>12</span></a>
							</div>
							<div class="msg_2">
								<a  data-transition="slide" href="${pageContext.request.contextPath}/user/collectShopShow"><span>56</span></a>
							</div>
						</div>
						 -->
					</div>
					
				</div>
			</div>	
			
			<div class="i-line-bg"></div>
			
		</div>
		<!-- /content -->
		<div data-role="footer" data-tap-toggle="false" data-position="fixed"
			data-theme="d" id="footer">
			<div data-role="navbar" class="myfooter no-top-border bg41AC98">
				<ul>
					<li><a  data-transition="slide" data-direction="reverse" href="${pageContext.request.contextPath}/main" class="ui-icon-index ui-btn-active">首页</a></li>
					<li><a  data-transition="slide" href="${pageContext.request.contextPath}/map/map1Page" class="ui-icon-map">地图</a></li>
					<li><a  data-transition="slide" href="${pageContext.request.contextPath}/buy/cart" class="ui-icon-purchase">进货单</a></li>
					<li><a  data-transition="slide" href="${pageContext.request.contextPath}/user/userCenter" class="ui-icon-my">我的</a></li>
				</ul>
			</div>
		</div>
		<!-- /footer -->
	</div>
	<!-- /page -->

</body>
</html>