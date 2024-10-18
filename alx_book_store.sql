CREATE DATABASE alx_book_store;

CREATE TABLE Books(
  book_id INT PRIMARY KEY,
  title VARCHAR(130),
  author_id INT FOREIGN KEY REFERENCES Authors(author_id),
  price DOUBLE,
  publication_date DATE
)
CREATE TABLE Authors(
  author_id INT PRIMARY KEY,
  author_name VARCHAR(215)
)
CREATE TABLE Customer(
  order_id INT PRIMARY KEY,
  customer_id INT FOREIGN KEY REFERENCES Customers(customer_id),
  order_date DATE
)
CREATE TABLE Order_Details(
  orderdetail INT PRIMARY KEY,
  order_id INT FOREIGN KEY REFERENCES Orders(order_id),
  book_id INT FOREIGN KEY REFERENCES Books(book_id),
  quantity DOUBLE
)