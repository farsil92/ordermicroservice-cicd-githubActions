CREATE TABLE IF NOT EXISTS orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    item VARCHAR(255),
    quantity INT,
    price DOUBLE
);


-- Clear table first (optional)
DELETE FROM orders;

-- Insert multiple orders
INSERT INTO orders (item, quantity, price) VALUES ('Laptop', 2, 1200.50);
INSERT INTO orders (item, quantity, price) VALUES ('Phone', 5, 500.00);
INSERT INTO orders (item, quantity, price) VALUES ('Tablet', 3, 350.75);
INSERT INTO orders (item, quantity, price) VALUES ('Headphones', 10, 99.99);
INSERT INTO orders (item, quantity, price) VALUES ('Monitor', 4, 250.00);
INSERT INTO orders (item, quantity, price) VALUES ('Keyboard', 7, 45.50);
INSERT INTO orders (item, quantity, price) VALUES ('Mouse', 8, 25.75);
INSERT INTO orders (item, quantity, price) VALUES ('Printer', 2, 180.00);
INSERT INTO orders (item, quantity, price) VALUES ('Webcam', 6, 70.25);
INSERT INTO orders (item, quantity, price) VALUES ('External HDD', 3, 120.00);
