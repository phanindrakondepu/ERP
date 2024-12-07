<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JPA Mapping</title>
<style>
body {
    background-color: #f5f5f5;
    font-family: Arial, sans-serif;
}

h2 {
    color: #333;
    text-align: center;
    margin-top: 20px;
}

h3 {
    color: red;
    text-align: center;
}

form {
    background-color: white;
    max-width: 500px;
    margin: 0 auto;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    animation: fadeIn 1s ease;
}

@keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
}

label {
    display: block;
    font-weight: bold;
    color: #333;
    margin-bottom: 8px;
}

input[type=text], input[type=password], input[type=number], input[type=email],
select, input[type=date], input[type=datetime-local] {
    width: 100%;
    padding: 12px;
    margin-bottom: 20px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    font-size: 16px;
    transition: all 0.3s ease;
}

input[type=text]:focus, input[type=password]:focus, input[type=number]:focus,
input[type=email]:focus, select:focus, input[type=date]:focus, input[type=datetime-local]:focus {
    border-color: #007bff;
    box-shadow: 0 0 8px rgba(0, 123, 255, 0.2);
}

.button {
    background-color: #007bff;
    border: none;
    color: white;
    padding: 12px 25px;
    font-size: 16px;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

.button:hover {
    background-color: #0056b3;
    transform: translateY(-2px);
}

.button:active {
    transform: translateY(1px);
}

.table-align {
    display: flex;
    justify-content: center;
    gap: 20px;
}

</style>
</head>
<body>
<%@include file="studentnavbar.jsp" %>

<h2 align="center">Register for course</h2>



<br>

<h3 align="center" style="color:red">${message}</h3>

<form method="post" action="fcoursemappinginsert">
  <table align=center style="height:200px">
    <tr>
      <td><label>Select Faculty</label></td>
      <td>
        <select name="fid" required>
        
        <option value="">--Select--</option>
        
        <c:forEach items="${facultydata}" var="faculty"> 
        <option value="${faculty.facultyid}">${faculty.facultyid}-${faculty.name}</option>
        </c:forEach>
        
        </select>
        
      </td>
    </tr>
    <tr>
      <td><label>Select Course</label></td>
      <td>
        <select name="cid" required>
        
        <option value="">--Select--</option>
        
        <c:forEach items="${coursedata}" var="course"> 
        <option value="${course.courseid}">${course.coursecode}-${course.coursetitle}</option>
        </c:forEach>
        
        </select>
      </td>
    </tr>
    <tr>
      <td><label>Provide Section</label></td>
      <td>
        <input type="number" name="section" min="1" max="10" required>
      </td>
    </tr>
    <tr>
      <td><label>Select Faculty Type</label></td>
      <td>
        <select name="ftype" required>
          <option value="">--Select--</option>
          <option value="MAIN">Main Faculty</option>
          <option value="ASSISTANCE">Assistance Faculty</option>
        </select>
      </td>
    </tr>
    <tr>
    <td></td>
    </tr>
     <tr align="center">
       <td>
        <input type="submit" name="Submit" class="button">
      </td>
      <td>
        <input type="reset" name="Clear" class="button">
      </td>
    </tr>
  </table>
</form>



</body>
</html>