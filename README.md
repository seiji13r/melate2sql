# melate2sql
# Introduction
This is a Playground Project to translate Melate Historic csv information into SQL using MySQL and PostgreSQL

# Sources
[Historic Files](https://www.pronosticos.gob.mx/Paginas/Melate/historico-melate)

# Table Definition
```sql
DROP IF EXIST DATABASE melate;
CREATE DATABASE melate;

USE melate;

CREATE TABLE melate {
    producto INT(3) NOT NULL,
    concurso INT UNIQUE NOT NULL,
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
    PRIMARY KEY(sorteo),
}

-- Only Working with Visual Studio Code MySQL (Jun Han) Extension

LOAD DATA LOCAL INFILE 'UpdateWithFullPath' 
INTO TABLE melate.melate
FIELDS TERMINATED BY ','
-- ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- For MySQL Workbench Use the Import Data.
USE melate
SELECT * FROM melate.melate
-- Then Click in Import and select the Files

```

# Queries Examples
```sql
SELECT * FROM melate.melate;

SELECT COUNT(*) FROM melate.melate WHERE producto = 42;

SELECT * FROM melate.melate WHERE R1 = R1 && R2 = R2 && producto = 40;

-- Find what Combinations win more than once.
SELECT R1, R2, R3, R4, R5, R6, COUNT(*)
FROM melate.melate
GROUP BY R1, R2, R3, R4, R5, R6
HAVING COUNT(*) > 1;

SELECT * FROM melate.melate WHERE R1=5 && R2=11 && R3=14 && R4=38 && R5=40 && R6=41;
SELECT * FROM melate.melate WHERE R1=7 && R2=18 && R3=23 && R4=27 && R5=45 && R6=54;

SELECT producto, COUNT(*) FROM melate.melate GROUP BY producto;
```