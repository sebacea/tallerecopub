aux <- data.frame(dir=c("hhh,kkk","kkk,nnn"),id=c(1,2))
aux2 <- data.frame(aux,str_split(aux$dir,","))
spl <-strsplit(as.character(aux$dir), ",")
# También se puede ocupar separate
