<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
	
<!-- confirmOrderPage 确认订单 start  -->
	<div data-role="page" id="confirmOrderPage">
		<div data-role="header" class="header_1 bg41AC98">
			<a  data-transition="slide" href="#" data-role="button" data-rel="back"
				class="back bg41AC98" data-icon="arrow-l">&nbsp;</a>
			<h1 class="colorFFF">确认订单</h1>
		</div>
		<!-- /header -->
		<div data-role="content">

			<div class="wrapper top">
				<div class="scroller">

					<form action="" id="confirmOrderForm" method="post">
							
						<div class="adds">
							<c:choose>
								<c:when test="${address!=null}">
								<div class="line">&nbsp;</div>
								<h4>
									<a data-transition="slide" href="${pageContext.request.contextPath}/user/listAddress?toUrl=/order/confirmOrder?${pageContext.request.queryString}">
									<span class="s1">收货人:${address.receiverName} ${address.receiverPhone}</span>
									<span class="s2">${address.receiverProvince}${address.receiverCity}${address.receiverDistrict}${address.receiverAddress} ${address.receiverZipCode}</span>
									</a>
								</h4>
								<div class="line">&nbsp;</div>
								</c:when>
								<c:otherwise>
									<div class="line">&nbsp;</div>
									
									<h4><a href="${pageContext.request.contextPath}/user/addAddressShow?toUrl=/order/confirmOrder?${pageContext.request.queryString}" data-transition="slide" class="a1">请填写你的收货地址</a></h4>
									<div class="line">&nbsp;</div>
								</c:otherwise>
							</c:choose>
							<input type="hidden" name="addressId" value="${address.id}">
						</div>
						
						
						<div class="plistBox">
							<p class="p_title">货品清单</p>
							<div class="line"></div>
							
							<c:forEach items="${cart.settlementItems}" var="item">
								<div class="shopBox">
									<div class="title">
										<a class="a1" href="#">${item.key.cname}</a> 
										<a class="a2" data-transition="none" href="#preferential" data-rel="popup" data-position-to="window">优惠说明</a>
									</div>
									
									<c:forEach items="${item.value}" var="item1">
										<div class="commodity">
											<div class="box">
												<div class="c_info">
													<div class="c_img">
														<img width="53" alt=""
															src="${pageContext.request.contextPath}/${item1.c.img}">
													</div>
													<div class="c_infobox">
														<div class="c_title">${item1.c.name}</div>
														<div class="c_price">
															<p>
																<span>${item1.c.attr1.name}  </span><span class="s_1">${item1.c.attr1Value}</span> <span>${item1.c.attr2.name}  </span><span
																	class="s_2">${item1.c.attr2Value}</span>
															</p>
															<p>
																<span class="s_3 red">￥ ${item1.c.marketPrice} </span><span class="s_4">x  ${item1.buyNum}</span>
															</p>
														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>
									<!-- 配送方式 -->
									<div class="title">
										<span class="left">配送方式</span>
										<span class="right"></span>
									</div>
									<div class="title">
										<div class="input">
											<input type="text" name="remarks" placeholder="给商家留言">
										</div>
									</div>
									<div class="title">
										<span class="left"></span>
										<span class="right">共${fn:length(cart.cartItems)}件商品,合计￥<span class="red">89</span></span>
									</div>
								</div>
			
							</c:forEach>
							
						</div>
						
						<div class="confirmOrderInfo_line">
						
						</div>
				
				
					</form>
			
				</div>
			</div>
			
		</div>
		<div data-role="footer" data-tap-toggle="false" data-position="fixed"
			data-theme="d">

			<div class="confirmOrderInfo">
				<!-- 
				<div class="left">
					<p><span>店铺优惠:</span><span>￥0.00</span></p>
					<p><span>运费计算:</span><span>￥0.00</span></p>
					<p><span>货款总计:</span><span>￥29,890.00</span></p>
				</div>
				<div class="right">
					<div class="l1">
						<strong>总计:</strong>
						<span class="s1">￥29,890.00</span>
					</div>
					<div class="l2">
						<span>一种一件不含运费</span>
					</div>
					
				</div>
				<div class="clear"></div>
				 -->
				<div class="right">
					<a href="#" id="submitOrderBtn" data-role="button">提交订单</a>
				</div>
				
			</div>
			
			<c:import url="../footer.jsp"/>
		</div>
	</div>
	<!-- confirmOrderPage end  -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/base.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/app.js"></script>

</body>
</html>