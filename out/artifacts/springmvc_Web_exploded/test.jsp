<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
<html>
<head>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
    </script>
</head>
<body>
<form action="upload" method="post" enctype="multipart/form-data">
    选择图片:<input type="file" id="up" name="doc" accept="image/*" /> <br>
    <input type="submit" value="上传">
</form>

<img id="img" alt="" src=" " />
<Script >
    $("input[type='file']").change(function(){
        var file = this.files[0];
        if (window.FileReader) {
            var reader = new FileReader();
            reader.readAsDataURL(file);
            //监听文件读取结束后事件    
            reader.onloadend = function (e) {
                $("#img").attr("src",e.target.result);    //e.target.result就是最后的路径地址
            };
        }
    });

</Script>
</body>
</html>