package com.servlets;

import java.io.IOException;

import com.dao.BookDao;
import com.entity.Book;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


public class AddBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String genre = request.getParameter("genre");
		double price = Double.parseDouble(request.getParameter("price"));
		
		Book b = new Book(0, title, author, genre, price);
		BookDao.addBook(b);
		
		response.sendRedirect("confirmation.jsp");
		
		
	}

}
