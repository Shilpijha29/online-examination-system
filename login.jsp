<style>
    .b1 {
        background-image: url(img5.jpg);
       background-repeat: no-repeat;
       height: 90%;
                background-size: cover;
                background-attachment: fixed;
    }
    div {
               
                margin-top: 200px;
                
            }
            a {
                color:black;
            }    
    
</style>

<body class="b1">
<center>
<% 
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");

if (uname.equals("Teacher") && pass.equals("Teacher"))
{
    out.println("Login Success");
    out.println("<div>");
     out.println("<hr><h2><br><br><br><a href='exam.jsp'>Add Exam</a></h2>");
     out.println("<br><br><a href='response.jsp' >View Response</a>");
     out.println(" <br><br><br><br>");
     out.println(" <hr>");
    out.println("</div>");
    
} else 
{
    out.println("Login fail");    
}


%>



<br> <br><a href="http://localhost:8084/Project/firstindex.html">Log Out</a>

</center>
</body>