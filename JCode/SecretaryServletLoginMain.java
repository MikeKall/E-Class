package com.loginresult;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SecretaryServletLoginMain
 */
@WebServlet("/SecretaryServletLoginMain")
public class SecretaryServletLoginMain extends HttpServlet {
	private static final long serialVersionUID = 1L;
	String result="";
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SecretaryServletLoginMain() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			//connect servlet to database
	  		Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/universitydb","postgres","%CLASSIFIED");
			PreparedStatement stmt=null;
			
			//check if the username exists and if so, if belongs to secretaries
			String secretaries_check="select username from secretaries where username=?";
			stmt=con.prepareStatement(secretaries_check);
			stmt.setString(1, request.getParameter("username"));
			ResultSet Rs=stmt.executeQuery();
			String username = null;
			boolean first_check=false;
			while(Rs.next()) 
			{
				username=Rs.getString(1);
			}
			if(username!=null) 
			{
				first_check=true;
			}
			
			if(first_check) 
			{
				//accurate username => fetch name,surname,department
				String sql1="select name,surname,department from users where username=?";
				stmt=con.prepareStatement(sql1);
				stmt.setString(1, username);
				ResultSet Rs1=stmt.executeQuery();
				String department="";
				String name="";
				String surname="";
				while(Rs1.next())
				{	
					name=Rs1.getString(1);
					surname=Rs1.getString(2);
					department=Rs1.getString(3);
				}
				String password="";
				String sql2="select password from secretaries where username=?";
				stmt=con.prepareStatement(sql2);
				stmt.setString(1, username);
				ResultSet Rs2=stmt.executeQuery();
				while(Rs2.next())
				{	
					password=Rs2.getString(1);
				}
				//
				if((password.equals(request.getParameter("passwd")))) 
				{
					String sql3="SELECT courses.course_id,courses.title\r\n" + 
							"FROM \r\n" + 
							"(users INNER JOIN secretaries\r\n" + 
							"ON users.username=secretaries.username)\r\n" + 
							"INNER JOIN courses \r\n" + 
							"ON users.department=courses.dept_name\r\n" + 
							"where users.username=?\r\n" + 
							"order by(course_id);";
					String newline="\n"; 
					//-----------------------------------
					result="<!DOCTYPE html>"+newline;
					result=result+"<html>"+newline;
					result=result+"<head>"+newline;
						result=result+"<title>Results</title>"+newline;
						result=result+"<meta charset=\"UTF-8\">"+newline;
						result=result+"<link rel=\"stylesheet\" type=\"text/css\" href=\"main.css\">"+newline;
					result=result+"</head>"+newline;
					result=result+"<body>"+newline;
						result=result+"<ul>"+newline;
							//----------------------------
							result=result+"<form action=\"SecretaryServletLoginMain\" method=\"post\">"+newline;
								result=result+"<input type=\"hidden\" name=\"username\" value=\""+username+"\"/>";
								result=result+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								result=result+"<li><button><a>Total Courses</button></a></li>"+newline;
							result=result+"</form>"+newline;
							//----------------------------
							result=result+"<form action=\"CoursesProfessors\" method=\"post\">"+newline;
								result=result+"<input type=\"hidden\" name=\"username\" value=\""+username+"\"/>";
								result=result+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								result=result+"<li><button><a>Professors/Courses</a></button></li>"+newline;
							result=result+"</form>"+newline;
							//----------------------------	
							result=result+"<form action=\"AssignProf.jsp\" method=\"post\">"+newline;
								result=result+"<input type=\"hidden\" name=\"username\" value=\""+username+"\"/>";
								result=result+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								result=result+"<li><button><a>Assign Course to Professor</a></button></li>"+newline;
							result=result+"</form>"+newline;
							//----------------------------	
								result=result+"<li class=\"name\"><button><a href=\"index.html\">Log out</a></button></li>"+newline;
								
								result=result+"<li class=\"name\"><a>"+name+" "+surname+"</a></li>"+newline;
						result=result+"</ul>"+newline;
						result=result+"<table>"+newline;
							result=result+"<tr>"+newline;
								result=result+"<th colspan=\"2\">"+department+"</th>"+newline;
							result=result+"</tr>"+newline;
							stmt=con.prepareStatement(sql3);
							stmt.setString(1, username);
							ResultSet Rs3=stmt.executeQuery();
							int n=0;
							while(Rs3.next())
							{
								result=result+"<tr>"+newline;
									result=result+"<td>"+Rs3.getString(1)+"</td>"+newline;
									result=result+"<td>"+Rs3.getString(2)+"</td>"+newline;
								result=result+"</tr>"+newline;
								n++;
							}
							result=result+"<tr>"+newline;
								result=result+"<td><b>Sum of subjects:</b></td>"+newline;
								result=result+"<td><b>"+n+"</b></td>"+newline;
							result=result+"</tr>"+newline;
						result=result+"</table>"+newline;
					result=result+"</body>"+newline;
					result=result+"</html>"+newline;
					//-----------------------------------
					// Set response content type
				    response.setContentType("text/html");

				   // Actual logic goes here.
				   PrintWriter out = response.getWriter();
				   
				   out.println(result);
				   out.flush();
				   out.close();
				}
				else 
				{
					RequestDispatcher view = request.getRequestDispatcher("index.html");
					view.forward(request, response);
				}
				stmt.close();
				con.close();
			}
			else 
			{
				RequestDispatcher view = request.getRequestDispatcher("index.html");
				view.forward(request, response);
				stmt.close();
				con.close();
			}
			stmt.close();
			con.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
	   
	}

}
