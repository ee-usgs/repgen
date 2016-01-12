
correctionsataglanceReport <- function(data){
  
  parseData <- parseCorrectionsData(data)
  
  timeline <- gsplot() %>% 
    
    #HACKY FIX FOR ISSUE #298 of gsplot
    bgCol(border=NA, col=NULL) %>% 
    
    #initial setup for plot
    axis(side=1, labels=FALSE, tick=FALSE) %>%
    axis(side=2, labels=FALSE, tick=FALSE, col="white") %>% 
    axis(side=3, tick=FALSE, at=parseData$apprData$apprDates, 
         labels=format(parseData$apprData$apprDates, "%b %Y")) %>% 
    points(x = as.POSIXct(NA), y = NA, ylim=c(0,100), xlim=parseData$allDataRange) %>% 
    
    #approvals at top bar
    rect(xleft = parseData$apprData$startDates,
         xright = parseData$apprData$endDates,
         ybottom = rep(95, parseData$apprData$dataNum),
         ytop = rep(100, parseData$apprData$dataNum), 
         col = parseData$apprData$apprCol) %>% 
    
    #field visit points
    points(x = as.POSIXct(data$fieldVisits$startTime), 
           y=rep(92, length(data$fieldVisits$startTime)), 
           pch=24, col="black", bg="grey") %>% 
    
    #pre-processing corrections
    rect(xleft = parseData$preproData$startDates,
         xright = parseData$preproData$endDates,
         ybottom = rep(85, parseData$preproData$dataNum),
         ytop = rep(90, parseData$preproData$dataNum)) %>% 
    text(x = parseData$preproData$xyText$x, 
         y = parseData$preproData$xyText$y, 
         labels = parseData$preproData$corrLabel, cex=0.5)
  
  return(timeline)
  
}
