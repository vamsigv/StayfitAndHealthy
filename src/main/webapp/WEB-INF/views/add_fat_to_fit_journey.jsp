<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Add a Journey</title>
</head>
<body>
<%@include file="header.jsp"%>
<div class="container-fluid text-center">
  <div class="row content">
    <div class="col-sm-2">
      &nbsp;
    </div>
    <div class="col-sm-8 text-left">
      <h1>Welcome</h1>

      <p>Kindly, write your journey below which will be an inspiration to others. </p>
      <hr>
      <div>
        <h2>Enter your Details:</h2>

        <form action="addfattofitjourney" method="post">
          <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" placeholder="Enter email" name="email"
                   required>
          </div>
          <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" placeholder="Enter name" name="name" required>
          </div>
          <div class="form-group">
            <label for="desc">Describe your Journey:</label>
            <textarea class="form-control" id="desc" placeholder="Describe your Journey here." name="desc"
                      required></textarea>
          </div>
          <button type="submit" class="btn btn-default">Submit</button>
        </form>
      </div>
    </div>
    <div class="col-sm-2 text-right">
      &nbsp;
    </div>
  </div>
</div>
<div class="clearfix"></div>
<%@include file="footer.jsp"%>
</body>
