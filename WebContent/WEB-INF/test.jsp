<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="search" method="post">
<select name="services">

<c:forEach var="list" items="${list}">
  <option value="${list.nom}" >${list.nom}</option>
</c:forEach>
</select>

<input type="submit" value="envoyer">
</form>

 <form action="test" method="post">
      <table>
        <tr><td>First name:</td>
            <td><input type="text" name="first" /></td>
        </tr>
        <tr><td>Last name:</td>
            <td><input type="text" name="last" /></td>
        </tr>
      </table>
      <input type="submit" value="Submit details" />
    </form>
    
    
    <table>
      <tr><td>First name</td><td><c:out value="${f}" /></td></tr>
      <tr><td>Last name</td> <td><c:out value="${l}"  /></td></tr>
    </table>

    

</body>
</html>