<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	body {
		background-color: lightgray;
	}

	h1 {
		color: darkblue;
		text-align: center;
	}

h6 {
		color: darkblue;
		text-align: center;
	}
	
	form {
		background-color: white;
		padding: 20px;
		margin: 20px auto;
		width: 60%;
		border: 2px solid darkblue;
		border-radius: 10px;
	}

	input[type="text"], input[type="submit"] {
		margin: 10px;
		padding: 5px;
		font-size: 18px;
	}

	input[type="submit"] {
		background-color: darkblue;
		color: white;
		cursor: pointer;
	}

	h2 {
		color: darkblue;
		text-align: center;
	}

	p {
		font-size: 18px;
		margin: 10px;
	}
</style>
<title>Task Manager</title>
</head>
<body>
	<h1>Task Manager</h1>
		<h6>Project by Aviv Amrusi and Daniel Shkliar</h6>
	<form action="taskmanager" method="post">
		Task Name: <input type="text" name="taskName"><br>
		Description: <input type="text" name="description"><br>
		<input type="submit" value="Submit">
	</form>

	<%
		String taskName = request.getParameter("taskName");
		String description = request.getParameter("description");
		if (taskName != null && description != null) {
	%>
		<h2>Task Details</h2>
		<p>Task Name: <%= taskName %></p>
		<p>Description: <%= description %></p>
	<%
		}
	%>
</body>
</html>
