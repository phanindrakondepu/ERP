<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Submit Assignment</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            background: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #333;
        }
        form {
            display: flex;
            flex-direction: column;
        }
        label {
            margin-top: 10px;
            font-weight: bold;
            color: #555;
        }
        input, textarea, button {
            margin-top: 5px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        textarea {
            resize: vertical;
        }
        button {
            background-color: #007bff;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Submit Assignment</h1>
        <form action="successassignment.jsp" method="post">
            <!-- Hidden field for assignment ID -->
            <input type="hidden" name="assignmentId" value="${assignmentId}" />

            <!-- Assignment Name -->
            <label for="assignmentName">Assignment Name</label>
            <input type="text" id="assignmentName" name="assignmentName" placeholder="Enter assignment name" required />

            <!-- Description -->
            <label for="description">Description</label>
            <textarea id="description" name="description" rows="4" placeholder="Enter a brief description"></textarea>

            <!-- Submission Date -->
            <label for="submissionDate">Submission Date</label>
            <input type="date" id="submissionDate" name="submissionDate" required />

            <!-- File Upload -->
            <label for="file">Upload Assignment File</label>
            <input type="file" id="file" name="file" accept=".pdf,.doc,.docx,.zip" required />

            <!-- Submit Button -->
            <button type="submit">Submit Assignment</button>
        </form>
    </div>
</body>
</html>