<%@ page import="java.util.List"%>
<%@ page import="com.r3sys.model.YouthFeedback"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Youth Feedbacks</title>
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
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        th, td {
            padding: 12px 15px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #00c0ef;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #eef7fa;
        }

        .no-data {
            text-align: center;
            padding: 20px;
            color: #888;
        }
    </style>
</head>
<body>

    <h2>Youth Feedback Records</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Youth Contact</th>
            <th>Policy ID</th>
            <th>Feedback</th>
            <th>Date</th>
        </tr>
        <%
            List<YouthFeedback> obj = (List<YouthFeedback>) request.getAttribute("viewFeedback");
            if (obj != null && !obj.isEmpty()) {
                for (YouthFeedback c : obj) {
        %>
        <tr>
            <td><%= c.getId() %></td>
            <td><%= c.getNumber() %></td>
            <td><%= c.getPolicyId() %></td>
            <td><%= c.getFeedback() %></td>
            <td><%= c.getDate() %></td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="5" class="no-data">No feedback data available</td>
        </tr>
        <%
            }
        %>
    </table>

</body>
</html>
