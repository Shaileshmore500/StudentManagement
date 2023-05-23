<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="css_files/NewFile.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">

.post_div
{
display: flex;
}
.jumbotron {
    padding: 10px 10px !important;
    }
@media (min-width: 576px)
.jumbotron {
    padding: 14px;
}@media (min-width: 1200px)
.container {
    max-width: 1018px;
}


</style>
</head>
<body>
	<%@include file="normal_navbar.jsp"%>
	
	
<div>
<select >
<option>course</option>
<option>course</option>
<option>course</option>
<option>course</option>


</select>

<input type="text" id="select_course">
</div>

	<div style="margin-top: 1%; ">
		<div class="jumbotron primary-background text-white post_div">
			<div>	
			<img src="pic/java.jpg" style="width: 300px;">
			</div>
			<div class="container" style="margin: 8px;"s>
				<h3 class="display-3">Wellcome to Zep-Tech</h3>
				<p>A programming language is a formal language comprising a set
					of strings that produce various kinds of machine code output.
					Programming languages are one kind of computer language, and are
					used in computer programming to implement algorithms.</p>
				<p>Thousands of different programming languages have been
					created, and more are being created every year. Many programming
					languages are written in an imperative form (i.e., as a sequence of
					operations to perform) while other languages use the declarative
					form (i.e. the desired result is specified, not how to achieve it).</p>

				<a href="index.jsp"><button class="btn btn-outline-light btn-lg">
						<span class="fa fa-user-circle-o fa-spin"></span> Apply
					</button>&nbsp&nbsp&nbsp&nbsp</a> 

			</div>
		</div>
	</div>


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
	<script type="text/javascript" src="java_script/js2.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function() {
		
		change();
		$('#select_course').change(function change() {
		                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
		})
		
		
	})
	
	</script>
	
</body>
</html>