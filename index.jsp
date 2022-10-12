<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
            <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Share List</title>
</head>
<body>
<div align="center">
<h1>
<hr size="11" color="green"/>
Company Share List
</h1>
<h3 style="color:pink">
<a href="company-entry" style="color:#fb41cd">Enlist a new company</a>
</h3>
<hr size="5" color="cyan"/>
<h2 style="color:blue">
<table border="2">
  <tr bgcolor="orange">
    <th>COMPANY ID</th>
    <th>COMPANY NAME</th>
    <th>SHARE PRICE</th>
    <th>Actions</th>
    
    </tr>
    <c:forEach  items="${cshareList}" var="company">
      <tr bgcolor="yellow">
      <td>${company.companyId}</td>
      <td>${company.companyName}</td>
      <td>${company.sharePrice}</td>
      <td><h3 >
       &nbsp;&nbsp;<a href="edit-share/${company.companyId}" style="color:#fb41cd">Edit Share Price</a> 
       &nbsp;&nbsp;<a href="delete-company/${company.companyId}" style="color:#fb41cd">Delete Company</a>
       </h3></td>
      </tr>
     </c:forEach>
  </table>
  </h2>





</div>
</body>
</html>