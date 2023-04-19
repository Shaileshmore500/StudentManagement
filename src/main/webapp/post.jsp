<%@page import="com.ytproject.entities.User"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show post Page</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link href="/css/NewFile.css" rel="stylesheet">
<style>
body {
	overflow-x: hidden
}

.post_footer .btn2 {
	background: none;
	border: none;
}
.post_footer .btn2 img:hover
{

background-color: blue;
}
.post_user_img {	
	max-width: 50px;
	border-radius: 50%;
	max-height: 50px;
	width: 40px;
	height: 40px;
	margin: 2px;
}

.head_table {
	width: auto;
}

.card-body {
	margin: 5px 5px 5px 5px;
	padding: 0;
	padding: 0px !important;
}

.post_img {
	width: 100%;
	max-height: 253px;
	border-radius: 10px;
	min-height: 265px;
}

.hr {
	margin-top: 1rem;
	margin-bottom: 1rem;
	border: 0;
	border-top: 1px solid black;
}

.card {
	margin-left: 40px;
	width: 300px !important;
	margin-right: 40px;
}

.content_text {
	max-height: 200px;
	overflow-y: auto;
}

.all_post {
	display: inline-flex;
	margin-left: 15%;
	width: auto;
}

.post_main_div {
	margin-bottom: 15px;
	display: inline-flex;
}

.post_sub_div {
	margin-left: -15px;
	margin-right: 45px;
}

.like_img {
	height: 20px;
	width: 20px;
	border-radius: 50%;
	margin-left: 5px;
}

.share_img {
	height: 20px;
	width: 20px;
	border-radius: 50%;
	float: right;
	margin-top: 9px;
	margin-right: 15px;
}

.read_more_button {
	border-radius: 24px;
	width: 211px;
	padding: 1px;
	margin-left: 8px;
	margin-right: 8px;
}

.post_footer {
	padding-top: 4px;
	padding-bottom: 4px;
	border-radius: 5px;
	background-color: #246d66;
	display: flex;
}

.post_head {
	border-radius: 6px;
	background-color: #246d66;
	color: aliceblue;
}
</style>

<script src=
"https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
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


</head>

<body>
	<div style="margin-left: 10%">
		<h5>
			<a href="#"> <b> <u>Posts Corner:</u>
			</b></a>
		</h5>
	</div>




	<!-- ---------------------------------------------------- -->
	<div class="container">
		<div class="row" style="margin-top: 0px">

			<%
			Class.forName("com.mysql.cj.jdbc.Driver");

			Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ytprooject", "root", "");
			String query2 = "select pId,pTitle,pContent,pCode,pLink,pPic,cId,pDate,u.name,u.profile_image from ytprooject.post left join user_inf u on userId=u.id order by pId limit 3";

			Statement stmt2 = con2.createStatement();
			ResultSet set = stmt2.executeQuery(query2);

			while (set.next()) {

				int pid=set.getInt(1);
				String pTitle = set.getString(2);
				String pcontent = set.getString(3);
				String pCode = set.getString(4);
				String pLink = set.getString(5);
				String pPic = set.getString(6);
				String cid = set.getString(7);
				Timestamp pdate = set.getTimestamp(8);
				String uname = set.getString(9);
				String uimg = set.getString(10);
				System.out.println(pPic);
				//int uId=set.getInt(7);
			%>




			<div class="col-md-4">
				<div class="card" style="border-color: #246d66;">
					<div class='post_head'>
						<table class="head_table">
							<tr>
								<td rowspan="2"><img src="pic/<%=uimg%>"
									class='post_user_img'></td>
								<th style='padding-left: 5px'><%=uname%></th>
							</tr>
							<tr>

								<td style='padding-left: 5px'><i class="fa fa-clock-o"><%=pdate%></i></td>
							</tr>
							
						</table>

					</div>

					<img class="card-img-top" src="pic/java.jpg" alt="Card image cap">
					<div class="card-body">




						<h5 class="card-title"><%=pTitle%></h5>
						<p class="card-text"><%=pcontent%></p>
						<div>
							<span><a href="<%=pLink%>" target="_blank">More On
									Links</a></span>
						</div>
					</div>
					<div class="post_footer">
						<button class="btn2 btn btn-outline-light btn-lg " id="<%=pid%>">
						
							 <img src="pic/like2_img.png" style="height: 25px; width: 25px;" class="btn_hour" id="likefalsebtn_<%=pid%>">
							 <img src="pic/like_img.png" style="height: 25px; width: 25px;display: none" class="btn_hour" id="liketruebtn_<%=pid%>">
							 <script type="text/javascript">
							 
							 $(document).ready(function () {
								 
								 $.getJSON("https://api.ipify.org?format=json", function(data) {
							         
								        // Setting text of element P with id gfg
								       console.log(data.ip);
								        alert(data.ip);
								    })
								 
								
								 $('#<%=pid%> img').click(function () {
									$("#likefalsebtn_<%=pid%>").toggle();
									$("#liketruebtn_<%=pid%>").toggle();
								});
								 
							});
							 
							
							 
							 
							 </script>
						</button>
						<i id="like_count"></i>

						<button class="btn btn-outline-light btn-lg read_more_button">
							<span class="fa fa-plus"></span> Read More
						</button>
						<button class="btn2 btn btn-outline-light btn-lg" >
							<i style="font-size: 25px" class="fa btn_hour">&#xf1e0;</i>
						</button>



					</div>



				</div>
			</div>




			<%
			}
			%>
		</div>
	</div>











































</body>
</html>