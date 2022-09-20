CREATE TABLE `directors` (
`id` INT PRIMARY KEY AUTO_INCREMENT, 
`director_name` VARCHAR(255) NOT NULL,
`notes` TEXT
); 
        
CREATE TABLE `genres` (
`id` INT PRIMARY KEY AUTO_INCREMENT, 
`genre_name` VARCHAR(255) NOT NULL, 
`notes` TEXT
); 

CREATE TABLE `categories` (
`id` INT PRIMARY KEY AUTO_INCREMENT, 
`category_name` VARCHAR(255) NOT NULL, 
`notes` TEXT
);  

CREATE TABLE `movies` (
`id` INT PRIMARY KEY AUTO_INCREMENT, 
`title` VARCHAR(255) NOT NULL,
`director_id` INT, 
`copyright_year` DATE, 
`length` DOUBLE,
`genre_id` INT, 
`category_id` INT, 
`rating` DOUBLE,
`notes` TEXT
);

INSERT INTO `directors` (`director_name`)
VALUES 
("gosho"),
("tosho"),
("sosho"),
("mosho"),
("losho");

INSERT INTO `genres` (`genre_name`)
VALUES 
("sifi"),
("pulp"),
("action"),
("drama"),
("comedy");

INSERT INTO `categories` (`category_name`)
VALUES 
("3D"),
("Black&White"),
("Short"),
("Animated"),
("Documentary");

INSERT INTO `movies` (`title`)
VALUES 
("Movie1"),
("Movie2"),
("Movie3"),
("Movie4"),
("Movie5");