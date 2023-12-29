<%@include file="connection.jsp" %>

<%
	ResultSet rs = con.createStatement().executeQuery("select * from rates");
	rs.next();
	int crate = rs.getInt(1);
	int brate = rs.getInt(2);


	String id = request.getParameter("id");
	String bdate = request.getParameter("bdate");
	String cid = request.getParameter("cid");
	String cqty = request.getParameter("cqty");
	String bqty = request.getParameter("bqty");
	String mode = request.getParameter("mode");

	int amt = Integer.parseInt(cqty)*crate + Integer.parseInt(bqty)*brate;

	String sql = "insert into customer_bill values("+id+",'"+bdate+"',"+amt+","+cqty+","+bqty+","+cid+",'-','-','-','Pending')";

	con.createStatement().executeUpdate(sql);

	sql = "update stock set cow_qty=cow_qty-"+cqty+", buffalo_qty=buffalo_qty-"+bqty;
	
	con.createStatement().executeUpdate(sql); 
	
	response.sendRedirect("bill.jsp");
%>