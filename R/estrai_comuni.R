#' estrai_comuni
#' 
#' Estrae i poligoni di uno o piu' comuni, e se richiesto ne visualizza la mappa 
#'
#' @param x codice/i delle localita da estrarre
#' @param anno anno di riferimento
#' @param tp tipo delle localita a cui devono associarsi i codici forniti, uno fra: (C)
#' @param sup indica se devono essere restituiti: 
#'            (\code{FALSE}) tutti i comuni legati ad \code{x} e \code{tp}
#'            (\code{TRUE}) esattamente le localita indicate in \code{x} e tipo \code{tp}
#'
#' @return un oggetto sf o leaflet
#'
#' @author Luca Valnegri, \email{l.valnegri@datamaps.co.uk}
#'
#' @import leaflet
#'
#' @export
#'
estrai_comuni <- function(x, anno = 22, tp = 'CMN', sup = FALSE, mappa = FALSE){
    tps <- toupper(substr(tp, 1, 1))
    tp <- switch(tps, 'C' = 'CMN', 'P' = 'PRV', 'R' = 'RGN', 'Z' = 'RPT', stop(tps, ': Tipo non riconosciuto'))
    as <- substring(anno, nchar(anno) - 1)
    a <- paste0('20', as)
    if(sup){
        y <- switch(tps,
                'C' = get(paste0('C', as)) |> subset(CMN %in% x),
                'P' = PRV[[a]] |> subset(PRV %in% x) |> merge(provincie[anno == a][, .(PRV, PRVd, PRVs)]),
                'R' = RGN[[a]] |> subset(RGN %in% x) |> merge(unique(provincie[anno == a][, .(RGN, RGNd)])),
                'Z' = RPT[[a]] |> subset(RPT %in% x) |> merge(unique(provincie[anno == a][, .(RPT, RPTd)]))
        ) 
    } else {
        yc <- comuni[anno == a][, anno := NULL]
        y <- get(paste0('C', as)) |> subset(CMN %in% yc[get(tp) %in% x, CMN]) |> merge(yc)
    }
    
    if(mappa){
        if(sup){
            leaflet() |> 
                addTiles() |> 
                addPolygons(
                    data = y,
                    color = 'red',
                    weight = 5,
                    fillOpacity = 0,
                    label = ~paste(get(tp), '-', get(paste0(tp, 'd')))
                )
        } else {
            leaflet() |> 
                addTiles() |> 
                addPolygons(
                    data = y, 
                    color = 'red',
                    weight = 5,
                    fillOpacity = 0,
                    label = ~paste(CMN, '-', CMNd)
                )
        }
    } else { y }
        
}
