<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Lead</title>
<style>
    table {
        width: 50%;
        border-collapse: collapse;
    }
    th, td {
        padding: 10px;
        border: 1px solid black;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
    input[type="text"], input[type="hidden"] {
        width: 100%;
        padding: 5px;
    }
    input[type="submit"] {
        padding: 8px 15px;
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

    <h2>Update Lead</h2>
    
    <form action="updateLead" method="post">
        <table>
            <tr>
                <td colspan="2">
                    <input type="hidden" name="id" value="${lead.id}">
                </td>
            </tr>
            <tr>
                <th>First Name</th>
                <td><input type="text" name="firstName" value="${lead.firstName}"></td>
            </tr>
            <tr>
                <th>Last Name</th>
                <td><input type="text" name="lastName" value="${lead.lastName}"></td>
            </tr>
            <tr>
                <th>Email</th>
                <td><input type="text" name="email" value="${lead.email}"></td>
            </tr>
            <tr>
                <th>Mobile</th>
                <td><input type="text" name="mobile" value="${lead.mobile}"></td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Update">
                </td>
            </tr>
        </table>
    </form>
    
    <p style="color: green; font-weight: bold;">${msg}</p>

</body>
</html>

</html>