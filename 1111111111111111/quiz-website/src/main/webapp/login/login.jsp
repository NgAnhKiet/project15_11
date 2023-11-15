<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pik Quizz - Log In</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <style>
        body {
            padding: 40px;
            background: #FBEAEB;
            color: #333;
            font-family: Arial, sans-serif;
        }

        .form-container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.3);
        }

        .form-container h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #38368b;
        }

        .form-container label {
            color: #38368b;
            font-size: 20px;
        }

        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container input[type="password"],
        .form-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .form-container input[type="submit"] {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #38368b;
            color: #FBEAEB;
            font-weight: bold;
            cursor: pointer;
        }

        .form-container input[type="submit"]:hover {
            background-color: #1A2557;
        }

        .text-center {
            text-align: center;
        }

        .mt-3 {
            margin-top: 20px;
        }

        .text-center a {
            color: #020053;
            text-decoration: none;
        }

        .text-center a:hover {
            text-decoration: underline;
        }

        .form-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            box-sizing: border-box; /* Ensure the select box includes padding and border in its width */
        }

        .alert-success {
            background-color: #FBEAEB;
            color: #155724;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #D4EDDA;
        }

        /*.alert-success .checkmark {*/
        /*    display: inline-block;*/
        /*    width: 20px;*/
        /*    height: 20px;*/
        /*    background-image: url('checkmark.png'); !* Replace 'checkmark.png' with the actual path to your checkmark icon *!*/
        /*    background-size: cover;*/
        /*    margin-right: 10px;*/
        /*}*/
    </style>
</head>
<body>
<div class="form-container">
    <h1>Login</h1>
    <form id="form-signup" action="/login?action=login" method="post">
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" class="form-control" required>
        </div>

        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" id="password" onchange="checkPassword()" name="password" class="form-control"
                   minlength="6" required>
        </div>

        <div class="d-grid">
            <input type="submit" value="Login" class="btn btn-primary">
        </div>
    </form>

    <%-- Add this code snippet to display error message --%>
    <% String errorMessage = (String) request.getAttribute("errorMessage");
        if (errorMessage != null && !errorMessage.isEmpty()) { %>
    <div class="alert alert-danger" role="alert">
        <%= errorMessage %>
    </div>
    <% } %>
    <div class="text-center mt-3">
        <p style="color: #020053">Don't have an account? <a href="/sign-up/sign-up.jsp">Sign up here!</a></p>
    </div>
    <div class="text-center mt-3">
        <p style="color: #020053">Love the bunny? <a href="/home/home.jsp">Back home</a></p>
    </div>
    <% if (request.getAttribute("successMessage") != null) { %>
    <div class="alert alert-success" style="text-align: center">
        <span class="checkmark"></span>
        <%= request.getAttribute("successMessage")%>
    </div>
    <% } %>
</div>
<%-- Kiểm tra xem có thông báo thành công không --%>

<script src="js/bootstrap.min.js"></script>
</body>
</html>