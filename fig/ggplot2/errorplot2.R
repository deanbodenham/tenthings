#http://www.r-graph-gallery.com/104-plot-lines-with-error-envelopes-ggplot2/
errorplot2 <- function(){
    library(ggplot2)

    # Get the data from the web !
#    CC <- read.table("http://www.sr.bham.ac.uk/~ajrs/papers/sanderson06/mean_Tprofile-CC.txt" ,  header=TRUE)
#    nCC <- read.table("http://www.sr.bham.ac.uk/~ajrs/papers/sanderson06/mean_Tprofile-nCC.txt" , header=TRUE)
    CC <- read.table("fig/ggplot2/mean_Tprofile-CC.txt" ,  header=TRUE)
    nCC <- read.table("fig/ggplot2/mean_Tprofile-nCC.txt" , header=TRUE)

    CC$type <- "Cool core"
    nCC$type <- "Non-cool core"
    A <- rbind(CC, nCC)
     
     
    # Make the plot
    p <- ggplot(data=A, aes(x=r.r500, y=sckT, ymin=sckT.lo, ymax=sckT.up, fill=type, linetype=type)) + 
     geom_line() + 
     geom_ribbon(alpha=0.5) + 
     scale_x_log10() + 
     scale_y_log10() + 
     theme_bw() + 
     xlab(as.expression(expression( paste("Radius (", R[500], ")") ))) + 
     ylab("Scaled Temperature")

    print(p)
} 
