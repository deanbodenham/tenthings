
#http://www.r-graph-gallery.com/48-grouped-barplot-with-ggplot2/

barplot <- function(){
    # Library gplot2
    require(ggplot2)
    set.seed(1)
     
    #Let's build a dataset : height of 10 sorgho and poacee sample in 3 environmental conditions (A, B, C)
    species=c(rep("sorgho" , 3) , rep("poacee" , 3) , rep("banana" , 3) , rep("triticum" , 3) )
    condition=rep(c("normal" , "stress" , "Nitrogen") , 4)
    value=abs(rnorm(12 , 0 , 15))
    data=data.frame(species,condition,value)
     
    #Let's plot it with ggplot2
    p <- ggplot(data, aes(fill=condition, y=value, x=species))
    p <- p + geom_bar(position="dodge", stat="identity")

    wval <- 5
    hval <- 4
    print(p)
}
