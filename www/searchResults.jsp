<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="java.sql.*"%>
<%

try{
	Connection oConnection = OpenShiftDataSource.getConnection(getServletContext().getInitParameter("the.db"));
	String sSQL = "SELECT * FROM completeartist WHERE artist like CONCAT('%', ?, '%')";
	PreparedStatement oStmt = oConnection.prepareStatement(sSQL);
	String sName = request.getParameter("q");
	if(sName == null) sName = "%";
	oStmt.setString(1, sName);
	ResultSet oRs = oStmt.executeQuery();
	out.println(ResultSetValue.toJsonString(oRs));
}
catch(Exception e)
{
	out.println(e.toString());
}


%>