SELECT `continent_code`, `currency_code`, count(`currency_code`) AS `currency_usage` FROM `countries` AS c1
GROUP BY `continent_code`, `currency_code`
HAVING `currency_usage` = (
	SELECT count(`currency_code`) AS count
		FROM `countries` c2
        WHERE c2.`continent_code` = c1.`continent_code`
        GROUP BY c2.`currency_code`
        ORDER BY count DESC
        LIMIT 1
	) AND `currency_usage` > 1
ORDER BY `continent_code`, `currency_code`;