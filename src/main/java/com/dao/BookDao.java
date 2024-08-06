package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.configuration.HibernateConfiguration;
import com.entity.Book;

public class BookDao {
	
	public static void main(String[] args) {
	}
	
	public static void addBook(Book book) {
		
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		Transaction transaction = session.beginTransaction();
		
		session.save(book);
		transaction.commit();
		session.close();
		
	}
	
	public static List<Book> getAllBooks() {
        Session session = HibernateConfiguration.getSessionFactory().openSession();
        List<Book> books = null;
        try {
            books = session.createQuery("from Book", Book.class).list();
        } finally {
            session.close();
        }
        return books;
    }
	
	// This method is for sir's method
	public static List<Book> getBookList() {
		
		Session session = HibernateConfiguration.getSessionFactory().openSession();
		
		return session.createQuery("From Book", Book.class).list();
	}
	

//	public static void updateBook(Book book) {
//		
//		Session session = HibernateConfiguration.getSessionFactory().openSession();
//		Transaction transaction = session.beginTransaction();
//		session.update(book);
//		transaction.commit();
//	}
	
	public static Book getBookById(int bookId) {
        Transaction transaction = null;
        Book book = null;
        try (Session session = HibernateConfiguration.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            book = session.get(Book.class, bookId);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
        return book;
    }

    public static void updateBook(Book book) {
        Transaction transaction = null;
        try (Session session = HibernateConfiguration.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            session.update(book);
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }

    public static void deleteBook(int bookId) {
        Transaction transaction = null;
        try (Session session = HibernateConfiguration.getSessionFactory().openSession()) {
            transaction = session.beginTransaction();
            Book book = session.get(Book.class, bookId);
            if (book != null) {
                session.delete(book);
                System.out.println("Book is deleted");
            }
            transaction.commit();
        } catch (Exception e) {
            if (transaction != null) {
                transaction.rollback();
            }
            e.printStackTrace();
        }
    }
}
	
