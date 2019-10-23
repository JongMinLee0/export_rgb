<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/static/css/index.css" />
    <script src="/static/js/index.js"></script>
    <script src="/static/js/bootstrap.min.js" ></script>
    <meta charset="UTF-8">
    <title>Export RGB Main</title>
</head>
<body>
<%-- navigation bar --%>
<jsp:include page="fragment/header.jsp" />

<%-- main image --%>
<div id="main_wrap">


</div>
<div id="about">
    <div id="about_image_wrap">
        <img src="/static/images/about.png" id="about_img" />
    </div>
</div>

<%-- footer --%>
<jsp:include page="fragment/footer.jsp" />
</body>
</html>