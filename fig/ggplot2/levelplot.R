
#based on:
#http://www.r-graph-gallery.com/79-levelplot-with-ggplot2/
levelplot <- function(){
    library(ggplot2)


    #set the seed
    set.seed(2)

    ## Example data
    x <- seq(1,10, length.out=20)
    y <- seq(1,10, length.out=20)
    data <- expand.grid(X=x, Y=y)
    data$Z <- runif(400, 0, 5)
     
    # Levelplot with ggplot2
    p <- ggplot(data, aes(X, Y, z=Z)) + geom_tile(aes(fill = Z)) + theme_bw()
     
    # To change the color of the gradation :
#    p <- ggplot(data, aes(X, Y, z= Z)) + geom_tile(aes(fill = Z)) + 
#        theme_bw() + 
#        scale_fill_gradient(low="white", high="blue") 

    wval <- 5
    hval <- 4
    print(p)

}


