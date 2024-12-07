<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
        /* General Styling */
        body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            color: green;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            font-size: 2.5rem;
            margin-top: 30px;
        }

        h2 {
            text-align: center;
            color: #444;
            margin-top: 20px;
            font-weight: 300;
        }

        /* Container Styling for Form and Image */
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
            gap: 50px;
            max-width: 1000px;
            margin: auto;
        }

        /* Image Styling */
        .login-image {
            flex: 1;
            max-width: 400px;
            max-height: 400px;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
        }

        .login-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 10px;
        }

        /* Form Container Styling */
        .form-container {
            flex: 1;
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            max-width: 500px;
            font-size: 1.1rem;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 500;
            color: #1e90ff; /* Label color updated to blue */
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #1e90ff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #104e8b;
            transform: translateY(-3px);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
                align-items: center;
                gap: 20px;
            }

            .form-container,
            .login-image {
                max-width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h2><u>Student Login</u></h2>
    <h4 align="center" style="color:red">
        <c:out value="${message }"></c:out>
    </h4>

    <div class="login-container">
        <!-- Image Section -->
        <div class="login-image">
            <img src="emploginimage.avif" alt="Student Login Image">
        </div>

        <!-- Form Section -->
        <div class="form-container">
            <form method="post" action="checkstudentlogin">
                <label for="eemail">Enter Email ID</label>
                <input type="email" id="eemail" name="eemail" required/>

                <label for="epwd">Enter Password</label>
                <input type="password" id="epwd" name="epwd" required/>

                <div class="button-container">
                    <input type="submit" value="Login"/>
                    <input type="reset" value="Clear"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
