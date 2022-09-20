CREATE TABLE `categories` 
(`id` INT PRIMARY KEY AUTO_INCREMENT, 
`category` VARCHAR(255) NOT NULL, 
`daily_rate` DECIMAL, 
`weekly_rate` DECIMAL, 
`monthly_rate` DECIMAL, 
`weekend_rate` DECIMAL);

CREATE TABLE `cars` 
(`id` INT PRIMARY KEY AUTO_INCREMENT, 
`plate_number` VARCHAR(10) NOT NULL, 
`make` VARCHAR(255), 
`model` VARCHAR(255), 
`car_year` YEAR, 
`category_id` INT NOT NULL, 
`doors` INT, 
`picture` BLOB, 
`car_condition` VARCHAR(255), 
`available` BOOLEAN);

CREATE TABLE `employees` 
(`id` INT PRIMARY KEY AUTO_INCREMENT, 
`first_name` VARCHAR(255) NOT NULL, 
`last_name`VARCHAR(255), 
`title` VARCHAR(255), 
`notes` TEXT);

CREATE TABLE `customers` 
(`id` INT PRIMARY KEY AUTO_INCREMENT, 
`driver_licence_number` INT NOT NULL, 
`full_name` VARCHAR(255), 
`address` VARCHAR(255), 
`city` VARCHAR(255), 
`zip_code`INT, 
`notes` TEXT);

CREATE TABLE `rental_orders` 
(`id` INT PRIMARY KEY AUTO_INCREMENT, 
`employee_id` INT NOT NULL, 
`customer_id` INT NOT NULL, 
`car_id` INT NOT NULL, 
`car_condition` VARCHAR(255), 
`tank_level` INT, 
`kilometrage_start` INT, 
`kilometrage_end` INT, 
`total_kilometrage` INT, 
`start_date` DATE, 
`end_date` DATE, 
`total_days` INT, 
`rate_applied` DECIMAL, 
`tax_rate` DECIMAL, 
`order_status` BOOLEAN, 
`notes` TEXT);

INSERT INTO `categories` (`category`)
VALUES
("Stara"),
("Nova"),
("Skupa");

INSERT INTO `cars` (`plate_number`, `category_id`)
VALUES
("A123456", 1),
("Z654321", 2),
("F567890", 3);

INSERT INTO `employees` (`first_name`)
VALUES
("Gosho"),
("Tosho"),
("Mosho");

INSERT INTO `customers` (`driver_licence_number`)
VALUES 
(12345678),
(11111111),
(99999999);

INSERT INTO `rental_orders` (`employee_id`, `customer_id`, `car_id`)
VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);
