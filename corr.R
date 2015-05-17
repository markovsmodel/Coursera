corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations
        ## NOTE: Do not round the result!
		 ##df <- data.frame(id=numeric(),corre=numeric())
		
    	##pathtohere <- getwd()
    	thresh=0
    	nm<-numeric(0)
		tcount <-0
		allindir<-list.files(file.path(getwd(),directory))
		for (i in 1:length(allindir)){
				pathtofile <- file.path(getwd(),directory,allindir[i])
				##print(pathtofile)
			 	dataneeded<-read.csv(pathtofile,head = TRUE)		
				nobs<-sum(complete.cases(dataneeded))	
				#	print(nobs)
 			    if (nobs>threshold){	
 			    	tcount<-tcount+1
 			    	nm[tcount]<-cor(dataneeded[,2],dataneeded[,3],use="complete.obs")	 
 			    	##print(nm)   	
		    		##df <- rbind(df, data.frame(i,cor(dataneeded[,2],dataneeded[,3],use="complete.obs")))
    		
   				}
			
		    }
		    		    ##df <- rbind(df, data.frame(id[i],nobs))
		return(nm)

}