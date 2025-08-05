<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Citizen Registration</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: #ffffff;
    }

    form {
      background-color: rgba(0, 0, 0, 0.7);
      padding: 30px 40px;
      border-radius: 10px;
      width: 400px;
      margin-top: 60px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      margin-bottom: 20px;
      border: none;
      border-radius: 5px;
      background-color: #333;
      color: white;
    }

    button {
      background-color: #00bcd4;
      border: none;
      padding: 10px 20px;
      color: white;
      border-radius: 5px;
      cursor: pointer;
      font-weight: bold;
    }

    button:hover {
      background-color: #0097a7;
    }

    a {
      display: inline-block;
      margin-top: 20px;
      color: #00bcd4;
      text-decoration: none;
    }

    a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>
  <center>
    <form action="youthRegistration" method="post">
      <h2>Register as Youth</h2>

      <label>Enter your contact Number </label>
      <input type="text" name="number" required>

      <label>Enter your name</label>
      <input type="text" name="name" required>

      <label>Enter your Age</label>
      <input type="text" name="age" required>

      <label>Enter your Email</label>
      <input type="email" name="email" required>

      <label>Enter your Password</label>
      <input type="password" name="password" required>

      <button type="submit">Submit</button>

      <br>
    </form>
  </center>
</body>
</html>
