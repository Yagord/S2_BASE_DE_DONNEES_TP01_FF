clear screen

SELECT SUBSTR(NomIut,5) AS "Nom Iut"
FROM Iut;

SELECT NomEtu, LENGTH(NomEtu)
FROM Etudiant;

SELECT Etudiant.NomEtu, NVL(Etudiant.TailleLycee, '??') AS "Taille Lycee"
FROM Etudiant;

SET HEADING ON
SET PAGESIZE 30
SET LINESIZE 100