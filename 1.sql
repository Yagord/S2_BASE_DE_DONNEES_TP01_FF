-- exo 2_1
clear screen
SPOOL exo2.txt
-- FEEDBACK: affiche ou pas le nb de lignes retournées
SET FEEDBACK OFF
-- NEWPAGE: transition d'une page à l'autre (nb de lignes sautées)
SET NEWPAGE 5
-- PAGESIZE: précise tous les combiens de lignes va revenir le titre des colonnes
SET PAGESIZE 24
-- LINESIZE: permet de limiter la largeur de la page.
SET LINESIZE 55

COLUMN NomIUT Format A20
COLUMN NomIUT Heading "Nom IUT"
COLUMN Decision Format A8
COLUMN Moy Format 999

-- NEW_VALUE: Copie le nom de l'iut dans une variable (utilisé ds ttitle)
COLUMN NomIUT NEW_VALUE l_NomIUT

BREAK ON NomIUT SKIP Page ON NomEtu skip 1
COMPUTE AVG OF Moy ON NomIUT

-- TTITLE titre en haut de chq page du rapport
TTITLE CENTER 'BILAN CANDIDATURES : ' l_NomIUT SKIP 1 - 
CENTER '=================================' SKIP 2
BTITLE RIGHT FORMAT 99 'Page' SQL.PNO

select NomIUT, NomEtu, Moy, Dept, Decision 
from iut natural join candidater natural join etudiant
order by 1, 2;

CLEAR COLUMNS
CLEAR BREAKS
TTITLE OFF
BTITLE OFF

SET NEWPAGE 1
SET PAGESIZE 14
SET FEEDBACK ON
SET LINESIZE 80 
SPOOL OFF