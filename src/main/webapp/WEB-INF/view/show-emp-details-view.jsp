<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<body>
    <h2>Dear employee, you are WELCOME!</h2>
    <br>
    <br>

    Your name: ${employee.name}
    <br>
    Your surname: ${employee.surname}
    <br>
    Your salary: ${employee.salary}
    <br>
    Your department: ${employee.department}
    <br>
    Languages:
    <ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>${lang}</li>
    </c:forEach>
    </ul>
    Car: ${employee.carBrand}
    <br>
    Phone: ${employee.phoneNumber}
    <br>
    Mail: ${employee.email}
    <br>
<%--    Your name: ${param.employeeName}--%>

<%--    <p>Your name: ${employeeName}</p>--%>
<%--    <p>Your age: ${employeeAge2}</p>--%>
</body>
</html>