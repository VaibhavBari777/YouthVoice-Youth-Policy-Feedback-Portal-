<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Youth Voice</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        /* Sidebar */
        .sidebar {
            width: 240px;
            background: #2C3E50;
            color: white;
            padding: 20px;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .sidebar h2 {
            font-size: 20px;
            margin-bottom: 30px;
            text-align: center;
        }

        .nav-links {
            display: flex;
            flex-direction: column;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            padding: 10px 15px;
            margin-bottom: 10px;
            border-radius: 6px;
            background-color: #34495E;
            transition: background 0.3s;
        }

        .sidebar a:hover {
            background-color: #1ABC9C;
        }

        .logout {
            margin-top: auto;
            background-color: #E74C3C !important;
            text-align: center;
        }

        /* Main content */
        .main-content {
            flex-grow: 1;
            background: #ECF0F1;
            display: flex;
            flex-direction: column;
        }

        .header {
            background-color: #ffffff;
            padding: 20px 30px;
            border-bottom: 1px solid #ddd;
        }

        .header h1 {
            font-size: 24px;
            color: #2C3E50;
        }

        .header p {
            font-size: 14px;
            color: #7F8C8D;
        }

        iframe {
            flex-grow: 1;
            width: 100%;
            border: none;
        }
        .sidebar a.active {
    background-color: #1ABC9C;
    font-weight: bold;
}
        
    </style>
</head>
<body>

    <!-- Sidebar -->
    <div class="sidebar">
        <div>
            <h2>Welcome,<br>Admin </h2>
            <div class="nav-links">
                <a href="youthView" target="contentFrame">View Youth</a>
                <a href="officerView" target="contentFrame">View Officer</a>
                <a href="officerRegistration" target="contentFrame">Add Officer</a>
                <a href="addPolicy" target="contentFrame">Add Policy</a>
                <a href="ViewPolicy" target="contentFrame">View Policy</a>
                <a href="viewFeedback" target="contentFrame">View Feedbacks</a>
                
                
            </div>
        </div>
        <a href="index" class="logout">Sign Out</a>
    </div>

    <!-- Main Content -->
    <div class="main-content">
        <div class="header">
            <h1>Admin Dashboard</h1>
            <p>Select an option from the menu</p>
        </div>
        <iframe name="contentFrame"></iframe>
    </div>

</body>
</html>


<script>
    const links = document.querySelectorAll('.nav-links a');

    links.forEach(link => {
        link.addEventListener('click', function () {
            // Remove active class from all links
            links.forEach(l => l.classList.remove('active'));

            // Add active class to the clicked link
            this.classList.add('active');
        });
    });
</script>

