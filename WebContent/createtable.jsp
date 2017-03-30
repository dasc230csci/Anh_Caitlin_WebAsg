<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
 %>

    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>createtable</title>
</head>
<body style="background-color: black; color: white;">

 <%   
 String val = request.getParameter("name");
 out.println("Hello " + val + ". Here is your table.");
 %>
  
<table style="text-align: left; width: 655px; height: 32px;" border="1"
cellpadding="2" cellspacing="2">
<tbody>
<% 
String rowstr = request.getParameter("rows");
int row = Integer.parseInt(rowstr);
String colstr = request.getParameter("col");
int col = Integer.parseInt(colstr); 

if (row <= 0){
	response.sendRedirect("classexercise.jsp?Error1=1&AnotherParam=somevalue");
}
else if (col <= 0){
	response.sendRedirect("classexercise.jsp?Error2=1&AnotherParam=somevalue");
}

for (int i = 0; i< row; i++){
%>
<tr>

<%
for (int y = 0; y < col; y++){
%>
<td style="vertical-align: top;"><%
out.println((i +1) + "," + (y +1));
%><br>
</td>
<%
}
%>
</tr>
<%
}
%>
</tbody>
</table>
<br>
<br>
</body>
</html>
