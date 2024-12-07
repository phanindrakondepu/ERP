<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;	
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Employee Home</title>
<style>
    /* Basic Reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body Styling */
    body {
        font-family: Arial, sans-serif;
        background-color: #f3f4f6;
    }

    /* Welcome Text */
    h1 {
        text-align: center;
        color: #1e88e5;
        margin-top: 20px;
        font-size: 2rem;
    }

    /* Cards Section Styling */
    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 40px;
        max-width: 1000px;
        margin: auto;
    }

    /* Individual Card Styling */
    .card {
        width: 280px;
        padding: 30px;
        background: linear-gradient(135deg, #e3f2fd, #bbdefb);
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        text-align: center;
        transition: transform 0.4s ease, box-shadow 0.4s ease;
        position: relative;
        overflow: hidden;
        opacity: 0;
        animation: fadeInUp 1s ease forwards;
    }

    /* Fade-in Up Animation for Cards */
    @keyframes fadeInUp {
        0% {
            opacity: 0;
            transform: translateY(50px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Hover Effects */
    .card:hover {
        transform: translateY(-10px) scale(1.03);
        box-shadow: 0 15px 30px rgba(0, 0, 0, 0.25);
    }

    /* Card Title */
    .card h3 {
        color: #1e88e5;
        font-size: 1.8rem;
        margin-bottom: 10px;
        text-shadow: 1px 1px 3px rgba(30, 136, 229, 0.3);
    }

    /* Card Text */
    .card p {
        color: #333;
        font-size: 1rem;
    }

    /* Animation Delay for Staggered Effect */
    .card:nth-child(1) { animation-delay: 0.2s; }
    .card:nth-child(2) { animation-delay: 0.4s; }
    .card:nth-child(3) { animation-delay: 0.6s; }
    .card:nth-child(4) { animation-delay: 0.8s; }
    .card:nth-child(5) { animation-delay: 1s; }
    .card:nth-child(6) { animation-delay: 1.2s; }

    /* Navigation Buttons Container */
    .button-container {
        display: flex;
        justify-content: center;
        gap: 20px;
        margin-top: 30px;
        padding-bottom: 40px;
    }

    /* Individual Button Styling */
    .nav-button {
        background-color: #1e88e5;
        color: white;
        padding: 15px 25px;
        border: none;
        border-radius: 8px;
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.3s ease;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }

    /* Hover Effects for Buttons */
    .nav-button:hover {
        background-color: #1565c0;
        transform: translateY(-3px);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.25);
    }

    /* Button Text */
    .nav-button a {
        color: white;
        text-decoration: none;
    }
</style>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<!-- Welcome Text -->
<h1>Welcome, <%=emp.getName() %></h1>

<!-- Advantages Section with Cards -->
<div class="card-container">
    <div class="card">
        <h3>Task Management</h3>
        <p>Efficiently track and manage employee tasks, deadlines, and goals.</p>
    </div>
    <div class="card">
        <h3>Team Collaboration</h3>
        <p>Enhance communication and collaboration among teams for better productivity.</p>
    </div>
    <div class="card">
        <h3>Performance Tracking</h3>
        <p>Monitor performance metrics and help employees reach their potential.</p>
    </div>
    <div class="card">
        <h3>Leave Management</h3>
        <p>Simplify leave application and approval processes for employees.</p>
    </div>
    <div class="card">
        <h3>Payroll Integration</h3>
        <p>Access payroll information and manage employee finances effortlessly.</p>
    </div>
    <div class="card">
        <h3>Training Programs</h3>
        <p>Enroll in training programs to enhance skills and career growth.</p>
    </div>
</div>

<!-- Navigation Buttons -->
<div class="button-container">
    <button class="nav-button"><a href="employeehome.jsp">Employee Home</a></button>
    <button class="nav-button"><a href="employeeprofile.jsp">Employee Profile</a></button>
    <button class="nav-button"><a href="taskmanager.jsp">Task Manager</a></button>
    <button class="nav-button"><a href="teamcollab.jsp">Team Collaboration</a></button>
    <button class="nav-button"><a href="leaveapplication.jsp">Leave Application</a></button>
    <button class="nav-button"><a href="payroll.jsp">Payroll</a></button>
    <button class="nav-button"><a href="trainingprograms.jsp">Training Programs</a></button>
</div>

</body>
</html>
