<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Share Updation</title>
</head>
<body>

<div align="center">
<h1 style="color:red">
<u><i>Company Share Updation Page</i></u>
</h1>
<h2>
<form:form method="post" action="company-edit" modelAttribute="cshareRecord">
Company Id<form:input type="text" path="companyId" readOnly="true" />
<br></br>

Company Name:<form:input type="text" path="companyName" readOnly="true" />
<br></br>
Enter The New Share Price:<form:input type="text" path="sharePrice" />
<br></br>

<input type="submit" value="submit">
<br></br>
</form:form>
</h2>
</div>
</body>
</html>