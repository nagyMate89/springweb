<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:query var="rs" dataSource="jdbc/springDB">
select id, name, email, enquiry from offers
</sql:query>

<html>
  <head>
    <title>DB Test</title>
  </head>
  <body>

  <h2>Results</h2>

<c:forEach var="row" items="${rs.rows}">
	  Name: ${row.name}
      Email: ${row.email}
    
      Enquiry: ${row.enquiry}<br/>
</c:forEach>

  </body>
</html>