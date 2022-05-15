#' @importFrom data.table data.table
NULL

#' comuni
#'
#' Elenco dei Comuni divisi per anno di esistenza
#' 
#' @format Una data.table con i campi seguenti:
#' \describe{
#'   \item{\code{anno}}{ anno di riferimento }
#'   \item{\code{CMN}}{ Codice Istat }
#'   \item{\code{CMNd}}{ Descrizione }
#'   \item{\code{PRV}}{ Codice Istat PRovincia }
#'   \item{\code{RGN}}{ Codice Istat Regione }
#'   \item{\code{RPT}}{ Codice Istat Ripartizione }
#'   \item{\code{x_lon}}{ Longitudine del centroide geografico }
#'   \item{\code{y_lat}}{ Latitudine del centroide geografico }
#'   \item{\code{area}}{ Area }
#'   \item{\code{perimetro}}{ Perimetro }
#' }
#'
'comuni'

#' provincie
#'
#' Elenco delle Province esistenti lungo gli anni, con corrispondenti Regioni e Ripartizioni
#' 
#' @format Una data.table con i campi seguenti:
#' \describe{
#'   \item{\code{anno}}{ anno di riferimento }
#'   \item{\code{PRV}}{ Codice Istat }
#'   \item{\code{PRVd}}{ Descrizione }
#'   \item{\code{RGN}}{ Codice Istat Regione }
#'   \item{\code{RGNd}}{ Descrizione Regione }
#'   \item{\code{RPT}}{ Codice Istat Ripartizione }
#'   \item{\code{RPTd}}{ Descrizione Ripartizione }
#'   \item{\code{x_lon}}{ Longitudine del centroide geografico }
#'   \item{\code{y_lat}}{ Latitudine del centroide geografico }
#'   \item{\code{area}}{ Area }
#'   \item{\code{perimetro}}{ Perimetro }
#' }
#'
'provincie'

#' @import sf
NULL

#' C01
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2001, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C01'

#' C02
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2002, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C02'

#' C03
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2003, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C03'

#' C04
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2004, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C04'

#' C05
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2005, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C05'

#' C06
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2006, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C06'

#' C07
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2007, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C07'

#' C08
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2008, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C08'

#' C09
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2009, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C09'

#' C10
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2010, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C10'

#' C11
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2011, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C11'

#' C12
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2012, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C12'

#' C13
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2013, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C13'

#' C14
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2014, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C14'

#' C15
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2015, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C15'

#' C16
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2016, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C16'

#' C17
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2017, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C17'

#' C18
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2018, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C18'

#' C19
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2019, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C19'

#' C20
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2020, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C20'

#' C21
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2021, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C21'

#' C22
#'
#' Poligoni geografici dei comuni Italiani al 1 Gennaio 2022, in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT dei Comuni (\code{CMN})
#' e corrispondenti Province (\code{PRV}), Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{comuni} filtrata all'anno 2001.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'C22'


#' PRV
#'
#' Lista dei poligoni geografici delle Provincie Italiane dal 1 Gennaio 2001 al 1 Gennaio 2022, 
#' in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT delle Province (\code{PRV})
#' e corrispondenti Regioni (\code{RGN}) e Ripartizioni (\code{RPT}). 
#' Maggiori informazioni possono essere reperite nella tabella \code{provincie} filtrata al corrispondente anno.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'PRV'

#' RGN
#'
#' Lista dei poligoni geografici delle Regioni Italiane dal 1 Gennaio 2001 al 1 Gennaio 2022, 
#' in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i codici ISTAT delle Regioni (\code{RGN}) e corrispondenti Ripartizioni (\code{RPT}). 
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'RGN'

#' RPT
#'
#' Lista dei poligoni geografici delle Ripartizioni Italiane dal 1 Gennaio 2001 al 1 Gennaio 2022, 
#' in formato \code{sf} semplificati al 20%.
#'
#' Il file contiene, oltre alle geometrie, i corrispondenti codici ISTAT.
#'
#' Per ulteriori dettagli, consultare il sito ISTAT \url{https://www.istat.it/it/archivio/222527} e \url{https://www.istat.it/it/archivio/6789}.
#'
'RPT'
