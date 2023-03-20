<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="tags/all_js_css.jsp"%>
</head>
<body>
	<div class="contianer-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<h1>Edit your Note</h1>
		<br>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();

		Note note = (Note) s.get(Note.class, noteId);
		
		%>
		<!-- this is add form  -->
		<form action="UpdateServlet" method="post">
		<input value="<%= note.getId()%>" name ="noteId" type="hidden">
			<div class="mb-3">
				<label for="title" class="form-label">Note Title</label> 
				<input name="title" required class="form-control" id="title" aria-describedby="emailHelp" placeholder="Enter Here" value="<%= note.getTitle()%>">
				
			</div>
			<div class="mb-3">
				<label for="content" class="form-label">Note Content</label>
				<textarea name="content"  required id="content" placeholder="Enter your Content here" class="form-control" style="height: 300px"><%= note.getContent() %></textarea>
			</div>
			
			<div class="container text-center">
			<button type="submit" class="btn btn-success">Save your Note</button>
			</div>
		</form>
		
	</div>


</body>
</html>