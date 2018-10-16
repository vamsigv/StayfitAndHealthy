<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Add a Fitness Journey</title>
    <link href=/resources/quill/quill.snow.css rel=stylesheet>
    <script src=/resources/quill/quill.min.js></script>
    <%@include file="header.jsp" %>
</head>
<body>
<div class="container-fluid text-center">
    <div class="row content">
        <div class=col-sm-2>
            &nbsp;
        </div>
        <div class="col-sm-8 text-left">
            <h1>Welcome</h1>
            <p>Kindly, write your journey below which will be an inspiration to others. </p>
            <hr>
            <div>
                <h2>Enter your Details:</h2>
                <form action=addfattofitjourney method=post id=myForm onsubmit=validate() accept-charset=UTF-8>
                    <input name=desc id=desc hidden>
                    <div class=form-group>
                        <label for=email>Email:</label>
                        <input type=email class=form-control id=email placeholder="Enter email" name=email required>
                    </div>
                    <div class=form-group>
                        <label for=name>Name:</label>
                        <input class=form-control id=name placeholder="Enter name" name=name required>
                    </div>
                    <div class=form-group>
                        <label>Describe your Fitness Journey : (Workout, Diet, Lifestyle)</label>
                        <div id=toolbar></div>
                        <div id=editor></div>
                    </div>
                    <button type=submit class="btn btn-success" id=btnSubmit>Submit</button>
                    <script>var toolbarOptions=[["bold","italic","underline","strike","blockquote","code-block"],[{header:[1,2,3,4,5,6,!1]}],[{list:"ordered"},{list:"bullet"}],[{script:"sub"},{script:"super"}],[{indent:"-1"},{indent:"+1"}],[{direction:"rtl"}],[{size:["small",!1,"large","huge"]}],[{color:[]},{background:[]}],[{font:[]}],[{align:[]}],["clean"]],quill=new Quill("#editor",{modules:{toolbar:toolbarOptions},theme:"snow"})</script>
                </form>
            </div>
        </div>
        <div class="col-sm-2 text-right">
            &nbsp;
        </div>
    </div>
</div>
<div class=clearfix></div>
<script>function validate(){var e=new Quill("#editor"),t=e.root.innerHTML;return 0==t.length?(document.getElementById("editor").focus(),!1):void submit(t)}function submit(e){document.getElementById("desc").value=e,document.getElementById("myForm").submit()}</script>
</body>
<%@include file="footer.jsp" %>
</html>
