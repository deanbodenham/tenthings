
#From:
#http://www.r-graph-gallery.com/21-distribution-plot-using-ggplot2/
#
#in turn from:
# http://onepager.togaware.com/KnitRO.pdf

weather2 <- function(){
    load("fig/ggplot2/weatherAUSred.RData")
    ds <-weatherAUSred
    
    # To generate a density plot.
    library(ggplot2)  
    p  <- ggplot(ds, aes(Temp3pm, colour=Location, fill=Location))
    p  <- p + geom_density(alpha=0.55) 
    p <- p + theme_bw()

    print(p)

}
