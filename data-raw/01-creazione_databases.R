#################################################
# Creazione databases e tabelle in MySQL server #
#################################################

library(masteRfun)

dbn <- 'comuni'
crea_db(dbn)

# TABELLA <COMUNI>
x <- "
    `anno` SMALLINT UNSIGNED NOT NULL,
    `CMN` MEDIUMINT UNSIGNED NOT NULL,
    `CMNd` CHAR(35) NOT NULL,
    `PRV` TINYINT UNSIGNED NOT NULL,
    `RGN` TINYINT UNSIGNED NOT NULL,
    `RPT` TINYINT UNSIGNED NOT NULL,
    `x_lon` DECIMAL(10,8) UNSIGNED NOT NULL,
    `y_lat` DECIMAL(10,8) UNSIGNED NOT NULL,
    `area` INT UNSIGNED NOT NULL,
    `perimetro` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`anno`, `CMN`),
    KEY `anno` (`anno`),
    KEY `comune` (`CMN`),
    KEY `provincia` (`PRV`),
    KEY `regione` (`RGN`),
    KEY `ripartizione` (`RPT`)
"
crea_tabella_db(dbn, 'comuni', x)

# TABELLA <PROVINCIE>
x <- "
    `anno` SMALLINT UNSIGNED NOT NULL,
    `PRV` TINYINT UNSIGNED NOT NULL,
    `PRVd` CHAR(35) NOT NULL,
    `PRVs` CHAR(2) NOT NULL,
    `RGN` TINYINT UNSIGNED NOT NULL,
    `RGNd` CHAR(35) NOT NULL,
    `RPT` TINYINT UNSIGNED NOT NULL,
    `RPTd` CHAR(35) NOT NULL,
    `x_lon` DECIMAL(10,8) UNSIGNED NOT NULL,
    `y_lat` DECIMAL(10,8) UNSIGNED NOT NULL,
    `area` INT UNSIGNED NOT NULL,
    `perimetro` INT UNSIGNED NOT NULL,
    PRIMARY KEY (`anno`, `PRV`),
    KEY `anno` (`anno`),
    KEY `provincia` (`PRV`),
    KEY `regione` (`RGN`),
    KEY `ripartizione` (`RPT`)
"
crea_tabella_db(dbn, 'provincie', x)

## FINE -------------------------------
rm(list = ls())
gc()
