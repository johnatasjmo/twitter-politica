# Set timezone
Sys.setenv(TZ="America/Los_Angeles")

# Set working directory
# go to the root directory first with 
root <- here()

# setup for downloading
data_folder <- paste0(root, "/data")
## oauth_folder <- paste0(root, "/config/twitter")
