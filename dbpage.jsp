<%@page language="java" import="java.sql.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
       
        <%        
            //read request parameter
            String examName = request.getParameter("examName");
            String examLink = request.getParameter("examLink");
            String examResp = request.getParameter("examResp");
            //initialize variable of driver
            
            String driverClassName="com.mysql.jdbc.Driver";
            String url="jdbc:mysql://localhost:3306/mydb?zeroDateTimeBehavior=convertToNull";
            String user="root";
            String pwd="";
          
           //register jdbc driver or load driver
            Class.forName(driverClassName).newInstance();
            //Open connection
            Connection con=DriverManager.getConnection(url,user,pwd);
            //making a prepared statement and storing in resultset
            
            PreparedStatement st = con.prepareStatement("insert into exam(EN,EL,ELK) value(?,?,?)");
            st.setString(1,examName);
            st.setString(2,examLink);
            st.setString(3,examResp);
                    
            int result= st.executeUpdate();
              
            //reading from result set
            if(result < 1)
                out.println("Problem in saving Examination's details");
            else
                out.println("Examination's record saved successfully...!!!");
            
               
            out.println("<br>");
//           / out.println("<a href='ViewStudents.jsp'> Click here to view update </a>");
            st.close();
            con.close();
            %>
            <br>
            <a href='http://localhost:8084/Project/exam.jsp'>Go Back</a>
    </table>
    </body>
</html>