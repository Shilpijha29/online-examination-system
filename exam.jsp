<%-- 
    Document   : exam
    Created on : Apr 15, 2022, 11:02:55 AM
    Author     : d1403
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body{
            background-image: url(img8.gif);
                background-repeat: no-repeat;
       
                background-size: cover;
                background-attachment: fixed;
        }
    </style>
    <body>
    <center>
        <form action="dbpage.jsp">
            <pre><h2><br> Create a Google Form and 
write Exam name and Paste Google form link, Form Response Link Below </h2></pre><br><br><hr>
            <br><br><br>
            <a href="https://docs.google.com/forms/u/0/"target="_blank"><h2 style='color:white;'>Go to Google Form</h2></a><br><br>
            Exam Name: <input type="text" placeholder="Enter Exam Name" name="examName"/>
            Link:  <input type="text" placeholder="Enter Google form link" name="examLink"/>
       Response Link:   <input type="text" placeholder="Enter Response link" name="examResp"/>
       
       <input type="submit" class="btn btn-success" value="submit"/>
       </form>
        <br><br><br><br><br><br><hr><br>
        <a style='color: white;' href='http://localhost:8084/Project/firstindex.html'>Logout</a>
        </center>
    </body>
</html>
