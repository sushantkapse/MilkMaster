<%@include file="connection.jsp" %>
<%
	if(session.getAttribute("uid")==null){
		response.sendRedirect("index.jsp");
		return;
	}

	if(request.getParameter("submit")!=null){
		String cow = request.getParameter("cow");
		String buffalo = request.getParameter("buffalo");
		
		con.createStatement().executeUpdate("update rates set cow_qty="+cow+", buffalo_qty="+buffalo);
		out.print("<script>alert('Rates updated successfully');location.href='staff-dashboard.jsp'</script>");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Admin</title>

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/dashboard.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>

	<body>
		<jsp:include page="staff-sidebar.jsp"></jsp:include>
		
		<div class="main">
			<h1>Welcome - <%=session.getAttribute("uname").toString().toUpperCase()%></h1>

		<%
			ResultSet rs = con.createStatement().executeQuery("select * from rates");
			rs.next();
		%>
			<div class="container">
				<form action="view-price.jsp">
				<table border="1" class="table">
				<tr>
					<td><b>Cow:</b></td>
					<td><input type="text" name="cow" required value="<%=rs.getInt(1)%>"> Ltrs</td>
				</tr>
				<tr>
					<td><b>Buffalo:</b></td>
					<td><input type="text" name="buffalo" required value="<%=rs.getInt(2)%>"> Ltrs</td>
				</tr>
				<tr>
					<td colspan=2 align="center"><input type="submit" value="Update" name="submit" class="btn btn-success"></td>
				</tr>
				</table>
				</form>			
			</div>
		</div>
	</body>
</html>