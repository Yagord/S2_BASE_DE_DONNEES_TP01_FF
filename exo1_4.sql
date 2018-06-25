-- Formatage de l'affichage
COLUMN Region Format A15
COLUMN NomIUT Format A15
COLUMN Region JUSTIFY CENTER
COLUMN NomIUT JUSTIFY CENTER

COLUMN HEADING NomIut "Nom/IUT"
COLUMN Fi FORMAT L9999

-- Requête
select * from iut;

-- Réinitialisation du formatage de l'affichage
CLEAR COLUMNS
SET UNDERLINE '-'
SET colsep ' '
