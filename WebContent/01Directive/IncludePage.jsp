<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat"  %>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%--
	jsp에서는 사용목적에 따라 HTML태그가 전혀 포함되지 않는
	파일도 생설할 수 있다.
 --%>
<%
//공통으로 사용할 변수 혹은 메소드를 정의
	SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
	String todayStr = simple.format(new Date());
%>