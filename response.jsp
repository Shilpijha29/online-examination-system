<%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
       
        body{
             margin-top: 0px;
             padding-top: 20px;
            background-image: url(img7.jpg);
            background-repeat: no-repeat;
                height: 110%;
                background-size: 130%;
                background-position: center;
               
        }
        .cen{
           
            margin-bottom: 200px;
        }
        table{
            padding: 40px;
            background: white;
            width: 100%;
            }

        td {
            height: 70px;
            }
        
    </style>
    <body>
        <center class="cen">
       <table border="1">
            <tr>
                <td colspan="3"><center>Exam LIST</center></td>
            </tr>
            <tr>
                <td><b>Exam Name</b></td>
                <td><b> Response Link </b></td>
                
            </tr>
            
        <%        
           
            String driverClassName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/mydb?zeroDateTimeBehavior=convertToNull";
            String user="root";
            String pwd="";
          
           //register jdbc driver or load driver
            Class.forName(driverClassName).newInstance();
            //Open connection
            Connection con=DriverManager.getConnection(url,user,pwd);
            //making a prepared statement and storing in resultset
            
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery("select * from exam");
           
            while(rs.next()) {
                %>
    <tr>
        <td><%=rs.getString("EN")%></td>
        <td><a href="<%=rs.getString("ELK")%>" target='blank'>View Response</a></td>
    </tr>
    <%
        }
        out.println("</table>");
          
//           / out.println("<a href='ViewStudents.jsp'> Click here to view update </a>");
           rs.close();
            st.close();
            con.close();
            %>
    </table>
    <br><br>
    <a style="color:white" href='http://localhost:8084/Project/firstindex.html'>Logout</a>
    </center>
        </body>
</html>