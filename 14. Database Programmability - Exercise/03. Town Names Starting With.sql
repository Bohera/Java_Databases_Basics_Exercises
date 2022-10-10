DELIMITER $$

CREATE PROCEDURE usp_get_towns_starting_with(starting_text VARCHAR(50))
BEGIN 
	SELECT `name` FROM `towns`
    WHERE `name` LIKE CONCAT(`starting_text`, "%")
    ORDER BY `name`;
END$$