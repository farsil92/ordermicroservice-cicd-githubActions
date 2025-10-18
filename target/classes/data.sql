CREATE TABLE IF NOT EXISTS orders (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    item VARCHAR(255),
    quantity INT,
    price DOUBLE
);


INSERT INTO orders (item, quantity, price) VALUES ('Laptop', 2, 1200.50);
INSERT INTO orders (item, quantity, price) VALUES ('Mouse', 5, 25.99);
INSERT INTO orders (item, quantity, price) VALUES ('Keyboard', 3, 45.00);
