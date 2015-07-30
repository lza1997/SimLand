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
	
	<div data-role="page" id="listAddressPage">
		<div data-role="header" class="header_1 bg41AC98">
			<a  data-transition="slide" href="#" data-role="button" data-rel="back"
				class="back bg41AC98" data-icon="arrow-l">&nbsp;</a>
			<h1 class="colorFFF">地址管理</h1>
			<a href="${pageContext.request.contextPath}/user/addAddressShow?${pageContext.request.queryString}" data-transition="slidefade" data-role="button" class="back bg41AC98 colorFFF">新增</a>
		</div>
	
		<div data-role="content">

			<div class="wrapper top">
				<div class="scroller">
					<div class="addressBox">
						<c:forEach items="${list}" var="item">
							<div class="address">
								<h3>${item.receiverName} ${item.receiverPhone}</h3>
								<h4>${item.receiverProvince}${item.receiverCity}${item.receiverDistrict}${item.receiverAddress} ${item.receiverZipCode}</h4>
								<div class="line"></div>
								<div class="option">
									<div class="left"><a href="#" aid="${item.id}" class="a1 defualtAddressBtn ${item.isDefault==1?'check':''}" checked="false">设为默认</a></div>
									<div class="right">
										<a href="#" aid="${item.id}" class="a2 editAddressBtn">编辑</a>
										<a href="#" class="a3">删除</a>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>	
		<c:import url="../footer.jsp"/>	
	</div>	

</body>
</html>