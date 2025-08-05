<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Policy</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            color: #ffffff;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        form {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 30px 40px;
            border-radius: 10px;
            width: 100%;
            max-width: 500px;
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.4);
        }

        h2 {
            text-align: center;
            color: #00bcd4;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="date"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 18px;
            border: none;
            border-radius: 6px;
            background-color: #2c3e50;
            color: #ffffff;
            resize: vertical;
        }

        textarea {
            min-height: 100px;
        }

        input[type="submit"] {
            width: 100%;
            background-color: #00bcd4;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #0097a7;
        }
    </style>
</head>
<body>

    <form action="addPolicy" method="post">
        <h2>Add New Policy</h2>

        <label for="title">Title:</label>
        <input type="text" id="title" name="title" required/>

        <label for="description">Description:</label>
        <textarea id="description" name="description" required></textarea>

        <label for="publishDate">Publish Date:</label>
        <input type="date" id="publishDate" name="publishDate" required/>

        <input type="submit" value="Add Policy"/>
    </form>

</body>
</html>
