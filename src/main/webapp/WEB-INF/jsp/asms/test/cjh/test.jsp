<%@page import="asms.test.cjh.service.TestService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  	<link href="/bootstrap-theme/css/bootstrap.min.css" rel="stylesheet">
    <link href="/bootstrap-theme/font-awesome/css/font-awesome.css" rel="stylesheet">
    <link href="/bootstrap-theme/css/plugins/iCheck/custom.css" rel="stylesheet">
    <link href="/bootstrap-theme/css/animate.css" rel="stylesheet">
    <link href="/bootstrap-theme/css/style.css" rel="stylesheet">
</head>
<body>
		<div class="ibox-content">

			<table class="table">
				<thead>
					<tr>
						<th>순번</th>
						<th>코드</th>
						<th>명</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${testData}" var="codeName" varStatus="status">
						<tr>
							<td>${status.index+1}</td>
							<td>${codeName.code_cd}</td>
							<td>${codeName.code_nm}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>
		s

</body>
</html>