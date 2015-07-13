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
	
<!-- 评价页面2 -->
	<!-- assessPage1 page start -->
	<div data-role="page" id="assess1Page">
		<div data-role="header" class="header_1">
			<a  data-transition="slide" href="#" data-role="button" data-rel="back"
				class="back" data-icon="arrow-l">&nbsp;</a>
			<h1>订单评价</h1>
			<a  data-transition="none" href="#" data-role="button" class="back">提交评价</a>
		</div>
		<!-- /header -->
		<div data-role="content">
			<div class="ui-grid-b table">
				<div class="ui-block-a ui-block-a-1">
					<span><img alt="" src="${pageContext.request.contextPath}/images/tmp/p_1.jpg"></span>
				</div>
				<div class="ui-block-b ui-block-b-1">
					<span>描述相符</span>
				</div>
				<div class="ui-block-c ui-block-c-1">
					<a  class="star5">&nbsp;</a>
				</div>
				<div class="ui-block-a ui-block-a-2">
					<input type="text" placeholder="亲，说点什么吧" />
				</div>
			</div>

			<div class="ui-grid-d table1">
				<div class="ui-block-a">
					<img alt="" src="${pageContext.request.contextPath}/images/bg/up_1.jpg">
				</div>
				<div class="ui-block-b">
					<img alt="" src="${pageContext.request.contextPath}/images/bg/up_1.jpg">
				</div>
				<div class="ui-block-c">
					<img alt="" src="${pageContext.request.contextPath}/images/bg/up_1.jpg">
				</div>
				<div class="ui-block-d">
					<img alt="" src="${pageContext.request.contextPath}/images/bg/up_1.jpg">
				</div>
				<div class="ui-block-e">
					<img alt="" src="${pageContext.request.contextPath}/images/bg/up_1.jpg">
				</div>
			</div>

			<div class="ui-grid-b table">
				<div class="ui-block-a ui-block-a-1"></div>
				<div class="ui-block-b ui-block-b-1">
					<span>服务态度</span>
				</div>
				<div class="ui-block-c ui-block-c-1">
					<a  class="star5">&nbsp;</a>
				</div>
				<div class="ui-block-a ui-block-a-1"></div>
				<div class="ui-block-b ui-block-b-1">
					<span>发货速度</span>
				</div>
				<div class="ui-block-c ui-block-c-1">
					<a  class="star5">&nbsp;</a>
				</div>
				<div class="ui-block-a ui-block-a-1"></div>
				<div class="ui-block-b ui-block-b-1">
					<span>物流速度</span>
				</div>
				<div class="ui-block-c ui-block-c-1">
					<a  class="star5">&nbsp;</a>
				</div>
				<div class="ui-block-a" style="width:20%"></div>
				<div class="ui-block-b" style="width:20%">
					<label for="switch">匿名评论</label>
				</div>
				<div class="ui-block-c">
					<select name="switch" id="assess1Switch" data-role="slider"
						data-inline="true">
						<option value="on">On</option>
						<option value="off">Off</option>
					</select>
				</div>

			</div>

		</div>
		<c:import url="../footer.jsp"/>
	</div>
	<!-- assessPage1 page end -->

	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mobile-1.4.3.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/base.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/simland/app.js"></script>

</body>
</html>