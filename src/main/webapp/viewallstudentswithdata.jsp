<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Students</title>
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
        margin: 0 auto 20px 20%; /* Adjusted to move the table slightly to the right */
        border-collapse: collapse;
        background-color: #e8f5e9; /* Light green background */
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        overflow: hidden;
        font-size: 0.9rem;
        animation: fadeInUp 1.5s ease-out;
        position: relative;
        top: -50px; /* Move the table up */
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
            margin-left: 0; /* Remove left margin on small screens */
        }

        td, th {
            padding: 10px;
        }
    }

    /* Button Styling */
    .submit-btn {
        display: block;
        margin: 20px auto; /* Center button */
        position: relative;
        top: -20px; /* Move the button up */
        background-color: #81c784; /* Soft green */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 1rem;
        transition: background-color 0.3s ease;
    }

    .submit-btn:hover {
        background-color: #66bb6a; /* Darker green on hover */
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
    <%@include file="empnavbar.jsp" %>

    <form action="successpostattendance.jsp" method="POST">
        <table>
            <tr>
                <th>Select</th>
                <th>ID</th>
                <th>NAME</th>
                <th>GENDER</th>
                <th>DEPARTMENT</th>
                <th>LOCATION</th>
                <th>EMAIL</th>
                <th>CONTACT</th>
            </tr>
            <c:forEach items="${emplist}" var="emp">
                <tr>
                    <td><input type="checkbox" name="selectedIds" value="${emp.id}"></td>
                    <td><c:out value="${emp.id}"/></td>
                    <td><c:out value="${emp.name}"/></td>
                    <td><c:out value="${emp.gender}"/></td>
                    <td><c:out value="${emp.department}"/></td>
                    <td><c:out value="${emp.location}"/></td>
                    <td><c:out value="${emp.email}"/></td>
                    <td><c:out value="${emp.contact}"/></td>
                </tr>
            </c:forEach>
        </table>
        <button type="submit" class="submit-btn">Submit</button>
    </form>
</body>
</html>
