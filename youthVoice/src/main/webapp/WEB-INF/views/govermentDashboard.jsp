<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Goverment Officer Dashboard</title>
<style>
html, body {
	margin: 0;
	padding: 0;
	height: 100%;
	font-family: Arial, sans-serif;
	background: white;
	color: white;
}

.container {
	display: flex;
	height: 100%;
}

.sidebar {
	width: 250px;
	background: linear-gradient(to bottom, #1c1c1c, #3a3a3a);
	/* Grey-black */
	padding: 20px;
	box-sizing: border-box;
}

.sidebar h2 {
	text-align: center;
	color: cyan;
	margin-bottom: 30px;
}

.sidebar a {
	display: block;
	color: white;
	text-decoration: none;
	padding: 10px;
	background-color: #4b4b4b;
	margin-bottom: 10px;
	border-radius: 5px;
	transition: background 0.3s;
}

.sidebar a:hover {
	background-color: #666;
}

.main {
	flex-grow: 1;
	display: flex;
	flex-direction: column;
}

.header {
	padding: 20px;
	background-color: #111;
}

.header h1 {
	color: cyan;
	margin: 0;
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

	<div class="container">
		<!-- Sidebar -->
		<div class="sidebar">
    <h2>
        Hello,<br>Officer
    </h2>
    <div class="nav-links">
        <a href="youthView" target="mainFrame">View Youth's</a>
        <a href="addPolicy" target="mainFrame">Add Policy's</a>
        <a href="ViewPolicy" target="mainFrame">View Policy</a>
        <a href="viewFeedback" target="mainFrame">Youth Feedback</a>
        <a href="index.html">Sign Out Here</a>
    </div>
</div>


		<!-- Main Content -->
		<div class="main">
			<div class="header">
				<h1>Welcome Officer</h1>
				<p>Select an option from the menu to begin managing
					DigiPanchayat operations efficiently.</p>
			</div>
			<iframe name="mainFrame" src=""></iframe>
		</div>
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


