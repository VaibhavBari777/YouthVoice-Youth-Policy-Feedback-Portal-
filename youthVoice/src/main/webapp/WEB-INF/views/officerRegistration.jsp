<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Officer Registration</title>
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
      background-color: rgba(0, 0, 0, 0.75);
      padding: 30px 40px;
      border-radius: 12px;
      width: 100%;
      max-width: 420px;
      box-shadow: 0 0 15px rgba(0, 0, 0, 0.6);
    }

    h2 {
      text-align: center;
      margin-bottom: 25px;
      color: #00bcd4;
    }

    label {
      display: block;
      margin-bottom: 6px;
      font-weight: bold;
      font-size: 14px;
    }

    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 18px;
      border: none;
      border-radius: 6px;
      background-color: #2c3e50;
      color: #ffffff;
    }

    input::placeholder {
      color: #ccc;
    }

    button {
      width: 100%;
      background-color: #00bcd4;
      border: none;
      padding: 12px;
      color: white;
      border-radius: 6px;
      cursor: pointer;
      font-size: 16px;
      font-weight: bold;
    }

    button:hover {
      background-color: #0097a7;
    }
  </style>
</head>
<body>

  <form action="officerRegistration" method="post">
    <h2>Officer Registration</h2>

    <label for="number">Contact Number</label>
    <input type="text" id="number" name="number" placeholder="Enter contact number" required>

    <label for="name">Officer Name</label>
    <input type="text" id="name" name="name" placeholder="Enter officer's name" required>

    <label for="department">Department</label>
    <input type="text" id="department" name="department" placeholder="Enter department" required>

    <label for="email">Email</label>
    <input type="email" id="email" name="email" placeholder="Enter email address" required>

    <label for="password">Password</label>
    <input type="password" id="password" name="password" placeholder="Enter password" required>

    <button type="submit">Register Officer</button>
  </form>

</body>
</html>
