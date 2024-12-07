<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
  <title>Add Student</title>
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
    font-size: 1.4rem; /* Further decreased font size */
    margin: 6px 0; /* Further reduced margin */
    text-transform: uppercase;
    position: relative;
    animation: slideInFromLeft 1s ease-out;
}

/* Navbar Styling */
.navbar {
    display: flex;
    justify-content: center;
    background-color: #1e90ff;
    padding: 4px 0; /* Further reduced padding */
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    position: sticky;
    top: 0;
    z-index: 1000;
}

.navbar a {
    text-decoration: none;
    color: #fff;
    padding: 3px 8px; /* Further reduced padding */
    border-radius: 5px;
    font-size: 0.75rem; /* Further reduced font size */
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
    align-items: center;
    padding: 4px; /* Further reduced padding */
    animation: fadeInUp 1s ease-out;
}

/* Form Styling */
form {
    background-color: #fff;
    padding: 18px; /* Further reduced padding */
    border-radius: 15px;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
    width: 300px; /* Further reduced width */
    max-width: 100%;
    font-size: 0.75rem; /* Further reduced font size */
    animation: zoomIn 0.8s ease;
    display: flex;
    flex-direction: column;
}

label {
    margin-top: 3px; /* Further reduced margin */
    font-weight: 500;
    color: #333;
}

input[type="number"],
input[type="text"],
input[type="date"],
input[type="email"],
input[type="password"],
select {
    width: 100%;
    padding: 5px; /* Further reduced padding */
    margin-top: 2px; /* Further reduced margin */
    margin-bottom: 5px; /* Further reduced margin */
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 0.75rem; /* Further reduced font size */
    transition: border-color 0.3s, box-shadow 0.3s;
}

input:focus, select:focus {
    border-color: #1e90ff;
    box-shadow: 0 0 8px rgba(30, 144, 255, 0.3);
    outline: none;
}

input[type="submit"],
input[type="reset"] {
    background-color: #1e90ff;
    color: #fff;
    padding: 5px 12px; /* Further reduced padding */
    border: none;
    border-radius: 5px;
    font-size: 0.75rem; /* Further reduced font size */
    cursor: pointer;
    transition: background-color 0.3s, transform 0.3s;
    margin: 2px;
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
  
  <h2><u>ADD STUDENT</u></h2>
  <div class="form-container">
    <form:form modelAttribute="student" method="post" action="insertstudent">
      <label>Name</label>
      <form:input path="name" class="form-input" required="required"/>

      <label>Gender</label>
      <form:radiobutton path="gender" value="Male" required="required"/> Male
      <form:radiobutton path="gender" value="Female" required="required"/> Female

      <label>Date of Birth</label>
      <form:input path="dateOfBirth" class="form-input" required="required" placeholder="YYYY-MM-DD"/>

      <label>Department</label>
      <form:input path="department" class="form-input" required="required"/>

      <label>Year</label>
      <form:input path="year" class="form-input" required="required" type="number" min="1" max="5"/>

      <label>Email ID</label>
      <form:input path="email" class="form-input" required="required"/>

      <label>Password</label>
      <form:password path="password" class="form-input" required="required"/>

      <label>Location</label>
      <form:input path="location" class="form-input" required="required"/>

      <label>Contact No</label>
      <form:input path="contact" class="form-input" required="required"/>

      <label>CGPA</label>
      <form:input path="cgpa" class="form-input" required="required" type="number" step="0.01" min="0.0" max="10.0"/>

      <div style="display: flex; justify-content: space-between;">
        <input type="submit" value="Add" class="button"/>
        <input type="reset" value="Clear" class="button"/>
      </div>
    </form:form>
  </div>
</body>
</html>
