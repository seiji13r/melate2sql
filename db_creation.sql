DROP DATABASE IF EXISTS  melate;
CREATE DATABASE melate;

USE melate;

CREATE TABLE melate (
    producto INT(3),
    sorteo INT UNIQUE NOT NULL,
    R1 INT(2),
    R2 INT(2),
    R3 INT(2),
    R4 INT(2),
    R5 INT(2),
    R6 INT(2),
    R7 INT(2),
    BOLSA INT(2),
    FECHA VARCHAR(10),
    producto_name VARCHAR(3) NOT NULL,
    PRIMARY KEY(sorteo)
);

SELECT * FROM melate.melate;

USE melate;

LOAD DATA
LOCAL INFILE '/Users/seijix/2018sandbox/melate2sql/history_csv/Melate.csv' 
INTO TABLE melate.melate
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
