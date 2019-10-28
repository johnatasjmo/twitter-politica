doInstall <- FALSE  # Change to FALSE if you don't want packages installed.

toInstall <- c(
		"rtweet",
		"devtools",
		"ROAuth",
		"dplyr",
                "ggplot2",
		"here",
		"rvest",
		"plyr",
		"data.table",
		"filesstrings"
)

if(doInstall){
     	install.packages(toInstall, repos = "http://cran.r-project.org");
        library(devtools)
        install_github("pablobarbera/twitter_ideology/pkg/tweetscores")
}

# libraries
library(rtweet)
library(tweetscores)
library(devtools)
library(ROAuth)
library(tidyverse)
library(dplyr)
library(plyr)
library(here)
library(data.table)
library(ggplot2)
library(rvest)


# remove lists
rm(toInstall, doInstall)
