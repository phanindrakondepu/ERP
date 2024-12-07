<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%
Employee emp = (Employee)session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry");
	return;	
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Contact Us</title>
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #e9f7f1; /* Light pastel green background */
        margin: 0;
        padding: 0;
    }

    .form-container {
        width: 50%;
        margin: auto;
        background: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
        animation: fadeIn 1s ease-in-out;
        background-color: #f0f9f4; /* Light greenish background */
    }

    h3 {
        text-align: center;
        color: #2a9d8f; /* Teal color */
        font-size: 1.8rem;
        margin-bottom: 20px;
    }

    table {
        width: 100%;
        margin-top: 20px;
    }

    td {
        padding: 10px;
    }

    label {
        font-weight: bold;
        color: #264653; /* Darker teal */
    }

    input[type="text"],
    input[type="email"],
    textarea {
        width: 100%;
        padding: 12px;
        border: 1px solid #b4f1e0; /* Light green border */
        border-radius: 8px;
        transition: border 0.3s ease;
        font-size: 1rem;
    }

    input[type="text"]:focus,
    input[type="email"]:focus,
    textarea:focus {
        border: 1px solid #2a9d8f; /* Teal color on focus */
        outline: none;
    }

    textarea {
        resize: none;
        height: 120px;
    }

    .button-container {
        text-align: center;
    }

    input[type="submit"],
    input[type="reset"] {
        background-color: #2a9d8f; /* Teal background */
        color: white;
        border: none;
        padding: 12px 25px;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        margin: 10px;
        font-size: 1.1rem;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #1f6e6f; /* Darker teal on hover */
        transform: translateY(-2px);
    }

    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }
</style>

</head>
<body>
  <%@include file="empnavbar.jsp" %>
    <h3 style="text-align: center;"><u>Contact Us</u></h3>
    <div class="form-container">
        <form method="post" action="sendemail">
            <table>
               <tr>
                    <td><label for="name">Name</label></td>
                    <td><input type="text" id="name" name="name" required/></td>
                </tr>
                <tr>
                    <td><label for="email">Email ID</label></td>
                    <td><input type="email" id="email" name="email" required/></td>
                </tr>
                <tr>
                    <td><label for="subject">Subject</label></td>
                    <td><input type="text" id="subject" name="subject" required/></td>
                </tr>
                 <tr>
                    <td><label for="message">Message</label></td>
                    <td>
                   <textarea name="message" required></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Send"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
