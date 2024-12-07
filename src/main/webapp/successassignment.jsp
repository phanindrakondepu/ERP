<!DOCTYPE html>
<html>
<head>
    <title>Assignment Updated</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #4caf50, #81c784);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }
        .message-container {
            text-align: center;
            background: rgba(0, 0, 0, 0.6);
            padding: 50px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.5);
            animation: fadeIn 2s ease-in-out;
        }
        .message-container h1 {
            font-size: 2.5rem;
            margin: 0;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        }
        .message-container p {
            font-size: 1.2rem;
            margin-top: 10px;
            opacity: 0.8;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: scale(0.8);
            }
            to {
                opacity: 1;
                transform: scale(1);
            }
        }
    </style>
</head>
<body>
    <div class="message-container">
        <h1>Assignment Submitted Successfully!</h1>
        <p>Thank you for updating the Assignment Grades.</p>
    </div>
</body>
</html>
