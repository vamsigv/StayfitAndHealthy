<%@ page import="java.util.List" %>
<%@ page import="com.startup.model.FatToFitJourney" %>
<%--
  Created by IntelliJ IDEA.
  User: vamsi
  Date: 9/28/18
  Time: 12:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <% List<FatToFitJourney> fatToFitJourneys; %>
    <title>Journeys</title>
    <%
        fatToFitJourneys = (List<FatToFitJourney>) request.getAttribute("fatToFitJourneys");
    %>
    <style>
        p.serif {
            font-family: "Times New Roman";
        }
    </style>
</head>
<body>
<%@include file="header.jsp" %>
<div class="container">
    <div class="page-header">
        <h4>If you want to share your transformation, Kindly <a href=/addfattofitjourneypage>Add your journey Here</a>
        </h4>
        <br><br>
    </div>
    <% for (FatToFitJourney fatToFitJourney : fatToFitJourneys) { %>
    <div class="panel panel-primary">
        <div class="panel-heading"><%= fatToFitJourney.getUserName().toUpperCase()%>
        </div>
        <div class="panel-body">
            <pre><p class="serif"><%=fatToFitJourney.getDescription().trim()%>
            </p></pre>
        </div>
    </div>
    <%}%>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
