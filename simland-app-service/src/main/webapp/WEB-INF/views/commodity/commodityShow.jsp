<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
	<!-- Product1Page 产品明细页面 start  -->
	<div data-role="page" id="CommodityPage">
		<div data-role="header" class="header_1"  data-tap-toggle="false" data-position="fixed">
			<a  data-transition="slide" href="#" data-role="button" data-rel="back"
				class="back" data-icon="arrow-l">&nbsp;</a>
			<h1>宝贝明细</h1>
		</div>
		<!-- /header -->
		<div data-role="content">
			<div class="wrapper top">
				<div class="scroller">
				
					<div class="commodityBx">
							
							
						<div class="wrapperRow c_height">
							<div class="scrollerRow c_height c_img">
								<div class="slide">
									<img alt="" src="${pageContext.request.contextPath}/${commodity.getImg(0)}">
								</div>
								<c:forEach items="${commodity.inventoryMap}" var="item">
									<c:if test="${item.value[2]!=null&&item.value[2]!=''}">
										<div class="slide">
											<img src="${pageContext.request.contextPath}/${item.value[2]}">
										</div>
									</c:if>
								</c:forEach>						
							</div>
						</div>			
			
						<div class="c_title">
							<div class="t1">
								<span>${commodity.name}</span>
							</div>
							<div class="t2">
								<a data-transition='slide' href="${pageContext.request.contextPath}/buy/chatMessage?sid=${commodity.sid}"><span class="s1"></span></a>
								<span class="s2 c_listMenu"></span>
								<ul class="listMenu">
									<li>
										<a href="javascript:;" data-role="none" sid="1">
											<span class="img1"></span>
											<span>产品二维码</span>
										</a>
									</li>
									<li>
										<a href="javascript:;" data-role="none" sid="1">
											<span class="img1"></span>
											<span>分享</span>
										</a>
									</li>
									<li>
										<a href="javascript:;" data-role="none" sid="1">
											<span class="img1"></span>
											<span>收藏</span>
										</a>
									</li>
									<li>
										<a href="javascript:;" data-role="none" sid="1">
											<span class="img1"></span>
											<span>进入收藏夹</span>
										</a>
									</li>
								</ul>
							</div>
							
							<div class="c_price">
								<strong class="red_CD2C4C">￥ <fmt:formatNumber value="${commodity.marketPrice}" pattern="#,#00.00#"/></strong>
							</div>
						</div>
						

						<div class="line clear"></div>
						
						
						<div class="c_shop">
							<div class="shop_head">
								<div class="img"><a href="${pageContext.request.contextPath}/shop/showShop?id=${commodity.sid}" data-transition="slide"><img alt="" src="${pageContext.request.contextPath}/${commodity.shop.clogo}"></a></div>
								<span class="tit"><a href="${pageContext.request.contextPath}/shop/showShop?id=${commodity.sid}" data-transition="slide">${commodity.shop.cname}</a></span>
							</div>
							<div class="info">
								<div class="infoBox">
									<span class="s1">${commodity.shop.commodityNum}</span>
									<span class="s2">全部商品</span>
								</div>
								<div class="infoBox">
									<span class="s1">${commodity.shop.commodityNum}</span>
									<span class="s2">全部商品</span>
								</div>
								<div class="infoBox">
									<span class="s1">${commodity.shop.collectNum}</span>
									<span class="s2">收藏人数</span>
								</div>
								<div class="infoBox">
									<span class="star star${commodity.shop.score}"></span>
								</div>
							</div>
							<div class="btn">
								<a class="b1 b" href="javascript:;">查看分类</a>
								<a class="b2 b" href="${pageContext.request.contextPath}/shop/showShop?id=${commodity.sid}" data-transition="slide">进入店铺</a>
							</div>
						</div>
						<div class="line clear"></div>
						
						<div class="c_chose">
							<a data-transition="pop" href="#addCartPopup" data-rel="popup" data-position-to="window"><span class="s1">已选：</span></a>
							<a class="s2_a" data-transition="pop" href="#addCartPopup" data-rel="popup" data-position-to="window">
								<span class="s2">请选择</span>
								<span class="s3"></span>
							</a>
						</div>
			
						<div class="commTags">
							<a  class="a1 on" i="1" data-transition="none" href="#">产品详情</a> 
							<a  class="a2" i="2" data-transition="none" href="#">产品评价</a>
						</div>
						<div class="c_infoBox">
							<div class="c_infoBox_tag on" id="page1">
								${commodity.commodityDetails.info}
							</div>
							<div class="c_infoBox_tag" id="page2">
								<div class="p_appraisal_line">
									<b>很好</b>
									<p>颜色分类：深紫色</p>
									<p>
										叶****2<span class="time">2015-06-03</span>
									</p>
								</div>
								<div class="p_appraisal_line">
									<b>很好</b>
									<p>颜色分类：深紫色</p>
									<p>
										叶****2<span class="time">2015-06-03</span>
									</p>
								</div>
								<div class="p_appraisal_line">
									<b>很好</b>
									<p>颜色分类：深紫色</p>
									<p>
										叶****2<span class="time">2015-06-03</span>
									</p>
								</div>
								<div class="p_appraisal_line">
									<b>很好</b>
									<p>颜色分类：深紫色</p>
									<p>
										叶****2<span class="time">2015-06-03</span>
									</p>
								</div>
							</div>
							
						</div>
						<div class="menu_height"></div>
						<div class="bottom_height"></div>
					
					</div>
				</div>
		
			</div>
		</div>
		
		
		<div data-role="footer" data-tap-toggle="false" data-position="fixed"
			data-theme="d" style="border-top:none;">

			<div class="btn">
				<a  class="a1" id="addCartBtn" data-transition="pop" href="#addCartPopup" data-rel="popup" data-position-to="window">加入进货单</a> 
				<a  class="a2" id="goBuyBtn" data-transition="pop" href="#addCartPopup" data-rel="popup" data-position-to="window">直接购买</a>
			</div>
			
			<c:import url="../footer.jsp"/>
			
		</div>
		
		
			<div id="addCartPopup" data-role="popup" class="popupBox">
				<a href="#" data-rel="back" data-role="button" data-theme="a" data-transition="slideup" data-icon="delete" data-iconpos="notext" class="ui-btn-right"> Close</a>
				<div class="popup">
					<form action="${pageContext.request.contextPath}/buy/addCart" class="cartForm" method="post" data-transition="slideup">
						<input type="hidden" name="_stype" value="ajax"/>
						<div class="box">
							<div class="img">
								<img alt="" src="${pageContext.request.contextPath}/${commodity.getImg(2)}">
							</div>
							<div class="info inventoryShowBox_${commodity.id}">
							
								<span class="s1">￥<span class="price"><fmt:formatNumber value="${commodity.marketPrice}" pattern="#,#00.00#"/></span></span>
								<span class="s2">库存 <strong class="inventoryNum"></strong> 件</span>
								<span class="s3">已选 <span class="attr1ValShow">请选择</span> <span class="attr2ValShow"></span></span>
								<input type="hidden" value="${commodity.id}" name="cid"/>
								<input type="hidden" value="" id="buyTypeHid"/>
								<input type="hidden" class="attr1Val" name="attr1Val" tit="${commodity.attr1.name}" value=""/>
								<input type="hidden" class="attr2Val" name="attr2Val" tit="${commodity.attr2.name}" value=""/>

							</div>
						</div>
						<div class="line"></div>
						<c:if test="${fn:length(commodity.attr1List)>0}">
						<div class="box">
							<span class="title">${commodity.attr1.name}</span>
							<div class="attr1">
								<c:forEach items="${commodity.attr1List}" var="item" varStatus="status">
									<a class="choseAttr1" cid="${commodity.id}" aid="${item[0]}" href="#">${item[1]}</a>
								</c:forEach>
							</div>
						</div>
						<div class="line"></div>
						</c:if>
						
						<c:if test="${fn:length(commodity.attr2List)>0}">
						<div class="box">
							<span class="title">${commodity.attr2.name}</span>
							<div class="attr2">
								<c:forEach items="${commodity.attr2List}" var="item" varStatus="status">
									<a class="choseAttr2" cid="${commodity.id}" aid="${item[0]}" href="#">${item[1]}</a>
								</c:forEach>
							</div>
						</div>
						<div class="line"></div>
						</c:if>
						
						<div class="box">
							<span class="title inline">购买数量</span>
							<div class="number inventoryShowBox_${commodity.id}">
							
								<!-- 库存信息 -->
								<c:forEach items="${commodity.inventoryMap}" var="item">
									<input type="hidden" value="${item.value[0]}" price="<fmt:formatNumber value="${item.value[1]}" pattern="#,#00.00#"/>" img="${item.value[2]}" name="${item.key}"/>
									<c:set var="inventoryNum" value="${inventoryNum+item.value[0]}"/>
								</c:forEach>
								
								<input type="hidden" value="${inventoryNum}" id="inventoryNum">
							
								<a href="#" class="a1 revNum" cid="${commodity.id}"></a>
								<input name="buyNum" class="input buyNum" type="number" data-role="none" value="1" cid="${commodity.id}"/>
								<a href="#" class="a2 addNum" cid="${commodity.id}"></a>
							</div>
						</div>
						<div class="line"></div>
						<div class="buyBtn">
							<a id="confirmOrderBtn" class="a1" href="#">确定</a>
						</div>
				
					</form>

				</div>
			</div>		
		
			<c:import url="../user/loginPopup.jsp"/>
	</div>
	<!-- Product1Page end  -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/iscroll/iscroll.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/base.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/app.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/cart.js"></script>

</body>
</html>