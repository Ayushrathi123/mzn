<!DOCTYPE html>
<html>
<head>
    <title>Jsp Sample</title>
    <%@page import="java.sql.*;"%>
</head>
<body bgcolor=blue>
    <%
    try
    {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=(Connection)DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/ayush2","root","1234");
        Statement st=con.createStatement();
         String key= request.getParameter("key");
        ResultSet rs=st.executeQuery("select * from info2 where key ='key' ");
    %><table border=1 align=center style="text-align: center">
        <%while(rs.next())
        {
            %>
            <tr>
                <td><%out.print(rs.getString(1));%></td>
                <td><%out.print(rs.getString(2));%></td>
                <td><%out.print(rs.getString(3));%></td>
                <td><%out.print(rs.getString(4));%></td>
               
            </tr>
            <%
        }%>
        </table><br>
    <%}
    catch(SQLException e){
        out.print(e.getMessage());%><br><%
    }
    %>
</body>
</html>

