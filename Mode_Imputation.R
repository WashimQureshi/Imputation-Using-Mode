#### use mode to fill missing value ####
# function to calculate mode
Mode <- function(x) {
                      u <- unique(x)
                      u[which.max(tabulate(match(x, u)))]
                    }

# Filling missing values with mode
df$var[is.na(df$var)]<-Mode(df$var)