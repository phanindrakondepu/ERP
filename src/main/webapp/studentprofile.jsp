<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Student emp = (Student) session.getAttribute("student");
if(emp == null)
{
    response.sendRedirect("empsessionexpiry");
    return;    
}
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #2d3436;
            color: #ffffff;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #1abc9c;
            margin-top: 20px;
            text-transform: uppercase;
            letter-spacing: 1px;
            animation: fadeInDown 1s ease;
        }

        /* Card Container */
        .profile-container {
            max-width: 600px;
            margin: 20px auto;
            padding: 20px;
            background-color: #34495e;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.3);
            text-align: center;
            animation: slideIn 1.5s ease-out;
            transform-origin: top center;
        }

        .profile-container b {
            color: #1abc9c;
            font-size: 16px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            animation: zoomIn 1.5s ease-in-out;
        }

        .profile-container div {
            margin: 10px 0;
            font-size: 15px;
            color: #ecf0f1;
            animation: fadeIn 1.8s ease-in-out;
        }

        /* Button styling */
        .profile-container .update-button {
            padding: 10px 25px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            background-color: #1abc9c;
            color: #ffffff;
            cursor: pointer;
            margin-top: 15px;
            text-decoration: none;
            display: inline-block;
            transition: all 0.4s ease;
            animation: bounce 2s infinite;
        }

        .profile-container .update-button:hover {
            background-color: #16a085;
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(26, 188, 156, 0.4);
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
<%@include file="studentnavbar.jsp" %>

<h3 style="text-align: center;"><u>My Profile</u></h3>

<div class="profile-container">
    <b>ID:</b><%=emp.getId()%><br><br>
    <b>NAME:</b><%=emp.getName()%><br><br>
    <b>GENDER:</b><%=emp.getGender()%><br><br>
    <b>DEPARTMENT:</b><%=emp.getDepartment()%><br><br>
    <b>LOCATION:</b><%=emp.getLocation()%><br><br>
    <b>EMAIL:</b><%=emp.getEmail()%><br><br>
    <b>CONTACT:</b><%=emp.getContact()%><br><br>
</div>

</body>
</html>
