package com.servlets;

import java.io.IOException;
import java.util.List;

import com.dao.BookDao;
import com.entity.Book;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ViewBooksServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Fetch books from the database
        List<Book> books = BookDao.getAllBooks();
        
        // Set books as a request attribute
        request.setAttribute("books", books);
        
        // Forward to JSP page
        request.getRequestDispatcher("view_books.jsp").forward(request, response);
    }
}
