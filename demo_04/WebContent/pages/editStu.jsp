<!--这里是pages文件夹里的addStu.jsp-->
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0, 
              minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
        <title>修改学生信息</title>
    </head>
    <body>
        <h2 align="center">请输入要修改学生信息</h2>
        <div style="width:100%;text-align:center">
            <form action="../editServlet">
                <table border=1 style="margin:auto">
                    <tr>
                        <td>学号：</td>
                        <td><input type="text" name="stuid" id="stuid"></td>
                    </tr>
                    <tr>
                        <td>姓名：</td>
                        <td><input type="text" name="stuname" id="stuname"></td>
                    </tr>
                    <tr>
                        <td>性别：</td>
                        <td><input type="text" name="stusex" id="stusex"></td>
                    </tr>
                    <tr>
                        <td>年龄：</td>
                        <td><input type="text" name="stuage" id="stuage"></td>
                    </tr>
                    <tr>
                        <td>年级：</td>
                        <td><input type="text" name="stugrade" id="stugrade"></td>
                    </tr>
                    <tr>
                        <td>个人简介：</td>
                        <td><input type="text" name="stuintroduce" id="stuintroduce"></td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <input type="submit" value="提交">
                        </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
