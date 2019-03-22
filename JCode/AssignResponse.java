package com.loginresult;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AssignResponse
 */
@WebServlet("/AssignResponse")
public class AssignResponse extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AssignResponse() {
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
		String content="";
		String lala="";
		String username=request.getParameter("username");
		String professors_name=request.getParameter("prof_val1");
		String professors_surname=request.getParameter("prof_val2");
		String professors_course=request.getParameter("course_val");
		String department="";
		String check_name = null;
		String check_surname = null;
		String check_department = null;
		String prof_exists = "";
		boolean bool_prof_exists=false;
		String course_exists = "";
		boolean bool_course_exists=false;
		try 
		{
			Class.forName("org.postgresql.Driver");
			Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/universitydb","postgres","%CLASSIFIED");
			PreparedStatement stmt=null;
			String select_department="select department from users where username=?";
			stmt=con.prepareStatement(select_department);
			stmt.setString(1, username);
			ResultSet Rs1=stmt.executeQuery();
			while(Rs1.next())
			{
				department=Rs1.getString(1);
			}
			
			String checker="select count(1)\r\n" + 
					"from \r\n" + 
					"users inner join professors\r\n" + 
					"on users.username=professors.username\r\n" + 
					"where users.name=? and users.surname=? and users.department=?";
			professors_name=professors_name.replaceAll(" ","");
			professors_surname=professors_surname.replaceAll(" ","");
			stmt=con.prepareStatement(checker);
			stmt.setString(1, professors_name);
			stmt.setString(2, professors_surname);
			stmt.setString(3, department);
			ResultSet Rs2=stmt.executeQuery();
			
			while(Rs2.next())
			{
				prof_exists=Rs2.getString(1);
			}
			
			if(prof_exists.equals("0")) 
			{
				bool_prof_exists=false;
			}
			else if (prof_exists.equals("1")) 
			{
				bool_prof_exists=true;
			}
			
			String course_checker="select count(1) from courses where course_id=? and dept_name=?";
			professors_course=professors_course.replaceAll(" ","");
			stmt=con.prepareStatement(course_checker);
			stmt.setString(1, professors_course);
			stmt.setString(2, department);
			ResultSet Rs3=stmt.executeQuery();
			while(Rs3.next())
			{
				course_exists=Rs3.getString(1);
			}
			
			if(course_exists.equals("0")) 
			{
				bool_course_exists=false;
			}
			else if (course_exists.equals("1")) 
			{
				bool_course_exists=true;
			}
			if(bool_prof_exists&&bool_course_exists) 
			{	
				String prof_username="select username from users where users.name=? and users.surname=? and users.department=?";
				professors_name=professors_name.replaceAll(" ","");
				professors_surname=professors_surname.replaceAll(" ","");
				stmt=con.prepareStatement(prof_username);
				stmt.setString(1,professors_name);
				stmt.setString(2,professors_surname);
				stmt.setString(3,department);
				ResultSet Rs4=stmt.executeQuery();
				String profe_username="";
				while(Rs4.next())
				{
					profe_username=Rs4.getString(1);
				}
				lala="insert into professorscourses (username,course_id) values (?,?);";
				stmt=con.prepareStatement(lala);
				stmt.setString(1,profe_username);
				stmt.setString(2,professors_course);
				try 
				{
					stmt.executeUpdate();
					String sec_username=request.getParameter("username");
					String password=request.getParameter("passwd");
					
					//fetch the department of the secretary
					String sql1="select department,name,surname from users where username=?";
					stmt=con.prepareStatement(sql1);
					stmt.setString(1, username);
					ResultSet Rs5=stmt.executeQuery();
					String sec_name=null;
					String sec_surname=null;
					while(Rs5.next())
					{
						department=Rs5.getString(1);
						sec_name=Rs5.getString(2);
						sec_surname=Rs5.getString(3);
					}
					
					String newline="\n";
					content="<!DOCTYPE html>"+newline;			
					content=content+"<html>"+newline;
					content=content+"<head>"+newline;
						content=content+"<title>Assign Courses</title>"+newline;
						content=content+"<meta charset=\"UTF-8\">"+newline;
						content=content+"<link rel=\"stylesheet\" type=\"text/css\" href=\"assignres.css\">"+newline;
					content=content+"</head>"+newline;
					content=content+"<body>"+newline;
						content=content+"<ul>"+newline;
							//----------------------------
							content=content+"<form action=\"SecretaryServletLoginMain\" method=\"post\">"+newline;
								content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
								content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								content=content+"<li><button><a>Total Courses</button></a></li>"+newline;
							content=content+"</form>"+newline;
							//----------------------------
							content=content+"<form action=\"CoursesProfessors\" method=\"post\">"+newline;
								content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
								content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								content=content+"<li><button><a>Professors/Courses</a></button></li>"+newline;
							content=content+"</form>"+newline;
							//----------------------------	
							content=content+"<form action=\"AssignProf.jsp\" method=\"post\">"+newline;
								content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
								content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								content=content+"<li><button><a>Assign Course to Professor</a></button></li>"+newline;
							content=content+"</form>"+newline;
							//----------------------------	
							content=content+"<li class=\"name\"><button><a href=\"index.html\">Log out</a></button></li>"+newline;
								content=content+"<li class=\"name\"><a>"+sec_name+" "+sec_surname+"</a></li>"+newline;
								content=content+"</ul>"+newline;
						content=content+"<center>"+newline;
							content=content+"<form>"+newline;
								content=content+"<div class=\"msg\">"+newline;
									content=content+"Your changes have been saved <strong>successfully!</strong>"+newline;
								content=content+"</div>"+newline;
							content=content+"</form>"+newline;
						content=content+"</center>"+newline;
					content=content+"</body>"+newline;
					content=content+"</html>"+newline;
				}
				catch(SQLException e) 
				{
					String sec_username=request.getParameter("username");
					String password=request.getParameter("passwd");
					
					//fetch the department of the secretary
					String sql1="select department,name,surname from users where username=?";
					stmt=con.prepareStatement(sql1);
					stmt.setString(1, username);
					ResultSet Rs5=stmt.executeQuery();
					String sec_name=null;
					String sec_surname=null;
					while(Rs5.next())
					{
						department=Rs5.getString(1);
						sec_name=Rs5.getString(2);
						sec_surname=Rs5.getString(3);
					}
					
					String newline="\n";
					content="<!DOCTYPE html>"+newline;			
					content=content+"<html>"+newline;
					content=content+"<head>"+newline;
						content=content+"<title>Assign Courses</title>"+newline;
						content=content+"<meta charset=\"UTF-8\">"+newline;
						content=content+"<link rel=\"stylesheet\" type=\"text/css\" href=\"assignres.css\">"+newline;
					content=content+"</head>"+newline;
					content=content+"<body>"+newline;
						content=content+"<ul>"+newline;
							//----------------------------
							content=content+"<form action=\"SecretaryServletLoginMain\" method=\"post\">"+newline;
								content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
								content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								content=content+"<li><button><a>Total Courses</button></a></li>"+newline;
							content=content+"</form>"+newline;
							//----------------------------
							content=content+"<form action=\"CoursesProfessors\" method=\"post\">"+newline;
								content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
								content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								content=content+"<li><button><a>Professors/Courses</a></button></li>"+newline;
							content=content+"</form>"+newline;
							//----------------------------	
							content=content+"<form action=\"AssignProf.jsp\" method=\"post\">"+newline;
								content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
								content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
								content=content+"<li><button><a>Assign Course to Professor</a></button></li>"+newline;
							content=content+"</form>"+newline;
							//----------------------------	
							content=content+"<li class=\"name\"><button><a href=\"index.html\">Log out</a></button></li>"+newline;
								content=content+"<li class=\"name\"><a>"+sec_name+" "+sec_surname+"</a></li>"+newline;
								content=content+"</ul>"+newline;
						content=content+"<center>"+newline;
							content=content+"<form>"+newline;
								content=content+"<div style=\"background-color:#e60000\" class=\"msg\">"+newline;
									content=content+"There has been an error. (This data might already exists)."+newline;
								content=content+"</div>"+newline;
							content=content+"</form>"+newline;
						content=content+"</center>"+newline;
					content=content+"</body>"+newline;
					content=content+"</html>"+newline;
				}
				
				
			}
			else 
			{
				String sec_username=request.getParameter("username");
				String password=request.getParameter("passwd");
				
				//fetch the department of the secretary
				String sql1="select department,name,surname from users where username=?";
				stmt=con.prepareStatement(sql1);
				stmt.setString(1, username);
				ResultSet Rs5=stmt.executeQuery();
				String sec_name=null;
				String sec_surname=null;
				while(Rs5.next())
				{
					department=Rs5.getString(1);
					sec_name=Rs5.getString(2);
					sec_surname=Rs5.getString(3);
				}
				
				String newline="\n";
				content="<!DOCTYPE html>"+newline;			
				content=content+"<html>"+newline;
				content=content+"<head>"+newline;
					content=content+"<title>Assign Courses</title>"+newline;
					content=content+"<meta charset=\"UTF-8\">"+newline;
					content=content+"<link rel=\"stylesheet\" type=\"text/css\" href=\"assignres.css\">"+newline;
				content=content+"</head>"+newline;
				content=content+"<body>"+newline;
					content=content+"<ul>"+newline;
						//----------------------------
						content=content+"<form action=\"SecretaryServletLoginMain\" method=\"post\">"+newline;
							content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
							content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
							content=content+"<li><button><a>Total Courses</button></a></li>"+newline;
						content=content+"</form>"+newline;
						//----------------------------
						content=content+"<form action=\"CoursesProfessors\" method=\"post\">"+newline;
							content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
							content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
							content=content+"<li><button><a>Professors/Courses</a></button></li>"+newline;
						content=content+"</form>"+newline;
						//----------------------------	
						content=content+"<form action=\"AssignProf.jsp\" method=\"post\">"+newline;
							content=content+"<input type=\"hidden\" name=\"username\" value=\""+sec_username+"\"/>";
							content=content+"<input type=\"hidden\" name=\"passwd\" value=\""+password+"\"/>";
							content=content+"<li><button><a>Assign Course to Professor</a></button></li>"+newline;
						content=content+"</form>"+newline;
						//----------------------------	
						content=content+"<li class=\"name\"><button><a href=\"index.html\">Log out</a></button></li>"+newline;
							content=content+"<li class=\"name\"><a>"+sec_name+" "+sec_surname+"</a></li>"+newline;
							content=content+"</ul>"+newline;
					content=content+"<center>"+newline;
						content=content+"<form>"+newline;
							content=content+"<div style=\"background-color:#e60000\" class=\"msg\">"+newline;
								content=content+"There has been an error. Wrong Entry."+newline;
							content=content+"</div>"+newline;
						content=content+"</form>"+newline;
					content=content+"</center>"+newline;
				content=content+"</body>"+newline;
				content=content+"</html>"+newline;
			}
			stmt.close();
			con.close();
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		// Set response content type
	    response.setContentType("text/html");

	   // Actual logic goes here.
	   PrintWriter out = response.getWriter();
	   
	   
		   out.println(content);
		   out.flush();
		   out.close();
	   
	   /*
	   else 
	   {
		   out.println("doesnt exist");
		   out.flush();
		   out.close();
	   }
	   */
	   
	}

}
