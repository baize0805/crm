<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" + request.getServerPort() +
            request.getContextPath() + "/";
%>
<!DOCTYPE html>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>手风琴</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            background-color: #171717
        }

        .box {
            width: 1210px;
            height: 400px;
            border: 10px solid #151515;
            margin: 50px auto;
            background-color: #151515;
            border-right: 0;
        }

        .box > div {
            width: 200px;
            height: 400px;
            opacity: .3;
            float: left;

            transition: all .7s ease 0s;
        }

        .box > div:hover {

            opacity: 1;

        }

        .box > div h1 {
            color: #fff;
            font-size: 70px;
            padding: 40px 40px 0;
        }
    </style>
</head>
<body>

<div class="box">
    <div><img src="image/t1.png">
        <h1>1</h1>
    </div>
    <div ><img src="image/t2.png">
        <h1>2</h1>
    </div>
    <div><img src="image/t3.png">
        <h1>3</h1>
    </div>
    <div><img src="image/t4.png">
        <h1>4</h1>
    </div>
    <div ><img src="image/t5.png">
        <h1>5</h1>
    </div>
    <div ><img src="image/t6.png">
        <h1>6</h1>
    </div>
</div>
<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script>

    $(".box>div").mouseover(function () {
        $(this).stop().animate({
            "width": "500px"
        }, 200).siblings().stop().animate({
            "width": "140px"
        }, 200)
    })

    $(".box>div").mouseout(function () {
        $(".box>div").stop().animate({
            "width": "200px"
        }, 200)
    })


</script>

</body>
</html>