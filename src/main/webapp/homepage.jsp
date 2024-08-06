<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Library Management System</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        background-color: #f4f4f4;
    }
    header {
        background-color: #333;
        color: #fff;
        padding: 20px 0;
        text-align: center;
        font-size: 24px;
    }
    nav {
        display: flex;
        justify-content: center;
        background-color: #444;
        padding: 10px 0;
    }
    nav a {
        color: #fff;
        padding: 14px 20px;
        text-decoration: none;
        text-align: center;
        font-size: 18px;
    }
    nav a:hover {
        background-color: #ddd;
        color: black;
    }
    .container {
        padding: 50px;
        background-image: url('https://images.unsplash.com/photo-1507842217343-583bb7270b66?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
        background-size: cover;
        background-attachment: fixed;
    }
    .content {
        background-color: rgba(255, 255, 255, 0.9);
        padding: 20px;
        border-radius: 10px;
        margin: 0 auto;
        width: 80%;
        max-width: 1200px;
    }
    .content h1 {
        color: #333;
        text-align: center;
    }
    .section {
        margin-bottom: 50px;
    }
    .books {
        display: flex;
        justify-content: center;
        flex-wrap: wrap;
        gap: 20px;
    }
    .book {
        text-align: center;
        width: 200px;
        box-sizing: border-box;
    }
    .book img {
        width: 200px;
        height: 300px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        object-fit: cover;
    }
    .book-title {
        font-size: 16px;
        font-weight: bold;
        color: #333;
        margin-top: 10px;
    }
    .book-detail {
        font-size: 14px;
        color: #666;
    }
    footer {
        background-color: #333;
        color: #fff;
        text-align: center;
        padding: 10px 0;
        position: fixed;
        width: 100%;
        bottom: 0;
    }
</style>
</head>
<body>

<header>
    <h1>Welcome to Library Management System</h1>
</header>

<nav>
    <a href="homepage.jsp">Home</a>
    <a href="add_book.jsp">Add Book</a>
    <a href="ViewBooksServlet">View Books</a>
  <!-- <a href="updatebook.jsp">Update Books</a>
    
    <a href="issuebook.jsp">Issue Book</a>
    <a href="returnbook.jsp">Return Book</a>
    <a href="contact.jsp">Contact</a> -->  
</nav>

<div class="container">
    <div class="content">
        <!-- Trending Books Section -->
        <div class="section">
            <h1>Trending Books</h1>
            <div class="books">
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8284107-L.jpg" alt="The White Tiger">
                    <div class="book-title">The White Tiger</div>
                    <div class="book-detail">by Aravind Adiga</div>
                </div>
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8226094-L.jpg" alt="The God of Small Things">
                    <div class="book-title">The God of Small Things</div>
                    <div class="book-detail">by Arundhati Roy</div>
                </div>
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8238293-L.jpg" alt="Midnight's Children">
                    <div class="book-title">Midnight's Children</div>
                    <div class="book-detail">by Salman Rushdie</div>
                </div>
            </div>
        </div>

        <!-- Bestsellers Section -->
        <div class="section">
            <h1>Bestsellers</h1>
            <div class="books">
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8291600-L.jpg" alt="The Alchemist">
                    <div class="book-title">The Alchemist</div>
                    <div class="book-detail">by Paulo Coelho</div>
                </div>
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8300157-L.jpg" alt="The Secret">
                    <div class="book-title">The Secret</div>
                    <div class="book-detail">by Rhonda Byrne</div>
                </div>
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8256646-L.jpg" alt="Atomic Habits">
                    <div class="book-title">Atomic Habits</div>
                    <div class="book-detail">by James Clear</div>
                </div>
            </div>
        </div>

        <!-- Biopics Section -->
        <div class="section">
            <h1>Biopics of Great Authors</h1>
            <div class="books">
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8229331-L.jpg" alt="My Life in Full">
                    <div class="book-title">My Life in Full</div>
                    <div class="book-detail">by Indra Nooyi</div>
                </div>
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8260077-L.jpg" alt="Playing It My Way">
                    <div class="book-title">Playing It My Way</div>
                    <div class="book-detail">by Sachin Tendulkar</div>
                </div>
                <div class="book">
                    <img src="https://covers.openlibrary.org/b/id/8239584-L.jpg" alt="I Am Malala">
                    <div class="book-title">I Am Malala</div>
                    <div class="book-detail">by Malala Yousafzai</div>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <p>&copy; 2024 Library Management System. All rights reserved.</p>
</footer>

</body>
</html>
