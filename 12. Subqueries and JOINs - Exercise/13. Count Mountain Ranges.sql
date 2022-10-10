SELECT mc.`country_code`, COUNT(`mountain_id`) AS `mountain_range` FROM `mountains_countries` AS mc
JOIN `mountains` AS m ON mc.`mountain_id` = m.`id`
GROUP BY `country_code`
HAVING `country_code` = "US" OR `country_code` = "RU" OR `country_code` = "BG"
ORDER BY `mountain_range` DESC;