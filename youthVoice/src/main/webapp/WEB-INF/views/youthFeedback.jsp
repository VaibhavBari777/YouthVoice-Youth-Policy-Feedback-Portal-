<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Feedback</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 40px;
            color: #333;
        }

        .feedback-form {
            background-color: #ffffff;
            max-width: 500px;
            margin: auto;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .feedback-form h2 {
            margin-bottom: 20px;
            color: #1f2d3d;
            text-align: center;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: 500;
        }

        input[type="text"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        textarea {
            height: 120px;
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #00c0ef;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            width: 100%;
        }

        input[type="submit"]:hover {
            background-color: #009fd4;
        }
    </style>
</head>
<body>
    <div class="feedback-form">
        <h2>Submit Feedback</h2>
        <form action="youthFeedback" method="post">
            <label>Policy ID</label>
            <input type="text" name="pid" required />

            <label>Your Feedback</label>
            <textarea name="feedback" required></textarea>

            <label>Date</label>
            <input type="date" name="date" required />

            <input type="submit" value="Add Feedback" />
        </form>
    </div>
</body>
</html>
