USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100) NOT NULL,
    name VARCHAR(100) NOT NULL,
    release_date INT(4) UNSIGNED NOT NULL,
    sales_in_millions FLOAT(11,2) NOT NULL,
    genre VARCHAR(50) NOT NULL,
    PRIMARY KEY (id)
);