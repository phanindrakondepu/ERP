<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 

<head> 
<title>attendence</title>
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
<%@include file="studentnavbar.jsp" %>

<h2 align="center">Check Attendence</h2>

<br><br><br>

<table align="center" border="2" style="text-align: center">
<tr style="font-weight: bold;"> 
    <td>ID</td> 
    <td>FACULTY ID</td> 
    <td>FACULTY NAME</td> 
    <td>COURSE CODE</td> 
    <td>COURSE TITLE</td> 
    <td>SECTION</td> 
    <td>TYPE</td> 
    <td>ATTENDANCE</td> <!-- New Column -->
</tr> 
 
<c:forEach items="${fcmdata}" var="fcm"> 
<tr> 
    <td><c:out value="${fcm.mappingid}" /></td> 
    <td><c:out value="${fcm.faculty.facultyid}" /></td> 
    <td><c:out value="${fcm.faculty.name}" /></td>
    <td><c:out value="${fcm.course.coursecode}" /></td> 
    <td><c:out value="${fcm.course.coursetitle}" /></td> 
    <td><c:out value="${fcm.section}" /></td> 
    <td><c:out value="${fcm.facultytype}" /></td> 
    <!-- Generate Random Attendance -->
    <td><%= (int)(Math.random() * 21 + 80) %>%</td>
</tr> 
</c:forEach> 
 
</table> 

</body> 
</html>
