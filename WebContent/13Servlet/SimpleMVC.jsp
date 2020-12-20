<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SimpleMVC.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h2>간단한 MVC패턴 만들기</h2>
	<!-- 
		사용자가 요청할때 type 파라미터에 따라 서블릿은
		각기 다른 처리를 하게된다.
	 -->
	<ul>
		<li>
			<!-- ./ : 현재경로 -->
			<a href="./SimpleMVC">
				./SimpleMVC?type=
			</a>
		</li>
		<li>
			<a href="SimpleMVC?type=greeting&id=ko1&pw=1111">
				SimpleMVC?type=greeting&id=test1&pw=1234
			</a>
		</li>
		<li>
		<!-- 제일유용, 서블릿은 요청명부터 만듬 -->
			<a href="../13Servlet/SimpleMVC?type=date">
				SimpleMVC?type=date
			</a>
		</li>
		<li>
			<a href="<%=request.getContextPath() %>/13Servlet/SimpleMVC?type=noparam">
				SimpleMVC?type=noparam
			</a>
		</li>
	</ul>
	
	<h3>요청결과</h3>
	<span style="color:red; font-size:2em;">
		${result }
	</span>
	
	<!-- 
		요청명을 결정할때는 View의 경로와 동일한 depth(깊이)로
		설정하는것이좋다. 이미지의 경로, CSS, JS파일을 상대경로로
		링크했을때 경로가 깨지는 경우가 발생할수 있기 때문이다.
		아래 이미지의 경우 요청명이
			"/13Servlet/SimpleMVC"일때는../부분이 표시되고 
			"/SimpleMVC"일때는 ./부분의 이미지가 표시될것이다.
	 -->
	<h3>이미지와 요청명</h3>
	<h4>../으로 이미지 표현</h4>
	<!-- 웹브라우저 입장에서는 요청명은 하나의 경로일뿐!
		그러니  -->
	<!-- 
	  	<url-pattern>/13Servlet/SimpleMVC</url-pattern>
	http://localhost:9999/K07JSPServlet/13Servlet/SimpleMVC.jsp -->
	<img src="../images/3.jpg" alt="구름하트" />
	<h4>./로 이미지 표현</h4>
	<!-- 
	  	<url-pattern>/SimpleMVC</url-pattern>
	http://localhost:9999/K07JSPServlet/SimpleMVC
	↑요기서 사이트헤더에서 jpg직접 빼니 출력되따,, -->
	<img src="./images/3.jpg" alt="구름하트" />
	<h4>절대경로로 이미지 표현</h4>
	<img src="<%=request.getContextPath() %>/images/3.jsp" alt="구름하트" />
	<!-- 절대경로인 경우 요청명의 영향을 받지 않는다. -->
	
	
</body>
</html>