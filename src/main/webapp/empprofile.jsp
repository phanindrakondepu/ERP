<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
    response.sendRedirect("empsessionexpiry");
    return;    
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(135deg, #e0f7fa, #f0f4f8);
        color: #333;
        margin: 0;
        padding: 0;
        overflow-x: hidden;
    }

    h3 {
        text-align: center;
        font-size: 28px;
        color: #00796b;
        margin-top: 20px;
        text-transform: uppercase;
        letter-spacing: 1px;
        animation: fadeInDown 1s ease;
    }

    .profile-container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        background: linear-gradient(135deg, #ffffff, #e0f7fa);
        border-radius: 15px;
        box-shadow: 0 10px 25px rgba(0, 0, 0, 0.2);
        text-align: center;
        animation: slideIn 1.5s ease-out;
        transform-origin: top center;
    }

    .profile-container b {
        color: #00796b;
        font-size: 16px;
        text-transform: uppercase;
        letter-spacing: 0.5px;
        animation: zoomIn 1.5s ease-in-out;
    }

    .profile-container div {
        margin: 10px 0;
        font-size: 15px;
        color: #333;
        animation: fadeIn 1.8s ease-in-out;
    }

    /* Button styling */
    .profile-container .update-button {
        padding: 10px 25px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        background-color: #00796b;
        color: #ffffff;
        cursor: pointer;
        margin-top: 15px;
        text-decoration: none;
        display: inline-block;
        transition: all 0.4s ease;
        animation: bounce 2s infinite;
    }

    .profile-container .update-button:hover {
        background-color: #004d40;
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 121, 107, 0.4);
    }

    /* Animations */
    @keyframes fadeInDown {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes slideIn {
        from {
            opacity: 0;
            transform: scaleY(0.8) translateY(50px);
        }
        to {
            opacity: 1;
            transform: scaleY(1) translateY(0);
        }
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    @keyframes zoomIn {
        from {
            transform: scale(0.9);
            opacity: 0;
        }
        to {
            transform: scale(1);
            opacity: 1;
        }
    }

    @keyframes bounce {
        0%, 100% {
            transform: translateY(0);
        }
        50% {
            transform: translateY(-10px);
        }
    }
</style>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<h3><u>My Profile</u></h3>

<div class="profile-container">
    <div><b>ID:</b> <%= emp.getId() %></div>
    <div><b>NAME:</b> <%= emp.getName() %></div>
    <div><b>GENDER:</b> <%= emp.getGender() %></div>
    <div><b>DATE OF BIRTH:</b> <%= emp.getDateofbirth() %></div>
    <div><b>DEPARTMENT:</b> <%= emp.getDepartment() %></div>
    <div><b>SALARY:</b> <%= emp.getSalary() %></div>
    <div><b>LOCATION:</b> <%= emp.getLocation() %></div>
    <div><b>EMAIL:</b> <%= emp.getEmail() %></div>
    <div><b>CONTACT:</b> <%= emp.getContact() %></div>
    <div><b>STATUS:</b> <%= emp.getStatus() %></div>
    <a href="updateemp.jsp" class="update-button">Update Profile</a>
</div>

</body>
</html>
