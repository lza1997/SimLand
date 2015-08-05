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
	
<!-- 水贝分区域后商家在地图上的麻点 -->
	<!-- map2Page start  -->
	<div data-role="page" id="map2Page">
		<div data-role="header" class="header_1">
			<a  data-transition="slide" href="#" data-role="button" data-rel="back"
				class="back" data-icon="arrow-l">&nbsp;</a>
			<h1>
				<input type="search" name="search" placeholder="搜索内容...">
			</h1>
			<a  data-transition="none" href="#shopListPage" data-role="button"
				class="back">列表</a>
		</div>
		<!-- /header -->
		<div data-role="content">
			<div class="wrapper top">
				<div class="scroller">
					<div id="allmap" style="width:auto; height:620px;"></div>
					
					<div class="showFloor">
						<p>中瑞国际珠宝交易中心(贝丽路..)</p>
						<p>深圳罗湖区田贝四路44号</p>
						<div class="line"></div>
						<p><a  href="${pageContext.request.contextPath}/map/map3Page">查看楼层</a></p>
					</div>
				</div>
			</div>			
		
		</div>
		<div data-role="footer" data-tap-toggle="false" data-position="fixed"
			data-theme="d">
			<c:import url="../footer.jsp"/>
		</div>
		
		<script type="text/javascript">
			// 百度地图API功能
			var map = new BMap.Map("allmap");
			map.centerAndZoom(new BMap.Point(116.404, 39.915), 13);
			var json_data = [ [ 116.404, 39.915 ], [ 116.383752, 39.91334 ],
					[ 116.384502, 39.932241 ] ];
			var pointArray = new Array();
			for (var i = 0; i < json_data.length; i++) {
				var marker = new BMap.Marker(new BMap.Point(json_data[i][0],
						json_data[i][1])); // 创建点
				map.addOverlay(marker); //增加点
				pointArray[i] = new BMap.Point(json_data[i][0], json_data[i][1]);
				marker.addEventListener("click", attribute);
			}
			//让所有点在视野范围内
			//map.setViewport(pointArray);
			//获取覆盖物位置
			function attribute(e) {
				var p = e.target;
				//alert("marker的位置是" + p.getPosition().lng + "," + p.getPosition().lat);
				$.mobile.changePage("#shop", "slideup");
			}
		</script>
	</div>
	<!-- map2Page end  -->

</body>
</html>