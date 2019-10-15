# You should run this only the first time, never store credentials in git or code

## load ROauth and token credentials only the first time
library(ROAuth)
requestURL <- "https://api.twitter.com/oauth/request_token"
accessURL <- "https://api.twitter.com/oauth/access_token"
authURL <- "https://api.twitter.com/oauth/authorize"
consumerKey <- Sys.getenv("twitter_consumer_key")
consumerSecret <- Sys.getenv("twitter_consumer_secret")
my_oauth <- OAuthFactory$new(consumerKey=consumerKey, consumerSecret=consumerSecret, 
                             requestURL=requestURL, accessURL=accessURL, authURL=authURL)

## Run this line and go to the URL that appears on the screen, follow instructions
my_oauth$handshake(cainfo = system.file("CurlSSL", "cacert.pem", package = "RCurl"))

# save for future use, one time only
# save(my_oauth, file="config/twitter/my_oauth.Rdata")
## or load from setup/03-credentials.R folder 


# ==== rtweet ==== mandatory do it only once
## load rtweet and token credentials only the first time
## before all, save token keys on local file ~/.Renviron
## Never share token keys on code or version control like git
create_token(
        app = "Political Tweets Peru",
        consumer_key = Sys.getenv("twitter_consumer_key"),
        consumer_secret = Sys.getenv("twitter_consumer_secret"),
        access_token = Sys.getenv("twitter_access_token"),
        access_secret = Sys.getenv("twitter_access_token_secret")
        )
