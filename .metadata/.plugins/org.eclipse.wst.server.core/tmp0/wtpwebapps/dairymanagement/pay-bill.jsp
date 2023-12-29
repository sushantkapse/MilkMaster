<%@include file="connection.jsp" %>
<%
	if(session.getAttribute("uid")==null){
		response.sendRedirect("index.jsp");
		return;
	}

	if(request.getParameter("submit")!=null){
		String id = request.getParameter("id");
		String cardno = request.getParameter("cardno");
		String cardholder = request.getParameter("cardholder");
		
		con.createStatement().executeUpdate("update customer_bill set card_no='"+cardno+"', card_holder='"+cardholder+"', status='Paid' where bill_no="+id);
		out.print("<script>alert('Payment received successfully');location.href='customer-dashboard.jsp'</script>");
	}
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Customer</title>

		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/dashboard.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>

	<body>
		<jsp:include page="customer-sidebar.jsp"></jsp:include>
		
		<div class="main">
			<h1>Welcome - <%=session.getAttribute("uname").toString().toUpperCase()%></h1>

				<form method="post">
					<div class="form-group">
				    	<label>Bill No:</label>
				    	<input type="text" class="form-control" name="id" value='<%=request.getParameter("id")%>' readOnly>
				  	</div>
					<div class="form-group">
				    	<label>Card No:</label>
				    	<input type="text" class="form-control" name="cardno" placeholder="xxxx-xxxx-xxxx-xxxx" pattern="^\d{4}-\d{4}-\d{4}-\d{4}$" required>
				  	</div>
					<div class="form-group">
				    	<label>Card Holder:</label>
				    	<input type="text" class="form-control" name="cardholder" required>
				  	</div>
				  	<button type="submit" class="btn btn-success" name="submit">Pay Now</button>
				</form>	        
		</div>		
	</body>
</html>