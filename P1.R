pollutantmean <- function(directory, pollutant, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        ## allsulphate <-numeric(length = 0)
        allpollutant <-numeric(length = 0)
        pid<-2
        
        if (pollutant == "sulphate") {
        	pid <-	2
        	}else if (pollutant =="nitrate") {
        		pid <-	3
        	}else {
        		print "Incorrect pollutant option"
        		}
        for (i in 1:length(id))
        {
			##pathtohere <- getwd()
			pathtofile <-file.path(directory,paste(id[i],".csv"))
			dataneeded<-read.csv(pathtofile,head = TRUE)
			
			allpollutant<-rbind(allpollutant,dataneeded[,pid]))
		}
		result <-mean(allpollutant, trim = 0, na.rm = TRUE)
		return(result)
		}
		## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".

        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used

        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
        ## NOTE: Do not round the result!
}
