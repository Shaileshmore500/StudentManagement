<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.ytproject.entities.User"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/NewFile.css" rel="stylesheet">
</head>
<body>

<form>
<table class="table table-striped">

									<tbody>
										
										<tr>
											<th scope="row">Category Name :</th>
		on"><br>
												<small id="passwordtHelp" class="form-text text-muted"></small>
											</td>

										</tr>
										
									</tbody>
								</table>
								<div class="container">
									<button type="submit" ></button>									<td><input type="text" id="Name"
												 name="cat_name"><br>
												<small id="contactHelp" class="form-text text-muted"></small></td>
										</tr>
										<tr>
											<th scope="row" style="font-size: 14px">Decsription :</th>
											<td><input type="text" id="Decsription"
												 name="Decsriptid="save_category"
										class="btn btn-outline-primary">Save</button>

								</div>
								</form>
								<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    </script>
     
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/js2.js"></script>
	
	
	<script >
								
								$(document).ready(function(){
									
									$("#save_category").click(function () {
										alert("hiii2");
										
										
										<%
										try
										{
											String cat_name=request.getParameter("cat_name");
 											String decsription=request.getParameter("Decsription");
											
										Class.forName("com.mysql.cj.jdbc.Driver");

										Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ytprooject", "root", "");
										//String query2 ="insert into";
										String query2 = "insert into category (cat_name,cat_desc) values(?,?)";
										PreparedStatement pstmt2 = con2.prepareStatement(query2);
										
										pstmt2.setString(1,cat_name);
										pstmt2.setString(2,decsription);
										pstmt2.executeUpdate();
										%>
										alert("<%=cat_name%>");
										alert("<%=decsription%>");
										
										<%
										}
										catch(Exception e)
										{
											e.printStackTrace();
										}
										
										%>
									})
									
								});
								
								
								</script>

</body>
</html>