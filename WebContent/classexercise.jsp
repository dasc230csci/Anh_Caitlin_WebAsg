<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String anyErrors1 = request.getParameter("Error1");
    String anyErrors2 = request.getParameter("Error2");
    if(anyErrors1!=null && anyErrors1.equals("1")){
    	out.println("PLEASE PROVIDE A VALID ROW >= 1<br>");
    }
    else if(anyErrors2!=null && anyErrors2.equals("1")){
    	out.println("PLEASE PROVIDE A VALID COL >= 1<br>");
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>classexercise</title>
</head>
<body>
Please enter the dimension of the desired table below:<br>
<form action="createtable.jsp" name="form1">
<table style="text-align: left; width: 402px; height: 106px;"
border="1" cellpadding="2" cellspacing="2">
<tbody>
<tr>
<td style="vertical-align: top;">Enter your name<br>
</td>
<td style="vertical-align: top;"><input name="name"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of rows<br>
</td>
<td style="vertical-align: top;"><input name="rows" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;">Enter number of columns<br>
</td>
<td style="vertical-align: top;"><input name="col" value="1"><br>
</td>
</tr>
<tr>
<td style="vertical-align: top;"><input name="submit"
type="submit"><br>
</td>
<td style="vertical-align: top;"><input name="reset"
type="reset"><br>
</td>
</tr>
</tbody>
</table>
<br>
</form>
<br>
</body>
</html>
