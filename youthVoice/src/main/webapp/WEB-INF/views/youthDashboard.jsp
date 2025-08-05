<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Youth Voice</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        /* Top Navbar */
        .top-navbar {
            background: #212121;
            color: white;
            padding: 15px 30px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            height: 60px;
        }

        .top-navbar h1 {
            font-size: 22px;
            margin: 0;
        }

        .top-navbar .user-info {
            font-size: 16px;
        }

        /* Sidebar */
        .container {
            display: flex;
            flex: 1;
        }

        .sidebar {
            width: 260px;
            background: linear-gradient(180deg, #000000, #424242);
            color: white;
            padding: 30px 20px;
            height: calc(100vh - 60px); /* Adjust for top nav */
            box-shadow: 2px 0 5px rgba(0, 0, 0, 0.3);
        }

        .sidebar h2 {
            text-align: center;
            font-size: 22px;
            margin-bottom: 50px;
        }

        .sidebar a {
            display: block;
            color: white;
            text-decoration: none;
            padding: 12px 16px;
            margin: 10px 0;
            background-color: rgba(255, 255, 255, 0.05);
            border-left: 4px solid transparent;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .sidebar a:hover {
            background-color: rgba(255, 255, 255, 0.1);
            border-left: 4px solid #64b5f6;
        }

        /* Main content */
        .main-content {
            flex: 1;
            background: white;
            display: flex;
            flex-direction: column;
            height: calc(100vh - 60px);
        }

        .header {
            padding: 30px;
        }

        .header h1 {
            font-size: 28px;
            color: #00bcd4;
            margin-bottom: 10px;
        }

        .header p {
            font-size: 18px;
            color: #007c91;
        }

        iframe {
            flex: 1;
            border: none;
            width: 100%;
        }
        
        .sidebar a.active {
    background-color: rgba(100, 181, 246, 0.3);
    border-left: 4px solid #00bcd4;
    font-weight: bold;
}
        
    </style>
</head>
<body>

    <!-- Top Navbar -->
    <div class="top-navbar">
        <h1>Youth Voice</h1>
        <div class="user-info">Welcome, Youth</div>
    </div>

    <!-- Sidebar and Main Content -->
    <div class="container">
        <!-- Sidebar -->
       <div class="sidebar">
    <h2>Hello,<br>Youth</h2>
    <div class="nav-links">
        <a href="ViewPolicyYouth" target="contentFrame">View Policies</a>
        <a href="youthFeedback" target="contentFrame">Add Feedback</a>
        <a href="index">Sign Out Here</a>
    </div>
</div>


        <!-- Main Content -->
        <div class="main-content">
            <div class="header"> 
                <h1>Welcome! We are here to help you</h1>
            </div>
            <iframe name="contentFrame"></iframe>
        </div>
    </div>

</body>
</html>
<script>
    const links = document.querySelectorAll('.nav-links a');

    links.forEach(link => {
        link.addEventListener('click', function () {
            links.forEach(l => l.classList.remove('active')); // Remove previous
            this.classList.add('active'); // Highlight current
        });
    });
</script>

