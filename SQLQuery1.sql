create database vrushtiproj


CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(25),
    password VARCHAR(25),
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    phone_number VARCHAR(20)
);


CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(25),
    price DECIMAL(10, 2),
    stock_quantity INT,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    total_price DECIMAL(10, 2),
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price_at_purchase DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Users (user_id, username, email, password, first_name, last_name, phone_number) VALUES
(1, 'johndoe', 'john@example.com', 'pass123', 'John', 'Doe', '9876543210'),
(2, 'janesmith', 'jane@example.com', 'secure456', 'Jane', 'Smith', '9123456789');


INSERT INTO Categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Accessories');


INSERT INTO Products (product_id, name, price, stock_quantity, category_id) VALUES
(1, 'Laptop', 999.99, 50, 1),
(2, 'Smartphone', 699.99, 100, 1),
(3, 'Headphones', 199.99, 200, 2),
(4, 'Tablet', 299.99, 75, 1),
(5, 'Smartwatch', 249.99, 150, 2);


INSERT INTO Orders (order_id, user_id, total_price) VALUES
(1, 1, 1699.98),
(2, 2, 449.98);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, price_at_purchase) VALUES
(1, 1, 1, 1, 999.99),
(2, 1, 2, 1, 699.99),
(3, 2, 3, 2, 199.99),
(4, 2, 5, 1, 249.99);

select * from users;
select * from Categories;
select * from Products;
select * from Orders;
select * from Order_Items;