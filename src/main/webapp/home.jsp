<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
    /* General Styling */
    
    
  body {
       background-image: url('erp1.avif');
      
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }

    h1 {
        text-align: center;
        color: #1e3a8a;
        text-shadow: 3px 3px 8px rgba(0, 0, 0, 0.2);
        font-size: 2.8rem;
        margin-top: 30px;
        animation: fadeIn 1.5s ease-in-out;
    }

    h2 {
        text-align: center;
        color: #444;
        margin-top: 50px;
        font-weight: 300;
        font-size: 2rem;
        color: #374151;
        text-shadow: 1px 1px 4px rgba(0, 0, 0, 0.1);
    }

    /* Navbar Styling */
    .navbar {
        display: flex;
        justify-content: center;
        background:  #D3D3D3;
        padding: 15px 0;
        box-shadow: 0 3px 12px rgba(0, 0, 0, 0.15);
        position: sticky;
        top: 0;
        z-index: 1000;
    }

    .navbar a {
        text-decoration: none;
        color: #fff;
        padding: 12px 22px;
        border-radius: 8px;
        font-size: 1rem;
        margin: 0 10px;
        transition: background-color 0.3s ease, transform 0.3s ease, box-shadow 0.3s ease;
    }

    .navbar a:hover {
        background-color: #004aad;
        transform: translateY(-5px);
        box-shadow: 0 8px 16px rgba(0, 74, 173, 0.3);
    }

    /* Full-page Image Styling */
    .full-page-image {
        width: 100%;
        height: 80vh;
        object-fit: cover;
        display: block;
        filter: brightness(90%);
        animation: zoomIn 5s ease-out;
    }

    /* Cards Section */
    .card-section {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 40px 20px;
    }

    /* Card Styling */
    .card {
        width: 200px;
        padding: 25px;
        background: linear-gradient(135deg, #e0f2ff, #ffecd2);
        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        border-radius: 15px;
        transition: transform 0.4s ease, box-shadow 0.4s ease;
        position: relative;
        overflow: hidden;
    }

    .card:hover {
        transform: translateY(-12px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.25);
    }

    .card h3 {
        color: #1e90ff;
        font-size: 1.7rem;
        margin-bottom: 15px;
        text-shadow: 1px 1px 4px rgba(30, 144, 255, 0.2);
    }

    .card p {
        color: #333;
        font-size: 1rem;
    }

    /* Slide-In Animation */
    .card:nth-child(even) {
        animation: slideInLeft 1s ease-out;
    }
    .card:nth-child(odd) {
        animation: slideInRight 1s ease-out;
    }

    @keyframes slideInLeft {
        0% {
            opacity: 0;
            transform: translateX(-100%);
        }
        100% {
            opacity: 1;
            transform: translateX(0);
        }
    }

    @keyframes slideInRight {
        0% {
            opacity: 0;
            transform: translateX(100%);
        }
        100% {
            opacity: 1;
            transform: translateX(0);
        }
    }

    /* Operations Section */
    .operations-section {
        background-color: #e0f7fa;
        padding: 30px 20px;
    }

    .operations-section h2 {
        color: #00796b;
    }

    .operations-list {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 15px;
    }

    .operation {
        background: linear-gradient(135deg, #ffe57f, #ffc400);
        padding: 18px 30px;
        border-radius: 10px;
        box-shadow: 0 6px 10px rgba(0, 0, 0, 0.15);
        font-size: 1.1rem;
        color: #333;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        cursor: pointer;
    }

    .operation:hover {
        transform: scale(1.1);
        box-shadow: 0 8px 14px rgba(0, 0, 0, 0.25);
    }

    /* Keyframes for Additional Animations */
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }

    @keyframes zoomIn {
        from { transform: scale(1.1); }
        to { transform: scale(1); }
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .navbar {
            flex-direction: column;
        }
        .navbar a {
            margin: 5px 0;
        }
        .full-page-image {
            height: 50vh;
        }
    }
</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<!-- Welcome Message -->
<h1>Welcome to ERP</h1>


<!-- Welcome Message -->
<h2>Advantages of ERP</h2>
<div class="card-section">
    <div class="card">
        <h3>Improved Efficiency</h3>
        <p>ERP systems integrate various business processes, making operations more streamlined and efficient.</p>
    </div>
    <div class="card">
        <h3>Enhanced Productivity</h3>
        <p>Automated workflows and real-time data improve productivity and decision-making.</p>
    </div>
    <div class="card">
        <h3>Cost Savings</h3>
        <p>By reducing redundancies and streamlining processes, ERP systems help cut costs across departments.</p>
    </div>
</div>

<!-- Disadvantages Section -->
<h2>Disadvantages of ERP</h2>
<div class="card-section">
    <div class="card">
        <h3>High Initial Cost</h3>
        <p>ERP systems can be expensive to implement and maintain, especially for smaller businesses.</p>
    </div>
    <div class="card">
        <h3>Complexity</h3>
        <p>ERP systems can be complex to use and require significant training for employees.</p>
    </div>
    <div class="card">
        <h3>Customization Challenges</h3>
        <p>Customizing ERP systems to meet unique business needs can be time-consuming and costly.</p>
    </div>
</div>

<!-- Website Operations Section -->
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





</body>
</html>
