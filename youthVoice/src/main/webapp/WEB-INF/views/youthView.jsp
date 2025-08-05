<%@ page import="java.util.List" %>
<%@ page import="com.r3sys.model.YouthRegistraction" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Youth Registration List</title>
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
    </style>
</head>
<body>

    <h2>All Youth Registrations</h2>
    <table>
        <tr>
            <th>Number</th>
            <th>Name</th>
            <th>Age</th>
            <th>Email</th>
        </tr>
        <%
            List<YouthRegistraction> youthView = (List<YouthRegistraction>) request.getAttribute("youthView");
            if (youthView != null) {
                for (YouthRegistraction c : youthView) {
        %>
        <tr>
            <td><%= c.getYouthNumber() %></td>
            <td><%= c.getYouthName() %></td>
            <td><%= c.getYouthAge() %></td>
            <td><%= c.getYouthEmail() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr><td colspan="4">No youth data available.</td></tr>
        <% } %>
    </table>

</body>
</html>
