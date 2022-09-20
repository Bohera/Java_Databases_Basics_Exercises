SELECT 
	`id`,
	CONCAT_WS(' ', `first_name` , `last_name`) AS 'full_name',
    `job_title` AS 'Job title',
	`salary` AS 'Salary'
	FROM `employees` 
    WHERE `salary` > 1000
	ORDER BY `id`;