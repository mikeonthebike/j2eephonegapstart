<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="java.sql.*"%>
<%

try{
	Connection oConnection = OpenShiftDataSource.getConnection(getServletContext().getInitParameter("the.db"));
	Statement oStmt = oConnection.createStatement();
	String sSQL = "SELECT * FROM completeartist";
	ResultSet oRs = oStmt.executeQuery(sSQL);
	out.println(ResultSetValue.toJsonString(oRs));
}
catch(Exception e)
{
	out.println(e.toString());
}


%>