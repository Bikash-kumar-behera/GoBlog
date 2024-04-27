
<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.User"%>
<%@page import="com.dao.PostDao"%>
<%@page import="com.helper.ConnectionProvider"%>
<%@page import="com.entity.Post"%>


<%@page errorPage="error.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="error.jsp"%>
<%
User user = (User) session.getAttribute("currentuser");
if (user == null) {
	response.sendRedirect("login.jsp");
}
%>

<%
int pid = Integer.parseInt(request.getParameter("pid"));

PostDao postDao = new PostDao(ConnectionProvider.getConnection());

ArrayList<Post> posts = postDao.getPostById(pid);
%>
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link rel="stylesheet" href="css/mystyle.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@include file="usernavbar.jsp"%>
	<div class="d-flex flex-wrap container-fluid">
		<%
		for (Post p : posts) {
		%>



		<div class="col-md-4 mt-2">


			<div class="card" style="height: 600px; position:relative; overflow: hidden ">
				<div class="text-center mt-2" style="max-height:200px; overflow: hidden">
					<img src="image/<%=p.getImage()%>" alt="<%=p.getTitle()%>"
						class="cov contain h-auto w-auto" >
				</div>
				<div class="card-body">
					<h5 class="card-title"><%=p.getTitle()%></h5>
					<p class="card-text" style="overflow: hidden; max-height: 250px"><%=p.getContent()%></p>
				</div>
				<div class="card-footer bg-dark text-center"
					style="positon: fixed; buttom: 0">
					<a href="viewblog.jsp?pid=<%=p.getPid()%>"
						class="btn btn-dark text-white">Read More...</a>
				</div>
			</div>



		</div>

		<%
		}
		%>
	</div>
</body>
</html>