<!DOCTYPE html>
<html lang=en>
<head>
    <title>Health & Fitness</title>
    <%@include file="WEB-INF/views/header.jsp" %>
    <style>.imgCategory{height:300px!important}</style>
</head>
<body>
<div class=container>
    <div class=jumbotron>
        <h1>Stay Fit and Healthy</h1>
        <p>Our main aim is to empower people to lead a healthy life style. We are providing an end to end solution to help out every individual to lead an Healthy and Happy Life.</p>
    </div>
    <div class=row>
        <div class=col-md-6>
            <div class=thumbnail>
                <a href=/viewfattofitjourneys>
                    <img src=/resources/static/Images/Fitness_Img.jpg class=imgCategory alt="Fitness Stories" style=width:100%>
                    <div class=caption>
                        <p>Checkout all the inspiring fitness stories</p>
                    </div>
                </a>
            </div>
        </div>
        <div class=col-md-6>
            <div class=thumbnail>
                <a href=/fitnessandhealthblog>
                    <img src=/resources/static/Images/Nitrition_img.jpg class=imgCategory alt="Health & Nutrition" style=width:100%>
                    <div class=caption>
                        <p>Health and Nutrition related Information</p>
                    </div>
                </a>
            </div>
        </div>
    </div>
</div>
</body>
<%@include file="WEB-INF/views/footer.jsp" %>
</html>