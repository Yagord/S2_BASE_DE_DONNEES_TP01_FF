-- Formatage de l'affichage
COLUMN Region Format A15
COLUMN NomIUT Format A15

-- Requête
select * from iut;

-- Réinitialisation du formatage de l'affichage
CLEAR COLUMNS
SET UNDERLINE '-'
SET colsep ' '
