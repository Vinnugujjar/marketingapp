<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manage Leads</title>
    
    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    
    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
    
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
        }
        .container {
            max-width: 900px; /* Keeps content nicely centered */
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 40px;
        }
        h2 {
            color: #343a40; /* Dark gray */
        }
        .table th {
            background-color: #007bff;
            color: white;
            text-align: center;
        }
        .table-hover tbody tr:hover {
            background-color: #f1f1f1; /* Light hover effect */
        }
        .btn-sm {
            padding: 5px 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2 class="mb-4 text-center">📋 Lead Management</h2>

    <c:if test="${not empty leads}">
        <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                    <tr>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Email</th>
                        <th>Mobile</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="lead" items="${leads}">
                        <tr>
                            <td>${lead.firstName}</td>
                            <td>${lead.lastName}</td>
                            <td>${lead.email}</td>
                            <td>${lead.mobile}</td>
                            <td class="text-center">
                                <form action="delete" method="post" style="display:inline;">
                                    <input type="hidden" name="id" value="${lead.id}">
                                    <button type="submit" class="btn btn-danger btn-sm">
                                        <i class="bi bi-trash"></i> Delete
                                    </button>
                                </form>
                                <a href="update?id=${lead.id}" class="btn btn-warning btn-sm">
                                    <i class="bi bi-pencil-square"></i> Update
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>

    <c:if test="${empty leads}">
        <div class="alert alert-warning text-center">
            No leads found. 📭
        </div>
    </c:if>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
