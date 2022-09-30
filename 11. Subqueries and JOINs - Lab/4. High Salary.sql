SELECT 
    COUNT(*)
FROM
    `employees` AS e
WHERE
    e.salary > (SELECT 
            AVG(e1.`salary`)
        FROM
            `employees` AS e1);