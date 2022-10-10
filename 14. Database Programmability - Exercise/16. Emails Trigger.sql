DELIMITER $$

CREATE TABLE `logs` (
	`log_id` INT PRIMARY KEY AUTO_INCREMENT,
    `account_id` INT NOT NULL,
    `old_sum` DECIMAL(19, 4) NOT NULL,
    `new_sum` DECIMAL(19, 4) NOT NULL
);

CREATE TRIGGER tr_change_balance_account
AFTER UPDATE ON `accounts`
FOR EACH ROW
BEGIN
	INSERT INTO `logs` (`account_id`, `old_sum`, `new_sum`)
    VALUES (OLD.`id`, OLD.`balance`, NEW.`balance`);
END;

CREATE TABLE `notification_emails`(
`id` INT PRIMARY KEY AUTO_INCREMENT, 
`recipient` INT NOT NULL, 
`subject` TEXT, 
`body` TEXT 
);

CREATE TRIGGER tr_create_email_new_logs
AFTER INSERT ON `logs`
FOR EACH ROW
BEGIN
	INSERT INTO `notification_emails`(`recipient`, `subject`, `body`)
    VALUES(
		NEW.`account_id`, 
        CONCAT("Balance change for account: ", NEW.`account_id`),
        CONCAT(
			"On ", 
			DATE_FORMAT(NOW(), "%b %d %Y at %h:%i:%s %p"),
            " your balance was changed from ", 
            FLOOR(NEW.`old_sum`),
            " to ", 
            FLOOR(NEW.`new_sum`),
            ".")
            );
END$$