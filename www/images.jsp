<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<%@page import="ca.on.conestogac.*"%>
<%@page import="java.sql.*"%>
<%

try{
	Connection oConnection = OpenShiftDataSource.getConnection(getServletContext().getInitParameter("the.db"));
	String sSQL = "select name, folder, imageName from completework where idArtists = ?";
	PreparedStatement oStmt = oConnection.prepareStatement(sSQL);
	String sId = request.getParameter("sId");
	oStmt.setString(1, sId);
	ResultSet oRs = oStmt.executeQuery();
	out.println(ResultSetValue.toJsonString(oRs));
}
catch(Exception e)
{
	out.println(e.toString());
}


%>