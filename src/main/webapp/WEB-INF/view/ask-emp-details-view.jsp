<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html>
<body>
    <h2>Dear employee, please enter your details</h2>
    <br>
    <br>
<%--    <form action="/myController/showDetails" method="get">--%>
<%--        <input type="text" name="employeeName" placeholder="Write your name">--%>
<%--        <input type="text" name="employeeAge" placeholder="Write your age">--%>
<%--        <input type="submit">--%>
<%--    </form>--%>

    <form:form action="showDetails" modelAttribute="employee">
        Name: <form:input path="name"/>
        <form:errors path="name"/>
        <br><br>
        Surname: <form:input path="surname"/>
        <form:errors path="surname"/>
        <br><br>
        Salary: <form:input path="salary"/>
        <br><br>
        <form:select path="department">
            <form:option value="Information Technology" label="IT"/>
            <form:option value="Human Resourses" label="HR"/>
            <form:option value="Sales" label="Sales"/>
        </form:select>
        <br><br>

        Input languages: <br>
        EN <form:checkbox path="languages" value="English"/>
        DE <form:checkbox path="languages" value="Deuch"/>
        RU <form:checkbox path="languages" value="Russian"/>
        <br><br>

        Your car <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
        <br><br>

        Phone number <form:input path="phoneNumber"/>
        <form:errors path="phoneNumber"/>
        <br><br>

        Email <form:input path="email"/>
        <form:errors path="email"/>
        <br><br>

        <input type="submit" value="OK">
    </form:form>
</body>
</html>