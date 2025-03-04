<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>New Lead</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f9f9f9;
        }
        h2 {
            color: #333;
            font-size: 24px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        td {
            padding: 10px;
            text-align: left;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .message {
            margin-top: 20px;
            padding: 10px;
            text-align: center;
            border-radius: 5px;
        }
        .success {
            background-color: #4CAF50;
            color: white;
        }
        .error {
            background-color: #f44336;
            color: white;
        }
    </style>
</head>
<body>

    <h2>New Lead</h2>

    <!-- Form to submit a new lead -->
    <form action="saveLead" method="POST">
        <table>
            <tr>
                <td><label for="firstName">First Name</label></td>
                <td><input type="text" id="firstName" name="firstName" required></td>
            </tr>
            <tr>
                <td><label for="lastName">Last Name</label></td>
                <td><input type="text" id="lastName" name="lastName" required></td>
            </tr>
            <tr>
                <td><label for="email">Email</label></td>
                <td><input type="text" id="email" name="email" required></td>
            </tr>
            <tr>
                <td><label for="mobile">Mobile</label></td>
                <td><input type="text" id="mobile" name="mobile" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Save Lead">
                </td>
            </tr>
        </table>
    </form>

    <!-- Message Section -->
    <c:if test="${not empty msg}">
        <div class="message">
            <c:choose>
                <c:when test="${msg == 'Lead saved successfully!'}">
                    <div class="success">${msg}</div>
                </c:when>
               
            </c:choose>
        </div>
    </c:if>

</body>
</html>
