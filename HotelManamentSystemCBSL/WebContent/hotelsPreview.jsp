<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>酒店预览</title>
	    <style>

        *{
            padding: 0px;
            margin: 0px;
        }

        .div{
            margin :0 auto;
            border: solid 1px red;
        }
        #content{
            margin :0 auto;
            border: solid 1px red;
            height: 1000px;
        }
        #top{
            margin :0 auto;
            border: solid 1px red;
            height: 100px;
        }
        #p_title{
            font-family: 微软雅黑;
            color: #0E90D2;
            font-size: larger;
            margin-left: 5%;
            margin-top: 30px;
        }

        #hr_top{
            width: 95%;
            color: #f9f9f9;
            margin-top: 25px;

        }
        #div_add{
            height: 50px;
        }
        #btn_add{
            width: 80px;
            height: 40px;
            margin-left: 5%;
            margin-top: 5px;
        }
        #div_add_left{
            width: 50%;
            height: 50px;
            border: solid 1px red;
            float: left;
        }
        #input_search{
            width: 250px;
            height: 40px;
            border: solid 2px #eeeeee;
            margin-left: 150px;

        }

        #btn_search{
            width: 75px;
            height: 40px;
            margin-top: 5px;

        }

        #center{
            width: auto;
            height: 600px;
            border: solid 1px red;
        }
        #table_hotel{
            width: 600px;
            margin-left: 5%;
            margin-top: 20px;
            border: 1px solid red;
        }
    </style>
</head>
<body>
    <div id="content" >
            <div id="top">
                <p id="p_title">酒店管理系统</p>
                <hr id="hr_top">
            </div>
            <div id="div_add" class="div">
                <div id="div_add_left">
                    <button id="btn_add">新增</button>
                </div>
                <div id="div_add_right">
                    <input id="input_search" type="text">

                    <button id="btn_search">搜索</button>
                </div>
            </div>
        <div id="center">
                <table id="table_hotel">
                    <tr>
                        <th>酒店编号</th>
                        <th>酒店名称</th>
                        <th>酒店地址</th>
                        <th>负责人</th>
                    <th>操作</th>
                    </tr>
                </table>
        </div>
    </div>
</body>
</html>