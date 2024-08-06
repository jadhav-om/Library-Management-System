<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Book</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f9;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh;
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
        flex: 1;
    }

    h1.section-title {
        color: #2c3e50;
        margin-bottom: 20px;
        font-size: 28px;
        text-align: center;
    }

    form {
        max-width: 600px;
        margin: 0 auto;
        background: #fff;
        padding: 20px;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    label {
        display: block;
        margin-bottom: 8px;
    }

    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    input[type="submit"] {
        background-color: #2c3e50;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    .footer {
        background-color: #2c3e50;
        color: #f2f2f2;
        text-align: center;
        padding: 20px 0;
        width: 100%;
        box-shadow: 0 -2px 4px rgba(0, 0, 0, 0.1);
    }

    .footer a {
        color: #f2f2f2;
        text-decoration: none;
        margin: 0 10px;
    }

    .footer a:hover {
        text-decoration: underline;
    }

    .footer .social-icons {
        margin-top: 10px;
    }

    .footer .social-icons a {
        margin: 0 10px;
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
        <h1 class="section-title">Update Book</h1>
        <%
            Book book = (Book) request.getAttribute("book");
            if (book != null) {
        %>
        <form action="UpdateBookActionServlet" method="post">
            <input type="hidden" name="bid" value="<%= book.getBid() %>">
            <label for="title">Title:</label>
            <input type="text" id="title" name="title" value="<%= book.getTitle() %>" required>

            <label for="author">Author:</label>
            <input type="text" id="author" name="author" value="<%= book.getAuthor() %>" required>

            <label for="genre">Genre:</label>
            <input type="text" id="genre" name="genre" value="<%= book.getGenre() %>" required>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" value="<%= book.getPrice() %>" required>

     <center><input type="submit" value="Update Book"></center>       
     
        </form>
        <%
            } else {
        %>
        <p>Book not found.</p>
        <%
            }
        %>
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
</body>
</html>
