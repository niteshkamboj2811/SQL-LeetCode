# Write your MySQL query statement below
SELECT DISTINCT author_id AS id
FROM views
WHERE author_id = viewer_id
ORDER BY 1


# select distinct author_id id
# from views
# where author_id = viewer_id
# order by id;