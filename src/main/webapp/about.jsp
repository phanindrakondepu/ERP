<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About ERP System</title>
<style>
    /* General Styling */
    /* General Styling */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('https://ordersinseconds.com/wp-content/uploads/2022/04/erp-system-850-1280x720-1-jpg.webp'); /* Add your image URL here */
    background-size: cover;  /* Ensures the image covers the entire page */
    background-position: center; /* Centers the image */
    background-attachment: fixed; /* Ensures the background image stays fixed when scrolling */
    color: #e0e0e0;
    line-height: 1.6;
}


    /* Navbar */
    .navbar {
        display: flex;
        justify-content: center;
        background-color: #ff6b6b;
        padding: 15px 0;
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.3);
        position: sticky;
        top: 0;
        z-index: 1000;
    }
    .navbar a {
        color: #fff;
        padding: 10px 20px;
        text-decoration: none;
        font-size: 1rem;
        margin: 0 10px;
        transition: background-color 0.3s ease;
    }
    .navbar a:hover {
        background-color: #d64545;
    }

    /* Page Header */
    .header {
        text-align: center;
        padding: 60px 20px;
        background-color: #ff6b6b;
        color: white;
        animation: slideInDown 1s ease forwards;
    }
    .header h1 {
        font-size: 2.5rem;
        margin-bottom: 10px;
        text-shadow: 3px 3px 10px rgba(0, 0, 0, 0.5);
    }
    .header p {
        font-size: 1.2rem;
    }

    /* Content Section */
    .content {
        display: flex;
        flex-direction: column;
        align-items: center;
        padding: 40px 20px;
        max-width: 1200px;
        margin: auto;
    }

    /* Sections Styling */
    .section {
        margin: 30px 0;
        padding: 25px;
        background-color: #1f1f1f;
        color: #f2f2f2;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 1000px;
        animation: fadeInUp 0.8s ease-out both;
        transition: transform 0.3s ease;
    }
    .section:hover {
        transform: translateY(-5px);
        box-shadow: 0 6px 20px rgba(0, 0, 0, 0.4);
    }

    .section h2 {
        color: #ff6b6b;
        margin-bottom: 10px;
        font-size: 1.8rem;
    }

    .section p, .section ul {
        margin: 15px 0;
        font-size: 1rem;
        line-height: 1.6;
    }

    /* Operations Section */
    .operations-section {
        margin-top: 40px;
        padding: 20px;
        background-color: #282828;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 1000px;
        animation: fadeInUp 0.8s ease-out both;
        transition: transform 0.3s ease;
    }
    .operations-section h2 {
        color: #ff6b6b;
        font-size: 1.8rem;
    }

    .operations-list {
        display: flex;
        flex-wrap: wrap;
        gap: 15px;
        margin-top: 20px;
        justify-content: space-around;
    }

    .operation {
        background-color: #1e90ff;
        color: #fff;
        padding: 15px 20px;
        border-radius: 8px;
        text-align: center;
        font-weight: bold;
        cursor: pointer;
        transition: transform 0.3s, background-color 0.3s;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        min-width: 150px;
        animation: bounceIn 0.8s ease-out both;
    }

    .operation:hover {
        transform: scale(1.05);
        background-color: #104e8b;
    }

    /* Keyframes */
    @keyframes fadeInUp {
        from {
            opacity: 0;
            transform: translateY(20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes slideInDown {
        from {
            opacity: 0;
            transform: translateY(-50px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    @keyframes bounceIn {
        0% {
            opacity: 0;
            transform: scale(0.9);
        }
        70% {
            opacity: 1;
            transform: scale(1.05);
        }
        100% {
            transform: scale(1);
        }
    }

    /* Responsive */
    @media (max-width: 768px) {
        .content {
            padding: 20px;
        }
        .header h1 {
            font-size: 2rem;
        }
        .header p, .section p {
            font-size: 1rem;
        }
    }
</style>
</head>
<body>

<%@include file="mainnavbar.jsp" %>
<div class="header">
    <h1>About Our ERP System</h1>
    <p>Your comprehensive solution for managing organizational resources efficiently</p>
</div>

<div class="content">
    <!-- About Section -->
    <div class="section">
        <h2>What is ERP?</h2>
        <p>Enterprise Resource Planning (ERP) is a software solution that helps organizations manage and integrate their core business processes...</p>
    </div>

    <!-- Features Section -->
    <div class="section">
        <h2>Key Features</h2>
        <p>Our ERP system provides a comprehensive suite of tools designed to enhance efficiency and collaboration across your organization...</p>
    </div>

    <!-- Benefits Section -->
    <div class="section">
        <h2>Benefits of Our ERP System</h2>
        <p>Implementing our ERP system brings a range of advantages...</p>
    </div>

    <!-- Contact Section -->
    <div class="section">
        <h2>Get in Touch</h2>
        <p>If you’d like to learn more about our ERP solution or schedule a demo, please <a href="contact">contact us</a>.</p>
    </div>

    <!-- Website Capabilities Section -->
    <div class="operations-section">
        <h2>Website Capabilities</h2>
        <div class="operations-list">
            <div class="operation">Add Student</div>
            <div class="operation">Delete Student</div>
            <div class="operation">View All Students</div>
            <div class="operation">Add Employee</div>
            <div class="operation">Delete Employee</div>
            <div class="operation">View All Employees</div>
            <div class="operation">Add Faculty</div>
            <div class="operation">Delete Faculty</div>
            <div class="operation">View All Faculty</div>
            <div class="operation">Register for Course</div>
            <div class="operation">View All Courses</div>
        </div>
    </div>
</div>

</body>
</html>
