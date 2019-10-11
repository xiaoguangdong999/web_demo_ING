<!--这里是login.jsp-->
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <title>学生信息管理系统</title>
    <script type="text/javascript">
            function validate_form() {
                var name = document.getElementById("username").value;
                var password = document.getElementById("password").value;
                if (name == null || name == "") {
                    alert("姓名不能为空");
                    return false;
                }
                if (password == null || password == "") {
                    alert("密码不能为空");
                    return false;
                }
                return true;
            }
    </script>
    </head>
    <body>
        <h2 align="center">学生登录</h2>
        <div style="width:100%;text-align:center">
            <form action="pages/displayStuList.jsp" onsubmit="return validate_form()" method="post">
                <table border=1 style="margin:auto">
                    <tr>
                        <td>用户名：</td>
                        <td><input type="text" name="username" id="username"></td>
                    </tr>
                    <tr>
                        <td>密 码：</td>
                        <td><input type="password" name="password" id="password"></td>
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
