<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<hmtl>
    <body>
        <h2>Employee Info</h2>
        <form:form action="saveEmployee" modelAttribute="employee">

            Name <form:input path="name"/>
            <br><br>
            SurName <form:input path="surname"/>
            <br><br>
            Department <form:input path="department"/>
            <br><br>
            Salary <form:input path="salary"/>
            <br><br>
            <input type="submit" value="OK">

        </form:form>

    </body>
</hmtl>