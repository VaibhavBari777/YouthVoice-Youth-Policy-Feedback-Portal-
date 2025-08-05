<%@ page import="java.util.List" %>
<%@ page import="com.r3sys.model.OfficerRegistration" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Officer Registration List</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f8;
            margin: 20px;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.05);
        }

        th, td {
            padding: 12px 16px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #2c3e50;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a.delete-link {
            color: #e74c3c;
            text-decoration: none;
            font-weight: bold;
        }

        a.delete-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>All Officer Registrations</h2>
    <table>
        <tr>
            <th>Number</th>
            <th>Name</th>
            <th>Department</th>
            <th>Email</th>
            <th>Delete Officer</th>
        </tr>
        <%
            List<OfficerRegistration> officerView = (List<OfficerRegistration>) request.getAttribute("officerView");
            if (officerView != null && !officerView.isEmpty()) {
                for (OfficerRegistration c : officerView) {
        %>
        <tr>
            <td><%= c.getNumber() %></td>
            <td><%= c.getName() %></td>
            <td><%= c.getDepartment() %></td>
            <td><%= c.getEmail() %></td>
            <td>
                <a class="delete-link" href="deleteOfficer?cid=<%= c.getNumber() %>" 
                   onclick="return confirm('Are you sure you want to delete this officer?');">
                   Delete
                </a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="5">No officer data found.</td></tr>
        <% } %>
    </table>

</body>
</html>
