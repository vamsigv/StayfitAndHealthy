<%--
  Created by IntelliJ IDEA.
  User: vamsi
  Date: 9/27/18
  Time: 1:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Thank you</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="container">
    <div class="well">
        <h3>Hi, <b> ${name}</b></h3><br>
        <p>Thank you for sharing your journey with us.</p>
    </div>
</div>
<%@include file="footer.jsp"%>
</body>
</html>
