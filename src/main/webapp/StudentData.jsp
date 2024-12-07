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

    /* Cards Container */
    .cards-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 20px;
    }

    /* Individual Card Styling */
    .card {
        background-color: #e8f5e9; /* Light green background */
        border-radius: 10px;
        box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
        width: 300px;
        padding: 20px;
        text-align: center;
        transition: transform 0.2s ease, box-shadow 0.2s ease;
        animation: fadeInUp 1.5s ease-out;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
    }

    .card h4 {
        margin: 10px 0;
        color: #4caf50;
        font-size: 1.2rem;
    }

    .card p {
        margin: 5px 0;
        font-size: 0.9rem;
        color: #444;
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .card {
            width: 90%;
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
    <%@include file="empnavbar.jsp" %>
    <h3><u>View All Students</u></h3>

    <div class="cards-container">
        <c:forEach items="${emplist}" var="emp">
            <div class="card">
                <h4><c:out value="${emp.name}"/></h4>
                <p><strong>ID:</strong> <c:out value="${emp.id}"/></p>
                <p><strong>Gender:</strong> <c:out value="${emp.gender}"/></p>
                <p><strong>Department:</strong> <c:out value="${emp.department}"/></p>
                <p><strong>Location:</strong> <c:out value="${emp.location}"/></p>
                <p><strong>Email:</strong> <c:out value="${emp.email}"/></p>
                <p><strong>Contact:</strong> <c:out value="${emp.contact}"/></p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
