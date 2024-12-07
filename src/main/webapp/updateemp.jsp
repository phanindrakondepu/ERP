<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
    response.sendRedirect("empsessionexpiry");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
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
    <%@include file="empnavbar.jsp" %>

    <h3><u>Update Employee Profile</u></h3>
    <div class="form-container">
        <form method="post" action="updateempprofile">
            <table>
                <tr>
                    <td><label for="eid">Employee ID</label></td>
                    <td><input type="number" id="eid" name="eid" readonly value="<%= emp.getId() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" value="<%= emp.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" <%= emp.getGender().equals("MALE") ? "checked" : "" %> required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" <%= emp.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" <%= emp.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" value="<%= emp.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= emp.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= emp.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= emp.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" value="<%= emp.getSalary() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" value="<%= emp.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" readonly value="<%= emp.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" value="<%= emp.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" value="<%= emp.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
