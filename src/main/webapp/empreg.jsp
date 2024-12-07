<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Registration</title>
    <style>
        /* General Styling */
        body {
            background: linear-gradient(to right, #f5f5f5, #cfd9df);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            overflow-x: hidden;
            animation: fadeIn 1.5s ease-in;
        }

        h2 {
            text-align: center;
            color: #1e90ff;
            font-size: 1.5rem;
            margin: 10px 0;
            text-transform: uppercase;
            animation: slideInFromLeft 1s ease-out;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #1e90ff;
            padding: 8px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            padding: 6px 12px;
            border-radius: 5px;
            font-size: 0.9rem;
            margin: 0 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar a:hover {
            background-color: #104e8b;
            transform: translateY(-3px);
        }

        /* Form Container Styling */
        .form-container {
            display: flex;
            justify-content: center;
            padding: 10px;
            animation: fadeInUp 1s ease-out;
        }

        /* Form Styling */
        form {
            background-color: #fff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
            font-size: 0.85rem;
            animation: zoomIn 0.8s ease;
        }

        .form-row {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .form-row label {
            flex: 1;
            font-weight: 500;
            color: #333;
        }

        .form-row input[type="text"],
        .form-row input[type="date"],
        .form-row input[type="email"],
        .form-row input[type="password"],
        .form-row input[type="number"],
        .form-row select {
            flex: 2;
            padding: 6px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 0.85rem;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        input:focus, select:focus {
            border-color: #1e90ff;
            box-shadow: 0 0 4px rgba(30, 144, 255, 0.3);
            outline: none;
        }

        .form-row.gender {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .gender label {
            font-weight: 500;
            color: #333;
            font-size: 0.9rem;
        }

        .gender input {
            margin: 0 5px;
        }

        .button-row {
            text-align: center;
            margin-top: 15px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #1e90ff;
            color: #fff;
            padding: 6px 15px;
            border: none;
            border-radius: 5px;
            font-size: 0.9rem;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
            margin: 3px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #104e8b;
            transform: translateY(-3px);
        }

        /* Animation Keyframes */
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes slideInFromLeft {
            from { transform: translateX(-100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }

        @keyframes zoomIn {
            from { transform: scale(0.8); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }
    </style>
</head>
<body>
  <%@include file="adminnavbar.jsp" %>
    <h2>Employee Registration</h2>
    <div class="form-container">
        <form method="post" action="insertemp">
            <div class="form-row">
                <label for="ename">Name:</label>
                <input type="text" id="ename" name="ename" required/>
            </div>
            <div class="form-row gender">
                <label>Gender:</label>
                <input type="radio" id="male" name="egender" value="MALE" required/>
                <label for="male">Male</label>
                <input type="radio" id="female" name="egender" value="FEMALE" required/>
                <label for="female">Female</label>
                <input type="radio" id="others" name="egender" value="OTHERS" required/>
                <label for="others">Others</label>
            </div>
            <div class="form-row">
                <label for="edob">Date of Birth:</label>
                <input type="date" id="edob" name="edob" required/>
            </div>
            <div class="form-row">
                <label for="edept">Department:</label>
                <select id="edept" name="edept" required>
                    <option value="">---Select---</option>
                    <option value="TECHNICAL">Technical</option>
                    <option value="MARKETING">Marketing</option>
                    <option value="SALES">Sales</option>
                </select>
            </div>
            <div class="form-row">
                <label for="esalary">Salary:</label>
                <input type="number" id="esalary" name="esalary" step="0.01" required/>
            </div>
            <div class="form-row">
                <label for="elocation">Location:</label>
                <input type="text" id="elocation" name="elocation" required/>
            </div>
            <div class="form-row">
                <label for="eemail">Email:</label>
                <input type="email" id="eemail" name="eemail" required/>
            </div>
            <div class="form-row">
                <label for="epwd">Password:</label>
                <input type="password" id="epwd" name="epwd" required/>
            </div>
            <div class="form-row">
                <label for="econtact">Contact:</label>
                <input type="number" id="econtact" name="econtact" required/>
            </div>
            <div class="button-row">
                <input type="submit" value="Register"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>
</body>
</html>
