<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.entity.Book" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Books</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        padding: 10px;
        border: 1px solid #ddd;
    }

    th {
        background-color: #2c3e50;
        color: #ffffff;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
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
    
    .actions {
        text-align: center;
    }

    .actions a {
        margin: 0 5px;
        color: #2c3e50;
        font-size: 18px;
    }

    .actions a:hover {
        color: #d9534f; /* Red color for delete */
    }

    .actions a.update:hover {
        color: #5bc0de; /* Light blue color for update */
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
        <h1 class="section-title">Books in the Library</h1>
        <table>
            <thead>
                <tr>
                    <th>Book ID</th>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Genre</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <% 
                    List<Book> books = (List<Book>) request.getAttribute("books");
                    if (books != null && !books.isEmpty()) {
                        for (Book book : books) {
                %>
                <tr>
                    <td><%= book.getBid() %></td>
                    <td><%= book.getTitle() %></td>
                    <td><%= book.getAuthor() %></td>
                    <td><%= book.getGenre() %></td>
                    <td><%= book.getPrice() %></td>
                    <td class="actions">
                        <a href="UpdateBookServlet?bookId=<%= book.getBid() %>" class="update" aria-label="Update"><i class="fas fa-edit"></i></a>
                        <a href="DeleteBookServlet?bookId=<%= book.getBid() %>" class="delete" aria-label="Delete" onclick="return confirm('Are you sure you want to delete this book?');"><i class="fas fa-trash"></i></a>
                    </td>
                </tr>
                <% 
                        }
                    } else {
                %>
                <tr>
                    <td colspan="6">No books available</td>
                </tr>
                <% 
                    }
                %>
            </tbody>
        </table>
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
