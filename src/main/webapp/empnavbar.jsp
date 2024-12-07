<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERP</title>
    <style>
        /* Reset and General Styling */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: black; /* Full black background */
            color: white;
            height: 100vh;
            overflow: hidden; /* Prevent horizontal scrolling */
            position: relative;
            display: flex;
            flex-direction: column;
        }

        /* Top Navbar Styling */
        .top-navbar {
            width: 100%;
            background-color: #333; /* Dark Gray */
            padding: 10px 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1001;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .top-navbar h2 {
            margin: 0;
            color: white;
            font-size: 1.5rem;
        }

        .top-navbar a {
            color: white;
            text-decoration: none;
            font-size: 1rem;
            padding: 10px 20px;
            background-color: #555;
            border-radius: 5px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .top-navbar a:hover {
            background-color: #777;
            transform: scale(1.1);
        }

        /* Left Sidebar Navbar Styling */
        .navbar {
            width: 250px;
            background: #444; /* Dark Gray */
            padding-top: 60px; /* Offset for top navbar */
            box-shadow: 4px 0 12px rgba(0, 0, 0, 0.2);
            display: flex;
            flex-direction: column;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            height: 100%;
            overflow-y: auto; /* Scrollable */
        }

        .navbar a {
            color: white;
            text-decoration: none;
            padding: 15px 20px;
            width: 100%;
            text-align: center;
            font-size: 1.1rem;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #555;
            transform: scale(1.05);
        }

        /* Main Content Area */
        .content {
            margin-left: 260px; /* Adjusted to fit sidebar */
            padding: 30px;
            margin-top: 80px;
            flex-grow: 1; /* Allow content to grow */
            overflow-y: auto; /* Allow scrolling for content */
        }

        h2 {
            color: white;
            text-align: center;
            margin-top: 20px;
        }

        /* Glowing Blue Ball Animation */
        .glowing-ball {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 120px; /* Increased size */
            height: 120px; /* Increased size */
            background: radial-gradient(circle, rgba(0, 188, 212, 1) 0%, rgba(0, 188, 212, 0.3) 70%);
            border-radius: 50%;
            box-shadow: 0 0 60px 20px rgba(0, 188, 212, 0.8);
            animation: moveAround 10s infinite alternate ease-in-out;
            z-index: 0;
        }

        /* Ball Animation Keyframes */
        @keyframes moveAround {
            0% { transform: translate(-50%, -50%); }
            25% { transform: translate(80vw, 10vh); }
            50% { transform: translate(60vw, 80vh); }
            75% { transform: translate(10vw, 60vh); }
            100% { transform: translate(-50%, -50%); }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                transform: translateX(-250px);
                position: fixed;
                z-index: 1000;
            }

            .navbar.show {
                transform: translateX(0);
            }

            .content {
                margin-left: 0;
            }

            .toggle-btn {
                display: inline-block;
                padding: 10px 15px;
                cursor: pointer;
                background-color: #333;
                color: white;
                font-size: 1.2rem;
                position: absolute;
                top: 15px;
                left: 15px;
                z-index: 2000;
                border-radius: 5px;
                transition: transform 0.3s ease;
            }

            .toggle-btn:hover {
                transform: scale(1.1);
                background-color: #555;
            }
        }
    </style>
</head>
<body>
    <div class="top-navbar">
        <h2>ERP</h2>
        <a href="emplogout">Logout</a>
    </div>

    <!-- Primary Navbar -->
    <div class="navbar" id="navbar">
        <a href="emphome">Home</a>
        <a href="empprofile">Profile</a>
        <a href="updateemp">Update Profile</a>
        <a href="viewallstudentswithdata">Post Attendance</a>
        <a href="StudentData">Student Information</a>
        
        <a href="empcontactus">Contact Us</a>
    </div>

    <!-- Main Content Area -->
    <div class="content">
        <!-- Your content goes here -->
    </div>

    <!-- Glowing Ball -->
    <div class="glowing-ball"></div>

    <script>
        // Toggle Navbar for Mobile View
        function toggleNavbar() {
            const navbar = document.getElementById('navbar');
            navbar.classList.toggle('show');
        }
    </script>
</body>
</html>
