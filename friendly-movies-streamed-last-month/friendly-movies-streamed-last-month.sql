# Write your MySQL query statement below
SELECT DISTINCT c.title
FROM content AS c, tvprogram AS tv
WHERE c.content_id = tv.content_id
AND MONTH(tv.program_date) = '06'
AND c.kids_content = 'Y'
AND c.content_type = 'Movies'