<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <h2>All Employees</h2>
        <br>
        <table>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Surname</th>
                <th>Department</th>
                <th>Salary</th>
            </tr>

            <c:forEach var="emp" items="${allEmps}">
                <tr>
                    <td>${emp.id}</td>
                    <td>${emp.name}</td>
                    <td>${emp.surname}</td>
                    <td>${emp.department}</td>
                    <td>${emp.salary}</td>
                </tr>
            </c:forEach>
        </table>
    <br>
    <input type="button" value="Add"
           onclick="window.location.href = 'addNewEmployee'"/>
    <br><br>


    <input type="button" value="delete"
           onclick="window.location.href = 'deleteEmployee'"/>
    </body>
</html>