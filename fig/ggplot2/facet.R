
#http://docs.ggplot2.org/current/facet_grid.html
facet <- function(){
    require(ggplot2)

    mg <- ggplot(mtcars, aes(x = mpg, y = wt, colour=factor(cyl))) + geom_point()
    mg <- mg + facet_grid(vs + am ~ gear, margins = c("gear", "am"))
    mg <- mg + theme_bw()

    print(mg)


}
