<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP</title>
    <style>
        /* Reset basic styles */
        body, h2, a {
            margin: 0;
            padding: 0;
            text-decoration: none;
            color: white;
        }

        body {
            font-family: Arial, sans-serif;
            background: black; /* Black background */
            margin: 0;
            padding: 0;
        }

        h2 {
            color: white; /* Match white text with the black background */
            margin: 20px 0;
            text-align: center;
        }

        /* Navbar styling */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: #333; /* Dark gray */
            padding: 1em;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            position: sticky;
            top: 0;
            z-index: 10;
        }

        .navbar .left-section {
            display: flex;
            align-items: center;
        }

        .navbar .left-section img {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-right: 15px;
        }

        .navbar .right-section a, 
        .navbar .right-section .login-btn {
            color: white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            transition: color 0.3s ease, text-shadow 0.3s ease;
            margin: 0 10px;
        }

        .navbar .right-section a:hover, 
        .navbar .right-section .login-btn:hover {
            color: #00bcd4; /* Light blue */
            text-shadow: 0 0 8px #00bcd4;
        }

        /* Login button with dropdown */
        .login-dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            top: 100%;
            background-color: rgba(255, 255, 255, 0.1);
            min-width: 160px;
            box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3);
            z-index: 1;
            border-radius: 5px;
            overflow: hidden;
        }

        .dropdown-content a {
            color: white;
            padding: 12px 16px;
            display: block;
            text-align: left;
            transition: background 0.3s, color 0.3s;
        }

        .dropdown-content a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            color: #00bcd4;
        }

        /* Show the dropdown on hover */
        .login-dropdown:hover .dropdown-content {
            display: block;
            animation: fadeIn 0.3s ease;
        }

        /* Animation for dropdown */
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        /* Glowing ball animation */
        .glowing-ball {
            position: absolute;
            width: 100px; /* Increased size */
            height: 100px; /* Increased size */
            background: radial-gradient(circle, #00bcd4, rgba(0, 188, 212, 0.2));
            border-radius: 50%;
            box-shadow: 0 0 30px 10px #00bcd4;
            animation: moveAround 8s infinite alternate ease-in-out;
        }

        /* Ball animation keyframes */
        @keyframes moveAround {
            0% { transform: translate(0, 0); }
            25% { transform: translate(80vw, 10vh); }
            50% { transform: translate(60vw, 80vh); }
            75% { transform: translate(10vw, 60vh); }
            100% { transform: translate(0, 0); }
        }

        /* Page content styling */
        .content {
            margin: 100px auto;
            text-align: center;
            padding: 0 20px;
            color: white;
        }
    </style>
</head>
<body>
    <h2>ERP</h2>
    <div class="navbar">
        <!-- Left section: Profile picture -->
        <div class="left-section">
            <img src="erp1.avif" alt="Profile Picture">
            <span style="font-size: 18px; color: white;">ERP</span>
        </div>
        <!-- Right section: Navigation items -->
        <div class="right-section">
            <a href="/">Home</a>
            <div class="login-dropdown">
                <span class="login-btn">Login</span>
                <div class="dropdown-content">
                    <a href="emplogin">Employee Login</a>
                    <a href="adminlogin">Admin Login</a>
                    <a href="studentlogin">Student Login</a>
                </div>
            </div>
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
        </div>
    </div>
    
    <!-- Glowing blue ball -->
    <div class="glowing-ball"></div>
    
    
</body>
</html>
