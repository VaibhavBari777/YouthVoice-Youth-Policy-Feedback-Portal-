<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>YouthVoice Login Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #6a11cb 0%, #2575fc 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .login-container {
            width: 90%;
            max-width: 900px;
            background: rgba(255, 255, 255, 0.95);
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            display: flex;
            animation: fadeIn 0.6s ease-out;
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .login-sidebar {
            width: 40%;
            background: linear-gradient(to bottom right, #4361ee, #3a0ca3);
            color: white;
            padding: 40px;
            display: flex;
            flex-direction: column;
            justify-content: center;
            position: relative;
            overflow: hidden;
        }

        .login-sidebar::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            transform: rotate(30deg);
        }

        .login-sidebar h2 {
            font-size: 32px;
            margin-bottom: 20px;
            position: relative;
            z-index: 2;
        }

        .login-sidebar p {
            line-height: 1.6;
            font-weight: 300;
            position: relative;
            z-index: 2;
        }

        .login-main {
            width: 60%;
            padding: 40px;
            position: relative;
        }

        .role-tabs {
            display: flex;
            margin-bottom: 30px;
            background: #f5f7ff;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
        }

        .role-tab {
            padding: 14px 0;
            cursor: pointer;
            flex: 1;
            text-align: center;
            font-weight: 500;
            color: #666;
            transition: all 0.3s ease;
            position: relative;
        }

        .role-tab.active {
            color: #4361ee;
            font-weight: 600;
        }

        .role-tab.active::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 70%;
            height: 3px;
            background: #4361ee;
            border-radius: 3px;
            animation: tabIndicator 0.3s ease-out;
        }

        @keyframes tabIndicator {
            from { width: 0; }
            to { width: 70%; }
        }

        .role-tab:hover:not(.active) {
            background: rgba(67, 97, 238, 0.05);
            color: #4361ee;
        }

        .login-form {
            display: none;
            opacity: 0;
            transform: translateY(10px);
            animation: formFadeIn 0.4s ease-out forwards;
        }

        @keyframes formFadeIn {
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .login-form.active {
            display: block;
        }

        .login-form h1 {
            color: #3a0ca3;
            margin-bottom: 25px;
            font-size: 26px;
            font-weight: 600;
        }

        .form-group {
            margin-bottom: 25px;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-weight: 500;
        }

        .form-group input {
            width: 100%;
            padding: 14px 14px 14px 45px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 16px;
            transition: all 0.3s;
            box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05);
        }

        .form-group input:focus {
            border-color: #4361ee;
            outline: none;
            box-shadow: 0 0 0 3px rgba(67, 97, 238, 0.2);
        }

        .form-group i {
            position: absolute;
            left: 15px;
            top: 40px;
            color: #777;
            font-size: 18px;
        }

        button[type="submit"] {
            background: linear-gradient(to right, #4361ee, #3a0ca3);
            color: white;
            border: none;
            padding: 15px;
            border-radius: 8px;
            cursor: pointer;
            font-size: 17px;
            font-weight: 600;
            width: 100%;
            margin-top: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(67, 97, 238, 0.3);
            position: relative;
            overflow: hidden;
        }

        button[type="submit"]:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(67, 97, 238, 0.4);
        }

        button[type="submit"]::after {
            content: '';
            position: absolute;
            top: -50%;
                 left: -60%;
            width: 30px;
            height: 200%;
            background: rgba(255, 255, 255, 0.3);
            transform: rotate(25deg);
            transition: all 0.4s;
        }

        button[type="submit"]:hover::after {
            left: 110%;
        }

        .links-container {   
        margin-top: 25px;
            text-align: center;
            font-size: 15px;
        }

        .links-container label {
            color: #666;
        }

        .links-container a {
            color: #4361ee;
            text-decoration: none;
            font-weight: 500;
            margin-left: 8px;
            transition: all 0.2s;
        }

        .links-container a:hover {
            text-decoration: underline;
            color: #3a0ca3;
        }

        .logo {
            position: absolute;
            top: 15px;
            right: 15px;
            font-size: 24px;
            color: #4361ee;
            font-weight: 700;
        }

        .wave-animation {
            position: absolute;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 20px;
            background: url('data:image/svg+xml;utf8,<svg viewBox="0 0 1200 120" xmlns="http://www.w3.org/2000/svg" fill="%234361ee22"><path d="M0 0v46.29c47.79 22.2 103.59 32.17 158 28 70.36-5.37 136.33-33.31 206.8-37.5 73.84-4.36 147.54 16.88 218.2 35.26 69.27 18 138.3 24.88 209.4 13.08 36.15-6 69.85-17.84 104.45-29.34C989.49 25 1113-14.29 1200 52.47V0z" /></svg>');
            background-size: 1200px 100px;
            animation: wave 12s linear infinite;
        }

        @keyframes wave {
            0% { background-position-x: 0; }
            100% { background-position-x: 1200px; }
        }

        @media (max-width: 768px) {
            .login-container {
                flex-direction: column;
                width: 95%;
            }
            
            .login-sidebar, .login-main {
                width: 100%;
            }
            
            .login-sidebar {
                padding: 30px;
            }
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="login-sidebar">
            <h2>YouthVoice</h2>
            <p>Welcome to the Youth Policy Feedback Portal. This platform enables youth to engage with policy decisions, provide feedback, and view government responses. Select your role to log in and access the services.</p>
        </div>

        <div class="login-main">
            <div class="logo">YouthVoice</div>
            
            <div class="role-tabs">
                <div class="role-tab active" onclick="showForm('admin')">
                    <i class="fas fa-user-cog"></i> Admin
                </div>
                <div class="role-tab" onclick="showForm('government')">
                    <i class="fas fa-landmark"></i> Government
                </div>
                <div class="role-tab" onclick="showForm('youth')">
                    <i class="fas fa-users"></i> Youth
                </div>
            </div>

            <!-- Admin Login Form -->
            <form id="admin-form" action="adminLogin" method="post" class="login-form active">
                <h1>Welcome Administrator</h1>
                <div class="form-group">
                    <label>Email</label>
                    <i class="fas fa-envelope"></i>
                    <input type="email" name="email" placeholder="Enter your email">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Enter your password">
                </div>
                <button type="submit">Login</button>
            </form>

            <!-- Government Login Form -->
            <form id="government-form" action="govLogin" method="post" class="login-form">
                <h1>Welcome Government Official</h1>
                <div class="form-group">
                    <label>Official Number</label>
                    <i class="fas fa-id-card"></i>
                    <input type="text" name="number" placeholder="Enter your official number">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Enter your password">
                </div>
                <button type="submit">Login</button>
            </form>

            <!-- Youth Login Form -->
            <form id="youth-form" action="youthLogin" method="post" class="login-form">
                <h1>Welcome Youth User</h1>
                <div class="form-group">
                    <label>Contact number</label>
                    <i class="fas fa-mobile-alt"></i>
                    <input type="tel" name="number" placeholder="Enter your contact number">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <i class="fas fa-lock"></i>
                    <input type="password" name="password" placeholder="Enter your password">
                </div>
                <button type="submit">Login</button>
                <div class="links-container">
                    <label>New here?</label>
                    <a href="youthRegistration">Register Now</a>
                </div>
            </form>
            
            <div class="wave-animation"></div>
        </div>
    </div>

    <script>
        function showForm(role) {
            // Remove active class from all forms and tabs
            document.querySelectorAll('.login-form').forEach(form => {
                form.classList.remove('active');
            });
            
            document.querySelectorAll('.role-tab').forEach(tab => {
                tab.classList.remove('active');
            });
            
            // Add active class to selected tab
            document.querySelectorAll('.role-tab').forEach(tab => {
                if (tab.textContent.toLowerCase().includes(role)) {
                    tab.classList.add('active');
                }
            });
            
            // Show selected form with animation
            setTimeout(() => {
                document.getElementById(role + '-form').classList.add('active');
            }, 10);
        }
        
        // Add animation on input focus
        document.querySelectorAll('input').forEach(input => {
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'scale(1.02)';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'scale(1)';
            });
        });
    </script>
</body>
</html>