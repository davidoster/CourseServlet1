<%-- 
    Document   : index
    Created on : 23-Apr-2020, 12:10:00
    Author     : mac
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            //out.print(request.getMethod());
            if(request.getMethod().equals("GET")) {
                out.print("This is Method GET");
            }
            if(request.getMethod().equals("POST")) {
                //session = request.getSession();
                session.setAttribute("username", "admin");
                out.print("This is Method POST");
                RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/course.jsp");
                rd.forward(request, response);
            }
        %>
        <form action="index.jsp" method="post"> <!-- <form action="course" method="post"> -->
            Title: <input name="title"><br>
            Type: <input name="type"><br>
            Stream: <input name="stream"><br>
            Start Date: <input name="start_date"><br>
            End Date: <input name="end_date"><br>
            <button type="submit">Submit</button>
        </form>
        
    </body>
</html>
