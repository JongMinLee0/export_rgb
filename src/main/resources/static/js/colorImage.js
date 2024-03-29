$(document).ready(function () {
    // change navbar color
    $('.navbar').css({
        "background-color": "#fff",
        "border-bottom": "1px solid rgb(229,229,229)"
    });
    $('body > nav > div > div.navbar-header > button').css("background-color", "black !important");

    //    image preview
    function readInputFile(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#preview').html("<img id='upload_img' src='" + e.target.result + "'>");
            };
            reader.readAsDataURL(input.files[0]);
        }
    }

    // change image text
    $('#upload').on('change', function () {
        if (window.FileReader) {
            var filename = $(this)[0].files[0].name;
        } else {
            var filename = $(this).val().split('/').pop().split('\\').pop();
        }
        $(this).siblings('.fileName').val(filename);
        readInputFile(this);
    });

    // click image
    function clickImage() {
        var offsetX = event.offsetX;
        var offsetY = event.offsetY;
        var img = document.getElementById('upload_img');
        var canvas = document.createElement('canvas');
        canvas.width = img.width;
        canvas.height = img.height;
        canvas.getContext('2d').drawImage(img, 0, 0, img.width, img.height);
        var pixelData = canvas.getContext('2d').getImageData(offsetX, offsetY, 1, 1).data;
        $('#upload_rcolor').val(pixelData[0]);
        $('#upload_gcolor').val(pixelData[1]);
        $('#upload_bcolor').val(pixelData[2]);

        var rgbColor = 'rgb('+pixelData[0]+','+pixelData[1]+','+pixelData[2]+')';
        var resultHex = rgb2hex(rgbColor);
        $('#upload_hexcolor').val(resultHex);

        $('#color_result').css({
            'background-color': resultHex
        })
    };


    // click image
    function rgb_chart() {
        var offsetX = event.offsetX;
        var offsetY = event.offsetY;
        var img = document.getElementById('rgb_chart');
        var canvas = document.createElement('canvas');
        canvas.width = img.width;
        canvas.height = img.height;
        canvas.getContext('2d').drawImage(img, 0, 0, img.width, img.height);
        var pixelData = canvas.getContext('2d').getImageData(offsetX, offsetY, 1, 1).data;
        $('#rcolor2').val(pixelData[0]);
        $('#gcolor2').val(pixelData[1]);
        $('#bcolor2').val(pixelData[2]);

        var rgbColor = 'rgb('+pixelData[0]+','+pixelData[1]+','+pixelData[2]+')';
        var resultHex = rgb2hex(rgbColor);
        $('#hexcolor2').val(resultHex);

        $('#color_result2').css({
            'background-color': resultHex
        })
    };

    $('#preview').on('click', function () {
        clickImage();
    });

    $('#rgb_chart').on('click',function(){
        rgb_chart();
    });

    function rgb2hex(rgb) {
        if (  rgb.search("rgb") == -1 ) {
            return rgb;
        } else {
            rgb = rgb.match(/^rgba?\((\d+),\s*(\d+),\s*(\d+)(?:,\s*(\d+))?\)$/);
            function hex(x) {
                return ("0" + parseInt(x).toString(16)).slice(-2);
            }
            return "#" + hex(rgb[1]) + hex(rgb[2]) + hex(rgb[3]);
        }
    }


});