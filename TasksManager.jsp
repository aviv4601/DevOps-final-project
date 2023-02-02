<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Task Manager</title>
</head>
<body>
	<h1>Task Manager</h1>
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