<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="GBK"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=GBK">
        <title>View PPT</title>
    </head>
    <body>
        <%    
            //            D:\Study\DAYIXIA\Java\homework\Login\build\web\
            String path = request.getServletContext().getRealPath("/") + "/view_ppt/pics";//绝对路径
            out.println(request.getServletContext().getRealPath("/"));
            String name = "";
            try { 
                File f = new File(path);
                if (f.isDirectory()){
                    File[] fList = f.listFiles();
                    for (int j = 0; j < fList.length; j++) {
                        File file = fList[j];
                        if (file.isFile()){
                            //相对路径
        %>
        <img src="view_ppt/pics/pic_<%=(j+1)%>.jpg" width="100%"> 第 <%=(j+1)%> 页
        <%
                        }
                    }
                }
            } catch (Exception e){
                    System.out.print(e);
            }
        %>
    </body>
</html>


