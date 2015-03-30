USE codeup_test_db;

-- Albums released after 1991
SELECT 'Released after 1991' AS 'Albums';
DELETE FROM albums WHERE release_date > 1991;
-- Albums with the genre "disco"
SELECT 'Disco' AS 'Album genre:';
DELETE FROM albums WHERE genre = 'disco';
-- Albums by "Whitney Houston"
SELECT 'Whitney Houston' AS 'Albums by';
DELETE FROM albums WHERE artist = 'Whitney Houston';