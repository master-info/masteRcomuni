## Storico Confini Comunali

Archivio storico dei confini geografici dei Comuni Italiani in formato digitale vettoriale [sf](https://cran.r-project.org/package=sf) e sistema geodetico di riferimento (CRS) [WGS84](https://epsg.io/4326). Annuale, a partire dal 2001. Ultimo aggiornamento: *1° GENNAIO 2022*

Contiene inoltre:
 - una *data.table* `comuni` che elenca tutti i Comuni (sigla variabile: `CMN`) divisi per anno e con corrispondente località superiori: Provincia (`PRV`), Regione (`RGN`), Ripartizione (`RPT`). Include inoltre alcune caratteristiche geografiche, come area, perimetro e coordinate del centroide geometrico.
 - una *data.table* `provincie` che elenca tutte le Provincie (`PRV`), con codice ISTAT, descrizione e sigla, divise per anno e con corrispondente località superiori Regione (`RGN`) e Ripartizione (`RPT`). Include inoltre alcune caratteristiche geografiche, come area, perimetro e coordinate del centroide geometrico.
 - una funzione `estrai_comune` che serve non solo a filtrare uno piu comuni, ma restituisce anche su richiesta una mappa interattiva [leaflet](https://leafletjs.com/).

### Risorse
- [ISTAT](https://www.istat.it/it/archivio/222527)
