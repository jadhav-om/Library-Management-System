<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Book Added Successfully</title>
<style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        background-image: url('https://images.unsplash.com/photo-1535390200581-9a58d70e74e1?ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80');
        background-size: cover;
        background-attachment: fixed;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.85);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        width: 100%;
        max-width: 600px;
        text-align: center;
    }
    .container h2 {
        color: #2c3e50;
        margin-bottom: 20px;
    }
    .container p {
        color: #34495e;
        font-size: 18px;
        margin-bottom: 30px;
    }
    .back-link {
        display: flex;
        justify-content: center;
        gap: 20px;
    }
    .back-link a {
        color: #fff;
        text-decoration: none;
        font-size: 16px;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #2980b9;
        transition: background-color 0.3s, transform 0.3s;
    }
    .back-link a:hover {
        background-color: #1abc9c;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<div class="container">
    <h2>Book Added Successfully!</h2>
    <p>Your book has been added to the library database.</p>
    <div class="back-link">
     <a href="add_book.jsp">Add Another Book</a>  
     <a href="homepage.jsp">Go To Homepage</a>   
      
    </div>   
</div>

</body>
</html>
