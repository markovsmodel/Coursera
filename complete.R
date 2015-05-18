complete<-function(directory, id =1:332){
    df <- data.frame(id=character(),nobs=integer())
    pathtohere <- getwd()
	for (i in 1:length(id))
        {
        	# zpad <-c(0)

        	# if (id[i]<=9){
        		# zpad<-"00"
        	# }else if(id[i]>=10 & id[i]<=99) {
        		# zpad<-"0"
        	# }
			pathtofile <-file.path(pathtohere,directory,paste(sprintf('%03d',id[i]),".csv",sep=""))
			nobs<-sum(complete.cases(read.csv(pathtofile,head = TRUE)))			
		    df <- rbind(df, data.frame(id[i],nobs))
		}
		return(df)
}