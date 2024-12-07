<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Timetable</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f5f7fa, #c3cfe2);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .timetable {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            animation: fadeIn 2s;
        }
        .timetable th, .timetable td {
            border: 1px solid #ddd;
            text-align: center;
            padding: 8px;
        }
        .timetable th {
            background-color: #007BFF;
            color: white;
            font-size: 1.2rem;
        }
        .timetable td {
            font-size: 1rem;
            background-color: #f9f9f9;
        }
        .timetable tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .timetable tr:hover {
            background-color: #ddd;
            transition: background-color 0.3s ease;
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

    <table class="timetable">
        <thead>
            <tr>
                <th>Time</th>
                <th>Subject</th>
                <th>Room No</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>9:00 AM - 10:00 AM</td>
                <td>JFSD</td>
                <td>101</td>
            </tr>
            <tr>
                <td>10:00 AM - 11:00 AM</td>
                <td>MSWD</td>
                <td>203</td>
            </tr>
            <tr>
                <td>11:00 AM - 12:00 PM</td>
                <td>DBMS</td>
                <td>305</td>
            </tr>
            <tr>
                <td>12:00 PM - 1:00 PM</td>
                <td>DAA</td>
                <td>407</td>
            </tr>
            <tr>
                <td>1:00 PM - 2:00 PM</td>
                <td>Lunch Break</td>
                <td>-</td>
            </tr>
            <tr>
                <td>2:00 PM - 3:00 PM</td>
                <td>IBCC</td>
                <td>503</td>
            </tr>
            <tr>
                <td>3:00 PM - 4:00 PM</td>
                <td>DAA</td>
                <td>607</td>
            </tr>
            <tr>
                <td>4:00 PM - 5:00 PM</td>
                <td>DSS</td>
                <td>701</td>
            </tr>
        </tbody>
    </table>
</body>
</html>
