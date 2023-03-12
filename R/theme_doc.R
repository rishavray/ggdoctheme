#library(ggthemes)
#library(ggplot2)
#' @title doc ggplot theme
#' @description This is a redesigned ggplot theme built for out of the box scientific publication
#' Use this theme with your normal ggplot function
#' @param base_size Base font size.
#' @param base_family Base font family.
#' @param grid Boolean switch to turn major grid on or off
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
