CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

CREATE TABLE IF NOT EXISTS books (
    book_id PRIMARY KEY,
    title VARCHAR(130),
    author_id,
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    price DOUBLE,
    publication_date DATE
);

CREATE TABLE IF NOT EXISTS authos(
    author_id PRIMARY KEY,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS customers (
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE IF NOT EXISTS orders (
    order_id PRIMARY KEY,
    customer_id,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    order_date DATE
);

CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id PRIMARY KEY,
    order_id,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    book_id,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    quantity DOUBLE,
);