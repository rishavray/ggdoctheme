#library(ggthemes)
#library(ggplot2)
#' @title ggplot doc theme
#' 
#' @author Rishav Ray \email{rishav.rray@@gmail.com}
#' 
#' @description This is a redesigned ggplot theme built for creating out of the box figures for use in scientific publications.
#' @param base_size Base font size. Default 14
#' @param base_family Base font family. Default "sans"
#' @param grid Boolean switch to turn major grid on or off. Default FALSE
#'
#' @export
theme_doc <- function (base_size = 14, base_family = "sans", grid = FALSE) 
{
    ret = (ggthemes::theme_foundation(base_size = base_size, base_family = base_family) + 
        ggplot2::theme(line = element_line(colour = "black"),
            rect = element_rect(fill = "white", linetype = 0, colour = NA),
            text = element_text(colour = "black", size = 17), 
            axis.title = element_text(size = 20),
            axis.text.x = element_text(angle = 0),
            axis.text = element_text(size = 17), 
            axis.ticks = element_blank(), 
            legend.background = element_rect(),
            legend.position = "bottom", 
            legend.direction = "horizontal",
            legend.box = "vertical", 
            panel.grid = element_line(colour = NULL),
            axis.line = element_line(colour = "black"),
            panel.grid.minor = element_blank(),
            plot.title = element_text(hjust = 0, size = rel(1.5), face = "bold"),
            plot.margin = unit(c(1, 1, 1, 1), "lines"),
            strip.background = element_rect()))
    if(grid){
        ret = ret + theme(panel.grid.major = element_line(colour = "#D2D2D2"))
    }
    else{
        ret = ret + theme(panel.grid.major = element_line(colour = NA))
    }
    ret      
}
