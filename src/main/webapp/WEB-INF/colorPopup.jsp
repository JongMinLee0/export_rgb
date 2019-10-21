<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Click to image</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="/static/js/colorPopup.js"></script>
    <link rel="stylesheet" href="/static/css/colorPopup.css" />
</head>
<body>
    <label for="cursor" class="btn_file">Click</label>
    <button id="cursor"></button>
    <div class="input_rgb">
        <div id="color_result">
        </div>
        RGB : <input type="text" id="rcolor" class="colorText" readonly="readonly" value="0"/>
        <input type="text" id="gcolor" class="colorText" readonly="readonly" value="0"/>
        <input type="text" id="bcolor" class="colorText" readonly="readonly" value="0"/>
        <br /><br />
        HEX : <input type="text" id="hexcolor" class="colorText" readonly="readonly" value="#000000"/>
    </div>
</body>
</html>