
<%@page import="models.Course"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Bank</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <% 
            String xyz1 = "XYZ"; 
            Course course = new Course();
            course.setTitle("XYZ");
        %>
        <jsp:useBean id="xyz" class="models.Course" scope="application" />
        <jsp:setProperty name="xyz" property="title" value="XYZ" />
        Title : ${xyz.title}
        
        Session aCourse : <%= session.getAttribute("aCourse") %>
        <% 
            ((models.Course)(session.getAttribute("aCourse"))).setTitle("KOUKOUROUKOU");
//            course2.setTitle("KOUKOUROUKOU");
        %>
        <%= ((models.Course)(session.getAttribute("aCourse"))).getTitle() %>
        <h1>Welcome to the School!</h1>
        <form action="index.jsp" method="POST">
            <div class="form-group">
                <label for="title">Title</label>
                <input type="text" class="form-control" id="title" name="title" maxlength="50" value="<%= xyz1 %>" required>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="stream">Stream</label>
                    <input type="text" class="form-control" id="stream" name="stream" maxlength="50" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="type">Course type</label>
                    <select class="custom-select" id="type" name="type" required>
                        <option value="" selected>Choose...</option>
                        <option value="Lab">Lab</option>
                        <option value="Seminar">Seminar</option>
                    </select>
                </div>
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="startDate">Starting date</label>
                    <input type="date" class="form-control" id="startDate" name="startDate" required>
                </div>
                <div class="form-group col-md-6">
                    <label for="endDate">Ending date</label>
                    <input type="date" class="form-control" id="endDate" name="endDate" required>
                </div>
            </div>
            <div id="alert"></div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.slim.min.js"
        integrity="sha256-pasqAKBDmFT4eHoN2ndd6lN370kFiGUFyTiUHWhU7k8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
        <%
            if (request.getMethod().equals("POST")) {
                RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/views/course.jsp");
                rd.forward(request, response);
            }

        %>
    </body>
</html>
