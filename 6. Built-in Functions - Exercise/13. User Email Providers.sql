# взимаме текста след @
SELECT `user_name`, SUBSTRING(`email`, LOCATE("@", `email`) + 1 ) AS `Email Provider` FROM `users`
ORDER BY `Email Provider`, `user_name`;


# взимаме текста преди @
SELECT `user_name`, SUBSTRING(`email`, 1, LOCATE("@", `email`) - 1 ) AS `Email Provider` FROM `users`
ORDER BY `Email Provider`, `user_name`;