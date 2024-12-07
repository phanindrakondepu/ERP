<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Employees</title>
    <style>
        /* General Styling */
        body {
            background-color: #f0f8ff; /* Light blue background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            animation: fadeIn 1s ease-out;
        }
        h1 {
            text-align: center;
            color: #2c3e50;
            font-size: 2.5rem;
            margin-top: 30px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.1);
        }
        h2, h3 {
            text-align: center;
            color: #34495e;
            margin-top: 30px;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #3498db;
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            font-size: 1rem;
            margin: 0 10px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar a:hover {
            background-color: #2980b9;
        }

        /* Content Styling */
        .content {
            padding: 20px;
        }

        .content h3 {
            font-size: 1.8rem;
            color: #2c3e50;
        }

        /* Table Styling */
        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ecf0f1; /* Light gray background */
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            font-size: 0.9rem;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            text-align: left;
            border-bottom: 1px solid #bdc3c7;
            color: #2c3e50;
        }

        th {
            background-color: #3498db; /* Blue header */
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f2f6f8; /* Light blue-gray alternate rows */
        }

        tr:hover {
            background-color: #e0e7ea; /* Highlight on hover */
        }

        td {
            font-weight: 400;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            table {
                width: 100%;
            }

            th, td {
                padding: 8px;
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
    </style>
</head>
<body>
    <div class="sidebar">
        <%@include file="adminnavbar.jsp" %>
    </div>

    <div class="content">
        <h3><u>View All Employees</u></h3>

        <p style="text-align: center;">Total Employees: <c:out value="${empcount}"/></p>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Gender</th>
                <th>Date of Birth</th>
                <th>Department</th>
                <th>Salary</th>
                <th>Location</th>
                <th>Email</th>
                <th>Contact</th>
                <th>Status</th>
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
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
