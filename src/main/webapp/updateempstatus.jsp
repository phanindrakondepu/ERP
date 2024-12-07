<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Employee Status</title>
  <style>
    /* General Styling */
    body {
        background-color: #f5f5f5;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        color: #333;
        animation: fadeIn 1s ease-out;
    }

    h3 {
        text-align: center;
        color: #4caf50;
        font-size: 1.8rem;
        animation: fadeIn 2s ease-out;
    }

    /* Table Styling */
    table {
        width: 70%;
        margin: 20px auto;
        border-collapse: collapse;
        background-color: #e8f5e9; /* Light green background */
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
        font-size: 0.9rem;
        animation: fadeInUp 1.5s ease-out;
        position: relative;
        left: 50px;
    }

    th {
        background-color: #81c784; /* Soft green */
        color: #fff;
        font-weight: 600;
    }

    td {
        background-color: #f1f8e9; /* Lightest green */
        color: #444;
        font-weight: 400;
        padding: 12px 15px;
        text-align: left;
        border-bottom: 2px solid #c8e6c9; /* Greenish border */
    }

    tr:nth-child(even) td {
        background-color: #dcedc8; /* Slightly darker green for even rows */
    }

    tr:hover td {
        background-color: #c5e1a5; /* Highlighted green on hover */
        transform: scale(1.02); /* Slight zoom effect on hover */
        transition: transform 0.2s ease, background-color 0.2s ease;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        table {
            width: 90%;
        }

        td, th {
            padding: 10px;
        }
    }

    /* Animation Keyframes */
    @keyframes fadeIn {
        0% {
            opacity: 0;
        }
        100% {
            opacity: 1;
        }
    }

    @keyframes fadeInUp {
        0% {
            opacity: 0;
            transform: translateY(20px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>

    </head>
<body>
     <%@include file="adminnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Update Employee Status</u></h3>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>GENDER</th>
            <th>DATE OF BIRTH</th>
            <th>DEPARTMENT</th>
            <th>SALARY</th>
            <th>LOCATION</th>
            <th>EMAIL</th>
            <th>CONTACT</th>
            <th>STATUS</th>
            <th>ACTION</th>
        </tr>
        <c:forEach items="${emplist}" var="emp">
            <tr>
                <td><c:out value="${emp.id}"/></td>
                <td><c:out value="${emp.name}"/></td>
                <td><c:out value="${emp.gender}"/></td>
                <td><c:out value="${emp.dateofbirth}"/></td>
                <td><c:out value="${emp.department}"/></td>
                <td><c:out value="${emp.salary}"/></td>
                <td><c:out value="${emp.location}"/></td>
                <td><c:out value="${emp.email}"/></td>
                <td><c:out value="${emp.contact}"/></td>
                <td><c:out value="${emp.status}"/></td>
           
           <td>
       
       <a href='<c:url value="updatestatus?id=${emp.id}&status=Accepted"></c:url>'>Accept</a>
       <a href='<c:url value="updatestatus?id=${emp.id}&status=Rejected"></c:url>'>Reject</a>
         
           </td>

            </tr>
        </c:forEach>
    </table>
</body>
</html>
