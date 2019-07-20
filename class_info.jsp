<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<jsp:useBean id="class_bean" class="myBean.class_bean" scope="session"/>--%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            导入班级信息：
        </h1>
        <form name="create" action="${pageContext.request.contextPath}/createClass"enctype="multipart/form-data" method="post">
            <label >选择文件</label>
            <%--只允许选择一个excel--%>
            <input type="file" name="file" class="form-control" accept="application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet" />
            <input type="submit" value="上传"  >
        </form>
        <h1>
            添加学生信息
        </h1>
        <form name="add" action="addStu_servlet" method="post">
            <input type="button" value="班级1" name="class_ID" />
            <script>
                function input() {
                    document.getElementById("showDiv").style.display = "block";//显示输入框
                }
            </script>
            <input type="button" value="添加学生" onclick="input()"/>
            <div id="showDiv" style="display:none;">
                <label>输入学生ID</label>
                <input type="text" name="stu_ID"/>
                <br>
                <input type="submit" value="确定" />
            </div>

        </form>



    </body>
</html>
