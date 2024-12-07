<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
<style>
    /* General Styling */
    body {
        background-color: #f5f5f5;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        color: #333;
        overflow: hidden; /* Prevent scrolling */
    }

    h1 {
        text-align: center;
        color: green;
        text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
        font-size: 2.5rem;
        margin-top: 30px;
        position: relative;
    }

    /* Navbar Styling */
    .navbar {
        display: flex;
        justify-content: center;
        background-color: #1e90ff;
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
        border-radius: 5px;
        font-size: 1rem;
        margin: 0 10px;
        transition: background-color 0.3s ease, transform 0.3s ease;
    }

    .navbar a:hover {
        background-color: #104e8b;
        transform: translateY(-3px);
    }

    /* Fullscreen Image Styling */
    .image-container {
        width: 100vw;
        height: 100vh;
        overflow: hidden;
        display: flex;
        justify-content: center;
        align-items: center;
        position: relative;
        z-index: 1;
        animation: fadeIn 1.5s ease-out;
    }

    .image-container img {
        width: 100%;
        height: 100%;
        object-fit: cover;
        transition: transform 0.5s ease;
    }

    .image-container:hover img {
        transform: scale(1.05);
    }

    /* Fade-in Animation */
    @keyframes fadeIn {
        0% {
            opacity: 0;
            transform: translateY(20px);
        }
        100% {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .navbar {
            flex-direction: column;
        }
        .navbar a {
            margin: 5px 0;
        }
    }
</style>
</head>
<body>
<%@include file="adminnavbar.jsp" %>



</body>
</html>
