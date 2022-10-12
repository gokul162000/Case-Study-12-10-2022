<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enlist A new Company</title>
</head>
<body>


<div align="center">
<h1 style="color:#d043f2">
<u><i>Enter the New Company Details </i></u>
</h1>

<form:form method="post" action="company" modelAttribute="cshareRecord" >
<form:input type="hidden" path="companyId" value="00"/>
<br></br>
Enter the Company Name:<form:input type="text" path="companyName"/>
<br></br>
Enter the Share Price:<form:input type="text" path="sharePrice"/>
<br></br>

<input type="submit" value="submit">
<br></br>
</form:form>
</div>
</body>
</html>