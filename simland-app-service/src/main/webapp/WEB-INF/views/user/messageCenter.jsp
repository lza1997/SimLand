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
	
<!-- 消息中心 -->
	<!--   messageCenterPage start  -->
	<div data-role="page" id="messageCenterPage">
		<div data-role="header" class="header_1">
			<a  data-transition="slide" href="#" data-role="button" data-rel="back"
				class="back" data-icon="arrow-l">&nbsp;</a>
			<h1>消息中心</h1>
			<a  data-transition="none" href="#" data-role="button" class="back">设置</a>
		</div>
		<!-- /header -->
		<div data-role="content">
			<div class="wrapper top">
				<div class="scroller">	
					<div class="msg_list_box">
						<div class="msg_list">
							<div class="img">
								<img alt="" src="images/bg/messageCenterPage_r2_c3.jpg">
							</div>
							<div class="info">
								<h6>咚咚</h6>
								<p>点击查看您与水贝客服的会话记录</p>
							</div>
							<div class="clear"></div>
						</div>
						<div class="msg_list">
							<div class="img">
								<img alt="" src="images/bg/messageCenterPage_r4_c3.jpg">
							</div>
							<div class="info">
								<h6>咚咚</h6>
								<p>点击查看您与水贝客服的会话记录</p>
							</div>
							<div class="clear"></div>
						</div>
						<div class="msg_list">
							<div class="img">
								<img alt="" src="images/bg/messageCenterPage_r6_c3.jpg">
							</div>
							<div class="info">
								<h6>咚咚</h6>
								<p>点击查看您与水贝客服的会话记录</p>
							</div>
							<div class="clear"></div>
						</div>
					</div>
				</div>	
			</div>		
		</div>
		<div data-role="footer" data-tap-toggle="false" data-position="fixed" data-theme="d">
			<c:import url="../footer.jsp"/>
		</div>
	</div>
	<!--   messageCenterPage end  -->


</body>
</html>