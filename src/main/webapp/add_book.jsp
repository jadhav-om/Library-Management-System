<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Book - Library Management System</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
    }

    .navbar {
        background-color: #2c3e50;
        overflow: hidden;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    .navbar a {
        float: left;
        display: block;
        color: #f2f2f2;
        text-align: center;
        padding: 14px 20px;
        text-decoration: none;
        font-size: 17px;
    }

    .navbar a:hover {
        background-color: #ddd;
        color: black;
    }

    .navbar .logo {
        font-size: 20px;
        font-weight: bold;
    }

    .container {
        padding: 50px;
        max-width: 900px;
        margin: auto;
    }

    .form-section {
        background-color: #ffffff;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin-bottom: 30px;
    }

    .form-section h2 {
        color: #2c3e50;
        margin-bottom: 20px;
        font-size: 32px;
        text-align: center;
    }

    .form-section label {
        display: block;
        margin-bottom: 10px;
        font-weight: 600;
        color: #333333;
        font-size: 16px;
    }

    .form-section input, .form-section textarea {
        width: calc(100% - 22px);
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        color: #333333;
    }

    .form-section input:focus, .form-section textarea:focus {
        border-color: #2c3e50;
        outline: none;
    }

    .form-section button {
        background-color: #2c3e50;
        color: #ffffff;
        padding: 15px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 18px;
        width: 100%;
        transition: background-color 0.3s ease;
    }

    .form-section button:hover {
        background-color: #34495e;
    }

    .footer {
        background-color: #2c3e50;
        color: #f2f2f2;
        text-align: center;
        padding: 20px 0;
        position: relative;
        bottom: 0;
        width: 100%;
    }

    .footer a {
        color: #f2f2f2;
        text-decoration: none;
        margin: 0 15px;
        font-size: 16px;
    }

    .footer a:hover {
        text-decoration: underline;
    }

    .footer .social-icons {
        margin-top: 10px;
    }

    .footer .social-icons a {
        margin: 0 12px;
        font-size: 24px;
        color: #f2f2f2;
        text-decoration: none;
    }

    .footer .social-icons a:hover {
        color: #ddd;
    }
</style>
</head>
<body>
    <div class="navbar">
        <a href="homepage.jsp" class="logo">Library Management</a>
        <a href="homepage.jsp">Home</a>
        <a href="add_book.jsp">Add Book</a>
        <a href="ViewBooksServlet">View Books</a>
        
    </div>
    
    <div class="container">
        <div class="form-section">
            <h2>Add New Book</h2>
            <form action="AddBookServlet" method="post">
                <label for="title">Title:</label>
                <input type="text" id="title" name="title" required>

                <label for="author">Author:</label>
                <input type="text" id="author" name="author" required>

                <label for="genre">Genre:</label>
                <input type="text" id="genre" name="genre" required>
                
                <label for="price">Price:</label>
                <input type="number" id="price" name="price" required>

               <!--   <label for="comment">Comment:</label>
                <textarea id="comment" name="comment" rows="6" placeholder="Add any comments or notes about the book"></textarea>
				-->
                <button type="submit">Add Book</button>
            </form>
        </div>
    </div>

    <div class="footer">
        <p>&copy; 2024 Library Management System. All rights reserved.</p>
        <p>
            <a href="#">Privacy Policy</a> | 
            <a href="#">Terms of Service</a>
        </p>
        <div class="social-icons">
            <a href="#" aria-label="Facebook"><i class="fab fa-facebook-f"></i></a>
            <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
            <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
            <a href="#" aria-label="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
        </div>
    </div>

    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
</body>
</html>
