<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<html>

<body>
    <h2>Удаление работника</h2>
       <%--@elvariable id="delempid" type="com.zaurtregulov.spring.mvc_hibernate_aop"--%>
       <form:form action="deleting" modelAttribute="delempid">
           id работника:
           <br>
           <form:input path="id"/>
           <input type="submit" value="Удалить"/>
       </form:form>
</body>
</html>
