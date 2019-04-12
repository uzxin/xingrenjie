<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>杏仁街商城管理中心</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/adminLogin.css">
</head>
<body>
  <section class="container">
    <div class="login">
      <h1>管理员登录</h1>
      <form method="post" action="${pageContext.request.contextPath }/adminLogin">
      	<c:if test="${empty loginInfo }">
      		<p><input type="text" name="username" placeholder="账号"></p>
      	</c:if>
      	<c:if test="${not empty loginInfo }">
      		<p><input type="text" name="username" value="${username }" placeholder="账号"></p>
      	</c:if>
        <p>
        	<input type="password" name="password" placeholder="密码">
        </p>
        
      	<c:if test="${not empty loginInfo }">
      		<p class="remember_me"><span style="color:red;">${loginInfo }</span></p>
      	</c:if>
        <p class="submit"><input type="submit" name="commit" value="进入管理中心"></p>
      </form>
    </div>
  </section>
</body></html>