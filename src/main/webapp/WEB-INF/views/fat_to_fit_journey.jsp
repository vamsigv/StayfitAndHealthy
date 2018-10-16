<%@ page import="java.util.List" %>
<%@ page import="com.startup.model.FatToFitJourney" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% List<FatToFitJourney> fatToFitJourneys; %>
    <title>Fat to Fit Journeys</title>
    <%
        fatToFitJourneys = (List<FatToFitJourney>) request.getAttribute("fatToFitJourneys");
    %>
    <style>
        p.serif {
            font-family: "Times New Roman";
        }
    </style>
    <%@include file="header.jsp" %>
</head>
<body>
<div class="container">
    <div class="page-header">
        <h4>If you want to share your transformation, Kindly <a href=/addfattofitjourneypage>Add your Fitness Journey Here</a>
        </h4>
        <br><br>
    </div>
    <% for (FatToFitJourney fatToFitJourney : fatToFitJourneys) { %>
    <div class="panel panel-primary">
        <div class="panel-heading"><%= fatToFitJourney.getUserName().toUpperCase()%>
        </div>
        <div class="panel-body">
            <p style="font-family: 'DejaVu Sans', Arial, Helvetica, sans-serif"><%=fatToFitJourney.getDescription().trim()%>
            </p>
        </div>
    </div>
    <%}%>
</div>
</body>
<%@include file="footer.jsp" %>
</html>
