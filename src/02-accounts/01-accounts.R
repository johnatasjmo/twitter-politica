# Create a list of political relevant accounts

# Congress Peru
# congress_peru <- c("Pedro_Olaechea", "rosamariabartra", "KarinaBeteta01", "SalvadorHeresi", "josemarvinpalma")

## media
media <- c("peru21politica", "RPPNoticias", "larepublica_pe", "Caretas", "ensustrece", "Politica_ECpe", "Politica_LR", "exitosape", "PanoramaPTV", "IDL_R")

# politicians
politicians <- c("MartinVizcarraC")

# government judicial, presidencia, ministros, fiscalia
government <-c("Poder_Judicial_", "presidenciaperu", "pcmperu", "FiscaliaPeru" )

# journalists
## source: https://pressreleasecom.wordpress.com
journalists <- c("malditaternura", "rmapalacios", "alvarezrodrich", "MilagrosLeivaG","JulianaOxenford", "VeroLinaresC", "VertizPamela", "valiabarak", "claudiacisneros", "recisneros")


# blogs
blogs <- c("lamula", "uterope")

# interest groups
interest_groups <- c("Ideele", "Ojo_Publico")

## add congress_peru after elections
accounts <- unique(c(media, politicians, government, journalists, blogs, interest_groups))
cat("Total number of accounts ", length(accounts))
View(accounts)

## Save as RDS in Data
saveRDS(accounts, file = "data/accounts.Rds")
# rm(accounts)