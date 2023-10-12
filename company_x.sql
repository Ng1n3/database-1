CREATE TABLE `admin`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `role` ENUM('') NOT NULL,
    `user_id` BIGINT NOT NULL
);
CREATE TABLE `user_product`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL
);
CREATE TABLE `user`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `gender` ENUM('m', 'f') NOT NULL,
    `address` TEXT NOT NULL,
     `createdAt` DATETIME
);
CREATE TABLE `product`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `price` BIGINT NOT NULL,
    `size` ENUM('s', 'm', 'l', 'xxl') NOT NULL,
    `category` VARCHAR(255) NOT NULL,
    `createdAt` DATETIME
);
CREATE TABLE `admin_product`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `admin_id` BIGINT NOT NULL,
    `product_id` BIGINT NOT NULL
);


-- Insert into database
INSERT INTO user (name, email, password, phone_number, gender, address, createdAt)
    VALUES("Harry maguire", "Harry5@gmail.com", "Harry5", "2349900887755", "m", "234 saint street, Lagos", now()),
            ("Harriet maguire", "Hariet5@gmail.com", "Hariet5", "2349900855959", "f", "234 saint street, Lagos", now()),
            ("Tobalase Buki", "TobaB@gmail.com", "Toba5", "2349947575893", "m", "117 police precinct, Lagos", now())

INSERT INTO product (name, price, size, category, createdAt)
    VALUES("Air Force 1", 40000, "s", "shoe", now()),
            ("Balenciage Top", 20000, "xxl", "shirt", now()),
            ("Nike snap back", 10000, "m", "hat", now())


-- getting records from user and product table
SELECT * FROM `company_x`.user;
SELECT * FROM `company_x`.product;

-- updating records from user and product
UPDATE user SET email = 'harryM5@gmail.com'
WHERE id = 1;

UPDATE product SET  price = 80000, size = l
    WHERE id = 1;


-- deleteing records from user and product
DELETE FROM user WHERE id = 1;
DELETE FROM product WHERE id = 3;