# Twitter Politica

Start with
```
setwd() # in your current directory
library('ProjectTemplate')
load.project()
```

## File structure
* Data
        -followers: stores all followers from accounts
        -processed: processed files from lookupfollowers (tmp)
        -raw: not used 
        -tmp: stores batches created from follower list for lookupfolloers
        -batches_done: files from tmp after processed are moved here
* docs
* munge
* reports
* src
* tests

## Variables
* accounts: all initial accounts with political relevance
* accounts_summary: a dataframe with twitter data from accounts
* followers_list: all accounts followers ID's
* followers_summary: all accounts followers basic info (large file)

## Methodology
- Setup folders and credentials
- Create a list of political relevant `accounts`
- Get all `accounts` followers and select unique records
- Create a database with a summary
- Lookup basic information `followers` of all `accounts`


## TODO
