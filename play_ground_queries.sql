USE melate;
SELECT * FROM melate.melate;

SELECT COUNT(*) FROM melate.melate WHERE producto = 42;

SELECT * FROM melate.melate WHERE R1 = R1 && R2 = R2 && producto = 40;


SELECT R1, R2, R3, R4, R5, R6, COUNT(*)
FROM melate.melate
GROUP BY R1, R2, R3, R4, R5, R6
HAVING COUNT(*) > 1;

SELECT * FROM melate.melate WHERE R1=5 && R2=11 && R3=14 && R4=38 && R5=40 && R6=41;
SELECT * FROM melate.melate WHERE R1=7 && R2=18 && R3=23 && R4=27 && R5=45 && R6=54;

SELECT producto, COUNT(*) FROM melate.melate GROUP BY producto;

SELECT R1, R2, R3, R4, R5, COUNT(*)
FROM melate.melate
GROUP BY R1, R2, R3, R4, R5
HAVING COUNT(*) > 1;

SELECT R1, R2, R3, R4, COUNT(*)
FROM melate.melate
WHERE R6 = 35
GROUP BY R1, R2, R3, R4
HAVING COUNT(*) > 1;

SELECT * FROM melate.melate WHERE R1 = 27;


SELECT * FROM melate.melate WHERE R1=5 && R2=11 && R3=14 && R4=38 && R5=40 && R6=41;
SELECT * FROM melate.melate WHERE R1=5 && R2=11 && R3=14 && R4=38 && R5=40;
SELECT * FROM melate.melate WHERE R1=5 && R2=11 && R3=14 && R4=38;
SELECT * FROM melate.melate WHERE R1=5 && R2=11 && R3=14;
SELECT * FROM melate.melate WHERE R1=5 && R2=11;


SELECT * FROM melate.melate WHERE 5 in (R1, R2, R3, R4, R5, R6) AND 11 in (R1, R2, R3, R4, R5, R6);

SELECT COUNT(*) FROM melate.melate WHERE 5 in (R1, R2, R3, R4, R5, R6) AND 11 in (R1, R2, R3, R4, R5, R6) AND 14 in (R1, R2, R3, R4, R5, R6);


