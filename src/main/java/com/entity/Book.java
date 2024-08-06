package com.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "Book_table")
public class Book {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int bid;
	
	@Column(name = "book_title", nullable = false)
	private String title;
	
	@Column(name = "book_author")
	private String author;

	@Column(name = "book_genre")
	private String genre;
	
	@Column(name = "book_price")
	private double price;

	public Book(int bid, String title, String author, String genre, double price) {
		super();
		this.bid = bid;
		this.title = title;
		this.author = author;
		this.genre = genre;
		this.price = price;
	}

	public String getGenre() {
		return genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getBid() {
		return bid;
	}

	public void setBid(int bid) {
		this.bid = bid;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}
	
}
