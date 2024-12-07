<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            overflow: hidden;
            background-color: #f5f5f5;
            display: flex;
            flex-direction: column;
            height: 100vh;
        }

        /* Main container for image and form */
        .main-container {
            display: flex;
            flex: 1;
            height: calc(100vh - 70px); /* Adjust height to account for navbar */
        }

        /* Image Container Styling */
        .image-container {
            flex: 1;
            background-image: url('emploginimage.avif'); /* Replace with your image path */
            background-size: cover;
            background-position: center;
            filter: brightness(0.85);
            transition: transform 1s ease-in-out, opacity 0.5s ease;
            animation: slideInImage 1s ease forwards;
            opacity: 0;
        }

        /* Form Container Styling */
        .form-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: #ffffff;
            padding: 30px;
            box-shadow: -4px 0 12px rgba(0, 0, 0, 0.15);
            border-radius: 12px 0 0 12px;
            animation: slideInForm 1.5s ease forwards;
            opacity: 0;
        }

        /* Form Styling */
        form {
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            color: #1e90ff;
            font-size: 2rem;
            margin-bottom: 20px;
            text-shadow: 1px 1px 5px rgba(0, 0, 0, 0.2);
        }

        label {
            display: block;
            font-weight: 600;
            color: #333;
            margin-bottom: 10px;
            text-align: left;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #1e90ff;
            outline: none;
            box-shadow: 0 0 5px rgba(30, 144, 255, 0.5);
        }

        .button-container input[type="submit"],
        .button-container input[type="reset"] {
            background-color: #1e90ff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            margin: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button-container input[type="submit"]:hover,
        .button-container input[type="reset"]:hover {
            background-color: #104e8b;
            transform: translateY(-3px);
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.3);
        }

        /* Animation Styles */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideInImage {
            from { transform: translateX(-100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        @keyframes slideInForm {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .main-container {
                flex-direction: column;
            }

            .image-container, .form-container {
                flex: none;
                height: 50vh;
                width: 100%;
                border-radius: 0;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <div class="main-container">
        <div class="image-container"></div>
        <div class="form-container">
            <form method="post" action="checkadminlogin">
                <h2>Admin Login</h2>
                <label for="auname">Enter Username</label>
                <input type="text" id="auname" name="auname" required/>
                <label for="apwd">Enter Password</label>
                <input type="password" id="apwd" name="apwd" required/>
                <div class="button-container">
                    <input type="submit" value="Login"/>
                    <input type="reset" value="Clear"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
