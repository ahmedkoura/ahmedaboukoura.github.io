<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ page import="java.sql.SQLException" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Hi Beer World</title>
		<style>
		table, th, td {
		  border: 1px solid black;
		  border-collapse: collapse;
		}
		th, td {
		  padding: 15px;
		  text-align: center;
		}
		#t01 {
		  width: 100%;    
		  background-color: #f1f1c1;
		}
		</style>
	   </head>
	<body>
       		 <!-- the usual HTML way -->

	<%
	try {

		//Get the database connection
		ApplicationDB db = new ApplicationDB();	
		Connection con = db.getConnection();
          
		//Create a SQL statement
		Statement stmt = con.createStatement();

		//Get parameters from the HTML form at the index.jsp
	        String query = request.getParameter("query");		        
			//////////////////////////////////////
			
				 out.println("<center> <b> Welcome To the Modification page </center> <br><br>");
				 

					
		
        	  out.print("<form method=\"post\" action=\"Modification.jsp\"><table><tr><td>Query</td><td><input type=\"text\" name=\"query\"></td></tr></table><input type=\"submit\" value=\"Run !\"></form>");
        	  try
        	  {
            	  if(query != null){
            		  
                	  stmt.executeUpdate(query);
                	  if(query != null){
                    	  out.println("You succsffully excuted your query!");
                    	  }
                   }
        	  }
        	  catch (SQLException ex )
        	  {
           out.print("Error excuting your query due to foreign key constrain. please Re-write Your query");
        	  }

		con.close();

	} catch (Exception ex) {
		out.print(ex);
		out.print("insert failed");
		
		
	}

%>

</body>
</html>