-- Formatage de l'affichage
clear screen
spool exo2.txt
set feedback off
set newpage 1 --(nombre de lines sautés)
set pagesize 30
set linesize 80

COLUMN NomEtu FORMAT A15
COLUMN NomIUT FORMAT A15
COLUMN Dept FORMAT A15
COLUMN Decision FORMAT A15
COLUMN moy format 999

COLUMN NomIut NEW_VALUE MGRVAR
TTITLE CENTER "BILAN CANDIDATURES : " MGRVAR SKIP 2 -
CENTER '==============' skip 2
--btitle right format 99 'Page' sql.pno

BREAK ON NomIut SKIP PAGE ON NomEtu ROW SKIP 1
COMPUTE AVG LABEL 'avg' OF Moy ON NomIut;

-- Requête
SPOOL exo2_3.txt

SELECT NomIUT, NomEtu, Moy, Dept, Decision
FROM ETUDIANT INNER JOIN CANDIDATER ON (ETUDIANT.NumEtu = CANDIDATER.NumEtu)
ORDER BY NomIut ASC, NomEtu ASC;

SPOOL OFF

-- Réinitialisation du formatage de l'affichage
CLEAR COLUMNS
CLEAR BREAKS

SET UNDERLINE '-'
SET colsep ' '

set pagesize 0
set linesize 14

TTITLE OFF
BTITLE OFF