<%@ page import="java.util.List" %>
<%@ page import="com.r3sys.model.Policy" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Policy List</title>
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
            font-weight: bold;
            text-decoration: none;
        }

        a.delete-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>All Policies</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Publish Date</th>
            <th>Delete</th>
        </tr>
        <%
            List<Policy> policy = (List<Policy>) request.getAttribute("policy");
            if (policy != null && !policy.isEmpty()) {
                for (Policy c : policy) {
        %>
        <tr>
            <td><%= c.getId() %></td>
            <td><%= c.getTitle() %></td>
            <td><%= c.getDescription() %></td>
            <td><%= c.getDate() %></td>
            <td>
                <a class="delete-link" href="/deletePolicy?id=<%= c.getId() %>"
                   onclick="return confirm('Are you sure you want to delete this policy?');">
                   Delete
                </a>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="5">No policy data found.</td></tr>
        <% } %>
    </table>

</body>
</html>
