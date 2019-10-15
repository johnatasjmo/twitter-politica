# test tokens
## Test library(rtweet)
### test get_friends
user <- "rmapalacios"
friends <- get_friends(user)
### View friends
View(friends)
## test search_tweets
# library(rtweet)
tweets <- search_tweets(
        "#cuartopoder", n = 180, include_rts = FALSE)
### reforma_tweets show
View(tweets)
## clear test variables
rm(user, friends, tweets)

## Test library(tweetscores)
### folder where my_oauth.Rdata is stored
oauth_folder <- paste0(root, "/config/twitter")
### test followers
new.user <- c("johnatasjmo")
followers <- getFollowers(screen_name=new.user, oauth=oauth_folder)
followers
rm(new.user, followers, oauth_folder)
