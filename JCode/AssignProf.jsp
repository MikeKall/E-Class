<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Assign Courses</title>
	<link rel="stylesheet" type="text/css" href="assign.css">
</head>
<body>
<%
String username="";
String password="";
String name="";
String surname="";
//we have to first set a connection
try 
{
	//connect servlet to database
	Class.forName("org.postgresql.Driver");
	Connection con=DriverManager.getConnection("jdbc:postgresql://localhost:5432/universitydb","postgres","%CLASSIFIED");
	PreparedStatement stmt=null;
	username=request.getParameter("username");
	password=request.getParameter("passwd");
	name="";
	surname="";
	String name_surname="select name,surname from users where username=?";
	stmt=con.prepareStatement(name_surname);
	stmt.setString(1, username);
	ResultSet Rs1=stmt.executeQuery();
	while(Rs1.next())
	{	
		name=Rs1.getString(1);
		surname=Rs1.getString(2);
	}
	stmt.close();
	con.close();
} 
catch (SQLException e) 
{
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
	<ul>
  	<form action="SecretaryServletLoginMain" method="post">
		<input type="hidden" name="username" id="username" value="<%=username %>">
		<input type="hidden" name="passwd" id="password" value="<%=password %>">
		<li><button><a>Total Courses</button></a></li>
		</form>
		<form action="CoursesProfessors" method="post">
		<input type="hidden" name="username" value="<%=username %>">
		<input type="hidden" name="passwd" value="<%=password %>">
		<li><button><a>Professors/Courses</a></button></li>
		</form>
		<form action="AssignProf.jsp" method="post">
		<input type="hidden" name="username" value="<%=username %>">
		<input type="hidden" name="passwd" value="<%=password %>">
		<li><button><a>Assign Course to Professor</a></button></li>
		</form>
  		<li class="name"><button><a href="index.html">Log out</a></button></li>
  		<li class="name"><a><%=name+" "+surname%></a></li>
	</ul>
	<br>
	<form action="AssignResponse" method="post">
	<input type="hidden" name="username" value="<%=username %>">
	<input type="hidden" name="passwd" value="<%=password %>">
	<input type="hidden" name="prof_val1" id="prof_val1" value="">
	<input type="hidden" name="prof_val2" id="prof_val2" value="">
	<input type="hidden" name="course_val" id="course_val" value="">
	<table>
	<tr>
		<th align="left">
			<label>Name:</label>
		</th>
		<th align="left">
			<label>Course:</label>
		</th>
	</tr>
	<tr>
		<th><input type="text" placeholder="Professor (Name Surname)" name="Prof" id="Prof" required></th>
		<th><input type="text" placeholder="Course (CS.XXX)" name="Course" id="Course" required></th>
	</tr>
	<tr>
		<th colspan="2">
			<button id = "Search" type = "Submit" = "Search" onclick="value_checker()">Submit</button>
		</th>
	</tr>
	</table>
	
	</form>
	<script>
	function value_checker()
	{
	var sec_professor="";
	var sec_course="";
	var name_section=0;
	var prof_name="";
	var prof_surname="";
	sec_professor=document.getElementById("Prof").value;
	sec_course=document.getElementById("Course").value;

	for(i=0;i<sec_professor.length;i++)
	{
		if(sec_professor.charAt(i)==' ')
		{
			name_section++;
		}
		if(name_section==0)
		{
			prof_name=prof_name+sec_professor.charAt(i);
		}
		else if(name_section==1)
		{
			prof_surname=prof_surname+sec_professor.charAt(i);
		}
		document.getElementById("prof_val1").value=prof_name;
		document.getElementById("prof_val2").value=prof_surname;
		document.getElementById("course_val").value=sec_course;
	}
	

}
</script>

</body>
</html>