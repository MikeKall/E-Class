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
 * Servlet implementation class CoursesProfessors
 */
@WebServlet("/CoursesProfessors")
public class CoursesProfessors extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoursesProfessors() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try 
		{
			String result;
	  		Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/universitydb","postgres","%CLASSIFIED");
			PreparedStatement stmt=null;
			
			String username=request.getParameter("username");
			String password=request.getParameter("passwd");
			//fetch the department of the secretary
			String sql1="select department,name,surname from users where username=?";
			stmt=con.prepareStatement(sql1);
			stmt.setString(1, username);
			ResultSet Rs1=stmt.executeQuery();
			String department=null;
			String sec_name=null;
			String sec_surname=null;
			while(Rs1.next())
			{
				department=Rs1.getString(1);
				sec_name=Rs1.getString(2);
				sec_surname=Rs1.getString(3);
			}
			
			String sql2="SELECT users.name,users.surname,courses.title,courses.course_id\r\n" + 
					"FROM \r\n" + 
					"((users INNER JOIN professors \r\n" + 
					"ON users.username=professors.username)\r\n" + 
					"INNER JOIN professorscourses\r\n" + 
					"on users.username=professorscourses.username)\r\n" + 
					"INNER JOIN COURSES\r\n" + 
					"on professorscourses.course_id=courses.course_id\r\n" + 
					"where users.department=?\r\n" + 
					"order by (name,surname);";
			
			
			//-----------------------------------
			String newline="\n";
			result="<!DOCTYPE html>"+newline;
			result=result+"<html>"+newline;
			result=result+"<head>"+newline;
				result=result+"<title>Courses</title>"+newline;
				result=result+"<meta charset=\"utf-8\">"+newline;
				result=result+"<link rel=\"stylesheet\" type=\"text/css\" href=\"prof.css\">"+newline;
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
					result=result+"<li class=\"name\"><a>"+sec_name+" "+sec_surname+"</a></li>"+newline;
				result=result+"</ul>"+newline;
				result=result+"<table>"+newline;
					result=result+"<tr>"+newline;
						result=result+"<th colspan=\"2\">"+department+"</th>"+newline;
						result=result+"</tr>"+newline;
						stmt=con.prepareStatement(sql2);
						stmt.setString(1, department);
						ResultSet Rs2=stmt.executeQuery();
						while(Rs2.next())
						{
							result=result+"<tr>"+newline;
								result=result+"<td>"+Rs2.getString(1)+" "+Rs2.getString(2)+"</td>"+newline;
								result=result+"<td>"+Rs2.getString(3)+" ("+Rs2.getString(4)+" )"+"</td>"+newline;
							result=result+"</tr>"+newline;
						}
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
