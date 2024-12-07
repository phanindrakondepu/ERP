<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ERP System</title>
    <style>
        /* General Styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #0a0a0a, #1c1c1c, #333333);
            color: #e8e8e8;
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        h1 {
            text-align: center;
            color: #3498db;
            margin-top: 30px;
            text-shadow: 2px 2px 10px rgba(52, 152, 219, 0.3);
        }

        /* Container */
        .contact-container {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 50px 20px;
        }

        /* Contact Info & Form */
        .contact-info, .contact-form, .team-section {
            width: 80%;
            max-width: 800px;
            background: rgba(30, 30, 30, 0.9);
            border-radius: 8px;
            padding: 30px;
            margin-bottom: 20px;
            backdrop-filter: blur(5px);
            color: #b0c4de;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
            animation: fadeInUp 1s ease-out;
        }

        .contact-info h2, .contact-form h2, .team-section h2 {
            color: #3498db;
            text-align: center;
            font-size: 1.8rem;
        }

        .contact-info p, .contact-form label, .team-section p {
            color: #a9a9a9;
            font-size: 1rem;
            line-height: 1.6;
        }

        .social-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            font-size: 1.5rem;
        }

        .social-links a {
            color: #3498db;
            transition: color 0.3s ease;
        }

        .social-links a:hover {
            color: #e74c3c;
        }

        /* Form */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-top: 10px;
            font-weight: bold;
            color: #a9a9a9;
        }

        input[type="text"], input[type="email"], textarea {
            padding: 10px;
            margin-top: 5px;
            border: none;
            border-radius: 5px;
            background: rgba(255, 255, 255, 0.1);
            color: #b0c4de;
            outline: none;
        }

        input[type="submit"] {
            background-color: #3498db;
            color: #ffffff;
            padding: 10px 20px;
            margin-top: 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #e74c3c;
        }

        /* Team Section */
        .team-section {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .team-members {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 20px;
        }

        .team-card {
            background: rgba(15, 15, 15, 0.9);
            border-radius: 10px;
            width: 220px;
            text-align: center;
            padding: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
            transition: transform 0.3s ease;
        }

        .team-card:hover {
            transform: translateY(-10px);
        }

        .team-card img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
        }

        .team-card h3 {
            margin-top: 10px;
            color: #3498db;
            font-size: 1.2rem;
        }

        .team-card p {
            font-size: 0.9rem;
            color: #a9a9a9;
            margin-top: 5px;
        }

        /* Animations */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>

<%@include file="mainnavbar.jsp" %>

<h1>Contact Us</h1>

<div class="contact-container">

    <!-- Contact Information -->
    <div class="contact-info">
        <h2>Connect With Us</h2>
        <p>If you have any questions about our ERP system, feel free to reach out. We’re here to support you and answer any inquiries you may have. Our team is available to assist you with demos, troubleshooting, and more.</p>
        <div class="social-links">
            <a href="https://www.linkedin.com/in/phanindra-kondepu-50167a25a/" target="_blank">LinkedIn</a>
            <a href="https://x.com/home" target="_blank">Twitter</a>
            <a href="#" target="_blank">Facebook</a>
            <a href="https://www.instagram.com/phani_online_/" target="_blank">Instagram</a>
        </div>
    </div>

    <!-- Contact Form -->
    <div class="contact-form">
        <h2>Get In Touch</h2>
        <form action="/submitContact" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message</label>
            <textarea id="message" name="message" required></textarea>

            <input type="submit" value="Send Message">
        </form>
    </div>

    <!-- Team Section -->
    <div class="team-section">
        <h2>Meet Our Team</h2>
        <div class="team-members">
            <div class="team-card">
                <img src="team1.jpg" alt="Team Member 1">
                <h3>John Doe</h3>
                <p>ERP Specialist</p>
            </div>
            <div class="team-card">
                <img src="team2.jpg" alt="Team Member 2">
                <h3>Jane Smith</h3>
                <p>Customer Support</p>
            </div>
            <div class="team-card">
                <img src="team3.jpg" alt="Team Member 3">
                <h3>Michael Brown</h3>
                <p>Product Developer</p>
            </div>
        </div>
    </div>

</div>

</body>
</html>
