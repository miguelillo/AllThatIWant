<%@page import="java.sql.Date"%>
<%@page contentType="text/html;charset=UTF-8"%>


<%
    String nombre = request.getParameter("name");
    String apellido1 = request.getParameter("surname1");
    String apellido2 = request.getParameter("surname2");
    String sexo = request.getParameter("sexo");
    String fechaNacimiento = request.getParameter("FechaNacimiento");
    String pais = request.getParameter("pais");


%>

<%=nombre%>
<%=apellido1%>
<%=apellido2%>
<%=sexo%>
<%=fechaNacimiento%>
<%=pais%>
