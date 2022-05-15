##################################
# Elabora Storico Confini COMUNI #
##################################

masteRfun::load_pkgs(master = FALSE, 'data.table', 'qs', 'sf')
yn <- 2001:2022

# POLIGONI E TABELLA COMUNI
yc <- data.table()
for(x in yn){
    message('Comuni anno ' , x)
    message(' > Processo poligoni Comuni...')
    y <- st_read(file.path(ext_path, 'confini', 'ISTAT', x, 'CMN.shp'), quiet = TRUE) |> 
            subset(select = c('COD_RIP', 'COD_REG', 'COD_PROV', 'PRO_COM', 'COMUNE')) |> 
            dplyr::rename(RPT=1, RGN=2, PRV=3, CMN=4, CMNd=5) |> 
            dplyr::arrange(CMN) |> 
            rmapshaper::ms_simplify(0.2) |>
            st_transform(4326) |>
            st_write(paste0('./data-raw/shp/', x, '.shp'), append = FALSE)
    qsave(y, paste0('./data-raw/qs/', x))
    message(' > Creo tabella riepilogativa...')
    yt <- data.table( 
                anno = x, 
                y |> st_drop_geometry(), 
                y |> st_centroid() |> st_coordinates(),
                y |>  st_area() |> as.numeric(),
                y |> st_cast('MULTILINESTRING') |>  st_length() |> as.numeric()
          ) |> 
        setnames(c('anno', 'RPT', 'RGN', 'PRV', 'CMN', 'CMNd', 'x_lon', 'y_lat', 'area', 'perimetro')) |> 
        setcolorder(c('anno', 'CMN', 'CMNd', 'PRV', 'RGN', 'RPT'))
    yc <- rbindlist(list(yc, yt))
    message(' > Salvo poligoni per pacchetto...')
    fn <- paste0('C', substring(x, 3))
    assign(fn, y |> subset(select = 'CMN'))
    save( list = fn, file = file.path('data', paste0(fn, '.rda')), version = 3, compress = 'gzip' )
}
message('Procedura Poligoni Comuni finita. Salvo tabella per pacchetto...')
fwrite(yc, './data-raw/csv/comuni.csv')
fn <- 'comuni'
assign(fn, yc)
save( list = fn, file = file.path('data', paste0(fn, '.rda')), version = 3, compress = 'gzip' )
dbm_do('comuni', 'w', 'comuni', yc)

# POLIGONI PROVINCIE
yp <- lapply(
        yn, 
        \(x){
            message('Provincie anno ' , x)
            qread(paste0('./data-raw/qs/', x)) |> 
                rmapshaper::ms_dissolve('PRV', copy_fields = c('RPT', 'RGN'))
                
        }
)
names(yp) <- yn
qsave(yp, './data-raw/qs/PRV')
fn <- 'PRV'
assign(fn, yp)
save( list = fn, file = file.path('data', paste0(fn, '.rda')), version = 3, compress = 'gzip' )

# POLIGONI REGIONI
yr <- lapply(
        yn, 
        \(x){
            message('Regioni anno ' , x)
            yp[[as.character(x)]] |> rmapshaper::ms_dissolve('RGN', copy_fields = 'RPT')
            
        }
)
names(yr) <- yn
qsave(yr, './data-raw/qs/RGN')
fn <- 'RGN'
assign(fn, yr)
save( list = fn, file = file.path('data', paste0(fn, '.rda')), version = 3, compress = 'gzip' )

# POLIGONI RIPARTIZIONI
yz <- lapply(
        yn, 
        \(x){
            message('Ripartizioni anno ' , x)
            yr[[as.character(x)]] |> rmapshaper::ms_dissolve('RPT')
            
        }
)
names(yz) <- yn
qsave(yz, './data-raw/qs/RPT')
fn <- 'RPT'
assign(fn, yz)
save( list = fn, file = file.path('data', paste0(fn, '.rda')), version = 3, compress = 'gzip' )

# TABELLA PROVINCIE
y <- data.table()
for(x in 2015:2022){
    message('Elaboro Province anno ' , x)
    y <- rbindlist(list(
                y,
                data.table(
                    anno = x,
                    st_read(file.path(ext_path, 'confini', 'ISTAT', x, 'PRV.shp'), quiet = TRUE) |> 
                        st_drop_geometry() |> 
                        subset(select = c('COD_RIP', 'COD_REG', 'COD_PROV', 'DEN_PROV', 'DEN_CM', 'SIGLA')) |> 
                        dplyr::rename(RPT=1, RGN=2, PRV=3, PRVd1=4, PRVd2=5, PRVs=6) |> 
                        dplyr::arrange(PRV) |> 
                        as.data.table()
                )
    ))
}
y[, PRVd := ifelse(PRVd1 == '-', PRVd2, PRVd1)][, c('PRVd1', 'PRVd2') := NULL]
for(x in 2001:2014){
    message('Elaboro Province anno ' , x)
    y <- rbindlist(list(
            y,
            data.table(
                anno = x,
                st_read(file.path(ext_path, 'confini', 'ISTAT', x, 'PRV.shp'), quiet = TRUE) |> 
                    st_drop_geometry() |> 
                    subset(select = c('COD_RIP', 'COD_REG', 'COD_PROV', 'DEN_PROV', 'SIGLA')) |> 
                    dplyr::rename(RPT=1, RGN=2, PRV=3, PRVd=4, PRVs=5) |> 
                    dplyr::arrange(PRV) |> 
                    as.data.table()
            )
    ), use.names = TRUE)
}
y <- unique(masteRgeo::comuni[, .(RGN = as.numeric(RGN), RGNd)])[y, on = 'RGN']
y <- unique(masteRgeo::comuni[, .(RPT = as.numeric(RPT), RPTd)])[y, on = 'RPT']

yc <- rbindlist(lapply(
        yn,
        \(x)
            data.table(
                x,
                st_read(file.path(ext_path, 'confini', 'ISTAT', x, 'PRV.shp'), quiet = TRUE) |> 
                    st_drop_geometry() |> 
                    subset(select = c(CMN = 'COD_PROV')),
                suppressWarnings(
                    st_read(file.path(ext_path, 'confini', 'ISTAT', x, 'PRV.shp'), quiet = TRUE) |> 
                    st_centroid() |> 
                    st_transform(4326) |> 
                    st_coordinates()
                )
            )
))
setnames(yc, c('anno', 'PRV', 'x_lon', 'y_lat'))
y <- yc[y, on = c('anno', 'PRV')]
setcolorder(y, c('anno', 'PRV', 'PRVd', 'PRVs', 'RGN', 'RGNd', 'RPT', 'RPTd'))
setorderv(y, c('anno', 'PRV'))

fwrite(y, './data-raw/csv/provincie.csv')
fn <- 'provincie'
assign(fn, y)
save( list = fn, file = file.path('data', paste0(fn, '.rda')), version = 3, compress = 'gzip' )
dbm_do('comuni', 'w', 'provincie', y)

rm(list = ls())
gc()
