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
            background-color: #f4f6f9;
            padding: 40px;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #1f2d3d;
            margin-bottom: 30px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #e9f5ff;
        }

        .no-data {
            text-align: center;
            padding: 20px;
            color: #888;
        }
    </style>
</head>
<body>

    <h2>Published Government Policies</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Title</th>
            <th>Description</th>
            <th>Publish Date</th>
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
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="4" class="no-data">No policies found</td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
