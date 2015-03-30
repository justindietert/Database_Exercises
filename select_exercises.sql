USE codeup_test_db;

SELECT 'Pink Floyd' AS 'Albums by';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Sgt. Pepper\'s' AS 'Year Released';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper\'s Lonely Hearts Club Band';
SELECT 'Nevermind' AS 'Genre of';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT '1990s' AS 'Albums Released in';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'Less than 40 million' AS 'SALES';
SELECT name FROM albums WHERE sales_in_millions < 40;
SELECT 'Rock' AS 'Genre';
SELECT name FROM albums WHERE genre LIKE '%rock%';