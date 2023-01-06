#' DaciNotes
#' 
#' I <3 Iza, baby
#' 
#' 
#' The function \code{DaciNotes()} loads some libraries sets some settings. \cr
#' \code{?DaciNotes} contains notes on various functions.\cr
#' Last update: 30/12/22
#' 
#' @section Notes:
#' 
#' Location where packages are installed in R \cr
#' \code{.libPaths()}
#' 
#' \code{setwd("C:/Users/dacia/OneDrive/Documents/R code/DaciNotesPackage")}
#' 
#' Install package from github\cr
#' \code{devtools::install_github("daciangheorghe/DaciNotesPackageGithub")}
#' 
#'\code{read.csv("workdata.csv")\cr
#' haven::read_sav("workdata.sav")}\cr
#' ook sav met package foreign
#'
#' Indien data uit spss komt dan kunnen variabelen vaak haven_labelled zijn.\cr 
#' gebruik \code{factor()} om om te zetten naar factor, niet \code{as.factor()}
#' 
#' Keep objects\cr
#' \code{KEEP <- ls(); KEEP <- c(KEEP,"KEEP")}
#'
#' To delete all objects in local enviroment use \code{rm(list = ls())}. \cr
#' To delete all objects in global enviroment use \code{rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)} or \code{rm(list = ls())} in R workspace.
#' To delete all objects in local enviroment except .., use \code{rm(list=setdiff(ls(), c("an object","another object")))}\cr
#' or \code{rm(list=setdiff(ls(), KEEP))}
#' 
#' Turn on scientific notation with \cr
#' \code{options(scipen=0)}
#' 
#' Save df\cr
#' \code{save(result_QRM,file="result_QRM.Rda")}\cr
#' Load df\cr
#' \code{load("result_LRM.Rda")}\cr
#' \code{df <- load("result_LRM.Rda")} werkt niet!
#' 
#' No \code{attach()}, houdt variabelen zoals ze waren toen attach() ingeroepen werdt
#'
#' \code{NROW()} en \code{NCOL()} voor vectors ipv \code{nrow()} en \code{ncol()}
#' 
#' Aggregate by means\cr
#' \code{aggregate(df$A, list(df$GROUP), mean)}
#' 
#' Extrapoleer geagregeerde data naar de volledige data dmv een group identifier \cr
#' \code{df_merged <- merge(df,agr,by="GROUP")}
#'
#' Detecteer en verwijder missing values \cr
#' \code{colSums(is.na(df))\cr
#' na.omit()}
#' 
#' Get rid of single warning \cr
#' \code{suppressWarnings( {code} )}
#' 
#' Filter meerdere condities voor zelfde en verschillende variabelen \cr
#' \code{filter(colour == "blue" | colour == "red") \cr filter(colour == "blue" & country == "Belgium")}
#'
#' Code which only displays duplicate rows \cr
#' \code{df_dg[unlist(by(seq(nrow(df_dg)), df_dg$col1,function(x) if(length(x)-1) x)), ]}
#' 
#' Rename column \cr
#' \code{df <- rename(df, numeric_var = OriginalNumericVar)}
#' zie '='
#' 
#' Correctly set size and scale plots (run code before and together with ggplot) \cr
#' \code{ragg::agg_png(filename = "bla.png",width = 1400,height = 700, units = "px",res=300, scaling = 0.65)} \cr
#' Width and height to set size of plot, scaling to scale inside components. Experiment to find right scale. 0.65 good for Arial 11 tekst
#' 
#' @section Package info:
#' 
#' \emph{---copy text in notepad ---}\cr
#' Location of source code: \emph{C:\Users\dacia\Documents\\R code\DaciNotesPackage} \cr
#' To update DaciNotes package run \code{library(roxygen2); roxygenise()} in \emph{C:\Users\dacia\OneDrive\Documents\\R code\DaciNotesPackage\DaciNotesPackage.Rproj} and upload folder to github \url{https://github.com/daciangheorghe/DaciNotesPackageGithub}. \cr
#' Run \code{devtools::install_github("daciangheorghe/DaciNotesPackageGithub")} anywhere else to reinstall package.
#' 
#' @export
DaciNotes <- function(){
    library(conflicted)
    conflict_prefer("filter", "dplyr")
    library(ggplot2)
    library(tidyr)
    library(dplyr)
    library(quantreg)
    options(scipen = 999)
    rm(list = ls(envir = .GlobalEnv), envir = .GlobalEnv)
}

