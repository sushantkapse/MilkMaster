<%
	if(session.getAttribute("uid")==null){
		response.sendRedirect("index.jsp");
		return;
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="connection.jsp"%>
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
	ResultSet rs = con.createStatement().executeQuery("select * from customer");
%>
			<div class="container">
				<table class="table table-hover">
	    		<thead>
		      		<tr>
		        		<th>ID</th>
				        <th>Name</th>
			        	<th>Address</th>
			        	<th>Phone</th>
			        	<th>Email</th>
			        	<th>Reg Date</th>
			        	<th></th>
			        	<th></th>
			      	</tr>
	    		</thead>
	    		<tbody>
<% while(rs.next()) { %>	    		
		      		<tr>
		        		<td><%=rs.getString("c_id")%></td>
		        		<td><%=rs.getString("c_name")%></td>
		        		<td><%=rs.getString("c_address")%></td>
		        		<td><%=rs.getString("c_phone")%></td>
		        		<td><%=rs.getString("c_email")%></td>
		        		<td><%=rs.getString("c_regdate")%></td>
		      		</tr>
<% } %>		      		
				</tbody>
	  			</table>
			</div>			
		</div>		
	</body>
</html>