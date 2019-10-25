<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script data-ad-client="ca-pub-5608650077917985" async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/static/css/color.css" />
    <script src="/static/js/colorImage.js"></script>
    <script src="/static/js/bootstrap.min.js" ></script>
    <meta charset="UTF-8">
    <title>Export RGB Main</title>
</head>
<body>
<%-- navigation bar --%>
<jsp:include page="fragment/header.jsp" />

<%-- color main --%>
<div id="main_wrap">
    <div id="color_main">
        <div id="description">
            <div id="image_description">
                Upload an image and find the color you want.
            </div>
            <div id="rgb_description">
                Click the color you want and check the code.
            </div>
        </div>
        <div id="image">
            <div id="input_wrap">
                <input type="text" class="fileName" readonly="readonly" placeholder="only jpeg, git, png, jpg"/>
                <label for="upload" class="btn_file">Upload</label>
                <input type="file" id="upload" name="upload" class="upload" accept='image/jpeg,image/gif,image/png, ,image/jpg'/>
            </div>
            <%--   image preview   --%>
            <div id="preview">
            </div>
            <div class="input_rgb">
                <div id="color_result">
                </div>
                RGB : <input type="text" id="upload_rcolor" class="colorText" readonly="readonly" value="0"/>
                <input type="text" id="upload_gcolor" class="colorText" readonly="readonly" value="0"/>
                <input type="text" id="upload_bcolor" class="colorText" readonly="readonly" value="0"/>
                <br /><br />
                HEX : <input type="text" id="upload_hexcolor" class="colorText" readonly="readonly" value="#000000"/>
            </div>
        </div>
        <div id="click">
            <img src="/static/images/rgb_chart.png" id="rgb_chart"/>
            <div class="input_rgb">
                <div id="color_result2">
                </div>
                RGB : <input type="text" id="rcolor2" class="colorText" readonly="readonly" value="0"/>
                <input type="text" id="gcolor2" class="colorText" readonly="readonly" value="0"/>
                <input type="text" id="bcolor2" class="colorText" readonly="readonly" value="0"/>
                <br /><br />
                HEX : <input type="text" id="hexcolor2" class="colorText" readonly="readonly" value="#000000"/>
            </div>

        </div>
    </div>
</div>

<%-- footer --%>
<jsp:include page="fragment/footer.jsp" />
</body>
</html>