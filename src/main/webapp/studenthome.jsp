<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%
Student emp = (Student)session.getAttribute("student");
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
<title>Student Home</title>
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
<%@include file="studentnavbar.jsp" %>

<!-- Welcome Text -->
<h1>Welcome, <%=emp.getName() %></h1>

<!-- Advantages Section with Cards -->
<div class="card-container">
    <div class="card">
        <h3>Efficient Management</h3>
        <p>Streamline student information and academic records, making data access easy and efficient.</p>
    </div>
    <div class="card">
        <h3>Improved Communication</h3>
        <p>Facilitates seamless communication between students, faculty, and administration.</p>
    </div>
    <div class="card">
        <h3>Real-Time Access</h3>
        <p>Access academic data, attendance, and grades in real-time from any device.</p>
    </div>
    <div class="card">
        <h3>Financial Transparency</h3>
        <p>Enables students to track their fee payments and dues effortlessly.</p>
    </div>
    <div class="card">
        <h3>Timetable Management</h3>
        <p>Plan your schedules and attend classes with real-time timetable updates.</p>
    </div>
    <div class="card">
        <h3>Centralized Platform</h3>
        <p>One-stop platform to handle course registrations, attendance, and course materials.</p>
    </div>
</div>

<!-- Navigation Buttons -->
<div class="button-container">
    <button class="nav-button"><a href="studenthome.jsp">Student Home</a></button>
    <button class="nav-button"><a href="studentprofile.jsp">Student Profile</a></button>
    <button class="nav-button"><a href="courseregister.jsp">Course Register</a></button>
    <button class="nav-button"><a href="courses.jsp">Courses</a></button>
    <button class="nav-button"><a href="checkattendance.jsp">Check Attendance</a></button>
    <button class="nav-button"><a href="payments.jsp">Payments</a></button>
    <button class="nav-button"><a href="timetable.jsp">Timetable</a></button>
</div>

</body>
</html>
