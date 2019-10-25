<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script data-ad-client="ca-pub-5608650077917985" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/static/css/contact.css" />
    <script src="/static/js/bootstrap.min.js" ></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <meta charset="UTF-8">
    <title>Export RGB Main</title>
</head>
<body>
<%-- navigation bar --%>
<jsp:include page="fragment/header.jsp" />

<%-- main image --%>
<div id="main_wrap">
    <form method="post" id="form_wrap" data-email="1393062@naver.com" class="gform pure-form pure-form-stacked"
          action="https://script.google.com/macros/s/AKfycbwRc_GytiuQKqGygkvsKgVs-w1pv2tK8mQJsZVAgA/exec">
        <table id="input_table" class="form-elements">
            <tr>
                <th>Contact Form</th>
            </tr>
            <tr>
                <td><input type="text" id="name" name="name" placeholder="name" class="form_control" required/></td>
            </tr>
            <tr>
                <td><input type="email" id="email" name="email" placeholder="e-mail" class="form_control" required/></td>
            <tr>
            <td><textarea placeholder="Write Message" id="message" name="message" class="form_control" required></textarea></td>
            </tr>
            <tr>
                <td><button type="button" id="sendEmail" class="btn btn-default">Send Mail</button></td>
            </tr>
        </table>
        <div style="display:none" class="thankyou_message">
            <h2><em>Thanks!</em> for contacing me!
            I will get back to you soon!</h2>
        </div>
    </form>
    <table>
        <tr>
            <th>Contact Info</th>
        </tr>
        <tr>
            <th class="info_group">JongMin Lee</th>
        </tr>
        <tr>
            <th class="info_group">1393062@naver.com</th>
        </tr>
        <tr>
            <th class="info_group">jongminlee0218@gmail.com</th>
        </tr>
    </table>

</div>
<%-- footer --%>
<jsp:include page="fragment/footer.jsp" />
<script data-cfasync="false" src="/static/js/form-submission-handler.js"></script>
</body>
</html>