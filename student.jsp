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

if (uname.equals("Student") && pass.equals("Student"))
{
    out.println("Login Success");
    out.println("<div>");
     out.println("<hr><h2><br><br><br><a href='viewExam.jsp'>View Exam</a></h2>");
     out.println(" <br><br><br><br>");
     out.println(" <hr>");
    out.println("</div>");
    out.println("");
    
    
} else 
{
    out.println("Login fail");
    
}


%>


   
   
   

<br><a href="http://localhost:8084/Project/firstindex.html">Logout</a>

</center>
</body>