USE codeup_test_db;

SELECT 'Albums' AS 'All';
SELECT * FROM albums;
UPDATE albums
SET sales_in_millions = (sales_in_millions * 10);
SELECT 'Multiplied by 10' AS 'Sales';

SELECT 'before 1980' AS 'Albums released';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums
SET release_date = (release_date - 100)
WHERE release_date < 1980;
SELECT 'back to 1800s' AS 'Release date';

SELECT 'Michael Jackson' AS 'Albums by';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
SELECT 'changed to Peter Jackson' AS 'Michael Jackson';