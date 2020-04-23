<%-- 
    Document   : course
    Created on : 23-Apr-2020, 11:51:27
    Author     : mac
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course</title>
    </head>
    <body>
        <h1>Course Data</h1>
        <jsp:include page="../../menu.html" flush="true" />
        
        <%
//            RequestDispatcher rd = request.getRequestDispatcher("../../menu.html");
//            rd.include(request, response);
            out.print("Title : " + request.getParameter("title"));
            out.print("Username : " + session.getAttribute("username"));
        %>
        <%! 
            private String path = "WEB-INF/views/course.jsp"; 
            private String end = "END";
        %>
        <%
            out.print("Path = " + path + "<br>");
            out.print("End = " + end);
        %>
        
    </body>
</html>
