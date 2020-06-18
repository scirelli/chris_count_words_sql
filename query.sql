SELECT
	REGEXP_SPLIT_TO_TABLE(LOWER(REGEXP_REPLACE(sentence, E'[^[:alnum:]_ ]+','','g')),  E'\\s+') AS word,
	COUNT(*) as CNT
FROM war_and_peace
GROUP BY word
ORDER BY CNT DESC;
