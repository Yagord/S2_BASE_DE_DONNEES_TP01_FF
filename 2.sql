-- exo 2_1
clear screen
SPOOL exo3.csv

COLUMN NomEtu FORMAT A15
COLUMN NomIUT FORMAT A15
COLUMN Dept FORMAT A15
COLUMN Decision FORMAT A15
COLUMN moy format 999

SELECT NomIUT || ',' || NomEtu || ',' || Moy || ',' || Dept || ',' || Decision || ''''
FROM iut NATURAL JOIN candidater NATURAL JOIN etudiant;

CLEAR COLUMNS
CLEAR BREAKS
TTITLE OFF
BTITLE OFF
SET ECHO OFF
SET HEADING OFF
SET NEWPAGE 1
SET PAGESIZE 0
SET FEEDBACK OFF
SET LINESIZE 80 
SPOOL OFF




__instruction de mise en forme
set feed back off
set heading off

-requete
sle

_reinitailisa des instruction de mise en format
spool off