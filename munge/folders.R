# Set timezone
Sys.setenv(TZ="America/Los_Angeles")

## set root folder
root <- here()
## set credentials
### credentials_twitter <- here("config")
## set oauth folder for tweetscores
oauth_folder <- paste0(root, "/config/twitter")
## set data folder
data_folder <- paste0(root, "/data")

## create followers and data_followers directory
dir.create(file.path(data_folder, "/followers"))
dir.create(file.path(data_folder, "/followers/data_followers"))
dir.create(file.path(data_folder, "/tmp"))

## set working directory as root
setwd(root)



